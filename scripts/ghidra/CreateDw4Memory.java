// Creates the verified MMC1/SUROM physical-bank layout before auto-analysis.
// @category DragonWarrior4

import java.io.ByteArrayInputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;

import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSpace;
import ghidra.program.model.mem.Memory;
import ghidra.program.model.mem.MemoryBlock;

public class CreateDw4Memory extends GhidraScript {
    private static final int HEADER_SIZE = 16;
    private static final int BANK_SIZE = 0x4000;
    private static final int BANK_COUNT = 32;

    @Override
    public void run() throws Exception {
        String[] scriptArgs = getScriptArgs();
        if (scriptArgs.length != 1) {
            throw new IllegalArgumentException("usage: CreateDw4Memory.java <rom>");
        }

        byte[] rom = Files.readAllBytes(Path.of(scriptArgs[0]));
        if (rom.length != HEADER_SIZE + BANK_SIZE * BANK_COUNT) {
            throw new IllegalArgumentException("unexpected ROM size: " + rom.length);
        }

        Memory memory = currentProgram.getMemory();
        AddressSpace defaultSpace = currentProgram.getAddressFactory().getDefaultAddressSpace();
        MemoryBlock fixedUpper = memory.getBlock("PRG31");
        if (fixedUpper == null || fixedUpper.getStart().getOffset() != 0xC000) {
            throw new IllegalStateException("BinaryLoader did not create PRG31 at $C000");
        }
        fixedUpper.setRead(true);
        fixedUpper.setWrite(false);
        fixedUpper.setExecute(true);

        for (int bank = 0; bank < BANK_COUNT - 1; bank++) {
            int cpuBase = bank == 0x0F ? 0xC000 : 0x8000;
            String name = bank == 0x0F
                ? "PRG15_C"
                : String.format("PRG%02d_8", bank);
            byte[] bytes = Arrays.copyOfRange(
                rom,
                HEADER_SIZE + bank * BANK_SIZE,
                HEADER_SIZE + (bank + 1) * BANK_SIZE);
            Address start = defaultSpace.getAddress(cpuBase);
            MemoryBlock block = memory.createInitializedBlock(
                name,
                start,
                new ByteArrayInputStream(bytes),
                BANK_SIZE,
                monitor,
                true);
            block.setRead(true);
            block.setWrite(false);
            block.setExecute(true);
        }

        if (memory.getBlock(defaultSpace.getAddress(0x0000)) == null) {
            MemoryBlock ram = memory.createUninitializedBlock(
                "RAM", defaultSpace.getAddress(0x0000), 0x8000, false);
            ram.setRead(true);
            ram.setWrite(true);
            ram.setExecute(true);
        }

        println("Created 32 physical PRG bank blocks for MMC1/SUROM analysis");
    }
}