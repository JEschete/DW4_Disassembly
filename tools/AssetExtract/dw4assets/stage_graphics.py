"""Graphics stage: every raw CHR range in PRG ROM as a lossless tile sheet, plus the text fonts."""
import json
import os
import shutil

from . import nes, png, text

# (bank, start, end, format, name, description). Ranges come from config/content-ranges.tsv rows whose
# consumers upload them to CHR RAM; the uploader named in each description sets the format.
CHR_RANGES = [
    (0x0C, 0x8000, 0xC000, "2bpp", "map-tiles-a", "map tile graphics, graphics page 0 (bank $08:$8229 bases; uploaded from bank $0C)"),
    (0x0D, 0x8000, 0xC000, "2bpp", "map-and-sprite-tiles-b", "map page 1 and sprite page 0 graphics (uploaded from bank $0D)"),
    (0x0E, 0x8097, 0xBAD7, "2bpp", "character-sprites", "character sprite graphics page 1 ($08:$8229 base $8097)"),
    (0x14, 0xA111, 0xA3F1, "2bpp", "battle-tiles", "46 battle tiles"),
    (0x17, 0x9452, 0x94AA, "1bpp", "ui-1bpp", "expanded to 2bpp tiles by $17:$93EF (descriptors $17:$9432: $1800 x1, $1010 x10)"),
    (0x17, 0x94AA, 0x9BFA, "2bpp", "ui-tiles", "uploaded by $17:$93AA (descriptors $17:$943C: $18D0 x115, $1000 x2)"),
    (0x17, 0xA89D, 0xB08D, "2bpp", "screen-tiles", "uploaded by $17:$A7FE-$A874 ($18D0, $0100-$06FF, $0000)"),
    (0x1B, 0x8935, 0x9135, "2bpp", "map-scene-pages", "two-page graphics stream consumed in 64-byte chunks ($1B:$87D3-$8915)"),
    (0x1B, 0x9690, 0x9E90, "2bpp", "scene-tiles", "128 tiles consumed in 64-byte chunks through pointer $968F ($1B:$92B3)"),
    (0x1D, 0x811E, 0x8B1E, "2bpp", "animated-map-tiles", "twenty 128-byte animation blocks selected by $1D:$80DE"),
    (0x1D, 0x8D6D, 0x8DED, "2bpp", "event-tiles-a", "two 64-byte payloads copied in 16-byte chunks by $1D:$8CAC-$8D5F"),
    (0x1D, 0x97BF, 0x989F, "2bpp", "event-tiles-b", "224 bytes written to PPU $1F20 by $1D:$97A4"),
    (0x1D, 0xBCA9, 0xBD69, "2bpp", "event-tiles-c", "two 96-byte payloads queued to PPU $1Fxx by $1D:$BC13"),
    (0x1F, 0xF47B, 0xFDFB, "2bpp", "fixed-bank-tiles", "152 tiles in the fixed bank"),
]
FONT_BANK = 0x18
FONT_MAIN = (0xB83D, 140)      # tiles $01-$8C, loaded by LoadFontTiles $18:$B798 (tile $00 blank)
FONT_ALTERNATE = (0xBC9D, 36)  # tiles $01-$24, loaded by $18:$B79E


def _tiles(rom, bank, start, end, fmt):
    data = rom.bytes(bank, start, end - start)
    size = 16 if fmt == "2bpp" else 8
    decode = nes.decode_tile_2bpp if fmt == "2bpp" else nes.decode_tile_1bpp
    return [decode(data, offset) for offset in range(0, len(data) - size + 1, size)]


def _font_sheet(rom, path, start, count, first_code):
    glyphs = [nes.decode_tile_1bpp(rom.bytes(FONT_BANK, start + 8 * i, 8)) for i in range(count)]
    width, height, pixels = nes.tile_sheet([[0] * 64] * first_code + glyphs, 16)
    png.write_indexed(path, width, height, pixels, [(0, 0, 0), (255, 255, 255)])
    return [{"tile": first_code + i, "source": "18:%04X" % (start + 8 * i),
             "text_code_meaning": text.symbol_text(first_code + i)} for i in range(count)]


def run(rom, out_dir, log):
    root = os.path.join(out_dir, "graphics")
    if os.path.isdir(root):
        shutil.rmtree(root)
    chr_dir = os.path.join(root, "chr")
    font_dir = os.path.join(root, "font")
    os.makedirs(chr_dir)
    os.makedirs(font_dir)
    index = {"chr": [], "fonts": []}
    for bank, start, end, fmt, name, description in CHR_RANGES:
        tiles = _tiles(rom, bank, start, end, fmt)
        width, height, pixels = nes.tile_sheet(tiles, 16)
        stem = "%02X-%04X-%s" % (bank, start, name)
        palette = nes.GRAY4 if fmt == "2bpp" else [(0, 0, 0), (255, 255, 255)]
        png.write_indexed(os.path.join(chr_dir, stem + ".png"), width, height, pixels, palette)
        index["chr"].append({"image": stem + ".png", "source": "%02X:%04X-%04X" % (bank, start, end - 1),
                             "format": fmt, "tiles": len(tiles), "description": description})
        log("chr %s: %d tiles" % (stem, len(tiles)))
    main = _font_sheet(rom, os.path.join(font_dir, "font-main.png"), FONT_MAIN[0], FONT_MAIN[1], 1)
    alternate = _font_sheet(rom, os.path.join(font_dir, "font-alternate.png"), FONT_ALTERNATE[0],
                            FONT_ALTERNATE[1], 1)
    index["fonts"] = [
        {"image": "font/font-main.png", "loader": "18:B798", "glyphs": main,
         "layout": "16 glyphs per row; cell n is CHR tile n (tile $00 blank); text codes print tile = code"},
        {"image": "font/font-alternate.png", "loader": "18:B79E", "glyphs": alternate,
         "layout": "replaces tiles $01-$24 when loaded"},
    ]
    with open(os.path.join(root, "index.json"), "w", encoding="utf-8") as handle:
        json.dump({
            "format": "Tile sheets, 16 tiles per row, 8x8 each, in ROM order. 2bpp sheets use a neutral 4-level gray "
                      "(the in-game palette depends on where the tiles are shown); 1bpp sheets are black/white. "
                      "Map tilesets with their real palettes are in ../maps/tilesets, sprites in ../sprites, "
                      "monsters in ../monsters.",
            **index,
        }, handle, indent=1)
