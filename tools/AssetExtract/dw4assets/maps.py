"""Town/dungeon map decoding, tilesets, metatile graphics and map palettes.

Sources (all read from the reference ROM):
- Map information: bank $17 pointer table $B08D (73 maps); each map points at 3-byte submap records
  (byte 0: bits 0-5 tileset, bit 6 ceiling, bit 7 patterned border; bytes 1-2: map data pointer) ended by $FF.
- Map data bank: fixed-bank $E9AD (maps < $2D, or $2D below submap 8 -> bank $09; below $45, or $45 below
  submap 5 -> bank $0A; otherwise $0B). Streams roll into the next bank at $BFD8 ($E642).
- Map stream: header width, height, byte (bits 7-6 + 2 = bits per tile, bits 4-0 = border tile), then an
  MSB-first bitstream decoded by the fixed-bank loop at $E584-$E8F7 and the roof pass at $E5A5.
- Tilesets: bank $08 $8ADB + 64 * tileset, 32 two-byte entries (byte 0: smoothing 7-5, palette 4-3,
  definition high bits 2-0; byte 1: definition low bits). Definitions: bank $08 $A80D, 3 bytes each.
- Metatile graphics: $08:$80D5-$8224 with base pointers $8229 (page 0 = bank $0C $8000, page 1 = bank $0D
  $7F01), increment patterns $A1BB, explicit pointer records $A28D (pattern $F), animated tiles $AEB7 ($E).
- Common slots $20-$2F: definitions 0-15 through the $8ABB records; roofs draw slot $20 ($D4F3).
"""

MAP_INFO_BANK = 0x17
MAP_INFO_POINTERS = 0xB08D
MAP_COUNT = 73
TILESET_BANK = 0x08
TILESET_BASE = 0x8ADB
DEFINITION_BASE = 0xA80D
PATTERN_TABLE = 0xA1BB
EXPLICIT_POINTERS = 0xA28D
ANIMATED_POINTERS = 0xAEB7
PAGE_BASES = [(0x0C, 0x8000), (0x0D, 0x7F01)]
STREAM_END = 0xBFD8

MAP_NAMES = {}  # optional human names filled by the caller


def map_data_bank(map_number, submap):
    if map_number < 0x2D or (map_number == 0x2D and submap < 8):
        return 0x09
    if map_number < 0x45 or (map_number == 0x45 and submap < 5):
        return 0x0A
    return 0x0B


def submap_records(rom, map_number):
    pointer = rom.word(MAP_INFO_BANK, MAP_INFO_POINTERS + 2 * map_number)
    records = []
    address = pointer
    while rom.byte(MAP_INFO_BANK, address) != 0xFF:
        info = rom.byte(MAP_INFO_BANK, address)
        records.append({
            "info_address": address,
            "tileset": info & 0x3F,
            "ceiling": bool(info & 0x40),
            "patterned_border": bool(info & 0x80),
            "data_pointer": rom.word(MAP_INFO_BANK, address + 1),
        })
        address += 3
    return records


class _Stream:
    """MSB-first bit reader over the map data, following the $E642 bank rollover."""

    def __init__(self, rom, bank, address):
        self.rom, self.bank, self.address, self.bit = rom, bank, address, 0
        self.bits_read = 0
        self.start = (bank, address)

    def byte_advance(self):
        self.address += 1
        if self.address == STREAM_END:
            self.bank += 1
            self.address = 0x8012 if self.bank == 0x0B else 0x8000

    def read_byte_raw(self):
        value = self.rom.byte(self.bank, self.address)
        self.byte_advance()
        return value

    def read_bit(self):
        value = (self.rom.byte(self.bank, self.address) >> (7 - self.bit)) & 1
        self.bit += 1
        self.bits_read += 1
        if self.bit == 8:
            self.bit = 0
            self.byte_advance()
        return value

    def read(self, count):
        value = 0
        for _ in range(count):
            value = (value << 1) | self.read_bit()
        return value


def decode_map(rom, bank, pointer):
    """Decode one town/dungeon map exactly as the fixed-bank loader does (before post-processing)."""
    stream = _Stream(rom, bank, pointer)
    width = stream.read_byte_raw()
    height = stream.read_byte_raw()
    mode = stream.read_byte_raw()
    tile_bits = ((mode & 0xC0) >> 6) + 2
    border = mode & 0x1F
    cells = width * height
    limit = cells - 1
    address_bits = 0
    for bits in range(16, 0, -1):
        if limit & (1 << (bits - 1)):
            address_bits = bits
            break
    grid = [0] * cells

    state = {"tile_bits": tile_bits, "roof": False, "large": False, "tiles": [0, 0, 0, 0]}

    def put(index, value):
        if not (0 <= index < cells):
            raise ValueError("map write outside %dx%d at %d" % (width, height, index))
        if state["roof"]:
            grid[index] = (grid[index] & 0x1F) | ((value << 5) & 0xE0)
        else:
            grid[index] = value

    def plot(index):
        t = state["tiles"]
        put(index, t[0])
        if state["large"]:
            put(index + 1, t[1])
            put(index + width, t[2])
            put(index + width + 1, t[3])

    def main_loop():
        command = stream.read(2)
        while True:
            if command == 0:
                state["large"] = False
                state["tiles"][0] = stream.read(state["tile_bits"])
                command = stream.read(2)
                if command != 0:
                    continue
                if stream.read_bit():
                    return
                state["large"] = True
                state["tiles"][1] = stream.read(state["tile_bits"])
                state["tiles"][2] = stream.read(state["tile_bits"])
                state["tiles"][3] = stream.read(state["tile_bits"])
            elif command == 1:
                first = stream.read(address_bits)
                second = stream.read(address_bits)
                x1, y1 = first % width, first // width
                x2, y2 = second % width, second // width
                columns, rows = x2 - x1, y2 - y1
                if state["large"]:
                    columns >>= 1
                    rows >>= 1
                step = 2 if state["large"] else 1
                for row in range(rows + 1):
                    for column in range(columns + 1):
                        plot((y1 + row * step) * width + x1 + column * step)
            elif command == 2:
                paint()
            else:
                plot(stream.read(address_bits))
            command = stream.read(2)

    def paint():
        stack = []
        cursor = stream.read(address_bits)
        plot(cursor)
        direction = stream.read(2)
        while True:
            if stream.read_bit():
                choice = stream.read(2)
                if choice == 0:
                    direction = (direction + 1) & 3
                elif choice == 1:
                    direction = (direction - 1) & 3
                elif choice == 2:
                    stack.append((cursor, direction))
                    direction = (direction + 1) & 3 if stream.read_bit() == 0 else (direction - 1) & 3
                else:
                    if stream.read_bit() == 0:
                        cursor = stream.read(address_bits)
                        plot(cursor)
                        direction = stream.read(2)
                        continue
                    if not stack:
                        return
                    cursor, direction = stack.pop()
                    continue
            steps = 2 if state["large"] else 1
            delta = (-width, 1, width, -1)[direction]
            cursor += delta * steps
            plot(cursor)

    first_tile = stream.read(tile_bits)
    for index in range(cells):
        grid[index] = first_tile
    main_loop()
    roof_bits = stream.read(2)
    if roof_bits:
        state["roof"] = True
        state["tile_bits"] = roof_bits
        main_loop()
    return {
        "width": width, "height": height, "tile_bits": tile_bits, "border_tile": border,
        "address_bits": address_bits, "roof_bits": roof_bits, "cells": grid,
        "stream_bits": stream.bits_read, "end": (stream.bank, stream.address, stream.bit),
    }


SMOOTH_ROOF_BORDER_TILESETS = [0x25, 0x26, 0x27, 0x28, 0x2B]            # bank $1E $A016
SMOOTH_ROOF_ALWAYS_TILESETS = [0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
                               0x18, 0x19, 0x1A, 0x1D, 0x29, 0x2A]         # bank $1E $A01C


def tileset_entries(rom, tileset):
    """The 32 two-byte tileset entries (bank $08 $8ADB + 64 * tileset)."""
    base = TILESET_BASE + 64 * tileset
    return [(rom.byte(TILESET_BANK, base + 2 * i), rom.byte(TILESET_BANK, base + 2 * i + 1)) for i in range(32)]


def smooth(cells, width, height, tileset, border, entries):
    """Front-facing smoothing pass (bank $1E $9F54-$A013)."""
    flags = [entry[0] >> 5 for entry in entries]
    front = [0, 0, 0]
    for slot in range(32):
        if flags[slot] >= 5:
            front[(flags[slot] & 3) - 1] = slot
    out = list(cells)
    for y in range(height):
        for x in range(width):
            index = y * width + x
            value = out[index]
            roof = value & 0xE0
            group = flags[value & 0x1F]
            if group == 0 or group >= 4:
                continue
            if y == height - 1:
                change = flags[border] == 0
            else:
                below = out[index + width]
                if below & 0xE0 == roof:
                    change = flags[below & 0x1F] == 0
                elif tileset in SMOOTH_ROOF_BORDER_TILESETS:
                    change = (below & 0x1F) == border and flags[below & 0x1F] == 0
                elif tileset in SMOOTH_ROOF_ALWAYS_TILESETS:
                    change = True
                else:
                    change = roof != 0
            if change:
                out[index] = roof | front[group - 1]
    return out


def signed(value):
    return value - 256 if value >= 0x80 else value


def definition(rom, index):
    """Logical tile definition (bank $08 $A80D + 3 * index)."""
    address = DEFINITION_BASE + 3 * index
    b0, b1, b2 = rom.bytes(TILESET_BANK, address, 3)
    return {"index": index, "address": address, "tile": ((b1 & 3) << 8) | b0,
            "pattern": b1 >> 4, "page": (b1 >> 2) & 1, "flag3": (b1 >> 3) & 1, "behavior": b2}


def tile_sources(rom, index):
    """The four 8x8 tile sources (bank, address) for a map definition, in TL, TR, BL, BR order
    ($08:$80D5-$8224 with $09 = 0, copied by $83BD from bank $0C + page)."""
    d = definition(rom, index)
    if d["pattern"] == 0x0F:
        base = EXPLICIT_POINTERS + d["tile"] * 8
        bank = 0x0C + d["page"]
        return [(bank, rom.word(TILESET_BANK, base + 2 * i)) for i in range(4)]
    if d["pattern"] == 0x0E:
        pointer = rom.word(TILESET_BANK, ANIMATED_POINTERS + d["tile"] * 2)
        return [(0x1D, pointer + 16 * i) for i in range(4)]
    bank, base = PAGE_BASES[d["page"]]
    address = base + d["tile"] * 16
    sources = [(bank, address)]
    for step in rom.bytes(TILESET_BANK, PATTERN_TABLE + 3 * d["pattern"], 3):
        address += signed(step) * 16
        sources.append((bank, address))
    return sources


def roof_entries(rom, tileset):
    """Slots $20/$21 for tilesets other than 0 ($08:$853E): a two-bit selector from $8AA2 picks a pair of
    two-byte entries at $8AAF."""
    selector = (rom.byte(TILESET_BANK, 0x8AA2 + (tileset >> 2)) >> (2 * (3 - (tileset & 3)))) & 3
    base = 0x8AAF + 4 * selector
    return selector, [(rom.byte(TILESET_BANK, base), rom.byte(TILESET_BANK, base + 1)),
                      (rom.byte(TILESET_BANK, base + 2), rom.byte(TILESET_BANK, base + 3))]


def slot_entries(rom, tileset):
    """Slots $00-$1F from the tileset; slots $20-$2F are definitions 0-15 for tileset 0 ($8ABB records,
    $08:$851A-$852D), otherwise slots $20/$21 come from the roof selector ($853E)."""
    entries = tileset_entries(rom, tileset)
    if tileset == 0:
        for i in range(16):
            entries.append((rom.byte(TILESET_BANK, 0x8ABB + 2 * i), rom.byte(TILESET_BANK, 0x8ABC + 2 * i)))
    else:
        entries.extend(roof_entries(rom, tileset)[1])
        entries.extend([(7, 0)] * 14)
    return entries


def slot_definition_index(entry, chapter=None, flag_6286_bit4=False):
    """Definition index for a tileset entry, including the $8099 substitution of definition $17 by $12."""
    high, low = entry[0] & 7, entry[1]
    if high == 7:
        return None
    if chapter is not None and high == 0 and low == 0x17:
        if chapter == 2 or (chapter == 3 and not flag_6286_bit4):
            return 0x17
        return 0x12
    return (high << 8) | low


PALETTE_BANK = 0x0E
PALETTE_OVERRIDE_MAPS = 0xBB53
PALETTE_OVERRIDE_VALUES = 0xBB67
PALETTE_OVERRIDE_SUBMAPS = 0xBB75
PALETTE_NUMBERS = 0xBB88
PALETTE_SET_INDICES = 0xBC0A
PALETTE_COLOR_SETS = 0xBCE2
BACKDROP = 0x0F


def palette_number(rom, map_number, submap, tileset, night=False, lighthouse_cleared=False):
    """Map palette number ($0E:$BAF7-$BB52)."""
    value, x, period = tileset, 0, 1 if night else 0
    forced = None
    while True:
        m = rom.byte(PALETTE_BANK, PALETTE_OVERRIDE_MAPS + x)
        if m & 0x80:
            break
        if m == map_number or (m | 0x80) == map_number:
            s = rom.byte(PALETTE_BANK, PALETTE_OVERRIDE_SUBMAPS + x)
            if s & 0x80 or s == submap:
                break
        x += 1
    if not (rom.byte(PALETTE_BANK, PALETTE_OVERRIDE_MAPS + x) & 0x80):
        if x == 0x0E:
            if lighthouse_cleared:
                value = 0x36
        elif x < 0x0E:
            value = rom.byte(PALETTE_BANK, PALETTE_OVERRIDE_VALUES + x)
        elif x < 0x11:
            forced = 1
        else:
            forced = 0
    if forced is not None:
        period = forced
    return rom.byte(PALETTE_BANK, PALETTE_NUMBERS + 2 * value + period)


def bg_palette(rom, number):
    """16 NES colors: backdrop $0F plus four three-color sets ($0E:$802D, tables $BC0A/$BCE2)."""
    colors = []
    for k in range(4):
        color_set = rom.byte(PALETTE_BANK, PALETTE_SET_INDICES + 4 * number + k)
        colors.append([BACKDROP] + list(rom.bytes(PALETTE_BANK, PALETTE_COLOR_SETS + 3 * color_set, 3)))
    return colors


def metatile_pixels(rom, definition_index, cache):
    """16x16 pixel values 0-3 for a definition (quadrants TL, TR, BL, BR)."""
    if definition_index in cache:
        return cache[definition_index]
    from .nes import decode_tile_2bpp
    pixels = [0] * 256
    for quadrant, (bank, address) in enumerate(tile_sources(rom, definition_index)):
        data = rom.bytes(bank, address, 16)
        tile = decode_tile_2bpp(data)
        ox, oy = (quadrant & 1) * 8, (quadrant >> 1) * 8
        for y in range(8):
            for x in range(8):
                pixels[(oy + y) * 16 + ox + x] = tile[y * 8 + x]
    cache[definition_index] = pixels
    return pixels


def render_cells(rom, cells, width, height, entries, roofs="outside", chapter=5, cache=None):
    """Render a smoothed map grid to 16-color indexed pixels (palette index = 4 * attribute + value).

    roofs: 'outside' draws roofed cells as slot $20 (the view from outside, $D4F3 with $46 = 0);
           'inside' draws every cell's own tile (all roofs lifted)."""
    cache = {} if cache is None else cache
    image = [0] * (width * 16 * height * 16)
    stride = width * 16
    for y in range(height):
        for x in range(width):
            value = cells[y * width + x]
            slot = value & 0x1F
            if roofs == "outside" and value & 0xE0:
                slot = 0x20
            entry = entries[slot]
            index = slot_definition_index(entry, chapter)
            if index is None:
                continue
            attribute = (entry[0] >> 3) & 3
            pixels = metatile_pixels(rom, index, cache)
            base = (y * 16) * stride + x * 16
            for row in range(16):
                start = base + row * stride
                image[start:start + 16] = [attribute * 4 + p for p in pixels[row * 16:row * 16 + 16]]
    return image


WORLD_BANK = 0x0B
WORLDS = [
    # name, row-record table, row count (bank $0B directory entries $00, $01, $03)
    ("main", 0xA590, 256),
    ("gottside", 0xAB65, 64),
    ("underworld", 0xAE89, 54),
]


def decode_world_row(rom, pointer, byte_count):
    """One run-length row ($1F:$D333): tile = byte >> 5, run = (byte & $1F) + 1; bytes $E0-$E7 are runs of
    tile 7 with run = low bits + 1, bytes $E8-$FF are single tiles $08-$1F. The row record's fourth byte
    gives the row's byte count."""
    row = []
    for address in range(pointer, pointer + byte_count):
        value = rom.byte(WORLD_BANK, address)
        if value & 0xE0 == 0xE0:
            low = value & 0x1F
            if low < 8:
                row.extend([7] * (low + 1))
            else:
                row.append(low)
        else:
            row.extend([value >> 5] * ((value & 0x1F) + 1))
    return row


def decode_world(rom, table, rows):
    records, grid = [], []
    for y in range(rows):
        base = table + 4 * y
        record = (rom.word(WORLD_BANK, base), rom.byte(WORLD_BANK, base + 2), rom.byte(WORLD_BANK, base + 3))
        records.append(record)
        grid.append(decode_world_row(rom, record[0], record[2]))
    widths = set(len(r) for r in grid)
    if len(widths) != 1:
        raise ValueError("world rows have unequal widths %s" % sorted(widths))
    return {"records": records, "width": widths.pop(), "height": rows, "rows": grid}
