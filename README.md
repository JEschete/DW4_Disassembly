# Dragon Warrior IV (USA) NES Disassembly

A byte-exact, bank-oriented disassembly of Dragon Warrior IV for the NES. The repository contains all 32 physical PRG banks as tracked assembly and rebuilds the exact reference image without storing ROM files.

## Reference Image

- SHA-256: `373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A`
- Format: NES 2.0
- Mapper: Nintendo MMC1, mapper 1, submapper 0
- PRG ROM: 512 KiB in 32 banks of 16 KiB
- CHR ROM: none; the cartridge declares 8 KiB CHR RAM

The fixed `$C000-$FFFF` banks are physical banks `$0F` and `$1F` for the two SUROM outer regions. All other banks map into `$8000-$BFFF`.

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
