"""Map entity (NPC/object) records, read the way MapEntitySystem ($1C:$98D8-$9A73) reads them.

Lists: bank $05 has one pointer per map at $8000 + 2*map; each submap's list follows the previous one and
ends with a zero header byte. Bank $1C has 56 six-byte override records at $9D10 whose bytes 4-5 point
at replacement lists.

Record header (byte 0): bit 4 = present by day, bit 3 = present by night (night when SaveTimeOfDay
>= $78, $1C:$9BD9). A record present both ways carries extra night bytes: sprite byte at 7 unless bit 0,
then one byte unless bit 1, then two bytes unless bit 2; otherwise night reuses bytes 3/4/5 ($1C:$990A).
Each present entity is followed by a length-prefixed script block (day block first).

Sprite id ($1C:$99BD-$99DB): (sprite byte & $FC) >> 2, plus $40 when bit 7 of byte 0 (sprite byte 3) or
byte 1 (sprite byte 7) is set, plus $0F. Byte 1 bit 6 (day) / bit 5 (night) selects the rotated variant
(id | $80, $1C:$9967/$998F). Ids map to sprite sets through $08:$859B (see sprite_set_for_id).
"""
from . import maps

LIST_BANK = 0x05
LIST_POINTERS = 0x8000
OVERRIDE_BANK = 0x1C
OVERRIDE_RECORDS = 0x9D10
OVERRIDE_COUNT = 56


def record_size(flags):
    size = 7
    if flags & 0x10 and flags & 0x08:
        if not flags & 0x01:
            size += 1
        if not flags & 0x02:
            size += 1
        if not flags & 0x04:
            size += 2
    return size


def sprite_set_for_id(sprite_id):
    """$08:$859B: ids $53+ drop by $0B, $48-$4F wrap to 0-7; id 0 is the hero (set 8 for a female hero)."""
    value = sprite_id & 0x7F
    if value >= 0x53:
        return value - 0x0B
    if 0x48 <= value < 0x50:
        return value - 0x48
    return value


def entity_sprites(record):
    flags = record[0]
    found = []
    if flags & 0x10:
        found.append(("day", 3, 0, 0x40))
    if flags & 0x08:
        byte_index = 7 if (flags & 0x10) and not (flags & 0x01) else 3
        found.append(("night", byte_index, 0 if byte_index == 3 else 1, 0x20))
    result = []
    for period, sprite_byte, high_byte, rotate_bit in found:
        sprite_id = ((record[sprite_byte] & 0xFC) >> 2) + (0x40 if record[high_byte] & 0x80 else 0) + 0x0F
        result.append({"period": period, "sprite_id": sprite_id, "rotated": bool(record[1] & rotate_bit),
                       "sprite_set": sprite_set_for_id(sprite_id)})
    return result


def walk_list(rom, bank, address, origin, out):
    while True:
        flags = rom.byte(bank, address)
        if flags == 0:
            return address + 1
        size = record_size(flags)
        record = rom.bytes(bank, address, size)
        out.append({"origin": origin, "record": "%02X:%04X" % (bank, address), "bytes": list(record),
                    "sprites": entity_sprites(record)})
        address += size
        for bit in (0x10, 0x08):
            if flags & bit:
                address += rom.byte(bank, address) + 1


def all_entities(rom):
    out = []
    for number in range(maps.MAP_COUNT):
        address = rom.word(LIST_BANK, LIST_POINTERS + 2 * number)
        for submap in range(len(maps.submap_records(rom, number))):
            address = walk_list(rom, LIST_BANK, address, {"map": number, "submap": submap}, out)
    for index in range(OVERRIDE_COUNT):
        record = OVERRIDE_RECORDS + 6 * index
        walk_list(rom, OVERRIDE_BANK, rom.word(OVERRIDE_BANK, record + 4),
                  {"override": index, "override_record": "1C:%04X" % record}, out)
    return out
