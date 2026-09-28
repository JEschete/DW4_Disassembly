"""Dialogue decoding (port of tools/Dw4Tool/TextDecoder.cs) and the game's text symbol table."""

TREE_BANK = 0x16
TREE_ONE = 0x87D8
TREE_ZERO = 0x8835
POINTER_TABLE = 0x8951
ROOT_NODE = 0x5C
END_MESSAGE = 0x46
MESSAGES_PER_GROUP = 32
GROUP_COUNT = 0x58
STREAM_END = 0xBFD8
FINAL_CONTINUATION_POINTER = 0x8014
BANK_THRESHOLDS = [0x1A, 0x28, 0x36, 0x41, 0x4B, 0x56]

PUNCTUATION = {
    0x65: "--", 0x66: '"', 0x67: '"', 0x68: "'", 0x69: "'", 0x6A: "'", 0x6B: "'", 0x6C: ".'",
    0x6D: "?", 0x6E: "!", 0x6F: "-", 0x70: "*", 0x71: ":", 0x72: "...", 0x75: "(", 0x76: ")",
    0x77: ",", 0x78: ".", 0x80: "<DOWN>", 0x81: "<RIGHT>",
}


def symbol_text(symbol):
    if symbol == 0x00:
        return " "
    if 0x01 <= symbol <= 0x0A:
        return chr(ord("0") + symbol - 1)
    if 0x0B <= symbol <= 0x24:
        return chr(ord("a") + symbol - 0x0B)
    if 0x25 <= symbol <= 0x3E:
        return chr(ord("A") + symbol - 0x25)
    return PUNCTUATION.get(symbol, "<%02X>" % symbol)


def render(symbols):
    return "".join(symbol_text(symbol) for symbol in symbols)


def group_bank(group):
    index = 0
    while index < len(BANK_THRESHOLDS) and group >= BANK_THRESHOLDS[index]:
        index += 1
    return index if index <= 4 else (0x1A if index == 5 else 0x1B)


class _BitReader:
    def __init__(self, rom, bank, address):
        self.rom, self.bank, self.address = rom, bank, address
        self.buffer = 0
        self.remaining = 0
        self.position = 0

    def _byte(self):
        value = self.rom.byte(self.bank, self.address)
        self.address += 1
        if self.address == STREAM_END:
            if self.bank < 4:
                self.bank, self.address = self.bank + 1, 0x8000
            elif self.bank == 4:
                self.bank, self.address = 0x1A, 0x8000
            elif self.bank == 0x1A:
                self.bank, self.address = 0x1B, 0x8000
            elif self.bank == 0x1B:
                self.address = self.rom.word(0x1B, FINAL_CONTINUATION_POINTER)
            else:
                raise ValueError("text stream crossed the final supported bank boundary")
        return value

    def bit(self):
        if self.remaining == 0:
            self.buffer = (self._byte() << 16) | (self._byte() << 8) | self._byte()
            self.remaining = 24
        value = (self.buffer >> 23) & 1
        self.buffer = (self.buffer << 1) & 0xFFFFFF
        self.remaining -= 1
        self.position += 1
        return value


def decode_dialogue(rom):
    ones = rom.bytes(TREE_BANK, TREE_ONE, ROOT_NODE + 1)
    zeros = rom.bytes(TREE_BANK, TREE_ZERO, ROOT_NODE + 1)
    messages = []
    for group in range(GROUP_COUNT):
        address = rom.word(TREE_BANK, POINTER_TABLE + group * 2)
        bank = group_bank(group)
        reader = _BitReader(rom, bank, address)
        for index in range(MESSAGES_PER_GROUP):
            start = reader.position
            symbols = []
            while True:
                node = ROOT_NODE
                while True:
                    nxt = zeros[node] if reader.bit() == 0 else ones[node]
                    if nxt & 0x80:
                        break
                    if nxt > ROOT_NODE:
                        raise ValueError("invalid Huffman node in group $%02X" % group)
                    node = nxt
                symbol = nxt & 0x7F
                if symbol == END_MESSAGE:
                    break
                symbols.append(symbol)
                if len(symbols) > 4096:
                    raise ValueError("unterminated message $%02X:%02X" % (group, index))
            messages.append({
                "id": group * MESSAGES_PER_GROUP + index,
                "group": group, "index": index,
                "bank": bank, "group_pointer": address,
                "start_bit": start, "end_bit": reader.position,
                "symbols": symbols,
                "text": render(symbols),
            })
    return messages
