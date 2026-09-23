# Dragon Warrior IV Decompilation Journal

## Purpose And Ground Rules

This file is the historical engineering record for a from-scratch decompilation of the verified reference image. It records reproducible observations, decisions, commands, assumptions, discrepancies, and validation results. Current metrics are maintained in [STATUS.md](STATUS.md); this journal is not a second status source.

The project obeys these constraints:

1. No public decompilation source is used.
2. No code, labels, build files, or architectural conclusions are copied from an existing decompilation.
3. The verified reference ROM and direct runtime/static observations are the game-specific evidence base.
4. Third-party tools must be pinned, provenance-documented, or resolved through portable environment configuration.
5. The project is Windows-native and opens in Visual Studio 2026.
6. Every accepted source change must continue to build a structurally valid ROM. Baseline changes must also retain the exact reference SHA-256.
7. Uncertain names are marked as candidates or unknowns instead of being presented as fact.

An earlier web reconnaissance result was discarded when the no-public-decomp constraint was stated. No content or conclusions from it are present in this project. Accepted game-specific labels are traceable to reviewed configuration, direct ROM inspection, or runtime evidence.

## Environment Inventory

Verified local build environment on 2026-09-19:

- Visual Studio 2026 Community
- Visual Studio version reported by the installer: `18.10.12201.205`
- MSBuild discovered through `vswhere`
- MSVC compiler family: 19.x from toolset directory `VC\Tools\MSVC\14.51.36231`
- Visual C++ Platform Toolset: `v145`
- Installed .NET SDKs: `9.0.317` and `10.0.401`
- Windows 10 SDK include and library roots are installed.

Visual Studio 2026 is version 18. The solution header therefore identifies Visual Studio version 18 and each C++ project selects `v145` explicitly.

## Supplied Inputs

### ROM

The source ROM was inspected directly, without modifying or copying it into the repository.

- File: exact reference ROM supplied outside the repository
- File length: 524,304 bytes (`0x80010`)
- SHA-256: `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`
- SHA-1: `993A171A99D29805D6634CF40190DE138B4A99B9`
- MD5: `33690B361265C840FDA965418ADF3143`

The 16 header bytes are:

```text
4E 45 53 1A 20 00 12 08 00 00 70 07 00 00 00 01
```

Decoded header facts:

- Signature: `NES` followed by `0x1A`
- Format: NES 2.0, selected by byte 7 bits 2-3 equal to binary `10`
- PRG count: header byte 4 is `0x20`, meaning 32 units of 16 KiB
- PRG size: 32 * 16,384 = 524,288 bytes
- CHR count: header byte 5 is zero, so there is no CHR ROM
- Mapper: 1
- Submapper: 0
- Battery-backed memory flag: set
- Trainer flag: clear
- Header mirroring bit: clear, conventionally decoded as horizontal
- PRG RAM: none declared
- PRG NVRAM: 8 KiB
- CHR RAM: 8 KiB
- CHR NVRAM: none declared
- Timing: NTSC

The complete size equation is:

```text
16-byte header + (32 * 16,384-byte PRG banks) + 0-byte CHR ROM = 524,304 bytes
```

The final six PRG bytes are:

```text
02 05 D8 FF 08 C4
```

Interpreted as little-endian 6502 vectors:

- NMI: `$0502`
- RESET: `$FFD8`
- IRQ/BRK: `$C408`

The NMI target is in internal RAM. That is unusual but legal if startup copies an interrupt routine to RAM before enabling NMI. It is an observation, not yet a completed behavioral proof.

### Offline Reference Material

The user supplied saved HTML pages under `Resources`. They are reference notes, not an existing source-code decompilation. The current set includes:

- a general game page
- ROM map
- RAM map
- SRAM map
- map format
- map list
- text table
- tile behaviors
- values
- RetroAchievements code notes

The references are useful but not treated as authoritative when they disagree with the ROM. A confirmed example is mirroring: the saved general page says vertical mirroring, while byte 6 of the actual ROM header is `0x12`, whose low bit is clear. The project preserves the exact header bytes and records the discrepancy rather than silently choosing the prose value.

The supplied page's known-dump table gives the US ROM MD5 `e45105e8f82d8aa29b39260fd531498d` and SHA-1 `f4759104bd0241ce3c038209446aeda79f170fdd`. Those differ from the complete input file because this input carries a populated NES 2.0 header. An in-memory test replaced only header bytes 7-15 with zeroes, leaving all PRG bytes untouched. The resulting complete-file hashes exactly matched both supplied known-dump values. Therefore the project ROM has the same US PRG payload as the documented dump; its header metadata is the only difference relevant to those hashes.

The supplied ROM map currently documents only selected banks and regions:

- Bank `$08`: tileset tables and tile definitions
- Banks `$09-$0B`: compressed map data and overworld data
- Banks `$0C-$0E`: graphics, palette data, and two identified code regions
- Bank `$0F`: a map-bank selection routine identified by headerless file address `$3E9AD`
- Bank `$17`: map information pointer and metadata tables

The labels seeded in `config\labels.tsv` are limited to these explicit observations. They are prefixed with a bank number because switchable banks share the same `$8000-$BFFF` CPU address window.

The saved RetroAchievements page states that its address values use an emulator memory layout. The low addresses used for initial RAM symbols correspond directly to CPU RAM or cartridge WRAM. These descriptions are third-party observations and must be validated against instruction references before being upgraded from provisional documentation.

## Mapper And Address Model

The cartridge uses MMC1 with 512 KiB PRG and CHR RAM. The PRG is divided into 32 physical 16 KiB banks numbered `$00-$1F`.

The corrected assembly model is:

- Physical banks `$00-$0E` and `$10-$1E` use logical CPU base `$8000`.
- Physical bank `$0F` is the fixed `$C000-$FFFF` bank for the lower 256 KiB outer region.
- Physical bank `$1F` is the fixed `$C000-$FFFF` bank for the upper 256 KiB outer region.
- The ROM file offset for a physical bank is `0x10 + bank * 0x4000`.
- For switchable banks, CPU address is `$8000 + offsetWithinBank`.
- For fixed banks `$0F` and `$1F`, CPU address is `$C000 + offsetWithinBank`.

The first model treated only bank `$1F` as fixed. A raw scan for calls to the fixed-bank trampoline table exposed matching call sites at identical offsets in banks `$0F` and `$1F`. Direct comparison then showed:

- banks `$0F` and `$1F` have identical NMI, RESET, and IRQ vectors
- 9,732 of 16,384 bytes are equal at identical offsets
- call sites at offsets `$01AD`, `$09FF`, `$0DD5`, `$0E4D`, `$0EA6`, `$1569`, and `$157C` contain identical instructions

This is consistent with a 512 KiB SUROM-style board where a CHR-register bit chooses the outer 256 KiB PRG region and the last 16 KiB bank of each region is fixed. The source model was corrected before expanding lower-half analysis.

The supplied ROM-map statement "Bank 0F, Address 3E9AD" uses a headerless linear ROM address. The calculation is `$0F * $4000 + $29AD = $3E9AD`; with physical bank `$0F` mapped at `$C000`, the CPU address is `$E9AD`, not `$A9AD`. The label and code seed were corrected accordingly.

The supplied ROM map writes headerless file offsets such as `$20000` for bank `$08`. This matches `8 * 0x4000`. The actual `.nes` file offset is 16 bytes later because of the iNES header.

## Toolchain Decision

The local NES assembler inventory included upstream asm6f. It was selected because:

1. It is specifically intended for NES/Famicom 6502 assembly.
2. It supports bank-oriented `BASE`, source inclusion, raw byte directives, symbols, listings, and emulator label output.
3. Its license permits use, modification, and redistribution.
4. Its source is a single C file, making it practical to vendor and build directly with Visual Studio 2026.
5. A source-built local copy avoids requiring an unrelated package manager or Unix compatibility layer.

The following files were copied from the supplied local tool directory:

- `tools\asm6f\asm6f.c`
- `tools\asm6f\LICENSE.txt`

Before modification, the copies were verified byte-identical:

- `asm6f.c`: 74,197 bytes, SHA-256 `9F6F68DCA53AB60B6C748DCE306E4DA67C2DD9880F4CF8CF5F9E41602465B2F0`
- `LICENSE.txt`: 111 bytes, SHA-256 `EB03F4830F4275217A38696495E9394BDC43D7047A00B9456ADC54F2EA66AA38`

An unmodified MSVC C17 probe failed for two portability reasons:

- GNU named variadic macro syntax (`fmt, args...`)
- use of `PATH_MAX`, which MSVC does not define

The project-local source was changed only as follows:

- variadic macros were rewritten using standard C99/C17 `__VA_ARGS__`
- `PATH_MAX` is defined as 4096 only when compiling with MSVC and no prior definition exists
- the file header states that the source was locally modified, satisfying the tool's license requirement for altered versions

The patched source compiled with Visual Studio 2026 using `/std:c17 /W4 /O2`. The probe produced zero errors and the resulting executable printed `asm6f 1.6 (+ f003)`. Nine MSVC narrowing warnings remained in Debug at warning level 3. Each affected value was bounded by the assembler's existing address, buffer, or bank-size constraints, so the project-local source now uses explicit casts and a `size_t` string-length local. This records the intended legacy conversion while keeping Visual Studio builds warning-free.

## Project Architecture

`DragonWarrior4.sln` contains three projects:

1. `asm6f`: a C console application built by MSVC `v145`.
2. `Dw4Tool`: a .NET 10 console application that validates the ROM and produces deterministic bank assembly.
3. `DragonWarrior4`: a C++ utility project that assembles and verifies the game ROM after its tool dependencies build.

The ROM build has no dependency on the original `.nes` file. The original ROM is required only to regenerate the checked-in bank source files.

`Dw4Tool extract` performs these checks before writing source:

1. exact total file size
2. exact 16-byte header
3. exact SHA-256 identity

It then emits one file per 16 KiB PRG bank. Every source row contains at most 16 explicit byte values and a CPU-address comment. A row is split early when necessary so a configured label lands on the exact byte it names. Output uses UTF-8 without a BOM and deterministic uppercase hexadecimal.

`Dw4Tool verify` checks structural fields. Adding `--exact` also requires the reference SHA-256. The Visual Studio ROM project uses exact verification for the baseline build.

## Why The Initial Source Uses Byte Directives

Separating code from data in a bank-switched 6502 ROM cannot be done correctly by linear decoding alone. Data bytes frequently form valid 6502 opcodes, indirect calls obscure targets, and mapper state determines which physical bank an `$8000-$BFFF` address refers to.

The initial source therefore represents every byte explicitly before converting regions to mnemonics. This provides four important invariants:

1. no byte is omitted
2. no data is accidentally decoded as code
3. every semantic edit can be tested against a known-good exact build
4. labels and boundaries can improve incrementally without destabilizing unrelated banks

This is a lossless disassembly baseline, not a claim that all routines have already been understood. A region is converted from `db` to instructions only after an entry point or execution trace supports that classification. Unknown data remains data.

## Validation Protocol

The baseline acceptance check is:

```text
SHA256(rebuilt ROM) == 373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A
```

Additional structural checks are:

- output length is 524,304 bytes
- output header is exactly the 16 reference bytes
- output mapper decodes to 1
- output contains 524,288 PRG bytes and no CHR ROM bytes
- vectors remain NMI `$0502`, RESET `$FFD8`, IRQ/BRK `$C408`

The exact-hash test is deliberately stronger than testing in an emulator. An emulator smoke test will be added after the exact source build is established, but successful emulation cannot prove byte identity.

## Planned Semantic Passes

The semantic work should proceed in this order:

1. Decode the fixed bank from RESET `$FFD8` and IRQ `$C408` by recursive control flow.
2. Verify whether startup copies code to RAM `$0502`, and identify the ROM source of that copy.
3. Identify MMC1 serial-write routines and determine the actual PRG banking mode.
4. Track constant bank selections into calls or jumps in `$8000-$BFFF`.
5. Convert only proven reachable instructions to mnemonics.
6. Use the supplied bank `$0E` code ranges as independent checks of code/data classification.
7. Use emulator coverage data to discover indirect and state-dependent entry points.
8. Name routines from observed effects and cross-references, keeping uncertain labels explicitly provisional.
9. Split verified structured data into tables using the supplied map, graphics, palette, and text-format notes.
10. Rebuild and exact-compare after each small conversion.

## Open Questions

- Why is NMI vectored directly to RAM `$0502`, and exactly when is that code installed?
- Which MMC1 control mode is active after reset and during normal gameplay?
- How does the 512 KiB board select PRG bit 4: CHR register high bit, board wiring, or another convention?
- Which banks are predominantly code, graphics, compressed maps, scripts, or text?
- Which supplied RAM names are stable engine variables versus temporary values observed in one game state?
- Does the Japanese-targeted RetroAchievements note set align fully with this USA ROM's RAM layout?
- Which portions of the supplied ROM map were tested against the USA revision rather than another region?

Every answer should be tied to ROM bytes, a trace, a cross-reference, or a repeatable experiment and then added to this journal.

## Baseline Build Result - 2026-09-19

The first complete Visual Studio 2026 `Release|x64` build succeeded through `build.cmd`.

- MSBuild version: 18.10.1
- Build errors: 0
- Initial inherited C compiler warnings from asm6f: 9 conversion warnings
- Assembled output size: 524,304 bytes
- Assembled output SHA-256: `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`
- Exact reference match: yes

This proves that the 16-byte header, all 32 PRG banks, ordering, and bank sizes in the generated source match the supplied ROM exactly.

## First Static Code Pass - 2026-09-19

`Dw4Tool` now contains an official NMOS 6502 opcode table and a conservative recursive control-flow analyzer. Initial entry points come only from CPU vectors, direct ROM evidence, or code ranges explicitly identified by the supplied ROM map.

The analyzer follows:

- sequential fallthrough
- relative conditional branches
- direct `JSR` targets
- direct absolute `JMP` targets

The analyzer stops at:

- `RTS`
- `RTI`
- `BRK`
- indirect `JMP`
- unsupported opcodes
- an existing instruction operand
- a physical bank boundary
- an explicit supplied code-range boundary

For target resolution, `$C000-$FFFF` maps to physical bank `$1F`. A target in `$8000-$BFFF` maps to the current physical bank only when analysis is already inside a switchable bank. A fixed-bank call into `$8000-$BFFF` is not followed because the active MMC1 bank cannot be inferred from the address alone.

The first version lacked explicit range ends. It followed sequential execution from bank `$0E:$BAF7` into the documented data table at `$BB53` and eventually stopped at unsupported byte `$42` at `$BB61`. This was a useful failure: exact binary reproduction still passed, but semantic classification was wrong. `code-seeds.tsv` was extended with optional exclusive end addresses. The two supplied bank `$0E` ranges now stop at `$8091` and `$BB53` respectively.

After correcting the boundaries:

- `Dw4Tool` built with 0 warnings and 0 errors.
- Static analysis emitted 52 instructions / 100 bytes in bank `$0E`.
- Static analysis emitted 18 instructions / 33 bytes in bank `$0F`.
- Static analysis emitted 460 instructions / 891 bytes in bank `$1F`.
- The analyzer reported no warnings.
- The assembled ROM remained 524,304 bytes.
- The assembled SHA-256 remained `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`.

This demonstrates that the emitted mnemonics and addressing modes round-trip to the original bytes. It does not by itself prove every seed is semantically correct; the provenance of each seed remains part of the acceptance criteria.

## Reset And NMI Findings - 2026-09-19

The RESET vector points to `$FFD8`. The reset stub is:

```asm
Reset:
	sei
	inc $FFDF
	jmp $C03D
```

`$FFDF` contains `$80`. On MMC1, a write with bit 7 set resets the serial shift register. The read-modify-write behavior of `INC` therefore supplies an MMC1 reset write before execution continues at `$C03D`.

The startup path waits for two PPU vblank intervals, disables rendering, initializes MMC1 state, clears RAM pages, clears PPU memory, initializes the OAM shadow, and enters the main path at `$C968`. Names in `labels.tsv` distinguish directly observed behavior from routines that still need broader behavioral analysis.

The NMI vector does not point into ROM. It contains `$0502`, and reset constructs a RAM trampoline:

```text
$0502 <- $4C       ; JMP absolute opcode
$0503 <- [$C0D2]   ; $5A
$0504 <- [$C0D3]   ; $C1
```

The resulting instruction at RAM `$0502` is `JMP $C15A`. This proves that ROM address `$C15A` is the NMI handler body. `$C15A` was therefore added as a code seed based on direct byte-level evidence rather than a guessed linear decode.

Three five-write routines at `$C118`, `$C12F`, and `$C146` shift accumulator bits into addresses `$9FFF`, `$BFFF`, and `$DFFF`. These addresses fall in the MMC1 control, CHR bank 0, and CHR bank 1 register ranges respectively. `$FF91` writes the low four PRG bank bits through `$FFFF` and propagates input bit 4 into the saved CHR bank 0 value written through `$BFFF`; this is consistent with a 512 KiB MMC1 board using an outer PRG bank bit.

## Fixed-Bank Trampoline Discovery - 2026-09-19

Each fixed bank begins with byte `$FF` followed by twenty consecutive absolute `JMP` instructions at `$C001`, `$C004`, ..., `$C03A`. Each entry is exactly three bytes. The target routines form a family at `$E54B-$E66A`.

The target routines share this shape:

1. preserve processor flags
2. store the caller-provided accumulator value at WRAM `$07CA`
3. read a two-byte pointer embedded immediately after the routine
4. store that pointer at WRAM `$6CDC-$6CDD`
5. restore flags
6. transfer control through executable WRAM at `$6CAD`

This supports describing `$C001-$C03C` as a fixed-bank trampoline table. The exact purpose and calling convention of each entry still require analysis of the WRAM routine and callers, so the entries retain neutral numbered names.

All twenty entries were added as bounded three-byte seeds in each fixed physical bank. The analyzer follows each direct target but cannot accidentally continue from one trampoline entry into the next.

## Switchable-Bank Seed Scan - 2026-09-19

A bounded raw-byte scan searched all physical PRG banks for opcode `$20` (`JSR`) or `$4C` (`JMP`) followed by one of the twenty trampoline addresses. It found 50 byte-pattern matches. Fourteen were already-decoded calls in fixed banks `$0F` and `$1F`. The other 36 candidates were distributed as follows:

- bank `$07`: 1
- bank `$19`: 6
- bank `$1B`: 5
- bank `$1D`: 6
- bank `$1E`: 18

There were no candidates in the supplied-known map/graphics banks `$08-$0D` or map-information bank `$17`. That distribution is useful supporting evidence, but a byte-pattern match alone is not proof of code.

The sole bank `$07` match at `$9C7D` decoded as `JSR $C025` followed by implausible instructions and unsupported opcode `$A3`. Its surrounding bytes have dense graphics/data characteristics, so that seed was removed and the region remains `db` data.

An initial scan result incorrectly listed bank `$1D:$AD75`. Direct byte inspection showed `$AD75` is `C5 A2`, not `20 10 C0`. A corrected scanner that printed each three-byte slice found the actual sixth bank `$1D` match at `$B99B` (`20 01 C0`). The incorrect seed was removed and `$B99B` was added. This incident is why candidate addresses are validated against their exact byte triples before acceptance.

The 35 retained switchable-bank call sites are used as forward-only entry seeds. The analyzer does not guess backward to a routine boundary. This can leave the beginning of a routine as `db`, but it avoids asserting an unsupported entry point.

## Static Analyzer Corrections - 2026-09-19

Two impossible fallthroughs were found and corrected during iterative validation:

1. Bank `$0E` analysis originally continued beyond the supplied code end `$BB52` into the palette override table at `$BB53`. Explicit exclusive end bounds were added to supplied code ranges.
2. Fixed-bank code at `$ED8F` executes `LDA #$00 / BEQ $EDD8`; treating both branch outcomes as possible decoded the inline table at `$ED93` as code. The analyzer now tracks the zero result of immediate register loads through flag-neutral instructions.
3. Fixed-bank code at `$EFB5` loads immutable ROM byte `$83` from `$EFBD`, then executes `BNE $EFD0`. The analyzer now also derives the zero flag for direct, non-indexed ROM loads whose physical bank mapping is known.
4. Generated labels are emitted only for addresses that became valid instruction starts. This prevents a rejected overlapping path from leaving an undefined symbolic branch target.

The analyzer remains deliberately narrow. It does not claim general constant propagation, resolve indirect jumps, infer targets from arbitrary pointer tables, or determine a switchable target when fixed-bank code calls `$8000-$BFFF` without known mapper state.

## Symbolic Operand Pass - 2026-09-19

`Dw4Tool` reads constants from `src\constants\*.inc` and substitutes them into decoded address operands. It also resolves labels in the current switchable bank and in the correct fixed bank for the active 256 KiB outer region.

Immediate operands remain numeric. An early formatter revision rendered `CPX #$45` as `CPX #PlayerLocalY` because it did not distinguish an immediate value from a zero-page address; the formatter was corrected before acceptance.

Absolute instructions targeting addresses below `$0100` are emitted with asm6f's `a:` width override. This prevents the assembler from shortening a three-byte absolute instruction to a two-byte zero-page instruction when a symbolic address is introduced.

Examples of current symbolic output include:

```asm
lda PPUSTATUS
sta MMC1_PRG_END
jsr InitializeMmc1
lda Bank0E_PaletteOverrideMaps,x
cmp CurrentMapNumber
ldy CurrentSubmapNumber
```

## Initial NMI-Seed Coverage - 2026-09-19

After dual-fixed-bank correction and validated trampoline-call seeding, the static report contains:

| Physical bank | Instructions | Bytes emitted as instructions |
|---:|---:|---:|
| `$0E` | 52 | 100 |
| `$0F` | 3,476 | 7,001 |
| `$19` | 6 | 18 |
| `$1B` | 570 | 1,241 |
| `$1D` | 180 | 369 |
| `$1E` | 801 | 1,650 |
| `$1F` | 3,522 | 7,243 |
| **Total** | **8,607** | **17,622** |

The analyzer report has no warnings. A full Visual Studio 2026 `Release|x64` build completes with zero warnings and zero errors. Its output is 524,304 bytes with SHA-256 `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`, an exact match to the supplied ROM.

## Reproduction Commands

The extraction and exact build used these commands from the project root:

```bat
build\Release\tools\dw4tool\Dw4Tool.exe extract "<reference-rom>" "<repository-root>"
build.cmd
```

The one-step Visual Studio build command inside `build.cmd` is:

```bat
build.cmd
```

The generated `analysis\code-report.txt` is the concise machine-produced record of seeds, coverage, and warnings. This journal is the human-readable decision record.

## Dual-Fixed-Bank And Trampoline Expansion Result - 2026-09-19

After correcting physical bank `$0F` to CPU base `$C000`, its supplied map-bank routine appears at `$E9AD`, as predicted by the headerless file-offset calculation. Static analysis then recovered 3,476 instructions / 7,001 bytes in lower fixed bank `$0F`.

Adding byte-verified trampoline call sites in switchable banks expanded the analysis again. The current accepted coverage is:

| Physical bank | Instructions | Bytes emitted as instructions |
|---:|---:|---:|
| `$0E` | 52 | 100 |
| `$0F` | 3,476 | 7,001 |
| `$19` | 6 | 18 |
| `$1B` | 570 | 1,241 |
| `$1D` | 180 | 369 |
| `$1E` | 801 | 1,650 |
| `$1F` | 3,522 | 7,243 |
| **Total** | **8,607** | **17,622** |

The generated report contains no warnings after false-positive removal. The Visual Studio 2026 Release build completes with zero warnings and zero errors and still produces the exact reference SHA-256.

## Command-Wrapper Validation - 2026-09-19

Both user-facing command wrappers were tested from the repository parent, not from the project directory. This verifies that they do not silently depend on the caller's current working directory.

The first external invocation of `extract.cmd` exposed a Windows argument-quoting edge case. `%~dp0` ends in a backslash; passing it directly as a quoted argument caused the .NET command-line parser to receive a trailing quote as part of the path. The script now passes `%~dp0.`, which denotes the same directory without a backslash immediately before the closing quote.

The corrected end-to-end results were:

- `extract.cmd` exit code: 0
- PRG bank source files regenerated: 32
- extraction warnings/errors: none
- `build.cmd` exit code: 0
- Visual Studio build warnings/errors: 0/0
- output path: `build\Release\Dragon Warrior IV (USA).nes`
- output size: 524,304 bytes
- output SHA-256: `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`
- exact reference match: yes

## Tool-Driven Assembly Conversion - 2026-09-20

The earlier source generator contained its own small recursive decoder. That was useful for establishing a safe baseline, but the project now delegates assembly rendering to the mature local `da65` disassembler from cc65.

### da65

The pinned `third_party\cc65` submodule builds locally with Visual Studio 2026, Release x64, and `PlatformToolset=v145`. The resulting executable reports `da65 V2.19`.

- generated executable: ignored `tools\da65\da65.exe`
- source and license: pinned in `third_party\cc65`

`Dw4Tool extract` now performs these steps for every physical PRG bank:

1. writes the 16 KiB bank to ignored `work\da65`
2. converts validated instruction coverage into contiguous da65 `Code` and `ByteTable` ranges
3. exports curated RAM, hardware, table, and routine labels to the da65 info file
4. runs the project-local da65 executable
5. mechanically adapts ca65 directives to asm6f syntax
6. preserves zero-page versus absolute operand width using da65's emitted opcode-byte comments
7. namespaces or removes nonsemantic automatic labels
8. writes the final bank assembly under `src\banks`

The adapter initially exposed several incompatibilities, all caught by exact rebuilding:

- external constants were emitted as duplicate in-ROM labels
- automatic `Lxxxx` labels collided between the two fixed banks
- ca65 location aliases such as `$DFFF := * + 2` are not asm6f syntax
- four-digit automatic zero-page labels caused asm6f to widen 28 instructions

The final adapter removes only metadata aliases, converts nonsemantic automatic labels back to numeric operands, and uses opcode mode information to retain the original width. The resulting source assembles exactly.

### Headless Ghidra

Ghidra 12.1.3 was used through `GHIDRA_HOME`. The locally available GhidraNes package was investigated, but its loader was not registered by this Ghidra installation in headless mode. The production workflow therefore uses Ghidra's built-in `BinaryLoader` and `scripts\ghidra\CreateDw4Memory.java` to construct the verified mapper layout directly:

- banks `$00-$0E` and `$10-$1E` are overlays at `$8000`
- bank `$0F` is an overlay at `$C000`
- bank `$1F` is the primary raw block at `$C000`

`SeedBankCode.java` imports curated and FCEUX-observed entry points. Ghidra auto-analysis follows their control flow. `ExportBankCode.java` writes contiguous instruction ranges with physical-bank identities to ignored `analysis\ghidra-code-ranges.tsv`.

The first runtime-seeded Ghidra pass exported 27,609 instructions in 722 ranges. A dense data region at bank `$1F:$F7F5-$F802` was falsely decoded as code, including `BCC` targets into instruction operands. Those concrete false-positive ranges are recorded in `config\code-exclusions.tsv` and rejected before generation.

### FCEUX Runtime Evidence

FCEUX 2.6.6 was used as an external runtime dependency resolved through `DW4_FCEUX` or `PATH`. Emulator distributions remain outside Git publication.

The initial per-address hook design registered 32,768 callbacks and was unusably slow. The native CDL Lua functions visible in the executable are not exposed to ordinary Lua in this build. The final tracer uses one range callback:

```lua
memory.registerexec(0x8000, 0x8000, callback)
```

It also hooks writes to `$8000-$FFFF` and models the MMC1 five-write serial register protocol, including the SUROM outer-bank bit in CHR bank 0. Each executed CPU address is recorded with its active physical PRG bank.

FCEUX changes its working directory and Lua 5.1 cannot yield through `dofile`. The launcher therefore:

- starts FCEUX from its copied runtime directory
- generates one flat Lua chunk containing configuration and tracer source
- runs a bounded profile
- merges unique bank/address observations into `analysis\fceux-exec.tsv`

Three 1,800-frame deterministic profiles (`explore`, `buttons`, and `wander`) produced 11,228 unique executed instruction starts across 16 banks. Runtime observations are imported as exact one-instruction, non-recursive evidence; adjacent bytes are not inferred solely from execution coverage.

### Current Conversion Result

After feeding runtime observations back through Ghidra and then through da65, the accepted source contains:

- 27,622 emitted instructions
- 56,184 bytes classified as code
- 16 physical banks with mnemonic assembly
- 16 physical banks still entirely represented as data because no code entry point has been proven there
- zero analyzer warnings

The untouched banks include documented graphics/map-data banks and banks not reached by the bounded scenarios. They remain byte tables intentionally; converting them linearly would manufacture false assembly.

The final Release build has zero warnings and zero errors. It produces 524,304 bytes with SHA-256 `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`, exactly matching the supplied ROM.

## Parallel Headless Ghidra Pass - 2026-09-20

The 32 physical PRG banks were divided into four non-overlapping headless-analysis shards:

- `$00-$07`
- `$08-$0F`
- `$10-$17`
- `$18-$1F`

Each shard used a distinct project name, ROM copy, Ghidra settings directory, cache directory, work directory, and output TSV. This prevented concurrent Ghidra processes from sharing writable project or OSGi state. `SeedBankCode.java` and `ExportBankCode.java` gained an optional physical-bank filter, passed as one underscore-delimited argument so Ghidra's headless parser would not split it.

The first two-bank probe (`$08,$0B`) verified that a shard exported only assigned banks. Four agents were then launched in parallel. Three completed on the first attempt. The `$18-$1F` import encountered a transient `ClosedException` during concurrent import and was rerun alone successfully. No analyzer process was left running.

Shard results:

| Shard | Instructions | Ranges | Notes |
|---|---:|---:|---|
| `$00-$07` | 0 | 0 | No curated/runtime entry points in these banks |
| `$08-$0F` | 7,706 | 147 | Added lower fixed-bank paths |
| `$10-$17` | 8,434 | 148 | Matched monolithic instruction total |
| `$18-$1F` | derived during reconciliation | 433 | Completed successfully on isolated retry |

The shard outputs were validated for field count, hexadecimal ranges, positive instruction counts, assigned-bank membership, duplicates, and overlaps. They contained 728 ranges versus 722 monolithic ranges. Per-bank comparison found:

- bank `$0F`: shard gained 332 instructions / 707 bytes
- bank `$1F`: shard lost 136 instructions / 267 bytes because cross-bank context was absent
- all other populated banks: equal instruction totals

Blind concatenation or wholesale replacement would therefore have regressed bank `$1F`. `scripts\reconcile-ghidra-shards.ps1` selects the richer valid result independently for every physical bank and rejects overlapping selected ranges. Only bank `$0F` selected its shard output; bank `$1F` retained the monolithic result.

After code exclusions, opcode/range validation, da65 generation, and exact assembly, the reconciled result is:

- bank `$0F`: 6,072 instructions / 12,494 bytes
- total: 27,934 instructions / 56,840 bytes
- analyzer warnings: none
- build warnings/errors: 0/0
- output size: 524,304 bytes
- SHA-256: `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`
- exact reference match: yes

## Physical Bank $00 Classification - 2026-09-20

Bank `$00` was investigated before attempting any linear disassembly. It has no execution observations and no valid code entry point, but that alone did not establish its purpose. The controlling evidence came from the fixed-bank stream reader and bank `$16` decoder.

### Stream Reader

The fixed-bank routine at `$DF7A`:

1. saves the current PRG bank
2. selects the physical bank in RAM `$51`
3. reads three bytes through pointer `$49/$4A` into `$98-$9A`
4. restores the prior PRG bank

Its pointer increment helper rolls over at CPU address `$BFD8`, not `$C000`. For physical banks `$00-$03`, rollover selects the next bank and resets the pointer to `$8000`. After bank `$04`, the stream continues through banks `$1A/$1B`. The final 40 bytes of banks `$00-$04` are therefore excluded from the stream.

### Text Index And Huffman Decoder

Bank `$16:$874C` maps a text ID to a two-byte pointer in the table at `$8951`. The text ID is divided into groups of 32. Thresholds at `$8A01` map groups as follows:

- groups `$00-$19`: bank `$00`
- groups `$1A-$27`: bank `$01`
- groups `$28-$35`: bank `$02`
- groups `$36-$40`: bank `$03`
- groups `$41-$4A`: bank `$04`
- groups `$4B-$55`: bank `$1A`
- groups `$56-$57`: bank `$1B`

Bank `$16:$87A8` consumes the `$98-$9A` buffer most-significant-bit first. Each bit selects one of two 93-byte node tables at `$87D8` and `$8835`, starting at node `$5C`. A selected value with bit 7 set is a leaf and emits `value & $7F`; symbol `$46` terminates a message.

This is a binary-tree Huffman decoder for dialogue. The decoded text is coherent English and includes combat messages, status effects, equipment/inventory prompts, shops, and NPC dialogue. This rules out executable code, graphics, map compression, and audio for bank `$00`.

### Decoder Result

`TextDecoder.cs` now decodes bank `$00` during `Dw4Tool extract`:

- 26 groups (`$00-$19`)
- 32 messages per group
- 832 total message IDs
- zero missing terminators or invalid tree nodes
- exact stream rollover from bank `$00:$BFD7` to bank `$01:$8000`

The output files are:

- `analysis\text-bank-00.tsv`: IDs, groups, pointers, bit ranges, raw symbols, and rendered text
- `analysis\text-bank-00.md`: readable message listing
- `src\banks\bank_00.asm`: compressed bytes with group labels and decoded text comments

The first messages include `The wagon isn't here.`, `Not enough MP.`, and battle-result strings. The final group contains shop dialogue and crosses into bank `$01` exactly as the ROM reader does.

Known characters and punctuation are rendered as ASCII. Unresolved symbols remain explicit `<XX>` tokens. Frequent values `$47-$4C` are clearly substitutions/control operations (for example numbers, item/entity names, conditional pluralization, and formatting), but they are not assigned final names until their handlers are fully traced.

The bank footer is separately labeled:

- `$BFD8`: compatibility reset stub/stream rollover boundary
- `$BFE0`: ` DRAGON QUEST IV` title signature
- `$BFFA`: three vectors targeting `$BFD8`

Adding labels and comments does not change the compressed payload. The rebuilt ROM remains byte-identical.

A separate Visual Studio 2026 `Debug|x64` build was also completed. Before the explicit-conversion cleanup it produced nine C4244/C4267 warnings inherited from asm6f; after the bounded casts and `size_t` correction, both Debug and Release rebuild with zero warnings and zero errors. Both configurations produce a 524,304-byte ROM with the exact reference SHA-256.

## All-Bank Classification Pass - 2026-09-20

The next pass classified every physical PRG bank before adding semantic labels. The resulting concise map is `BANK_MAP.md`; the detailed evidence and important cautions are recorded here.

### Verified Bank Entry Directories

The fixed-bank IRQ/BRK dispatcher treats the two bytes following a `BRK` as a bank-local service request. The first byte selects an entry in a little-endian pointer directory at CPU `$8000`; the encoded second byte selects the physical bank and call mode. This explains why many switchable banks begin with pointers and why their code was invisible to vector-only recursive analysis.

`config\code-entry-tables.tsv` now records verified directory bounds. `Dw4Tool` and Ghidra both read this file and seed only in-window, non-null targets. The currently registered directories are:

| Bank | Range | Entries | Broad subsystem |
|---|---|---:|---|
| `$08` | `$8000-$803B` | 30 | map tile and tileset services |
| `$0E` | `$8000-$8007` | 4 | graphics and palette services |
| `$10` | `$8000-$807F` | 64 | battle-side party/status services |
| `$11` | `$8000-$8031` | 25 | battle action/state services |
| `$12` | `$8000-$8063` | 50 | battle setup/combat services |
| `$13` | `$8000-$8037` | 28 | battle presentation/state routing |
| `$14` | `$8000-$8033` | 26 | battle turn engine |
| `$15` | `$8000-$8033` | 26 | item/effect scripts and inventory |
| `$16` | `$8000-$8027` | 20 | text and UI services |
| `$17` | `$8000-$804B` | 38 | map services and information |
| `$18` | `$8000-$8045` | 35 | mixed battle data/code directory |
| `$19` | `$8000-$8013` | 10 | map/tileset asset selection |
| `$1B` | `$8000-$801F` | 16 | mixed map-event services and text overlay |
| `$1C` | `$8000-$802B` | 22 | mixed map/entity services |
| `$1E` | `$8000-$808F` | 72 | map interaction and movement services |

Bank `$10:$8080` is a coherent wrapper immediately after its directory but is not itself a directory target, so it has a separate direct seed. Bank `$18` demonstrates why directory parsing must still be conservative: entry `$0A` points to a record table at `$8046`, not executable code.

After these targets were integrated, static output initially reached 42,191 instructions / 84,800 bytes across 19 physical banks. Subsequent exclusion fixes, BRK-aware continuation analysis, inline-call handling, nested dispatch-table recovery, and missing-directory registration produced the current result of 62,799 instructions occupying 125,270 unique PRG byte positions across 18 banks.

`config\bank-classifications.tsv` records one Verified dominant classification for each of the 32 physical banks, so dominant PRG classification is 524,288 / 524,288 bytes (100%). `config\content-ranges.tsv` supplies the more granular bounded data classifications. `Dw4Tool extract` unions those ranges with unique instruction-byte positions and writes `analysis\classification-report.txt`. Detailed classification is 444,702 / 524,288 PRG bytes (84.82%): 125,270 instruction bytes, 320,998 ranged data bytes, and 1,566 intentional dual-use bytes counted once. The remaining 79,586 bytes still need table/routine-level classification.

### Asset Banks Are Not Code-Coverage Targets

Once a bank is established as map, text, graphics, sound, or other asset data, it is excluded from machine-code analysis. Its bytes remain losslessly represented and should eventually move to a format-specific extractor/encoder; converting them to 6502 mnemonics is neither necessary nor useful. Mixed banks remain range-based: verified executable loaders, decoders, or drivers are assembly, while their asset ranges stay data.

This rule corrected a concrete false positive in physical bank `$0B`. Ghidra had linearly decoded three ranges inside the documented overworld map data (`$AF61-$B033`, `$BE1F-$BEF3`, and `$BF36-$BF7B`) as 255 instructions. The ranges were removed by classifying the complete bank as non-executable map data, and the Ghidra exporter now applies the same exclusions before reconciliation.

### Complete Huffman Text Decode

The decoder now handles all 88 groups (`$00-$57`) and all 2,816 message IDs across banks `$00-$04/$1A/$1B`. It writes `analysis\text.tsv` and one Markdown report per physical text bank.

The fixed reader's rollover behavior was reproduced exactly:

- bank `$00` -> `$01:$8000`
- bank `$01` -> `$02:$8000`
- bank `$02` -> `$03:$8000`
- bank `$03` -> `$04:$8000`
- bank `$04` -> `$1A:$8000`
- bank `$1A` -> `$1B:$8000`
- bank `$1B` -> pointer entry `$0A` at `$1B:$8014`, whose value is `$B78A`

Several groups cross those boundaries. Because the decoder fetches three-byte bit buffers, adjacent streams can share one or two source bytes:

| Group | Initial pointer | Continuation consumed |
|---|---|---|
| `$19` | `$00:$BBD8` | `$01:$8000-$8025` |
| `$26` | `$01:$BE35` | `$02:$8000-$83E4` |
| `$35` | `$02:$BCF3` | `$03:$8000-$833B` |
| `$40` | `$03:$BD2B` | `$04:$8000-$81CF` |
| `$4A` | `$04:$B904` | `$1A:$8000-$8072` |
| `$55` | `$1A:$BB5D` | `$1B:$8000-$832E` |
| `$57` | `$1B:$BF75` | `$1B:$B78A-$BCEA` through the final continuation pointer |

Bank `$1B` therefore contains genuine dual-use bytes where group `$55` overlaps the leading event directory, code, and record data. Those bytes must retain both interpretations; group `$57` instead resumes in the compressed-text tail at `$B78A`.

### Bank $05: Map Entity Records

Bank `$05:$8000-$8091` contains 73 little-endian pointers, exactly one for each map number represented by the map metadata. Bank `$1C:$9B12-$9B33` computes `CurrentMapNumber * 2 + $8000`, selects physical bank `$05`, reads the pointer through the fixed-bank generic reader, and expands the selected record into entity arrays around `$6F60-$7160`.

The pointer table and the record area beginning at `$8092` are labeled separately. Exact per-record field semantics still need to be derived; the broad NPC/entity/event role is directly established by the consumer.

### Banks $06-$07: Compressed Monster Graphics

Both banks are data-only compressed monster graphics. Standard NES 2bpp contact sheets were initially generated at byte alignment 0 and 8:

- bank `$06`: 1,024 unique tiles, zero blank tiles
- bank `$07`: 1,024 unique tiles, zero blank tiles
- shifted variants: 1,023 unique tiles, zero/one blank tile
- known raw graphics bank `$0C`: 996 unique tiles and seven blank tiles
- known raw graphics bank `$0D`: 970 unique tiles and 25 blank tiles

The bank `$06/$07` renders are high-entropy noise rather than recognizable tiles, while `$0C/$0D` render as obvious map art. Packed-pixel, interleaved-plane, and one-bitplane tests also fail. This is expected because the ROM bytes are compressed source streams rather than direct tile planes.

The direct consumer is in the battle engine in physical bank `$14`:

1. `$9F26-$9F65` selects the graphics bank from the monster ID in `$C4`. Ordinary IDs index the 25-byte MSB-first bitmap at `$B398-$B3B0`; a clear bit selects bank `$06` and a set bit selects bank `$07`. Six special IDs select embedded graphics in banks `$10/$14`.
2. `$9FA9-$9FEA` indexes `$B3B1 + monsterId * 5` and loads a five-byte descriptor: chunk count, little-endian compressed-stream pointer, and two layout bytes.
3. `$9F66-$9F8C` calls the fixed-bank helper at `$C7E1`, temporarily selects the descriptor's physical bank, and copies a 17-byte source window to `$0108-$0118`.
4. `$9F8D-$9FA8` returns the next compressed byte and advances the source pointer, refilling as needed.
5. `$9712-$9782` interprets the stream and reconstructs 16-byte bitplanes at `$0650/$0660`, then rearranges the decoded bytes at `$0670` for battle presentation.

The descriptor table has 194 records (`$00-$C1`) and occupies `$B3B1-$B77A`. It selects 124 records from bank `$06` through 46 unique stream pointers (`$8000-$BDE1`) and 64 records from bank `$07` through 23 unique pointers (`$8000-$AEA3`). All pointers are valid switchable-window addresses and none point into a compatibility footer. This traced consumer and decoded output establish both banks as `CompressedMonsterGraphics` with Verified confidence.

### Banks $10-$14: Battle System

These banks are linked by the fixed-bank service-directory ABI and shared battle RAM:

- `$10` repeatedly reads/writes party save slots and battle records, including `$72EA`, `$72E6`, and `$7274`; its services cover party membership, statistics, status, and rewards.
- `$11` manipulates battle state in `$72E7-$735C` and arena state `$6E81`; it is labeled battle action/state services.
- `$12:$8064` initializes battle globals, `$80B4` clears `$7274-$72E3`, and `$810E` copies active party combatants from `$6E45-$6E48` to battle RAM. This is direct battle setup evidence.
- `$13` routes on battle state `$6E80`, indexes combatant arrays in `$72xx/$73xx`, and maintains presentation state in `$75xx`.
- `$14` loops over active combatants in `$6E45-$6E4C`, updates per-combatant arrays `$7385/$738D/$7392`, and synchronizes with NMI. This is the battle turn engine.

The labels remain subsystem-level. Individual attack, spell, AI, and animation routines still need names.

### Bank $15: Effect Scripts And Inventory

Bank `$15` is mixed data and code:

- `$8000-$8033`: 26-entry service directory
- `$8034-$963F`: dense table-driven command streams
- `$9640-$98F7`: little-endian pointers back into those streams
- `$98F8`: interpreter entry that resolves a stream pointer and dispatches command bytes
- `$B374`: initializes the 128-byte vault/inventory storage region beginning at `$61DB`

The stream bytes are retained as data. They are not linearly disassembled.

### Bank $18: Monster Records And Fonts

Entry `$0A` of bank `$18`'s mixed directory points to `$8046`. From there, 214 consecutive records of exactly 22 bytes occupy `$8046-$92A9`. Battle setup code reads fields from this table into the documented monster/combatant RAM arrays, supporting the `MonsterRecords` classification.

The directory's remaining non-null targets produce coherent battle/arena code. To stop the data target from becoming a false `ORA ($00,X)` path, `$8046-$92A9` is in `config\code-exclusions.tsv`.

Runtime execution at `$B798` proves a separate font loader. It writes PPU address `$1000`, then emits one source byte followed by one zero byte per row through `PPUDATA`, constructing two-plane NES tiles from one-bitplane glyph data. Contact sheets confirm:

- `$B83D-$BC9C`: 140 digits, lowercase letters, punctuation, icons, and UI fragments
- `$BC9D-$BDBC`: 36 uppercase/digit glyphs

These ranges are also excluded from code seeding. An isolated Ghidra shard seeded 30 valid directory targets, exported 29 code ranges, and produced zero overlap with either verified data range.

### Banks $19 And $1B-$1E

- `$19` is now fully detailed. Map/tileset selection occupies `$8000-$814D`; 54 four-channel audio pointer records occupy `$814E-$82FD`; 54 external sequence-bank selectors occupy `$82FE-$8333`; audio sequence, instrument, envelope, and effect data runs through `$BF7D`; padding and the compatibility footer complete the bank.
- `$1B` combines map-local event/entity code with the dual-use text overlays described above.
- `$1C:$9B12` is the proven consumer of bank `$05` map-entity records. The bank also contains a mixed directory, structured event data, and map/entity service code.
- `$1D` manipulates map coordinates, entity arrays `$6F60-$71FF`, event state, and scripted transitions.
- `$1E` has a 72-entry service directory followed by map interaction, movement, collision, and entity-event code.

The source labels identify these broad boundaries without claiming that every field or routine inside the mixed banks is understood.

## Detailed Backlog Pass - 2026-09-20

The first largest-range pass increased detailed classification from 356,174 bytes (67.93%) to 380,162 bytes (72.51%), a gain of 23,988 bytes. The remaining detailed backlog is 144,126 bytes in 1,217 exact intervals.

### Bank $19 Completion

Bank `$19` moved from 1.37% to 100% detailed classification:

- `$804D-$804F`, `$806C-$806E`, `$80C9-$80CB`, and `$80F2-$80F4` are inline operands consumed by the fixed-bank `$x3/$xB` BRK modes. Their continuation addresses were added as code seeds.
- `$810B-$814D` contains map, submap, chapter, and tileset lookup data.
- `$814E-$82FD` contains 54 eight-byte records, each holding four audio-channel sequence pointers.
- `$82FE-$8333` contains 54 external sequence-bank selectors used by the fixed audio engine.
- `$8334-$BF7D` contains audio sequence, instrument, envelope, and effect data.
- `$BF7E-$BFD7` is `$FF` padding; `$BFD8-$BFFF` is the compatibility footer.

### Bank $14 Metadata

Detailed coverage in bank `$14` reached 52.94%. The pass bounded:

- seven nested battle-presentation pointers at `$A40D-$A41A`
- the monster identifier ordering table at `$B2D5-$B397`
- the 25-byte monster graphics bank bitmap at `$B398-$B3B0`
- 194 five-byte monster graphics descriptors at `$B3B1-$B77A`

An initial eight-entry interpretation of `$A40D` was rejected because `$A41B` is the first handler, not another pointer. The seven-entry boundary preserves that code path.

### Bank $08 Tile Data

Detailed coverage in bank `$08` reached 84.20%. The verified continuous tile-data domain now includes:

- runtime-read auxiliary map/tile records at `$979B-$A1BA`
- special tile-pattern data at `$A1E5-$A28C`
- 176 records of four graphics pointers at `$A28D-$A80C`
- three-byte logical tile definitions at `$A80D-$AEB6`
- 22 animated-tile pointers at `$AEB7-$AEE2`

The apparent code starts at `$979B/$A80D` were pointer-directory data targets and are now excluded from instruction analysis.

## BRK And Dispatch Backlog Pass - 2026-09-20

The continuation pass raised detailed classification from 380,162 bytes (72.51%) to 435,634 bytes (83.09%), a gain of 55,472 bytes. The remaining backlog is 88,654 bytes.

- `CodeAnalyzer` now resumes switchable-bank BRK service calls, learning two- versus three-byte operand counts only from verified `InlineServiceOperands` ranges. Recursive paths stop at declared code exclusions.
- Bank `$11`'s fixed helper at `$BF2E` was decoded as a JSR ABI that consumes one byte after the call and advances the stacked return address. Handling that ABI and the nested dispatch tables at `$8FDC/$A40A` raised bank `$11` to 93.96%.
- Bank `$17` reached 100% detailed coverage after separating BRK operands, UI templates, PPU descriptors, CHR-RAM graphics, map patterns, animation command streams, padding, and the compatibility footer.
- Bank `$08` reached 96.31% after bounding per-map routing records, transition records, the variable map/submap stream, coordinate records, padding, and the footer.
- Bank `$1C` reached 78.14% after recovering its 74-entry map/submap handler table at `$AC8A` and 51-entry event table at `$BF4B`.

A subsequent bank `$1B` asset pass classified 2,246 additional byte positions. Code at `$9485-$95A7` proves a 23-byte OAM tile-ID table at `$95C9`, seven 25-byte sprite layouts at `$95E0`, and their selection formula. The aligned `$9690-$9E8F` block renders as 128 coherent raw NES 2bpp sprite tiles in `analysis\bank1b-9690-9e8f-tiles.png`. Its final zero byte is intentionally dual-use as the verified BRK entry at `$9E8F`.

## Review Checkpoint - 2026-09-20

This checkpoint stops at 444,702 detailed bytes (84.82%), with 79,586 bytes unclassified. No range from the in-progress bank `$14` compressed-graphics investigation was promoted.

- `ConvertDa65Output` now preserves da65 interior aliases written as `Name := * + n`, converting them to asm6f-compatible `Name = $ + n`. Regenerated source and the native Release build again reproduce the exact reference ROM.
- Bank `$16:$A4FF-$AAF6` is split into the directly consumed text/UI pointer base, 113-entry record directory, command directories, dispatch tables, and variable interpreter records.
- Bank `$18:$92AA-$9959` contains 107 fixed-size 16-byte encounter records. Every one of the 1,498 list slots is either a valid monster ID `$00-$D5` or sentinel `$FF`.
- Bank `$18:$A27B-$A812` contains encounter-rate and weight tables, 35 eight-byte battle formations, a 73-entry map stride table, three 256-byte world encounter grids, two map-keyed encounter streams, and the battle-data pointer used at `$A876`.
- Registering bank `$1D`'s verified 21-entry service directory recovered its previously omitted map-transition code. Pointers at `$925A/$944E` prove NMI callback continuations at `$9273/$9467`; their motion and PPU tables are typed separately.
- Bank `$14:$B77B-$BCFF` appears to participate in an 81-entry compressed graphics stream corpus selected through `$B1BA`, but stream consumption and the dual-use boundary across code at `$BD00` are not yet bounded. It remains unclassified for review.

From the preceding 83.52% checkpoint, this pass added 6,822 detailed byte positions: 1,970 instruction bytes and 4,854 ranged-data bytes, with two new dual-use positions. The exact 524,304-byte build remains the acceptance gate.

No broad unknown ranges were added. Orphaned opcode-like regions such as bank `$13:$9276-$A4E7` remain unclassified because no verified control-flow edge or runtime seed reaches them.

### Remaining Priority At That Checkpoint

The largest current unclassified intervals are:

| Bank and range | Bytes |
|---|---:|
| `$13:$9276-$A4E7` | 4,722 |
| `$12:$AF89-$B520` | 1,432 |
| `$14:$B77B-$BCFF` | 1,413 |
| `$0F:$F625-$FABD` | 1,177 |
| `$12:$8A36-$8EAC` | 1,143 |
| `$12:$97A9-$9BFC` | 1,108 |
| `$13:$A9C0-$AE10` | 1,105 |
| `$10:$A701-$AB4E` | 1,102 |
| `$1D:$870F-$8B1D` | 1,039 |
| `$0F:$FB6C-$FF73` | 1,032 |

These intervals remain unclassified at table/routine granularity. Their containing banks still retain Verified dominant classifications; no range is promoted merely to increase the percentage.

## Completion Gate Milestone - 2026-09-21

`verify-completion.cmd` now enforces the project-wide evidence gate:

- all 143 original unsupported-opcode/data-walk cases remain accounted for, and 45 additional warnings exposed by later control-flow recovery are also classified
- all 1,955 pointer entries have verified boundaries; all 1,871 executable targets decode, and all 42 currently decoded indirect jumps have reviewed dispositions
- all 7,123 former `BankXX_Code_XXXX` labels are replaced by subsystem-qualified entry or branch labels while curated semantic labels take precedence
- 3,992 pointer-, call-, or seed-proven routine starts have generated register/memory/call interfaces; 35 high-confidence routines additionally have extraction-validated semantic contracts
- 26 manifest slices cover text, maps, graphics, palettes, and audio and round-trip to the exact ROM hash
- FCEUX evidence passes 12 assertions across startup, banking, menus, maps, battle, text, save/load initialization, audio, and graphics
- SRAM tracing observes complete writes for 15 named fields and the contiguous `$6001-$62EE` initialization span; recovered code uses battery SRAM directly and contains no verified separate serializer or checksum pass
- the final 524,304-byte ROM matches SHA-256 `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`

The current totals, per-bank backlog, and semantic completion definition now live only in [STATUS.md](STATUS.md). The gate deliberately does not inflate semantic coverage by guessing.

## Largest Unclassified Block Pass - 2026-09-22

Bank `$14:$A111-$A3F0` is exactly 46 aligned 16-byte NES 2bpp tiles. A standard planar render produces coherent mirrored forms, expected blank tiles, and multi-tile artwork rather than the high-entropy noise seen when compressed streams are rendered directly. This satisfies the graphics-evidence rule even though no static pointer or captured runtime read currently identifies the consumer.

The range is now typed as raw battle graphics. Detailed classification increased by 736 bytes to 503,805 / 524,288 (96.09%), leaving 20,483 bytes in 703 ranges. The exact-ROM completion gate continues to pass.

The descending pass then established four additional data domains:

- Bank `$10:$BD2A-$BF53` is the compressed monster stream selected for monster ID `$B1` by descriptor `$14:$B726`; `$BF54-$BFD7` is contiguous `$FF` padding.
- Bank `$12:$8A36-$8EAC` contains two 139-byte selector maps addressed through `$848F`, followed by variable setup records parsed from pointer `$8BBC`. Correcting the nested handler table from `$8491` to seven entries at `$8493` removed the false executable target at `$8AC1`.
- Five special monster descriptors select bank `$14` and stream pointer `$BE53`; `$BE4F-$BE52` holds four consumed destination offsets, `$BE53-$BFCF` is compressed graphics, and `$BFD0-$BFD7` is padding.
- Bank `$13:$B80B-$B90A` is a full 256-byte battle-presentation lookup page with several direct indexed consumers and verified code beginning at `$B90B`.

Together these classifications reduced the original backlog by 3,174 bytes. Detailed coverage is now 506,243 / 524,288 (96.56%), leaving 18,045 bytes in 696 ranges. The completion gate still reproduces the exact ROM.