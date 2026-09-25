# Project Status

Last verified: 2026-09-24

This document is the authoritative human-readable status snapshot. Generated totals come from `../analysis/`; completion policy is enforced by `../verify-completion.cmd`.

## Current Metrics

- Reassemblable assembly: 100% (verified: build reproduces SHA-256 `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`)
- Detailed semantic classification: 99.24% (520,308 / 524,288)
- Remaining unclassified: 3,980 bytes in 212 ranges
- Verified instruction bytes: 163,342 (31.16%)
- Explicitly ranged data bytes: 357,489 (68.19%)
- Dual-use code/data overlap: 523 bytes (0.10%)
- Meaningfully named routines: 78/4,313 (1.81%)
- Semantic contracts: 35/4,313 (0.81%)
- Pointer recovery, indirect-jump audit, and analyzer-warning disposition: 100%
- Current analyzer warnings and control-flow conflicts: 0
- Structured asset encoders: 0/5 complete

All-bank entry-point pass: 2,143 pointer entries across declared tables, mixed records, text/UI escape handlers,
and explicit pointer fields. All 2,032 executable targets decode; RTS-dispatch tables are registered with their
value+1 targets. All 38 decoded indirect jumps have reviewed dispositions.

The completion gate (`verify-completion.cmd`) passes end to end: 0 current analyzer warnings; 215 warning
identities ledgered, including all 143 original warnings; 2,143 pointers typed; 2,032/2,032 executable targets
decoded; 38/38 indirect jumps audited; 4,313 routine interfaces; 35 semantic contracts; 26 asset slices; 15 save
fields; 12 runtime assertions across 9 paths; exact ROM match.

## Enforced Evidence Checks

`Dw4Tool extract` fails unless every check below holds:

- Inline-operand ABI (`config/inline-operand-abi.tsv`): BRK operand counts come from the dispatcher and handler
  code, with each rule citing its handler. No inline operand byte may be a runtime-executed instruction start.
  Stack-correlated tracing proves the declared continuation for 115 call sites; 103 older sites remain explicitly
  labeled `legacy-address-only`, not causal resume evidence. Any conflicting causal continuation fails extraction.
- Evidence priority: imported Ghidra blocks are supplementary. Blocks that start inside established code, raise
  any analyzer warning, or overlap a verified content range are rejected and listed in `analysis/code-report.txt`.
- A BRK that selects a bank without a verified `$8000` service directory, or a JSR/JMP into `$0800-$5FFF`, stops
  its path as invalid code.
- `config/code-data-overlaps.tsv` must exactly equal the final code/content intersection. This preserves the 523
  reviewed dual-use bytes while rejecting any undeclared overlap, regardless of seed source.
- Warning ledger (`config/analyzer-warning-ledger.tsv`): current warnings must match exactly, and each resolved
  warning's disposition is re-checked. `config/analyzer-warning-manifest.tsv` protects the full ledger and original
  inventory, including reason text and post-original identities, against unreviewed edits or deletion.
- Evidence citations: every `MNEMONIC operand at $ADDR` cited by a content-range or entry-table reason must be
  decoded code at that address.
- The 127 guarded flow-recovery seeds are revalidated against a baseline decode.

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

- `$12:$BDC9-$BECF` (263 bytes): directory-addressed, script-like bytes; format and endpoint semantics are not proven
- `$10:$8DF7-$8EDF` (233 bytes): data addressed only by unused directory entries `$20/$21`
- `$12:$B977-$BA3D` (199 bytes): no static or runtime consumer found
- `$13:$B756-$B80A` (181 bytes): several indexed bases are known, but the combined table extents are not fully bounded
- `$18:$ADA3-$AE4E` (172 bytes): threshold search whose extent depends on the range of `$62D5`, followed by records with no known consumer
- `$10:$BC7E-$BD29` (172 bytes): data addressed only by unused directory entries `$3B/$3D/$3F`
- `$12:$BED2-$BF67` (150 bytes): continuation of the bank `$12` script-like data
- `$1E:$8E3D-$8EC4` (136 bytes): indexed tables whose extent depends on the unbounded value in `$3D`
- `$12:$B5F4-$B679` (134 bytes): indexed data whose maximum Y depends on the unbounded party value `$6DF9`
- `$10:$9DE0-$9E2F` (80 bytes): referenced base without a proven complete extent

## Control-Flow Conflicts

There are no current conflicts. The three overlaps once audited as intentional were all decoding artifacts:

- Bank `$10:$BBEB`: a phantom `EOR #$A5` from reading the three-operand BRK at `$BBE7` as two-operand.
- Bank `$16:$B84A`: entered by `BPL $B84A` decoded from RTS-dispatch value `$B89F`; the handler begins at `$B8A0`.
- Bank `$1F:$CE50`: `CPY #$AA` came from a Ghidra block starting inside `JSR $CEA9`. The fixed-bank BRK
  continuation decodes `JSR $CEA9; JMP $C010`.

Each is recorded as resolved in `config/analyzer-warning-ledger.tsv`.
