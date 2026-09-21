internal sealed record CodeSeed(
    int Bank,
    int Address,
    int? EndExclusive,
    string Source,
    string Reason,
    bool FollowTargets = true,
    bool IsEntryPoint = true);

internal sealed record CodeExclusion(int Bank, int Start, int EndExclusive, string Reason);

internal sealed record DecodedInstruction(int Bank, int Address, Opcode Opcode, byte Operand1, byte Operand2)
{
    public int Offset => Address - CodeAnalyzer.CpuBase(Bank);

    public int? Target => Opcode.Mode switch
    {
        AddressingMode.Relative => (Address + 2 + unchecked((sbyte)Operand1)) & 0xFFFF,
        AddressingMode.Absolute when Opcode.IsCall || Opcode.IsJump => Operand1 | (Operand2 << 8),
        _ => null
    };
}

internal sealed class BankAnalysis
{
    public SortedDictionary<int, DecodedInstruction> Instructions { get; } = [];
    public SortedSet<int> InlineDataOffsets { get; } = [];
    public HashSet<int> LabelAddresses { get; } = [];
    public List<string> Warnings { get; } = [];
}

internal static class CodeAnalyzer
{
    private const int BankSize = 0x4000;

    public static int CpuBase(int bank) => IsFixedBank(bank) ? 0xC000 : 0x8000;

    public static Dictionary<int, BankAnalysis> Analyze(
        ReadOnlyMemory<byte> prg,
        IReadOnlyList<CodeSeed> seeds,
        IReadOnlyList<CodeExclusion> exclusions,
        IReadOnlyDictionary<ushort, int> brkOperandCounts)
    {
        Dictionary<int, BankAnalysis> analyses = Enumerable.Range(0, 32)
            .ToDictionary(bank => bank, _ => new BankAnalysis());
        bool[][] occupiedInstructionBytes = Enumerable.Range(0, 32)
            .Select(_ => new bool[BankSize])
            .ToArray();
        bool[][] excludedBytes = Enumerable.Range(0, 32)
            .Select(_ => new bool[BankSize])
            .ToArray();
        foreach (CodeExclusion exclusion in exclusions.Where(exclusion => exclusion.Bank is >= 0 and < 32))
        {
            int cpuBase = CpuBase(exclusion.Bank);
            int start = Math.Max(0, exclusion.Start - cpuBase);
            int endExclusive = Math.Min(BankSize, exclusion.EndExclusive - cpuBase);
            for (int offset = start; offset < endExclusive; offset++)
            {
                excludedBytes[exclusion.Bank][offset] = true;
            }
        }

        Queue<(int Bank, int Address, int? EndExclusive, bool FollowTargets)> pending = new();
        HashSet<(int Bank, int Address)> queued = [];

        foreach (CodeSeed seed in seeds)
        {
            Enqueue(seed.Bank, seed.Address, seed.EndExclusive, seed.FollowTargets, seed.IsEntryPoint);
        }

        while (pending.TryDequeue(out (int Bank, int Address, int? EndExclusive, bool FollowTargets) entry))
        {
            AnalyzePath(entry.Bank, entry.Address, entry.EndExclusive, entry.FollowTargets);
        }

        return analyses;

        void Enqueue(
            int bank,
            int address,
            int? endExclusive = null,
            bool followTargets = true,
            bool isLabelTarget = false)
        {
            if (bank is < 0 or >= 32 || !AddressMapsToBank(bank, address))
            {
                return;
            }

            if (isLabelTarget)
            {
                analyses[bank].LabelAddresses.Add(address);
            }

            if (!queued.Add((bank, address)))
            {
                return;
            }

            pending.Enqueue((bank, address, endExclusive, followTargets));
        }

        void AnalyzePath(int bank, int startAddress, int? endExclusive, bool followTargets)
        {
            BankAnalysis analysis = analyses[bank];
            int address = startAddress;
            bool? zeroFlag = null;
            while (AddressMapsToBank(bank, address) && (endExclusive is null || address < endExclusive))
            {
                int offset = address - CpuBase(bank);
                if (excludedBytes[bank][offset])
                {
                    return;
                }

                if (analysis.Instructions.ContainsKey(offset))
                {
                    return;
                }

                if (occupiedInstructionBytes[bank][offset])
                {
                    analysis.Warnings.Add($"${address:X4}: control flow enters an existing instruction operand");
                    return;
                }

                int prgOffset = (bank * BankSize) + offset;
                byte value = prg.Span[prgOffset];
                Opcode? opcode = OpcodeTable.Get(value);
                if (opcode is null)
                {
                    analysis.Warnings.Add($"${address:X4}: unsupported opcode ${value:X2}; path stopped");
                    return;
                }

                if (offset + opcode.Size > BankSize)
                {
                    analysis.Warnings.Add($"${address:X4}: instruction crosses the physical bank boundary");
                    return;
                }

                byte operand1 = opcode.Size >= 2 ? prg.Span[prgOffset + 1] : (byte)0;
                byte operand2 = opcode.Size == 3 ? prg.Span[prgOffset + 2] : (byte)0;
                DecodedInstruction instruction = new(bank, address, opcode, operand1, operand2);
                analysis.Instructions.Add(offset, instruction);
                for (int index = 0; index < opcode.Size; index++)
                {
                    occupiedInstructionBytes[bank][offset + index] = true;
                }

                if (opcode.Mnemonic == "brk" && !IsFixedBank(bank))
                {
                    int operandCount = BrkOperandCount(prg.Span, bank, address, brkOperandCounts);
                    for (int index = 1; index <= operandCount; index++)
                    {
                        analysis.InlineDataOffsets.Add(offset + index);
                    }

                    address += 1 + operandCount;
                    zeroFlag = null;
                    continue;
                }

                if (instruction.Target is int target)
                {
                    if (!followTargets)
                    {
                        // Runtime observations classify only the instruction that executed.
                    }
                    else if (opcode.IsBranch)
                    {
                        bool? branchTaken = opcode.Mnemonic switch
                        {
                            "beq" when zeroFlag is not null => zeroFlag,
                            "bne" when zeroFlag is not null => !zeroFlag,
                            _ => null
                        };
                        if (branchTaken != false)
                        {
                            int? targetLimit = endExclusive is not null && target >= startAddress && target < endExclusive
                                ? endExclusive
                                : null;
                            Enqueue(bank, target, targetLimit, isLabelTarget: true);
                        }

                        if (branchTaken == true)
                        {
                            return;
                        }
                    }
                    else if (ResolveTargetBank(bank, target) is int targetBank)
                    {
                        int? targetLimit = targetBank == bank && endExclusive is not null &&
                            target >= startAddress && target < endExclusive
                                ? endExclusive
                                : null;
                        Enqueue(targetBank, target, targetLimit, isLabelTarget: true);
                    }
                }

                int inlineCallOperandCount = InlineCallOperandCount(instruction);
                if (inlineCallOperandCount > 0)
                {
                    for (int index = 0; index < inlineCallOperandCount; index++)
                    {
                        analysis.InlineDataOffsets.Add(offset + opcode.Size + index);
                    }

                    address += opcode.Size + inlineCallOperandCount;
                    zeroFlag = null;
                    continue;
                }

                if (opcode.StopsFlow)
                {
                    return;
                }

                zeroFlag = UpdatedZeroFlag(instruction, zeroFlag, prg.Span);
                address += opcode.Size;
            }
        }

    }

    private static int BrkOperandCount(
        ReadOnlySpan<byte> prg,
        int bank,
        int address,
        IReadOnlyDictionary<ushort, int> brkOperandCounts)
    {
        int offset = address - CpuBase(bank);
        if (offset + 2 >= BankSize)
        {
            return Math.Max(0, BankSize - offset - 1);
        }

        int prgOffset = (bank * BankSize) + offset;
        ushort service = (ushort)((prg[prgOffset + 1] << 8) | prg[prgOffset + 2]);
        int operandCount = brkOperandCounts.GetValueOrDefault(service, 2);
        return Math.Min(operandCount, BankSize - offset - 1);
    }

    private static bool AddressMapsToBank(int bank, int address)
    {
        int cpuBase = CpuBase(bank);
        return address >= cpuBase && address < cpuBase + BankSize;
    }

    private static int? ResolveTargetBank(int currentBank, int target)
    {
        if (target is >= 0xC000 and <= 0xFFFF)
        {
            return currentBank < 0x10 ? 0x0F : 0x1F;
        }

        if (target is >= 0x8000 and < 0xC000 && !IsFixedBank(currentBank))
        {
            return currentBank;
        }

        return null;
    }

    private static bool IsFixedBank(int bank) => (bank & 0x0F) == 0x0F;

    private static int InlineCallOperandCount(DecodedInstruction instruction) =>
        instruction.Bank == 0x11 && instruction.Opcode.IsCall && instruction.Target == 0xBF2E ? 1 : 0;

    private static bool? UpdatedZeroFlag(
        DecodedInstruction instruction,
        bool? previous,
        ReadOnlySpan<byte> prg)
    {
        if (instruction.Opcode.Mode == AddressingMode.Immediate &&
            instruction.Opcode.Mnemonic is "lda" or "ldx" or "ldy")
        {
            return instruction.Operand1 == 0;
        }

        if (instruction.Opcode.Mode == AddressingMode.Absolute &&
            instruction.Opcode.Mnemonic is "lda" or "ldx" or "ldy")
        {
            int address = instruction.Operand1 | (instruction.Operand2 << 8);
            if (ResolveTargetBank(instruction.Bank, address) is int bank)
            {
                int offset = (bank * BankSize) + address - CpuBase(bank);
                return prg[offset] == 0;
            }
        }

        return instruction.Opcode.Mnemonic switch
        {
            "bcc" or "bcs" or "beq" or "bmi" or "bne" or "bpl" or "bvc" or "bvs" or
            "clc" or "cld" or "cli" or "clv" or "jmp" or "nop" or "pha" or "php" or
            "sec" or "sed" or "sei" or "sta" or "stx" or "sty" or "txs" => previous,
            _ => null
        };
    }
}