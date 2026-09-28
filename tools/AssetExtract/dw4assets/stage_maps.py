"""Map stage: every town/dungeon map and submap, tileset sheets, and map palettes."""
import json
import os
import shutil

from . import maps, nes, png

# Location names (map numbers $00-$48). Names follow the in-game place names; the numbering list
# was cross-checked against Resources/DataCrystal "Map List".
MAP_NAMES = [
    "Keeleon", "Santeem", "Burland", "Dire Palace", "Endor", "Bonmalmo", "Branca", "Soretta",
    "Gardenbur", "Stancia", "Aktemto", "Riverton", "Bazaar", "Mintos", "Tempe", "Frenor",
    "Aneaux", "Haville", "Izmit", "Surene", "Hometown", "Monbaraba", "Lakanaba", "Kievs",
    "Foxville", "Seaside Village", "Gottside", "Rosaville", "Secret Playground Entrance",
    "House of Prophecy", "Shrine to Endor", "Shrine Northwest of Endor", "Woodsman's Shack",
    "Desert Inn", "Small Medal King", "Shrine North of Soretta", "Small Island Shack",
    "Royal Crypt Entrance", "Last Refuge", "Gigademon Shrine", "Anderoug Shrine",
    "Infurnus Shadow Shrine", "Final Cave Entrance", "Travel Door near Riverton",
    "Shrine of Colossus Outside", "Aktemto Mine", "Shrine of Breaking Waves", "Padequia Cave",
    "Bakor's Hideout", "Sphere of Silence Cave", "Golden Bracelet Cave", "Secret Playground",
    "Cascade Cave", "Final Cave", "Iron Safe Cave", "Cave of Betrayal", "Silver Statuette Cave",
    "Branca-Izmit Tunnel", "Branca-Endor Tunnel", "Royal Crypt", "Necrosaro's Lair",
    "Zenithian Tower", "Outside Zenithia", "Birdsong Tower", "World Tree", "Loch Tower",
    "Lighthouse", "Konenber", "Radimvice Shrine", "Necrosaro's Palace", "Zenithia",
    "Shrine of the Horn", "Shrine of Colossus",
]


def slug(text):
    keep = "".join(ch if ch.isalnum() else "-" for ch in text.lower())
    while "--" in keep:
        keep = keep.replace("--", "-")
    return keep.strip("-")


def palette_rgb(palette):
    return [nes.rgb(color) for sub in palette for color in sub]


def slot_table(rom, entries):
    table = []
    for slot, entry in enumerate(entries):
        index = maps.slot_definition_index(entry)
        row = {"slot": slot, "entry": [entry[0], entry[1]], "attribute": (entry[0] >> 3) & 3,
               "smoothing": entry[0] >> 5, "definition": index}
        if index is not None:
            d = maps.definition(rom, index)
            row.update({"behavior": d["behavior"], "pattern": d["pattern"], "page": d["page"],
                        "tile_sources": ["%02X:%04X" % s for s in maps.tile_sources(rom, index)]})
        table.append(row)
    return table


def write_tileset_sheet(rom, path, entries, palette, cache):
    """Slots as 16x16 metatiles, eight per row."""
    count = len(entries)
    columns = 8
    rows = (count + columns - 1) // columns
    width, height = columns * 16, rows * 16
    image = [0] * (width * height)
    for slot, entry in enumerate(entries):
        index = maps.slot_definition_index(entry)
        if index is None:
            continue
        attribute = (entry[0] >> 3) & 3
        pixels = maps.metatile_pixels(rom, index, cache)
        ox, oy = (slot % columns) * 16, (slot // columns) * 16
        for y in range(16):
            for x in range(16):
                image[(oy + y) * width + ox + x] = attribute * 4 + pixels[y * 16 + x]
    png.write_indexed(path, width, height, image, palette_rgb(palette))


def run(rom, out_dir, log):
    root = os.path.join(out_dir, "maps")
    if os.path.isdir(root):
        shutil.rmtree(root)
    towns = os.path.join(root, "locations")
    sheets = os.path.join(root, "tilesets")
    os.makedirs(towns, exist_ok=True)
    os.makedirs(sheets, exist_ok=True)
    cache = {}
    index = {"locations": [], "tilesets": []}
    tilesets_used = {}
    for number in range(maps.MAP_COUNT):
        name = MAP_NAMES[number]
        folder = os.path.join(towns, "%02X-%s" % (number, slug(name)))
        os.makedirs(folder, exist_ok=True)
        entry_list = []
        for submap, record in enumerate(maps.submap_records(rom, number)):
            bank = maps.map_data_bank(number, submap)
            decoded = maps.decode_map(rom, bank, record["data_pointer"])
            tileset = record["tileset"]
            entries = maps.slot_entries(rom, tileset)
            cells = maps.smooth(decoded["cells"], decoded["width"], decoded["height"], tileset,
                                decoded["border_tile"], entries)
            day = maps.palette_number(rom, number, submap, tileset, night=False)
            night = maps.palette_number(rom, number, submap, tileset, night=True)
            stem = "%02X-%02X" % (number, submap)
            w, h = decoded["width"], decoded["height"]
            outputs = {}
            has_roofs = any(value & 0xE0 for value in cells)
            views = [("inside", "")] + ([("outside", "-roofs")] if has_roofs else [])
            periods = [("day", day)] + ([("night", night)] if night != day else [])
            for period, palette_id in periods:
                palette = maps.bg_palette(rom, palette_id)
                for view, suffix in views:
                    image = maps.render_cells(rom, cells, w, h, entries, roofs=view, cache=cache)
                    file_name = "%s%s%s.png" % (stem, suffix, "" if period == "day" else "-night")
                    png.write_indexed(os.path.join(folder, file_name), w * 16, h * 16, image, palette_rgb(palette))
                    outputs["%s_%s" % (view, period)] = file_name
            meta = {
                "map": number, "submap": submap, "name": name,
                "source": {"info": "17:%04X" % record["info_address"],
                           "data": "%02X:%04X" % (bank, record["data_pointer"]),
                           "stream_bits": decoded["stream_bits"]},
                "width": w, "height": h, "tileset": tileset, "ceiling": record["ceiling"],
                "patterned_border": record["patterned_border"], "border_tile": decoded["border_tile"],
                "tile_bits": decoded["tile_bits"], "roof_bits": decoded["roof_bits"],
                "palette_day": day, "palette_night": night,
                "palettes": {"day": maps.bg_palette(rom, day), "night": maps.bg_palette(rom, night)},
                "images": outputs,
                "cells_note": "low 5 bits = tileset slot, high 3 bits = roof region; 'cells' is after "
                              "front-facing smoothing, 'cells_raw' is the decoded stream",
                "cells": [cells[y * w:(y + 1) * w] for y in range(h)],
                "cells_raw": [decoded["cells"][y * w:(y + 1) * w] for y in range(h)],
            }
            with open(os.path.join(folder, stem + ".json"), "w", encoding="utf-8") as handle:
                json.dump(meta, handle, indent=1)
            tilesets_used.setdefault(tileset, (number, submap, day))
            entry_list.append({"submap": submap, "json": stem + ".json", "images": outputs,
                               "width": w, "height": h, "tileset": tileset})
        index["locations"].append({"map": number, "name": name,
                                   "folder": os.path.basename(folder), "submaps": entry_list})
        log("map %02X %s: %d submaps" % (number, name, len(entry_list)))
    worlds = os.path.join(root, "world")
    os.makedirs(worlds, exist_ok=True)
    entries0 = maps.slot_entries(rom, 0)
    world_palette = maps.palette_number(rom, 0xFF, 0, 0)
    for name, table, rows in maps.WORLDS:
        world = maps.decode_world(rom, table, rows)
        cells = [value for row in world["rows"] for value in row]
        palette = maps.bg_palette(rom, world_palette)
        image = maps.render_cells(rom, cells, world["width"], world["height"], entries0, roofs="inside", cache=cache)
        png.write_indexed(os.path.join(worlds, name + ".png"), world["width"] * 16, world["height"] * 16,
                          image, palette_rgb(palette))
        with open(os.path.join(worlds, name + ".json"), "w", encoding="utf-8") as handle:
            json.dump({
                "world": name, "width": world["width"], "height": world["height"], "tileset": 0,
                "palette": world_palette, "palette_colors": palette,
                "source": {"row_records": "0B:%04X" % table, "rows": rows},
                "format": "row records are (pointer, byte count to x=128, byte count to x=256); run bytes are "
                          "tile<<5 | (run-1), $E0-$E7 run tile 7, $E8-$FF single tiles $08-$1F ($1F:$D333)",
                "notes": "all three worlds draw with tileset 0; tile (x=$C2,y=$2E) of the main world becomes "
                         "slot 2 once flag $62A1 bit 7 is set ($1F:$D523)",
                "row_records": [list(r) for r in world["records"]],
                "cells": world["rows"],
            }, handle)
        index.setdefault("worlds", []).append({"world": name, "image": name + ".png",
                                               "width": world["width"], "height": world["height"]})
        log("world %s: %dx%d" % (name, world["width"], world["height"]))
    for tileset in range(51):
        entries = maps.slot_entries(rom, tileset)
        first = tilesets_used.get(tileset)
        palette_id = first[2] if first else rom.byte(maps.PALETTE_BANK, maps.PALETTE_NUMBERS + 2 * tileset)
        palette = maps.bg_palette(rom, palette_id)
        sheet = "tileset-%02X.png" % tileset
        write_tileset_sheet(rom, os.path.join(sheets, sheet), entries, palette, cache)
        info = {"tileset": tileset, "source": "08:%04X" % (maps.TILESET_BASE + 64 * tileset),
                "palette_used_for_sheet": palette_id, "first_used_by": first[:2] if first else None,
                "roof_selector": maps.roof_entries(rom, tileset)[0] if tileset else None,
                "slots": slot_table(rom, entries)}
        with open(os.path.join(sheets, "tileset-%02X.json" % tileset), "w", encoding="utf-8") as handle:
            json.dump(info, handle, indent=1)
        index["tilesets"].append({"tileset": tileset, "image": sheet})
    with open(os.path.join(root, "index.json"), "w", encoding="utf-8") as handle:
        json.dump(index, handle, indent=1)
