"""Extract Dragon Warrior IV (USA) assets into viewable, lossless files.

Usage: python extract_assets.py --rom <reference ROM> --out <assets directory> [--stage NAME ...]
"""
import argparse
import os
import sys
import time

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from dw4assets.rom import Rom  # noqa: E402
from dw4assets import (stage_audio, stage_graphics, stage_maps, stage_monsters, stage_screens,  # noqa: E402
                       stage_sprites, stage_text)

STAGES = {
    "text": stage_text.run,
    "maps": stage_maps.run,
    "sprites": stage_sprites.run,
    "monsters": stage_monsters.run,
    "graphics": stage_graphics.run,
    "screens": stage_screens.run,
    "audio": stage_audio.run,
}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rom", default=os.environ.get("DW4_ROM"), help="reference ROM path (or DW4_ROM)")
    parser.add_argument("--out", required=True, help="output assets directory")
    parser.add_argument("--stage", action="append", choices=sorted(STAGES), help="run only these stages")
    args = parser.parse_args()
    if not args.rom:
        parser.error("--rom or DW4_ROM is required")
    rom = Rom(args.rom)
    os.makedirs(args.out, exist_ok=True)
    for name in args.stage or list(STAGES):
        start = time.time()
        print("== stage %s" % name)
        STAGES[name](rom, args.out, lambda message: print("  " + message))
        print("== stage %s done in %.1fs" % (name, time.time() - start))
    return 0


if __name__ == "__main__":
    sys.exit(main())
