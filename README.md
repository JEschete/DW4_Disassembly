# Dragon Warrior IV (USA) NES Disassembly

A byte-exact, bank-oriented disassembly of Dragon Warrior IV for the NES. The repository contains all 32 physical PRG banks as tracked assembly and rebuilds the exact reference image without storing ROM files.

## Reference Image

- SHA-256: `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`
- Format: NES 2.0
- Mapper: Nintendo MMC1, mapper 1, submapper 0
- PRG ROM: 512 KiB in 32 banks of 16 KiB
- CHR ROM: none; the cartridge declares 8 KiB CHR RAM

The fixed `$C000-$FFFF` banks are physical banks `$0F` and `$1F` for the two SUROM outer regions. All other banks map into `$8000-$BFFF`.

## Current Metrics

- Reassemblable assembly: 100% (verified: build reproduces SHA-256 `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`)
- Detailed semantic classification: 100% (524,288 / 524,288) - Done
- Verified instruction bytes: 163,493 (31.18%)
- Explicitly ranged data bytes: 361,317 (68.92%)
- Dual-use code/data overlap: 522 bytes (0.10%)
- Curated code/function labels: 4,572
- Meaningfully named routines: 4,562/4,562 (100%)
- Semantic contracts: 37/4,562 (0.81%)
- Pointer recovery, indirect-jump audit, and analyzer-warning disposition: 100%
- Current analyzer warnings and control-flow conflicts: 0
- Structured asset encoders: 0/5 complete

## Routine Naming Backlog

`Named` counts curated code/function/interrupt/vector labels that coincide with an entry in
`analysis/routine-interfaces.tsv`. `Remaining %` uses each bank's routine count as its denominator. Pure-data banks
have no routine interfaces and report `n/a`.

The 2026-09-28 audit checked all 2,354 routine interfaces in banks `$00-$15` against generated ASM and interface
evidence. A follow-up control-flow pass added absolute JMP trampolines and bounded tail-call targets, increasing the
all-bank inventory from 4,315 to 4,562 routines. The strengthened semantic-name review reports zero generated,
numeric-operand, stacked-jargon, broad-prefix, generic-name-with-direct-battle-message, audio-only display-name,
Dormant-with-callers, failure-framed-name-with-direct-battle-message, duplicate-address, duplicate-global-name, or
byte-identical fixed-bank semantic-mismatch findings.

The corrective audio audit decoded bank `$19` entries `$02-$09` as APU reset, track start, completion flags,
flagged track start, global audio setting, completion wait, map-track selection, and map-music playback. Battle,
casino, poker, item-effect, and map-event callers now use sound, jingle, narration, or map-music names instead of
presentation, marker, glyph, palette, setup-hook, or raw-BRK terminology.

The corrective field/story audit registered selector `$D3` as the battle-message ABI and `$04,$6F` as direct field
message output. Bank `$12:$9300-$B5FF` now distinguishes item use, field spells, Adventure Log handling, level
growth and spell learning, the Lighthouse fire scene, and neutral transition/operation helpers whose ownership is
not proven. Story scenes in banks `$1C-$1E` use evidenced in-game events, chapter names use displayed values 1-5,
and reviewed byte-identical `$0F/$1F` routines share one semantic stem.

The fifth corrective naming pass names core battle routines for their main path instead of one failure branch,
standardizes `$7361-$7362` as `BattleDamageAmountLow-High`, and identifies the battle command menu without
guessing the two still-unverified command identities. Sparse overrides in `config/generated-label-ranges.tsv`
assign generated helpers by evidenced address range before falling back to each bank's dominant classification;
this corrected 335 bank `$12` and 293 bank `$17` generated labels. The pass also identifies the seven-routine
battle fly-away block and replaces roughly 40 mechanical field, service, and story names using decoded text and
main-path control flow.

The 2026-09-28 naming pass completed banks `$16-$1F`. Every bank now has zero generated routine-entry names in
both generated assembly and the routine-interface inventory.

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

## Quick Start

Clone with submodules and build from tracked source:

```bat
git clone --recurse-submodules <repository-url>
cd DragonWarrior4
build.cmd
```

The resulting ROM is written to `build\Release\Dragon Warrior IV (USA).nes` and verified against the reference SHA-256.

Regenerating bank assembly or running the full evidence gate requires a legally obtained reference ROM:

```bat
set DW4_ROM=<path-to-reference-rom>
extract.cmd
verify-completion.cmd
```

See [docs/BUILDING.md](docs/BUILDING.md) for prerequisites, environment variables, analysis tools, and clean-checkout workflows.

## Repository Layout

| Path | Purpose |
|---|---|
| `src/` | Exact assembly source, constants, and 32 generated bank files |
| `config/` | Curated classification, labels, pointer, contract, and verification ledgers |
| `analysis/` | Tracked generated evidence and reports used by the acceptance gate |
| `scripts/` | Extraction, runtime tracing, static analysis, and verification workflows |
| `tools/Dw4Tool/` | Project-specific extraction and analysis tool |
| `tools/asm6f/` | Locally modified asm6f source required for exact assembly |
| `third_party/cc65/` | Pinned upstream cc65 submodule used to build da65 |
| `docs/` | Project documentation, current status, bank map, and engineering journal |

See [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md) for ownership and generated-file boundaries.

## Documentation

- [Documentation index](docs/README.md)
- [Current status](docs/STATUS.md)
- [Physical PRG bank map](docs/BANK_MAP.md)
- [Build and analysis guide](docs/BUILDING.md)
- [Toolchain provenance](docs/TOOLCHAIN.md)
- [Decompilation journal](docs/DECOMPILATION_NOTES.md)

## Acceptance Gate

`verify-completion.cmd` regenerates bank assembly, verifies warning and pointer ledgers, checks runtime and save evidence, round-trips every bounded asset class, rebuilds the ROM, and requires an exact SHA-256 match.

ROM images, save files, patches, extracted asset payloads, build products, and local third-party application installations are intentionally excluded from Git.
