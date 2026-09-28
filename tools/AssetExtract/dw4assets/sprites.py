"""Field (map) character sprite sets, as loaded by LoadCharacterSpriteGraphics ($08:$85D3).

A sprite set is 24 bytes at $08:$979B + 24*set: eight 3-byte frame groups (ReadTileDefinition $08:$80C4
reads them as $0B, $0A, $0C). For each group:
  byte0            tile number, low 8 bits
  byte1 bits 7-4   horizontal flip of the TL, TR, BL, BR sprite ($08:$82C2-$830E)
  byte1 bit 2      graphics page: 0 = bank $0D base $B304, 1 = bank $0E base $8097 ($08:$8229)
  byte1 bits 1-0   tile number, high 2 bits
  byte2 bits 7-2   increment pattern ($08:$A1D0 + 3*pattern, three signed tile steps); $3F = explicit
                   pointers at $08:$A28D + 8*tile, read from bank $0D ($08:$81C6)
  byte2 bits 1-0   sprite palette (OAM attribute bits 1-0, $08:$8311)
The four 8x8 tiles of a group are TL, TR, BL, BR (OAM layout confirmed from a runtime dump).
"""
from . import nes

BANK = 0x08
SET_TABLE = 0x979B
SET_SIZE = 24
SET_COUNT = (0xA1BB - SET_TABLE) // SET_SIZE  # the map tile increment table follows the last set
PATTERNS = 0xA1D0
EXPLICIT = 0xA28D
PAGES = [(0x0D, 0xB304), (0x0E, 0x8097)]
DEFAULT_PALETTE = 0x8703  # copied to the sprite palette buffer $0609 by CopyDefaultPaletteColors


def signed(value):
    return value - 256 if value & 0x80 else value


def default_palettes(rom):
    """Four sprite palettes as [backdrop, c1, c2, c3]; color 0 is transparent for sprites."""
    colors = []
    address = DEFAULT_PALETTE
    while rom.byte(BANK, address) != 0xFF:
        colors.append(rom.byte(BANK, address))
        address += 1
    if len(colors) != 12:
        raise ValueError("expected 12 default sprite colors, found %d" % len(colors))
    return [[0x0F] + colors[3 * i:3 * i + 3] for i in range(4)]


def read_cpu(rom, bank, address, count):
    """Bytes the CPU reads at address with bank switched in at $8000 (the fixed bank above $C000)."""
    if address < 0x8000 or address + count > 0x10000:
        raise ValueError("tile source $%04X is not in PRG ROM" % address)
    return bytes(rom.byte(rom.bank_for(bank, a), a) for a in range(address, address + count))


def group(rom, set_index, frame):
    address = SET_TABLE + SET_SIZE * set_index + 3 * frame
    b0, b1, b2 = rom.bytes(BANK, address, 3)
    tile = ((b1 & 3) << 8) | b0
    pattern = b2 >> 2
    info = {"frame": frame, "record": "08:%04X" % address, "bytes": [b0, b1, b2], "tile": tile,
            "pattern": pattern, "palette": b2 & 3,
            "flip_h": [bool(b1 & (0x80 >> q)) for q in range(4)]}
    if pattern == 0x3F:
        pointer = EXPLICIT + 8 * tile
        sources = [rom.word(BANK, pointer + 2 * q) for q in range(4)]
        info.update({"page": None, "bank": 0x0D, "explicit_pointers": "08:%04X" % pointer})
    else:
        page = (b1 >> 2) & 1
        bank, base = PAGES[page]
        source = (base + 16 * tile) & 0xFFFF
        sources = [source]
        for step in rom.bytes(BANK, PATTERNS + 3 * pattern, 3):
            source = (source + 16 * signed(step)) & 0xFFFF
            sources.append(source)
        info.update({"page": page, "bank": bank})
    info["sources"] = sources
    return info


def tile_pixels(rom, bank, source):
    """64 pixels of a 2bpp tile, or None for a zero source (the loader skips the upload)."""
    if source == 0:
        return None
    return nes.decode_tile_2bpp(read_cpu(rom, bank, source, 16))


def frame_pixels(rom, info):
    """16x16 pixels as sprite palette indices 4*palette + value (value 0 = transparent)."""
    image = [0] * 256
    for quadrant, source in enumerate(info["sources"]):
        pixels = tile_pixels(rom, info["bank"], source)
        if pixels is None:
            continue
        x, y = (quadrant & 1) * 8, (quadrant >> 1) * 8
        nes.blit_tile(image, 16, pixels, x, y, palette_offset=4 * info["palette"],
                      flip_h=info["flip_h"][quadrant], transparent0=True)
    return image


def sprite_set(rom, set_index):
    return [group(rom, set_index, frame) for frame in range(8)]


DIRECTIONS = ["up", "up", "right", "right", "down", "down", "left", "left"]


def rotate_tile(pixels):
    """One ApplyTileSmoothing pass ($08:$89C9): new(x, y) = old(y, 7 - x), a clockwise quarter turn."""
    return [pixels[(7 - x) * 8 + y] for y in range(8) for x in range(8)]


def rotated_frames(rom, set_index):
    """Sprite id | $80 ($7A set): group 4 is loaded eight times, turned ($74 >> 1) quarter turns.

    Sources rotate TL<-BL, TR<-TL, BL<-BR, BR<-TR ($08:$8981); flip nibble bits permute 5,7,4,6 -> 7,6,5,4
    per turn and are then masked to V (odd turns) or H (even turns) flips ($08:$82D4-$830E)."""
    base = group(rom, set_index, 4)
    frames = []
    for step in range(8):
        turns = step >> 1
        sources = list(base["sources"])
        flips = base["bytes"][1] & 0xF0
        mask = 0x55
        for _ in range(turns):
            sources = [sources[2], sources[0], sources[3], sources[1]]
            bits = [(flips >> b) & 1 for b in range(8)]
            flips = (bits[5] << 7) | (bits[7] << 6) | (bits[4] << 5) | (bits[6] << 4)
            mask = (mask << 1) & 0xFF
        shifted = flips >> (1 if turns in (1, 3) else 2)
        attributes = [((shifted << (q + 1)) & 0xFF) & mask & 0xC0 for q in range(4)]
        image = [0] * 256
        for quadrant, source in enumerate(sources):
            pixels = tile_pixels(rom, base["bank"], source)
            if pixels is None:
                continue
            for _ in range(turns):
                pixels = rotate_tile(pixels)
            x, y = (quadrant & 1) * 8, (quadrant >> 1) * 8
            nes.blit_tile(image, 16, pixels, x, y, palette_offset=4 * base["palette"],
                          flip_h=bool(attributes[quadrant] & 0x40), flip_v=bool(attributes[quadrant] & 0x80),
                          transparent0=True)
        frames.append({"step": step, "quarter_turns": turns, "sources": sources,
                       "oam_flip_bits": attributes, "pixels": image})
    return base, frames
