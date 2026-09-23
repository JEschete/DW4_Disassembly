# Project Status

Last verified: 2026-09-22

This document is the authoritative human-readable status snapshot. Generated totals come from `../analysis/`; completion policy is enforced by `../verify-completion.cmd`.

## Current Metrics

- Reassemblable assembly: 100% (verified: build reproduces SHA-256 `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`)
- Detailed semantic classification: 97.37% (510,480 / 524,288)
- Remaining unclassified: 13,808 bytes in 708 ranges
- Verified instruction bytes: 157,509 (30.04%)
- Explicitly ranged data bytes: 353,652 (67.45%)
- Dual-use code/data overlap: 681 bytes (0.13%)
- Meaningfully named routines: 78/4,120 (1.89%)
- Semantic contracts: 35/4,120 (0.85%)
- Pointer recovery, indirect-jump audit, and unsupported-opcode disposition: 100%
- Control-flow conflicts: 3/3 audited intentional overlaps
- Structured asset encoders: 0/5 complete

All-bank entry-point pass: 2,066 pointer entries across 75 declared tables/ranges, mixed records, text/UI
escape handlers, and 126 explicit pointer fields. All 1,968 executable targets decode (1,966 local-bank plus
two fixed-bank), and all 41 currently decoded indirect jumps have reviewed dispositions.

The completion gate (`scripts\verify-completion.ps1`) passes end to end: 143/143 original warnings plus 42
additional recovered-path warnings classified; 2,066 pointers typed; 1,968/1,968 executable targets decoded;
41/41 indirect jumps audited; 3/3 control-flow conflicts audited; 4,120 routine interfaces; 35 semantic
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

- `$0E:$BE13-$BEE9` (215 bytes)
- `$12:$B977-$BA3D` (199 bytes)
- `$18:$AD9F-$AE4E` (176 bytes)
- `$12:$9135-$91DC` (168 bytes)
- `$13:$9481-$951A` (154 bytes)
- `$1C:$AE46-$AEDE` (153 bytes)
- `$16:$B687-$B71E` (152 bytes)
- `$12:$BED2-$BF67` (150 bytes)

## Audited Conflicts

All three conflicts are intentional dual-entry code:

- Bank `$10:$BBEB`: BRK-service fallthrough decodes `EOR #$A5`; an explicit jump enters the operand as `LDA $75`.
- Bank `$16:$B84A`: normal flow executes `STA $03C9`; a handler branch enters its operand as `CMP #$03`.
- Bank `$1F:$CE50`: fallthrough executes `CPY #$AA`; a branch enters its operand as `TAX`.

`config\control-flow-conflicts.tsv` records each disposition, and the completion gate enforces exact parity.
