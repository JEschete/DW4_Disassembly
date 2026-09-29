from __future__ import annotations

import csv
import re
import sys
from collections import Counter
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]


def read_tsv(path: Path, fieldnames: list[str] | None = None) -> list[dict[str, str]]:
    with path.open(encoding="utf-8", newline="") as source:
        if fieldnames is None:
            return list(csv.DictReader(source, delimiter="\t"))
        lines = (line for line in source if not line.startswith("#"))
        return list(csv.DictReader(lines, delimiter="\t", fieldnames=fieldnames))


labels = read_tsv(
    ROOT / "config" / "labels.tsv",
    ["bank", "address", "label", "kind", "note"],
)
ledger = read_tsv(ROOT / "analysis" / "audits" / "audit6-ledger.tsv")
contracts = read_tsv(
    ROOT / "config" / "routine-contracts.tsv",
    ["bank", "address", "name", "calling", "inputs", "outputs", "clobbers", "effects", "evidence"],
)

errors: list[str] = []
severity_counts = Counter(row["impact"] for row in ledger)
if len(ledger) != 126 or severity_counts != {"High": 37, "Medium": 46, "Low": 43}:
    errors.append(f"ledger totals changed: {len(ledger)} rows, {dict(severity_counts)}")

by_location: dict[tuple[str, str], dict[str, str]] = {}
by_name: dict[str, tuple[str, str]] = {}
for row in labels:
    location = (row["bank"], row["address"])
    if location in by_location:
        errors.append(f"duplicate label address {row['bank']}:{row['address']}")
    by_location[location] = row
    if row["label"] in by_name:
        first = by_name[row["label"]]
        errors.append(
            f"duplicate global label {row['label']} at {first[0]}:{first[1]} and {row['bank']}:{row['address']}"
        )
    by_name[row["label"]] = location

stale_patterns = [
    r"EffectCallback_",
    r"TextUi",
    r"BattleTurnEngine",
    r"BattlePresentationDirectory",
    r"DormantMapHandler",
    r"FixedTrampoline[0-9A-F]",
    r"MapInteractionId[0-9A-F]",
    r"OpenFieldMenuOnStart",
    r"TryStartRandomEncounter",
    r"AddToEntityYCommand",
    r"InvokeMapEventWithThreeOperands",
    r"Rule02",
    r"Source05",
    r"SeedFF00AndDispatch",
    r"ClearBattleRecordControlByte0C",
]
for row in labels:
    for pattern in stale_patterns:
        if re.search(pattern, row["label"]):
            errors.append(f"stale audit name {row['bank']}:{row['address']} {row['label']}")

legacy_names: set[str] = set()
for row in ledger:
    legacy_names.update(re.findall(r"[A-Za-z][A-Za-z0-9_]{4,}", row["current_name"]))
allowed_legacy_names = {
    "Bank13_BattleActionHandlerPointers",
    "Bank13_SpecialBattleActionHandlerPointers",
    "HideNearbyMapEntityAndRefresh",
}
for name in sorted(legacy_names.intersection(by_name) - allowed_legacy_names):
    bank, address = by_name[name]
    errors.append(f"legacy ledger label remains at {bank}:{address}: {name}")

required = {
    ("10", "8421"): "AddToPartyRecordValueCapped",
    ("11", "8E96"): "PrintActionMessageStep0",
    ("12", "82FC"): "LookupActionStepMessage",
    ("12", "A773"): "RunDayNightSpellTransition",
    ("13", "8038"): "Bank13_BattleAiServices",
    ("13", "B489"): "RollActionEffectAmount",
    ("13", "B66B"): "ResolveTargetResistanceLevel",
    ("14", "8034"): "Bank14_BattleDisplayServices",
    ("15", "9AC9"): "AskYesNo",
    ("15", "BAEF"): "PrintShopMessageForShopType",
    ("17", "817C"): "EnterPokerDoubleOrNothing",
    ("18", "A0BA"): "ApplyRepelEffect",
    ("1B", "AAF9"): "DispatchChapterCompletionCheck",
    ("1C", "B29E"): "AddCharacterToParty",
    ("1D", "B4B1"): "RequireHeroWearingZenithianSet",
    ("1E", "8090"): "RunFieldCommandMenu",
    ("1E", "B5A3"): "GiveFoundItemToParty",
    ("1F", "C000"): "DebugFeatureFlags",
    ("1F", "CEA9"): "TryRandomEncounterAfterStep",
    ("1F", "CF38"): "EnterMapAtWorldTriggerIfAny",
    ("1F", "DE42"): "BranchMapObjectScriptRelativeCommand",
    ("1F", "F104"): "DebugOnly_InitializeChapterSelectionMenu",
}
for location, expected in required.items():
    actual = by_location.get(location, {}).get("label")
    if actual != expected:
        errors.append(f"required mapping {location[0]}:{location[1]} is {actual!r}, expected {expected!r}")

for contract in contracts:
    location = (contract["bank"], contract["address"])
    label = by_location.get(location)
    if label is None:
        errors.append(f"contract lacks label at {location[0]}:{location[1]}")
    elif label["label"] != contract["name"]:
        errors.append(
            f"contract mismatch {location[0]}:{location[1]}: {contract['name']} != {label['label']}"
        )

if errors:
    print("\n".join(errors))
    sys.exit(1)

print(
    "Audit 6 label checks passed: 126 ledger rows; "
    "no stale families, legacy labels, duplicates, or contract mismatches"
)