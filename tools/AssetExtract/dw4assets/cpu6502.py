"""Small 6502 interpreter (official opcodes, NES: no decimal arithmetic) used to run the game's own routines."""

C, Z, I, D, B, U, V, N = 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80


class CPU:
    def __init__(self, bus):
        self.bus = bus
        self.a = self.x = self.y = 0
        self.s = 0xFD
        self.p = I | U
        self.pc = 0
        self.cycles = 0
        self.hooks = {}          # pc -> callable(cpu) returning True to skip the instruction
        self._build()

    # ---- memory helpers ----
    def read(self, address):
        return self.bus.read(address & 0xFFFF)

    def write(self, address, value):
        self.bus.write(address & 0xFFFF, value & 0xFF)

    def read16(self, address):
        return self.read(address) | (self.read(address + 1) << 8)

    def read16_zp(self, address):
        return self.read(address & 0xFF) | (self.read((address + 1) & 0xFF) << 8)

    def push(self, value):
        self.write(0x100 | self.s, value)
        self.s = (self.s - 1) & 0xFF

    def pull(self):
        self.s = (self.s + 1) & 0xFF
        return self.read(0x100 | self.s)

    def push16(self, value):
        self.push(value >> 8)
        self.push(value & 0xFF)

    def pull16(self):
        low = self.pull()
        return low | (self.pull() << 8)

    def set_nz(self, value):
        self.p = (self.p & ~(N | Z)) | (value & N) | (0 if value & 0xFF else Z)
        return value & 0xFF

    # ---- interrupts ----
    def nmi(self):
        self.push16(self.pc)
        self.push((self.p | U) & ~B)
        self.p |= I
        self.pc = self.read16(0xFFFA)
        self.cycles += 7

    def irq(self):
        if self.p & I:
            return
        self.push16(self.pc)
        self.push((self.p | U) & ~B)
        self.p |= I
        self.pc = self.read16(0xFFFE)
        self.cycles += 7

    def reset(self):
        self.pc = self.read16(0xFFFC)
        self.s = 0xFD
        self.p = I | U

    # ---- addressing modes: return effective address ----
    def _imm(self):
        address = self.pc
        self.pc = (self.pc + 1) & 0xFFFF
        return address

    def _zp(self):
        address = self.read(self.pc)
        self.pc = (self.pc + 1) & 0xFFFF
        return address

    def _zpx(self):
        address = (self.read(self.pc) + self.x) & 0xFF
        self.pc = (self.pc + 1) & 0xFFFF
        return address

    def _zpy(self):
        address = (self.read(self.pc) + self.y) & 0xFF
        self.pc = (self.pc + 1) & 0xFFFF
        return address

    def _abs(self):
        address = self.read16(self.pc)
        self.pc = (self.pc + 2) & 0xFFFF
        return address

    def _abx(self):
        base = self.read16(self.pc)
        self.pc = (self.pc + 2) & 0xFFFF
        address = (base + self.x) & 0xFFFF
        if (base ^ address) & 0xFF00:
            self.cycles += self._page_penalty
        return address

    def _aby(self):
        base = self.read16(self.pc)
        self.pc = (self.pc + 2) & 0xFFFF
        address = (base + self.y) & 0xFFFF
        if (base ^ address) & 0xFF00:
            self.cycles += self._page_penalty
        return address

    def _izx(self):
        pointer = (self.read(self.pc) + self.x) & 0xFF
        self.pc = (self.pc + 1) & 0xFFFF
        return self.read16_zp(pointer)

    def _izy(self):
        pointer = self.read(self.pc)
        self.pc = (self.pc + 1) & 0xFFFF
        base = self.read16_zp(pointer)
        address = (base + self.y) & 0xFFFF
        if (base ^ address) & 0xFF00:
            self.cycles += self._page_penalty
        return address

    def _ind(self):
        pointer = self.read16(self.pc)
        self.pc = (self.pc + 2) & 0xFFFF
        high = (pointer & 0xFF00) | ((pointer + 1) & 0xFF)   # 6502 page-wrap bug
        return self.read(pointer) | (self.read(high) << 8)

    # ---- operations ----
    def _adc(self, value):
        total = self.a + value + (self.p & C)
        overflow = (~(self.a ^ value) & (self.a ^ total) & 0x80)
        self.p = (self.p & ~(C | V)) | (C if total > 0xFF else 0) | (V if overflow else 0)
        self.a = self.set_nz(total & 0xFF)

    def _cmp(self, register, value):
        result = (register - value) & 0x1FF
        self.p = (self.p & ~C) | (C if register >= value else 0)
        self.set_nz(result & 0xFF)

    def _branch(self, condition):
        offset = self.read(self.pc)
        self.pc = (self.pc + 1) & 0xFFFF
        if condition:
            target = (self.pc + (offset - 256 if offset & 0x80 else offset)) & 0xFFFF
            self.cycles += 1 + (1 if (target ^ self.pc) & 0xFF00 else 0)
            self.pc = target

    def _asl(self, value):
        self.p = (self.p & ~C) | (C if value & 0x80 else 0)
        return self.set_nz((value << 1) & 0xFF)

    def _lsr(self, value):
        self.p = (self.p & ~C) | (value & 1)
        return self.set_nz(value >> 1)

    def _rol(self, value):
        result = ((value << 1) | (self.p & C)) & 0xFF
        self.p = (self.p & ~C) | (C if value & 0x80 else 0)
        return self.set_nz(result)

    def _ror(self, value):
        result = (value >> 1) | (0x80 if self.p & C else 0)
        self.p = (self.p & ~C) | (value & 1)
        return self.set_nz(result)

    def _build(self):
        table = {}
        modes = {"imm": self._imm, "zp": self._zp, "zpx": self._zpx, "zpy": self._zpy, "abs": self._abs,
                 "abx": self._abx, "aby": self._aby, "izx": self._izx, "izy": self._izy}

        def load(register):
            def op(mode):
                def run():
                    value = self.read(mode())
                    setattr(self, register, self.set_nz(value))
                return run
            return op

        def store(register):
            def op(mode):
                def run():
                    self.write(mode(), getattr(self, register))
                return run
            return op

        def alu(kind):
            def op(mode):
                def run():
                    value = self.read(mode())
                    if kind == "ora":
                        self.a = self.set_nz(self.a | value)
                    elif kind == "and":
                        self.a = self.set_nz(self.a & value)
                    elif kind == "eor":
                        self.a = self.set_nz(self.a ^ value)
                    elif kind == "adc":
                        self._adc(value)
                    elif kind == "sbc":
                        self._adc(value ^ 0xFF)
                    elif kind == "cmp":
                        self._cmp(self.a, value)
                    elif kind == "cpx":
                        self._cmp(self.x, value)
                    elif kind == "cpy":
                        self._cmp(self.y, value)
                    elif kind == "bit":
                        self.p = (self.p & ~(N | V | Z)) | (value & (N | V)) | (0 if value & self.a else Z)
                return run
            return op

        def rmw(kind):
            def op(mode):
                def run():
                    address = mode()
                    value = self.read(address)
                    if kind == "asl":
                        value = self._asl(value)
                    elif kind == "lsr":
                        value = self._lsr(value)
                    elif kind == "rol":
                        value = self._rol(value)
                    elif kind == "ror":
                        value = self._ror(value)
                    elif kind == "inc":
                        value = self.set_nz((value + 1) & 0xFF)
                    elif kind == "dec":
                        value = self.set_nz((value - 1) & 0xFF)
                    self.write(address, value)
                return run
            return op

        spec = [
            # opcode, maker, mode, cycles, page penalty
            (0xA9, load("a"), "imm", 2), (0xA5, load("a"), "zp", 3), (0xB5, load("a"), "zpx", 4),
            (0xAD, load("a"), "abs", 4), (0xBD, load("a"), "abx", 4, 1), (0xB9, load("a"), "aby", 4, 1),
            (0xA1, load("a"), "izx", 6), (0xB1, load("a"), "izy", 5, 1),
            (0xA2, load("x"), "imm", 2), (0xA6, load("x"), "zp", 3), (0xB6, load("x"), "zpy", 4),
            (0xAE, load("x"), "abs", 4), (0xBE, load("x"), "aby", 4, 1),
            (0xA0, load("y"), "imm", 2), (0xA4, load("y"), "zp", 3), (0xB4, load("y"), "zpx", 4),
            (0xAC, load("y"), "abs", 4), (0xBC, load("y"), "abx", 4, 1),
            (0x85, store("a"), "zp", 3), (0x95, store("a"), "zpx", 4), (0x8D, store("a"), "abs", 4),
            (0x9D, store("a"), "abx", 5), (0x99, store("a"), "aby", 5), (0x81, store("a"), "izx", 6),
            (0x91, store("a"), "izy", 6),
            (0x86, store("x"), "zp", 3), (0x96, store("x"), "zpy", 4), (0x8E, store("x"), "abs", 4),
            (0x84, store("y"), "zp", 3), (0x94, store("y"), "zpx", 4), (0x8C, store("y"), "abs", 4),
        ]
        for kind, base in (("ora", 0x00), ("and", 0x20), ("eor", 0x40), ("adc", 0x60), ("cmp", 0xC0),
                           ("sbc", 0xE0)):
            spec += [(base + 0x09, alu(kind), "imm", 2), (base + 0x05, alu(kind), "zp", 3),
                     (base + 0x15, alu(kind), "zpx", 4), (base + 0x0D, alu(kind), "abs", 4),
                     (base + 0x1D, alu(kind), "abx", 4, 1), (base + 0x19, alu(kind), "aby", 4, 1),
                     (base + 0x01, alu(kind), "izx", 6), (base + 0x11, alu(kind), "izy", 5, 1)]
        spec += [(0xE0, alu("cpx"), "imm", 2), (0xE4, alu("cpx"), "zp", 3), (0xEC, alu("cpx"), "abs", 4),
                 (0xC0, alu("cpy"), "imm", 2), (0xC4, alu("cpy"), "zp", 3), (0xCC, alu("cpy"), "abs", 4),
                 (0x24, alu("bit"), "zp", 3), (0x2C, alu("bit"), "abs", 4)]
        for kind, base in (("asl", 0x00), ("rol", 0x20), ("lsr", 0x40), ("ror", 0x60)):
            spec += [(base + 0x06, rmw(kind), "zp", 5), (base + 0x16, rmw(kind), "zpx", 6),
                     (base + 0x0E, rmw(kind), "abs", 6), (base + 0x1E, rmw(kind), "abx", 7)]
        spec += [(0xE6, rmw("inc"), "zp", 5), (0xF6, rmw("inc"), "zpx", 6), (0xEE, rmw("inc"), "abs", 6),
                 (0xFE, rmw("inc"), "abx", 7), (0xC6, rmw("dec"), "zp", 5), (0xD6, rmw("dec"), "zpx", 6),
                 (0xCE, rmw("dec"), "abs", 6), (0xDE, rmw("dec"), "abx", 7)]
        for entry in spec:
            opcode, maker, mode, cycles = entry[:4]
            penalty = entry[4] if len(entry) > 4 else 0
            table[opcode] = (maker(modes[mode]), cycles, penalty)

        def implied(opcode, cycles, function):
            table[opcode] = (function, cycles, 0)

        def set_reg(name, value):
            setattr(self, name, self.set_nz(value & 0xFF))

        implied(0x0A, 2, lambda: setattr(self, "a", self._asl(self.a)))
        implied(0x2A, 2, lambda: setattr(self, "a", self._rol(self.a)))
        implied(0x4A, 2, lambda: setattr(self, "a", self._lsr(self.a)))
        implied(0x6A, 2, lambda: setattr(self, "a", self._ror(self.a)))
        implied(0xAA, 2, lambda: set_reg("x", self.a))
        implied(0xA8, 2, lambda: set_reg("y", self.a))
        implied(0x8A, 2, lambda: set_reg("a", self.x))
        implied(0x98, 2, lambda: set_reg("a", self.y))
        implied(0xBA, 2, lambda: set_reg("x", self.s))
        implied(0x9A, 2, lambda: setattr(self, "s", self.x))
        implied(0xE8, 2, lambda: set_reg("x", self.x + 1))
        implied(0xC8, 2, lambda: set_reg("y", self.y + 1))
        implied(0xCA, 2, lambda: set_reg("x", self.x - 1))
        implied(0x88, 2, lambda: set_reg("y", self.y - 1))
        implied(0x18, 2, lambda: setattr(self, "p", self.p & ~C))
        implied(0x38, 2, lambda: setattr(self, "p", self.p | C))
        implied(0x58, 2, lambda: setattr(self, "p", self.p & ~I))
        implied(0x78, 2, lambda: setattr(self, "p", self.p | I))
        implied(0xB8, 2, lambda: setattr(self, "p", self.p & ~V))
        implied(0xD8, 2, lambda: setattr(self, "p", self.p & ~D))
        implied(0xF8, 2, lambda: setattr(self, "p", self.p | D))
        implied(0xEA, 2, lambda: None)
        implied(0x48, 3, lambda: self.push(self.a))
        implied(0x08, 3, lambda: self.push(self.p | B | U))
        implied(0x68, 4, lambda: set_reg("a", self.pull()))
        implied(0x28, 4, lambda: setattr(self, "p", (self.pull() & ~B) | U))

        def jmp_abs():
            self.pc = self.read16(self.pc)

        def jmp_ind():
            self.pc = self._ind()

        def jsr():
            target = self.read16(self.pc)
            self.push16((self.pc + 1) & 0xFFFF)
            self.pc = target

        def rts():
            self.pc = (self.pull16() + 1) & 0xFFFF

        def rti():
            self.p = (self.pull() & ~B) | U
            self.pc = self.pull16()

        def brk():
            self.push16((self.pc + 1) & 0xFFFF)
            self.push(self.p | B | U)
            self.p |= I
            self.pc = self.read16(0xFFFE)

        implied(0x4C, 3, jmp_abs)
        implied(0x6C, 5, jmp_ind)
        implied(0x20, 6, jsr)
        implied(0x60, 6, rts)
        implied(0x40, 6, rti)
        implied(0x00, 7, brk)
        for opcode, flag, value in ((0x10, N, 0), (0x30, N, 1), (0x50, V, 0), (0x70, V, 1), (0x90, C, 0),
                                    (0xB0, C, 1), (0xD0, Z, 0), (0xF0, Z, 1)):
            implied(opcode, 2, (lambda f, v: lambda: self._branch(bool(self.p & f) == bool(v)))(flag, value))
        self.table = table

    def step(self):
        hook = self.hooks.get(self.pc)
        if hook is not None and hook(self):
            return 0
        opcode = self.read(self.pc)
        entry = self.table.get(opcode)
        if entry is None:
            raise RuntimeError("unsupported opcode $%02X at $%04X (bank $%02X)" % (opcode, self.pc,
                                                                                 self.bus.bank_at(self.pc)))
        function, cycles, penalty = entry
        self.pc = (self.pc + 1) & 0xFFFF
        self._page_penalty = penalty
        before = self.cycles
        function()
        self.cycles = before + cycles + (self.cycles - before)
        return cycles
