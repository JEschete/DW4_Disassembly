Current status:

Reassemblable assembly: 100% (verified: build reproduces SHA-256 373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A)
Detailed semantic classification: 95.95% (503,069 / 524,288)
Remaining unclassified: 21,219 bytes in 704 ranges
Verified instruction bytes: 156,004 (29.76%)
Explicitly ranged data bytes: 347,698 (66.32%)
Dual-use code/data overlap: 633 bytes (0.12%)
Meaningfully named routines: 78/3,992 (1.95%)
Semantic contracts: 35/3,992 (0.88%)
Pointer recovery, indirect-jump audit, and unsupported-opcode disposition: 100%
Control-flow conflicts: 1/1 audited intentional overlap
Structured asset encoders: 0/5 complete

All-bank entry-point pass: 1,955 pointer entries across 77 declared tables/ranges, mixed records, text/UI
escape handlers, and 126 explicit pointer fields. All 1,871 executable targets decode (1,869 local-bank plus
two fixed-bank), and all 42 currently decoded indirect jumps have reviewed dispositions.

The completion gate (scripts\verify-completion.ps1) passes end to end: 143/143 original warnings plus 45
additional recovered-path warnings classified; 1,955 pointers typed; 1,871/1,871 executable targets decoded;
42/42 indirect jumps audited; 1/1 control-flow conflicts audited; 3,992 routine interfaces; 35 semantic
contracts; 26 asset slices; 15 save fields; 12 runtime assertions across 9 paths; exact ROM match.

The docs define "semantic assembly done" as:
    Zero unclassified byte ranges.
    Zero generated routine-entry names.
    Complete reviewed routine contracts.
    Structured lossless encoders for all five asset classes.
    Fully proven save/load and validation behavior.
    Deterministic end-to-end runtime scenarios for all nine domains.
    Continued exact-ROM reproduction.


Recover entry points and indirect calls: complete for all currently decoded indirect jumps; rerun the audit whenever new code paths appear.
Type mixed-bank records and pointer boundaries: directly classifies data and often reveals dispatch targets.
Exercise runtime paths: provides proof for otherwise unreachable code and ROM-read boundaries.
Classify opcode/data-walk warnings: identifies hidden data structures and bad control-flow paths.
Build structured asset decoders/encoders: helps classify mixed-bank assets; raw binary round-tripping alone does not.
Verify RAM/save behavior: can reveal initialization tables and save routines, but offers narrower PRG coverage gains.
Meaningful naming and routine contracts: aid investigation but do not increase byte coverage directly.
Exact-ROM rebuild gate: adds no coverage, but remains mandatory for every change.

Finish semantic disassembly and content typing.
Build lossless asset decoders and encoders.
Define engine-neutral game-state and content schemas.
Implement a headless deterministic simulation.
Validate combat, movement, events, and RNG against emulator traces.
Build one vertical slice in the chosen engine.
Add editing tools and begin intentional gameplay changes.


Largest remaining unclassified blocks (no traced consumer yet):
    $14:$A111-$A3F0 (736)   exactly 46 x 16 bytes; consistent with raw NES tiles, unconfirmed
    $10:$BD43-$BFD7 (661)   bank tail, no decoded instruction references it
    $12:$8AD1-$8D04 (564)
    $14:$BE4F-$BFD7 (393)   only the four-entry index at $BE4F has a traced consumer
    $12:$8D75-$8EAC (312)
    $13:$B7E8-$B90A (291)
    $13:$BBCE-$BCE9 (284)


Control-flow conflict (1/1 audited): bank $10:$BBEB is intentional dual-entry code. The BRK-service path
falls through at $BBEA as EOR #$A5, while the explicit JMP at $BBE4 enters that operand byte at $BBEB as
LDA $75. `config\control-flow-conflicts.tsv` records the disposition, and the completion gate enforces exact
parity between that ledger and analyzer output.
