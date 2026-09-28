"""Ending staff credits: the byte stream at $0F:$F5B0-$FABD.

$0F:$F58B (LowerFixed_LoadScrollingTextTileStream) copies it to $7800 up to and including the $FF terminator.
The routine that draws it during the ending has not been traced, so the decoding below is by content:
letters are code / 2 (A = $02 ... Z = $34) and $00 is a space, which reproduces the known staff names
exactly; the other symbol codes follow from their context ("CO., LTD", "COPYRIGHT (C) 1992",
"DRAGON QUEST IV"). Codes $F0-$FE end a line; their spacing meaning is kept as the raw value.
"""

START, END = 0xF5B0, 0xFABE
BANK = 0x0F
SYMBOLS = {
    0x00: " ", 0x40: ".", 0x3E: ",", 0x46: "1", 0x48: "9", 0x4A: "0", 0x4C: "2",
    0x36: "(C", 0x38: ")",        # two-tile copyright mark
    0x3A: "I", 0x3C: "V",         # two-tile roman numeral IV
}
CONTEXT_INFERRED = [0x3E, 0x46, 0x48, 0x4A, 0x4C, 0x36, 0x38, 0x3A, 0x3C, 0x40]


def symbol(code):
    if code in SYMBOLS:
        return SYMBOLS[code]
    if code % 2 == 0 and 0x02 <= code <= 0x34:
        return chr(ord("A") + code // 2 - 1)
    return "<%02X>" % code


def decode(rom):
    data = rom.bytes(BANK, START, END - START)
    lines, current, start = [], [], START
    for offset, code in enumerate(data):
        address = START + offset
        if code == 0xFF:
            break
        if code >= 0xF0:
            lines.append({"address": "0F:%04X" % start, "codes": current,
                          "text": "".join(symbol(c) for c in current).rstrip(), "line_end_code": code})
            current, start = [], address + 1
        else:
            current.append(code)
    return lines
