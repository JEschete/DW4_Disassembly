# Verified Routine Contracts

## InitializeChapterSaveState (`$12:$8EAD`)

- Calling convention: Bank $12 service entry; RTS to caller
- Inputs: SaveCurrentChapterMinus1 selects chapter records
- Outputs: Save party and chapter-dependent state initialized
- Clobbers: A,X,Y,flags,$02-$07,$79-$7A
- Side effects: Clears SaveWorkArea $610E-$6156 and writes persistent party/state fields
- Evidence: Direct stores and bounded loops at $8EAD-$90A8

## Bank14_DecodeMonsterGraphicsBitplanes (`$14:$9712`)

- Calling convention: JSR; returns with RTS
- Inputs: Compressed stream state and destination state prepared by caller
- Outputs: Two NES bitplanes decoded at $0650/$0660 and rearranged at $0670
- Clobbers: A,X,Y,flags,decoder zero-page state
- Side effects: Writes stack-page graphics staging buffers
- Evidence: Instruction trace and destination stores at $9712-$9782

## Bank14_SelectMonsterGraphicsBank (`$14:$9F26`)

- Calling convention: JSR; returns with RTS
- Inputs: Monster ID in caller-established state
- Outputs: Selected physical graphics bank and descriptor state
- Clobbers: A,X,Y,flags,graphics state
- Side effects: Selects bank $06/$07 and handles embedded overrides
- Evidence: Bitmap lookup at $B398 and observed bank reads

## Bank14_RefillMonsterGraphicsInput (`$14:$9F66`)

- Calling convention: JSR; returns with RTS
- Inputs: Compressed source pointer and selected bank
- Outputs: 17-byte input window refilled
- Clobbers: A,X,Y,flags
- Side effects: Banked ROM reads copied to stack-page RAM
- Evidence: Copy loop at $9F66

## Bank14_ReadMonsterGraphicsByte (`$14:$9F8D`)

- Calling convention: JSR; returns with RTS
- Inputs: Compressed source pointer
- Outputs: A is next compressed byte; source pointer advanced
- Clobbers: A,Y,flags,source pointer
- Side effects: May refill the compressed input window
- Evidence: Pointer increment and refill call at $9F8D

## Bank14_LoadMonsterGraphicsDescriptor (`$14:$9FA9`)

- Calling convention: JSR; returns with RTS
- Inputs: Monster ID
- Outputs: Five-byte descriptor loaded into graphics state
- Clobbers: A,X,Y,flags,graphics state
- Side effects: Reads descriptor table $B3B1-$B77A
- Evidence: Five-byte indexed descriptor access at $9FA9

## Bank15_InterpretEffectScript (`$15:$98F8`)

- Calling convention: Service entry; returns through script control flow
- Inputs: Effect script pointer and interpreter state
- Outputs: Effect commands applied; completion state returned in flags/state
- Clobbers: A,X,Y,flags,script zero-page state
- Side effects: Mutates inventory, field, and effect state according to command stream
- Evidence: Command dispatch from verified scripts $8034-$963F

## Bank15_InitializeInventoryStorage (`$15:$B374`)

- Calling convention: JSR/service entry; returns with RTS
- Inputs: None
- Outputs: Vault/inventory storage initialized
- Clobbers: A,X,flags
- Side effects: Writes 128-byte inventory storage region
- Evidence: Bounded initialization loop at $B374

## Bank16_SelectTextGroup (`$16:$874C`)

- Calling convention: JSR; returns with RTS
- Inputs: Text ID/group selector in caller state
- Outputs: Compressed-text bank and group pointer selected
- Clobbers: A,X,Y,flags,text stream state
- Side effects: May switch the active text bank
- Evidence: Threshold and pointer lookup at $874C-$87A7

## Bank16_DecodeHuffmanSymbol (`$16:$87A8`)

- Calling convention: JSR; returns with RTS
- Inputs: Compressed stream state; root node $5C
- Outputs: A is one decoded symbol; stream bit position advanced
- Clobbers: A,X,Y,flags,text stream state
- Side effects: Reads Huffman trees $87D8/$8835 and compressed text banks
- Evidence: MSB-first tree traversal at $87A8-$87D7

## Bank18_LoadFontTiles (`$18:$B798`)

- Calling convention: Runtime-observed entry; returns through graphics service
- Inputs: Font tile selector and PPU destination state
- Outputs: One-bitplane glyphs uploaded to PPU pattern table $1000
- Clobbers: A,X,Y,flags,PPU staging state
- Side effects: Reads font ranges $B83D-$BDBC and writes PPU data
- Evidence: FCEUX execution and ROM-read evidence

## Bank1C_DecodeMapEntityData (`$1C:$96C7`)

- Calling convention: Runtime-observed entry; returns to map loader
- Inputs: Map/entity stream pointer and destination arrays
- Outputs: Entity and event records expanded into WRAM
- Clobbers: A,X,Y,flags,map decoder state
- Side effects: Reads structured bank $1C data and writes entity arrays
- Evidence: FCEUX-backed decoder path beginning $96C7

## Bank1C_LoadMapEntityPointer (`$1C:$9B12`)

- Calling convention: JSR; returns with selected pointer
- Inputs: CurrentMapNumber
- Outputs: Pointer for the selected map entity record
- Clobbers: A,X,Y,flags,pointer state
- Side effects: Reads bank $05's 73-entry pointer table
- Evidence: Indexed pointer lookup at $9B12

## Bank1D_NmiCallbackA (`$1D:$9273`)

- Calling convention: NMI callback; exits through interrupt flow
- Inputs: Transition state prepared by installer
- Outputs: First map-transition pass advanced
- Clobbers: A,X,Y,flags,PPU/NMI state
- Side effects: Writes PPU and transition state
- Evidence: Pointer $925A installs this callback at RAM $0503-$0504

## Bank1D_NmiCallbackB (`$1D:$9467`)

- Calling convention: NMI callback; exits through interrupt flow
- Inputs: Transition state prepared by installer
- Outputs: Second map-transition pass advanced
- Clobbers: A,X,Y,flags,PPU/NMI state
- Side effects: Writes PPU and transition state
- Evidence: Pointer $944E installs this callback at RAM $0503-$0504

## ResetMain (`$1F:$C03D`)

- Calling convention: RESET entry; does not return
- Inputs: CPU reset state
- Outputs: Runtime initialized and main flow entered
- Clobbers: A,X,Y,flags,stack,RAM/MMC1/PPU state
- Side effects: Initializes stack, RAM, PPU, mapper, and interrupt trampoline
- Evidence: CPU RESET vector and startup trace

## WaitForFirstVBlank (`$1F:$C03E`)

- Calling convention: Reset fallthrough
- Inputs: PPU warming after reset
- Outputs: First vblank observed
- Clobbers: A,flags
- Side effects: Reads PPUSTATUS
- Evidence: Busy wait at $C03E

## WaitForSecondVBlank (`$1F:$C043`)

- Calling convention: Reset fallthrough
- Inputs: First vblank completed
- Outputs: Second vblank observed
- Clobbers: A,flags
- Side effects: Reads PPUSTATUS
- Evidence: Busy wait at $C043

## ClearInternalRamLoop (`$1F:$C07E`)

- Calling convention: Reset-internal loop
- Inputs: X page offset and A=$00
- Outputs: Selected internal RAM pages cleared
- Clobbers: A,X,flags
- Side effects: Writes internal RAM pages
- Evidence: Bounded clear loop at $C07E

## InitializeMmc1 (`$1F:$C104`)

- Calling convention: JSR; returns with RTS
- Inputs: Initial mapper values in fixed state
- Outputs: MMC1 control and CHR registers initialized
- Clobbers: A,flags,$0500-$0501
- Side effects: Serial writes through $9FFF/$BFFF/$DFFF
- Evidence: Calls the three five-bit writers

## WriteMmc1Control (`$1F:$C118`)

- Calling convention: JSR; returns with RTS
- Inputs: A contains five-bit MMC1 control value
- Outputs: MMC1 control register committed
- Clobbers: A,flags,$0500
- Side effects: Five serial writes through $9FFF
- Evidence: Five-write shift sequence at $C118

## WriteMmc1ChrBank0 (`$1F:$C12F`)

- Calling convention: JSR; returns with RTS
- Inputs: A contains five-bit CHR-bank-0 value
- Outputs: MMC1 CHR bank 0 register committed
- Clobbers: A,flags,$0501
- Side effects: Five serial writes through $BFFF
- Evidence: Five-write shift sequence at $C12F

## WriteMmc1ChrBank1 (`$1F:$C146`)

- Calling convention: JSR; returns with RTS
- Inputs: A contains five-bit CHR-bank-1 value
- Outputs: MMC1 CHR bank 1 register committed
- Clobbers: A,flags
- Side effects: Five serial writes through $DFFF
- Evidence: Five-write shift sequence at $C146

## NmiHandler (`$1F:$C15A`)

- Calling convention: NMI entry; returns with RTI
- Inputs: PPU/APU frame state and installed callback
- Outputs: Frame services completed
- Clobbers: A,X,Y,flags,NMI scratch state
- Side effects: Updates PPU/APU state and dispatches installed callback
- Evidence: CPU NMI trampoline and runtime trace

## IrqHandler (`$1F:$C408`)

- Calling convention: IRQ/BRK entry; returns through interrupt dispatcher
- Inputs: Stacked status/return address and inline service bytes
- Outputs: Selected service invoked; return address advanced
- Clobbers: A,X,Y,flags,stack,dispatch scratch
- Side effects: Dispatches fixed-bank BRK services and consumes operands
- Evidence: CPU IRQ vector and decoded BRK dispatcher

## InitializeOamShadow (`$1F:$C543`)

- Calling convention: JSR; returns with RTS
- Inputs: None
- Outputs: OAM shadow filled with $F7
- Clobbers: A,X,flags
- Side effects: Writes 256 bytes at $0200-$02FF
- Evidence: 256-iteration store loop at $C543

## ClearNametables (`$1F:$C575`)

- Calling convention: JSR; returns with RTS
- Inputs: PPU address/control prepared by caller
- Outputs: Eight 256-byte PPU data blocks cleared
- Clobbers: A,X,Y,flags
- Side effects: Writes PPUDATA and reads PPUSTATUS
- Evidence: Nested clear loops at $C575

## AddByteToPointer (`$1F:$C813`)

- Calling convention: JSR; returns with RTS
- Inputs: A is unsigned addend; X selects a zero-page little-endian pointer
- Outputs: Pointer [X+1:X] increased by A
- Clobbers: A,flags
- Side effects: Writes two pointer bytes at [X] and [X+1]
- Evidence: Carry-propagating add at $C813-$C81C

## AddWordToPointer (`$1F:$C81D`)

- Calling convention: JSR; returns with RTS
- Inputs: Y:A is unsigned 16-bit addend; X selects a zero-page pointer
- Outputs: Pointer [X+1:X] increased by Y:A
- Clobbers: A,flags
- Side effects: Writes two pointer bytes at [X] and [X+1]
- Evidence: Calls AddByteToPointer then adds Y to high byte

## MultiplyPointerWord (`$1F:$C827`)

- Calling convention: JSR; returns with RTS
- Inputs: A is multiplier; X selects a zero-page little-endian word
- Outputs: Word [X+1:X] replaced by its 16-bit product with A
- Clobbers: A,flags,$16-$18
- Side effects: Shifts and overwrites the selected zero-page word
- Evidence: Shift-add multiply loop at $C827-$C850

## ReadAudioSequenceByte (`$1F:$E771`)

- Calling convention: JSR; returns with RTS
- Inputs: X selects audio channel sequence state
- Outputs: A is next sequence byte; channel pointer advanced
- Clobbers: A,Y,flags,audio pointer state
- Side effects: Reads banked audio sequence data
- Evidence: Indexed indirect read and pointer increment at $E771

## ResetApuChannels (`$1F:$F08A`)

- Calling convention: JSR; returns with RTS
- Inputs: None
- Outputs: APU channels enabled in reset state
- Clobbers: A,X,flags
- Side effects: Writes APU status and pulse sweep registers
- Evidence: Direct APU register writes at $F08A

## WaitForNmi (`$1F:$FF74`)

- Calling convention: JSR; returns with RTS
- Inputs: NMI counter at $050C is active
- Outputs: Returns after counter changes
- Clobbers: A,flags,$12
- Side effects: Waits on NMI-updated state and calls frame helper
- Evidence: Polling loop at $FF74-$FF85

## SelectPrgBank (`$1F:$FF91`)

- Calling convention: JSR/fixed service; returns with RTS
- Inputs: A is physical PRG bank $00-$1F
- Outputs: MMC1 PRG and outer bank bits selected
- Clobbers: A,flags,$0501,$0507
- Side effects: Five serial writes through $FFFF and CHR-bank-0 outer-bit write through $BFFF
- Evidence: SUROM bank-selection sequence at $FF91

## Reset (`$1F:$FFD8`)

- Calling convention: CPU RESET vector target; jumps to reset body
- Inputs: CPU reset state
- Outputs: Control transferred to ResetMain
- Clobbers: A,flags
- Side effects: Resets MMC1 shift register
- Evidence: Vector target and reset stub at $FFD8
