# Runtime Path Evidence

- **startup** [PASS]: exec 1F:C03D-C15A, 97 observed addresses. RESET initialization through mapper setup
- **banking** [PASS]: exec 1F:FF91-FFD8, 36 observed addresses. SUROM PRG and outer-bank selection
- **menus** [PASS]: exec 16:8028-874C, 589 observed addresses. Text and window user-interface services
- **maps** [PASS]: exec 08:803C-B7F7, 902 observed addresses. Map tile, routing, and tileset services
- **battle** [PASS]: exec 10:8080-BC7E, 1127 observed addresses. Battle party and combat services
- **text** [PASS]: exec 16:874C-87D8, 49 observed addresses. Text-group selection and Huffman symbol decoding
- **save-load** [PASS]: exec 12:8EAD-90A9, 165 observed addresses. Persistent chapter/save-state initialization path
- **save-load** [PASS]: write -:6000-6300, 750 observed addresses. Observed persistent SRAM mutation
- **audio** [PASS]: exec 1F:E771-E790, 15 observed addresses. Audio sequence reader
- **audio** [PASS]: read 19:814E-BF7E, 995 observed addresses. Track pointers, bank selectors, and sequence data
- **graphics** [PASS]: read 0C:8000-C000, 2251 observed addresses. Raw NES 2bpp map graphics
- **graphics** [PASS]: read 0D:8000-BE44, 717 observed addresses. Raw map and character graphics
