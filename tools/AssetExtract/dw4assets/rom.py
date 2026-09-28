"""Reference-ROM access for the asset extractor.

Banks are 16 KiB PRG banks. Switchable banks map at $8000-$BFFF; the fixed banks $0F and $1F map at
$C000-$FFFF (bank $0F for the lower outer region, $1F for the upper one).
"""
import hashlib

HEADER_SIZE = 16
BANK_SIZE = 0x4000
BANK_COUNT = 32
EXPECTED_SHA256 = "373BE958CB33651FE599A6B282D2A232EB3B99559C258B2C70B53DF0FA31E34A"


class Rom:
    def __init__(self, path):
        with open(path, "rb") as handle:
            self.data = handle.read()
        digest = hashlib.sha256(self.data).hexdigest().upper()
        if digest != EXPECTED_SHA256:
            raise ValueError("unexpected ROM SHA-256 %s (expected %s)" % (digest, EXPECTED_SHA256))
        self.sha256 = digest

    @staticmethod
    def cpu_base(bank):
        return 0xC000 if (bank & 0x0F) == 0x0F else 0x8000

    def offset(self, bank, address):
        base = self.cpu_base(bank)
        if not (base <= address < base + BANK_SIZE):
            raise ValueError("address $%04X is outside bank $%02X" % (address, bank))
        return HEADER_SIZE + bank * BANK_SIZE + (address - base)

    def byte(self, bank, address):
        return self.data[self.offset(bank, address)]

    def bytes(self, bank, address, count):
        start = self.offset(bank, address)
        if count and self.offset(bank, address + count - 1) != start + count - 1:
            raise ValueError("range crosses bank $%02X boundary" % bank)
        return self.data[start:start + count]

    def word(self, bank, address):
        return self.byte(bank, address) | (self.byte(bank, address + 1) << 8)

    def bank_for(self, current_bank, address):
        """Physical bank that the CPU sees at an address while current_bank is switched in."""
        if address >= 0xC000:
            return 0x1F if current_bank >= 0x10 else 0x0F
        return current_bank
