internal enum AddressingMode
{
    Implied,
    Accumulator,
    Immediate,
    ZeroPage,
    ZeroPageX,
    ZeroPageY,
    Relative,
    Absolute,
    AbsoluteX,
    AbsoluteY,
    Indirect,
    IndexedIndirect,
    IndirectIndexed
}

internal sealed record Opcode(byte Value, string Mnemonic, AddressingMode Mode)
{
    public int Size => Mode switch
    {
        AddressingMode.Implied or AddressingMode.Accumulator => 1,
        AddressingMode.Absolute or AddressingMode.AbsoluteX or AddressingMode.AbsoluteY or AddressingMode.Indirect => 3,
        _ => 2
    };

    public bool IsBranch => Mode == AddressingMode.Relative;
    public bool IsCall => Mnemonic == "jsr";
    public bool IsJump => Mnemonic == "jmp";
    public bool StopsFlow => Mnemonic is "brk" or "rti" or "rts" || IsJump;
}

internal static class OpcodeTable
{
    private static readonly Opcode?[] Entries = Create();

    public static Opcode? Get(byte value) => Entries[value];

    private static Opcode?[] Create()
    {
        Opcode?[] entries = new Opcode?[256];
        Add(entries, 0x00, "brk", AddressingMode.Implied);
        Add(entries, 0x01, "ora", AddressingMode.IndexedIndirect);
        Add(entries, 0x05, "ora", AddressingMode.ZeroPage);
        Add(entries, 0x06, "asl", AddressingMode.ZeroPage);
        Add(entries, 0x08, "php", AddressingMode.Implied);
        Add(entries, 0x09, "ora", AddressingMode.Immediate);
        Add(entries, 0x0A, "asl", AddressingMode.Accumulator);
        Add(entries, 0x0D, "ora", AddressingMode.Absolute);
        Add(entries, 0x0E, "asl", AddressingMode.Absolute);
        Add(entries, 0x10, "bpl", AddressingMode.Relative);
        Add(entries, 0x11, "ora", AddressingMode.IndirectIndexed);
        Add(entries, 0x15, "ora", AddressingMode.ZeroPageX);
        Add(entries, 0x16, "asl", AddressingMode.ZeroPageX);
        Add(entries, 0x18, "clc", AddressingMode.Implied);
        Add(entries, 0x19, "ora", AddressingMode.AbsoluteY);
        Add(entries, 0x1D, "ora", AddressingMode.AbsoluteX);
        Add(entries, 0x1E, "asl", AddressingMode.AbsoluteX);
        Add(entries, 0x20, "jsr", AddressingMode.Absolute);
        Add(entries, 0x21, "and", AddressingMode.IndexedIndirect);
        Add(entries, 0x24, "bit", AddressingMode.ZeroPage);
        Add(entries, 0x25, "and", AddressingMode.ZeroPage);
        Add(entries, 0x26, "rol", AddressingMode.ZeroPage);
        Add(entries, 0x28, "plp", AddressingMode.Implied);
        Add(entries, 0x29, "and", AddressingMode.Immediate);
        Add(entries, 0x2A, "rol", AddressingMode.Accumulator);
        Add(entries, 0x2C, "bit", AddressingMode.Absolute);
        Add(entries, 0x2D, "and", AddressingMode.Absolute);
        Add(entries, 0x2E, "rol", AddressingMode.Absolute);
        Add(entries, 0x30, "bmi", AddressingMode.Relative);
        Add(entries, 0x31, "and", AddressingMode.IndirectIndexed);
        Add(entries, 0x35, "and", AddressingMode.ZeroPageX);
        Add(entries, 0x36, "rol", AddressingMode.ZeroPageX);
        Add(entries, 0x38, "sec", AddressingMode.Implied);
        Add(entries, 0x39, "and", AddressingMode.AbsoluteY);
        Add(entries, 0x3D, "and", AddressingMode.AbsoluteX);
        Add(entries, 0x3E, "rol", AddressingMode.AbsoluteX);
        Add(entries, 0x40, "rti", AddressingMode.Implied);
        Add(entries, 0x41, "eor", AddressingMode.IndexedIndirect);
        Add(entries, 0x45, "eor", AddressingMode.ZeroPage);
        Add(entries, 0x46, "lsr", AddressingMode.ZeroPage);
        Add(entries, 0x48, "pha", AddressingMode.Implied);
        Add(entries, 0x49, "eor", AddressingMode.Immediate);
        Add(entries, 0x4A, "lsr", AddressingMode.Accumulator);
        Add(entries, 0x4C, "jmp", AddressingMode.Absolute);
        Add(entries, 0x4D, "eor", AddressingMode.Absolute);
        Add(entries, 0x4E, "lsr", AddressingMode.Absolute);
        Add(entries, 0x50, "bvc", AddressingMode.Relative);
        Add(entries, 0x51, "eor", AddressingMode.IndirectIndexed);
        Add(entries, 0x55, "eor", AddressingMode.ZeroPageX);
        Add(entries, 0x56, "lsr", AddressingMode.ZeroPageX);
        Add(entries, 0x58, "cli", AddressingMode.Implied);
        Add(entries, 0x59, "eor", AddressingMode.AbsoluteY);
        Add(entries, 0x5D, "eor", AddressingMode.AbsoluteX);
        Add(entries, 0x5E, "lsr", AddressingMode.AbsoluteX);
        Add(entries, 0x60, "rts", AddressingMode.Implied);
        Add(entries, 0x61, "adc", AddressingMode.IndexedIndirect);
        Add(entries, 0x65, "adc", AddressingMode.ZeroPage);
        Add(entries, 0x66, "ror", AddressingMode.ZeroPage);
        Add(entries, 0x68, "pla", AddressingMode.Implied);
        Add(entries, 0x69, "adc", AddressingMode.Immediate);
        Add(entries, 0x6A, "ror", AddressingMode.Accumulator);
        Add(entries, 0x6C, "jmp", AddressingMode.Indirect);
        Add(entries, 0x6D, "adc", AddressingMode.Absolute);
        Add(entries, 0x6E, "ror", AddressingMode.Absolute);
        Add(entries, 0x70, "bvs", AddressingMode.Relative);
        Add(entries, 0x71, "adc", AddressingMode.IndirectIndexed);
        Add(entries, 0x75, "adc", AddressingMode.ZeroPageX);
        Add(entries, 0x76, "ror", AddressingMode.ZeroPageX);
        Add(entries, 0x78, "sei", AddressingMode.Implied);
        Add(entries, 0x79, "adc", AddressingMode.AbsoluteY);
        Add(entries, 0x7D, "adc", AddressingMode.AbsoluteX);
        Add(entries, 0x7E, "ror", AddressingMode.AbsoluteX);
        Add(entries, 0x81, "sta", AddressingMode.IndexedIndirect);
        Add(entries, 0x84, "sty", AddressingMode.ZeroPage);
        Add(entries, 0x85, "sta", AddressingMode.ZeroPage);
        Add(entries, 0x86, "stx", AddressingMode.ZeroPage);
        Add(entries, 0x88, "dey", AddressingMode.Implied);
        Add(entries, 0x8A, "txa", AddressingMode.Implied);
        Add(entries, 0x8C, "sty", AddressingMode.Absolute);
        Add(entries, 0x8D, "sta", AddressingMode.Absolute);
        Add(entries, 0x8E, "stx", AddressingMode.Absolute);
        Add(entries, 0x90, "bcc", AddressingMode.Relative);
        Add(entries, 0x91, "sta", AddressingMode.IndirectIndexed);
        Add(entries, 0x94, "sty", AddressingMode.ZeroPageX);
        Add(entries, 0x95, "sta", AddressingMode.ZeroPageX);
        Add(entries, 0x96, "stx", AddressingMode.ZeroPageY);
        Add(entries, 0x98, "tya", AddressingMode.Implied);
        Add(entries, 0x99, "sta", AddressingMode.AbsoluteY);
        Add(entries, 0x9A, "txs", AddressingMode.Implied);
        Add(entries, 0x9D, "sta", AddressingMode.AbsoluteX);
        Add(entries, 0xA0, "ldy", AddressingMode.Immediate);
        Add(entries, 0xA1, "lda", AddressingMode.IndexedIndirect);
        Add(entries, 0xA2, "ldx", AddressingMode.Immediate);
        Add(entries, 0xA4, "ldy", AddressingMode.ZeroPage);
        Add(entries, 0xA5, "lda", AddressingMode.ZeroPage);
        Add(entries, 0xA6, "ldx", AddressingMode.ZeroPage);
        Add(entries, 0xA8, "tay", AddressingMode.Implied);
        Add(entries, 0xA9, "lda", AddressingMode.Immediate);
        Add(entries, 0xAA, "tax", AddressingMode.Implied);
        Add(entries, 0xAC, "ldy", AddressingMode.Absolute);
        Add(entries, 0xAD, "lda", AddressingMode.Absolute);
        Add(entries, 0xAE, "ldx", AddressingMode.Absolute);
        Add(entries, 0xB0, "bcs", AddressingMode.Relative);
        Add(entries, 0xB1, "lda", AddressingMode.IndirectIndexed);
        Add(entries, 0xB4, "ldy", AddressingMode.ZeroPageX);
        Add(entries, 0xB5, "lda", AddressingMode.ZeroPageX);
        Add(entries, 0xB6, "ldx", AddressingMode.ZeroPageY);
        Add(entries, 0xB8, "clv", AddressingMode.Implied);
        Add(entries, 0xB9, "lda", AddressingMode.AbsoluteY);
        Add(entries, 0xBA, "tsx", AddressingMode.Implied);
        Add(entries, 0xBC, "ldy", AddressingMode.AbsoluteX);
        Add(entries, 0xBD, "lda", AddressingMode.AbsoluteX);
        Add(entries, 0xBE, "ldx", AddressingMode.AbsoluteY);
        Add(entries, 0xC0, "cpy", AddressingMode.Immediate);
        Add(entries, 0xC1, "cmp", AddressingMode.IndexedIndirect);
        Add(entries, 0xC4, "cpy", AddressingMode.ZeroPage);
        Add(entries, 0xC5, "cmp", AddressingMode.ZeroPage);
        Add(entries, 0xC6, "dec", AddressingMode.ZeroPage);
        Add(entries, 0xC8, "iny", AddressingMode.Implied);
        Add(entries, 0xC9, "cmp", AddressingMode.Immediate);
        Add(entries, 0xCA, "dex", AddressingMode.Implied);
        Add(entries, 0xCC, "cpy", AddressingMode.Absolute);
        Add(entries, 0xCD, "cmp", AddressingMode.Absolute);
        Add(entries, 0xCE, "dec", AddressingMode.Absolute);
        Add(entries, 0xD0, "bne", AddressingMode.Relative);
        Add(entries, 0xD1, "cmp", AddressingMode.IndirectIndexed);
        Add(entries, 0xD5, "cmp", AddressingMode.ZeroPageX);
        Add(entries, 0xD6, "dec", AddressingMode.ZeroPageX);
        Add(entries, 0xD8, "cld", AddressingMode.Implied);
        Add(entries, 0xD9, "cmp", AddressingMode.AbsoluteY);
        Add(entries, 0xDD, "cmp", AddressingMode.AbsoluteX);
        Add(entries, 0xDE, "dec", AddressingMode.AbsoluteX);
        Add(entries, 0xE0, "cpx", AddressingMode.Immediate);
        Add(entries, 0xE1, "sbc", AddressingMode.IndexedIndirect);
        Add(entries, 0xE4, "cpx", AddressingMode.ZeroPage);
        Add(entries, 0xE5, "sbc", AddressingMode.ZeroPage);
        Add(entries, 0xE6, "inc", AddressingMode.ZeroPage);
        Add(entries, 0xE8, "inx", AddressingMode.Implied);
        Add(entries, 0xE9, "sbc", AddressingMode.Immediate);
        Add(entries, 0xEA, "nop", AddressingMode.Implied);
        Add(entries, 0xEC, "cpx", AddressingMode.Absolute);
        Add(entries, 0xED, "sbc", AddressingMode.Absolute);
        Add(entries, 0xEE, "inc", AddressingMode.Absolute);
        Add(entries, 0xF0, "beq", AddressingMode.Relative);
        Add(entries, 0xF1, "sbc", AddressingMode.IndirectIndexed);
        Add(entries, 0xF5, "sbc", AddressingMode.ZeroPageX);
        Add(entries, 0xF6, "inc", AddressingMode.ZeroPageX);
        Add(entries, 0xF8, "sed", AddressingMode.Implied);
        Add(entries, 0xF9, "sbc", AddressingMode.AbsoluteY);
        Add(entries, 0xFD, "sbc", AddressingMode.AbsoluteX);
        Add(entries, 0xFE, "inc", AddressingMode.AbsoluteX);
        return entries;
    }

    private static void Add(Opcode?[] entries, byte value, string mnemonic, AddressingMode mode)
        => entries[value] = new Opcode(value, mnemonic, mode);
}