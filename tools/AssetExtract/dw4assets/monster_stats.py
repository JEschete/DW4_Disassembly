"""Monster statistics: the 22-byte records at $18:$8046 (record = $8046 + 22 * monster id, $18:$9B94).

Field meanings come from the code that consumes each field:
  EXP      bytes 0-1           record op $1A, summed into $7203-$7205 ($11:$9296) and printed with
                               message $000C/$000D ("gains N Experience Points", $12:$87E7-$882B)
  gold     byte 7 + byte 18 b0-1  record op $1B ($10:$A725 adds bits 0-1 of byte 7+11), summed into
                               $7201-$7202 ($11:$92B4) and printed with message $01C3 ($12:$8857-$8886)
  HP       byte 4 + byte 15 b0-1  record ops $02/$04/$05/$06, clamped to $3FF and stored in combatant field
                               $0A-$0B, the field damage is subtracted from ($10:$A95E-$A9D4)
  MP       byte 3              record op $09, combatant field $0C; compared with an action's cost and
                               reduced by it ($11:$AB4E-$AB64, $11:$ABCF)
  attack   byte 5 + byte 16 b0-1  record op $13, combatant field $01-$02 (ops $12-$15); the attacker's
                               field in the physical damage formula ($11:$9A61)
  defense  byte 6 + byte 17 b0-1  record op $17, combatant field $03-$04 (ops $16-$19); halved and subtracted
                               in the same formula ($11:$99C2-$99CB)
  agility  byte 2              record op $0F, combatant field $00 (ops $0E-$11), the value the turn-order
                               roll randomizes ($11:$BED0-$BEE9)
  drop     byte 8 bits 0-6 = item (127 = none), byte 20 bits 0-2 = chance class ($12:$9216-$9245);
           chance table $12:$9285; class 0 always; class 7 needs a second roll below $10. In chapter 3 the
           drop comes from the random table $12:$928D/$929D instead ($12:$91DD-$9215).
  actions  bytes 9-14 bits 0-6; pattern = (byte 9 bit 7) * 2 + (byte 10 bit 7) selects the weight row at
           $18:$9AA9 + 6 * pattern; pattern 3 keeps duplicate actions separate with weights $18:$9ABB
           ($18:$9A21-$9AA8). Codes $4B-$55 summon monster $14:$8646[code - $4B] ($14:$85E6-$860A).
  resistances  bytes 15-19, three 2-bit fields each in bits 2-3, 4-5, 6-7; slot 4 * (byte - 15) + field
           ($10:$A773 reads slot $82); the slot a spell checks comes from $13:$B736 via $13:$B80B.
Other bits are exported raw with the operation that reads them.
"""
from . import names

BANK = 0x18
RECORDS = 0x8046
RECORD_SIZE = 22
RECORD_COUNT = (0x92AA - 0x8046) // 22
DROP_CHANCES = 0x9285          # bank $12
CHAPTER3_CHANCES = 0x928D      # bank $12, 16 entries
CHAPTER3_ITEMS = 0x929D
WEIGHT_ROWS = 0x9AA9           # bank $18, three six-byte rows
PATTERN3_WEIGHTS = 0x9ABB      # bank $18, six bytes
SUMMONS = 0x8646               # bank $14, eleven monster ids for action codes $4B-$55


def _tail(byte):
    return byte & 3


def record(rom, monster_id):
    return list(rom.bytes(BANK, RECORDS + RECORD_SIZE * monster_id, RECORD_SIZE))


def drop_probability(rom, chance_class):
    """Probability as a fraction of 256 (or 65536 for class 7), following $12:$922C-$9243."""
    if chance_class == 0:
        return {"numerator": 1, "denominator": 1, "text": "always"}
    threshold = rom.byte(0x12, DROP_CHANCES + chance_class)
    if chance_class == 7:
        return {"numerator": threshold * 16, "denominator": 65536,
                "text": "1/%d" % (65536 // (threshold * 16))}
    return {"numerator": threshold, "denominator": 256, "text": "1/%d" % (256 // threshold)}


def action_weights(rom, raw):
    pattern = ((raw[9] >> 7) << 1) | (raw[10] >> 7)
    slots = [raw[9 + i] & 0x7F for i in range(6)]
    if pattern == 3:
        weights = list(rom.bytes(BANK, PATTERN3_WEIGHTS, 6))
        entries = [{"slot": i, "code": code, "weight": weights[i]} for i, code in enumerate(slots)]
    else:
        row = list(rom.bytes(BANK, WEIGHT_ROWS + 6 * pattern, 6))
        merged = {}
        order = []
        for i, code in enumerate(slots):
            if code not in merged:
                merged[code] = 0
                order.append(code)
            merged[code] = min(0xFF, merged[code] + row[i])        # $18:$9A98-$9AA3 saturates at $FF
        entries = [{"code": code, "weight": merged[code],
                    "slots": [i for i, c in enumerate(slots) if c == code]} for code in order]
    return pattern, slots, entries


def decode(rom, monster_id, item_names, monster_names):
    raw = record(rom, monster_id)
    item = raw[8] & 0x7F
    chance_class = raw[20] & 7
    pattern, slots, weighted = action_weights(rom, raw)
    total = sum(e["weight"] for e in weighted) or 1
    for entry in weighted:
        entry["share"] = round(entry["weight"] / total, 4)
        if 0x4B <= entry["code"] <= 0x55:
            summoned = rom.byte(0x14, SUMMONS + entry["code"] - 0x4B)
            entry["summons_monster_id"] = summoned
            if summoned < len(monster_names):
                entry["summons"] = monster_names[summoned]
    resistances = []
    for byte_index in range(15, 20):
        for field in range(1, 4):
            resistances.append({"slot": 4 * (byte_index - 15) + field,
                                "level": (raw[byte_index] >> (2 * field)) & 3})
    return {
        "record": "18:%04X" % (RECORDS + RECORD_SIZE * monster_id),
        "raw_bytes": raw,
        "exp": raw[0] | raw[1] << 8,
        "gold": raw[7] | _tail(raw[18]) << 8,
        "hp": raw[4] | _tail(raw[15]) << 8,
        "mp": raw[3],
        "attack": raw[5] | _tail(raw[16]) << 8,
        "defense": raw[6] | _tail(raw[17]) << 8,
        "agility": raw[2],
        "drop": None if item == 0x7F else {
            "item_id": item, "item": item_names[item] if item < len(item_names) else None,
            "chance_class": chance_class, "chance": drop_probability(rom, chance_class)},
        "actions": {"pattern": pattern, "slot_codes": slots, "weighted": weighted},
        "resistance_slots": resistances,
        "unlabeled_fields": {
            "byte8_bit7": raw[8] >> 7,                                  # record op $1D ($10:$A743)
            "byte11_12_bit7_pair": ((raw[11] >> 7) << 1) | (raw[12] >> 7),  # record op $20
            "byte13_14_bit7_pair": ((raw[13] >> 7) << 1) | (raw[14] >> 7),  # record op $21 ($11:$AB0E)
            "byte19_bits0_1": raw[19] & 3,
            "byte20_bits6_7": raw[20] >> 6,                             # record op $23 ($11:$892C, $11:$8A60)
            "byte20_bits3_5": (raw[20] >> 3) & 7,                       # record op $24 ($11:$A655)
            "byte21_bits6_7": raw[21] >> 6,                             # record op $26 ($12:$8576)
            "byte21_bits3_5": (raw[21] >> 3) & 7,                       # record op $27 ($12:$855C)
            "byte21_bits0_2": raw[21] & 7,                              # record op $28
        },
    }


def chapter3_drop_table(rom, item_names):
    rows = []
    for i in range(16):
        threshold = rom.byte(0x12, CHAPTER3_CHANCES + i)
        item = rom.byte(0x12, CHAPTER3_ITEMS + i)
        rows.append({"entry": i, "item_id": item, "item": item_names[item] if item < len(item_names) else None,
                     "threshold": threshold})
    return rows


def name_lists(rom):
    items = [e["text"].strip() for e in names.decode_group(rom, 3, 127)]
    monsters = [e["text"].strip() for e in names.decode_group(rom, 9, 195)]
    return items, monsters
