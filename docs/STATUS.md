# Project Status

Last verified: 2026-09-22

This document is the authoritative human-readable status snapshot. Generated totals come from `../analysis/`; completion policy is enforced by `../verify-completion.cmd`.

## Current Metrics

- Reassemblable assembly: 100% (verified: build reproduces SHA-256 `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`)
- Detailed semantic classification: 96.56% (506,243 / 524,288)
- Remaining unclassified: 18,045 bytes in 696 ranges
- Verified instruction bytes: 155,985 (29.75%)
- Explicitly ranged data bytes: 350,914 (66.93%)
- Dual-use code/data overlap: 656 bytes (0.13%)
- Meaningfully named routines: 78/3,991 (1.95%)
- Semantic contracts: 35/3,991 (0.88%)
- Pointer recovery, indirect-jump audit, and unsupported-opcode disposition: 100%
- Control-flow conflicts: 1/1 audited intentional overlap
- Structured asset encoders: 0/5 complete

All-bank entry-point pass: 1,954 pointer entries across 77 declared tables/ranges, mixed records, text/UI
escape handlers, and 126 explicit pointer fields. All 1,870 executable targets decode (1,868 local-bank plus
two fixed-bank), and all 42 currently decoded indirect jumps have reviewed dispositions.

The completion gate (`scripts\verify-completion.ps1`) passes end to end: 143/143 original warnings plus 45
additional recovered-path warnings classified; 1,954 pointers typed; 1,870/1,870 executable targets decoded;
42/42 indirect jumps audited; 1/1 control-flow conflicts audited; 3,991 routine interfaces; 35 semantic
contracts; 26 asset slices; 15 save fields; 12 runtime assertions across 9 paths; exact ROM match.

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

- `$13:$BBCE-$BCE9` (284 bytes)
- `$12:$BED2-$BFD7` (262 bytes)
- `$16:$B307-$B3FB` (245 bytes)
- `$16:$B85E-$B94F` (242 bytes)
- `$16:$AC0F-$ACFE` (240 bytes)
- `$13:$BD97-$BE80` (234 bytes)
- `$16:$BEF0-$BFD7` (232 bytes)
- `$13:$B96F-$BA4D` (223 bytes)

## Audited Conflict

Control-flow conflict (1/1 audited): bank `$10:$BBEB` is intentional dual-entry code. The BRK-service path
falls through at `$BBEA` as `EOR #$A5`, while the explicit `JMP` at `$BBE4` enters that operand byte at `$BBEB` as
`LDA $75`. `config\control-flow-conflicts.tsv` records the disposition, and the completion gate enforces exact
parity between that ledger and analyzer output.
