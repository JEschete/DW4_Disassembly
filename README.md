# Dragon Warrior IV (USA) NES Disassembly

This is a from-scratch, Windows-native disassembly project for the exact ROM identified below. No existing public decompilation is used.

## Reference ROM

- Path used for extraction: `Dragon Warrior IV (USA).nes`
- SHA-256: `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`
- Format: NES 2.0
- Mapper: Nintendo MMC1, mapper 1, submapper 0
- PRG ROM: 512 KiB in 32 banks of 16 KiB
- CHR ROM: none; the cartridge declares 8 KiB CHR RAM

The 512 KiB SUROM-style layout has two 256 KiB outer regions. Physical banks `$0F` and `$1F` are the fixed `$C000-$FFFF` banks for the lower and upper outer regions respectively; the other banks map into `$8000-$BFFF`.

The supplied offline dump table lists the same US PRG payload with a legacy iNES header. Normalizing only bytes 7-15 of this ROM's header to the legacy zero-filled form reproduces that table's MD5 and SHA-1 exactly; no PRG bytes differ.

The source tree contains all PRG bytes. The reference ROM is not copied into the project and is not required for an ordinary rebuild.

## Visual Studio 2026

Open `DragonWarrior4.sln`, select `Release | x64`, and build the solution. The resulting ROM is:

`build\Release\Dragon Warrior IV (USA).nes`

The build compiles the project-local `asm6f` with the Visual Studio 2026 `v145` toolset, assembles the ROM, and verifies the exact reference SHA-256.

From a regular Command Prompt, the equivalent one-step build is:

```bat
build.cmd
```

## Regenerating The Lossless Bank Sources

The extraction command accepts only the exact reference ROM, runs the project-local `da65` disassembler with validated code/data ranges, and writes 32 bank files under `src\banks`:

```bat
extract.cmd "F:\NES\Dragon Warrior IV (USA).nes"
```

Labels in `config\labels.tsv` are inserted without changing bytes. Add or refine labels there, rerun extraction, and then rebuild.

Optional local analysis passes can expand the verified code ranges before extraction:

```bat
scripts\trace-fceux.cmd "F:\NES\Dragon Warrior IV (USA).nes" 1800 explore
scripts\trace-fceux.cmd "F:\NES\Dragon Warrior IV (USA).nes" 1800 buttons
scripts\trace-fceux.cmd "F:\NES\Dragon Warrior IV (USA).nes" 1800 wander
scripts\analyze-ghidra.cmd "F:\NES\Dragon Warrior IV (USA).nes"
extract.cmd "F:\NES\Dragon Warrior IV (USA).nes"
build.cmd
```

FCEUX records physical-bank instruction execution. Headless Ghidra uses those observations and curated seeds to discover reachable control flow. `Dw4Tool` validates the resulting ranges, `da65` emits assembly, and `asm6f` must reproduce the exact reference hash.

The full local acceptance gate regenerates the disassembly, verifies all original warning classifications, audits pointer tables and routine contracts, checks saved runtime evidence, round-trips every asset class, and rebuilds the exact ROM:

```bat
verify-completion.cmd
```

Lossless asset slices can also be exported, imported over the exact base ROM, or round-trip tested independently with `Dw4Tool asset-export`, `asset-import`, and `asset-verify`. The manifest in `config\asset-ranges.tsv` covers text, maps, graphics, palettes, and audio, including intentional text/code overlaps.

## Status

The current local tree is a complete, byte-exact, bank-oriented assembly baseline. Every one of the 32 physical banks has a Verified dominant-content classification, covering all 524,288 PRG bytes (100%). Detailed semantic coverage from verified instruction positions and explicit data ranges totals 503,069 bytes (95.95%). The remaining 21,219 bytes (4.05%) are preserved exactly by raw assembly directives but are not yet classified at record or routine granularity. Progress and evidence are tracked in `DECOMPILATION_NOTES.md`, `BANK_MAP.md`, `analysis\classification-report.txt`, and `analysis\code-report.txt`.

### Completion Percentages

There is no honest single completion percentage because byte reproduction, control-flow recovery, data typing, and semantic documentation have different denominators. The measurable dimensions are:

| Dimension | Current completion | Evidence |
|---|---:|---|
| Reassemblable ROM | **100%** | All 524,304 bytes rebuild to the reference SHA-256. |
| PRG bytes represented in assembly | **100%** | All 524,288 PRG bytes are emitted by the 32 bank sources. |
| Dominant bank classification | **100%** | 32/32 physical banks have Verified subsystem classifications. |
| Detailed semantic byte classification | **95.95%** | 503,069/524,288 bytes are verified code or explicitly ranged data; 21,219 remain unclassified. |
| Warning disposition | **100% classified** | All 143 original cases and 45 additional recovered-path cases are classified; 176 active triage rows remain visible as evidence and 12 original cases were resolved. |
| Entry-point and indirect-call recovery | **100% audited** | 1,955 pointer entries are typed, all 1,871 executable targets decode, and all 42 currently decoded indirect jumps have reviewed dispositions. |
| Meaningful routine naming | **1.95%** | 78/3,992 proven routine starts have curated names; 3,914 retain generated subsystem/address entry names. |
| High-confidence semantic contracts | **0.88%** | 35/3,992 proven routine starts have manually verified contracts. Every routine has a generated static interface record. |
| Binary asset preservation | **100%** | All five asset classes, represented by 26 slices, export/import without changing the ROM. |
| Structured editable asset formats | **0/5 complete** | Text has a semantic decoder but no encoder; maps, graphics, palettes, and audio currently round-trip as bounded binary slices. |
| Configured runtime evidence | **100%** | 12/12 configured checks across nine named paths pass; these are component-level observations, not complete playthrough scenarios. |

### Decompilation Progress

Dominant classification records the verified subsystem or asset class for each complete physical bank. Detailed classification separately counts the union of verified instruction-byte positions and explicit data ranges in `config\content-ranges.tsv`. Decoding every format, naming every field, and making assets editable remain later milestones.

Asset-only banks are intentionally kept as typed data rather than disassembled into 6502 mnemonics. The same rule applies to map, graphics, text, and sound data; mixed banks retain assembly only for verified executable loaders, decoders, drivers, and game logic.

| Area | Progress | Current state | Major work remaining |
|---|---|---|---|
| Exact Windows rebuild | **Complete (100%)** | Visual Studio 2026 builds a 524,304-byte ROM with the reference SHA-256. | Keep the exact-build gate passing as source becomes more semantic. |
| Dominant PRG classification | **524,288 / 524,288 bytes (100%)** | All 32 physical banks have Verified dominant subsystem or asset classifications in `config\bank-classifications.tsv` and `BANK_MAP.md`. | Preserve these classifications while refining internal structures. |
| Detailed range classification | **503,069 bytes (95.95%)** | All 143 original warning cases and 45 additional recovered-path cases are classified; the sole intentional control-flow overlap is audited and gate-enforced. | Classify the remaining 21,219 bytes without promoting unproven code. |
| Machine-code recovery | **Complete for currently decoded indirect jumps** | 1,955 pointer entries across 77 declared table/range groups and 126 explicit effect-script callback fields are typed; all 1,871 executable targets decode and all 42 indirect jumps are audited. | Rerun the audit whenever new code paths expose another indirect jump. |
| Startup, interrupts, and banking | **Verified** | RESET, RAM-installed NMI trampoline, NMI/IRQ handlers, fixed-bank trampolines, MMC1 serial writes, SUROM outer-bank behavior, and PRG selection are identified, named, contracted, and runtime-observed. | Refine individual service semantics as callers are understood. |
| Core game logic | **Structurally recovered, semantically early** | The old `BankXX_Code_XXXX` pattern is gone, but 3,914 of 3,992 routine starts still use generated subsystem/address entry names. | Give every routine start a behavior-based name; internal branch labels may remain local control-flow labels. |
| Menus and user interface | **Early** | Menu/UI execution is included in bounded button traces, but routines and window/layout data are not systematically separated. | Trace every menu, identify navigation/input handlers, decode window definitions, and name drawing routines. |
| Battle system | **Partial** | Banks `$10-$14` contain battle-side party/status, action, setup, presentation, and turn-engine services. Bank `$14` has bounded monster-ID, bank-selection, and 194-record graphics-descriptor tables. Bank `$18` contains 214 monster records, 107 encounter records, 35 battle formations, encounter weights, world grids, and map-keyed encounter streams. | Name individual actions, AI, damage, spells, status effects, rewards, and presentation routines. |
| Map and overworld data | **Mapped and byte-lossless** | Compressed map data in banks `$09-$0B`, routing records, map-info records, and animation commands have exact manifest ranges and round-trip through the asset tool. | A higher-level map editor may be added without changing the byte-lossless baseline. |
| Tilesets and tile behavior tables | **Strong** | Bank `$08` is 96.62% detailed: tile records, map-routing records, variable map/submap data, coordinate records, padding, and the compatibility footer have exact boundaries. | Type the remaining unconsumed record block and code-adjacent operands, then convert the verified ranges to editable structured source. |
| Graphics | **Mapped and byte-lossless** | Eight verified graphics slices cover compressed monsters, raw map/character/UI tiles, fonts, and sprite layouts; all 85,619 bytes round-trip exactly. | Add visual format editors on top of the preserved binary slices. |
| Palettes | **Mapped and byte-lossless** | The 704-byte map-palette domain includes override maps/submaps, palette numbers, color sets, and NES colors and round-trips exactly. | Document special-case palette semantics as consumers are named. |
| General data tables | **Partial** | Every physical bank now has a Verified classification. Map entity pointers/records, service directories, effect scripts, monster records and graphics descriptors, fonts, palettes, tiles, and map tables have range labels. | Type fields within known records and identify remaining mixed-bank gaps. |
| Text and dialogue | **All groups decoded** | All 88 Huffman groups and 2,816 message IDs decode across banks `$00-$04/$1A/$1B`; group `$57` rolls from `$BF75-$BFD7` to `$B78A-$BCEA` through pointer entry `$8014`, matching the ROM reader. Reports are written to `analysis\text.tsv` and `analysis\text-bank-XX.md`, and all group starts are annotated in assembly. | Name substitution/control codes, identify every text-ID caller, and build a lossless text encoder. |
| Save data and RAM state | **Partial** | Runtime writes cover `$6001-$62EE`; 15 named fields/ranges and chapter initialization are validated. No separate serializer or checksum pass has been found in recovered paths. | Trace an actual create/save/reset/load cycle, map every persistent field and slot boundary, and prove either the checksum algorithm or its absence. |
| Audio and music | **Mapped and byte-lossless** | Track records, selectors, sequence/instrument/envelope/effect data, sequence-reader execution, and APU reset are verified; all 15,920 audio bytes round-trip exactly. | Decode command semantics for higher-level editing. |
| Semantic documentation | **35/3,992 contracts (0.88%)** | Every proven routine start has a generated register/memory/call interface, but only 35 have manually verified inputs, outputs, clobbers, side effects, convention, and evidence. | Complete semantic contracts for all routine entries or explicitly classify trivial aliases/thunks under a contracted parent. |

### Definition Of Assembly Done

The project may be called **reassemblable assembly complete now**: every byte is represented and the exact-ROM gate passes. It should be called **semantic assembly done** only when all of these measurable conditions hold:

1. `analysis\classification-report.txt` reports 524,288/524,288 detailed bytes and no unclassified ranges.
2. Every executable target found through vectors, direct calls, banked dispatch tables, and bounded runtime traces is decoded; the pointer audit remains 100%.
3. Every one of the 3,992 currently proven routine starts has a behavior-based name, or is explicitly documented as an alias/thunk of a named routine. Generated `_Entry_XXXX` names reach zero. Internal `_Branch_XXXX` labels may remain when they are only local control-flow destinations.
4. Every named routine has a reviewed contract covering inputs, outputs, clobbers, side effects, and calling convention. Grouped contracts are acceptable for mechanically identical table handlers.
5. Text, maps, graphics, palettes, and audio each have a structured decoder and encoder whose unchanged round trip reproduces the exact source bytes. Raw slice replacement alone does not satisfy this semantic tooling criterion.
6. Save data has a complete field/slot map and a deterministic create, save, reset, and load test. Checksum/signature/version behavior is either implemented and documented or its absence is demonstrated from all load paths.
7. Deterministic scenarios exercise startup, banking, menu navigation, map transition, a complete battle turn, rendered dialogue, save/load, audio playback, and both raw and compressed graphics paths with explicit assertions.
8. `verify-completion.cmd` still finishes with zero build warnings/errors and the reference SHA-256.

### Remaining Work To Reach Semantic Assembly Done

1. Classify the remaining **21,219 bytes (4.05%)**, led by banks `$16` (3,500), `$12` (2,838), `$13` (2,571), `$1F` (1,876), and `$10` (1,825).
2. Replace **3,914 generated routine-entry names** with behavior-based names. Generated branch labels are secondary and need renaming only when they represent a distinct routine or data object.
3. Expand semantic contracts from **35/3,992 (0.88%)** to complete routine-entry coverage, grouping proven aliases and uniform handlers where appropriate.
4. Implement structured lossless encoders for all five asset classes. Text decoding is present; no asset class yet has a complete semantic decode-edit-encode round trip.
5. Finish save-system proof: all persistent fields, slot boundaries, initialization defaults, actual save/load behavior, and checksum/signature/version handling.
6. Replace component-level runtime evidence with deterministic end-to-end scenarios, especially a complete battle turn, actual save/load, bank `$14` monster decompression, and resulting graphics/audio output.
7. Keep the exact-ROM gate green after every classification, naming, contract, and tooling change.

Current scope is therefore a **100% reassemblable, 88.08% byte-classified partial semantic disassembly**. It is not yet semantic assembly done.

### Bank `$00` Classification

Physical bank `$00` is **data, not executable code**. Its layout is now verified:

| Range | Classification |
|---|---|
| `$8000-$BFD7` | Huffman-compressed dialogue stream for text groups `$00-$19` |
| `$BFD8-$BFDF` | Repeated compatibility reset stub/metadata |
| `$BFE0-$BFEF` | ASCII title signature ` DRAGON QUEST IV` |
| `$BFF0-$BFF9` | Compatibility metadata |
| `$BFFA-$BFFF` | Three repeated vectors to `$BFD8` |

The decoder is reconstructed from bank `$16`:

- `$8951-$8A00`: 88 little-endian text-group pointers
- `$87D8-$8834` and `$8835-$8891`: two branches of a 93-node binary Huffman tree
- root node: `$5C`
- leaf values: bit 7 set; emitted symbol is value AND `$7F`
- message terminator: symbol `$46`
- groups contain 32 message IDs each

Bank `$00` holds groups `$00-$19`, or 832 message IDs. Symbols `$00-$3E` decode through the supplied character table; punctuation is decoded where known. Placeholders such as `<47>`, `<48>`, and `<49>` are runtime substitutions or control codes whose exact semantics are still being named.

### Complete Physical Bank Map

See `BANK_MAP.md` for the evidence, important ranges, and unresolved work within every bank `$00-$1F`. Every physical bank now has a Verified dominant-content classification, while unproven subranges remain data rather than being promoted to code.