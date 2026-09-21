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

## Status

The current local tree is a complete, byte-exact, bank-oriented assembly baseline. Every one of the 32 physical banks has a Verified dominant-content classification, covering all 524,288 PRG bytes (100%). Structural coverage from verified instruction positions and explicit data ranges totals 115,579 bytes (22.04%). Progress and evidence are tracked in `DECOMPILATION_NOTES.md`, `BANK_MAP.md`, `analysis\classification-report.txt`, and `analysis\code-report.txt`.

### Decompilation Progress

Dominant classification records the verified subsystem or asset class for each complete physical bank. Detailed classification separately counts the union of verified instruction-byte positions and explicit data ranges in `config\content-ranges.tsv`. Decoding every format, naming every field, and making assets editable remain later milestones.

Asset-only banks are intentionally kept as typed data rather than disassembled into 6502 mnemonics. The same rule applies to map, graphics, text, and sound data; mixed banks retain assembly only for verified executable loaders, decoders, drivers, and game logic.

| Area | Progress | Current state | Major work remaining |
|---|---|---|---|
| Exact Windows rebuild | **Complete (100%)** | Visual Studio 2026 builds a 524,304-byte ROM with the reference SHA-256. | Keep the exact-build gate passing as source becomes more semantic. |
| Dominant PRG classification | **524,288 / 524,288 bytes (100%)** | All 32 physical banks have Verified dominant subsystem or asset classifications in `config\bank-classifications.tsv` and `BANK_MAP.md`. | Preserve these classifications while refining internal structures. |
| Detailed range classification | **Structural coverage: 115,579 bytes (22.04%)** | Control-flow conflicts resolved 25/30; 5 remaining are Ghidra seed misalignments in code regions. Instruction and data byte breakdown will be finalized after remaining conflicts are addressed. | Resolve final 5 conflicts via boundary refinement, then classify remaining unstructured bytes at table/routine granularity. |
| Machine-code recovery | **62,799 instructions / 125,270 unique bytes** | Mnemonics are emitted across 18 physical banks. The analyzer resumes verified BRK service calls, handles bank `$11`'s inline-operand JSR ABI, follows nested dispatch tables, and stops at explicit data exclusions. | Find additional indirect calls, bank-switch continuations, and untraced gameplay paths. |
| Startup, interrupts, and banking | **Strong** | RESET, RAM-installed NMI trampoline, NMI/IRQ handlers, fixed-bank trampolines, MMC1 serial writes, SUROM outer-bank behavior, and PRG selection are identified. | Finish semantic names and document calling conventions for the fixed-bank service routines. |
| Core game logic | **Partial** | Runtime-backed control flow is recovered in the fixed banks and several switchable code banks. Most recovered routines still have generated names. | Identify subsystem boundaries, parameters, state machines, and meaningful routine/global names. |
| Menus and user interface | **Early** | Menu/UI execution is included in bounded button traces, but routines and window/layout data are not systematically separated. | Trace every menu, identify navigation/input handlers, decode window definitions, and name drawing routines. |
| Battle system | **Partial** | Banks `$10-$14` contain battle-side party/status, action, setup, presentation, and turn-engine services. Bank `$14` has bounded monster-ID, bank-selection, and 194-record graphics-descriptor tables. Bank `$18` contains 214 monster records, 107 encounter records, 35 battle formations, encounter weights, world grids, and map-keyed encounter streams. | Name individual actions, AI, damage, spells, status effects, rewards, and presentation routines. |
| Map and overworld data | **Mapped, not source-converted** | Compressed map data in banks `$09-$0B`, overworld row pointers, 73 map-info pointers, and the map-to-bank routine are identified; the compression formats are documented. | Export maps into editable structured files, verify every pointer/boundary, and build a lossless encoder/importer. |
| Tilesets and tile behavior tables | **Strong** | Bank `$08` is 96.31% detailed: tile records, map-routing records, variable map/submap data, coordinate records, padding, and the compatibility footer now have exact boundaries. | Type the remaining unconsumed record block and code-adjacent operands, then convert the verified ranges to editable structured source. |
| Graphics | **Mapped, partially decoded** | Banks `$06-$07` are verified compressed monster graphics decoded by bank `$14`; map graphics are in `$0C-$0D`, character sprites in `$0D-$0E`, bank `$1B` contains seven sprite layouts and 128 raw sprite tiles, and one-bitplane font glyphs are in `$18`. The game uses CHR RAM rather than CHR ROM. | Implement a lossless monster-graphics extractor/encoder and editable rebuilding for all graphics classes. |
| Palettes | **Partial** | Map-palette selection code, override maps/submaps, palette-number table, color-set table, and NES color data in bank `$0E` are labeled. | Convert tables to structured source and document all special cases and non-map palettes. |
| General data tables | **Partial** | Every physical bank now has a Verified classification. Map entity pointers/records, service directories, effect scripts, monster records and graphics descriptors, fonts, palettes, tiles, and map tables have range labels. | Type fields within known records and identify remaining mixed-bank gaps. |
| Text and dialogue | **All groups decoded** | All 88 Huffman groups and 2,816 message IDs decode across banks `$00-$04/$1A/$1B`; cross-bank and final `$1B:$A0FE` continuation behavior matches the ROM reader. Reports are written to `analysis\text.tsv` and `analysis\text-bank-XX.md`, and all group starts are annotated in assembly. | Name substitution/control codes, identify every text-ID caller, and build a lossless text encoder. |
| Save data and RAM state | **Partial** | System RAM, WRAM/SRAM regions, party records, inventory fields, story flags, currency, time, and other save fields have preliminary names from supplied references. | Verify names against code references, establish complete structures, checksums, initialization, serialization, and version behavior. |
| Audio and music | **Partial** | Bank `$19` now has 54 four-channel track-pointer records at `$814E`, 54 external-bank selectors at `$82FE`, and bounded sequence/instrument/envelope/effect data through `$BF7D`. The upper fixed bank contains the sequence reader, APU reset, and channel register paths. | Decode individual audio commands, instruments, envelopes, and effects, then create lossless audio data tooling. |
| Semantic documentation | **Partial** | `BANK_MAP.md` classifies every physical bank and `config\labels.tsv` marks verified directories, code/data boundaries, text overlays, monster records, fonts, and subsystem entries. | Replace generated routine labels throughout and document individual inputs, outputs, and side effects. |

Current scope should therefore be described as a **byte-exact partial disassembly with validated tooling**, not a completed semantic decompilation.

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