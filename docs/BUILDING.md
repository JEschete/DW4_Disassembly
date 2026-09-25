# Building And Analysis

## Prerequisites

- Windows
- Git with submodule support
- Visual Studio with MSBuild and the Desktop development with C++ workload
- .NET SDK 10 or newer
- A legally obtained reference ROM for extraction and verification

Initialize third-party source after cloning:

```bat
git submodule update --init --recursive
```

## Environment Variables

No script depends on a machine-specific drive path.

| Variable | Purpose |
|---|---|
| `DW4_ROM` | Reference ROM used by extraction and the completion gate |
| `GHIDRA_HOME` | Ghidra installation root containing `support\analyzeHeadless.bat` |
| `DW4_FCEUX` | FCEUX executable used for runtime tracing |
| `DW4_FCEUX_CONFIG` | Optional base FCEUX configuration; defaults beside the executable |

Equivalent command parameters are available on the PowerShell scripts. Explicit parameters take precedence over environment variables.

## Build

Tracked assembly does not require the reference ROM:

```bat
build.cmd
```

The solution builds the locally modified asm6f source, assembles `src\dragon-warrior-iv.asm`, and verifies `build\Release\Dragon Warrior IV (USA).nes` against the expected SHA-256.

## Regenerate Bank Assembly

```bat
set DW4_ROM=<path-to-reference-rom>
extract.cmd
```

`extract.cmd` builds da65 from the pinned `third_party\cc65` submodule, runs `Dw4Tool`, regenerates all 32 files under `src\banks`, and refreshes generated analysis reports. The reference ROM is validated before extraction and is never copied into Git.

A path may be supplied directly instead:

```bat
extract.cmd <path-to-reference-rom>
```

## Full Acceptance Gate

```bat
set DW4_ROM=<path-to-reference-rom>
verify-completion.cmd
```

The gate performs asset round-trip verification and exact-source extraction. Extraction enforces the inline-operand ABI against causal runtime resumes when available, the warning ledger and tamper-evident manifest, the exact intentional code/data-overlap ledger, block-atomic Ghidra rejection, and evidence citations. The gate then runs pointer and indirect-jump audits and runtime/save evidence checks, and finishes with a clean build and exact ROM verification.

## Optional Static Analysis

Set `DW4_ROM` and `GHIDRA_HOME`, then run:

```bat
scripts\analyze-ghidra.cmd
```

Ghidra projects and temporary binaries are created under ignored `work\` paths. Reconciled instruction ranges are written to `analysis\ghidra-code-ranges.tsv`.

## Optional Runtime Tracing

Install FCEUX and set `DW4_FCEUX`. Set `DW4_FCEUX_CONFIG` only when the default configuration beside the executable is unsuitable.

```bat
scripts\trace-fceux.cmd "%DW4_ROM%" 1800 explore
scripts\trace-fceux.cmd "%DW4_ROM%" 1800 buttons
scripts\trace-fceux.cmd "%DW4_ROM%" 1800 wander
```

Runtime traces merge into the tracked `analysis\fceux-*.tsv` evidence files. Emulator binaries, saves, screenshots, and temporary configurations remain ignored.

## Clean Checkout Validation

A publishable checkout should satisfy:

```bat
git submodule update --init --recursive
build.cmd
verify-completion.cmd
```

The final command requires `DW4_ROM`. Neither command should require repository-external source trees or hardcoded local drive paths.
