# Control-Flow Conflict Investigation Plan

## Strategy
Instead of blanket exclusions, investigate each conflict's root cause and apply targeted fixes:
- Ghidra seed boundary misalignment (1-2 byte off) → adjust seed
- Ghidra false positive (seed on operand byte) → filter the seed
- Real code in unclassified gap → add entry point + content range
- Legitimate forward-trace collision → document as acceptable artifact

## Findings from Investigation

### Test: Disable Ghidra Seeds
- **With Ghidra**: 57,620 instructions, 18 conflicts
- **Without Ghidra**: 51,739 instructions, 15 conflicts
- **Conclusion**: Ghidra contributes ~6,000 instructions (10% of coverage) but causes 3 false-positive conflicts

Eliminated by disabling Ghidra:
- bank $0F: $CE4D
- bank $1D: $B92C
- bank $1E: $A9C6

Remaining 15 conflicts are from explicit seeds, FCEUX, and forward-traced targets.

---

## Bank-by-Bank Investigation

### Bank $1C: 12 conflicts → ✅ RESOLVED
**Approach**: Excluded data-heavy regions (`$A000-$A04B`, `$A0C0-$ABF5`, `$B9AA-$C000`)
**Status**: Complete; Bank $1C is 79% data, exclusions are justified

### Bank $11: 10 conflicts → ✅ RESOLVED
**Conflicts**: $8BFC, $9933, $9C68, $AA86, $AC29, $B09C, $B11A, $B19E, $B1CB, $B1F5
**Context**: Battle action/state services (highly code-dense)
**Known ranges**: 44 documented data ranges (BattleActionIds, BattleHandlerPointers, etc.)
**Unclassified gaps**: Conflicts cluster in 4 gap regions

**Finding**: All ten conflicts were operand bytes of branch, JSR, or JMP instructions. Ghidra misidentified those operand bytes as entry points.

**Resolution**: Added targeted operand-byte exclusions to `config/code-exclusions.tsv` and verified that no Bank $11 conflicts remain.

### Bank $10: 2 conflicts → ✅ RESOLVED
**Conflicts**: $8B5D (operand of ora instruction), $8B66 (inline data byte)
**Pattern**: `jsr $8C18` followed by inline operand bytes
**Root cause**: Ghidra or FCEUX seed landing on inline operand
**Resolution**: Added targeted exclusions for the JSR service operands and verified that no Bank $10 conflicts remain.

**Example disassembly**:
```
$8B59: jsr $8C18
$8B5C: ora ($60,x)     ← $8B5D is operand byte 2
$8B5E: jsr $8C18
$8B61: brk
$8B62: db $60
$8B63: jsr $8C18
$8B66: db $02          ← $8B66 is inline operand
$8B67: rts
```

### Bank $0F: 1 conflict ($CE4D) → ⚠️ GHIDRA ONLY
**Status**: Ghidra false positive; eliminated when Ghidra disabled
**Action**: Accept as known Ghidra limitation or investigate further

### Bank $12: 1 conflict ($84DC) → ✅ RESOLVED
**Context**: Battle setup/combat services
**Known range**: Only $8000-$8064 (service directory)
**Finding**: `$84DC` is an operand byte of the branch at `$84CE`.

**Resolution**: Added a targeted exclusion and verified that the conflict is gone.

### Bank $16: 1 conflict ($8896) → ✅ RESOLVED
**Context**: Text/menu services
**Gap**: Between Huffman tree ($87D8-$8892) and text pointers ($8951-$8A08)
**Finding**: `$8896` is the operand byte of the branch at `$8895`.

**Resolution**: Added a targeted exclusion and verified that the conflict is gone.

### Bank $1D: 1 conflict ($B92C) → ⚠️ GHIDRA ONLY
**Status**: Ghidra false positive; eliminated when Ghidra disabled
**Action**: Accept as known Ghidra limitation

### Bank $1E: 1 conflict ($A9C6) → ⚠️ GHIDRA ONLY
**Status**: Ghidra false positive; eliminated when Ghidra disabled
**Action**: Accept as known Ghidra limitation

### Bank $1F: 1 conflict ($C700) → ✅ RESOLVED
**Context**: Fixed engine/kernel bank
**Known ranges**: Only high-address data ($F7F5-$F7F8, $F7FB-$F803)
**Finding**: `$C700` is an operand byte that Ghidra misidentified as an entry point.

**Resolution**: Added a targeted exclusion and verified that the conflict is gone.

---

## Recommended Next Actions

### Phase 1: Accept Ghidra Limitations ✅
- 3 conflicts ($0F:$CE4C, $1D:$B92C, $1E:$A9C6) are Ghidra-only false positives
- Document as "Known Ghidra static analysis limitations"
- Accept 18 → 15 conflict reduction if we disable Ghidra (trade-off: lose 10% code coverage)
- **Recommendation**: Keep Ghidra enabled for coverage; document these 3 as acceptable artifacts

### Phase 2: Fix Bank $10 Inline Operands ✅
- Added targeted exclusions for inline operand bytes after `jsr` instructions
- Conflicts at `$8B5D` and `$8B66` are resolved

### Phase 3: Investigate Bank $11, $12, $16, $1F Gaps ✅
- Sampled each conflict in generated assembly
- Classified every conflict as an operand-byte collision
- Added targeted exclusions to `config/code-exclusions.tsv`
- Verified the report contains no conflicts in these banks

### Phase 4: Accept Remaining Conflicts as Artifacts ✅
- Document the three Ghidra-only conflicts as known static-analysis limitations
- Keep them visible in reports so future seed improvements can be measured
- Do not suppress them with broad exclusions

---

## Metrics Post-Investigation

- **Baseline (Session Start)**: 30 conflicts
- **Current State**: 3 conflicts, all Ghidra-only artifacts
- **Target**: 3 conflicts while retaining Ghidra's approximately 6,000-instruction coverage contribution
- **Acceptable Trade-Off**: 15 conflicts if Ghidra is disabled, with approximately 10% less recovered instruction coverage

---

## Next Phase: Unsupported-Opcode And Data-Walk Triage

The conflict backlog is complete enough to move on. The current report contains 143 unsupported-opcode/data-walk warnings, including 60 in Bank $11. These warnings are not automatically defects: many are expected when a control-flow path enters compressed data, inline service operands, or an untyped table.

The next phase is to classify warnings in bounded bank-local batches:

1. Check each warning against `config/content-ranges.tsv` and `config/code-exclusions.tsv`.
2. If the warning is in data, add or refine the smallest verified range.
3. If it is in executable code, identify the missing entry point or indirect target before adding a seed.
4. If it is a legitimate decoder/data walk, record the reason and leave the bytes out of code coverage.
5. Re-run extraction and the exact ROM build after each batch.

Completion for this phase means every warning is classified as verified code, verified data, intentional decoder/data walk, or unresolved investigation item. A zero-warning report is not required if the remaining warnings are evidence-backed data walks.

### Current Warning Inventory

`analysis/unsupported-opcode-triage.tsv` contains one row for every warning in the current report:

- **61 intentional-data-walk**: the generated bank source emits the warning address as a raw `db` byte.
- **1 verified-content-range**: the warning address is already covered by a verified content range.
- **81 probable-data-walk**: the trace stopped on an unsupported opcode in an unclassified gap with no generated instruction or data directive at that exact address. These are provisional and must be upgraded to verified ranges or explicit decoder/data-walk evidence before the decompilation is considered semantically complete.

The inventory is grouped by bank as follows: `$08` 5, `$10` 18, `$11` 60, `$12` 8, `$13` 6, `$15` 7, `$18` 11, `$1B` 3, `$1C` 12, `$1E` 10, and `$1F` 3.

