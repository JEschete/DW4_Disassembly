# Project Status

Last verified: 2026-09-29

This document is the authoritative human-readable status snapshot. Generated totals come from `../analysis/`; completion policy is enforced by `../verify-completion.cmd`.

## Current Metrics

- Reassemblable assembly: 100% (verified: build reproduces SHA-256 `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`)
- Detailed semantic classification: 100% (524,288 / 524,288) - Done
- Verified instruction-byte inventory: 163,493 (31.18% of PRG) - Done under current decoded evidence
- Explicit content-range inventory: 361,313 (68.91% of PRG) - Done
- Reviewed dual-use code/data overlap ledger: 518/518 bytes (0.10%) - Done
- Curated code/function labels: 4,572
- Meaningfully named routines: 4,562/4,562 (100%)
- Semantic contracts: 4,562/4,562 (100%)
- Pointer recovery, indirect-jump audit, and analyzer-warning disposition: 100%
- Current analyzer warnings and control-flow conflicts: 0
- Structured asset encoders: 0/5 complete

The instruction, content-range, and overlap figures are classification components, not independent progress
targets. Their union is complete: 163,493 instruction bytes + 361,313 content-range bytes - 518 bytes present in
both inventories = 524,288 classified PRG bytes.

All-bank entry-point pass: 2,143 pointer entries across declared tables, mixed records, text/UI escape handlers,
and explicit pointer fields. All 2,036 executable targets decode; RTS-dispatch tables are registered with their
value+1 targets. All 38 decoded indirect jumps have reviewed dispositions. Correcting the two RTS-biased
subtables at `$16:$A73B/$A777` removed a false operand entry, and progression-state tracing recovered the
handler at `$16:$AAEF` from a stale variable-record boundary.

The completion gate (`verify-completion.cmd`) passes end to end: 0 current analyzer warnings; 215 warning
identities ledgered, including all 143 original warnings; 2,143 pointers typed; 2,036/2,036 executable targets
decoded; 38/38 indirect jumps audited; 4,562 routine interfaces; 4,562 semantic contracts; 26 asset slices; 15 save
fields; 9 runtime paths; exact ROM match.

The 2026-09-28 routine-name audit checked all 2,354 interfaces in banks `$00-$15` against their generated ASM
bodies and interface evidence. A follow-up control-flow pass added absolute JMP trampolines and bounded tail-call
targets, increasing the all-bank inventory from 4,315 to 4,562 routines. Confirmed semantic errors, operand-derived
names, and generic subsystem prefixes were corrected. The audit now resolves direct `$D3` battle-message calls
against decoded text and flags generic selection, accumulator, marker, route, action, result, and state names on
their owning routines. It reports zero review flags; duplicate-address, duplicate-global-name, and byte-identical
fixed-bank semantic-name checks are also clean.

The follow-up audio audit decoded bank `$19` entries `$02-$09` as APU reset, track start, completion flags,
flagged track start, global audio setting, completion wait, map-track selection, and map-music playback. It also
corrected physical damage, victory rewards, monster stats, agility-based turn order, casino payouts, cursed-item
feedback, and map-event jingles. The naming report now warns on audio-only display/print/message labels and on
`Dormant` labels with direct or tail callers; both queues are empty.

The corrective field/story audit registered selector `$D3` as battle-message dispatch and `$04,$6F` as the direct
field-message service. Bank `$12:$9300-$B5FF` now distinguishes item use, field spells, Adventure Log handling,
level growth and spell learning, the Lighthouse fire scene, and neutral transition/operation helpers whose owning
subsystem is not proven. Banks `$1C-$1E` identify their evidenced story scenes; chapter labels consistently use
displayed values 1-5. All 100 changed lower-fixed names were compared with their prior semantics; stronger Select,
field-frame, Start-menu, entity visibility, map-object animation, and Coin Seller names were restored in both twins.

The fifth corrective naming pass renamed core battle routines for their main path rather than an early failure
branch; standardized `$7361-$7362` and its consumers as the active battle damage amount; and curated the battle
command menu while leaving action `$41/$43` identities explicitly unverified. Sparse generated-label overrides now
assign evidenced subsystem prefixes to address ranges before falling back to each bank's dominant classification,
correcting 335 bank `$12` and 293 bank `$17` generated definitions. Seven fly-away routines and roughly 40 field,
service, and story routines now use decoded behavior. The naming review also flags failure-framed names that print
direct battle text; the resulting review queue remains empty.

The 2026-09-29 sixth audit covered all 4,905 curated labels and manually reviewed all 4,577 Function/Code bodies.
All 126 findings (37 High, 46 Medium, 43 Low) are retained in `../analysis/audits/audit6-ledger.tsv`. Corrections
include battle-AI scoring in bank `$13`, monster display and ordered Necrosaro form transitions in bank `$14`,
shop/dialogue event scripts in bank `$15`, the field-command and found-item flows in bank `$1E`, scripted battles
and party joins, fixed-bank encounter/world-trigger semantics, and the retail-unreachable chapter-selection path.
The pass also separates CharacterRecord, BattlePartyRecord, and CombatantRecord vocabulary and corrects music,
palette, handler-table, and debug-feature data classifications. `../scripts/check_audit6_labels.py` verifies the
ledger totals and rejects stale audit names, duplicate labels, missing key mappings, and routine-contract drift.

The 2026-09-29 follow-up sweep resolved 14 residual findings (1 High, 4 Medium, 9 Low). It moved the Clay Doll
battle name to the actual `$1D:$9C52` entry, corrected character-record bit set/clear direction and the capped-add
path at `$10:$865B`, replaced unsupported tactics terminology with packed-record-field selectors, and named the
party inventory search. Canonical map identities now qualify all 82 bank `$1C` and seven bank `$1D` map-specific
handlers. The remaining corrections cover treasure/search routines, casino display restoration, the Iron Safe
return, boss-ID notes, shared RAM `$75BB`, named trampoline calls, and residual bank `$14` display terminology.

The next verification sweep found eight regressions introduced by that pass. Four adjacent bank `$1C` handlers
are now aligned with their actual Lighthouse, Kievs, Cave of Betrayal, and Keeleon table entries; Haville uses
submap one. Bank `$1E` now distinguishes the Cave of Betrayal movement effect, map-transition party helpers,
unused DOOR helper, map-exit SEARCH message, and general map/field directory. Bank `$13:$91A9` correctly records
eighteen action IDs versus seventeen real handlers, leaving action ID `$60` without a handler entry.

The final one-issue audit correction identifies `$1E:$9E7A` as `FindHeroPartyOrdinalOrFallback`, called only by
chapter startup, and limits `$1E:$8FA5` to its verified scene-transition caller.

The contract-completion pass now covers all 4,562 verified routine interfaces. It preserves 32 specialized,
hand-authored contracts and derives 4,530 evidence-bounded contracts from the reviewed all-body label notes plus
conservative decoded register, memory-write, call, and entry evidence. `../scripts/sync_routine_contracts.py`
reproduces the inventory; extraction rejects missing, stale, duplicate, or label-mismatched contracts.

The 2026-09-28 naming pass completed banks `$16-$1F`. Every bank now has zero generated routine-entry names in
both generated assembly and the routine-interface inventory.

## Routine Naming Backlog

`Named` counts curated code/function/interrupt/vector labels that coincide with an entry in
`analysis/routine-interfaces.tsv`. `Remaining %` uses each bank's routine count as its denominator. Pure-data banks
have no routine interfaces and report `n/a`.

| Bank | Named | Total | Remaining | Remaining % |
|---:|---:|---:|---:|---:|
| `$00` | 0 | 0 | 0 | n/a |
| `$01` | 0 | 0 | 0 | n/a |
| `$02` | 0 | 0 | 0 | n/a |
| `$03` | 0 | 0 | 0 | n/a |
| `$04` | 0 | 0 | 0 | n/a |
| `$05` | 0 | 0 | 0 | n/a |
| `$06` | 0 | 0 | 0 | n/a |
| `$07` | 0 | 0 | 0 | n/a |
| `$08` | 84 | 84 | 0 | 0.00% |
| `$09` | 0 | 0 | 0 | n/a |
| `$0A` | 0 | 0 | 0 | n/a |
| `$0B` | 10 | 10 | 0 | 0.00% |
| `$0C` | 0 | 0 | 0 | n/a |
| `$0D` | 0 | 0 | 0 | n/a |
| `$0E` | 6 | 6 | 0 | 0.00% |
| `$0F` | 360 | 360 | 0 | 0.00% |
| `$10` | 392 | 392 | 0 | 0.00% |
| `$11` | 374 | 374 | 0 | 0.00% |
| `$12` | 283 | 283 | 0 | 0.00% |
| `$13` | 393 | 393 | 0 | 0.00% |
| `$14` | 196 | 196 | 0 | 0.00% |
| `$15` | 256 | 256 | 0 | 0.00% |
| `$16` | 418 | 418 | 0 | 0.00% |
| `$17` | 258 | 258 | 0 | 0.00% |
| `$18` | 92 | 92 | 0 | 0.00% |
| `$19` | 12 | 12 | 0 | 0.00% |
| `$1A` | 0 | 0 | 0 | n/a |
| `$1B` | 184 | 184 | 0 | 0.00% |
| `$1C` | 221 | 221 | 0 | 0.00% |
| `$1D` | 318 | 318 | 0 | 0.00% |
| `$1E` | 340 | 340 | 0 | 0.00% |
| `$1F` | 365 | 365 | 0 | 0.00% |

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
- Index bounds (`config/index-bounds.tsv`): 169 rows each cap one decoded absolute-indexed consumer to a cited
  index range. Extraction rejects a bound that any source-attributed runtime read or recorded index-register
  observation contradicts, and every byte a bound can reach must be typed.
- `ReviewedUnusedData` ranges are analyzed without data suppression and fail extraction if they contain decoded
  code or inline operands, overlap a code exclusion, receive a declared pointer or a static absolute/indexed
  reference, execute, or receive a source-attributed runtime read. An indexed reference counts across base through
  base+255 unless an index bound caps it. Fifty-three ranges currently satisfy this policy.
- The 127 guarded flow-recovery seeds are revalidated against a baseline decode.

The orphan audit discovered the indirect parser for `$12:$A2B6-$A303` through chapter pointers at `$916E` and
runtime reads from `$8FC9/$8FD5`. Banks `$0E:$BAD7-$BAF6`, `$13:$94EC-$951A`, and `$1D:$916F-$918D` now use the
reviewed-unused policy. Bank `$08:$8ABB-$8ADA` is now typed through its `$80C2/$80C3` pointer consumer, while
`$08:$8AA2-$8AAE` stays open because `$8AA2,Y` has no proven ceiling; this is intentionally not overridden by
negative runtime evidence.

Bank `$14` is now fully classified. The final proofs include four action-presentation records selected only by
bank `$11` action IDs `$69-$6C`, sixteen motion offsets bounded by the preceding sprite movement, phase tables
bounded through both callers of `$8D7A`, special-ID tables guarded below nine, and two eleven-entry selector rows
whose ten callers set `$0F` to zero through ten. Bank `$16` is now fully classified. Its title-menu tables are proven
from the `$B78C` slot-mask builder and UI records `$53-$55`, and scripted COPY/ERASE walks exercised all eight
slot masks. Its text-input and dialogue-row tables are proven from the only records that select them.

Corrections made in the 2026-09-27 pass:

- Three reviewed-unused claims were wrong and are now typed: `$13:$94EC-$951A`, `$10:$95EF-$9600`, and
  `$1D:$B285-$B287`.
- `$16:$B71F` was wrong as reviewed-unused. It is the last byte of the keyboard list, now `$B699-$B71F`.
- Six reviewed-unused claims were withdrawn for lacking index bounds. Five are now resolved with proofs:
  `$12:$914C-$914F` and `$12:$91D1-$91D7` are reviewed-unused under a chapter bound, `$16:$A4D6-$A4DD` is
  reviewed-unused, `$1F:$ED49-$ED4A` is the 99th audio period entry, and `$16:$BC41-$BC42` is read data (see
  the next item). At that checkpoint `$0F/$1F:$DFF0` remained open; the final classification pass below resolves it.
- `$16:$BC35` claimed six status pairs because `$10:$9613` "returns zero through six", and the `$16:$BC29/$BC2F`
  bounds used that claim. `$9613` returns zero through seven: field five (poison) gives seven. The table has seven
  pairs, `$BC35-$BC42`, and both bounds are now `$00-$0C`. Runtime never contradicted the old bound because no
  trace displayed a poisoned member there.
- The `$16:$A4CE` evidence attributed Y at `$8E75/$8E88` to `AND #$07` at `$8E53`. That instruction only compares
  against Y; the caller at `$8CEF-$8CF9` masks and counts Y.
- The names `$16:$B755` and `$16:$B785` were wrong. They are title-menu and adventure-log row counts, not party
  data.

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

1. Finish semantic disassembly and content typing. - Done
2. Build lossless asset decoders and encoders.
3. Define engine-neutral game-state and content schemas.
4. Implement a headless deterministic simulation.
5. Validate combat, movement, events, and RNG against emulator traces.
6. Build one vertical slice in the chosen engine.
7. Add editing tools and begin intentional gameplay changes.

## Control-Flow Conflicts

There are no current conflicts. The three overlaps once audited as intentional were all decoding artifacts:

- Bank `$10:$BBEB`: a phantom `EOR #$A5` from reading the three-operand BRK at `$BBE7` as two-operand.
- Bank `$16:$B84A`: entered by `BPL $B84A` decoded from RTS-dispatch value `$B89F`; the handler begins at `$B8A0`.
- Bank `$1F:$CE50`: `CPY #$AA` came from a Ghidra block starting inside `JSR $CEA9`. The fixed-bank BRK
  continuation decodes `JSR $CEA9; JMP $C010`.

Each is recorded as resolved in `config/analyzer-warning-ledger.tsv`.
