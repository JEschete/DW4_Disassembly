"""Music and sound effects captured by running the game's own sound engine (fixed bank $1F) headlessly.

Engine facts used here (all from the fixed bank):
  $EF5B  play: A < $80 starts track A (54 tracks, channel pointers $19:$814E + 8*A, sequence bank $19:$82FE + A);
         A >= $80 starts effect A & $7F (pointer table $19:$A16B)
  $E687  per-frame update, reached from NMI through the $C019 trampoline; ticks run while the tempo
         accumulator $BD (+= $BC each frame) carries, subtracting $96 per tick ($E6C0-$E6F6)
  $F08A  ResetApuChannels (silences channels, selects the 5-step frame counter)
  $B0 bit 5 is set by $E6AE when every music channel has stopped.
The capture records every APU register write with its CPU cycle. Loops are found in tick time: the four
channel read pointers ($A6-$AD) are sampled at each tick ($E6CD) and the shortest period that repeats for
two full periods marks the loop.
"""
import struct

from .nesbus import Machine, FRAME_CYCLES

CPU_HZ = 1789773
FRAME_HZ = CPU_HZ / FRAME_CYCLES
TRACK_COUNT = 54
TRACK_TABLE = 0x814E
TRACK_BANKS = 0x82FE
SFX_TABLE = 0xA16B
PLAY = 0xEF5B
UPDATE = 0xE687
RESET_CHANNELS = 0xF08A
TICK = 0xE6CD


def boot(rom, frames=40):
    machine = Machine(rom)
    machine.bus.chr0 = 0x10
    machine.cpu.reset()
    while machine.frames < frames:
        machine.run_until(max_cycles=FRAME_CYCLES)
    machine.cpu.s = 0xFF
    machine.bus.ppuctrl &= 0x7F      # no NMI: frames are driven by calling the update directly
    return machine


def sfx_count(rom):
    """Entries of $19:$A16B up to the lowest in-table-region target (entry 0 is the null pointer $8335)."""
    lowest = 0xFFFF
    count = 0
    while SFX_TABLE + 2 * count < lowest:
        target = rom.word(0x19, SFX_TABLE + 2 * count) | 0x8000
        if target > SFX_TABLE:
            lowest = min(lowest, target)
        count += 1
    return count


def _events(values):
    events = []
    for value in values:
        if events and events[-1][0] == value:
            events[-1][1] += 1
        else:
            events.append([value, 1])
    return [tuple(e) for e in events]


def channel_loop(pointers, tick_frames, min_span_frames=2400):
    """Loop of one channel's pointer sequence (one value per tick).

    Returns ("ended", start_tick) when the pointer stays fixed for the whole last min_span_frames,
    ("loop", start_tick, period_ticks) for the shortest event period that repeats to the end of the data,
    contains a backward jump and has been observed long enough, or None."""
    n = len(pointers)
    if not n:
        return None
    last_change = n - 1
    while last_change > 0 and pointers[last_change - 1] == pointers[-1]:
        last_change -= 1
    if tick_frames[-1] - tick_frames[last_change] >= min_span_frames:
        return ("ended", last_change)
    events = _events(pointers)[:-1]           # the last event may still be running
    count = len(events)
    for period in range(1, count // 2 + 1):
        start = count - period
        while start > 0 and events[start - 1] == events[start - 1 + period]:
            start -= 1
        repeats = (count - start) / period
        if repeats < 2:
            continue
        window = [events[i][0] for i in range(start, min(count, start + period + 1))]
        if not any(b < a for a, b in zip(window, window[1:])):
            continue
        start_tick = sum(length for _, length in events[:start])
        period_ticks = sum(length for _, length in events[start:start + period])
        span_ticks = sum(length for _, length in events[start:])
        span_frames = tick_frames[min(n - 1, start_tick + span_ticks)] - tick_frames[start_tick]
        period_frames = tick_frames[min(n - 1, start_tick + period_ticks)] - tick_frames[start_tick]
        if span_frames < min_span_frames or (period_frames < 600 and repeats < 4):
            continue
        return ("loop", start_tick, period_ticks)
    return None


def track_loop(ticks, tick_frames):
    """Combine per-channel loops: start = latest channel loop start, period = LCM of channel periods."""
    from math import gcd
    starts, period, results = [], 1, []
    for channel in range(4):
        pointers = [t[2 * channel] | (t[2 * channel + 1] << 8) for t in ticks]
        found = channel_loop(pointers, tick_frames)
        if found is None:
            return None
        results.append(found)
        starts.append(found[1])
        if found[0] == "loop":
            period = period * found[2] // gcd(period, found[2])
    if all(r[0] == "ended" for r in results):
        return None
    return max(starts), period, results


class Capture:
    def __init__(self, sound_id, is_sfx):
        self.sound_id = sound_id
        self.is_sfx = is_sfx
        self.frames = []          # per frame: list of (cycle offset, register, value)
        self.tick_frames = []     # frame index of each tick
        self.ticks = []           # pointer tuple at each tick
        self.loop = None          # (start_frame, end_frame) of one loop
        self.loop_ticks = None    # (start_tick, period_ticks)
        self.channel_loops = None
        self.verified = False     # whole-track periodicity checked over a second loop
        self.ended_frame = None
        self.hazard_frame = None  # the engine did not return from its update (see notes)
        self.all_frames = []      # every captured frame (a looping track keeps its second loop here)


def capture(machine, sound_id, is_sfx=False, max_frames=60000, check_every=600, tail_frames=120):
    bus, cpu = machine.bus, machine.cpu
    result = Capture(sound_id, is_sfx)
    frame_index = [0]

    def on_tick(_cpu):
        ram = bus.ram
        result.ticks.append(tuple(ram[0xA6:0xAE]))
        result.tick_frames.append(frame_index[0])
        return False

    bus.apu_writes.clear()
    machine.call(RESET_CHANNELS, bank=0x19)
    machine.call(PLAY, a=(0x80 | sound_id) if is_sfx else sound_id, bank=0x19)
    setup = [(0, register, value) for _, register, value in bus.apu_writes]
    cpu.hooks[TICK] = on_tick
    pending = None
    target_end = None
    try:
        for frame in range(max_frames):
            frame_index[0] = frame
            bus.apu_writes.clear()
            start = cpu.cycles
            try:
                machine.call(UPDATE, bank=0x19, max_cycles=400_000)
            except RuntimeError:
                result.hazard_frame = frame
                break
            writes = [(c - start, r, v) for c, r, v in bus.apu_writes]
            result.frames.append((setup + writes) if frame == 0 else writes)
            if is_sfx:
                if result.ended_frame is None and frame and bus.ram[0x628] == 0:
                    result.ended_frame = frame        # the effect released pulse 2 ($E752 gate)
            elif result.ended_frame is None and bus.ram[0xB0] & 0x20 and frame > 0:
                result.ended_frame = frame
            if result.ended_frame is not None:
                if frame >= result.ended_frame + tail_frames:
                    break
                continue
            if target_end is not None:
                if frame >= target_end:
                    break
                continue
            if pending is None and not is_sfx and frame and frame % check_every == 0 and result.ticks:
                found = track_loop(result.ticks, result.tick_frames)
                if found:
                    pending = (found[0], found[1])
                    result.channel_loops = found[2]
            if pending is not None:
                start_tick, period = pending
                if start_tick + period < len(result.ticks):
                    start_frame = result.tick_frames[start_tick]
                    end_frame = result.tick_frames[start_tick + period]
                    result.loop = (start_frame, end_frame)
                    result.loop_ticks = (start_tick, period)
                    second = end_frame + (end_frame - start_frame)
                    target_end = second if second < max_frames else end_frame
    finally:
        cpu.hooks.pop(TICK, None)
    result.all_frames = list(result.frames)
    if result.loop:
        start_tick, period = result.loop_ticks
        if start_tick + 2 * period <= len(result.ticks):
            result.verified = all(result.ticks[i] == result.ticks[i + period]
                                  for i in range(start_tick, start_tick + period))
        result.frames = result.frames[:result.loop[1]]
    elif result.ended_frame is not None:
        result.frames = result.frames[:result.ended_frame + tail_frames]
    return result


# ---------------------------------------------------------------- VGM (v1.71, NES APU)

def _gd3(title, game="Dragon Warrior IV", system="Nintendo Entertainment System", notes=""):
    fields = [title, "", game, "", system, "", "", "", "", "", notes]
    body = b"".join(field.encode("utf-16-le") + b"\x00\x00" for field in fields)
    return b"Gd3 " + struct.pack("<II", 0x100, len(body)) + body


def write_vgm(path, capture_result, title, notes=""):
    """Writes register writes at their CPU-cycle times (44100 Hz sample clock) with the loop marker."""
    data = bytearray()
    samples_written = 0
    loop_offset = None
    loop_sample = None

    def wait_until(sample):
        nonlocal samples_written
        delta = sample - samples_written
        while delta > 0:
            step = min(delta, 65535)
            if step == 735:
                data.append(0x62)
            elif step == 882:
                data.append(0x63)
            elif step <= 16:
                data.append(0x70 + step - 1)
            else:
                data.extend(b"\x61" + struct.pack("<H", step))
            delta -= step
        samples_written = max(samples_written, sample)

    loop_start = capture_result.loop[0] if capture_result.loop else None
    for frame, writes in enumerate(capture_result.frames):
        base = frame * FRAME_CYCLES
        if frame == loop_start:
            wait_until(round(base * 44100 / CPU_HZ))
            loop_offset = len(data)
            loop_sample = samples_written
        for cycle, register, value in writes:
            wait_until(round((base + cycle) * 44100 / CPU_HZ))
            data.extend(bytes((0xB4, register - 0x4000, value)))
    total_samples = round(len(capture_result.frames) * FRAME_CYCLES * 44100 / CPU_HZ)
    wait_until(total_samples)
    data.append(0x66)
    header = bytearray(0x100)
    header[0:4] = b"Vgm "
    struct.pack_into("<I", header, 0x08, 0x171)
    struct.pack_into("<I", header, 0x18, total_samples)
    struct.pack_into("<I", header, 0x24, 60)
    struct.pack_into("<I", header, 0x34, 0x100 - 0x34)
    struct.pack_into("<I", header, 0x84, CPU_HZ)
    if loop_offset is not None:
        struct.pack_into("<I", header, 0x1C, 0x100 + loop_offset - 0x1C)
        struct.pack_into("<I", header, 0x20, total_samples - loop_sample)
    gd3 = _gd3(title, notes=notes)
    gd3_position = 0x100 + len(data)
    struct.pack_into("<I", header, 0x14, gd3_position - 0x14)
    blob = bytes(header) + bytes(data) + gd3
    struct.pack_into("<I", header, 0x04, len(blob) - 4)
    with open(path, "wb") as handle:
        handle.write(bytes(header) + bytes(data) + gd3)
    return {"samples": total_samples, "loop_samples": (total_samples - loop_sample) if loop_sample is not None else 0}


def events_of(frames):
    """Absolute (cycle, register, value) events for a frame list."""
    out = []
    for number, writes in enumerate(frames):
        base = number * FRAME_CYCLES
        out.extend((base + cycle, register, value) for cycle, register, value in writes)
    return out
