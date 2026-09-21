// Exports contiguous Ghidra-defined instruction ranges by physical PRG bank.
// @category DragonWarrior4

import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSet;
import ghidra.program.model.listing.Instruction;
import ghidra.program.model.listing.InstructionIterator;
import ghidra.program.model.listing.Listing;
import ghidra.program.model.mem.Memory;
import ghidra.program.model.mem.MemoryBlock;

public class ExportBankCode extends GhidraScript {
    @Override
    public void run() throws Exception {
        String[] scriptArgs = getScriptArgs();
        if (scriptArgs.length < 2 || scriptArgs.length > 3) {
            throw new IllegalArgumentException(
            "usage: ExportBankCode.java <output.tsv> <code-exclusions.tsv> [bank-list]");
        }

        Path output = Path.of(scriptArgs[0]);
        List<Exclusion> exclusions = readExclusions(scriptArgs[1]);
        Set<Integer> includedBanks = parseBankList(scriptArgs.length == 3 ? scriptArgs[2] : null);
        Files.createDirectories(output.getParent());
        Memory memory = currentProgram.getMemory();
        Listing listing = currentProgram.getListing();
        int ranges = 0;
        int instructions = 0;

        try (PrintWriter writer = new PrintWriter(Files.newBufferedWriter(output))) {
            writer.println("# Bank\tStart\tEndExclusive\tInstructionCount\tGhidraBlock");
            for (int bank = 0; bank < 32; bank++) {
                if (!includedBanks.isEmpty() && !includedBanks.contains(bank)) {
                    continue;
                }
                MemoryBlock block = findPhysicalBank(memory, bank);
                if (block == null) {
                    continue;
                }

                InstructionIterator iterator = listing.getInstructions(
                    new AddressSet(block.getStart(), block.getEnd()), true);
                Instruction first = null;
                Instruction previous = null;
                int rangeInstructionCount = 0;
                while (iterator.hasNext()) {
                    Instruction current = iterator.next();
                    if (isExcluded(exclusions, bank, block, current)) {
                        if (first != null) {
                            writeRange(writer, bank, block, first, previous, rangeInstructionCount);
                            ranges++;
                            first = null;
                            previous = null;
                            rangeInstructionCount = 0;
                        }
                        continue;
                    }
                    instructions++;
                    if (first == null) {
                        first = current;
                    }
                    else if (!previous.getMaxAddress().next().equals(current.getAddress())) {
                        writeRange(writer, bank, block, first, previous, rangeInstructionCount);
                        ranges++;
                        first = current;
                        rangeInstructionCount = 0;
                    }

                    previous = current;
                    rangeInstructionCount++;
                }

                if (first != null) {
                    writeRange(writer, bank, block, first, previous, rangeInstructionCount);
                    ranges++;
                }
            }
        }

        println("Exported " + instructions + " instructions in " + ranges + " ranges to " + output);
    }

    private List<Exclusion> readExclusions(String path) throws Exception {
        List<Exclusion> exclusions = new ArrayList<>();
        for (String line : Files.readAllLines(Path.of(path))) {
            if (line.isBlank() || line.startsWith("#")) {
                continue;
            }
            String[] columns = line.split("\\t", -1);
            if (columns.length != 5) {
                throw new IllegalArgumentException("invalid code exclusion: " + line);
            }
            exclusions.add(new Exclusion(
                Integer.parseInt(columns[0], 16),
                Integer.parseInt(columns[1], 16),
                Integer.parseInt(columns[2], 16)));
        }
        return exclusions;
    }

    private boolean isExcluded(List<Exclusion> exclusions, int bank,
            MemoryBlock block, Instruction instruction) {
        int cpuBase = (bank == 0x0F || bank == 0x1F) ? 0xC000 : 0x8000;
        long start = cpuBase + instruction.getAddress().subtract(block.getStart());
        long end = cpuBase + instruction.getMaxAddress().subtract(block.getStart()) + 1;
        return exclusions.stream().anyMatch(exclusion ->
            exclusion.bank == bank && start < exclusion.end && end > exclusion.start);
    }

    private Set<Integer> parseBankList(String value) {
        Set<Integer> banks = new HashSet<>();
        if (value == null || value.isBlank()) {
            return banks;
        }
        for (String item : value.split("_")) {
            banks.add(Integer.parseInt(item.trim(), 16));
        }
        return banks;
    }

    private void writeRange(PrintWriter writer, int bank, MemoryBlock block,
            Instruction first, Instruction last, int count) {
        int cpuBase = (bank == 0x0F || bank == 0x1F) ? 0xC000 : 0x8000;
        long start = cpuBase + first.getAddress().subtract(block.getStart());
        long endExclusive = cpuBase + last.getMaxAddress().subtract(block.getStart()) + 1;
        writer.printf("%02X\t%04X\t%04X\t%d\t%s%n",
            bank, start, endExclusive, count, block.getName());
    }

    private MemoryBlock findPhysicalBank(Memory memory, int bank) {
        if (bank == 0x1F) {
            return memory.getBlock("PRG31");
        }
        if (bank == 0x0F) {
            return memory.getBlock("PRG15_C");
        }
        return memory.getBlock(String.format("PRG%02d_8", bank));
    }

    private static class Exclusion {
        final int bank;
        final int start;
        final int end;

        Exclusion(int bank, int start, int end) {
            this.bank = bank;
            this.start = start;
            this.end = end;
        }
    }
}