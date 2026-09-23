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
| `$08` | Map tile services, tilesets, and tile definitions | Verified | 30-entry service directory `$8000-$803B`; code from `$803C`; tile tables through `$AEE2`; map routing and submap streams `$B7F7-$BE93`; padding/footer `$BF64-$BFFF`. |
| `$09` | Compressed map data | Verified | Map stream begins at `$8000`; locations and submap starts are corroborated by the supplied offline ROM map. |
| `$0A` | Compressed map data | Verified | Continuation at `$8000`; named map starts resume at `$803E`. |
| `$0B` | Map data and overworld maps | Verified | Map continuation `$8000-$8074`; map data `$8075`; compressed main, Gottside, and underworld maps with row-pointer tables at `$8CEE/$A590`, `$A990/$AB65`, and `$AC65/$AE89`. |
| `$0C` | Raw map tile graphics page 0 | Verified | Standard NES 2bpp tiles from `$8000`; visually coherent and selected by bank `$08` tile logic. |
| `$0D` | Raw map and character graphics | Verified | Map graphics pages at `$8001` and `$9F14`; character sprites at `$B304`; documented empty space begins `$BE44`. |
| `$0E` | Graphics upload, character sprites, and palettes | Verified | Four-entry service directory `$8000-$8007`; code `$8008-$8090`; character graphics `$8097-$BAD6`; palette code and tables `$BAF7-$BE12`. |
| `$0F` | Lower fixed engine/kernel | Verified | Fixed trampolines, IRQ/BRK dispatcher, NMI, PPU helpers, mapper services, map-object dispatch tables at `$DEA5/$DF02/$DF64`, and map-data bank selection. |
| `$10` | Battle-side party and status services | Verified | 64-entry service directory `$8000-$807F`; indirect tables at `$9E30/$AAA6/$B49B`; code manipulates party save records, battle RAM `$7200-$72FF`, status fields, and rewards. Monster ID `$B1` selects the embedded compressed graphics stream `$BD2A-$BF53`. |
| `$11` | Battle action and combatant-state services | Verified | The fixed-bank BRK ABI consumes its 25-entry directory `$8000-$8031`; nested handler tables at `$8FDC/$A40A`, typed battle lookup tables, and the inline-operand `$BF2E` call ABI recover code and data boundaries. |
| `$12` | Battle setup and combat services | Verified | 50-entry directory `$8000-$8063`; seven-entry nested dispatch table `$8493`; pointer-selected setup maps and records `$8A36-$8EAC`; further dispatch tables at `$A541/$A9ED/$AACA/$B67A`; `$8064` initializes battle globals. |
| `$13` | Battle presentation and state routing | Verified | 28-entry directory `$8000-$8037`; contiguous and mixed-record callback tables route battle/combatant/presentation state across `$6E80/$72xx/$73xx/$75xx`; `$B80B-$B90A` is a directly indexed 256-byte presentation lookup. |
| `$14` | Battle turn engine | Verified | 26-entry directory `$8000-$8033`; code from `$8034`; 46 raw NES 2bpp battle tiles `$A111-$A3F0`; seven-entry presentation subdirectory `$A40D`; monster descriptors `$B3B1-$B77A`; special embedded stream `$BE53-$BFCF`. |
| `$15` | Item/effect scripts and inventory services | Verified | 26-entry directory `$8000-$8033`; 346 command streams `$8034-$963F`; 126 embedded callback fields; pointer table `$9640-$98F7`; interpreter `$98F8`; vault initialization `$B374`. |
| `$16` | Dialogue decoder and text/UI services | Verified | 20-entry directory `$8000-$8027`; text-ID selector `$874C`; Huffman decoder `$87A8`; 88 group pointers `$8951`; ten page-wrap escape handlers in the text/UI command arrays; variable interpreter records `$A7AB-$AAF6`. |
| `$17` | Map-system code and map-information tables | Verified | 38-entry mixed directory `$8000-$804B`; BRK-backed map/UI and minigame code, CHR-RAM graphics, 73 map-info pointers/records, map-animation streams, padding, and footer are all bounded. |
| `$18` | Monster, encounter, battle, and font data | Verified | 35-entry mixed directory `$8000-$8045`; 214 22-byte monster records `$8046-$92A9`; 107 16-byte encounter records `$92AA-$9959`; encounter weights, formations, three world grids, and map-keyed records `$A27B-$A812`; runtime-observed font uploader `$B798`; one-bitplane glyphs `$B83D-$BDBC`. |
| `$19` | Map/tileset selection and audio data | Verified | Map/tileset services occupy `$8000-$814D`; `$814E-$82FD` contains 54 four-channel track-pointer records; `$82FE-$8333` selects external sequence banks; audio sequence/instrument/envelope/effect data occupies `$8334-$BF7D`. |
| `$1A` | Huffman dialogue | Verified | Group `$4A` continuation `$8000-$8072`; groups `$4B-$55`, 352 messages; rollover at `$BFD8` into bank `$1B`. |
| `$1B` | Map/event code, sprite graphics, and dual-use Huffman text | Verified | Event directory/code and 224 five-byte records begin at `$8000`; group `$55` overlaps them through `$832E`. Sprite layouts and graphics occupy `$95C9-$9E8F`; map motion, PPU command, update, runtime-template, and event-stream tables are bounded later in the bank. Groups `$56/$57` begin at `$BA94/$BF75`, and group `$57` resumes at `$B78A-$BCEA`. |
| `$1C` | Map entity/event data and services | Verified | 22-entry mixed directory `$8000-$802B`; FCEUX-backed decoder `$96C7`; map/submap dispatch tables `$ABF5-$AD1D` and `$BF4B-$BFB0`; padding/footer `$BFB1-$BFFF`. |
| `$1D` | Map event and entity services | Verified | The 21-entry directory at `$8000` is registered for code discovery; code from `$802A` manipulates map coordinates, entity arrays `$6F60-$71FF`, event state, and scripted transitions. Nested map/submap/event dispatches, two NMI callbacks, and motion/PPU tables are recovered. |
| `$1E` | Map interaction and movement services | Verified | 72-entry directory `$8000-$808F`; code from `$8090` implements entity interaction, collision, movement, and map events over `$6F00-$71FF`; chapter dispatch and transition tables are typed. |
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

The stream reader rolls at CPU `$BFD8`. After bank `$04`, it jumps to bank `$1A`; after bank `$1A`, it jumps to bank `$1B`; a rollover in bank `$1B` reloads the continuation pointer at `$8014`, which contains `$B78A`.

## Classification Rules

- Dominant classification is generated from `config\bank-classifications.tsv`; detailed progress unions `config\content-ranges.tsv` with unique verified instruction-byte positions in `analysis\classification-report.txt`.
- Asset-only banks are preserved as typed data and excluded from machine-code analysis. This applies to map, text, graphics, and sound banks once their content is established.
- Mixed banks still use assembly for verified loader, decoder, driver, or gameplay code, while their asset ranges remain data.
- A valid-looking 6502 byte sequence is not labeled code unless reached by a vector, direct call, verified bank directory, Ghidra analysis, or FCEUX execution.
- Pointer-directory targets inside verified data ranges are excluded before recursive analysis.
- Standard NES 2bpp rendering is accepted as graphics evidence only when recognizable tiles and normal duplication/blank-tile patterns appear.
- Dual-use bytes remain labeled for every proven interpretation. In particular, bank `$1B` contains executable/table bytes that are also consumed as compressed dialogue.
- Unknown ranges remain data rather than being linearly disassembled.