# Toolchain Provenance

## asm6f

- Upstream: <https://github.com/freem/asm6f>
- Compared upstream revision: `fd03633e7bf2612d7485280b291f9089197ae74b`
- Repository location: `tools/asm6f/`
- Integration: vendored modified source

The project source differs from the clean upstream checkout. Changes provide Visual Studio C17 compatibility, including portable variadic macros, `PATH_MAX` handling, and explicit narrowing conversions. Because these are local modifications, asm6f is intentionally not represented as an upstream submodule. Its license is tracked beside the source.

## cc65 / da65

- Upstream: <https://github.com/cc65/cc65>
- Pinned revision: `e11fb5c39371046ebe25485f984f644c5a0d65d3`
- Repository location: `third_party/cc65/`
- Integration: pinned Git submodule

The submodule matches the clean upstream checkout used during development. `scripts/ensure-da65.ps1` builds the `common` and `da65` Visual Studio projects with the repository toolset and writes the ignored executable to `tools/da65/da65.exe`. No opaque da65 binary is tracked.

## Dw4Tool

- Repository location: `tools/Dw4Tool/`
- Integration: project-owned source

Dw4Tool validates the reference image, performs code and content analysis, decodes text, generates bank assembly and reports, verifies exact output, and round-trips bounded asset slices.

## FCEUX

- Upstream: <https://github.com/TASEmulators/fceux>
- Integration: external runtime dependency

FCEUX 2.6.6 is a complete emulator application rather than a source library needed to build the disassembly. The trace workflow resolves it from `-Fceux`, `DW4_FCEUX`, or `PATH`; no emulator distribution is copied into or tracked by this repository.

## Ghidra

- Upstream: <https://github.com/NationalSecurityAgency/ghidra>
- Integration: external analysis dependency

Ghidra 12.1.3 is optional and is resolved from `-GhidraHome` or `GHIDRA_HOME`. Project-owned headless scripts live under `scripts/ghidra/`. Ghidra installations and temporary projects are not tracked.

## Policy

- Clean, source-level dependencies required for reproducible project output may be pinned as submodules.
- Locally modified third-party source remains vendored with its license and modifications documented.
- Full external applications used only for optional analysis remain environment-resolved dependencies.
- Prebuilt third-party binaries are not tracked when a pinned source build is practical.
