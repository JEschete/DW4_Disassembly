"""Minimal lossless PNG writer (standard library only)."""
import struct
import zlib


def _chunk(kind, payload):
    return struct.pack(">I", len(payload)) + kind + payload + struct.pack(">I", zlib.crc32(kind + payload) & 0xFFFFFFFF)


def write_indexed(path, width, height, pixels, palette_rgb, transparent_index=None):
    """Write an 8-bit palette PNG. pixels is a flat list of palette indices; palette_rgb a list of (r, g, b).

    transparent_index is one index or a collection of indices written with alpha 0."""
    if len(pixels) != width * height:
        raise ValueError("pixel count %d does not match %dx%d" % (len(pixels), width, height))
    raw = bytearray()
    for y in range(height):
        raw.append(0)
        raw.extend(pixels[y * width:(y + 1) * width])
    plte = b"".join(bytes(color) for color in palette_rgb)
    chunks = [_chunk(b"IHDR", struct.pack(">IIBBBBB", width, height, 8, 3, 0, 0, 0)),
              _chunk(b"PLTE", plte)]
    if transparent_index is not None:
        clear = {transparent_index} if isinstance(transparent_index, int) else set(transparent_index)
        alpha = bytes(0 if i in clear else 255 for i in range(len(palette_rgb)))
        chunks.append(_chunk(b"tRNS", alpha))
    chunks.append(_chunk(b"IDAT", zlib.compress(bytes(raw), 9)))
    chunks.append(_chunk(b"IEND", b""))
    with open(path, "wb") as handle:
        handle.write(b"\x89PNG\r\n\x1a\n" + b"".join(chunks))


def write_rgba(path, width, height, pixels):
    """Write a truecolor+alpha PNG. pixels is a flat list of (r, g, b, a)."""
    raw = bytearray()
    for y in range(height):
        raw.append(0)
        for r, g, b, a in pixels[y * width:(y + 1) * width]:
            raw.extend((r, g, b, a))
    chunks = [_chunk(b"IHDR", struct.pack(">IIBBBBB", width, height, 8, 6, 0, 0, 0)),
              _chunk(b"IDAT", zlib.compress(bytes(raw), 9)),
              _chunk(b"IEND", b"")]
    with open(path, "wb") as handle:
        handle.write(b"\x89PNG\r\n\x1a\n" + b"".join(chunks))
