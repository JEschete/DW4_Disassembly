"""Menu and window strings: the two command sets of the bank $16 text/UI interpreter ($16:$9830-$98B0).

Directory $16:$A5E3: two pointer-array bases (set 0 $A5E9, set 1 $A6DF) and two doubled-index thresholds
($A5E7/$A5E8). Entry k of a set spans pointer[k] .. pointer[k+1]. When 2k is below the set's threshold the
pointer is a code handler (dynamic text such as names and numbers, reached by JMP ($000A)); otherwise the
bytes are printed: codes below $80 are characters, and a code of $80 or more names entry (code & $7F) of the
current set, which is printed the same way (its own nested references are skipped, $16:$986A-$9871) or,
for a handler, called.
"""
from . import text

BANK = 0x16
DIRECTORY = 0xA5E3


def sets(rom):
    bases = [rom.word(BANK, DIRECTORY), rom.word(BANK, DIRECTORY + 2)]
    thresholds = [rom.byte(BANK, DIRECTORY + 4), rom.byte(BANK, DIRECTORY + 5)]
    result = []
    for number, base in enumerate(bases):
        # the pointer array of set 0 ends where set 1's begins; set 1 ends at the dispatch tables ($A735)
        limit = bases[1] if number == 0 else 0xA735
        pointers = [rom.word(BANK, address) for address in range(base, limit, 2)]
        result.append({"set": number, "pointer_array": "16:%04X" % base, "threshold": thresholds[number],
                       "pointers": pointers})
    return result


def _render(rom, codes, pointers, threshold, depth=0):
    out = []
    for code in codes:
        if code < 0x80:
            out.append(text.symbol_text(code))
            continue
        index = code & 0x7F
        if depth:
            continue                         # nested references inside a referenced entry are skipped
        if 2 * index < threshold:
            out.append("{handler %02X}" % index)
        elif index + 1 < len(pointers):
            start, end = pointers[index], pointers[index + 1]
            out.append(_render(rom, rom.bytes(BANK, start, end - start), pointers, threshold, depth + 1))
        else:
            out.append("{%02X}" % code)
    return "".join(out)


def decode(rom):
    entries = []
    for group in sets(rom):
        pointers, threshold = group["pointers"], group["threshold"]
        for index in range(len(pointers) - 1):
            start, end = pointers[index], pointers[index + 1]
            entry = {"set": group["set"], "index": index, "pointer": "16:%04X" % start}
            if 2 * index < threshold:
                entry.update({"kind": "handler"})
            else:
                codes = list(rom.bytes(BANK, start, end - start))
                entry.update({"kind": "string", "codes": codes, "text": _render(rom, codes, pointers, threshold)})
            entries.append(entry)
    return entries
