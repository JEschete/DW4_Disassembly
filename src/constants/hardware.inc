; NES CPU-visible hardware registers.

PPUCTRL   = $2000
PPUMASK   = $2001
PPUSTATUS = $2002
OAMADDR   = $2003
OAMDATA   = $2004
PPUSCROLL = $2005
PPUADDR   = $2006
PPUDATA   = $2007
OAMDMA    = $4014
APUSTATUS = $4015
JOY1      = $4016
JOY2      = $4017

MMC1_CONTROL = $8000
MMC1_CHR_0   = $A000
MMC1_CHR_1   = $C000
MMC1_PRG     = $E000

; The MMC1 decodes each register across an 8 KiB range. This ROM writes the
; final address in each range from its serial-write helpers.
MMC1_CONTROL_END = $9FFF
MMC1_CHR_0_END   = $BFFF
MMC1_CHR_1_END   = $DFFF
MMC1_PRG_END     = $FFFF