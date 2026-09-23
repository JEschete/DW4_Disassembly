// Seeds code targets stored in verified per-bank little-endian dispatch tables.
// @category DragonWarrior4

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.mem.Memory;
import ghidra.program.model.mem.MemoryBlock;

public class SeedEntryTables extends GhidraScript {
    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        if (args.length < 3 || args.length > 4) {
            throw new IllegalArgumentException(
            "usage: SeedEntryTables.java <code-entry-tables.tsv> <code-entry-pointers.tsv> " +
            "<code-exclusions.tsv> [bank-list]");
        }

        Set<Integer> includedBanks = parseBankList(args.length == 4 ? args[3] : null);
        List<Exclusion> exclusions = readExclusions(args[2]);
        Memory memory = currentProgram.getMemory();
        int seeded = 0;
        for (String line : Files.readAllLines(Path.of(args[0]))) {
            if (line.isBlank() || line.startsWith("#")) {
                continue;
            }
            String[] columns = line.split("\\t", -1);
            if (columns.length != 5) {
                throw new IllegalArgumentException("invalid entry table: " + line);
            }

            int bank = Integer.parseInt(columns[0], 16);
            if (!includedBanks.isEmpty() && !includedBanks.contains(bank)) {
                continue;
            }
            int start = Integer.parseInt(columns[1], 16);
            int endExclusive = Integer.parseInt(columns[2], 16);
            for (int address = start; address < endExclusive; address += 2) {
                seeded += seedPointer(memory, exclusions, bank, address);
            }
        }
        for (String line : Files.readAllLines(Path.of(args[1]))) {
            if (line.isBlank() || line.startsWith("#")) {
                continue;
            }
            String[] columns = line.split("\\t", -1);
            if (columns.length != 4) {
                throw new IllegalArgumentException("invalid explicit code pointer: " + line);
            }

            int bank = Integer.parseInt(columns[0], 16);
            if (!includedBanks.isEmpty() && !includedBanks.contains(bank)) {
                continue;
            }
            seeded += seedPointer(memory, exclusions, bank, Integer.parseInt(columns[1], 16));
        }
        println("Seeded " + seeded + " dispatch-table and explicit-pointer targets");
    }

    private int seedPointer(
            Memory memory,
            List<Exclusion> exclusions,
            int bank,
            int address) throws Exception {
        MemoryBlock block = findPhysicalBank(memory, bank);
        int sourceCpuBase = (bank == 0x0F || bank == 0x1F) ? 0xC000 : 0x8000;
        Address entry = block.getStart().add(address - sourceCpuBase);
        int target = Byte.toUnsignedInt(memory.getByte(entry)) |
            (Byte.toUnsignedInt(memory.getByte(entry.add(1))) << 8);
        int targetBank;
        int targetCpuBase;
        if (target >= 0xC000) {
            targetBank = bank < 0x10 ? 0x0F : 0x1F;
            targetCpuBase = 0xC000;
        }
        else if (target >= 0x8000 && sourceCpuBase == 0x8000) {
            targetBank = bank;
            targetCpuBase = 0x8000;
        }
        else {
            return 0;
        }
        if (isExcluded(exclusions, targetBank, target)) {
            return 0;
        }
        MemoryBlock targetBlock = findPhysicalBank(memory, targetBank);
        Address targetAddress = targetBlock.getStart().add(target - targetCpuBase);
        if (!disassemble(targetAddress)) {
            return 0;
        }
        addEntryPoint(targetAddress);
        return 1;
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

    private boolean isExcluded(List<Exclusion> exclusions, int bank, int address) {
        return exclusions.stream().anyMatch(exclusion ->
            exclusion.bank == bank && address >= exclusion.start && address < exclusion.end);
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

    private MemoryBlock findPhysicalBank(Memory memory, int bank) {
        if (bank == 0x1F) return memory.getBlock("PRG31");
        if (bank == 0x0F) return memory.getBlock("PRG15_C");
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