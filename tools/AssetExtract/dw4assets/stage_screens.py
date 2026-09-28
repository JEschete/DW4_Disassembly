"""Screens stage: full screens produced by running the game's own code in the headless model.

Each scene starts from power-on (the reset vector at $1F:$FFFC), optionally calls a routine, then advances
frame by frame with a fixed controller script. A frame is saved when the nametables and palette have held
still for STABLE_FRAMES frames (sprite and CHR animation ignored), plus any frames listed explicitly.
Nothing is drawn by this tool: images are the PPU state the game's code produced, rendered by ppu_render.
"""
import hashlib
import json
import os
import shutil

from . import png, ppu_render
from .nesbus import Machine

STABLE_FRAMES = 20
A, B, SELECT, START, UP, DOWN, LEFT, RIGHT = 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80
FONT_LOADER = (0x18, 0xB798)            # LoadFontTiles; the field loads it before the casino is entered
CASINO_COINS = 0x62AD                   # SaveCasinoCoins, three bytes little-endian


def _presses(*pairs):
    return {frame: buttons for frame, buttons in pairs}


SCENES = [
    {
        "name": "title",
        "description": "power-on sequence, title screen, title menu, adventure-log menu and name entry",
        "entry": None, "frames": 2700,
        "presses": _presses((2000, START), (2150, A), (2250, A)),
        "extra_frames": [],
    },
    {
        "name": "casino-slots",
        "description": "Endor casino slot machine, bank $17 directory entry 2 ($17:$9BFA), 1000 coins",
        "entry": (0x17, 0x9BFA), "frames": 700,
        "presses": _presses((120, UP), (180, A), (400, UP), (460, A)),
        "extra_frames": [200, 215, 230, 245, 260, 275, 290, 480, 500],
    },
    {
        "name": "casino-poker",
        "description": "Endor casino poker, bank $17 directory entry 0 ($17:$804C), 1000 coins",
        "entry": (0x17, 0x804C), "frames": 900,
        "presses": _presses((100, A), (160, A), (260, RIGHT), (300, A), (340, DOWN), (380, A),
                            (520, A), (600, A), (680, A)),
        "extra_frames": [],
    },
]


class _Returned(Exception):
    pass


def _machine(rom, scene):
    machine = Machine(rom)
    machine.bus.chr0 = 0x10
    machine.cpu.reset()
    if scene["entry"] is None:
        return machine, 0
    machine.run_frames(60)
    machine.cpu.s = 0xFF
    machine.call(FONT_LOADER[1], bank=FONT_LOADER[0])
    machine.bus.sram[CASINO_COINS - 0x6000:CASINO_COINS - 0x6000 + 3] = bytes([0xE8, 0x03, 0x00])
    bank, address = scene["entry"]
    machine.cpu.s = 0xFF
    machine.cpu.push16(0x0001)
    machine.bus.select(bank)
    machine.bus.ram[0x0507] = bank

    def returned(_cpu):
        raise _Returned()

    machine.cpu.hooks[0x0002] = returned
    machine.cpu.pc = address
    return machine, machine.frames


def capture_scene(rom, scene, folder, log):
    machine, start = _machine(rom, scene)
    bus = machine.bus
    state = {"last": None, "stable": 0, "saved": set(), "shots": []}

    def save(frame, reason):
        bus.oam[:] = bytes(bus.ram[0x200:0x300])      # the NMI copies the $0200 shadow with OAM DMA
        pixels = ppu_render.render_screen(bus, top=bus.frame_top_last, raster=bus.raster_last)
        name = "%s-%05d.png" % (scene["name"], frame)
        png.write_rgba(os.path.join(folder, name), 256, 240, ppu_render.to_rgb(pixels))
        state["shots"].append({"image": name, "frame": frame, "reason": reason,
                               "ppuctrl": bus.ppuctrl, "palette": bytes(bus.vram[0x3F00:0x3F20]).hex(),
                               "raster_splits": [list(e) for e in bus.raster_last]})

    def on_end(m):
        frame = m.frames - start
        bus.buttons = scene["presses"].get(frame, 0)
        if not bus.ppumask & 0x18:
            state["last"], state["stable"] = None, 0
            return
        signature = hashlib.md5(bytes(bus.vram[0x2000:0x3000]) + bytes(bus.vram[0x3F00:0x3F20])).digest()
        if signature == state["last"]:
            state["stable"] += 1
        else:
            state["last"], state["stable"] = signature, 0
        if state["stable"] == STABLE_FRAMES and signature not in state["saved"]:
            state["saved"].add(signature)
            save(frame, "stable for %d frames" % STABLE_FRAMES)
        elif frame in scene["extra_frames"]:
            save(frame, "listed frame")

    machine.on_frame_end = on_end
    try:
        machine.run_frames(scene["frames"])
    except _Returned:
        log("%s: entry returned at frame %d" % (scene["name"], machine.frames - start))
    return state["shots"]


def run(rom, out_dir, log):
    root = os.path.join(out_dir, "screens")
    if os.path.isdir(root):
        shutil.rmtree(root)
    index = []
    for scene in SCENES:
        folder = os.path.join(root, scene["name"])
        os.makedirs(folder)
        shots = capture_scene(rom, scene, folder, log)
        names = {A: "A", B: "B", SELECT: "Select", START: "Start", UP: "Up", DOWN: "Down", LEFT: "Left",
                 RIGHT: "Right"}
        meta = {
            "scene": scene["name"], "description": scene["description"],
            "entry": None if scene["entry"] is None else "%02X:%04X" % scene["entry"],
            "setup": "power-on reset" + ("" if scene["entry"] is None else
                                         ", 60 frames, LoadFontTiles $18:$B798, SaveCasinoCoins = 1000, JSR entry"),
            "input": [{"frame": f, "buttons": names.get(b, hex(b))} for f, b in sorted(scene["presses"].items())],
            "frames_run": scene["frames"], "screens": shots,
        }
        with open(os.path.join(folder, "index.json"), "w", encoding="utf-8") as handle:
            json.dump(meta, handle, indent=1)
        index.append({"scene": scene["name"], "folder": scene["name"], "screens": len(shots),
                      "description": scene["description"]})
        log("screens %s: %d images" % (scene["name"], len(shots)))
    with open(os.path.join(root, "index.json"), "w", encoding="utf-8") as handle:
        json.dump({
            "format": "256x240 RGBA PNG per saved frame (FCEUX default palette). Frames are numbered from power-on "
                      "(title) or from the JSR into the entry routine (casino). The game's code built every "
                      "screen; mid-frame horizontal scroll splits (sprite-0 timing) are reproduced per scanline.",
            "scenes": index,
        }, handle, indent=1)
