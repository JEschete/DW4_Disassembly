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
if len(labels) != 4914:
    errors.append(f"curated label count changed: {len(labels)}, expected 4914")

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
    ("1D", "9C52"): "StartClayDollBattle",
    ("1E", "8090"): "RunFieldCommandMenu",
    ("1E", "B5A3"): "GiveFoundItemToParty",
    ("1F", "C000"): "DebugFeatureFlags",
    ("1F", "CEA9"): "TryRandomEncounterAfterStep",
    ("1F", "CF38"): "EnterMapAtWorldTriggerIfAny",
    ("1F", "DE42"): "BranchMapObjectScriptRelativeCommand",
    ("1F", "F104"): "DebugOnly_InitializeChapterSelectionMenu",
}

sweep7_required = {
    ("10", "865B"): "AddToPartyRecordValueCappedAtCurrentLimit",
    ("10", "996C"): "FindPartyMemberHoldingItem",
    ("12", "A520"): "ClearCharacterRecordBit06",
    ("12", "A525"): "SetCharacterRecordBit07",
    ("12", "A52A"): "ClearCharacterRecordBit05",
    ("16", "B59D"): "SelectWindowCountForBossContext",
    ("16", "B8A0"): "LoadWindowDisplayPairByLeadMonster",
    ("17", "8A73"): "ReloadFullFontTilesAfterCasino",
    ("17", "8A76"): "RebuildMapTileUsageAfterCasino",
    ("17", "8A7C"): "ReloadTilesetGraphicsAfterCasino",
    ("17", "8A81"): "ReloadSpecialMapTileGraphicsAfterCasino",
    ("17", "8A87"): "ReloadMapPaletteAfterCasino",
    ("1C", "A10B"): "ApplySanteemEntityVisibility",
    ("1C", "AAC9"): "ApplyZenithiaSubmap1EntityVisibility",
    ("1D", "96DF"): "InitializeFinalCaveSubmap7State",
    ("1D", "96EE"): "InitializeSanteemSubmap2State",
    ("1D", "96FA"): "InitializeCaveOfBetrayalState",
    ("1D", "9713"): "InitializeKeeleonSubmap1State",
    ("1D", "9724"): "InitializeCascadeCaveState",
    ("1D", "9730"): "InitializeKievsState",
    ("1D", "973E"): "InitializeIronSafeCaveSubmap4State",
    ("1E", "B830"): "ReturnIronSafeAtCarvedMessage",
    ("1E", "8000"): "Bank1E_MapAndFieldServiceDirectory",
    ("1E", "8D5C"): "AnimateCaveOfBetrayalSpecialTile",
    ("1E", "8FA5"): "UpdateMapPartyStateWhenFlag40",
    ("1E", "9E7A"): "FindHeroPartyOrdinalOrFallback",
    ("1E", "B325"): "CompleteDoorInteractionWithCarry",
    ("1E", "B8D5"): "ShowSearchAroundFeetAndApplyExitRules",
}
required.update(sweep7_required)

map_handler_names = {
    ("1C", "A058"): "ApplyFrenorEntityVisibility",
    ("1C", "A0D6"): "ApplyBrancaEndorTunnelEntityVisibility",
    ("1C", "A0E6"): "ApplyLochTowerEntityVisibility",
    ("1C", "A0F7"): "ApplySanteemSubmap2EntityVisibility",
    ("1C", "A10B"): "ApplySanteemEntityVisibility",
    ("1C", "A149"): "ApplySanteemSubmap1EntityVisibility",
    ("1C", "A171"): "ApplyBurlandSubmap1EntityVisibility",
    ("1C", "A1AE"): "ApplyIzmitSubmap2EntityVisibility",
    ("1C", "A1CC"): "ApplyBurlandEntityVisibility",
    ("1C", "A1ED"): "ApplyLakanabaSubmap1EntityVisibility",
    ("1C", "A227"): "ApplySecretPlaygroundSubmap3EntityVisibility",
    ("1C", "A24F"): "ApplyBurlandSubmap3EntityVisibility",
    ("1C", "A266"): "ApplyLochTowerSubmap4EntityVisibility",
    ("1C", "A29A"): "ApplyLakanabaEntityVisibility",
    ("1C", "A326"): "ApplyLakanabaSubmap2EntityVisibility",
    ("1C", "A33D"): "ApplyIzmitEntityVisibility",
    ("1C", "A36E"): "ApplyFrenorSubmap1EntityVisibility",
    ("1C", "A380"): "ApplyEndorSubmap7EntityVisibility",
    ("1C", "A3A8"): "ApplyBirdsongTowerEntityVisibility",
    ("1C", "A3B9"): "ApplyEndorEntityVisibility",
    ("1C", "A40F"): "ApplyMonbarabaSubmap3EntityVisibility",
    ("1C", "A454"): "ApplyKeeleonEntityVisibility",
    ("1C", "A489"): "ApplyBonmalmoEntityVisibility",
    ("1C", "A4A0"): "ApplySphereOfSilenceCaveSubmap3EntityVisibility",
    ("1C", "A4AC"): "ApplyBonmalmoSubmap1EntityVisibility",
    ("1C", "A4E2"): "ApplyEndorSubmap8EntityVisibility",
    ("1C", "A51E"): "ApplyEndorSubmap11EntityVisibility",
    ("1C", "A549"): "ApplyFoxvilleSubmap1EntityVisibility",
    ("1C", "A55B"): "ApplySilverStatuetteCaveEntityVisibility",
    ("1C", "A568"): "ApplySilverStatuetteCaveSubmap4EntityVisibility",
    ("1C", "A57F"): "ApplyEndorSubmap1EntityVisibility",
    ("1C", "A5A0"): "ApplyBrancaEndorTunnelSubmap1EntityVisibility",
    ("1C", "A5B2"): "ApplyDesertInnEntityVisibility",
    ("1C", "A5CF"): "ApplyHometownEntityVisibility",
    ("1C", "A5F6"): "ApplyKonenberSubmap6EntityVisibility",
    ("1C", "A683"): "ApplyHometownSubmap1EntityVisibility",
    ("1C", "A6A9"): "ApplyLighthouseSubmap4EntityVisibility",
    ("1C", "A6B5"): "ApplyBrancaEntityVisibility",
    ("1C", "A6CA"): "ApplyMintosSubmap1EntityVisibility",
    ("1C", "A737"): "ApplyCaveOfBetrayalSubmap2EntityVisibility",
    ("1C", "A77C"): "ApplyCaveOfBetrayalSubmap1EntityVisibility",
    ("1C", "A798"): "ApplyLighthouseSubmap2EntityVisibility",
    ("1C", "A7C5"): "ApplyPadequiaCaveSubmap1EntityVisibility",
    ("1C", "A7D6"): "ApplyHavilleEntityVisibility",
    ("1C", "A7EC"): "ApplyHavilleSubmap1NightEntityVisibility",
    ("1C", "A802"): "ApplyAktemtoEntityVisibility",
    ("1C", "A830"): "ApplyKievsEntityVisibility",
    ("1C", "A850"): "ApplyLighthouseEntityVisibility",
    ("1C", "A86B"): "ApplyKievsSubmap1EntityVisibility",
    ("1C", "A87C"): "ApplyCaveOfBetrayalEntityVisibility",
    ("1C", "A88E"): "ApplyKeeleonSubmap2EntityVisibility",
    ("1C", "A8B5"): "ApplyHouseOfProphecyEntityVisibility",
    ("1C", "A8C7"): "ApplyMonbarabaEntityVisibility",
    ("1C", "A8FE"): "ApplyKeeleonSubmap1EntityVisibility",
    ("1C", "A967"): "ApplyMonbarabaSubmap1EntityVisibility",
    ("1C", "A97A"): "ApplyBurlandSubmap2EntityVisibility",
    ("1C", "A98B"): "ApplyGardenburSubmap1EntityVisibility",
    ("1C", "A9A0"): "ApplyGardenburSubmap3EntityVisibility",
    ("1C", "A9D8"): "ApplyRosavilleEntityVisibility",
    ("1C", "A9FE"): "ApplyRosavilleSubmap3EntityVisibility",
    ("1C", "AA14"): "ApplyAktemtoMineSubmap6EntityVisibility",
    ("1C", "AA41"): "ApplyAktemtoMineSubmap5EntityVisibility",
    ("1C", "AA4D"): "ApplyBakorsHideoutEntityVisibility",
    ("1C", "AA82"): "ApplyDirePalaceSubmap1EntityVisibility",
    ("1C", "AABE"): "ApplyWorldTreeEntityVisibility",
    ("1C", "AAC9"): "ApplyZenithiaSubmap1EntityVisibility",
    ("1C", "AB01"): "ApplyAneauxEntityVisibility",
    ("1C", "AB16"): "ApplyStanciaSubmap6EntityVisibility",
    ("1C", "AB37"): "ApplyRivertonEntityVisibility",
    ("1C", "AB52"): "ApplyAneauxSubmap2EntityVisibility",
    ("1C", "AB63"): "ApplyShrineOfColossusOutsideEntityVisibility",
    ("1C", "ABAC"): "ApplyZenithiaEntityVisibility",
    ("1C", "ABC6"): "ApplyFinalCaveSubmap2EntityVisibility",
    ("1C", "ABDE"): "ApplyHavilleSubmap3EntityVisibility",
}
required.update(map_handler_names)

for row in labels:
    address = int(row["address"], 16)
    if row["bank"] == "10" and 0xB66F <= address <= 0xB8DA and "Tactic" in row["label"]:
        errors.append(f"unsupported tactic name {row['bank']}:{row['address']} {row['label']}")
    if row["bank"] == "1E" and "MapInteraction" in row["label"]:
        errors.append(f"stale search-domain name {row['bank']}:{row['address']} {row['label']}")
    if row["bank"] in {"1D", "1E"} and re.search(r"Trampoline[0-9A-F]", row["label"]):
        errors.append(f"numbered trampoline name {row['bank']}:{row['address']} {row['label']}")
    if row["bank"] == "14" and "BattleTurn" in row["label"]:
        errors.append(f"stale turn-domain name {row['bank']}:{row['address']} {row['label']}")

ram_constants = (ROOT / "src" / "constants" / "ram.inc").read_text(encoding="utf-8")
if "BattleAiScoreH" in ram_constants or "SharedWork75BB           = $75BB" not in ram_constants:
    errors.append("RAM $75BB must use the domain-neutral SharedWork75BB symbol")

special_action_note = by_location.get(("13", "91A9"), {}).get("note", "")
if (
    "Eighteen action IDs" not in special_action_note
    or "seventeen real entries" not in special_action_note
    or "action ID $60" not in special_action_note
):
    errors.append("bank 13 special-action note must distinguish 18 IDs from 17 real handlers")

for location in (("16", "B59D"), ("16", "B8A0")):
    note = by_location.get(location, {}).get("note", "")
    if "Necrosaro" not in note or "Esturk" not in note:
        errors.append(f"boss-ID note missing at {location[0]}:{location[1]}")
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

contract_locations = [(contract["bank"], contract["address"]) for contract in contracts]
if len(contracts) != 4562:
    errors.append(f"semantic contract count changed: {len(contracts)}, expected 4562")
if len(set(contract_locations)) != len(contract_locations):
    errors.append("duplicate semantic contract locations")

if errors:
    print("\n".join(errors))
    sys.exit(1)

print(
    "Label audits passed: 126-row audit 6, 14-item follow-up, 8-regression correction, and final low fix; "
    "4,562/4,562 semantic contracts; no stale families, legacy labels, duplicates, or contract mismatches"
)