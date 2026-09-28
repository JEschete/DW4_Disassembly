"""Audio stage: every music track and sound effect, captured from the game's own sound engine."""
import json
import os
import shutil

from . import apu, audio

WAV_GAIN = 2.0


def _save(folder, stem, capture_result, title, kind, log):
    frames = capture_result.frames
    registers = sorted({register for f in capture_result.all_frames for _, register, _ in f})
    dmc = [r for r in registers if 0x4011 <= r <= 0x4013]
    vgm_info = audio.write_vgm(os.path.join(folder, stem + ".vgm"), capture_result, title)
    signal = apu.render(audio.events_of(capture_result.all_frames),
                        len(capture_result.all_frames) * audio.FRAME_CYCLES) * WAV_GAIN
    clipped = int((abs(signal) > 1.0).sum())
    loop_samples = None
    if capture_result.loop:
        start, end = capture_result.loop
        loop_samples = (round(start * audio.FRAME_CYCLES * 44100 / audio.CPU_HZ),
                        round(end * audio.FRAME_CYCLES * 44100 / audio.CPU_HZ))
    apu.write_wav(os.path.join(folder, stem + ".wav"), signal, loop=loop_samples)
    seconds = len(frames) / audio.FRAME_HZ
    meta = {
        "id": capture_result.sound_id, "kind": kind, "title": title,
        "files": {"vgm": stem + ".vgm", "wav": stem + ".wav"},
        "frames": len(frames), "seconds": round(seconds, 3),
        "loop": None if not capture_result.loop else {
            "start_frame": capture_result.loop[0], "end_frame": capture_result.loop[1],
            "start_seconds": round(capture_result.loop[0] / audio.FRAME_HZ, 3),
            "length_seconds": round((capture_result.loop[1] - capture_result.loop[0]) / audio.FRAME_HZ, 3),
            "verified_second_pass": capture_result.verified,
            "channel_loops": [list(c) for c in (capture_result.channel_loops or [])]},
        "ends_at_frame": capture_result.ended_frame,
        "wav": {"frames_rendered": len(capture_result.all_frames), "loop_samples": loop_samples,
                "clipped_samples": clipped},
        "apu_registers": ["%04X" % r for r in registers],
        "vgm": vgm_info,
    }
    if dmc:
        meta["warning"] = "DMC registers written; DMC playback is not modelled in the WAV"
    with open(os.path.join(folder, stem + ".json"), "w", encoding="utf-8") as handle:
        json.dump(meta, handle, indent=1)
    return meta


def run(rom, out_dir, log):
    root = os.path.join(out_dir, "audio")
    if os.path.isdir(root):
        shutil.rmtree(root)
    music_dir = os.path.join(root, "music")
    sfx_dir = os.path.join(root, "sfx")
    os.makedirs(music_dir)
    os.makedirs(sfx_dir)
    index = {"music": [], "sfx": [], "empty": []}
    banks = rom.bytes(0x19, audio.TRACK_BANKS, audio.TRACK_COUNT)
    for track in range(audio.TRACK_COUNT):
        record = [rom.word(0x19, audio.TRACK_TABLE + 8 * track + 2 * i) for i in range(4)]
        if all(p in (0x8334, 0x8335) for p in record) or all(p == 0 for p in record[:3]):
            index["empty"].append({"track": track, "record": ["%04X" % p for p in record],
                                   "reason": "null channel pointers" if record[0] else "all-zero record"})
            continue
        machine = audio.boot(rom)
        result = audio.capture(machine, track)
        stem = "track-%02d" % track
        meta = _save(music_dir, stem, result, "Track %02d" % track, "music", log)
        meta.update({"sequence_bank": "%02X" % (banks[track] or 0x19),
                     "record": "19:%04X" % (audio.TRACK_TABLE + 8 * track),
                     "channel_words": ["%04X" % p for p in record]})
        with open(os.path.join(music_dir, stem + ".json"), "w", encoding="utf-8") as handle:
            json.dump(meta, handle, indent=1)
        index["music"].append({"track": track, "files": meta["files"], "seconds": meta["seconds"],
                               "loops": bool(meta["loop"]), "sequence_bank": meta["sequence_bank"]})
        log("track %02d: %.1fs%s" % (track, meta["seconds"], " (loop)" if meta["loop"] else ""))
    for effect in range(1, audio.sfx_count(rom)):
        machine = audio.boot(rom)
        result = audio.capture(machine, effect, is_sfx=True, max_frames=1800)
        stem = "sfx-%02d" % effect
        meta = _save(sfx_dir, stem, result, "Sound effect %02d" % effect, "sfx", log)
        pointer = rom.word(0x19, audio.SFX_TABLE + 2 * effect)
        meta.update({"pointer_word": "%04X" % pointer, "stream": "19:%04X" % (pointer | 0x8000),
                     "uses_noise_flag": not (pointer & 0x8000)})
        if result.ended_frame is None:
            meta["notes"] = "did not release pulse 2 within 1800 frames; capture stops there"
        with open(os.path.join(sfx_dir, stem + ".json"), "w", encoding="utf-8") as handle:
            json.dump(meta, handle, indent=1)
        index["sfx"].append({"sfx": effect, "files": meta["files"], "seconds": meta["seconds"]})
    with open(os.path.join(root, "index.json"), "w", encoding="utf-8") as handle:
        json.dump({
            "format": "Each sound was produced by running the game's own sound engine (fixed bank $1F: play $EF5B, "
                      "per-frame update $E687) in a headless 6502/MMC1 model and recording every APU register "
                      "write with its CPU cycle. .vgm = that register log (VGM 1.71, NES APU, lossless; looping "
                      "tracks carry the loop point). .wav = 44.1 kHz 16-bit rendering by tools/AssetExtract "
                      "apu.py (looping tracks: intro + two loops, 'smpl' chunk marks the loop).",
            "loop_detection": "channel read pointers ($A6-$AD) sampled every engine tick; each channel's loop is "
                              "the shortest repeating period with a backward jump, the track loop is their LCM, "
                              "and verified_second_pass compares a second full loop tick by tick",
            **index,
        }, handle, indent=1)
    log("audio: %d tracks, %d effects, %d empty slots" % (len(index["music"]), len(index["sfx"]), len(index["empty"])))
