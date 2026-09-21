// Seeds mapper-aware NES bank entry points before Ghidra auto-analysis.
// @category DragonWarrior4

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.HashSet;
import java.util.Set;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.mem.Memory;
import ghidra.program.model.mem.MemoryBlock;

public class SeedBankCode extends GhidraScript {
    @Override
    public void run() throws Exception {
        String[] scriptArgs = getScriptArgs();
        if (scriptArgs.length < 1 || scriptArgs.length > 3) {
            throw new IllegalArgumentException(
                "usage: SeedBankCode.java <code-seeds.tsv> [fceux-exec.tsv] [bank-list]");
        }

        Memory memory = currentProgram.getMemory();
        Set<Integer> includedBanks = parseBankList(scriptArgs.length == 3 ? scriptArgs[2] : null);
        int seeded = 0;
        int inputCount = Math.min(scriptArgs.length, 2);
        for (int inputIndex = 0; inputIndex < inputCount; inputIndex++) {
            String path = scriptArgs[inputIndex];
            if (!Files.exists(Path.of(path))) {
                continue;
            }
            for (String line : Files.readAllLines(Path.of(path))) {
                if (line.isBlank() || line.startsWith("#")) {
                    continue;
                }

                String[] columns = line.split("\\t", -1);
                if (columns.length != 2 && columns.length != 5) {
                    throw new IllegalArgumentException("invalid code seed: " + line);
                }

                int bank = Integer.parseInt(columns[0], 16);
                if (!includedBanks.isEmpty() && !includedBanks.contains(bank)) {
                    continue;
                }
                int cpuAddress = Integer.parseInt(columns[1], 16);
                MemoryBlock block = findPhysicalBank(memory, bank);
                if (block == null) {
                    printerr(String.format("No Ghidra block for bank $%02X", bank));
                    continue;
                }

                int cpuBase = (bank == 0x0F || bank == 0x1F) ? 0xC000 : 0x8000;
                Address address = block.getStart().add(cpuAddress - cpuBase);
                if (disassemble(address)) {
                    addEntryPoint(address);
                    seeded++;
                }
            }
        }

        println("Seeded " + seeded + " mapper-aware code entry points");
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
        if (bank == 0x1F) {
            return memory.getBlock("PRG31");
        }
        if (bank == 0x0F) {
            return memory.getBlock("PRG15_C");
        }
        return memory.getBlock(String.format("PRG%02d_8", bank));
    }
}