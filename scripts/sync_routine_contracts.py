from __future__ import annotations

import argparse
import csv
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
CONTRACT_PATH = ROOT / "config" / "routine-contracts.tsv"
INTERFACE_PATH = ROOT / "analysis" / "routine-interfaces.tsv"
LABEL_PATH = ROOT / "config" / "labels.tsv"
GENERATED_EVIDENCE_PREFIX = "Static interface analysis at "
CONTRACT_FIELDS = [
    "bank",
    "address",
    "name",
    "calling",
    "inputs",
    "outputs",
    "clobbers",
    "effects",
    "evidence",
]


def read_tsv(path: Path, fieldnames: list[str] | None = None) -> list[dict[str, str]]:
    with path.open(encoding="utf-8", newline="") as source:
        if fieldnames is None:
            return list(csv.DictReader(source, delimiter="\t"))
        lines = (line for line in source if not line.startswith("#"))
        return list(csv.DictReader(lines, delimiter="\t", fieldnames=fieldnames))


def index_unique(
    rows: list[dict[str, str]], source_name: str
) -> dict[tuple[str, str], dict[str, str]]:
    indexed: dict[tuple[str, str], dict[str, str]] = {}
    for row in rows:
        key = (row["bank"].upper(), row["address"].upper())
        if key in indexed:
            raise ValueError(f"duplicate {source_name} row at {key[0]}:{key[1]}")
        indexed[key] = row
    return indexed


def summarize_calling_convention(entry_evidence: str) -> str:
    entry_kinds: list[str] = []
    if "CPU vector:" in entry_evidence:
        entry_kinds.append("CPU-vector entry")
    if "Pointer " in entry_evidence:
        entry_kinds.append("pointer-dispatched entry")
    if "Direct call from " in entry_evidence:
        entry_kinds.append("JSR entry")
    if "Tail jump from " in entry_evidence:
        entry_kinds.append("tail-jump entry")
    if "Direct ROM analysis:" in entry_evidence:
        entry_kinds.append("reviewed static-analysis entry")
    if not entry_kinds:
        entry_kinds.append("verified routine entry")
    return "; ".join(entry_kinds) + "; exits according to decoded control flow"


def format_registers(registers: str) -> str:
    return ",".join("flags" if register == "P" else register for register in registers.split(","))


def derive_contract(
    interface: dict[str, str], label: dict[str, str]
) -> dict[str, str]:
    location = f"${interface['Bank'].upper()}:${interface['Address'].upper()}"
    register_inputs = interface["RegisterInputs"]
    register_outputs = interface["RegisterOutputs"]
    memory_writes = interface["DirectMemoryWrites"]
    calls = interface["Calls"]

    inputs = (
        f"Conservative decoded-body register reads: {format_registers(register_inputs)}"
        if register_inputs
        else "No register reads identified by static interface analysis"
    )
    clobbers = (
        f"{format_registers(register_outputs)} (conservative static analysis)"
        if register_outputs
        else "No register or flag writes identified by static interface analysis"
    )
    effects: list[str] = []
    if memory_writes:
        effects.append(f"Direct memory writes: {memory_writes}")
    if calls:
        effects.append(f"Direct calls: {calls}")
    if not effects:
        effects.append("No direct memory writes or calls identified by static interface analysis")

    return {
        "bank": interface["Bank"].upper(),
        "address": interface["Address"].upper(),
        "name": interface["Name"],
        "calling": summarize_calling_convention(interface["CallingConvention"]),
        "inputs": inputs,
        "outputs": label["note"],
        "clobbers": clobbers,
        "effects": "; ".join(effects),
        "evidence": (
            f"{GENERATED_EVIDENCE_PREFIX}{location}: {interface['CallingConvention']}; "
            "semantic behavior comes from the curated label note reviewed in the "
            "2026-09-28/29 all-body naming audits"
        ),
    }


def build_expected_contracts() -> tuple[list[dict[str, str]], int, int]:
    interfaces = read_tsv(INTERFACE_PATH)
    labels = read_tsv(
        LABEL_PATH,
        ["bank", "address", "label", "kind", "note"],
    )
    existing_contracts = read_tsv(CONTRACT_PATH, CONTRACT_FIELDS)
    interface_by_location = index_unique(
        [
            {
                **row,
                "bank": row["Bank"],
                "address": row["Address"],
            }
            for row in interfaces
        ],
        "routine interface",
    )
    label_by_location = index_unique(labels, "label")
    contract_by_location = index_unique(existing_contracts, "routine contract")

    expected: list[dict[str, str]] = []
    hand_authored_count = 0
    for location, interface in sorted(
        interface_by_location.items(),
        key=lambda item: (int(item[0][0], 16), int(item[0][1], 16)),
    ):
        label = label_by_location.get(location)
        if label is None:
            raise ValueError(f"routine interface lacks a curated label at {location[0]}:{location[1]}")
        if label["label"] != interface["Name"]:
            raise ValueError(
                f"routine interface label mismatch at {location[0]}:{location[1]}: "
                f"{interface['Name']} != {label['label']}"
            )
        if not label["note"].strip():
            raise ValueError(f"routine interface lacks a semantic note at {location[0]}:{location[1]}")

        existing = contract_by_location.get(location)
        if (
            existing is not None
            and existing["name"] == interface["Name"]
            and not existing["evidence"].startswith(GENERATED_EVIDENCE_PREFIX)
        ):
            expected.append(existing)
            hand_authored_count += 1
        else:
            expected.append(derive_contract(interface, label))

    stale_count = len(set(contract_by_location) - set(interface_by_location))
    return expected, hand_authored_count, stale_count


def write_contracts(contracts: list[dict[str, str]]) -> None:
    with CONTRACT_PATH.open("w", encoding="utf-8", newline="") as destination:
        destination.write(
            "# Bank<TAB>Address<TAB>Name<TAB>CallingConvention<TAB>Inputs<TAB>Outputs"
            "<TAB>Clobbers<TAB>SideEffects<TAB>Evidence\n"
        )
        writer = csv.DictWriter(
            destination,
            fieldnames=CONTRACT_FIELDS,
            delimiter="\t",
            lineterminator="\n",
        )
        writer.writerows(contracts)


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Synchronize complete routine contracts with the verified interface inventory."
    )
    parser.add_argument(
        "--write",
        action="store_true",
        help="rewrite config/routine-contracts.tsv; otherwise only check synchronization",
    )
    args = parser.parse_args()

    expected, hand_authored_count, stale_count = build_expected_contracts()
    if args.write:
        write_contracts(expected)
        print(
            f"wrote {len(expected)} routine contracts: {hand_authored_count} hand-authored and "
            f"{len(expected) - hand_authored_count} evidence-derived; removed {stale_count} contract-only rows"
        )
        return 0

    current = read_tsv(CONTRACT_PATH, CONTRACT_FIELDS)
    if current != expected:
        raise ValueError(
            f"routine contracts are not synchronized: found {len(current)}, expected {len(expected)}"
        )
    print(
        f"routine contracts synchronized: {len(expected)} total, "
        f"{hand_authored_count} hand-authored and {len(expected) - hand_authored_count} evidence-derived"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())