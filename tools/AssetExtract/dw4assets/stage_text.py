"""Text stage: dialogue, name tables and the ending staff credits."""
import json
import os

from . import credits, names, text, ui_text

# Name groups of $0B:$AF61 (X register). Groups 8-10 reuse the lists of 0, 4 and 3; labels describe the
# decoded contents. Record counts are the lengths of each list up to the next list start.
NAME_GROUPS = [(0, "spells_and_battle_items", 60), (1, "classes", 16), (2, "genders", 2), (3, "items", 127),
               (4, "monsters", 195), (5, "places", 28), (6, "tactics", 6), (7, "characters", 36)]


def run(rom, out_dir, log):
    root = os.path.join(out_dir, "text")
    os.makedirs(root, exist_ok=True)
    messages = text.decode_dialogue(rom)
    with open(os.path.join(root, "dialogue.json"), "w", encoding="utf-8") as handle:
        json.dump({
            "format": "Huffman dialogue: tree bank $16 $87D8/$8835, group pointers $16:$8951, 32 messages per "
                      "group, symbol $46 ends a message. 'symbols' are the raw game codes; 'text' renders them, "
                      "with unknown control codes shown as <XX>.",
            "messages": messages,
        }, handle, indent=1)
    with open(os.path.join(root, "dialogue.tsv"), "w", encoding="utf-8", newline="") as handle:
        handle.write("id\tgroup\tindex\tbank\tstart_bit\tend_bit\tsymbols\ttext\n")
        for m in messages:
            handle.write("%04X\t%02X\t%02X\t%02X\t%d\t%d\t%s\t%s\n" % (
                m["id"], m["group"], m["index"], m["bank"], m["start_bit"], m["end_bit"],
                " ".join("%02X" % s for s in m["symbols"]), m["text"]))
    log("dialogue: %d messages" % len(messages))
    tables = {}
    for group, label, count in NAME_GROUPS:
        entries = names.decode_group(rom, group, count)
        tables[label] = {"group": group, "list": "0B:%04X" % rom.word(names.BANK, names.GROUP_POINTERS + 2 * group),
                         "names": [{"index": e["index"], "record": e["record"], "text": e["text"]} for e in entries]}
    with open(os.path.join(root, "names.json"), "w", encoding="utf-8") as handle:
        json.dump({
            "format": "Dictionary-compressed name lists decoded by $0B:$AF61 (DecodeIndexedNameToTextScratch): "
                      "length-prefixed records, pair expansions at $0B:$BC63/$BD63, characters via $BC41 and the "
                      "spacing/capitalization table $B034. Index = the value the game passes in A (monster names "
                      "are indexed by battle monster id).",
            "groups": tables,
        }, handle, indent=1)
    with open(os.path.join(root, "names.tsv"), "w", encoding="utf-8", newline="") as handle:
        handle.write("group\tindex\trecord\ttext\n")
        for label, table in tables.items():
            for e in table["names"]:
                handle.write("%s\t%d\t%s\t%s\n" % (label, e["index"], e["record"], e["text"]))
    log("names: %s" % ", ".join("%s %d" % (k, len(v["names"])) for k, v in tables.items()))
    staff = credits.decode(rom)
    with open(os.path.join(root, "credits.json"), "w", encoding="utf-8") as handle:
        json.dump({"format": credits.__doc__.strip(), "source": "0F:%04X-%04X" % (credits.START, credits.END - 1),
                   "context_inferred_codes": ["%02X" % c for c in credits.CONTEXT_INFERRED],
                   "lines": staff}, handle, indent=1)
    with open(os.path.join(root, "credits.txt"), "w", encoding="utf-8", newline="\n") as handle:
        for line in staff:
            handle.write(line["text"] + "\n")
    log("credits: %d lines" % len(staff))
    ui = ui_text.decode(rom)
    with open(os.path.join(root, "ui_strings.json"), "w", encoding="utf-8") as handle:
        json.dump({"format": ui_text.__doc__.strip(),
                   "notes": "{handler XX} marks a dynamic value printed by code (entry XX of the same set)",
                   "entries": ui}, handle, indent=1)
    with open(os.path.join(root, "ui_strings.tsv"), "w", encoding="utf-8", newline="\n") as handle:
        handle.write("set\tindex\tpointer\tkind\ttext\n")
        for entry in ui:
            handle.write("%d\t%02X\t%s\t%s\t%s\n" % (entry["set"], entry["index"], entry["pointer"], entry["kind"],
                                                    entry.get("text", "")))
    log("ui strings: %d strings, %d handlers" % (sum(1 for e in ui if e["kind"] == "string"),
                                                  sum(1 for e in ui if e["kind"] == "handler")))
