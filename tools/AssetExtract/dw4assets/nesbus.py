"""Headless NES bus for running the game's routines: RAM, SRAM, MMC1 (SUROM), PPU memory model, APU capture.

Nothing is rendered here; callers read back VRAM/palette/OAM and APU register writes.
"""
from .cpu6502 import CPU

FRAME_CYCLES = 29781
LINE_CYCLES = 341 / 3          # 113.67 CPU cycles per scanline
VBLANK_CYCLES = 20 * LINE_CYCLES   # NMI (vblank start) to the first visible scanline


class Bus:
    def __init__(self, rom):
        self.rom = rom
        self.ram = bytearray(0x800)
        self.sram = bytearray(0x2000)
        # MMC1
        self.shift = 0x10
        self.control = 0x0C
        self.chr0 = 0
        self.chr1 = 0
        self.prg = 0
        # PPU
        self.vram = bytearray(0x4000)     # CHR RAM $0000-$1FFF, nametables $2000-$2FFF, palette at $3F00
        self.oam = bytearray(256)
        self.ppuctrl = 0
        self.ppumask = 0
        self.ppu_address = 0
        self.ppu_latch = False
        self.ppu_buffer = 0
        self.scroll = [0, 0]
        self.vblank_read = False
        self.frame_start = 0          # CPU cycle of the last vblank start (set by Machine)
        self.frame_top = None         # (scroll x, scroll y, ctrl) latched when the visible frame starts
        self.raster_current = []      # (scanline, "x"/"ctrl", value) writes during the visible frame
        self.raster_last = []
        self.frame_top_last = None
        # APU capture: (cpu cycle, register, value)
        self.apu_writes = []
        self.cpu = None
        self.watch_write = None
        # controller 1: bit order A, B, Select, Start, Up, Down, Left, Right
        self.buttons = 0
        self.pad_shift = 0
        self.pad_strobe = False

    # ---- banking ----
    def outer(self):
        return self.chr0 & 0x10

    def bank_at(self, address):
        if address < 0x8000:
            return None
        mode = (self.control >> 2) & 3
        if mode in (0, 1):
            base = (self.prg & 0x0E) | self.outer()
            return base + (1 if address >= 0xC000 else 0)
        if mode == 2:
            return self.outer() if address < 0xC000 else (self.prg & 0x0F) | self.outer()
        return (self.prg & 0x0F) | self.outer() if address < 0xC000 else 0x0F | self.outer()

    def select(self, bank):
        """Directly map a 16 KiB bank at $8000 (MMC1 mode 3), with the matching outer 256 KiB half."""
        self.control = (self.control & ~0x0C) | 0x0C
        self.chr0 = (self.chr0 & ~0x10) | (bank & 0x10)
        self.prg = bank & 0x0F

    def _mmc1_write(self, address, value):
        if value & 0x80:
            self.shift = 0x10
            self.control |= 0x0C
            return
        complete = self.shift & 1
        self.shift = (self.shift >> 1) | ((value & 1) << 4)
        if complete:
            target = (address >> 13) & 3
            if target == 0:
                self.control = self.shift
            elif target == 1:
                self.chr0 = self.shift
            elif target == 2:
                self.chr1 = self.shift
            else:
                self.prg = self.shift
            self.shift = 0x10

    # ---- PPU ----
    def _vram_index(self, address):
        address &= 0x3FFF
        if address >= 0x3F00:
            index = address & 0x1F
            if index in (0x10, 0x14, 0x18, 0x1C):
                index -= 0x10
            return 0x3F00 + index
        if address >= 0x2000:
            offset = (address - 0x2000) & 0x0FFF
            table, inner = offset >> 10, offset & 0x3FF
            mirroring = self.control & 3
            if mirroring == 0:
                table = 0
            elif mirroring == 1:
                table = 1
            elif mirroring == 2:          # vertical
                table &= 1
            else:                         # horizontal
                table >>= 1
            return 0x2000 + table * 0x400 + inner
        return address

    def _visible_time(self):
        return (self.cpu.cycles if self.cpu else 0) - self.frame_start

    def _sprite0_line(self):
        y, tile, attr = self.oam[0], self.oam[1], self.oam[2]
        table = 0x1000 if self.ppuctrl & 0x08 else 0
        base = table + tile * 16
        rows = [r for r in range(8) if self.vram[base + r] | self.vram[base + 8 + r]]
        if not rows:
            return None
        first = (7 - rows[-1]) if attr & 0x80 else rows[0]
        return y + 1 + first

    def _ppu_read(self, register):
        if register == 2:
            t = self._visible_time()
            value = 0
            if t < VBLANK_CYCLES and not self.vblank_read:
                value |= 0x80
                self.vblank_read = True
            if self.ppumask & 0x18 and t >= VBLANK_CYCLES:
                line = self._sprite0_line()
                if line is not None and line < 240 and t >= VBLANK_CYCLES + line * LINE_CYCLES:
                    value |= 0x40
            self.ppu_latch = False
            return value
        if register == 7:
            index = self._vram_index(self.ppu_address)
            if index >= 0x3F00:
                value = self.vram[index]
            else:
                value = self.ppu_buffer
                self.ppu_buffer = self.vram[index]
            self.ppu_address = (self.ppu_address + (32 if self.ppuctrl & 4 else 1)) & 0x3FFF
            return value
        if register == 4:
            return 0
        return 0

    def _ppu_write(self, register, value):
        if register == 0:
            self.ppuctrl = value
            self._raster("ctrl", value)
        elif register == 1:
            self.ppumask = value
        elif register == 5:
            if not self.ppu_latch:
                self._raster("x", value)
            self.scroll[1 if self.ppu_latch else 0] = value
            self.ppu_latch = not self.ppu_latch
        elif register == 6:
            if not self.ppu_latch:
                self.ppu_address = ((value & 0x3F) << 8) | (self.ppu_address & 0xFF)
            else:
                self.ppu_address = (self.ppu_address & 0xFF00) | value
            self.ppu_latch = not self.ppu_latch
        elif register == 7:
            self.vram[self._vram_index(self.ppu_address)] = value
            self.ppu_address = (self.ppu_address + (32 if self.ppuctrl & 4 else 1)) & 0x3FFF

    def _raster(self, kind, value):
        t = self._visible_time()
        if VBLANK_CYCLES <= t < VBLANK_CYCLES + 240 * LINE_CYCLES:
            line = int((t - VBLANK_CYCLES) / LINE_CYCLES) + 1
            self.raster_current.append((line, kind, value))

    # ---- bus ----
    def read(self, address):
        if address < 0x2000:
            return self.ram[address & 0x7FF]
        if address < 0x4000:
            return self._ppu_read(address & 7)
        if address == 0x4016:
            if self.pad_strobe:
                return 0x40 | (self.buttons & 1)
            bit = self.pad_shift & 1
            self.pad_shift = (self.pad_shift >> 1) | 0x80
            return 0x40 | bit
        if address < 0x4020:
            return 0x40 if address == 0x4017 else 0
        if address < 0x6000:
            return 0
        if address < 0x8000:
            return self.sram[address - 0x6000]
        bank = self.bank_at(address)
        return self.rom.data[16 + bank * 0x4000 + (address & 0x3FFF)]

    def write(self, address, value):
        if self.watch_write is not None:
            self.watch_write(address, value)
        if address < 0x2000:
            self.ram[address & 0x7FF] = value
        elif address < 0x4000:
            self._ppu_write(address & 7, value)
        elif address == 0x4014:
            page = value << 8
            for i in range(256):
                self.oam[i] = self.read(page + i)
            if self.cpu is not None:
                self.cpu.cycles += 513
        elif address == 0x4016:
            self.pad_strobe = bool(value & 1)
            if self.pad_strobe:
                self.pad_shift = self.buttons
        elif address < 0x4018:
            self.apu_writes.append((self.cpu.cycles if self.cpu else 0, address, value))
        elif address < 0x6000:
            pass
        elif address < 0x8000:
            self.sram[address - 0x6000] = value
        else:
            self._mmc1_write(address, value)


class Machine:
    """CPU + bus with a frame clock that raises NMI every FRAME_CYCLES while PPUCTRL bit 7 is set."""

    def __init__(self, rom):
        self.bus = Bus(rom)
        self.cpu = CPU(self.bus)
        self.bus.cpu = self.cpu
        self.next_frame = FRAME_CYCLES
        self.frames = 0
        self.on_frame_end = None

    def run_until(self, stop_pc=None, max_cycles=10_000_000, stop=None):
        cpu, bus = self.cpu, self.bus
        limit = cpu.cycles + max_cycles
        while cpu.cycles < limit:
            if stop_pc is not None and cpu.pc == stop_pc:
                return True
            if stop is not None and stop(self):
                return True
            cpu.step()
            if bus.frame_top is None and cpu.cycles - bus.frame_start >= VBLANK_CYCLES:
                bus.frame_top = (bus.scroll[0], bus.scroll[1], bus.ppuctrl)
            if cpu.cycles >= self.next_frame:
                self._frame_boundary()
        return False

    def _frame_boundary(self):
        bus, cpu = self.bus, self.cpu
        bus.raster_last = bus.raster_current
        bus.frame_top_last = bus.frame_top
        bus.raster_current = []
        bus.frame_top = None
        bus.frame_start = self.next_frame
        bus.vblank_read = False
        self.next_frame += FRAME_CYCLES
        self.frames += 1
        if self.on_frame_end is not None:
            self.on_frame_end(self)
        if bus.ppuctrl & 0x80:
            cpu.nmi()

    def run_frames(self, count):
        """Run exactly count frame boundaries."""
        target = self.frames + count
        while self.frames < target:
            self.run_until(max_cycles=FRAME_CYCLES)

    def call(self, address, a=0, x=0, y=0, bank=None, max_cycles=20_000_000):
        """JSR to address and run until it returns to a sentinel."""
        cpu = self.cpu
        if bank is not None:
            self.bus.select(bank)
            self.bus.ram[0x0507] = bank    # SelectPrgBank ($FF91) records the current bank here
        sentinel = 0x0001      # returns to RAM $0002: never executed, used as a stop address
        cpu.push16(sentinel)
        cpu.a, cpu.x, cpu.y = a, x, y
        cpu.pc = address
        if not self.run_until(stop_pc=sentinel + 1, max_cycles=max_cycles):
            raise RuntimeError("call to $%04X did not return (pc $%04X)" % (address, cpu.pc))
