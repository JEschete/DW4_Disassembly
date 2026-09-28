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
- Remaining unclassified: 0 bytes - Done
- Verified instruction bytes: 163,493 (31.18%)
- Explicitly ranged data bytes: 361,317 (68.92%)
- Dual-use code/data overlap: 522 bytes (0.10%)
- Meaningfully named routines: 2,445/4,315 (56.66%)
- Routines remaining to label: 1,870/4,315 (43.34%)
- Semantic contracts: 37/4,315 (0.86%)
- Pointer recovery, indirect-jump audit, and analyzer-warning disposition: 100%
- Current analyzer warnings and control-flow conflicts: 0
- Structured asset encoders: 0/5 complete

## Routine Naming Backlog

`Named` counts curated code/function/interrupt/vector labels that coincide with an entry in
`analysis/routine-interfaces.tsv`. `Remaining %` uses each bank's routine count as its denominator. Pure-data banks
have no routine interfaces and report `n/a`.

The 2026-09-28 audit checked all 2,229 routine interfaces in banks `$00-$15` against generated ASM and interface
evidence, with direct review of 102 high-risk generic or numeric names. Its final result had zero review flags,
duplicate addresses, or duplicate global names.

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
| `$08` | 77 | 77 | 0 | 0.00% |
| `$09` | 0 | 0 | 0 | n/a |
| `$0A` | 0 | 0 | 0 | n/a |
| `$0B` | 10 | 10 | 0 | 0.00% |
| `$0C` | 0 | 0 | 0 | n/a |
| `$0D` | 0 | 0 | 0 | n/a |
| `$0E` | 6 | 6 | 0 | 0.00% |
| `$0F` | 323 | 323 | 0 | 0.00% |
| `$10` | 374 | 374 | 0 | 0.00% |
| `$11` | 367 | 367 | 0 | 0.00% |
| `$12` | 271 | 271 | 0 | 0.00% |
| `$13` | 371 | 371 | 0 | 0.00% |
| `$14` | 185 | 185 | 0 | 0.00% |
| `$15` | 245 | 245 | 0 | 0.00% |
| `$16` | 28 | 386 | 358 | 92.75% |
| `$17` | 10 | 245 | 235 | 95.92% |
| `$18` | 1 | 90 | 89 | 98.89% |
| `$19` | 12 | 12 | 0 | 0.00% |
| `$1A` | 0 | 0 | 0 | n/a |
| `$1B` | 5 | 172 | 167 | 97.09% |
| `$1C` | 8 | 219 | 211 | 96.35% |
| `$1D` | 10 | 309 | 299 | 96.76% |
| `$1E` | 8 | 326 | 318 | 97.55% |
| `$1F` | 134 | 327 | 193 | 59.02% |

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
