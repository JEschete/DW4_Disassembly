# Project Status

Last verified: 2026-09-27

This document is the authoritative human-readable status snapshot. Generated totals come from `../analysis/`; completion policy is enforced by `../verify-completion.cmd`.

## Current Metrics

- Reassemblable assembly: 100% (verified: build reproduces SHA-256 `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`)
- Detailed semantic classification: 99.93% (523,911 / 524,288)
- Remaining unclassified: 377 bytes in 42 ranges
- Verified instruction bytes: 163,496 (31.18%)
- Explicitly ranged data bytes: 360,937 (68.84%)
- Dual-use code/data overlap: 522 bytes (0.10%)
- Meaningfully named routines: 81/4,315 (1.88%)
- Semantic contracts: 37/4,315 (0.86%)
- Pointer recovery, indirect-jump audit, and analyzer-warning disposition: 100%
- Current analyzer warnings and control-flow conflicts: 0
- Structured asset encoders: 0/5 complete

All-bank entry-point pass: 2,143 pointer entries across declared tables, mixed records, text/UI escape handlers,
and explicit pointer fields. All 2,036 executable targets decode; RTS-dispatch tables are registered with their
value+1 targets. All 38 decoded indirect jumps have reviewed dispositions. Correcting the two RTS-biased
subtables at `$16:$A73B/$A777` removed a false operand entry, and progression-state tracing recovered the
handler at `$16:$AAEF` from a stale variable-record boundary.

The completion gate (`verify-completion.cmd`) passes end to end: 0 current analyzer warnings; 215 warning
identities ledgered, including all 143 original warnings; 2,143 pointers typed; 2,036/2,036 executable targets
decoded; 38/38 indirect jumps audited; 4,315 routine interfaces; 37 semantic contracts; 26 asset slices; 15 save
fields; 9 runtime paths; exact ROM match.

## Enforced Evidence Checks

`Dw4Tool extract` fails unless every check below holds:

- Inline-operand ABI (`config/inline-operand-abi.tsv`): BRK operand counts come from the dispatcher and handler
  code, with each rule citing its handler. No inline operand byte may be a runtime-executed instruction start.
  Stack-correlated tracing proves the declared continuation for 688 call sites; 34 older sites remain explicitly
  labeled `legacy-address-only`, not causal resume evidence. Any conflicting causal continuation fails extraction.
- Progression-state tracing stages archived `.sav`/`.fcN` files only under `work/fceux`; the 31-snapshot corpus
  covers all chapters and four final-battle forms. `analysis/fceux-read-sources.tsv` attributes each ROM read to
  its executing bank/PC, while `analysis/fceux-observations.tsv` records selected register and RAM domains.
- Runtime evidence admits only unmodified state execution. A forced record-selection experiment entered excluded
  bank `$00` dialogue data; its observations were rejected and removed before rebuilding the normal state corpus.
- BRK services `$2A,$0F` and `$2B,$0F` now resolve to bank `$10:$A240/$A256`: they select a random set-bit index
  from the low nibble or full byte, return carry clear for an empty mask, and have reviewed routine contracts.
- Evidence priority: imported Ghidra blocks are supplementary. Blocks that start inside established code, raise
  any analyzer warning, or overlap a verified content range are rejected and listed in `analysis/code-report.txt`.
- A BRK that selects a bank without a verified `$8000` service directory, or a JSR/JMP into `$0800-$5FFF`, stops
  its path as invalid code.
- `config/code-data-overlaps.tsv` must exactly equal the final code/content intersection. This preserves the 522
  reviewed dual-use bytes while rejecting any undeclared overlap, regardless of seed source.
- Warning ledger (`config/analyzer-warning-ledger.tsv`): current warnings must match exactly, and each resolved
  warning's disposition is re-checked. `config/analyzer-warning-manifest.tsv` protects the full ledger and original
  inventory, including reason text and post-original identities, against unreviewed edits or deletion.
- Evidence citations: every `MNEMONIC operand at $ADDR` cited by a content-range or entry-table reason must be
  decoded code at that address.
- `ReviewedUnusedData` ranges are analyzed without data suppression and fail extraction if they contain decoded
  code or inline operands, overlap a code exclusion, receive a declared pointer or uncapped static absolute/indexed
  reference, execute, or receive a source-attributed runtime read. Fifty-six ranges currently satisfy this policy.
- The 127 guarded flow-recovery seeds are revalidated against a baseline decode.

The orphan audit discovered the indirect parser for `$12:$A2B6-$A303` through chapter pointers at `$916E` and
runtime reads from `$8FC9/$8FD5`. Banks `$0E:$BAD7-$BAF6`, `$13:$94EC-$951A`, and `$1D:$916F-$918D` now use the
reviewed-unused policy. Bank `$08:$8ABF-$8ADA` remains open because `$8AA2,Y` can still reach it without a proven
upper bound; this is intentionally not overridden by negative runtime evidence.

Bank `$14` is now fully classified. The final proofs include four action-presentation records selected only by
bank `$11` action IDs `$69-$6C`, sixteen motion offsets bounded by the preceding sprite movement, phase tables
bounded through both callers of `$8D7A`, special-ID tables guarded below nine, and two eleven-entry selector rows
whose ten callers set `$0F` to zero through ten. Bank `$16` is 99.38% complete with 101 bytes left; newly closed
ranges include masked dual-use lookups, sentinel-terminated offset streams, service-return-bounded tables, and
source-attributed runtime bytes.

## Completion Definition

Semantic assembly is done only when there are:

- Zero unclassified byte ranges.
- Zero generated routine-entry names.
- Complete reviewed routine contracts.
- Structured lossless encoders for all five asset classes.
- Fully proven save/load and validation behavior.
- Deterministic end-to-end runtime scenarios for all nine domains.
- Continued exact-ROM reproduction.

## Work Priorities

1. Recover entry points and indirect calls: complete for all currently decoded indirect jumps; rerun the audit whenever new code paths appear.
2. Type mixed-bank records and pointer boundaries: directly classifies data and often reveals dispatch targets.
3. Exercise runtime paths: provides proof for otherwise unreachable code and ROM-read boundaries.
4. Classify opcode/data-walk warnings: identifies hidden data structures and bad control-flow paths.
5. Build structured asset decoders/encoders: helps classify mixed-bank assets; raw binary round-tripping alone does not.
6. Verify RAM/save behavior: can reveal initialization tables and save routines, but offers narrower PRG coverage gains.
7. Meaningful naming and routine contracts: aid investigation but do not increase byte coverage directly.
8. Exact-ROM rebuild gate: adds no coverage, but remains mandatory for every change.

## Long-Term Direction

1. Finish semantic disassembly and content typing.
2. Build lossless asset decoders and encoders.
3. Define engine-neutral game-state and content schemas.
4. Implement a headless deterministic simulation.
5. Validate combat, movement, events, and RNG against emulator traces.
6. Build one vertical slice in the chosen engine.
7. Add editing tools and begin intentional gameplay changes.

## Largest Unclassified Blocks

Current exact intervals, largest first:

- `$08:$8ABF-$8ADA` (28 bytes): an uncapped `$8AA2,Y` reference can theoretically reach this selector-like block;
  progression traces observed Y values one and two but did not establish a static ceiling
- `$16:$B232-$B249` (24 bytes): two-stage indices depend on `$F3/$F8/$03DC` without complete producer bounds
- `$13:$8D2A-$8D3B` (18 bytes): no complete static or runtime extent proof
- `$16:$B1E8-$B1F8` (17 bytes): two-stage text/UI lookup whose `$03DC/$F3` domains are not fully bounded
- `$16:$B964-$B974` (17 bytes): two-stage text/UI lookup whose `$03DC/$F8` domains are not fully bounded
- `$10:$8FE5-$8FF4` (16 bytes): indexed battle-party data still lacks a complete producer bound
- `$10:$AE6E-$AE7D` (16 bytes): indexed battle-party data still lacks a complete producer bound
- `$13:$8DD7-$8DE6` (16 bytes): possible indexed continuation remains reachable from an uncapped base
- `$1E:$87FC-$880B` (16 bytes): indexed map-interaction data still lacks a complete producer bound
- `$08:$8AA1-$8AAE` (14 bytes): the preceding indexed selector base has no proven terminal index

## Control-Flow Conflicts

There are no current conflicts. The three overlaps once audited as intentional were all decoding artifacts:

- Bank `$10:$BBEB`: a phantom `EOR #$A5` from reading the three-operand BRK at `$BBE7` as two-operand.
- Bank `$16:$B84A`: entered by `BPL $B84A` decoded from RTS-dispatch value `$B89F`; the handler begins at `$B8A0`.
- Bank `$1F:$CE50`: `CPY #$AA` came from a Ghidra block starting inside `JSR $CEA9`. The fixed-bank BRK
  continuation decodes `JSR $CEA9; JMP $C010`.

Each is recorded as resolved in `config/analyzer-warning-ledger.tsv`.
