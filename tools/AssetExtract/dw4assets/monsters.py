"""Battle monster graphics, decoded the way the bank $14 battle engine builds them.

Descriptor ($14:$B3B1 + 5*id, Bank14_LoadMonsterGraphicsDescriptor $14:$9FA9): chunk count, stream
pointer, palette record pointer. The stream bank comes from $14:$9F26: ids $14/$2E/$3F/$B2/$C0 use bank
$14, $B1 uses bank $10, others test the MSB-first bitmap at $14:$B398 (clear = $06, set = $07).

Each chunk ($14:$9712 and $14:$98F5) is a list of placement entries followed by one 2bpp tile:
  flag byte F: bit 7 = last entry, bit 6 = background tile (else sprite), bits 5-4 = palette,
  bits 2-1 = BG flip variant / sprite V,H flip, and on the last entry bit 3 = masked tile, bit 0 = fill.
  BG entry:     F, P      P low nibble = tile column, high nibble = tile row
  sprite entry: F, X, Y   pixel offsets; OAM X = X + 8*column origin, OAM Y = Y + $4F
Tile data: 16 bytes; when the last flag has bit 3, an optional fill byte (bit 0) and a 16-bit MSB-first
mask select which bytes are stored (others take the fill byte, default 0). BG variants 0-3 are the tile,
its horizontal mirror, vertical mirror and both ($14:$975A-$9780).

Palette record ($14:$9557/$95B1): byte (bg_count << 4 | sprite_count), then sprite palettes, then BG
palettes, three NES colors each; entry palette numbers index these lists.
"""
from . import nes

BANK = 0x14
DESCRIPTORS = 0xB3B1
DESCRIPTOR_COUNT = 194
BANK_BITMAP = 0xB398
ID_MAP = 0xB2D5
SPECIAL_BANK14 = (0x14, 0x2E, 0x3F, 0xB2, 0xC0)
SPECIAL_BANK10 = 0xB1
BG_TOP = 0x50           # BG rows start at screen line $50; sprite Y bytes add $4F (OAM Y is line - 1)


def graphics_bank(rom, gid):
    if gid in SPECIAL_BANK14:
        return 0x14
    if gid == SPECIAL_BANK10:
        return 0x10
    bits = rom.byte(BANK, BANK_BITMAP + (gid >> 3))
    return 0x07 if (bits << (gid & 7)) & 0x80 else 0x06


def descriptor(rom, gid):
    raw = rom.bytes(BANK, DESCRIPTORS + 5 * gid, 5)
    return {"chunks": raw[0], "stream": raw[1] | raw[2] << 8, "palette_record": raw[3] | raw[4] << 8,
            "bank": graphics_bank(rom, gid), "bytes": list(raw)}


class Stream:
    def __init__(self, rom, bank, address):
        self.rom, self.bank, self.address = rom, bank, address
        self.start = address

    def read(self):
        if not 0x8000 <= self.address < 0xC000:
            raise ValueError("monster stream left the bank window at $%04X" % self.address)
        value = self.rom.byte(self.bank, self.address)
        self.address += 1
        return value


def bitreverse(value):
    return int("{:08b}".format(value)[::-1], 2)


def tile_variants(tile):
    """Normal, H-mirrored, V-mirrored, HV-mirrored 16-byte tiles."""
    mirrored = bytes(bitreverse(b) for b in tile)
    def vflip(data):
        return data[7::-1] + data[15:7:-1]
    return [bytes(tile), mirrored, vflip(bytes(tile)), vflip(mirrored)]


SHORT_ENTRY_ID = 0xAE        # chunks read with one-byte entries once fewer than $6A remain ($14:$96D5)
SHORT_ENTRY_BELOW = 0x6A
DRAW_LIMIT = {0xAE: 0x36}    # $14:$984B draws only $36 chunks when the first group is monster $AE
NO_SPRITE_IDS = (0x0B, 0x4B)  # $14:$92F4 zeroes the sprite count; the draw stops at the first sprite entry


def signed(value):
    return value - 256 if value & 0x80 else value


def decode_chunks(rom, gid):
    """List of chunks: {'entries': [...], 'tile': 16 bytes}. Entries are 2 bytes (BG) or 3 (sprite)."""
    info = descriptor(rom, gid)
    stream = Stream(rom, info["bank"], info["stream"])
    chunks = []
    remaining = info["chunks"]
    while remaining:
        short = gid == SHORT_ENTRY_ID and remaining < SHORT_ENTRY_BELOW
        start = stream.address
        entries = []
        while True:
            flag = stream.read()
            if short:
                entries.append({"flag": flag, "kind": "bg" if flag & 0x40 else "sprite", "short": True,
                                "variant": (flag >> 1) & 3, "palette": (flag >> 4) & 3})
            elif flag & 0x40:
                position = stream.read()
                entries.append({"flag": flag, "kind": "bg", "column": position & 0x0F, "row": position >> 4,
                                "variant": (flag >> 1) & 3, "palette": (flag >> 4) & 3})
            else:
                x, y = stream.read(), stream.read()
                entries.append({"flag": flag, "kind": "sprite", "x": signed(x), "y": signed(y),
                                "palette": (flag >> 4) & 3, "flip_h": bool(flag & 0x02),
                                "flip_v": bool(flag & 0x04)})
            if flag & 0x80:
                break
        fill, mask = 0, 0xFFFF
        if flag & 0x08:
            if flag & 0x01:
                fill = stream.read()
            low = stream.read()
            high = stream.read()
            mask = high << 8 | low
        tile = bytearray()
        for index in range(16):
            tile.append(stream.read() if (mask << index) & 0x8000 else fill)
        chunks.append({"source": "%02X:%04X" % (info["bank"], start), "entries": entries, "tile": bytes(tile)})
        remaining -= 1
    info["end"] = stream.address
    return info, chunks


def palettes(rom, pointer):
    header = rom.byte(BANK, pointer)
    bg_count, sprite_count = header >> 4, header & 0x0F
    colors = [list(rom.bytes(BANK, pointer + 1 + 3 * i, 3)) for i in range(bg_count + sprite_count)]
    return {"sprite": colors[:sprite_count], "bg": colors[sprite_count:], "header": header}


def compose(rom, gid, parity=0):
    """Place the chunks the way the draw pass $14:$9822 does, in one frame whose origin is BG column 0,
    row 0 (screen tile row 10); sprite offsets are pixels in the same frame."""
    info, chunks = decode_chunks(rom, gid)
    pal = palettes(rom, info["palette_record"])
    bg = {}
    sprites = []
    drawn = 0
    stopped = False
    for number, chunk in enumerate(chunks[:DRAW_LIMIT.get(gid, len(chunks))]):
        for entry in chunk["entries"]:
            if entry.get("short"):
                continue
            if entry["kind"] == "bg":
                bg[(entry["column"], entry["row"])] = (number, entry["variant"], entry["palette"])
            elif gid in NO_SPRITE_IDS:
                stopped = True
                break
            else:
                sprites.append((number, entry))
        if stopped:
            break
        drawn += 1
    # the hardware keeps one palette per 16x16 cell; the last tile written to a cell sets it ($14:$99B7)
    cells = {}
    conflicts = 0
    for (column, row), (_, _, palette) in bg.items():
        cell = ((column + parity) >> 1, row >> 1)
        if cell in cells and cells[cell] != palette:
            conflicts += 1
        cells[cell] = palette
    boxes = [(8 * c, 8 * r) for c, r in bg] + [(e["x"], e["y"]) for _, e in sprites]
    if boxes:
        left = min(x for x, _ in boxes)
        top = min(y for _, y in boxes)
        right = max(x for x, _ in boxes) + 8
        bottom = max(y for _, y in boxes) + 8
    else:
        left = top = right = bottom = 0
    return {"info": info, "chunks": chunks, "palettes": pal, "bg": bg, "sprites": sprites,
            "chunks_drawn": drawn, "origin": (-left, -top), "width": right - left, "height": bottom - top,
            "palette_conflicts": conflicts}


def render(rom, gid, backdrop=0x0F):
    """Indexed image: 0 = backdrop, 1-12 BG palettes (1 + 3*p + c - 1), 13-24 sprite palettes."""
    scene = compose(rom, gid)
    width, height = scene["width"], scene["height"]
    ox, oy = scene["origin"]
    image = [0] * (width * height)
    tiles = [tile_variants(chunk["tile"]) for chunk in scene["chunks"]]
    for (column, row), (number, variant, palette) in sorted(scene["bg"].items()):
        pixels = nes.decode_tile_2bpp(tiles[number][variant])
        for y in range(8):
            for x in range(8):
                value = pixels[y * 8 + x]
                image[(oy + 8 * row + y) * width + ox + 8 * column + x] = 0 if value == 0 else 1 + 3 * palette + value - 1
    for number, entry in scene["sprites"]:
        pixels = nes.decode_tile_2bpp(tiles[number][0])
        for y in range(8):
            for x in range(8):
                sx = 7 - x if entry["flip_h"] else x
                sy = 7 - y if entry["flip_v"] else y
                value = pixels[sy * 8 + sx]
                if value:
                    image[(oy + entry["y"] + y) * width + ox + entry["x"] + x] = 13 + 3 * entry["palette"] + value - 1
    colors = [backdrop]
    for group in ("bg", "sprite"):
        lists = scene["palettes"][group]
        for p in range(4):
            colors.extend(lists[p] if p < len(lists) else [backdrop] * 3)
    return scene, width, height, image, colors


def tile_sheet_pixels(chunks, columns=16):
    """All decoded chunk tiles (normal orientation), 2bpp values 0-3."""
    return nes.tile_sheet([nes.decode_tile_2bpp(c["tile"]) for c in chunks], columns)
