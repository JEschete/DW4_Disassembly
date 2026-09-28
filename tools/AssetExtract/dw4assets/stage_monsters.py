"""Monster stage: one folder per monster (battle image, stats, rewards, drop), plus presentation tile patches."""
import json
import os
import shutil

from . import monster_stats, monsters, names, nes, png
from .stage_maps import slug


def _summary(document):
    """Readable text version of info.json."""
    s, r = document["stats"], document["rewards"]
    lines = [
        "%s  (monster id %d)" % (document["name"], document["monster_id"]),
        "",
        "HP %d   MP %d   Attack %d   Defense %d   Agility %d" % (s["hp"], s["mp"], s["attack"], s["defense"],
                                                                 s["agility"]),
        "EXP %d   Gold %d" % (r["exp"], r["gold"]),
    ]
    drop = document["drop"]
    if drop:
        lines.append("Drop: %s (item %d), chance %s (class %d)" % (drop["item"], drop["item_id"],
                                                                   drop["chance"]["text"], drop["chance_class"]))
    else:
        lines.append("Drop: none")
    lines.append("In chapter 3 drops come from a fixed random table instead (see ../index.json).")
    actions = document["actions"]
    lines += ["", "Actions (pattern %d; codes are battle action ids, weights out of 255):" % actions["pattern"]]
    for entry in actions["weighted"]:
        extra = ("  -> summons %s" % entry["summons"]) if "summons" in entry else ""
        lines.append("  code $%02X  weight %3d  (%.1f%%)%s" % (entry["code"], entry["weight"], 100 * entry["share"],
                                                             extra))
    levels = " ".join("%d:%d" % (e["slot"], e["level"]) for e in document["resistance_slots"])
    lines += ["", "Resistance levels by slot (0-3): " + levels,
              "", "Record %s: %s" % (document["record"], " ".join("%02X" % b for b in document["record_bytes"])),
              "Image: %s" % document["graphics"]["image"], ""]
    return "\n".join(lines)

PATCH_POINTERS = 0xB1BA   # 81 stream pointers, always read from bank $07 ($14:$B102)
PATCH_SIZES = 0xB169      # low nibble = chunk count, bit 4 = also upload the mirrored tile
PATCH_TARGETS = 0xB25C    # PPU address: high nibble = address bits 7-4, low nibble = address bits 11-8
PATCH_COUNT = 81


def write_scene(path, width, height, image, colors):
    png.write_indexed(path, width, height, image, [nes.rgb(c) for c in colors])


def patch_tiles(rom, index):
    """Tiles uploaded by $14:$B100 for directory entry index (one or two per chunk)."""
    size = rom.byte(monsters.BANK, PATCH_SIZES + index)
    target = rom.byte(monsters.BANK, PATCH_TARGETS + index)
    pointer = rom.word(monsters.BANK, PATCH_POINTERS + 2 * index)
    stream = monsters.Stream(rom, 0x07, pointer)
    short = index >= 2          # $14:$B14D: entries two and up use one-byte placement entries
    tiles = []
    for _ in range(size & 0x0F):
        while True:
            flag = stream.read()
            if not short:
                stream.read()
                if not flag & 0x40:
                    stream.read()
            if flag & 0x80:
                break
        fill, mask = 0, 0xFFFF
        if flag & 0x08:
            if flag & 0x01:
                fill = stream.read()
            low = stream.read()
            mask = stream.read() << 8 | low
        tile = bytes(stream.read() if (mask << i) & 0x8000 else fill for i in range(16))
        variants = monsters.tile_variants(tile)
        tiles.append(variants[0])
        if size & 0x10:
            tiles.append(variants[1])
    # queued command byte = $80 | (size & $10) | (target & $0F): bit 4 is PPU address bit 12 ($08:$839F format)
    ppu = (size & 0x10) << 8 | (target & 0x0F) << 8 | (target & 0xF0)
    return {"entry": index, "source": "07:%04X" % pointer, "end": "07:%04X" % stream.address,
            "ppu_address": "%04X" % ppu, "first_tile": ppu >> 4, "tiles": tiles, "mirrored_pairs": bool(size & 0x10)}


def run(rom, out_dir, log):
    root = os.path.join(out_dir, "monsters")
    if os.path.isdir(root):
        shutil.rmtree(root)
    os.makedirs(root)
    monster_names = names.decode_group(rom, 9, 195)
    item_names, name_list = monster_stats.name_lists(rom)
    id_map = list(rom.bytes(monsters.BANK, monsters.ID_MAP, 195))
    index = []
    table_rows = []
    sheet_items = []
    for monster_id, gid in enumerate(id_map):
        name = monster_names[monster_id]["text"].strip()
        scene, width, height, image, colors = monsters.render(rom, gid)
        stem = "%03d-%s" % (monster_id, slug(name) or "unnamed")
        folder = os.path.join(root, stem)
        os.makedirs(folder)
        write_scene(os.path.join(folder, stem + ".png"), width, height, image, colors)
        stats = monster_stats.decode(rom, monster_id, item_names, name_list)
        info = scene["info"]
        meta = {
            "graphics_id": gid, "image": stem + ".png", "width": width, "height": height,
            "origin_in_image": list(scene["origin"]),
            "origin_note": "pixel position of BG column 0 / row 0 of the monster frame; in battle row 0 is "
                           "screen line $50 and column 0 is the monster's placement column",
            "descriptor": {"address": "14:%04X" % (monsters.DESCRIPTORS + 5 * gid), "bytes": info["bytes"],
                           "stream": "%02X:%04X-%04X" % (info["bank"], info["stream"], info["end"] - 1),
                           "chunks": info["chunks"], "chunks_drawn": scene["chunks_drawn"],
                           "palette_record": "14:%04X" % info["palette_record"]},
            "palettes": {"bg": scene["palettes"]["bg"], "sprite": scene["palettes"]["sprite"]},
            "image_palette_layout": "index 0 = backdrop (black in battle); 1-12 = BG palettes 0-3 colors 1-3; "
                                    "13-24 = sprite palettes 0-3 colors 1-3",
            "bg_tiles": [{"column": c, "row": r, "chunk": n, "variant": v, "palette": p}
                         for (c, r), (n, v, p) in sorted(scene["bg"].items(), key=lambda kv: (kv[0][1], kv[0][0]))],
            "sprites": [{"chunk": n, "x": e["x"], "y": e["y"], "palette": e["palette"], "flip_h": e["flip_h"],
                         "flip_v": e["flip_v"]} for n, e in scene["sprites"]],
            "tiles_2bpp_hex": [c["tile"].hex() for c in scene["chunks"]],
        }
        if gid in monsters.NO_SPRITE_IDS:
            meta["notes"] = ("the battle engine zeroes this graphic's sprite count ($14:$92F4), so drawing stops "
                             "at the first sprite entry; later chunks are uploaded but not placed")
        if gid in monsters.DRAW_LIMIT:
            meta["notes"] = ("only the first $36 chunks are placed by the regular draw pass ($14:$984B); the other "
                             "chunks use one-byte entries and are placed by the battle presentation code "
                             "($14:$A40D directory); see tiles_2bpp_hex and ../presentation-tiles")
        document = {"monster_id": monster_id, "name": name, "name_record": monster_names[monster_id]["record"],
                    "stats": {key: stats[key] for key in ("hp", "mp", "attack", "defense", "agility")},
                    "rewards": {"exp": stats["exp"], "gold": stats["gold"]},
                    "drop": stats["drop"], "actions": stats["actions"],
                    "resistance_slots": stats["resistance_slots"],
                    "unlabeled_fields": stats["unlabeled_fields"],
                    "record": stats["record"], "record_bytes": stats["raw_bytes"],
                    "graphics": meta}
        with open(os.path.join(folder, "info.json"), "w", encoding="utf-8") as handle:
            json.dump(document, handle, indent=1)
        with open(os.path.join(folder, "info.txt"), "w", encoding="utf-8", newline="\n") as handle:
            handle.write(_summary(document))
        index.append({"monster_id": monster_id, "name": name, "folder": stem, "graphics_id": gid,
                      "hp": stats["hp"], "mp": stats["mp"], "attack": stats["attack"],
                      "defense": stats["defense"], "agility": stats["agility"], "exp": stats["exp"],
                      "gold": stats["gold"], "drop": stats["drop"]["item"] if stats["drop"] else None,
                      "drop_chance": stats["drop"]["chance"]["text"] if stats["drop"] else None})
        table_rows.append(index[-1])
        sheet_items.append((width, height, image, colors))
    with open(os.path.join(root, "monsters.tsv"), "w", encoding="utf-8", newline="\n") as handle:
        columns = ["monster_id", "name", "hp", "mp", "attack", "defense", "agility", "exp", "gold", "drop",
                   "drop_chance", "folder"]
        handle.write("\t".join(columns) + "\n")
        for row in table_rows:
            handle.write("\t".join("" if row[c] is None else str(row[c]) for c in columns) + "\n")
    unnamed = [dict(monster_id=i, **{k: v for k, v in monster_stats.decode(rom, i, item_names, name_list).items()})
               for i in range(195, monster_stats.RECORD_COUNT)]
    with open(os.path.join(root, "unnamed-records.json"), "w", encoding="utf-8") as handle:
        json.dump({"note": "records 195-213 follow the 195 named monsters; no name, graphics id or encounter "
                           "list refers to them", "records": unnamed}, handle, indent=1)
    # contact sheet in monster-id order, 12 per row, cells sized to the largest image
    cell_w = max(w for w, _, _, _ in sheet_items) + 4
    cell_h = max(h for _, h, _, _ in sheet_items) + 4
    columns = 12
    rows = (len(sheet_items) + columns - 1) // columns
    sheet_w, sheet_h = columns * cell_w, rows * cell_h
    canvas = [(0, 0, 0, 255)] * (sheet_w * sheet_h)
    for number, (w, h, image, colors) in enumerate(sheet_items):
        rgb = [nes.rgb(c) for c in colors]
        ox = (number % columns) * cell_w + (cell_w - w) // 2
        oy = (number // columns) * cell_h + (cell_h - h)
        for y in range(h):
            for x in range(w):
                r, g, b = rgb[image[y * w + x]]
                canvas[(oy + y) * sheet_w + ox + x] = (r, g, b, 255)
    png.write_rgba(os.path.join(root, "all-monsters.png"), sheet_w, sheet_h, canvas)

    patches_dir = os.path.join(root, "presentation-tiles")
    os.makedirs(patches_dir)
    patch_index = []
    for entry in range(PATCH_COUNT):
        patch = patch_tiles(rom, entry)
        tiles = [nes.decode_tile_2bpp(t) for t in patch["tiles"]]
        width, height, pixels = nes.tile_sheet(tiles, columns=min(16, len(tiles)))
        name = "patch-%02d.png" % entry
        png.write_indexed(os.path.join(patches_dir, name), width, height, pixels, nes.GRAY4)
        patch_index.append({"entry": entry, "image": name, "source": patch["source"], "end": patch["end"],
                            "ppu_address": patch["ppu_address"], "tile_count": len(tiles),
                            "mirrored_pairs": patch["mirrored_pairs"],
                            "tiles_2bpp_hex": [t.hex() for t in patch["tiles"]]})
    with open(os.path.join(patches_dir, "index.json"), "w", encoding="utf-8") as handle:
        json.dump({
            "format": "Tile patches uploaded to the battle pattern table by $14:$B100 (directory $14:$B1BA, sizes "
                      "$B169, targets $B25C, stream bank $07). Grayscale: the palette comes from whichever "
                      "monster palette slot the presentation code uses, which these records do not carry. "
                      "With mirrored_pairs each chunk uploads the tile and its horizontal mirror.",
            "callers": "battle presentation directory $14:$A40D (calls at $A442-$A9F5)",
            "patches": patch_index,
        }, handle, indent=1)

    with open(os.path.join(root, "index.json"), "w", encoding="utf-8") as handle:
        json.dump({
            "format": "NNN-name/: one folder per monster id with NNN-name.png (indexed PNG cropped to the drawn "
                      "content; index 0 is the black battle backdrop; FCEUX default NES palette), info.json (stats, "
                      "rewards, drop, actions, resistances, raw record bytes, graphics data) and info.txt. "
                      "monsters.tsv lists the main stats of every monster.",
            "stats_source": monster_stats.__doc__.strip(),
            "chapter3_drop_table": monster_stats.chapter3_drop_table(rom, item_names),
            "sources": {"descriptors": "14:B3B1 (194 x 5 bytes)", "monster_to_graphics": "14:B2D5",
                        "bank_bitmap": "14:B398", "palette_records": "14:B77B-BCFF",
                        "names": "0B:AF61 group 9", "streams": "banks 06, 07, 10:BD2A, 14:BE53",
                        "stats": "18:8046 (214 x 22 bytes; see stats_source)"},
            "monsters": index,
        }, handle, indent=1)
    log("monsters: %d battle images, %d presentation patches" % (len(index), len(patch_index)))
