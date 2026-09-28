"""Render a captured PPU state (VRAM, palette RAM, OAM) to 256x240 pixels of NES color indices."""
from . import nes


def palette_ram(vram):
    colors = list(vram[0x3F00:0x3F20])
    for mirror in (0x10, 0x14, 0x18, 0x1C):
        colors[mirror] = colors[mirror - 0x10]
    return colors


def line_scrolls(bus, top=None, raster=None):
    """Per-scanline (x scroll, nametable-select bits, y scroll) from the frame-top latch and mid-frame writes."""
    if top is None:
        top = (bus.scroll[0], bus.scroll[1], bus.ppuctrl)
    x, y, ctrl = top
    events = sorted(raster or [], key=lambda e: e[0])
    lines = []
    index = 0
    for line in range(240):
        while index < len(events) and events[index][0] <= line:
            _, kind, value = events[index]
            if kind == "x":
                x = value
            else:
                ctrl = (ctrl & ~0x01) | (value & 0x01)
            index += 1
        lines.append((x, ctrl & 3, y))
    return lines


def render_screen(bus, show_sprites=True, show_background=True, top=None, raster=None):
    """Returns a flat list of 256*240 NES color indices; mid-frame horizontal scroll splits are honoured."""
    vram, ctrl = bus.vram, bus.ppuctrl
    colors = palette_ram(vram)
    backdrop = colors[0] & 0x3F
    pixels = [backdrop] * (256 * 240)
    opaque = [False] * (256 * 240)
    bg_table = 0x1000 if ctrl & 0x10 else 0x0000
    sprite_table = 0x1000 if ctrl & 0x08 else 0x0000
    scrolls = line_scrolls(bus, top, raster)
    tile_cache = {}

    def tile(address):
        if address not in tile_cache:
            tile_cache[address] = nes.decode_tile_2bpp(vram, address)
        return tile_cache[address]

    if show_background:
        for sy in range(240):
            sx_scroll, select, sy_scroll = scrolls[sy]
            base_x = (select & 1) * 256 + sx_scroll
            base_y = ((select >> 1) & 1) * 240 + sy_scroll
            wy = (base_y + sy) % 480
            table_y, ty = divmod(wy, 240)
            for sx in range(256):
                wx = (base_x + sx) % 512
                table_x, tx = divmod(wx, 256)
                table = 0x2000 + 0x400 * (table_x + 2 * table_y)
                index = bus._vram_index(table + (ty >> 3) * 32 + (tx >> 3))
                number = vram[index]
                attr = vram[bus._vram_index(table + 0x3C0 + (ty >> 5) * 8 + (tx >> 5))]
                shift = ((ty >> 4) & 1) * 4 + ((tx >> 4) & 1) * 2
                palette = (attr >> shift) & 3
                value = tile(bg_table + number * 16)[(ty & 7) * 8 + (tx & 7)]
                if value:
                    pixels[sy * 256 + sx] = colors[palette * 4 + value] & 0x3F
                    opaque[sy * 256 + sx] = True
    if show_sprites:
        tall = bool(ctrl & 0x20)
        for number in range(63, -1, -1):
            y, index, attr, x = bus.oam[4 * number:4 * number + 4]
            if y >= 0xEF:
                continue
            height = 16 if tall else 8
            for row in range(height):
                line = y + 1 + row
                if line >= 240:
                    break
                source_row = height - 1 - row if attr & 0x80 else row
                if tall:
                    table = 0x1000 if index & 1 else 0
                    address = table + (index & 0xFE) * 16 + (16 if source_row >= 8 else 0)
                else:
                    address = sprite_table + index * 16
                data = tile(address)
                for column in range(8):
                    px = x + column
                    if px >= 256:
                        break
                    source_column = 7 - column if attr & 0x40 else column
                    value = data[(source_row & 7) * 8 + source_column]
                    if not value:
                        continue
                    if attr & 0x20 and opaque[line * 256 + px]:
                        continue
                    pixels[line * 256 + px] = colors[0x10 + (attr & 3) * 4 + value] & 0x3F
    return pixels


def to_rgb(pixels):
    return [nes.rgb(value) + (255,) for value in pixels]
