# Unsupported Opcode Completion

All 143 warnings from the original analyzer inventory remain classified. 131 remain in the current report, 12 disappeared after mixed pointer-table values stopped being seeded as executable targets, and 45 additional warnings exposed by later control-flow recovery are also classified.

| Classification | Count |
|---|---:|
| intentional-data-walk | 168 |
| mixed-directory-data-target | 12 |
| verified-content-range | 8 |

## Resolved Analyzer Warnings

- Bank `$08:$BE94` opcode `$1C`: Directory entry $8036 points to a data record whose first byte is not an official 6502 opcode; the target is retained as typed data.
- Bank `$10:$BC7E` opcode `$64`: Directory entry $805E points to a data record whose first byte is not an official 6502 opcode; the target is retained as typed data.
- Bank `$10:$BCEC` opcode `$FB`: Directory entry $8078 points into the operand of the verified EOR #$FB instruction at $BCEB and is not an executable entry.
- Bank `$10:$BD1F` opcode `$F7`: Directory entry $807C points to a data record whose first byte is not an official 6502 opcode; the target is retained as typed data.
- Bank `$13:$BDE3` opcode `$F7`: Directory entry $802E points to a data record whose first byte is not an official 6502 opcode; the target is retained as typed data.
- Bank `$18:$B40D` opcode `$02`: Mixed battle-data directory entry $802C selects non-code record data.
- Bank `$18:$B48F` opcode `$02`: Mixed battle-data directory entry $8030 selects non-code record data.
- Bank `$18:$B525` opcode `$02`: Mixed battle-data directory entry $802E selects non-code record data.
- Bank `$18:$B5C2` opcode `$02`: Mixed battle-data directory entry $800E selects non-code record data.
- Bank `$18:$B655` opcode `$FB`: Mixed battle-data directory entry $8042 selects non-code record data.
- Bank `$18:$BDBD` opcode `$7B`: Mixed battle-data directory entry $8034 selects post-font record data at the verified font boundary.
- Bank `$18:$BEEE` opcode `$F7`: Mixed battle-data directory entry $8038 selects non-code record data.
