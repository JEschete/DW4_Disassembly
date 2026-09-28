"""Sprite stage: every field (map) character/object sprite set, with the maps that place it."""
import json
import os
import shutil

from . import entities, nes, png, sprites
from .stage_maps import MAP_NAMES


def palette_rgb(palettes):
    return [nes.rgb(color) for sub in palettes for color in sub]


def write_strip(path, frames, rgb):
    """Frames side by side (16x16 each); indices 0, 4, 8, 12 are transparent."""
    width = 16 * len(frames)
    image = [0] * (width * 16)
    for number, pixels in enumerate(frames):
        for y in range(16):
            image[y * width + 16 * number:y * width + 16 * number + 16] = pixels[y * 16:y * 16 + 16]
    png.write_indexed(path, width, 16, image, rgb, transparent_index=(0, 4, 8, 12))


def usage_label(origin):
    if "map" in origin:
        return "%02X-%02X %s" % (origin["map"], origin["submap"], MAP_NAMES[origin["map"]])
    return "override %02X (%s)" % (origin["override"], origin["override_record"])


def run(rom, out_dir, log):
    root = os.path.join(out_dir, "sprites", "field")
    if os.path.isdir(root):
        shutil.rmtree(root)
    sets_dir = os.path.join(root, "sets")
    os.makedirs(sets_dir)
    palettes = sprites.default_palettes(rom)
    rgb = palette_rgb(palettes)
    usage = {}
    for entity in entities.all_entities(rom):
        for sprite in entity["sprites"]:
            usage.setdefault(sprite["sprite_set"], []).append({
                "where": usage_label(entity["origin"]), "record": entity["record"], "period": sprite["period"],
                "sprite_id": sprite["sprite_id"], "rotated": sprite["rotated"]})
    all_frames = []
    index = []
    for set_index in range(sprites.SET_COUNT):
        groups = sprites.sprite_set(rom, set_index)
        frames = [sprites.frame_pixels(rom, g) for g in groups]
        all_frames.append(frames)
        stem = "set-%02X" % set_index
        write_strip(os.path.join(sets_dir, stem + ".png"), frames, rgb)
        uses = usage.get(set_index, [])
        images = {"frames": stem + ".png"}
        rotated_meta = None
        if any(u["rotated"] for u in uses):
            base, turned = sprites.rotated_frames(rom, set_index)
            write_strip(os.path.join(sets_dir, stem + "-rotated.png"), [f["pixels"] for f in turned], rgb)
            images["rotated"] = stem + "-rotated.png"
            rotated_meta = [{"step": f["step"], "quarter_turns_clockwise": f["quarter_turns"],
                             "sources": ["%02X:%04X" % (base["bank"], s) for s in f["sources"]],
                             "oam_flip_bits": f["oam_flip_bits"]} for f in turned]
        for g in groups:
            g["direction"] = sprites.DIRECTIONS[g["frame"]]
            g["sources"] = ["%02X:%04X" % (g["bank"], s) for s in g["sources"]]
        notes = []
        if set_index == 0:
            notes.append("hero; sprite id 0 loads set 8 instead when $62A5 bit 7 is set and the hero is "
                         "female (SaveHeroGender bit 0, $08:$85BE)")
        if set_index == 8:
            notes.append("female hero variant of set 0 ($08:$85BE)")
        meta = {
            "set": set_index, "record": "08:%04X" % (sprites.SET_TABLE + sprites.SET_SIZE * set_index),
            "sprite_ids": [i for i in range(0x80) if entities.sprite_set_for_id(i) == set_index],
            "images": images, "frame_order": "frame = 2 * direction + step; direction 0 up, 1 right, 2 down, "
                                             "3 left ($1F:$E37A-$E391)",
            "palettes": palettes, "frames": groups, "rotated_frames": rotated_meta,
            "used_by": uses, "notes": notes,
        }
        with open(os.path.join(sets_dir, stem + ".json"), "w", encoding="utf-8") as handle:
            json.dump(meta, handle, indent=1)
        index.append({"set": set_index, "images": images, "placements": len(uses),
                      "first_use": uses[0]["where"] if uses else None})
    width, height = 16 * 8, 16 * len(all_frames)
    sheet = [0] * (width * height)
    for set_index, frames in enumerate(all_frames):
        for number, pixels in enumerate(frames):
            for y in range(16):
                row = (16 * set_index + y) * width + 16 * number
                sheet[row:row + 16] = pixels[y * 16:y * 16 + 16]
    png.write_indexed(os.path.join(root, "all-sets.png"), width, height, sheet, rgb, transparent_index=(0, 4, 8, 12))
    with open(os.path.join(root, "index.json"), "w", encoding="utf-8") as handle:
        json.dump({
            "format": "sets/set-XX.png: eight 16x16 frames (up, up, right, right, down, down, left, left); "
                      "all-sets.png: one row per set. Indexed PNG, 4 sprite palettes x 4 colors, color 0 of "
                      "each palette transparent. Colors from the default sprite palette $08:$8703 and the "
                      "FCEUX default NES palette. Some story events recolor sprite palettes at runtime "
                      "($1B:$92D0, $1D:$8EC4, $14 battle code); those recolors are not applied.",
            "source": "sprite sets $08:$979B (24 bytes each), loaded by LoadCharacterSpriteGraphics $08:$85D3",
            "palettes": palettes,
            "sets": index,
        }, handle, indent=1)
    log("field sprites: %d sets, %d with rotated variants, %d placements" % (
        len(all_frames), sum(1 for e in index if "rotated" in e["images"]), sum(e["placements"] for e in index)))
