"""NES color and tile helpers."""

# FCEUX 2.6.6 default palette (palettes/FCEUX.pal), NES color index -> RGB.
FCEUX_PALETTE = [
    0x747474, 0x24188C, 0x0000A8, 0x44009C, 0x8C0074, 0xA80010, 0xA40000, 0x7C0800,
    0x402C00, 0x004400, 0x005000, 0x003C14, 0x183C5C, 0x000000, 0x000000, 0x000000,
    0xBCBCBC, 0x0070EC, 0x2038EC, 0x8000F0, 0xBC00BC, 0xE40058, 0xD82800, 0xC84C0C,
    0x887000, 0x009400, 0x00A800, 0x009038, 0x008088, 0x000000, 0x000000, 0x000000,
    0xFCFCFC, 0x3CBCFC, 0x5C94FC, 0xCC88FC, 0xF478FC, 0xFC74B4, 0xFC7460, 0xFC9838,
    0xF0BC3C, 0x80D010, 0x4CDC48, 0x58F898, 0x00E8D8, 0x787878, 0x000000, 0x000000,
    0xFCFCFC, 0xA8E4FC, 0xC4D4FC, 0xD4C8FC, 0xFCC4FC, 0xFCC4D8, 0xFCBCB0, 0xFCD8A8,
    0xFCE4A0, 0xE0FCA0, 0xA8F0BC, 0xB0FCCC, 0x9CFCF0, 0xC4C4C4, 0x000000, 0x000000,
]

# Neutral grayscale used for tile pages whose in-game palette depends on context.
GRAY4 = [(0, 0, 0), (0x55, 0x55, 0x55), (0xAA, 0xAA, 0xAA), (0xFF, 0xFF, 0xFF)]


def rgb(nes_color):
    value = FCEUX_PALETTE[nes_color & 0x3F]
    return ((value >> 16) & 0xFF, (value >> 8) & 0xFF, value & 0xFF)


def decode_tile_2bpp(data, offset=0):
    """Return 64 pixel values (0-3) for one 16-byte NES tile."""
    pixels = []
    for row in range(8):
        low = data[offset + row]
        high = data[offset + row + 8]
        for bit in range(7, -1, -1):
            pixels.append(((low >> bit) & 1) | (((high >> bit) & 1) << 1))
    return pixels


def decode_tile_1bpp(data, offset=0):
    pixels = []
    for row in range(8):
        value = data[offset + row]
        for bit in range(7, -1, -1):
            pixels.append((value >> bit) & 1)
    return pixels


def tile_sheet(tiles, columns=16):
    """Arrange 8x8 tiles (lists of 64 values) into a sheet; returns (width, height, pixels)."""
    count = len(tiles)
    rows = max(1, (count + columns - 1) // columns)
    width, height = columns * 8, rows * 8
    pixels = [0] * (width * height)
    for index, tile in enumerate(tiles):
        tx, ty = (index % columns) * 8, (index // columns) * 8
        for y in range(8):
            base = (ty + y) * width + tx
            pixels[base:base + 8] = tile[y * 8:y * 8 + 8]
    return width, height, pixels


def blit_tile(canvas, canvas_width, tile, x, y, palette_offset=0, flip_h=False, flip_v=False, transparent0=False):
    for row in range(8):
        source_row = 7 - row if flip_v else row
        for column in range(8):
            source_column = 7 - column if flip_h else column
            value = tile[source_row * 8 + source_column]
            if transparent0 and value == 0:
                continue
            canvas[(y + row) * canvas_width + x + column] = palette_offset + value
