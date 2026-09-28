"""Item, spell, monster and other names: bank $0B DecodeIndexedNameToTextScratch ($0B:$AF61).

A = index, X = name group. Group g's records start at the pointer $0B:$B057 + 2g; each record is a length
byte followed by symbols. A symbol below the threshold $BC40 is literal; $22-$A1 expand to the pair at
$BC63 + 2*(s-$22), $A2-$FF to the pair at $BD63 + 2*(s-$A2). AppendDecodedNameSymbol ($0B:$AFED) maps each
literal through $BC41 and runs a spacing/capitalization state machine over table $B034.
"""
from . import text

BANK = 0x0B
GROUP_BYTES = 0xB04C
GROUP_POINTERS = 0xB057
GROUP_COUNT = 11
THRESHOLD = 0xBC40
CHARACTERS = 0xBC41
PAIRS_LOW = 0xBC63
PAIRS_HIGH = 0xBD63
STATE_TABLE = 0xB034


def symbols_of(rom, record_address):
    count = rom.byte(BANK, record_address)
    threshold = rom.byte(BANK, THRESHOLD)
    out = []
    for offset in range(1, count + 1):
        value = rom.byte(BANK, record_address + offset)
        if value < threshold:
            out.append(value)
        else:
            delta = value - threshold
            base = PAIRS_HIGH + 2 * (delta - 0x80) if delta >= 0x80 else PAIRS_LOW + 2 * delta
            out.extend(rom.bytes(BANK, base, 2))
    return out


def compose(rom, symbols):
    """Port of AppendDecodedNameSymbol; returns UI character codes (the $40 terminator excluded)."""
    buffer = [0] * 24
    buffer[0] = 0x08
    position = 0
    for symbol in symbols:
        character = rom.byte(BANK, CHARACTERS + symbol)
        if character & 0x80:
            kind = character - 0x7E
        else:
            kind = 1 if character == 0 else 0
        state_row = kind + buffer[position]
        buffer[position] = character
        entry = rom.byte(BANK, STATE_TABLE + state_row)
        action = entry & 0x07
        if action:
            if action == 1:
                buffer[position] = 0
            elif action >= 3:
                buffer[position] = (character + 0x1A) & 0xFF
            position += 1
        buffer[position] = entry & 0x18
    return buffer[:position]


def group_records(rom, group, count=None, end=None):
    """Record addresses of one group, walking length prefixes until count or end."""
    address = rom.word(BANK, GROUP_POINTERS + 2 * group)
    records = []
    while (count is None or len(records) < count) and (end is None or address < end):
        records.append(address)
        address += rom.byte(BANK, address) + 1
    return records


def decode_group(rom, group, count):
    names = []
    for index, address in enumerate(group_records(rom, group, count=count)):
        codes = compose(rom, symbols_of(rom, address))
        names.append({"index": index, "record": "0B:%04X" % address, "codes": codes,
                      "text": text.render(codes)})
    return names
