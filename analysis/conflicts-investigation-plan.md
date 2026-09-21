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

### Bank $11: 10 conflicts → 🔍 IN PROGRESS
**Conflicts**: $8BFC, $9933, $9C68, $AA86, $AC29, $B09C, $B11A, $B19E, $B1CB, $B1F5
**Context**: Battle action/state services (highly code-dense)
**Known ranges**: 44 documented data ranges (BattleActionIds, BattleHandlerPointers, etc.)
**Unclassified gaps**: Conflicts cluster in 4 gap regions

**Investigation needed**:
- Sample disassembly around each conflict address
- Determine if gap contains code or data
- If code: identify entry point; if data: add range to content-ranges.tsv
- Check which seed (Ghidra vs. FCEUX) causes each conflict

### Bank $10: 2 conflicts → 🔍 IN PROGRESS
**Conflicts**: $8B5D (operand of ora instruction), $8B66 (inline data byte)
**Pattern**: `jsr $8C18` followed by inline operand bytes
**Root cause**: Ghidra or FCEUX seed landing on inline operand
**Fix approach**: Document inline operands in content-ranges.tsv

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

### Bank $12: 1 conflict ($84DC) → 🔍 TO INVESTIGATE
**Context**: Battle setup/combat services
**Known range**: Only $8000-$8064 (service directory)
**Conflict location**: 2,780 bytes downstream in unclassified space

### Bank $16: 1 conflict ($8896) → 🔍 TO INVESTIGATE
**Context**: Text/menu services
**Gap**: Between Huffman tree ($87D8-$8892) and text pointers ($8951-$8A08)
**Conflict location**: Exactly at gap boundary ($8896)

### Bank $1D: 1 conflict ($B92C) → ⚠️ GHIDRA ONLY
**Status**: Ghidra false positive; eliminated when Ghidra disabled
**Action**: Accept as known Ghidra limitation

### Bank $1E: 1 conflict ($A9C6) → ⚠️ GHIDRA ONLY
**Status**: Ghidra false positive; eliminated when Ghidra disabled
**Action**: Accept as known Ghidra limitation

### Bank $1F: 1 conflict ($C700) → 🔍 IN PROGRESS
**Context**: Fixed engine/kernel bank
**Known ranges**: Only high-address data ($F7F5-$F7F8, $F7FB-$F803)
**Conflict location**: $C700 is in main kernel code region, far from known ranges

---

## Recommended Next Actions

### Phase 1: Accept Ghidra Limitations (Quick Win)
- 3 conflicts ($0F:$CE4D, $1D:$B92C, $1E:$A9C6) are Ghidra-only false positives
- Document as "Known Ghidra static analysis limitations"
- Accept 18 → 15 conflict reduction if we disable Ghidra (trade-off: lose 10% code coverage)
- **Recommendation**: Keep Ghidra enabled for coverage; document these 3 as acceptable artifacts

### Phase 2: Fix Bank $10 Inline Operands (Medium Effort)
- Add content-ranges entries for inline operand bytes after `jsr` instructions
- This documents the inline ABI and marks those bytes as data
- Should reduce conflicts at $8B5D and $8B66

### Phase 3: Investigate Bank $11, $12, $16, $1F Gaps (High Effort)
- For each conflict address, extract ROM disassembly context
- Classify each gap as code or data
- If code: determine legitimate entry point and add to code-entry-tables.tsv
- If data: add to content-ranges.tsv
- If Ghidra seed: adjust boundary or filter seed

### Phase 4: Accept Remaining Conflicts as Artifacts (If No Targeted Fix)
- Document conflicts that represent legitimate forward-trace or computed-jump collisions
- These are acceptable costs of multi-source seed analysis
- Implement optional flag to suppress them from reports

---

## Metrics Post-Investigation

- **Baseline (Session Start)**: 30 conflicts
- **Current State**: 18 conflicts
- **Target**: 12 conflicts (only known data-heavy regions)
- **Acceptable Trade-Off**: 15 conflicts if Ghidra disabled (gain confidence, lose coverage)

