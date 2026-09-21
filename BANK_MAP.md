# Dragon Warrior IV Physical PRG Bank Map

This map classifies all 32 physical 16 KiB PRG banks in the exact US ROM. It is intentionally conservative: `Verified` means a format was decoded, a direct consumer was traced, or runtime execution/read evidence exists. All 32 dominant bank classifications now meet that standard; detailed subrange coverage is tracked separately.

All bank numbers are hexadecimal. Banks `$00-$0E` and `$10-$1E` map at CPU `$8000-$BFFF`; `$0F` and `$1F` are the fixed `$C000-$FFFF` banks in the lower and upper SUROM regions.

| Bank | Dominant content | Confidence | Evidence and important ranges |
|---|---|---|---|
| `$00` | Huffman dialogue | Verified | Groups `$00-$19`, 832 messages. Stream `$8000-$BFD7`; compatibility footer `$BFD8-$BFFF`. |
| `$01` | Huffman dialogue | Verified | Group `$19` continuation `$8000-$8025`; groups `$1A-$27`, 448 messages; compatibility footer `$BFD8-$BFFF`. |
| `$02` | Huffman dialogue | Verified | Group `$26` continuation `$8000-$83E4`; groups `$28-$35`, 448 messages; compatibility footer `$BFD8-$BFFF`. |
| `$03` | Huffman dialogue | Verified | Group `$35` continuation `$8000-$833B`; groups `$36-$40`, 352 messages; compatibility footer `$BFD8-$BFFF`. |
| `$04` | Huffman dialogue | Verified | Group `$40` continuation `$8000-$81CF`; groups `$41-$4A`, 320 messages; compatibility footer `$BFD8-$BFFF`. |
| `$05` | Per-map entity/NPC/event records | Verified | `$8000-$8091` is a 73-pointer table indexed by `CurrentMapNumber`; bank `$1C:$9B12` expands its records into WRAM entity arrays, and FCEUX observed 510 physical reads. |
| `$06` | Compressed monster graphics | Verified | Bank `$14:$9F4A` selects `$06` through the monster-ID bitmap at `$B398`; `$9F66` fetches 17-byte windows and `$9712-$9782` reconstructs two NES bitplanes in RAM. The descriptor table references 46 unique streams at `$8000-$BDE1` for 124 monster IDs. |
| `$07` | Compressed monster graphics | Verified | The same bank `$14` decoder selects `$07` from the monster-ID bitmap. The descriptor table references 23 unique streams at `$8000-$AEA3` for 64 monster IDs. Raw 1bpp/2bpp rendering fails because these bytes are compressed source streams. |
| `$08` | Map tile services, tilesets, and tile definitions | Verified | 30-entry service directory `$8000-$803B`; code from `$803C`; tile tables through `$AEE2`; map routing and submap streams `$B7F7-$BE93`; padding/footer `$BF64-$BFFF`. Detailed coverage is 96.31%. |
| `$09` | Compressed map data | Verified | Map stream begins at `$8000`; locations and submap starts are corroborated by the supplied offline ROM map. |
| `$0A` | Compressed map data | Verified | Continuation at `$8000`; named map starts resume at `$803E`. |
| `$0B` | Map data and overworld maps | Verified | Map continuation `$8000-$8074`; map data `$8075`; compressed main, Gottside, and underworld maps with row-pointer tables at `$8CEE/$A590`, `$A990/$AB65`, and `$AC65/$AE89`. |
| `$0C` | Raw map tile graphics page 0 | Verified | Standard NES 2bpp tiles from `$8000`; visually coherent and selected by bank `$08` tile logic. |
| `$0D` | Raw map and character graphics | Verified | Map graphics pages at `$8001` and `$9F14`; character sprites at `$B304`; documented empty space begins `$BE44`. |
| `$0E` | Graphics upload, character sprites, and palettes | Verified | Four-entry service directory `$8000-$8007`; code `$8008-$8090`; character graphics `$8097-$BAD6`; palette code and tables `$BAF7-$BE12`. |
| `$0F` | Lower fixed engine/kernel | Verified | Fixed trampolines, IRQ/BRK dispatcher, NMI, PPU helpers, mapper services, and map-data bank selection. Fixed at `$C000-$FFFF` for physical banks `$00-$0F`. |
| `$10` | Battle-side party and status services | Verified | 64-entry service directory `$8000-$807F`; wrapper at `$8080`; code manipulates party save records, battle RAM `$7200-$72FF`, status fields, and rewards; FCEUX observed 1,055 instruction addresses. |
| `$11` | Battle action and combatant-state services | Verified | The fixed-bank BRK ABI consumes its 25-entry directory `$8000-$8031`; nested handler tables at `$8FDC/$A40A`, typed battle lookup tables, and the inline-operand `$BF2E` call ABI recover 93.96% detailed coverage. |
| `$12` | Battle setup and combat services | Verified | 50-entry directory `$8000-$8063`; `$8064` initializes battle globals; `$80B4` clears monster records `$7274-$72E3`; party combatants are copied from `$6E45-$6E48`. |
| `$13` | Battle presentation and state routing | Verified | 28-entry directory `$8000-$8037`; code from `$8038`; routes battle/combatant/presentation state across `$6E80/$72xx/$73xx/$75xx`; FCEUX observed execution. |
| `$14` | Battle turn engine | Verified | 26-entry directory `$8000-$8033`; code from `$8034`; seven-entry presentation subdirectory `$A40D`; monster-ID map `$B2D5`, bank bitmap `$B398`, and 194 graphics descriptors `$B3B1-$B77A`; detailed coverage is 72.83%. |
| `$15` | Item/effect scripts and inventory services | Verified | 26-entry directory `$8000-$8033`; command streams `$8034-$963F`; pointer table `$9640-$98F7`; interpreter `$98F8`; vault initialization `$B374`; FCEUX observed execution. |
| `$16` | Dialogue decoder and text/UI services | Verified | 20-entry directory `$8000-$8027`; text-ID selector `$874C`; Huffman decoder `$87A8`; branch tables `$87D8/$8835`; 88 group pointers `$8951`; text/UI record, command, and dispatch tables `$A4FF-$A7AA`; variable interpreter records `$A7AB-$AAF6`. Detailed coverage is 69.20%. |
| `$17` | Map-system code and map-information tables | Verified | 38-entry mixed directory `$8000-$804B`; BRK-backed map/UI and minigame code, CHR-RAM graphics, 73 map-info pointers/records, map-animation streams, padding, and footer are all bounded. Detailed coverage is 100%. |
| `$18` | Monster, encounter, battle, and font data | Verified | 35-entry mixed directory `$8000-$8045`; 214 22-byte monster records `$8046-$92A9`; 107 16-byte encounter records `$92AA-$9959`; encounter weights, formations, three world grids, and map-keyed records `$A27B-$A812`; runtime-observed font uploader `$B798`; one-bitplane glyphs `$B83D-$BDBC`. Detailed coverage is 84.87%. |
| `$19` | Map/tileset selection and audio data | Verified | Map/tileset services occupy `$8000-$814D`; `$814E-$82FD` contains 54 four-channel track-pointer records; `$82FE-$8333` selects external sequence banks; audio sequence/instrument/envelope/effect data occupies `$8334-$BF7D`. The bank is 100% detailed. |
| `$1A` | Huffman dialogue | Verified | Group `$4A` continuation `$8000-$8072`; groups `$4B-$55`, 352 messages; rollover at `$BFD8` into bank `$1B`. |
| `$1B` | Map/event code, sprite graphics, and dual-use Huffman text | Verified | Event directory and code begin at `$8000`; those bytes also continue group `$55` through `$832E`. Sprite tile IDs and seven 25-byte layouts occupy `$95C9-$968E`, followed by 128 raw NES 2bpp tiles at `$9690-$9E8F`; the final tile byte is also the BRK opcode at `$9E8F`. Groups `$56/$57` begin at `$BA94/$BF75`, and group `$57` resumes at `$A0FE-$A65E`. |
| `$1C` | Map entity/event data and services | Verified | 22-entry mixed directory `$8000-$802B`; FCEUX-backed decoder `$96C7`; map/submap dispatch tables `$ABF5-$AD1D` and `$BF4B-$BFB0`; padding/footer `$BFB1-$BFFF`. Detailed coverage is 78.14%. |
| `$1D` | Map event and entity services | Verified | The 21-entry directory at `$8000` is registered for code discovery; code from `$802A` manipulates map coordinates, entity arrays `$6F60-$71FF`, event state, and scripted transitions. Two NMI callback continuations at `$9273/$9467` and their motion/PPU tables are recovered. Detailed coverage is 48.93%. |
| `$1E` | Map interaction and movement services | Verified | 72-entry directory `$8000-$808F`; code from `$8090` implements entity interaction, collision, movement, and map events over `$6F00-$71FF`; FCEUX observed 1,295 instruction addresses. |
| `$1F` | Upper fixed engine/kernel | Verified | Reset, NMI, IRQ/BRK dispatcher, MMC1/SUROM bank switching, generic bank calls/reads, PPU helpers, and common runtime services. Fixed at `$C000-$FFFF` for physical banks `$10-$1F`. |

## Text Layout

The decoder emits 88 groups and 2,816 messages to `analysis\text.tsv`, with one Markdown report per physical text bank. The group-to-bank mapping is:

| Physical bank | Groups | Messages |
|---|---:|---:|
| `$00` | `$00-$19` | 832 |
| `$01` | `$1A-$27` | 448 |
| `$02` | `$28-$35` | 448 |
| `$03` | `$36-$40` | 352 |
| `$04` | `$41-$4A` | 320 |
| `$1A` | `$4B-$55` | 352 |
| `$1B` | `$56-$57` | 64 |

The stream reader rolls at CPU `$BFD8`. After bank `$04`, it jumps to bank `$1A`; after bank `$1A`, it jumps to bank `$1B`; a rollover in bank `$1B` reloads the continuation pointer at `$8014`, which contains `$A0FE`.

## Classification Rules

- Dominant classification is generated from `config\bank-classifications.tsv`; detailed progress unions `config\content-ranges.tsv` with unique verified instruction-byte positions in `analysis\classification-report.txt`.
- Asset-only banks are preserved as typed data and excluded from machine-code analysis. This applies to map, text, graphics, and sound banks once their content is established.
- Mixed banks still use assembly for verified loader, decoder, driver, or gameplay code, while their asset ranges remain data.
- A valid-looking 6502 byte sequence is not labeled code unless reached by a vector, direct call, verified bank directory, Ghidra analysis, or FCEUX execution.
- Pointer-directory targets inside verified data ranges are excluded before recursive analysis.
- Standard NES 2bpp rendering is accepted as graphics evidence only when recognizable tiles and normal duplication/blank-tile patterns appear.
- Dual-use bytes remain labeled for every proven interpretation. In particular, bank `$1B` contains executable/table bytes that are also consumed as compressed dialogue.
- Unknown ranges remain data rather than being linearly disassembled.