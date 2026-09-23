; PRG bank $1F: ROM file $07C010-$08000F
; CPU window $C000-$FFFF
; Disassembled by project-local da65 using generated code/data ranges.

base $C000
Bank1F_Start:
; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------
        db   $FF                             ; C000 FF                       .
; ----------------------------------------------------------------------------
FixedTrampoline00:
        jmp     UpperFixedEngine_Branch_E577    ; C001 4C 77 E5                 Lw.
; ----------------------------------------------------------------------------
FixedTrampoline01:
        jmp     UpperFixedEngine_Branch_E54B    ; C004 4C 4B E5                 LK.
; ----------------------------------------------------------------------------
FixedTrampoline02:
        jmp     UpperFixedEngine_Branch_E58D    ; C007 4C 8D E5                 L..
; ----------------------------------------------------------------------------
FixedTrampoline03:
        jmp     UpperFixedEngine_Branch_E5A3    ; C00A 4C A3 E5                 L..
; ----------------------------------------------------------------------------
FixedTrampoline04:
        jmp     UpperFixedEngine_Branch_E5B9    ; C00D 4C B9 E5                 L..
; ----------------------------------------------------------------------------
FixedTrampoline05:
        jmp     UpperFixedEngine_Branch_E5CF    ; C010 4C CF E5                 L..
; ----------------------------------------------------------------------------
FixedTrampoline06:
        jmp     UpperFixedEngine_Branch_E5E5    ; C013 4C E5 E5                 L..
; ----------------------------------------------------------------------------
FixedTrampoline07:
        jmp     UpperFixedEngine_Branch_E561    ; C016 4C 61 E5                 La.
; ----------------------------------------------------------------------------
FixedTrampoline08:
        jmp     UpperFixedEngine_Branch_E687    ; C019 4C 87 E6                 L..
; ----------------------------------------------------------------------------
FixedTrampoline09:
        jmp     ResetApuChannels                ; C01C 4C 8A F0                 L..
; ----------------------------------------------------------------------------
FixedTrampoline0A:
        jmp     UpperFixedEngine_Entry_EF5B     ; C01F 4C 5B EF                 L[.
; ----------------------------------------------------------------------------
FixedTrampoline0B:
        jmp     UpperFixedEngine_Branch_F057    ; C022 4C 57 F0                 LW.
; ----------------------------------------------------------------------------
FixedTrampoline0C:
        jmp     UpperFixedEngine_Branch_F05E    ; C025 4C 5E F0                 L^.
; ----------------------------------------------------------------------------
FixedTrampoline0D:
        jmp     UpperFixedEngine_Branch_EED5    ; C028 4C D5 EE                 L..
; ----------------------------------------------------------------------------
FixedTrampoline0E:
        jmp     UpperFixedEngine_Branch_F0B4    ; C02B 4C B4 F0                 L..
; ----------------------------------------------------------------------------
FixedTrampoline0F:
        jmp     UpperFixedEngine_Branch_E5FB    ; C02E 4C FB E5                 L..
; ----------------------------------------------------------------------------
FixedTrampoline10:
        jmp     UpperFixedEngine_Branch_E617    ; C031 4C 17 E6                 L..
; ----------------------------------------------------------------------------
FixedTrampoline11:
        jmp     UpperFixedEngine_Branch_E62D    ; C034 4C 2D E6                 L-.
; ----------------------------------------------------------------------------
FixedTrampoline12:
        jmp     UpperFixedEngine_Branch_E643    ; C037 4C 43 E6                 LC.
; ----------------------------------------------------------------------------
FixedTrampoline13:
        jmp     UpperFixedEngine_Branch_E659    ; C03A 4C 59 E6                 LY.
; ----------------------------------------------------------------------------
ResetMain:
        cld                                     ; C03D D8                       .
WaitForFirstVBlank:
        lda     PPUSTATUS                       ; C03E AD 02 20                 ..
        bpl     WaitForFirstVBlank              ; C041 10 FB                    ..
WaitForSecondVBlank:
        lda     PPUSTATUS                       ; C043 AD 02 20                 ..
        bpl     WaitForSecondVBlank             ; C046 10 FB                    ..
        nop                                     ; C048 EA                       .
        nop                                     ; C049 EA                       .
        nop                                     ; C04A EA                       .
        nop                                     ; C04B EA                       .
        nop                                     ; C04C EA                       .
        nop                                     ; C04D EA                       .
        lda     #$10                            ; C04E A9 10                    ..
        sta     PPUCTRL                         ; C050 8D 00 20                 ..
        lda     #$00                            ; C053 A9 00                    ..
        sta     PPUMASK                         ; C055 8D 01 20                 ..
        sta     $FFFF                           ; C058 8D FF FF                 ...
        sta     $FFFF                           ; C05B 8D FF FF                 ...
        sta     $FFFF                           ; C05E 8D FF FF                 ...
        sta     $FFFF                           ; C061 8D FF FF                 ...
        sta     $FFFF                           ; C064 8D FF FF                 ...
        lda     #$4C                            ; C067 A9 4C                    .L
        sta     $0502                           ; C069 8D 02 05                 ...
        lda     $C0D2                           ; C06C AD D2 C0                 ...
        sta     $0503                           ; C06F 8D 03 05                 ...
        lda     $C0D3                           ; C072 AD D3 C0                 ...
        sta     $0504                           ; C075 8D 04 05                 ...
        ldx     #$FF                            ; C078 A2 FF                    ..
        txs                                     ; C07A 9A                       .
        lda     #$00                            ; C07B A9 00                    ..
        tax                                     ; C07D AA                       .
ClearInternalRamLoop:
        sta     $00,x                         ; C07E 95 00                    ..
        sta     $0300,x                         ; C080 9D 00 03                 ...
        sta     $0400,x                         ; C083 9D 00 04                 ...
        sta     $0505,x                         ; C086 9D 05 05                 ...
        sta     $0600,x                         ; C089 9D 00 06                 ...
        sta     $0700,x                         ; C08C 9D 00 07                 ...
        inx                                     ; C08F E8                       .
        bne     ClearInternalRamLoop            ; C090 D0 EC                    ..
        lda     #$0E                            ; C092 A9 0E                    ..
        sta     $0500                           ; C094 8D 00 05                 ...
        lda     #$10                            ; C097 A9 10                    ..
        sta     $0501                           ; C099 8D 01 05                 ...
        sta     $39                             ; C09C 85 39                    .9
        jsr     InitializeMmc1                  ; C09E 20 04 C1                  ..
        lda     PPUSTATUS                       ; C0A1 AD 02 20                 ..
        lda     #$10                            ; C0A4 A9 10                    ..
        sta     PPUADDR                         ; C0A6 8D 06 20                 ..
        lda     #$00                            ; C0A9 A9 00                    ..
        sta     PPUADDR                         ; C0AB 8D 06 20                 ..
        ldx     #$10                            ; C0AE A2 10                    ..
        sta     PPUDATA                         ; C0B0 8D 07 20                 ..
        dex                                     ; C0B3 CA                       .
        bne     $C0B0                           ; C0B4 D0 FA                    ..
        lda     #$90                            ; C0B6 A9 90                    ..
        sta     $0505                           ; C0B8 8D 05 05                 ...
        sta     PPUCTRL                         ; C0BB 8D 00 20                 ..
        jsr     UpperFixedEngine_Entry_C569     ; C0BE 20 69 C5                  i.
        jsr     InitializeOamShadow             ; C0C1 20 43 C5                  C.
        jsr     WaitForNmi                      ; C0C4 20 74 FF                  t.
        lda     #$18                            ; C0C7 A9 18                    ..
        sta     $0506                           ; C0C9 8D 06 05                 ...
        sta     PPUMASK                         ; C0CC 8D 01 20                 ..
        jmp     UpperFixedEngine_Branch_C968    ; C0CF 4C 68 C9                 Lh.
; ----------------------------------------------------------------------------
        db   $5A                             ; C0D2 5A                       Z
        db   $C1,$AD,$02,$20,$10,$FB,$AD,$02 ; C0D3 C1 AD 02 20 10 FB AD 02  ... ....
        db   $20,$30,$FB,$AD,$02,$20,$10,$FB ; C0DB 20 30 FB AD 02 20 10 FB   0... ..
        db   $AD,$02,$20,$30,$FB,$60         ; C0E3 AD 02 20 30 FB 60        .. 0.`
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_C0E9:
        lda     #$40                            ; C0E9 A9 40                    .@
        sta     $0502                           ; C0EB 8D 02 05                 ...
        lda     #$00                            ; C0EE A9 00                    ..
        sta     $FFFF                           ; C0F0 8D FF FF                 ...
        sta     $FFFF                           ; C0F3 8D FF FF                 ...
        sta     $FFFF                           ; C0F6 8D FF FF                 ...
        sta     $FFFF                           ; C0F9 8D FF FF                 ...
        lda     #$01                            ; C0FC A9 01                    ..
        sta     $FFFF                           ; C0FE 8D FF FF                 ...
UpperFixedEngine_Branch_C101:
        jmp     UpperFixedEngine_Branch_C101    ; C101 4C 01 C1                 L..
; ----------------------------------------------------------------------------
InitializeMmc1:
        inc     $FFDF                           ; C104 EE DF FF                 ...
        lda     $0500                           ; C107 AD 00 05                 ...
        jsr     WriteMmc1Control                ; C10A 20 18 C1                  ..
        lda     $0501                           ; C10D AD 01 05                 ...
        jsr     WriteMmc1ChrBank0               ; C110 20 2F C1                  /.
        lda     #$00                            ; C113 A9 00                    ..
        jmp     WriteMmc1ChrBank1               ; C115 4C 46 C1                 LF.
; ----------------------------------------------------------------------------
WriteMmc1Control:
        sta     $0500                           ; C118 8D 00 05                 ...
        sta     $9FFF                           ; C11B 8D FF 9F                 ...
        lsr     a                               ; C11E 4A                       J
        sta     $9FFF                           ; C11F 8D FF 9F                 ...
        lsr     a                               ; C122 4A                       J
        sta     $9FFF                           ; C123 8D FF 9F                 ...
        lsr     a                               ; C126 4A                       J
        sta     $9FFF                           ; C127 8D FF 9F                 ...
        lsr     a                               ; C12A 4A                       J
        sta     $9FFF                           ; C12B 8D FF 9F                 ...
        rts                                     ; C12E 60                       `
; ----------------------------------------------------------------------------
WriteMmc1ChrBank0:
        sta     $0501                           ; C12F 8D 01 05                 ...
        sta     $BFFF                           ; C132 8D FF BF                 ...
        lsr     a                               ; C135 4A                       J
        sta     $BFFF                           ; C136 8D FF BF                 ...
        lsr     a                               ; C139 4A                       J
        sta     $BFFF                           ; C13A 8D FF BF                 ...
        lsr     a                               ; C13D 4A                       J
        sta     $BFFF                           ; C13E 8D FF BF                 ...
        lsr     a                               ; C141 4A                       J
        sta     $BFFF                           ; C142 8D FF BF                 ...
        rts                                     ; C145 60                       `
; ----------------------------------------------------------------------------
WriteMmc1ChrBank1:
        sta     $DFFF                           ; C146 8D FF DF                 ...
        lsr     a                               ; C149 4A                       J
        sta     $DFFF                           ; C14A 8D FF DF                 ...
        lsr     a                               ; C14D 4A                       J
        sta     $DFFF                           ; C14E 8D FF DF                 ...
        lsr     a                               ; C151 4A                       J
        sta     $DFFF                           ; C152 8D FF DF                 ...
        lsr     a                               ; C155 4A                       J
        sta     $DFFF                           ; C156 8D FF DF                 ...
        rts                                     ; C159 60                       `
; ----------------------------------------------------------------------------
NmiHandler:
        pha                                     ; C15A 48                       H
        txa                                     ; C15B 8A                       .
        pha                                     ; C15C 48                       H
        tya                                     ; C15D 98                       .
        pha                                     ; C15E 48                       H
        lda     $1F                             ; C15F A5 1F                    ..
        bmi     UpperFixedEngine_Branch_C181    ; C161 30 1E                    0.
        tsx                                     ; C163 BA                       .
        ldy     $0106,x                         ; C164 BC 06 01                 ...
        iny                                     ; C167 C8                       .
        bne     UpperFixedEngine_Branch_C181    ; C168 D0 17                    ..
        lda     $0105,x                         ; C16A BD 05 01                 ...
        cmp     #$77                            ; C16D C9 77                    .w
        bcc     UpperFixedEngine_Branch_C181    ; C16F 90 10                    ..
        cmp     #$81                            ; C171 C9 81                    ..
        bcs     UpperFixedEngine_Branch_C181    ; C173 B0 0C                    ..
        lda     PPUSTATUS                       ; C175 AD 02 20                 ..
        jsr     UpperFixedEngine_Entry_C222     ; C178 20 22 C2                  ".
        jsr     UpperFixedEngine_Entry_C303     ; C17B 20 03 C3                  ..
        jsr     UpperFixedEngine_Entry_C2EA     ; C17E 20 EA C2                  ..
UpperFixedEngine_Branch_C181:
        tsx                                     ; C181 BA                       .
        ldy     $0106,x                         ; C182 BC 06 01                 ...
        iny                                     ; C185 C8                       .
        bne     UpperFixedEngine_Branch_C19B    ; C186 D0 13                    ..
        lda     $0105,x                         ; C188 BD 05 01                 ...
        cmp     #$AB                            ; C18B C9 AB                    ..
        bcc     UpperFixedEngine_Branch_C19B    ; C18D 90 0C                    ..
        cmp     #$D6                            ; C18F C9 D6                    ..
        bcs     UpperFixedEngine_Branch_C19B    ; C191 B0 08                    ..
        lda     #$D6                            ; C193 A9 D6                    ..
        sta     $0105,x                         ; C195 9D 05 01                 ...
        jsr     InitializeMmc1                  ; C198 20 04 C1                  ..
UpperFixedEngine_Branch_C19B:
        lda     $0519                           ; C19B AD 19 05                 ...
        bne     UpperFixedEngine_Branch_C1B0    ; C19E D0 10                    ..
UpperFixedEngine_Branch_C1A0:
        inc     $C221                           ; C1A0 EE 21 C2                 .!.
        lda     #$10                            ; C1A3 A9 10                    ..
        jsr     WriteMmc1ChrBank0               ; C1A5 20 2F C1                  /.
        lda     #$10                            ; C1A8 A9 10                    ..
        jsr     WriteMmc1ChrBank0               ; C1AA 20 2F C1                  /.
        jsr     FixedTrampoline08               ; C1AD 20 19 C0                  ..
UpperFixedEngine_Branch_C1B0:
        lda     $0507                           ; C1B0 AD 07 05                 ...
        jsr     SelectPrgBank                   ; C1B3 20 91 FF                  ..
        nop                                     ; C1B6 EA                       .
        nop                                     ; C1B7 EA                       .
        nop                                     ; C1B8 EA                       .
        nop                                     ; C1B9 EA                       .
        nop                                     ; C1BA EA                       .
        nop                                     ; C1BB EA                       .
        nop                                     ; C1BC EA                       .
        tsx                                     ; C1BD BA                       .
        lda     $0106,x                         ; C1BE BD 06 01                 ...
        cmp     #$6C                            ; C1C1 C9 6C                    .l
        bne     UpperFixedEngine_Branch_C1EF    ; C1C3 D0 2A                    .*
        lda     $0105,x                         ; C1C5 BD 05 01                 ...
        cmp     #$B9                            ; C1C8 C9 B9                    ..
        bcc     UpperFixedEngine_Branch_C1DD    ; C1CA 90 11                    ..
        cmp     #$D6                            ; C1CC C9 D6                    ..
        bcs     UpperFixedEngine_Branch_C1DD    ; C1CE B0 0D                    ..
        lda     #$D6                            ; C1D0 A9 D6                    ..
        sta     $0105,x                         ; C1D2 9D 05 01                 ...
        lda     #$00                            ; C1D5 A9 00                    ..
        jsr     WriteMmc1ChrBank0               ; C1D7 20 2F C1                  /.
        jmp     UpperFixedEngine_Branch_C1EF    ; C1DA 4C EF C1                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_C1DD:
        cmp     #$E9                            ; C1DD C9 E9                    ..
        bcc     UpperFixedEngine_Branch_C1EF    ; C1DF 90 0E                    ..
        cmp     #$FF                            ; C1E1 C9 FF                    ..
        bcs     UpperFixedEngine_Branch_C1EF    ; C1E3 B0 0A                    ..
        lda     #$FF                            ; C1E5 A9 FF                    ..
        sta     $0105,x                         ; C1E7 9D 05 01                 ...
        lda     #$10                            ; C1EA A9 10                    ..
        jsr     WriteMmc1ChrBank0               ; C1EC 20 2F C1                  /.
UpperFixedEngine_Branch_C1EF:
        inc     $050C                           ; C1EF EE 0C 05                 ...
        tsx                                     ; C1F2 BA                       .
        lda     $0105,x                         ; C1F3 BD 05 01                 ...
        sta     $10                             ; C1F6 85 10                    ..
        lda     $0106,x                         ; C1F8 BD 06 01                 ...
        sta     $11                             ; C1FB 85 11                    ..
        ldy     #$00                            ; C1FD A0 00                    ..
        lda     ($10),y                         ; C1FF B1 10                    ..
        and     #$0F                            ; C201 29 0F                    ).
        cmp     #$07                            ; C203 C9 07                    ..
        beq     $C219                           ; C205 F0 12                    ..
        cmp     #$0F                            ; C207 C9 0F                    ..
        beq     $C219                           ; C209 F0 0E                    ..
        cmp     #$03                            ; C20B C9 03                    ..
        beq     $C219                           ; C20D F0 0A                    ..
        cmp     #$0B                            ; C20F C9 0B                    ..
        beq     $C219                           ; C211 F0 06                    ..
        pla                                     ; C213 68                       h
        tay                                     ; C214 A8                       .
        pla                                     ; C215 68                       h
        tax                                     ; C216 AA                       .
        pla                                     ; C217 68                       h
        rti                                     ; C218 40                       @
; ----------------------------------------------------------------------------
        pla                                     ; C219 68                       h
        tay                                     ; C21A A8                       .
        pla                                     ; C21B 68                       h
        tax                                     ; C21C AA                       .
        pla                                     ; C21D 68                       h
        jmp     IrqHandler                      ; C21E 4C 08 C4                 L..
; ----------------------------------------------------------------------------
        db   $80                             ; C221 80                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C222:
        lda     $1F                             ; C222 A5 1F                    ..
        and     #$20                            ; C224 29 20                    )
        bne     $C23A                           ; C226 D0 12                    ..
        lda     $1F                             ; C228 A5 1F                    ..
        and     #$10                            ; C22A 29 10                    ).
        beq     $C231                           ; C22C F0 03                    ..
        jmp     UpperFixedEngine_Branch_C297    ; C22E 4C 97 C2                 L..
; ----------------------------------------------------------------------------
        lda     $1F                             ; C231 A5 1F                    ..
        and     #$04                            ; C233 29 04                    ).
        beq     UpperFixedEngine_Branch_C276    ; C235 F0 3F                    .?
        jmp     UpperFixedEngine_Branch_C315    ; C237 4C 15 C3                 L..
; ----------------------------------------------------------------------------
        ldx     #$00                            ; C23A A2 00                    ..
        lda     $050B                           ; C23C AD 0B 05                 ...
        beq     UpperFixedEngine_Branch_C276    ; C23F F0 35                    .5
        ldy     #$01                            ; C241 A0 01                    ..
        lda     $0300,x                         ; C243 BD 00 03                 ...
        bpl     $C25C                           ; C246 10 14                    ..
        tay                                     ; C248 A8                       .
        lsr     a                               ; C249 4A                       J
        lsr     a                               ; C24A 4A                       J
        lsr     a                               ; C24B 4A                       J
        lsr     a                               ; C24C 4A                       J
        and     #$04                            ; C24D 29 04                    ).
        ora     $0505                           ; C24F 0D 05 05                 ...
        sta     PPUCTRL                         ; C252 8D 00 20                 ..
        tya                                     ; C255 98                       .
        inx                                     ; C256 E8                       .
        ldy     $0300,x                         ; C257 BC 00 03                 ...
        and     #$3F                            ; C25A 29 3F                    )?
        inx                                     ; C25C E8                       .
        sta     PPUADDR                         ; C25D 8D 06 20                 ..
        lda     $0300,x                         ; C260 BD 00 03                 ...
        inx                                     ; C263 E8                       .
        sta     PPUADDR                         ; C264 8D 06 20                 ..
        lda     $0300,x                         ; C267 BD 00 03                 ...
        inx                                     ; C26A E8                       .
        sta     PPUDATA                         ; C26B 8D 07 20                 ..
        dey                                     ; C26E 88                       .
        bne     $C267                           ; C26F D0 F6                    ..
        dec     $050B                           ; C271 CE 0B 05                 ...
        bne     $C241                           ; C274 D0 CB                    ..
UpperFixedEngine_Branch_C276:
        lda     $0506                           ; C276 AD 06 05                 ...
        and     #$08                            ; C279 29 08                    ).
        beq     $C296                           ; C27B F0 19                    ..
        lda     #$3F                            ; C27D A9 3F                    .?
        sta     PPUADDR                         ; C27F 8D 06 20                 ..
        lda     #$00                            ; C282 A9 00                    ..
        sta     PPUADDR                         ; C284 8D 06 20                 ..
        sta     $050A                           ; C287 8D 0A 05                 ...
        lda     $05FC                           ; C28A AD FC 05                 ...
        sta     PPUDATA                         ; C28D 8D 07 20                 ..
        lda     $1F                             ; C290 A5 1F                    ..
        and     #$DF                            ; C292 29 DF                    ).
        sta     $1F                             ; C294 85 1F                    ..
        rts                                     ; C296 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_C297:
        ldx     #$00                            ; C297 A2 00                    ..
UpperFixedEngine_Branch_C299:
        lda     $0300,x                         ; C299 BD 00 03                 ...
        sta     PPUADDR                         ; C29C 8D 06 20                 ..
        lda     $0301,x                         ; C29F BD 01 03                 ...
        sta     PPUADDR                         ; C2A2 8D 06 20                 ..
        pha                                     ; C2A5 48                       H
        lda     NextTextCharacter,x             ; C2A6 BD 02 03                 ...
        sta     PPUDATA                         ; C2A9 8D 07 20                 ..
        lda     $0303,x                         ; C2AC BD 03 03                 ...
        sta     PPUDATA                         ; C2AF 8D 07 20                 ..
        lda     $0300,x                         ; C2B2 BD 00 03                 ...
        sta     PPUADDR                         ; C2B5 8D 06 20                 ..
        pla                                     ; C2B8 68                       h
        clc                                     ; C2B9 18                       .
        adc     #$20                            ; C2BA 69 20                    i
        sta     PPUADDR                         ; C2BC 8D 06 20                 ..
        lda     $0304,x                         ; C2BF BD 04 03                 ...
        sta     PPUDATA                         ; C2C2 8D 07 20                 ..
        lda     $0305,x                         ; C2C5 BD 05 03                 ...
        sta     PPUDATA                         ; C2C8 8D 07 20                 ..
        lda     $0306,x                         ; C2CB BD 06 03                 ...
        sta     PPUADDR                         ; C2CE 8D 06 20                 ..
        lda     $0307,x                         ; C2D1 BD 07 03                 ...
        sta     PPUADDR                         ; C2D4 8D 06 20                 ..
        lda     $0308,x                         ; C2D7 BD 08 03                 ...
        sta     PPUDATA                         ; C2DA 8D 07 20                 ..
        txa                                     ; C2DD 8A                       .
        clc                                     ; C2DE 18                       .
        adc     #$09                            ; C2DF 69 09                    i.
        tax                                     ; C2E1 AA                       .
        dec     $050B                           ; C2E2 CE 0B 05                 ...
        bne     UpperFixedEngine_Branch_C299    ; C2E5 D0 B2                    ..
        jmp     UpperFixedEngine_Branch_C276    ; C2E7 4C 76 C2                 Lv.
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C2EA:
        lda     $0505                           ; C2EA AD 05 05                 ...
        sta     PPUCTRL                         ; C2ED 8D 00 20                 ..
        lda     $0506                           ; C2F0 AD 06 05                 ...
        sta     PPUMASK                         ; C2F3 8D 01 20                 ..
        lda     $0508                           ; C2F6 AD 08 05                 ...
        sta     PPUSCROLL                       ; C2F9 8D 05 20                 ..
        lda     $0509                           ; C2FC AD 09 05                 ...
        sta     PPUSCROLL                       ; C2FF 8D 05 20                 ..
        rts                                     ; C302 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C303:
        bit     $1F                             ; C303 24 1F                    $.
        bvs     $C314                           ; C305 70 0D                    p.
        lda     $0506                           ; C307 AD 06 05                 ...
        ora     #$18                            ; C30A 09 18                    ..
        sta     PPUMASK                         ; C30C 8D 01 20                 ..
        lda     #$02                            ; C30F A9 02                    ..
        sta     OAMDMA                          ; C311 8D 14 40                 ..@
        rts                                     ; C314 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_C315:
        ldx     $051A                           ; C315 AE 1A 05                 ...
UpperFixedEngine_Branch_C318:
        lda     $C37B,x                         ; C318 BD 7B C3                 .{.
        sta     PPUADDR                         ; C31B 8D 06 20                 ..
        inx                                     ; C31E E8                       .
        lda     $C37B,x                         ; C31F BD 7B C3                 .{.
        sta     PPUADDR                         ; C322 8D 06 20                 ..
        inx                                     ; C325 E8                       .
        lda     #$00                            ; C326 A9 00                    ..
        sta     PPUDATA                         ; C328 8D 07 20                 ..
        sta     PPUDATA                         ; C32B 8D 07 20                 ..
        sta     PPUDATA                         ; C32E 8D 07 20                 ..
        sta     PPUDATA                         ; C331 8D 07 20                 ..
        sta     PPUDATA                         ; C334 8D 07 20                 ..
        sta     PPUDATA                         ; C337 8D 07 20                 ..
        sta     PPUDATA                         ; C33A 8D 07 20                 ..
        sta     PPUDATA                         ; C33D 8D 07 20                 ..
        sta     PPUDATA                         ; C340 8D 07 20                 ..
        sta     PPUDATA                         ; C343 8D 07 20                 ..
        sta     PPUDATA                         ; C346 8D 07 20                 ..
        sta     PPUDATA                         ; C349 8D 07 20                 ..
        sta     PPUDATA                         ; C34C 8D 07 20                 ..
        sta     PPUDATA                         ; C34F 8D 07 20                 ..
        sta     PPUDATA                         ; C352 8D 07 20                 ..
        sta     PPUDATA                         ; C355 8D 07 20                 ..
        sta     PPUDATA                         ; C358 8D 07 20                 ..
        sta     PPUDATA                         ; C35B 8D 07 20                 ..
        sta     PPUDATA                         ; C35E 8D 07 20                 ..
        sta     PPUDATA                         ; C361 8D 07 20                 ..
        sta     PPUDATA                         ; C364 8D 07 20                 ..
        sta     PPUDATA                         ; C367 8D 07 20                 ..
        sta     PPUDATA                         ; C36A 8D 07 20                 ..
        sta     PPUDATA                         ; C36D 8D 07 20                 ..
        cpx     #$10                            ; C370 E0 10                    ..
        bcc     UpperFixedEngine_Branch_C318    ; C372 90 A4                    ..
        lda     $1F                             ; C374 A5 1F                    ..
        and     #$FB                            ; C376 29 FB                    ).
        sta     $1F                             ; C378 85 1F                    ..
        rts                                     ; C37A 60                       `
; ----------------------------------------------------------------------------
        db   $22,$64,$22,$84,$22,$A4,$22,$C4 ; C37B 22 64 22 84 22 A4 22 C4  "d".".".
        db   $22,$E4,$23,$04,$23,$24,$23,$44 ; C383 22 E4 23 04 23 24 23 44  ".#.#$#D
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_C38B:
        sta     $20                             ; C38B 85 20                    .
        stx     $21                             ; C38D 86 21                    .!
        lda     $0507                           ; C38F AD 07 05                 ...
        pha                                     ; C392 48                       H
        php                                     ; C393 08                       .
        lda     $0507                           ; C394 AD 07 05                 ...
        sta     $0517                           ; C397 8D 17 05                 ...
        jsr     UpperFixedEngine_Entry_C3BA     ; C39A 20 BA C3                  ..
        lda     #$4C                            ; C39D A9 4C                    .L
        sta     $23                           ; C39F 85 23                    .#
        ldx     $21                             ; C3A1 A6 21                    .!
        lda     $20                             ; C3A3 A5 20                    .
        plp                                     ; C3A5 28                       (
        jsr     $0023                           ; C3A6 20 23 00                  #.
        php                                     ; C3A9 08                       .
        sta     $20                             ; C3AA 85 20                    .
        pla                                     ; C3AC 68                       h
        sta     $23                           ; C3AD 85 23                    .#
        pla                                     ; C3AF 68                       h
        jsr     SelectPrgBank                   ; C3B0 20 91 FF                  ..
        lda     $23                           ; C3B3 A5 23                    .#
        pha                                     ; C3B5 48                       H
        lda     $20                             ; C3B6 A5 20                    .
        plp                                     ; C3B8 28                       (
        rts                                     ; C3B9 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C3BA:
        lda     $23                           ; C3BA A5 23                    .#
        jsr     SelectPrgBank                   ; C3BC 20 91 FF                  ..
        lda     $24                             ; C3BF A5 24                    .$
        asl     a                               ; C3C1 0A                       .
        tax                                     ; C3C2 AA                       .
        lda     $8000,x                         ; C3C3 BD 00 80                 ...
        sta     $24                             ; C3C6 85 24                    .$
        lda     $8001,x                         ; C3C8 BD 01 80                 ...
        sta     $25                             ; C3CB 85 25                    .%
        rts                                     ; C3CD 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C3CE:
        sta     $20                             ; C3CE 85 20                    .
        stx     $21                             ; C3D0 86 21                    .!
        lda     $0507                           ; C3D2 AD 07 05                 ...
        pha                                     ; C3D5 48                       H
        jsr     UpperFixedEngine_Entry_C3BA     ; C3D6 20 BA C3                  ..
        pla                                     ; C3D9 68                       h
        jsr     SelectPrgBank                   ; C3DA 20 91 FF                  ..
        ldx     $21                             ; C3DD A6 21                    .!
        lda     $24                             ; C3DF A5 24                    .$
        sta     $00,x                         ; C3E1 95 00                    ..
        lda     $25                             ; C3E3 A5 25                    .%
        sta     $01,x                           ; C3E5 95 01                    ..
        lda     $20                             ; C3E7 A5 20                    .
        rts                                     ; C3E9 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C3EA:
        sta     $20                             ; C3EA 85 20                    .
        lda     $0507                           ; C3EC AD 07 05                 ...
        pha                                     ; C3EF 48                       H
        lda     $20                             ; C3F0 A5 20                    .
        jsr     SelectPrgBank                   ; C3F2 20 91 FF                  ..
        lda     $00,x                         ; C3F5 B5 00                    ..
        sta     $23                           ; C3F7 85 23                    .#
        lda     $01,x                           ; C3F9 B5 01                    ..
        sta     $24                             ; C3FB 85 24                    .$
        lda     ($23),y                       ; C3FD B1 23                    .#
        sta     $20                             ; C3FF 85 20                    .
        pla                                     ; C401 68                       h
        jsr     SelectPrgBank                   ; C402 20 91 FF                  ..
        lda     $20                             ; C405 A5 20                    .
        rts                                     ; C407 60                       `
; ----------------------------------------------------------------------------
IrqHandler:
        sei                                     ; C408 78                       x
        php                                     ; C409 08                       .
        bit     APUSTATUS                       ; C40A 2C 15 40                 ,.@
        sta     $20                             ; C40D 85 20                    .
        stx     $21                             ; C40F 86 21                    .!
        sty     $22                             ; C411 84 22                    ."
        tsx                                     ; C413 BA                       .
        lda     $0103,x                         ; C414 BD 03 01                 ...
        sec                                     ; C417 38                       8
        sbc     #$01                            ; C418 E9 01                    ..
        sta     $26                             ; C41A 85 26                    .&
        lda     $0104,x                         ; C41C BD 04 01                 ...
        sbc     #$00                            ; C41F E9 00                    ..
        sta     $27                             ; C421 85 27                    .'
        ldy     #$01                            ; C423 A0 01                    ..
        lda     ($26),y                         ; C425 B1 26                    .&
        pha                                     ; C427 48                       H
        and     #$0F                            ; C428 29 0F                    ).
        cmp     #$0B                            ; C42A C9 0B                    ..
        beq     UpperFixedEngine_Branch_C463    ; C42C F0 35                    .5
        cmp     #$03                            ; C42E C9 03                    ..
        beq     UpperFixedEngine_Branch_C460    ; C430 F0 2E                    ..
        pla                                     ; C432 68                       h
        pha                                     ; C433 48                       H
        and     #$08                            ; C434 29 08                    ).
        cmp     #$08                            ; C436 C9 08                    ..
        pla                                     ; C438 68                       h
        ror     a                               ; C439 6A                       j
        lsr     a                               ; C43A 4A                       J
        lsr     a                               ; C43B 4A                       J
        lsr     a                               ; C43C 4A                       J
        sta     $23                           ; C43D 85 23                    .#
        dey                                     ; C43F 88                       .
        lda     ($26),y                         ; C440 B1 26                    .&
        bmi     UpperFixedEngine_Branch_C451    ; C442 30 0D                    0.
        sta     $24                             ; C444 85 24                    .$
        ldy     $22                             ; C446 A4 22                    ."
        ldx     $21                             ; C448 A6 21                    .!
        plp                                     ; C44A 28                       (
        pla                                     ; C44B 68                       h
        lda     $20                             ; C44C A5 20                    .
        jmp     UpperFixedEngine_Branch_C38B    ; C44E 4C 8B C3                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_C451:
        and     #$3F                            ; C451 29 3F                    )?
        sta     $24                             ; C453 85 24                    .$
        ldy     $22                             ; C455 A4 22                    ."
        ldx     $21                             ; C457 A6 21                    .!
        plp                                     ; C459 28                       (
        pla                                     ; C45A 68                       h
        lda     $20                             ; C45B A5 20                    .
        jmp     UpperFixedEngine_Entry_C3CE     ; C45D 4C CE C3                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_C460:
        jmp     $C4F8                           ; C460 4C F8 C4                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_C463:
        pla                                     ; C463 68                       h
        cmp     #$CB                            ; C464 C9 CB                    ..
        bcc     $C484                           ; C466 90 1C                    ..
        cmp     #$FB                            ; C468 C9 FB                    ..
        bcc     $C4A1                           ; C46A 90 35                    .5
        lda     #$19                            ; C46C A9 19                    ..
        sta     $23                           ; C46E 85 23                    .#
        lda     #$03                            ; C470 A9 03                    ..
        sta     $24                             ; C472 85 24                    .$
        dey                                     ; C474 88                       .
        lda     ($26),y                         ; C475 B1 26                    .&
        sta     $20                             ; C477 85 20                    .
        ldy     $22                             ; C479 A4 22                    ."
        ldx     $21                             ; C47B A6 21                    .!
        plp                                     ; C47D 28                       (
        pla                                     ; C47E 68                       h
        lda     $20                             ; C47F A5 20                    .
        jmp     UpperFixedEngine_Branch_C38B    ; C481 4C 8B C3                 L..
; ----------------------------------------------------------------------------
        pha                                     ; C484 48                       H
        lda     #$16                            ; C485 A9 16                    ..
        sta     $23                           ; C487 85 23                    .#
        lda     #$04                            ; C489 A9 04                    ..
        sta     $24                             ; C48B 85 24                    .$
        dey                                     ; C48D 88                       .
        pla                                     ; C48E 68                       h
        lsr     a                               ; C48F 4A                       J
        lsr     a                               ; C490 4A                       J
        lsr     a                               ; C491 4A                       J
        lsr     a                               ; C492 4A                       J
        tax                                     ; C493 AA                       .
        lda     ($26),y                         ; C494 B1 26                    .&
        sta     $20                             ; C496 85 20                    .
        ldy     $22                             ; C498 A4 22                    ."
        plp                                     ; C49A 28                       (
        pla                                     ; C49B 68                       h
        lda     $20                             ; C49C A5 20                    .
        jmp     UpperFixedEngine_Branch_C38B    ; C49E 4C 8B C3                 L..
; ----------------------------------------------------------------------------
        plp                                     ; C4A1 28                       (
        pha                                     ; C4A2 48                       H
        tsx                                     ; C4A3 BA                       .
        inc     $0103,x                         ; C4A4 FE 03 01                 ...
        bne     $C4AC                           ; C4A7 D0 03                    ..
        inc     $0104,x                         ; C4A9 FE 04 01                 ...
        pla                                     ; C4AC 68                       h
        plp                                     ; C4AD 28                       (
        cmp     #$CB                            ; C4AE C9 CB                    ..
        beq     $C4CA                           ; C4B0 F0 18                    ..
        cmp     #$DB                            ; C4B2 C9 DB                    ..
        beq     $C4E1                           ; C4B4 F0 2B                    .+
        dey                                     ; C4B6 88                       .
        lda     ($26),y                         ; C4B7 B1 26                    .&
        tax                                     ; C4B9 AA                       .
        iny                                     ; C4BA C8                       .
        iny                                     ; C4BB C8                       .
        lda     $627B,x                         ; C4BC BD 7B 62                 .{b
        and     ($26),y                         ; C4BF 31 26                    1&
        php                                     ; C4C1 08                       .
        ldx     $21                             ; C4C2 A6 21                    .!
        ldy     $22                             ; C4C4 A4 22                    ."
        lda     $20                             ; C4C6 A5 20                    .
        plp                                     ; C4C8 28                       (
        rts                                     ; C4C9 60                       `
; ----------------------------------------------------------------------------
        dey                                     ; C4CA 88                       .
        lda     ($26),y                         ; C4CB B1 26                    .&
        tax                                     ; C4CD AA                       .
        iny                                     ; C4CE C8                       .
        iny                                     ; C4CF C8                       .
        lda     $627B,x                         ; C4D0 BD 7B 62                 .{b
        ora     ($26),y                         ; C4D3 11 26                    .&
        sta     $627B,x                         ; C4D5 9D 7B 62                 .{b
        php                                     ; C4D8 08                       .
        ldx     $21                             ; C4D9 A6 21                    .!
        ldy     $22                             ; C4DB A4 22                    ."
        lda     $20                             ; C4DD A5 20                    .
        plp                                     ; C4DF 28                       (
        rts                                     ; C4E0 60                       `
; ----------------------------------------------------------------------------
        dey                                     ; C4E1 88                       .
        lda     ($26),y                         ; C4E2 B1 26                    .&
        tax                                     ; C4E4 AA                       .
        iny                                     ; C4E5 C8                       .
        iny                                     ; C4E6 C8                       .
        lda     $627B,x                         ; C4E7 BD 7B 62                 .{b
        and     ($26),y                         ; C4EA 31 26                    1&
        sta     $627B,x                         ; C4EC 9D 7B 62                 .{b
        php                                     ; C4EF 08                       .
        ldx     $21                             ; C4F0 A6 21                    .!
        ldy     $22                             ; C4F2 A4 22                    ."
        lda     $20                             ; C4F4 A5 20                    .
        plp                                     ; C4F6 28                       (
        rts                                     ; C4F7 60                       `
; ----------------------------------------------------------------------------
        iny                                     ; C4F8 C8                       .
        lda     ($26),y                         ; C4F9 B1 26                    .&
        sta     $78                             ; C4FB 85 78                    .x
        dey                                     ; C4FD 88                       .
        dey                                     ; C4FE 88                       .
        lda     ($26),y                         ; C4FF B1 26                    .&
        sta     $76                             ; C501 85 76                    .v
        pla                                     ; C503 68                       h
        sta     $77                             ; C504 85 77                    .w
        and     #$F0                            ; C506 29 F0                    ).
        lsr     a                               ; C508 4A                       J
        lsr     a                               ; C509 4A                       J
        lsr     a                               ; C50A 4A                       J
        lsr     a                               ; C50B 4A                       J
        cmp     #$0A                            ; C50C C9 0A                    ..
        bcc     $C516                           ; C50E 90 06                    ..
        cmp     #$0D                            ; C510 C9 0D                    ..
        bcs     UpperFixedEngine_Branch_C527    ; C512 B0 13                    ..
        adc     #$18                            ; C514 69 18                    i.
        sta     $24                             ; C516 85 24                    .$
        lda     #$10                            ; C518 A9 10                    ..
UpperFixedEngine_Branch_C51A:
        sta     $23                           ; C51A 85 23                    .#
        ldy     $22                             ; C51C A4 22                    ."
        ldx     $21                             ; C51E A6 21                    .!
        plp                                     ; C520 28                       (
        pla                                     ; C521 68                       h
        lda     $20                             ; C522 A5 20                    .
        jmp     UpperFixedEngine_Branch_C38B    ; C524 4C 8B C3                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_C527:
        sbc     #$0C                            ; C527 E9 0C                    ..
        sta     $24                             ; C529 85 24                    .$
        lda     #$12                            ; C52B A9 12                    ..
        bne     UpperFixedEngine_Branch_C51A    ; C52D D0 EB                    ..
UpperFixedEngine_Entry_C52F:
        lda     #$00                            ; C52F A9 00                    ..
        sta     $1F                             ; C531 85 1F                    ..
        sta     $050A                           ; C533 8D 0A 05                 ...
        sta     $050B                           ; C536 8D 0B 05                 ...
        sta     $0508                           ; C539 8D 08 05                 ...
        sta     $0509                           ; C53C 8D 09 05                 ...
        sta     $0513                           ; C53F 8D 13 05                 ...
        rts                                     ; C542 60                       `
; ----------------------------------------------------------------------------
InitializeOamShadow:
        lda     #$F7                            ; C543 A9 F7                    ..
        ldx     #$00                            ; C545 A2 00                    ..
        sta     $0200,x                         ; C547 9D 00 02                 ...
        inx                                     ; C54A E8                       .
        bne     $C547                           ; C54B D0 FA                    ..
        rts                                     ; C54D 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C54E:
        jsr     UpperFixedEngine_Entry_C5AF     ; C54E 20 AF C5                  ..
        jsr     UpperFixedEngine_Entry_C569     ; C551 20 69 C5                  i.
        jsr     InitializeOamShadow             ; C554 20 43 C5                  C.
        lda     $1F                             ; C557 A5 1F                    ..
        and     #$7F                            ; C559 29 7F                    ).
        sta     $1F                             ; C55B 85 1F                    ..
        lda     $1F                             ; C55D A5 1F                    ..
        and     #$BF                            ; C55F 29 BF                    ).
        sta     $1F                             ; C561 85 1F                    ..
        jsr     WaitForNmi                      ; C563 20 74 FF                  t.
        jmp     UpperFixedEngine_Entry_C592     ; C566 4C 92 C5                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C569:
        jsr     ClearNametables                 ; C569 20 75 C5                  u.
        ldx     #$7F                            ; C56C A2 7F                    ..
        sta     $0400,x                         ; C56E 9D 00 04                 ...
        dex                                     ; C571 CA                       .
        bpl     $C56E                           ; C572 10 FA                    ..
        rts                                     ; C574 60                       `
; ----------------------------------------------------------------------------
ClearNametables:
        lda     PPUSTATUS                       ; C575 AD 02 20                 ..
        lda     #$20                            ; C578 A9 20                    .
        sta     PPUADDR                         ; C57A 8D 06 20                 ..
        lda     #$00                            ; C57D A9 00                    ..
        sta     PPUADDR                         ; C57F 8D 06 20                 ..
        ldx     #$08                            ; C582 A2 08                    ..
        tay                                     ; C584 A8                       .
        sta     PPUDATA                         ; C585 8D 07 20                 ..
        dey                                     ; C588 88                       .
        bne     $C585                           ; C589 D0 FA                    ..
        dex                                     ; C58B CA                       .
        bne     $C585                           ; C58C D0 F7                    ..
        rts                                     ; C58E 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C58F:
        jsr     UpperFixedEngine_Entry_C5A8     ; C58F 20 A8 C5                  ..
UpperFixedEngine_Entry_C592:
        ldy     #$18                            ; C592 A0 18                    ..
        bne     $C598                           ; C594 D0 02                    ..
UpperFixedEngine_Entry_C596:
        ldy     #$00                            ; C596 A0 00                    ..
        lda     PPUSTATUS                       ; C598 AD 02 20                 ..
        lda     PPUSTATUS                       ; C59B AD 02 20                 ..
        bpl     $C59B                           ; C59E 10 FB                    ..
        tya                                     ; C5A0 98                       .
        sta     PPUMASK                         ; C5A1 8D 01 20                 ..
        sta     $0506                           ; C5A4 8D 06 05                 ...
        rts                                     ; C5A7 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C5A8:
        lda     $1F                             ; C5A8 A5 1F                    ..
        and     #$7F                            ; C5AA 29 7F                    ).
        sta     $1F                             ; C5AC 85 1F                    ..
        rts                                     ; C5AE 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C5AF:
        jsr     UpperFixedEngine_Entry_C596     ; C5AF 20 96 C5                  ..
        lda     $1F                             ; C5B2 A5 1F                    ..
        ora     #$80                            ; C5B4 09 80                    ..
        sta     $1F                             ; C5B6 85 1F                    ..
        rts                                     ; C5B8 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C5B9:
        lda     #$00                            ; C5B9 A9 00                    ..
        sta     $16                             ; C5BB 85 16                    ..
        beq     UpperFixedEngine_Entry_C5DE     ; C5BD F0 1F                    ..
UpperFixedEngine_Entry_C5BF:
        lda     #$40                            ; C5BF A9 40                    .@
        ldx     #$F0                            ; C5C1 A2 F0                    ..
        bne     $C5C8                           ; C5C3 D0 03                    ..
UpperFixedEngine_Entry_C5C5:
        lda     #$10                            ; C5C5 A9 10                    ..
        tax                                     ; C5C7 AA                       .
        stx     $17                             ; C5C8 86 17                    ..
        sta     $16                             ; C5CA 85 16                    ..
        jsr     UpperFixedEngine_Entry_C5DE     ; C5CC 20 DE C5                  ..
        ldx     #$03                            ; C5CF A2 03                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; C5D1 20 0C C9                  ..
        lda     $16                             ; C5D4 A5 16                    ..
        clc                                     ; C5D6 18                       .
        adc     $17                             ; C5D7 65 17                    e.
        cmp     #$50                            ; C5D9 C9 50                    .P
        bcc     $C5CA                           ; C5DB 90 ED                    ..
        rts                                     ; C5DD 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C5DE:
        ldy     #$00                            ; C5DE A0 00                    ..
        lda     #$BF                            ; C5E0 A9 BF                    ..
        sta     $0300,y                         ; C5E2 99 00 03                 ...
        iny                                     ; C5E5 C8                       .
        lda     #$20                            ; C5E6 A9 20                    .
        sta     $0300,y                         ; C5E8 99 00 03                 ...
        iny                                     ; C5EB C8                       .
        lda     #$00                            ; C5EC A9 00                    ..
        sta     $0300,y                         ; C5EE 99 00 03                 ...
        iny                                     ; C5F1 C8                       .
        sty     $050A                           ; C5F2 8C 0A 05                 ...
        sta     $18                             ; C5F5 85 18                    ..
        tax                                     ; C5F7 AA                       .
        lda     $18                             ; C5F8 A5 18                    ..
        ldy     $05FC                           ; C5FA AC FC 05                 ...
        and     #$03                            ; C5FD 29 03                    ).
        beq     $C605                           ; C5FF F0 04                    ..
        ldy     $05FD,x                         ; C601 BC FD 05                 ...
        inx                                     ; C604 E8                       .
        tya                                     ; C605 98                       .
        sec                                     ; C606 38                       8
        sbc     $16                             ; C607 E5 16                    ..
        cmp     #$40                            ; C609 C9 40                    .@
        bcc     $C610                           ; C60B 90 03                    ..
        lda     $05FC                           ; C60D AD FC 05                 ...
        ldy     $050A                           ; C610 AC 0A 05                 ...
        sta     $0300,y                         ; C613 99 00 03                 ...
        inc     $18                             ; C616 E6 18                    ..
        inc     $050A                           ; C618 EE 0A 05                 ...
        lda     $18                             ; C61B A5 18                    ..
        cmp     #$20                            ; C61D C9 20                    .
        bcc     $C5F8                           ; C61F 90 D7                    ..
        lda     #$01                            ; C621 A9 01                    ..
        sta     $050B                           ; C623 8D 0B 05                 ...
UpperFixedEngine_Entry_C626:
        lda     $1F                             ; C626 A5 1F                    ..
        ora     #$20                            ; C628 09 20                    .
        sta     $1F                             ; C62A 85 1F                    ..
        rts                                     ; C62C 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C62D:
        lda     $1F                             ; C62D A5 1F                    ..
        ora     #$20                            ; C62F 09 20                    .
        sta     $1F                             ; C631 85 1F                    ..
        jmp     WaitForNmi                      ; C633 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C636:
        ldx     $050A                           ; C636 AE 0A 05                 ...
        lda     $1C                             ; C639 A5 1C                    ..
        and     #$3F                            ; C63B 29 3F                    )?
        sta     $0300,x                         ; C63D 9D 00 03                 ...
        inx                                     ; C640 E8                       .
        lda     $1D                             ; C641 A5 1D                    ..
        sta     $0300,x                         ; C643 9D 00 03                 ...
        inx                                     ; C646 E8                       .
        lda     $1E                             ; C647 A5 1E                    ..
        sta     $0300,x                         ; C649 9D 00 03                 ...
        inx                                     ; C64C E8                       .
        stx     $050A                           ; C64D 8E 0A 05                 ...
        inc     $050B                           ; C650 EE 0B 05                 ...
        inc     $1D                             ; C653 E6 1D                    ..
        bne     $C659                           ; C655 D0 02                    ..
        inc     $1C                             ; C657 E6 1C                    ..
        rts                                     ; C659 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C65A:
        sta     $1E                             ; C65A 85 1E                    ..
        jsr     UpperFixedEngine_Entry_C662     ; C65C 20 62 C6                  b.
        jmp     UpperFixedEngine_Entry_C636     ; C65F 4C 36 C6                 L6.
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C662:
        lda     $0505                           ; C662 AD 05 05                 ...
        asl     a                               ; C665 0A                       .
        asl     a                               ; C666 0A                       .
        and     #$04                            ; C667 29 04                    ).
        ora     #$20                            ; C669 09 20                    .
        sta     $1C                             ; C66B 85 1C                    ..
        lda     $00                           ; C66D A5 00                    ..
        and     #$3F                            ; C66F 29 3F                    )?
        asl     a                               ; C671 0A                       .
        asl     a                               ; C672 0A                       .
        asl     a                               ; C673 0A                       .
        bcc     $C67F                           ; C674 90 09                    ..
        pha                                     ; C676 48                       H
        lda     $1C                             ; C677 A5 1C                    ..
        eor     #$04                            ; C679 49 04                    I.
        sta     $1C                             ; C67B 85 1C                    ..
        pla                                     ; C67D 68                       h
        clc                                     ; C67E 18                       .
        adc     $0508                           ; C67F 6D 08 05                 m..
        sta     $1D                             ; C682 85 1D                    ..
        bcc     $C68C                           ; C684 90 06                    ..
        lda     $1C                             ; C686 A5 1C                    ..
        eor     #$04                            ; C688 49 04                    I.
        sta     $1C                             ; C68A 85 1C                    ..
        lda     $0509                           ; C68C AD 09 05                 ...
        lsr     a                               ; C68F 4A                       J
        lsr     a                               ; C690 4A                       J
        lsr     a                               ; C691 4A                       J
        clc                                     ; C692 18                       .
        adc     $01                             ; C693 65 01                    e.
        cmp     #$1E                            ; C695 C9 1E                    ..
        bcc     $C69B                           ; C697 90 02                    ..
        sbc     #$1E                            ; C699 E9 1E                    ..
        lsr     a                               ; C69B 4A                       J
        ror     $1D                             ; C69C 66 1D                    f.
        lsr     a                               ; C69E 4A                       J
        ror     $1D                             ; C69F 66 1D                    f.
        lsr     a                               ; C6A1 4A                       J
        ror     $1D                             ; C6A2 66 1D                    f.
        ora     $1C                             ; C6A4 05 1C                    ..
        sta     $1C                             ; C6A6 85 1C                    ..
        and     #$33                            ; C6A8 29 33                    )3
        cmp     #$23                            ; C6AA C9 23                    .#
        bne     $C6BE                           ; C6AC D0 10                    ..
        lda     $1D                             ; C6AE A5 1D                    ..
        cmp     #$C0                            ; C6B0 C9 C0                    ..
        bcc     $C6BE                           ; C6B2 90 0A                    ..
        sbc     #$C0                            ; C6B4 E9 C0                    ..
        sta     $1D                             ; C6B6 85 1D                    ..
        lda     $1C                             ; C6B8 A5 1C                    ..
        and     #$3C                            ; C6BA 29 3C                    )<
        sta     $1C                             ; C6BC 85 1C                    ..
        rts                                     ; C6BE 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C6BF:
        and     #$03                            ; C6BF 29 03                    ).
        sta     $0D                             ; C6C1 85 0D                    ..
UpperFixedEngine_Entry_C6C3:
        lda     $1D                             ; C6C3 A5 1D                    ..
        lsr     a                               ; C6C5 4A                       J
        pha                                     ; C6C6 48                       H
        and     #$01                            ; C6C7 29 01                    ).
        sta     $0B                             ; C6C9 85 0B                    ..
        pla                                     ; C6CB 68                       h
        lsr     a                               ; C6CC 4A                       J
        lsr     a                               ; C6CD 4A                       J
        lsr     a                               ; C6CE 4A                       J
        lsr     a                               ; C6CF 4A                       J
        and     #$02                            ; C6D0 29 02                    ).
        ora     $0B                             ; C6D2 05 0B                    ..
        tax                                     ; C6D4 AA                       .
        inx                                     ; C6D5 E8                       .
        lda     #$FC                            ; C6D6 A9 FC                    ..
        dex                                     ; C6D8 CA                       .
        beq     $C6E5                           ; C6D9 F0 0A                    ..
        sec                                     ; C6DB 38                       8
        rol     a                               ; C6DC 2A                       *
        rol     a                               ; C6DD 2A                       *
        asl     $0D                             ; C6DE 06 0D                    ..
        asl     $0D                             ; C6E0 06 0D                    ..
        jmp     $C6D8                           ; C6E2 4C D8 C6                 L..
; ----------------------------------------------------------------------------
        sta     $0B                             ; C6E5 85 0B                    ..
        lda     $1C                             ; C6E7 A5 1C                    ..
        and     #$04                            ; C6E9 29 04                    ).
        sta     $0C                             ; C6EB 85 0C                    ..
        ora     #$23                            ; C6ED 09 23                    .#
        sta     $0E                             ; C6EF 85 0E                    ..
        lsr     $1C                             ; C6F1 46 1C                    F.
        ror     $1D                             ; C6F3 66 1D                    f.
        lsr     $1C                             ; C6F5 46 1C                    F.
        ror     $1D                             ; C6F7 66 1D                    f.
        lda     $1D                             ; C6F9 A5 1D                    ..
        and     #$07                            ; C6FB 29 07                    ).
        sta     $0F                             ; C6FD 85 0F                    ..
        lsr     $1D                             ; C6FF 46 1D                    F.
        lsr     $1D                             ; C701 46 1D                    F.
        lda     $1D                             ; C703 A5 1D                    ..
        and     #$38                            ; C705 29 38                    )8
        ora     #$C0                            ; C707 09 C0                    ..
        ora     $0F                             ; C709 05 0F                    ..
        sta     $0F                             ; C70B 85 0F                    ..
        asl     $0C                             ; C70D 06 0C                    ..
        asl     $0C                             ; C70F 06 0C                    ..
        asl     $0C                             ; C711 06 0C                    ..
        asl     $0C                             ; C713 06 0C                    ..
        lda     $0F                             ; C715 A5 0F                    ..
        and     #$3F                            ; C717 29 3F                    )?
        ora     $0C                             ; C719 05 0C                    ..
        tax                                     ; C71B AA                       .
        lda     $0400,x                         ; C71C BD 00 04                 ...
        and     $0B                             ; C71F 25 0B                    %.
        ora     $0D                             ; C721 05 0D                    ..
        sta     $0400,x                         ; C723 9D 00 04                 ...
        rts                                     ; C726 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C727:
        and     #$03                            ; C727 29 03                    ).
        sta     $0D                             ; C729 85 0D                    ..
        jsr     UpperFixedEngine_Entry_C662     ; C72B 20 62 C6                  b.
        jsr     UpperFixedEngine_Entry_C6C3     ; C72E 20 C3 C6                  ..
        sta     $1E                             ; C731 85 1E                    ..
        lda     $0E                             ; C733 A5 0E                    ..
        sta     $1C                             ; C735 85 1C                    ..
        lda     $0F                             ; C737 A5 0F                    ..
        sta     $1D                             ; C739 85 1D                    ..
        jmp     UpperFixedEngine_Entry_C636     ; C73B 4C 36 C6                 L6.
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C73E:
        tya                                     ; C73E 98                       .
        pha                                     ; C73F 48                       H
        jsr     UpperFixedEngine_Entry_C78C     ; C740 20 8C C7                  ..
        lda     $00,x                         ; C743 B5 00                    ..
        sta     $0200,y                         ; C745 99 00 02                 ...
        lda     $01,x                           ; C748 B5 01                    ..
        sta     $0201,y                         ; C74A 99 01 02                 ...
        lda     $02,x                           ; C74D B5 02                    ..
        sta     $0202,y                         ; C74F 99 02 02                 ...
        lda     $03,x                           ; C752 B5 03                    ..
        sta     $0203,y                         ; C754 99 03 02                 ...
UpperFixedEngine_Branch_C757:
        inx                                     ; C757 E8                       .
        inx                                     ; C758 E8                       .
        inx                                     ; C759 E8                       .
        inx                                     ; C75A E8                       .
        pla                                     ; C75B 68                       h
        tay                                     ; C75C A8                       .
        rts                                     ; C75D 60                       `
; ----------------------------------------------------------------------------
        db   $98,$48,$20,$8C,$C7,$B5,$01,$99 ; C75E 98 48 20 8C C7 B5 01 99  .H .....
        db   $01,$02,$B5,$02,$99,$02,$02,$4C ; C766 01 02 B5 02 99 02 02 4C  .......L
        db   $57,$C7                         ; C76E 57 C7                    W.
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C770:
        tya                                     ; C770 98                       .
        pha                                     ; C771 48                       H
        jsr     UpperFixedEngine_Entry_C78C     ; C772 20 8C C7                  ..
        lda     $0200,y                         ; C775 B9 00 02                 ...
        sta     $00,x                         ; C778 95 00                    ..
        lda     $0201,y                         ; C77A B9 01 02                 ...
        sta     $01,x                           ; C77D 95 01                    ..
        lda     $0202,y                         ; C77F B9 02 02                 ...
        sta     $02,x                           ; C782 95 02                    ..
        lda     $0203,y                         ; C784 B9 03 02                 ...
        sta     $03,x                           ; C787 95 03                    ..
        jmp     UpperFixedEngine_Branch_C757    ; C789 4C 57 C7                 LW.
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C78C:
        tay                                     ; C78C A8                       .
        txa                                     ; C78D 8A                       .
        pha                                     ; C78E 48                       H
        tya                                     ; C78F 98                       .
        ldy     #$00                            ; C790 A0 00                    ..
        sty     $16                             ; C792 84 16                    ..
        ldy     #$05                            ; C794 A0 05                    ..
        dey                                     ; C796 88                       .
        bmi     $C7CD                           ; C797 30 34                    04
        cmp     $C7DC,y                         ; C799 D9 DC C7                 ...
        bcc     $C796                           ; C79C 90 F8                    ..
        pha                                     ; C79E 48                       H
        tya                                     ; C79F 98                       .
        sec                                     ; C7A0 38                       8
        rol     a                               ; C7A1 2A                       *
        sec                                     ; C7A2 38                       8
        sbc     $0513                           ; C7A3 ED 13 05                 ...
        bpl     $C7AB                           ; C7A6 10 03                    ..
        clc                                     ; C7A8 18                       .
        adc     #$0A                            ; C7A9 69 0A                    i.
        lsr     a                               ; C7AB 4A                       J
        bcs     $C7B3                           ; C7AC B0 05                    ..
        eor     #$7F                            ; C7AE 49 7F                    I.
        clc                                     ; C7B0 18                       .
        adc     #$85                            ; C7B1 69 85                    i.
        sta     $16                             ; C7B3 85 16                    ..
        asl     a                               ; C7B5 0A                       .
        clc                                     ; C7B6 18                       .
        adc     $16                             ; C7B7 65 16                    e.
        asl     a                               ; C7B9 0A                       .
        asl     a                               ; C7BA 0A                       .
        asl     a                               ; C7BB 0A                       .
        asl     a                               ; C7BC 0A                       .
        clc                                     ; C7BD 18                       .
        adc     #$10                            ; C7BE 69 10                    i.
        sta     $16                             ; C7C0 85 16                    ..
        pla                                     ; C7C2 68                       h
        sec                                     ; C7C3 38                       8
        sbc     #$04                            ; C7C4 E9 04                    ..
        sec                                     ; C7C6 38                       8
        sbc     #$0C                            ; C7C7 E9 0C                    ..
        bcs     $C7C6                           ; C7C9 B0 FB                    ..
        adc     #$0C                            ; C7CB 69 0C                    i.
        asl     a                               ; C7CD 0A                       .
        asl     a                               ; C7CE 0A                       .
        clc                                     ; C7CF 18                       .
        adc     $16                             ; C7D0 65 16                    e.
        bcc     $C7D6                           ; C7D2 90 02                    ..
        adc     #$0F                            ; C7D4 69 0F                    i.
        tay                                     ; C7D6 A8                       .
        sty     $16                             ; C7D7 84 16                    ..
        pla                                     ; C7D9 68                       h
        tax                                     ; C7DA AA                       .
        rts                                     ; C7DB 60                       `
; ----------------------------------------------------------------------------
        db   $04,$10,$1C,$28,$34             ; C7DC 04 10 1C 28 34           ...(4
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C7E1:
        tax                                     ; C7E1 AA                       .
        lda     $0507                           ; C7E2 AD 07 05                 ...
        pha                                     ; C7E5 48                       H
        txa                                     ; C7E6 8A                       .
        jsr     SelectPrgBank                   ; C7E7 20 91 FF                  ..
        ldy     #$00                            ; C7EA A0 00                    ..
UpperFixedEngine_Branch_C7EC:
        lda     ($00),y                       ; C7EC B1 00                    ..
        sta     $0108,y                         ; C7EE 99 08 01                 ...
        iny                                     ; C7F1 C8                       .
        cpy     #$11                            ; C7F2 C0 11                    ..
        bne     UpperFixedEngine_Branch_C7EC    ; C7F4 D0 F6                    ..
        pla                                     ; C7F6 68                       h
        jmp     SelectPrgBank                   ; C7F7 4C 91 FF                 L..
; ----------------------------------------------------------------------------
        db   $EA                             ; C7FA EA                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C7FB:
        eor     #$FF                            ; C7FB 49 FF                    I.
        sec                                     ; C7FD 38                       8
        adc     $00,x                         ; C7FE 75 00                    u.
        sta     $00,x                         ; C800 95 00                    ..
        bcs     $C806                           ; C802 B0 02                    ..
        dec     $01,x                           ; C804 D6 01                    ..
        rts                                     ; C806 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C807:
        jsr     UpperFixedEngine_Entry_C7FB     ; C807 20 FB C7                  ..
        tya                                     ; C80A 98                       .
        eor     #$FF                            ; C80B 49 FF                    I.
        sec                                     ; C80D 38                       8
        adc     $01,x                           ; C80E 75 01                    u.
        sta     $01,x                           ; C810 95 01                    ..
        rts                                     ; C812 60                       `
; ----------------------------------------------------------------------------
AddByteToPointer:
        clc                                     ; C813 18                       .
        adc     $00,x                         ; C814 75 00                    u.
        sta     $00,x                         ; C816 95 00                    ..
        bcc     $C81C                           ; C818 90 02                    ..
        inc     $01,x                           ; C81A F6 01                    ..
        rts                                     ; C81C 60                       `
; ----------------------------------------------------------------------------
AddWordToPointer:
        jsr     AddByteToPointer                ; C81D 20 13 C8                  ..
        tya                                     ; C820 98                       .
        clc                                     ; C821 18                       .
        adc     $01,x                           ; C822 75 01                    u.
        sta     $01,x                           ; C824 95 01                    ..
        rts                                     ; C826 60                       `
; ----------------------------------------------------------------------------
MultiplyPointerWord:
        sta     $16                             ; C827 85 16                    ..
        lda     #$00                            ; C829 A9 00                    ..
        sta     $17                             ; C82B 85 17                    ..
        sta     $18                             ; C82D 85 18                    ..
        lsr     $16                             ; C82F 46 16                    F.
        bcc     $C840                           ; C831 90 0D                    ..
        lda     $00,x                         ; C833 B5 00                    ..
        clc                                     ; C835 18                       .
        adc     $17                             ; C836 65 17                    e.
        sta     $17                             ; C838 85 17                    ..
        lda     $01,x                           ; C83A B5 01                    ..
        adc     $18                             ; C83C 65 18                    e.
        sta     $18                             ; C83E 85 18                    ..
        asl     $00,x                         ; C840 16 00                    ..
        rol     $01,x                           ; C842 36 01                    6.
        lda     $16                             ; C844 A5 16                    ..
        bne     $C82F                           ; C846 D0 E7                    ..
        lda     $17                             ; C848 A5 17                    ..
        sta     $00,x                         ; C84A 95 00                    ..
        lda     $18                             ; C84C A5 18                    ..
        sta     $01,x                           ; C84E 95 01                    ..
        rts                                     ; C850 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C851:
        sta     $18                             ; C851 85 18                    ..
        tya                                     ; C853 98                       .
        pha                                     ; C854 48                       H
        ldy     #$10                            ; C855 A0 10                    ..
        lda     #$00                            ; C857 A9 00                    ..
        sta     $19                             ; C859 85 19                    ..
        sta     $16                             ; C85B 85 16                    ..
        sta     $17                             ; C85D 85 17                    ..
UpperFixedEngine_Branch_C85F:
        asl     $00,x                         ; C85F 16 00                    ..
        rol     $01,x                           ; C861 36 01                    6.
        rol     $16                             ; C863 26 16                    &.
        rol     $17                             ; C865 26 17                    &.
        inc     $00,x                         ; C867 F6 00                    ..
        lda     $16                             ; C869 A5 16                    ..
        sec                                     ; C86B 38                       8
        sbc     $18                             ; C86C E5 18                    ..
        pha                                     ; C86E 48                       H
        lda     $17                             ; C86F A5 17                    ..
        sbc     $19                             ; C871 E5 19                    ..
        bcs     UpperFixedEngine_Branch_C87B    ; C873 B0 06                    ..
        pla                                     ; C875 68                       h
        dec     $00,x                         ; C876 D6 00                    ..
        jmp     UpperFixedEngine_Branch_C880    ; C878 4C 80 C8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_C87B:
        sta     $17                             ; C87B 85 17                    ..
        pla                                     ; C87D 68                       h
        sta     $16                             ; C87E 85 16                    ..
UpperFixedEngine_Branch_C880:
        dey                                     ; C880 88                       .
        bne     UpperFixedEngine_Branch_C85F    ; C881 D0 DC                    ..
        pla                                     ; C883 68                       h
        tay                                     ; C884 A8                       .
        lda     $16                             ; C885 A5 16                    ..
        rts                                     ; C887 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C888:
        lda     ($00,x)                       ; C888 A1 00                    ..
        inc     $00,x                         ; C88A F6 00                    ..
        bne     $C890                           ; C88C D0 02                    ..
        inc     $01,x                           ; C88E F6 01                    ..
        rts                                     ; C890 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C891:
        tya                                     ; C891 98                       .
        pha                                     ; C892 48                       H
        lda     #$FF                            ; C893 A9 FF                    ..
        sta     $16                             ; C895 85 16                    ..
        jsr     UpperFixedEngine_Entry_C8AD     ; C897 20 AD C8                  ..
        lda     #$FF                            ; C89A A9 FF                    ..
        sta     $16                             ; C89C 85 16                    ..
        jsr     UpperFixedEngine_Entry_C8AD     ; C89E 20 AD C8                  ..
        inc     $050D                           ; C8A1 EE 0D 05                 ...
        pla                                     ; C8A4 68                       h
        tay                                     ; C8A5 A8                       .
        lda     $12                             ; C8A6 A5 12                    ..
        clc                                     ; C8A8 18                       .
        adc     $050D                           ; C8A9 6D 0D 05                 m..
        rts                                     ; C8AC 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C8AD:
        ldy     #$08                            ; C8AD A0 08                    ..
        lda     $13                             ; C8AF A5 13                    ..
        eor     $16                             ; C8B1 45 16                    E.
        asl     $12                             ; C8B3 06 12                    ..
        rol     $13                             ; C8B5 26 13                    &.
        asl     $16                             ; C8B7 06 16                    ..
        asl     a                               ; C8B9 0A                       .
        bcc     $C8C8                           ; C8BA 90 0C                    ..
        lda     $12                             ; C8BC A5 12                    ..
        eor     #$21                            ; C8BE 49 21                    I!
        sta     $12                             ; C8C0 85 12                    ..
        lda     $13                             ; C8C2 A5 13                    ..
        eor     #$10                            ; C8C4 49 10                    I.
        sta     $13                             ; C8C6 85 13                    ..
        dey                                     ; C8C8 88                       .
        bne     $C8AF                           ; C8C9 D0 E4                    ..
        rts                                     ; C8CB 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C8CC:
        ldx     #$00                            ; C8CC A2 00                    ..
        txa                                     ; C8CE 8A                       .
        pha                                     ; C8CF 48                       H
        jsr     UpperFixedEngine_Entry_C8EC     ; C8D0 20 EC C8                  ..
        jsr     WaitForNmi                      ; C8D3 20 74 FF                  t.
        pla                                     ; C8D6 68                       h
        tax                                     ; C8D7 AA                       .
        inx                                     ; C8D8 E8                       .
        cpx     #$5A                            ; C8D9 E0 5A                    .Z
        beq     $C8EB                           ; C8DB F0 0E                    ..
        lda     ButtonsPressed                  ; C8DD A5 14                    ..
        bne     $C8CE                           ; C8DF D0 ED                    ..
UpperFixedEngine_Entry_C8E1:
        jsr     WaitForNmi                      ; C8E1 20 74 FF                  t.
        jsr     UpperFixedEngine_Entry_C8EC     ; C8E4 20 EC C8                  ..
        lda     ButtonsPressed                  ; C8E7 A5 14                    ..
        beq     UpperFixedEngine_Entry_C8E1     ; C8E9 F0 F6                    ..
        rts                                     ; C8EB 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C8EC:
        ldx     #$00                            ; C8EC A2 00                    ..
        jsr     UpperFixedEngine_Entry_C8F3     ; C8EE 20 F3 C8                  ..
        ldx     #$01                            ; C8F1 A2 01                    ..
UpperFixedEngine_Entry_C8F3:
        lda     #$01                            ; C8F3 A9 01                    ..
        sta     JOY1                            ; C8F5 8D 16 40                 ..@
        lda     #$00                            ; C8F8 A9 00                    ..
        sta     JOY1                            ; C8FA 8D 16 40                 ..@
        ldy     #$08                            ; C8FD A0 08                    ..
        lda     JOY1,x                          ; C8FF BD 16 40                 ..@
        lsr     a                               ; C902 4A                       J
        bcs     $C906                           ; C903 B0 01                    ..
        lsr     a                               ; C905 4A                       J
        ror     ButtonsPressed,x                ; C906 76 14                    v.
        dey                                     ; C908 88                       .
        bne     $C8FF                           ; C909 D0 F4                    ..
        rts                                     ; C90B 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C90C:
        jsr     WaitForNmi                      ; C90C 20 74 FF                  t.
        dex                                     ; C90F CA                       .
        bne     UpperFixedEngine_Entry_C90C     ; C910 D0 FA                    ..
        rts                                     ; C912 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C913:
        txa                                     ; C913 8A                       .
        pha                                     ; C914 48                       H
        tya                                     ; C915 98                       .
        pha                                     ; C916 48                       H
        jsr     UpperFixedEngine_Entry_C91F     ; C917 20 1F C9                  ..
        pla                                     ; C91A 68                       h
        tay                                     ; C91B A8                       .
        pla                                     ; C91C 68                       h
        tax                                     ; C91D AA                       .
        rts                                     ; C91E 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C91F:
        lda     $1F                             ; C91F A5 1F                    ..
        and     #$C8                            ; C921 29 C8                    ).
        bne     $C94A                           ; C923 D0 25                    .%
        lda     $0513                           ; C925 AD 13 05                 ...
        and     #$01                            ; C928 29 01                    ).
        tax                                     ; C92A AA                       .
        lda     $C94B,x                         ; C92B BD 4B C9                 .K.
        pha                                     ; C92E 48                       H
        lda     $C94C,x                         ; C92F BD 4C C9                 .L.
        ldx     #$40                            ; C932 A2 40                    .@
        jsr     UpperFixedEngine_Entry_C94E     ; C934 20 4E C9                  N.
        ldx     #$10                            ; C937 A2 10                    ..
        pla                                     ; C939 68                       h
        jsr     UpperFixedEngine_Entry_C94E     ; C93A 20 4E C9                  N.
        ldx     $0513                           ; C93D AE 13 05                 ...
        inx                                     ; C940 E8                       .
        cpx     #$0A                            ; C941 E0 0A                    ..
        bcc     $C947                           ; C943 90 02                    ..
        ldx     #$00                            ; C945 A2 00                    ..
        stx     $0513                           ; C947 8E 13 05                 ...
        rts                                     ; C94A 60                       `
; ----------------------------------------------------------------------------
        db   $D0                             ; C94B D0                       .
        db   $A0,$70                         ; C94C A0 70                    .p
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C94E:
        tay                                     ; C94E A8                       .
        lda     #$30                            ; C94F A9 30                    .0
        sta     $10                             ; C951 85 10                    ..
        lda     $0200,x                         ; C953 BD 00 02                 ...
        pha                                     ; C956 48                       H
        lda     $0200,y                         ; C957 B9 00 02                 ...
        sta     $0200,x                         ; C95A 9D 00 02                 ...
        pla                                     ; C95D 68                       h
        sta     $0200,y                         ; C95E 99 00 02                 ...
        inx                                     ; C961 E8                       .
        iny                                     ; C962 C8                       .
        dec     $10                             ; C963 C6 10                    ..
        bne     $C953                           ; C965 D0 EC                    ..
        rts                                     ; C967 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_C968:
        jsr     UpperFixedEngine_Entry_C983     ; C968 20 83 C9                  ..
        jsr     UpperFixedEngine_Entry_C52F     ; C96B 20 2F C5                  /.
        brk                                     ; C96E 00                       .
        db   $0B,$BF,$00,$0D,$2F             ; C96F 0B BF 00 0D 2F           ..../
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_C974:
        brk                                     ; C974 00                       .
        db   $0C,$EF                         ; C975 0C EF                    ..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_C977:
        brk                                     ; C977 00                       .
        db   $34,$EF,$00,$22,$EF,$20,$ED,$C9 ; C978 34 EF 00 22 EF 20 ED C9  4..". ..
        db   $4C,$7D,$C9                     ; C980 4C 7D C9                 L}.
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C983:
        ldx     #$5D                            ; C983 A2 5D                    .]
UpperFixedEngine_Branch_C985:
        lda     $C98F,x                         ; C985 BD 8F C9                 ...
        sta     $6CAD,x                         ; C988 9D AD 6C                 ..l
        dex                                     ; C98B CA                       .
        bpl     UpperFixedEngine_Branch_C985    ; C98C 10 F7                    ..
        rts                                     ; C98E 60                       `
; ----------------------------------------------------------------------------
        db   $08,$AD,$07,$05,$8D,$CC,$07     ; C98F 08 AD 07 05 8D CC 07     .......
; ----------------------------------------------------------------------------
        lda     #$0F                            ; C996 A9 0F                    ..
        sta     $0507                           ; C998 8D 07 05                 ...
        nop                                     ; C99B EA                       .
        nop                                     ; C99C EA                       .
        lda     #$00                            ; C99D A9 00                    ..
        sta     $0501                           ; C99F 8D 01 05                 ...
        sta     $39                             ; C9A2 85 39                    .9
        sta     $BFFF                           ; C9A4 8D FF BF                 ...
        lsr     a                               ; C9A7 4A                       J
        sta     $BFFF                           ; C9A8 8D FF BF                 ...
        lsr     a                               ; C9AB 4A                       J
        sta     $BFFF                           ; C9AC 8D FF BF                 ...
        lsr     a                               ; C9AF 4A                       J
        sta     $BFFF                           ; C9B0 8D FF BF                 ...
        lsr     a                               ; C9B3 4A                       J
        sta     $BFFF                           ; C9B4 8D FF BF                 ...
        nop                                     ; C9B7 EA                       .
        nop                                     ; C9B8 EA                       .
        lda     $07CA                           ; C9B9 AD CA 07                 ...
        plp                                     ; C9BC 28                       (
        jsr     $0000                           ; C9BD 20 00 00                  ..
        php                                     ; C9C0 08                       .
        sta     $07CA                           ; C9C1 8D CA 07                 ...
        lda     #$10                            ; C9C4 A9 10                    ..
        sta     $0501                           ; C9C6 8D 01 05                 ...
        sta     $39                             ; C9C9 85 39                    .9
        nop                                     ; C9CB EA                       .
        nop                                     ; C9CC EA                       .
        sta     $BFFF                           ; C9CD 8D FF BF                 ...
        lsr     a                               ; C9D0 4A                       J
        sta     $BFFF                           ; C9D1 8D FF BF                 ...
        lsr     a                               ; C9D4 4A                       J
        sta     $BFFF                           ; C9D5 8D FF BF                 ...
        lsr     a                               ; C9D8 4A                       J
        sta     $BFFF                           ; C9D9 8D FF BF                 ...
        lsr     a                               ; C9DC 4A                       J
        sta     $BFFF                           ; C9DD 8D FF BF                 ...
        nop                                     ; C9E0 EA                       .
        nop                                     ; C9E1 EA                       .
        lda     $07CC                           ; C9E2 AD CC 07                 ...
        jsr     SelectPrgBank                   ; C9E5 20 91 FF                  ..
        lda     $07CA                           ; C9E8 AD CA 07                 ...
        plp                                     ; C9EB 28                       (
        rts                                     ; C9EC 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_C9ED:
        jsr     UpperFixedEngine_Entry_CBB4     ; C9ED 20 B4 CB                  ..
        jsr     UpperFixedEngine_Entry_CB98     ; C9F0 20 98 CB                  ..
        jsr     UpperFixedEngine_Entry_CA21     ; C9F3 20 21 CA                  !.
        jsr     UpperFixedEngine_Entry_D542     ; C9F6 20 42 D5                  B.
        jsr     UpperFixedEngine_Entry_E06E     ; C9F9 20 6E E0                  n.
        brk                                     ; C9FC 00                       .
        db   $00,$DF,$20,$01,$C0,$20,$09,$CE ; C9FD 00 DF 20 01 C0 20 09 CE  .. .. ..
        db   $20,$D5,$D7,$AE,$2F,$05,$20,$0C ; CA05 20 D5 D7 AE 2F 05 20 0C   .../. .
        db   $C9,$20,$17,$CA,$20,$E1,$D1,$E6 ; CA0D C9 20 17 CA 20 E1 D1 E6  . .. ...
        db   $3C,$60,$20,$41,$D2,$A5,$14,$29 ; CA15 3C 60 20 41 D2 A5 14 29  <` A...)
        db   $04,$D0,$F7,$60                 ; CA1D 04 D0 F7 60              ...`
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CA21:
        ldx     $058E                           ; CA21 AE 8E 05                 ...
        lda     UpperFixedEngine_Branch_CA3C,x  ; CA24 BD 3C CA                 .<.
        and     $3C                             ; CA27 25 3C                    %<
        bne     UpperFixedEngine_Branch_CA3C    ; CA29 D0 11                    ..
        lda     #$01                            ; CA2B A9 01                    ..
        sta     $052F                           ; CA2D 8D 2F 05                 ./.
        jsr     UpperFixedEngine_Entry_CA41     ; CA30 20 41 CA                  A.
        jsr     UpperFixedEngine_Entry_CB1E     ; CA33 20 1E CB                  ..
        jsr     UpperFixedEngine_Entry_CBF8     ; CA36 20 F8 CB                  ..
        jsr     UpperFixedEngine_Entry_CB71     ; CA39 20 71 CB                  q.
UpperFixedEngine_Branch_CA3C:
        rts                                     ; CA3C 60                       `
; ----------------------------------------------------------------------------
        db   $0F,$07,$0F,$03                 ; CA3D 0F 07 0F 03              ....
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CA41:
        lda     $0530                           ; CA41 AD 30 05                 .0.
        bpl     UpperFixedEngine_Branch_CA55    ; CA44 10 0F                    ..
        lda     #$FF                            ; CA46 A9 FF                    ..
        sta     $56                             ; CA48 85 56                    .V
        jsr     UpperFixedEngine_Entry_DB18     ; CA4A 20 18 DB                  ..
        sta     ButtonsPressed                  ; CA4D 85 14                    ..
        lda     $0530                           ; CA4F AD 30 05                 .0.
        bpl     UpperFixedEngine_Branch_CA55    ; CA52 10 01                    ..
        rts                                     ; CA54 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CA55:
        lda     $0515                           ; CA55 AD 15 05                 ...
        cmp     #$02                            ; CA58 C9 02                    ..
        bne     UpperFixedEngine_Branch_CA77    ; CA5A D0 1B                    ..
        jsr     UpperFixedEngine_Entry_D241     ; CA5C 20 41 D2                  A.
        lda     ButtonsPressed                  ; CA5F A5 14                    ..
        and     #$F0                            ; CA61 29 F0                    ).
        bne     UpperFixedEngine_Branch_CA71    ; CA63 D0 0C                    ..
        lda     $0597                           ; CA65 AD 97 05                 ...
        beq     UpperFixedEngine_Branch_CA76    ; CA68 F0 0C                    ..
        ldx     $3D                             ; CA6A A6 3D                    .=
        lda     $CB1A,x                         ; CA6C BD 1A CB                 ...
        sta     ButtonsPressed                  ; CA6F 85 14                    ..
UpperFixedEngine_Branch_CA71:
        lda     #$FF                            ; CA71 A9 FF                    ..
        sta     $0597                           ; CA73 8D 97 05                 ...
UpperFixedEngine_Branch_CA76:
        rts                                     ; CA76 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CA77:
        lda     #$00                            ; CA77 A9 00                    ..
        sta     $56                             ; CA79 85 56                    .V
        lda     $7140                           ; CA7B AD 40 71                 .@q
        and     #$1F                            ; CA7E 29 1F                    ).
        tax                                     ; CA80 AA                       .
        lda     $6F40,x                         ; CA81 BD 40 6F                 .@o
        cmp     #$10                            ; CA84 C9 10                    ..
        bcc     UpperFixedEngine_Branch_CAD8    ; CA86 90 50                    .P
        cmp     #$14                            ; CA88 C9 14                    ..
        bcs     UpperFixedEngine_Branch_CAD8    ; CA8A B0 4C                    .L
        and     #$03                            ; CA8C 29 03                    ).
        tax                                     ; CA8E AA                       .
        lda     $CB1A,x                         ; CA8F BD 1A CB                 ...
        sta     ButtonsPressed                  ; CA92 85 14                    ..
        lda     #$02                            ; CA94 A9 02                    ..
        sta     $058E                           ; CA96 8D 8E 05                 ...
        lda     #$20                            ; CA99 A9 20                    .
        sta     $058F                           ; CA9B 8D 8F 05                 ...
        ldx     #$03                            ; CA9E A2 03                    ..
UpperFixedEngine_Branch_CAA0:
        lda     $70E0,x                         ; CAA0 BD E0 70                 ..p
        ora     #$40                            ; CAA3 09 40                    .@
        and     #$7F                            ; CAA5 29 7F                    ).
        sta     $70E0,x                         ; CAA7 9D E0 70                 ..p
        dex                                     ; CAAA CA                       .
        bpl     UpperFixedEngine_Branch_CAA0    ; CAAB 10 F3                    ..
        brk                                     ; CAAD 00                       .
        db   $A4,$FB,$A5,$3C,$29,$F0,$09,$08 ; CAAE A4 FB A5 3C 29 F0 09 08  ...<)...
        db   $85,$3C,$A2,$00,$20,$BE,$CA,$E8 ; CAB6 85 3C A2 00 20 BE CA E8  .<.. ...
        db   $BD,$04,$70,$29,$7F,$9D,$04,$70 ; CABE BD 04 70 29 7F 9D 04 70  ..p)...p
        db   $BD,$64,$6F,$9D,$A4,$6F,$BD,$84 ; CAC6 BD 64 6F 9D A4 6F BD 84  .do..o..
        db   $6F,$9D,$C4,$6F,$A9,$00,$9D,$2A ; CACE 6F 9D C4 6F A9 00 9D 2A  o..o...*
        db   $05,$60                         ; CAD6 05 60                    .`
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CAD8:
        lda     $15                             ; CAD8 A5 15                    ..
        and     #$03                            ; CADA 29 03                    ).
        jmp     UpperFixedEngine_Branch_CAEA    ; CADC 4C EA CA                 L..
; ----------------------------------------------------------------------------
        db   $8D,$8E,$05,$A9,$20,$8D,$8F,$05 ; CADF 8D 8E 05 A9 20 8D 8F 05  .... ...
        db   $4C,$41,$D2                     ; CAE7 4C 41 D2                 LA.
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CAEA:
        lda     $058E                           ; CAEA AD 8E 05                 ...
        cmp     #$01                            ; CAED C9 01                    ..
        beq     UpperFixedEngine_Branch_CB17    ; CAEF F0 26                    .&
        lda     #$01                            ; CAF1 A9 01                    ..
        sta     $058E                           ; CAF3 8D 8E 05                 ...
        lda     #$10                            ; CAF6 A9 10                    ..
        sta     $058F                           ; CAF8 8D 8F 05                 ...
        ldx     #$03                            ; CAFB A2 03                    ..
UpperFixedEngine_Branch_CAFD:
        lda     $70E0,x                         ; CAFD BD E0 70                 ..p
        and     #$BF                            ; CB00 29 BF                    ).
        sta     $70E0,x                         ; CB02 9D E0 70                 ..p
        lda     $6BE7,x                         ; CB05 BD E7 6B                 ..k
        and     #$20                            ; CB08 29 20                    )
        asl     a                               ; CB0A 0A                       .
        asl     a                               ; CB0B 0A                       .
        eor     #$80                            ; CB0C 49 80                    I.
        ora     $70E0,x                         ; CB0E 1D E0 70                 ..p
        sta     $70E0,x                         ; CB11 9D E0 70                 ..p
        dex                                     ; CB14 CA                       .
        bpl     UpperFixedEngine_Branch_CAFD    ; CB15 10 E6                    ..
UpperFixedEngine_Branch_CB17:
        jmp     UpperFixedEngine_Entry_D241     ; CB17 4C 41 D2                 LA.
; ----------------------------------------------------------------------------
        db   $10,$80,$20,$40                 ; CB1A 10 80 20 40              .. @
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CB1E:
        lda     $0515                           ; CB1E AD 15 05                 ...
        cmp     #$02                            ; CB21 C9 02                    ..
        bne     UpperFixedEngine_Branch_CB33    ; CB23 D0 0E                    ..
        lda     $0597                           ; CB25 AD 97 05                 ...
        beq     UpperFixedEngine_Branch_CB33    ; CB28 F0 09                    ..
        lda     ButtonsPressed                  ; CB2A A5 14                    ..
        ora     $0529                           ; CB2C 0D 29 05                 .).
        lsr     a                               ; CB2F 4A                       J
        bcc     UpperFixedEngine_Branch_CB33    ; CB30 90 01                    ..
        rts                                     ; CB32 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CB33:
        ldx     $3D                             ; CB33 A6 3D                    .=
        beq     UpperFixedEngine_Branch_CB4A    ; CB35 F0 13                    ..
        dex                                     ; CB37 CA                       .
        beq     UpperFixedEngine_Branch_CB64    ; CB38 F0 2A                    .*
        dex                                     ; CB3A CA                       .
        beq     UpperFixedEngine_Branch_CB57    ; CB3B F0 1A                    ..
        jsr     UpperFixedEngine_Entry_CBCA     ; CB3D 20 CA CB                  ..
        jsr     UpperFixedEngine_Entry_CBD6     ; CB40 20 D6 CB                  ..
        jsr     UpperFixedEngine_Entry_CBE4     ; CB43 20 E4 CB                  ..
        jsr     UpperFixedEngine_Entry_CBBE     ; CB46 20 BE CB                  ..
        rts                                     ; CB49 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CB4A:
        jsr     UpperFixedEngine_Entry_CBD6     ; CB4A 20 D6 CB                  ..
        jsr     UpperFixedEngine_Entry_CBBE     ; CB4D 20 BE CB                  ..
        jsr     UpperFixedEngine_Entry_CBCA     ; CB50 20 CA CB                  ..
        jsr     UpperFixedEngine_Entry_CBE4     ; CB53 20 E4 CB                  ..
        rts                                     ; CB56 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CB57:
        jsr     UpperFixedEngine_Entry_CBE4     ; CB57 20 E4 CB                  ..
        jsr     UpperFixedEngine_Entry_CBCA     ; CB5A 20 CA CB                  ..
        jsr     UpperFixedEngine_Entry_CBBE     ; CB5D 20 BE CB                  ..
        jsr     UpperFixedEngine_Entry_CBD6     ; CB60 20 D6 CB                  ..
        rts                                     ; CB63 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CB64:
        jsr     UpperFixedEngine_Entry_CBBE     ; CB64 20 BE CB                  ..
        jsr     UpperFixedEngine_Entry_CBE4     ; CB67 20 E4 CB                  ..
        jsr     UpperFixedEngine_Entry_CBD6     ; CB6A 20 D6 CB                  ..
        jsr     UpperFixedEngine_Entry_CBCA     ; CB6D 20 CA CB                  ..
        rts                                     ; CB70 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CB71:
        lda     $0530                           ; CB71 AD 30 05                 .0.
        bmi     UpperFixedEngine_Branch_CB97    ; CB74 30 21                    0!
        lda     $0599                           ; CB76 AD 99 05                 ...
        and     #$10                            ; CB79 29 10                    ).
        bne     UpperFixedEngine_Branch_CB97    ; CB7B D0 1A                    ..
        lda     $0539                           ; CB7D AD 39 05                 .9.
        bmi     UpperFixedEngine_Branch_CB97    ; CB80 30 15                    0.
        clc                                     ; CB82 18                       .
        adc     #$10                            ; CB83 69 10                    i.
        sta     $0539                           ; CB85 8D 39 05                 .9.
        bpl     UpperFixedEngine_Branch_CB97    ; CB88 10 0D                    ..
        brk                                     ; CB8A 00                       .
        db   $13,$1F,$90,$04,$00,$07,$6F,$28 ; CB8B 13 1F 90 04 00 07 6F 28  ......o(
        db   $00,$07,$6F,$2A                 ; CB93 00 07 6F 2A              ..o*
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CB97:
        rts                                     ; CB97 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CB98:
        lda     $052E                           ; CB98 AD 2E 05                 ...
        beq     UpperFixedEngine_Branch_CBA1    ; CB9B F0 04                    ..
        dec     $052E                           ; CB9D CE 2E 05                 ...
        rts                                     ; CBA0 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CBA1:
        ldx     #$01                            ; CBA1 A2 01                    ..
        stx     JOY1                            ; CBA3 8E 16 40                 ..@
        dex                                     ; CBA6 CA                       .
        stx     JOY1                            ; CBA7 8E 16 40                 ..@
        lda     JOY1                            ; CBAA AD 16 40                 ..@
        ora     $0529                           ; CBAD 0D 29 05                 .).
        sta     $0529                           ; CBB0 8D 29 05                 .).
        rts                                     ; CBB3 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CBB4:
        lda     $0526                           ; CBB4 AD 26 05                 .&.
        clc                                     ; CBB7 18                       .
        adc     #$08                            ; CBB8 69 08                    i.
        sta     $0526                           ; CBBA 8D 26 05                 .&.
        rts                                     ; CBBD 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CBBE:
        lda     ButtonsPressed                  ; CBBE A5 14                    ..
        bpl     UpperFixedEngine_Branch_CBF7    ; CBC0 10 35                    .5
        jsr     UpperFixedEngine_Entry_CD85     ; CBC2 20 85 CD                  ..
        lda     #$01                            ; CBC5 A9 01                    ..
        jmp     UpperFixedEngine_Branch_CBEF    ; CBC7 4C EF CB                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CBCA:
        bit     ButtonsPressed                  ; CBCA 24 14                    $.
        bvc     UpperFixedEngine_Branch_CBF7    ; CBCC 50 29                    P)
        jsr     UpperFixedEngine_Entry_CD85     ; CBCE 20 85 CD                  ..
        lda     #$03                            ; CBD1 A9 03                    ..
        jmp     UpperFixedEngine_Branch_CBEF    ; CBD3 4C EF CB                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CBD6:
        lda     ButtonsPressed                  ; CBD6 A5 14                    ..
        and     #$10                            ; CBD8 29 10                    ).
        beq     UpperFixedEngine_Branch_CBF7    ; CBDA F0 1B                    ..
        jsr     UpperFixedEngine_Entry_CD85     ; CBDC 20 85 CD                  ..
        lda     #$00                            ; CBDF A9 00                    ..
        jmp     UpperFixedEngine_Branch_CBEF    ; CBE1 4C EF CB                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CBE4:
        lda     ButtonsPressed                  ; CBE4 A5 14                    ..
        and     #$20                            ; CBE6 29 20                    )
        beq     UpperFixedEngine_Branch_CBF7    ; CBE8 F0 0D                    ..
        jsr     UpperFixedEngine_Entry_CD85     ; CBEA 20 85 CD                  ..
        lda     #$02                            ; CBED A9 02                    ..
UpperFixedEngine_Branch_CBEF:
        sta     $3D                             ; CBEF 85 3D                    .=
        jsr     UpperFixedEngine_Entry_CC88     ; CBF1 20 88 CC                  ..
        jmp     UpperFixedEngine_Branch_D0C4    ; CBF4 4C C4 D0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CBF7:
        rts                                     ; CBF7 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CBF8:
        lda     $0530                           ; CBF8 AD 30 05                 .0.
        bmi     UpperFixedEngine_Branch_CC64    ; CBFB 30 67                    0g
        lda     ButtonsPressed                  ; CBFD A5 14                    ..
        ora     $0529                           ; CBFF 0D 29 05                 .).
        and     #$01                            ; CC02 29 01                    ).
        beq     UpperFixedEngine_Branch_CC63    ; CC04 F0 5D                    .]
        asl     $0529                           ; CC06 0E 29 05                 .).
        lda     $0515                           ; CC09 AD 15 05                 ...
        cmp     #$02                            ; CC0C C9 02                    ..
        beq     UpperFixedEngine_Branch_CC33    ; CC0E F0 23                    .#
        lda     $41                             ; CC10 A5 41                    .A
        bmi     UpperFixedEngine_Branch_CC68    ; CC12 30 54                    0T
        lda     PlayerWorldX                    ; CC14 A5 42                    .B
        cmp     SavePlayerWorldX                ; CC16 CD 97 61                 ..a
        bne     UpperFixedEngine_Branch_CC68    ; CC19 D0 4D                    .M
        lda     PlayerWorldY                    ; CC1B A5 43                    .C
        cmp     SavePlayerWorldY                ; CC1D CD 98 61                 ..a
        bne     UpperFixedEngine_Branch_CC68    ; CC20 D0 46                    .F
        brk                                     ; CC22 00                       .
        db   $13,$EB,$02,$F0,$40,$AD,$5A,$61 ; CC23 13 EB 02 F0 40 AD 5A 61  ....@.Za
        db   $C9,$04,$D0,$39,$00,$08,$EF,$60 ; CC2B C9 04 D0 39 00 08 EF 60  ...9...`
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CC33:
        ldx     SavePlayerWorldX                ; CC33 AE 97 61                 ..a
        ldy     SavePlayerWorldY                ; CC36 AC 98 61                 ..a
        jsr     UpperFixedEngine_Entry_D251     ; CC39 20 51 D2                  Q.
        tax                                     ; CC3C AA                       .
        lda     $6F40,x                         ; CC3D BD 40 6F                 .@o
        bne     UpperFixedEngine_Branch_CC81    ; CC40 D0 3F                    .?
        brk                                     ; CC42 00                       .
        db   $5B,$33,$A9,$00,$8D,$15,$05,$A9 ; CC43 5B 33 A9 00 8D 15 05 A9  [3......
        db   $10,$8D,$2E,$05,$00,$18,$EF,$00 ; CC4B 10 8D 2E 05 00 18 EF 00  ........
        db   $0E,$EF,$20,$F1,$DF,$00,$09,$9F ; CC53 0E EF 20 F1 DF 00 09 9F  .. .....
        db   $AD,$00,$70,$09,$40,$8D,$00,$70 ; CC5B AD 00 70 09 40 8D 00 70  ..p.@..p
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CC63:
        rts                                     ; CC63 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CC64:
        asl     $0529                           ; CC64 0E 29 05                 .).
        rts                                     ; CC67 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CC68:
        lda     $0599                           ; CC68 AD 99 05                 ...
        and     #$10                            ; CC6B 29 10                    ).
        bne     UpperFixedEngine_Branch_CC7D    ; CC6D D0 0E                    ..
        lda     $0539                           ; CC6F AD 39 05                 .9.
        bmi     UpperFixedEngine_Branch_CC7D    ; CC72 30 09                    0.
        brk                                     ; CC74 00                       .
        db   $07,$6F,$2A,$A9,$80,$8D,$39,$05 ; CC75 07 6F 2A A9 80 8D 39 05  .o*...9.
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CC7D:
        brk                                     ; CC7D 00                       .
        db   $14,$EF,$60                     ; CC7E 14 EF 60                 ..`
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CC81:
        lda     #$0B                            ; CC81 A9 0B                    ..
        ldx     #$03                            ; CC83 A2 03                    ..
        jmp     UpperFixedEngine_Entry_D1ED     ; CC85 4C ED D1                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CC88:
        jsr     UpperFixedEngine_Entry_CF91     ; CC88 20 91 CF                  ..
        jsr     UpperFixedEngine_Entry_CC91     ; CC8B 20 91 CC                  ..
        jmp     UpperFixedEngine_Branch_CDC9    ; CC8E 4C C9 CD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CC91:
        jsr     UpperFixedEngine_Entry_D16F     ; CC91 20 6F D1                  o.
        sta     PlayerWorldY,x                  ; CC94 95 43                    .C
        sta     $6F80                           ; CC96 8D 80 6F                 ..o
        lda     $52                           ; CC99 A5 52                    .R
        sta     PlayerWorldX,x                  ; CC9B 95 42                    .B
        sta     $6F60                           ; CC9D 8D 60 6F                 .`o
        lda     $0515                           ; CCA0 AD 15 05                 ...
        beq     UpperFixedEngine_Branch_CCE9    ; CCA3 F0 44                    .D
        cpx     #$00                            ; CCA5 E0 00                    ..
        bne     UpperFixedEngine_Branch_CCEA    ; CCA7 D0 41                    .A
        and     #$02                            ; CCA9 29 02                    ).
        tax                                     ; CCAB AA                       .
        lsr     a                               ; CCAC 4A                       J
        tay                                     ; CCAD A8                       .
        lda     PlayerWorldX                    ; CCAE A5 42                    .B
        sta     $6195,x                         ; CCB0 9D 95 61                 ..a
        sta     $6F66,y                         ; CCB3 99 66 6F                 .fo
        lda     PlayerWorldY                    ; CCB6 A5 43                    .C
        sta     $6196,x                         ; CCB8 9D 96 61                 ..a
        sta     $6F86,y                         ; CCBB 99 86 6F                 ..o
        cpx     #$00                            ; CCBE E0 00                    ..
        beq     UpperFixedEngine_Branch_CCD5    ; CCC0 F0 13                    ..
        lda     PlayerWorldX                    ; CCC2 A5 42                    .B
        sta     $6F67,y                         ; CCC4 99 67 6F                 .go
        sta     $6F68,y                         ; CCC7 99 68 6F                 .ho
        lda     PlayerWorldY                    ; CCCA A5 43                    .C
        sta     $6F88,y                         ; CCCC 99 88 6F                 ..o
        sec                                     ; CCCF 38                       8
        sbc     #$01                            ; CCD0 E9 01                    ..
        sta     $6F87,y                         ; CCD2 99 87 6F                 ..o
UpperFixedEngine_Branch_CCD5:
        jsr     UpperFixedEngine_Entry_CD78     ; CCD5 20 78 CD                  x.
        cpx     #$00                            ; CCD8 E0 00                    ..
        beq     UpperFixedEngine_Branch_CD3B    ; CCDA F0 5F                    ._
        iny                                     ; CCDC C8                       .
        jsr     UpperFixedEngine_Entry_CD78     ; CCDD 20 78 CD                  x.
        iny                                     ; CCE0 C8                       .
        jsr     UpperFixedEngine_Entry_CD78     ; CCE1 20 78 CD                  x.
        dey                                     ; CCE4 88                       .
        dey                                     ; CCE5 88                       .
        jsr     UpperFixedEngine_Entry_CD0F     ; CCE6 20 0F CD                  ..
UpperFixedEngine_Branch_CCE9:
        rts                                     ; CCE9 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CCEA:
        lda     $0534                           ; CCEA AD 34 05                 .4.
        and     #$1F                            ; CCED 29 1F                    ).
        tax                                     ; CCEF AA                       .
        lda     PlayerLocalX                    ; CCF0 A5 44                    .D
        sta     $054E                           ; CCF2 8D 4E 05                 .N.
        sta     $6F60,x                         ; CCF5 9D 60 6F                 .`o
        lda     PlayerLocalY                    ; CCF8 A5 45                    .E
        sta     $054F                           ; CCFA 8D 4F 05                 .O.
        sta     $6F80,x                         ; CCFD 9D 80 6F                 ..o
        lda     $7000,x                         ; CD00 BD 00 70                 ..p
        and     #$FC                            ; CD03 29 FC                    ).
        ora     $3D                             ; CD05 05 3D                    .=
        ora     #$80                            ; CD07 09 80                    ..
        sta     $7000,x                         ; CD09 9D 00 70                 ..p
        jmp     UpperFixedEngine_Entry_D7FC     ; CD0C 4C FC D7                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CD0F:
        lda     $57                             ; CD0F A5 57                    .W
        beq     UpperFixedEngine_Branch_CD3B    ; CD11 F0 28                    .(
        txa                                     ; CD13 8A                       .
        pha                                     ; CD14 48                       H
        tya                                     ; CD15 98                       .
        pha                                     ; CD16 48                       H
        ldx     $58                             ; CD17 A6 58                    .X
        lda     $EC,x                           ; CD19 B5 EC                    ..
        clc                                     ; CD1B 18                       .
        adc     $57                             ; CD1C 65 57                    eW
        sta     $EC,x                           ; CD1E 95 EC                    ..
        txa                                     ; CD20 8A                       .
        asl     a                               ; CD21 0A                       .
        asl     a                               ; CD22 0A                       .
        asl     a                               ; CD23 0A                       .
        asl     a                               ; CD24 0A                       .
        asl     a                               ; CD25 0A                       .
        tax                                     ; CD26 AA                       .
        ldy     #$00                            ; CD27 A0 00                    ..
UpperFixedEngine_Branch_CD29:
        lda     $6FA7,x                         ; CD29 BD A7 6F                 ..o
        clc                                     ; CD2C 18                       .
        adc     $57                             ; CD2D 65 57                    eW
        sta     $6FA7,x                         ; CD2F 9D A7 6F                 ..o
        inx                                     ; CD32 E8                       .
        iny                                     ; CD33 C8                       .
        cpy     #$03                            ; CD34 C0 03                    ..
        bcc     UpperFixedEngine_Branch_CD29    ; CD36 90 F1                    ..
        pla                                     ; CD38 68                       h
        bcs     UpperFixedEngine_Branch_CD3E    ; CD39 B0 03                    ..
UpperFixedEngine_Branch_CD3B:
        txa                                     ; CD3B 8A                       .
        pha                                     ; CD3C 48                       H
        tya                                     ; CD3D 98                       .
UpperFixedEngine_Branch_CD3E:
        clc                                     ; CD3E 18                       .
        adc     #$06                            ; CD3F 69 06                    i.
        tax                                     ; CD41 AA                       .
        jsr     UpperFixedEngine_Entry_D7FC     ; CD42 20 FC D7                  ..
        pla                                     ; CD45 68                       h
        tax                                     ; CD46 AA                       .
        beq     UpperFixedEngine_Branch_CCE9    ; CD47 F0 A0                    ..
        ldx     #$08                            ; CD49 A2 08                    ..
        jsr     UpperFixedEngine_Entry_D7FC     ; CD4B 20 FC D7                  ..
        jsr     UpperFixedEngine_Entry_CD52     ; CD4E 20 52 CD                  R.
        rts                                     ; CD51 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CD52:
        ldx     #$0B                            ; CD52 A2 0B                    ..
        lda     $7140                           ; CD54 AD 40 71                 .@q
        beq     UpperFixedEngine_Branch_CD6A    ; CD57 F0 11                    ..
        ldx     #$07                            ; CD59 A2 07                    ..
UpperFixedEngine_Branch_CD5B:
        cmp     $CD70,x                         ; CD5B DD 70 CD                 .p.
        beq     UpperFixedEngine_Branch_CD68    ; CD5E F0 08                    ..
        dex                                     ; CD60 CA                       .
        bpl     UpperFixedEngine_Branch_CD5B    ; CD61 10 F8                    ..
        ldx     #$0A                            ; CD63 A2 0A                    ..
        jmp     UpperFixedEngine_Branch_CD6A    ; CD65 4C 6A CD                 Lj.
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CD68:
        ldx     #$09                            ; CD68 A2 09                    ..
UpperFixedEngine_Branch_CD6A:
        stx     $6FE9                           ; CD6A 8E E9 6F                 ..o
        ldx     #$09                            ; CD6D A2 09                    ..
        rts                                     ; CD6F 60                       `
; ----------------------------------------------------------------------------
        db   $01,$06,$0D,$0E,$0F,$11,$12,$13 ; CD70 01 06 0D 0E 0F 11 12 13  ........
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CD78:
        lda     $7006,y                         ; CD78 B9 06 70                 ..p
        and     #$FC                            ; CD7B 29 FC                    ).
        ora     $3D                             ; CD7D 05 3D                    .=
        ora     #$80                            ; CD7F 09 80                    ..
        sta     $7006,y                         ; CD81 99 06 70                 ..p
        rts                                     ; CD84 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CD85:
        lda     $0539                           ; CD85 AD 39 05                 .9.
        bpl     UpperFixedEngine_Branch_CD8E    ; CD88 10 04                    ..
        brk                                     ; CD8A 00                       .
        db   $07,$6F,$FF                     ; CD8B 07 6F FF                 .o.
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CD8E:
        lda     #$00                            ; CD8E A9 00                    ..
        sta     $0539                           ; CD90 8D 39 05                 .9.
        lda     $0599                           ; CD93 AD 99 05                 ...
        and     #$F0                            ; CD96 29 F0                    ).
        beq     UpperFixedEngine_Branch_CDC8    ; CD98 F0 2E                    ..
        ldy     #$BC                            ; CD9A A0 BC                    ..
        and     #$30                            ; CD9C 29 30                    )0
        bne     UpperFixedEngine_Branch_CDB6    ; CD9E D0 16                    ..
        dey                                     ; CDA0 88                       .
        ldx     #$00                            ; CDA1 A2 00                    ..
        brk                                     ; CDA3 00                       .
        db   $2B,$63,$41,$C9,$08,$B0,$04,$E8 ; CDA4 2B 63 41 C9 08 B0 04 E8  +cA.....
        db   $4C,$A3,$CD,$86,$6E,$00,$2E,$0F ; CDAC 4C A3 CD 86 6E 00 2E 0F  L...n...
        db   $85,$F9                         ; CDB4 85 F9                    ..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CDB6:
        tya                                     ; CDB6 98                       .
        ldx     #$03                            ; CDB7 A2 03                    ..
        jsr     UpperFixedEngine_Entry_D1FD     ; CDB9 20 FD D1                  ..
        ldx     #$03                            ; CDBC A2 03                    ..
        lda     #$BD                            ; CDBE A9 BD                    ..
        brk                                     ; CDC0 00                       .
        db   $04,$6F,$20,$F0,$D1,$68,$68     ; CDC1 04 6F 20 F0 D1 68 68     .o ..hh
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CDC8:
        rts                                     ; CDC8 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CDC9:
        lda     $7001                           ; CDC9 AD 01 70                 ..p
        and     #$03                            ; CDCC 29 03                    ).
        sta     $0528                           ; CDCE 8D 28 05                 .(.
        lda     #$10                            ; CDD1 A9 10                    ..
        sta     $3E                             ; CDD3 85 3E                    .>
        jsr     FixedTrampoline02               ; CDD5 20 07 C0                  ..
        jsr     UpperFixedEngine_Entry_CDDC     ; CDD8 20 DC CD                  ..
        rts                                     ; CDDB 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CDDC:
        lda     $41                             ; CDDC A5 41                    .A
        bmi     UpperFixedEngine_Branch_CE08    ; CDDE 30 28                    0(
        lda     $6288                           ; CDE0 AD 88 62                 ..b
        bmi     UpperFixedEngine_Branch_CE08    ; CDE3 30 23                    0#
        lda     $12                             ; CDE5 A5 12                    ..
        and     #$1F                            ; CDE7 29 1F                    ).
        adc     #$FF                            ; CDE9 69 FF                    i.
        sta     $0516                           ; CDEB 8D 16 05                 ...
        sta     $0516                           ; CDEE 8D 16 05                 ...
        bcc     UpperFixedEngine_Branch_CE08    ; CDF1 90 15                    ..
        inc     SaveTimeOfDay                   ; CDF3 EE ED 62                 ..b
        lda     SaveTimeOfDay                   ; CDF6 AD ED 62                 ..b
        cmp     #$CC                            ; CDF9 C9 CC                    ..
        bcc     UpperFixedEngine_Branch_CE08    ; CDFB 90 0B                    ..
        lda     #$00                            ; CDFD A9 00                    ..
        sta     SaveTimeOfDay                   ; CDFF 8D ED 62                 ..b
        inc     $628C                           ; CE02 EE 8C 62                 ..b
        inc     $628D                           ; CE05 EE 8D 62                 ..b
UpperFixedEngine_Branch_CE08:
        rts                                     ; CE08 60                       `
; ----------------------------------------------------------------------------
        db   $C9,$00,$D0,$43,$A5,$41,$10,$6F ; CE09 C9 00 D0 43 A5 41 10 6F  ...C.A.o
        db   $A5,$44,$8D,$A0,$6F,$A5,$45,$8D ; CE11 A5 44 8D A0 6F A5 45 8D  .D..o.E.
        db   $C0,$6F,$AD,$27,$05,$F0,$11,$30 ; CE19 C0 6F AD 27 05 F0 11 30  .o.'...0
        db   $0C,$8D,$15,$05,$00,$00,$EF,$00 ; CE21 0C 8D 15 05 00 00 EF 00  ........
        db   $04,$EF,$4C,$31,$CE,$20,$72,$CE ; CE29 04 EF 4C 31 CE 20 72 CE  ..L1. r.
        db   $20,$56,$CF,$00,$00,$BF,$B0,$0E ; CE31 20 56 CF 00 00 BF B0 0E   V......
        db   $20,$5F,$CF,$20,$BE,$CE,$B0,$09 ; CE39 20 5F CF 20 BE CE B0 09   _. ....
        db   $20,$8D,$CF,$4C,$4A,$CE,$20,$56 ; CE41 20 8D CF 4C 4A CE 20 56   ..LJ. V
        db   $CF,$20,$A9                     ; CE49 CF 20 A9                 . .
; ----------------------------------------------------------------------------
        dec     $104C                           ; CE4C CE 4C 10                 .L.
        cpy     #$AA                            ; CE4F C0 AA                    ..
        lda     $3C                             ; CE51 A5 3C                    .<
        and     #$0F                            ; CE53 29 0F                    ).
        cmp     #$0F                            ; CE55 C9 0F                    ..
        bne     UpperFixedEngine_Branch_CE68    ; CE57 D0 0F                    ..
        bit     $41                             ; CE59 24 41                    $A
        bmi     UpperFixedEngine_Branch_CE69    ; CE5B 30 0C                    0.
        lda     $052C                           ; CE5D AD 2C 05                 .,.
        ora     $052D                           ; CE60 0D 2D 05                 .-.
        beq     UpperFixedEngine_Branch_CE68    ; CE63 F0 03                    ..
        brk                                     ; CE65 00                       .
        db   $07,$EF                         ; CE66 07 EF                    ..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CE68:
        rts                                     ; CE68 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CE69:
        cpx     #$FF                            ; CE69 E0 FF                    ..
        bne     UpperFixedEngine_Branch_CE68    ; CE6B D0 FB                    ..
        lda     $0527                           ; CE6D AD 27 05                 .'.
        bpl     UpperFixedEngine_Branch_CE68    ; CE70 10 F6                    ..
        lda     #$00                            ; CE72 A9 00                    ..
        sta     $0527                           ; CE74 8D 27 05                 .'.
        lda     $0593                           ; CE77 AD 93 05                 ...
        ldx     $0594                           ; CE7A AE 94 05                 ...
        jmp     UpperFixedEngine_Branch_D207    ; CE7D 4C 07 D2                 L..
; ----------------------------------------------------------------------------
        db   $20,$56,$CF,$AD,$27,$05,$F0,$12 ; CE80 20 56 CF AD 27 05 F0 12   V..'...
        db   $8D,$15,$05,$00,$09,$FB,$A9,$20 ; CE88 8D 15 05 00 09 FB A9 20  .......
        db   $8D,$34,$05,$00,$00,$EF,$00,$04 ; CE90 8D 34 05 00 00 EF 00 04  .4......
        db   $EF,$60,$20,$03,$CF,$20,$38,$CF ; CE98 EF 60 20 03 CF 20 38 CF  .` .. 8.
        db   $20,$41,$CF,$20,$A9,$CE,$4C,$10 ; CEA0 20 41 CF 20 A9 CE 4C 10   A. ..L.
        db   $C0,$AD,$00,$C0,$29,$40,$D0,$06 ; CEA8 C0 AD 00 C0 29 40 D0 06  ....)@..
        db   $A5,$14,$29,$08,$F0,$07,$BA,$8E ; CEB0 A5 14 29 08 F0 07 BA 8E  ..).....
        db   $1B,$05,$00,$00,$8F             ; CEB8 1B 05 00 00 8F           .....
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CEBD:
        rts                                     ; CEBD 60                       `
; ----------------------------------------------------------------------------
        db   $AD,$9E,$05,$A2,$00,$29,$7F,$DD ; CEBE AD 9E 05 A2 00 29 7F DD  .....)..
        db   $F8,$CE,$F0,$07,$E8,$E0,$0B,$90 ; CEC6 F8 CE F0 07 E8 E0 0B 90  ........
        db   $F6,$18,$60,$E0,$06,$F0,$1E,$E0 ; CECE F6 18 60 E0 06 F0 1E E0  ..`.....
        db   $08,$F0,$0D,$E0,$09,$F0,$09     ; CED6 08 F0 0D E0 09 F0 09     .......
; ----------------------------------------------------------------------------
        cpx     #$0A                            ; CEDD E0 0A                    ..
        beq     UpperFixedEngine_Branch_CEEE    ; CEDF F0 0D                    ..
        brk                                     ; CEE1 00                       .
        db   $0D,$EF,$38,$60,$00,$1B,$EF,$20 ; CEE2 0D EF 38 60 00 1B EF 20  ..8`...
        db   $BE,$CE,$38,$60                 ; CEEA BE CE 38 60              ..8`
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CEEE:
        brk                                     ; CEEE 00                       .
        db   $21,$EF,$38,$60,$00,$09,$BF,$38 ; CEEF 21 EF 38 60 00 09 BF 38  !.8`...8
        db   $60,$06,$07,$08,$09,$25,$26,$0A ; CEF7 60 06 07 08 09 25 26 0A  `....%&.
        db   $0C                             ; CEFF 0C                       .
; ----------------------------------------------------------------------------
        ora     $0B                             ; CF00 05 0B                    ..
        db   $0F,$AD,$15,$05,$C9,$02,$F0,$2D ; CF02 0F AD 15 05 C9 02 F0 2D  .......-
        db   $AE,$40,$71,$AC,$41,$71,$BD,$40 ; CF0A AE 40 71 AC 41 71 BD 40  .@q.Aq.@
        db   $6F,$29,$7F,$C9,$06,$F0,$12,$C9 ; CF12 6F 29 7F C9 06 F0 12 C9  o)......
        db   $07,$D0,$1A,$B9,$40,$6F,$29,$7F ; CF1A 07 D0 1A B9 40 6F 29 7F  ....@o).
        db   $C9,$06,$F0,$11,$C6,$42,$4C,$34 ; CF22 C9 06 F0 11 C6 42 4C 34  .....BL4
        db   $CF,$B9,$40,$6F,$29,$7F,$C9,$07 ; CF2A CF B9 40 6F 29 7F C9 07  ..@o)...
        db   $F0,$03,$00,$01,$EF,$60,$00,$10 ; CF32 F0 03 00 01 EF 60 00 10  .....`..
        db   $87,$90,$03,$00,$06,$EF,$60,$AD ; CF3A 87 90 03 00 06 EF 60 AD  ......`.
        db   $5A,$61,$C9,$03,$D0,$0D,$A5,$43 ; CF42 5A 61 C9 03 D0 0D A5 43  Za.....C
        db   $C9,$67,$D0,$07,$A2,$03,$A9,$AB ; CF4A C9 67 D0 07 A2 03 A9 AB  .g......
        db   $20,$07,$D2,$60,$AD,$15,$05,$D0 ; CF52 20 07 D2 60 AD 15 05 D0   ..`....
        db   $03,$00,$16,$EF,$60,$A5,$46,$85 ; CF5A 03 00 16 EF 60 A5 46 85  ....`.F.
        db   $47,$AD,$40,$71,$29,$E0,$85,$46 ; CF62 47 AD 40 71 29 E0 85 46  G.@q)..F
        db   $A2,$00,$C5,$47,$F0,$0D,$00,$00 ; CF6A A2 00 C5 47 F0 0D 00 00  ...G....
        db   $87,$90,$03,$00,$1C,$EF,$00,$0A ; CF72 87 90 03 00 1C EF 00 0A  ........
        db   $EF,$A2,$10,$AD,$7D,$62,$29,$EF ; CF7A EF A2 10 AD 7D 62 29 EF  ....}b).
        db   $8D,$7D,$62,$8A,$0D,$7D,$62,$8D ; CF82 8D 7D 62 8A 0D 7D 62 8D  .}b..}b.
        db   $7D,$62,$60,$00,$02,$EF,$60     ; CF8A 7D 62 60 00 02 EF 60     }b`...`
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_CF91:
        lda     $7000                           ; CF91 AD 00 70                 ..p
        and     #$FC                            ; CF94 29 FC                    ).
        ora     $3D                             ; CF96 05 3D                    .=
        ora     #$40                            ; CF98 09 40                    .@
        sta     $7000                           ; CF9A 8D 00 70                 ..p
        ldx     #$00                            ; CF9D A2 00                    ..
        stx     $0527                           ; CF9F 8E 27 05                 .'.
        jsr     UpperFixedEngine_Entry_D7FC     ; CFA2 20 FC D7                  ..
        jsr     UpperFixedEngine_Entry_D16F     ; CFA5 20 6F D1                  o.
        bit     $41                             ; CFA8 24 41                    $A
        bpl     UpperFixedEngine_Branch_CFAF    ; CFAA 10 03                    ..
        jmp     UpperFixedEngine_Branch_D050    ; CFAC 4C 50 D0                 LP.
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CFAF:
        tay                                     ; CFAF A8                       .
        lda     $52                           ; CFB0 A5 52                    .R
        tax                                     ; CFB2 AA                       .
        jsr     UpperFixedEngine_Entry_D251     ; CFB3 20 51 D2                  Q.
        sta     $54                             ; CFB6 85 54                    .T
        tax                                     ; CFB8 AA                       .
        lda     $0515                           ; CFB9 AD 15 05                 ...
        bne     UpperFixedEngine_Branch_D016    ; CFBC D0 58                    .X
        lda     $C000                           ; CFBE AD 00 C0                 ...
        bmi     UpperFixedEngine_Branch_CFC9    ; CFC1 30 06                    0.
        lda     ButtonsPressed                  ; CFC3 A5 14                    ..
        and     #$02                            ; CFC5 29 02                    ).
        bne     UpperFixedEngine_Branch_D00A    ; CFC7 D0 41                    .A
UpperFixedEngine_Branch_CFC9:
        lda     $6F40,x                         ; CFC9 BD 40 6F                 .@o
        sta     $059E                           ; CFCC 8D 9E 05                 ...
        bpl     UpperFixedEngine_Branch_CFEB    ; CFCF 10 1A                    ..
        cmp     #$83                            ; CFD1 C9 83                    ..
        bne     UpperFixedEngine_Branch_D010    ; CFD3 D0 3B                    .;
        lda     $52                           ; CFD5 A5 52                    .R
        cmp     $6195                           ; CFD7 CD 95 61                 ..a
        bne     UpperFixedEngine_Branch_D013    ; CFDA D0 37                    .7
        lda     $53                             ; CFDC A5 53                    .S
        cmp     $6196                           ; CFDE CD 96 61                 ..a
        bne     UpperFixedEngine_Branch_D013    ; CFE1 D0 30                    .0
        lda     #$01                            ; CFE3 A9 01                    ..
        sta     $0527                           ; CFE5 8D 27 05                 .'.
        jmp     UpperFixedEngine_Branch_D00A    ; CFE8 4C 0A D0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_CFEB:
        lda     CurrentTilesetCandidate         ; CFEB A5 65                    .e
        cmp     #$03                            ; CFED C9 03                    ..
        bne     UpperFixedEngine_Branch_D00A    ; CFEF D0 19                    ..
        ldx     #$03                            ; CFF1 A2 03                    ..
UpperFixedEngine_Branch_CFF3:
        lda     $6F6A,x                         ; CFF3 BD 6A 6F                 .jo
        cmp     $52                           ; CFF6 C5 52                    .R
        bne     UpperFixedEngine_Branch_D007    ; CFF8 D0 0D                    ..
        lda     $6F8A,x                         ; CFFA BD 8A 6F                 ..o
        cmp     $53                             ; CFFD C5 53                    .S
        db   $D0                             ; CFFF D0                       .
; ----------------------------------------------------------------------------
        asl     $00                           ; D000 06 00                    ..
        sta     ($FB,x)                         ; D002 81 FB                    ..
        jmp     UpperFixedEngine_Branch_D013    ; D004 4C 13 D0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D007:
        dex                                     ; D007 CA                       .
        bpl     UpperFixedEngine_Branch_CFF3    ; D008 10 E9                    ..
UpperFixedEngine_Branch_D00A:
        lda     $54                             ; D00A A5 54                    .T
        jsr     UpperFixedEngine_Entry_D1C9     ; D00C 20 C9 D1                  ..
        rts                                     ; D00F 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D010:
        brk                                     ; D010 00                       .
        db   $A2,$FB                         ; D011 A2 FB                    ..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D013:
        jmp     UpperFixedEngine_Branch_D0C4    ; D013 4C C4 D0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D016:
        cmp     #$01                            ; D016 C9 01                    ..
        bne     UpperFixedEngine_Branch_D00A    ; D018 D0 F0                    ..
UpperFixedEngine_Branch_D01A:
        lda     $6F40,x                         ; D01A BD 40 6F                 .@o
        cmp     #$83                            ; D01D C9 83                    ..
        beq     UpperFixedEngine_Branch_D00A    ; D01F F0 E9                    ..
        cmp     #$24                            ; D021 C9 24                    .$
        beq     UpperFixedEngine_Branch_D00A    ; D023 F0 E5                    ..
        and     #$80                            ; D025 29 80                    ).
        bne     UpperFixedEngine_Branch_D013    ; D027 D0 EA                    ..
        sta     $0515                           ; D029 8D 15 05                 ...
        brk                                     ; D02C 00                       .
        db   $59,$33,$AD,$34,$05,$29,$1F,$8D ; D02D 59 33 AD 34 05 29 1F 8D  Y3.4.)..
        db   $34                             ; D035 34                       4
; ----------------------------------------------------------------------------
        ora     $AD                             ; D036 05 AD                    ..
        dey                                     ; D038 88                       .
        db   $62,$30,$03,$00,$09,$9F         ; D039 62 30 03 00 09 9F        b0....
; ----------------------------------------------------------------------------
        brk                                     ; D03F 00                       .
        asl     $20EF                           ; D040 0E EF 20                 ..
        sbc     ($DF),y                         ; D043 F1 DF                    ..
        lda     $7000                           ; D045 AD 00 70                 ..p
        ora     #$40                            ; D048 09 40                    .@
        sta     $7000                           ; D04A 8D 00 70                 ..p
        jmp     UpperFixedEngine_Branch_D00A    ; D04D 4C 0A D0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D050:
        pha                                     ; D050 48                       H
        lda     $52                           ; D051 A5 52                    .R
        pha                                     ; D053 48                       H
        lda     CurrentMapNumber                ; D054 A5 63                    .c
        cmp     #$3E                            ; D056 C9 3E                    .>
        beq     UpperFixedEngine_Branch_D05E    ; D058 F0 04                    ..
        lda     $56                             ; D05A A5 56                    .V
        bne     UpperFixedEngine_Branch_D080    ; D05C D0 22                    ."
UpperFixedEngine_Branch_D05E:
        lda     $0515                           ; D05E AD 15 05                 ...
        cmp     #$01                            ; D061 C9 01                    ..
        bne     UpperFixedEngine_Branch_D075    ; D063 D0 10                    ..
        lda     $0534                           ; D065 AD 34 05                 .4.
        and     #$1F                            ; D068 29 1F                    ).
        tax                                     ; D06A AA                       .
        lda     $7000,x                         ; D06B BD 00 70                 ..p
        and     #$FC                            ; D06E 29 FC                    ).
        ora     $3D                             ; D070 05 3D                    .=
        sta     $7000,x                         ; D072 9D 00 70                 ..p
UpperFixedEngine_Branch_D075:
        lda     #$00                            ; D075 A9 00                    ..
        db   $85                             ; D077 85                       .
; ----------------------------------------------------------------------------
        eor     ($A2),y                         ; D078 51 A2                    Q.
        asl     $20                             ; D07A 06 20                    .
        bit     $D7                             ; D07C 24 D7                    $.
        bcs     UpperFixedEngine_Branch_D0EF    ; D07E B0 6F                    .o
UpperFixedEngine_Branch_D080:
        pla                                     ; D080 68                       h
        tax                                     ; D081 AA                       .
        pla                                     ; D082 68                       h
        tay                                     ; D083 A8                       .
        jsr     UpperFixedEngine_Entry_D3E6     ; D084 20 E6 D3                  ..
        tay                                     ; D087 A8                       .
        and     #$1F                            ; D088 29 1F                    ).
        tax                                     ; D08A AA                       .
        lda     $0527                           ; D08B AD 27 05                 .'.
        bne     UpperFixedEngine_Branch_D0B8    ; D08E D0 28                    .(
        lda     $0515                           ; D090 AD 15 05                 ...
        bne     UpperFixedEngine_Branch_D0BD    ; D093 D0 28                    .(
        lda     $6F40,x                         ; D095 BD 40 6F                 .@o
        sta     $059E                           ; D098 8D 9E 05                 ...
        lda     $C000                           ; D09B AD 00 C0                 ...
        bmi     UpperFixedEngine_Branch_D0A6    ; D09E 30 06                    0.
        lda     ButtonsPressed                  ; D0A0 A5 14                    ..
        and     #$02                            ; D0A2 29 02                    ).
        bne     UpperFixedEngine_Branch_D0B8    ; D0A4 D0 12                    ..
UpperFixedEngine_Branch_D0A6:
        lda     $059E                           ; D0A6 AD 9E 05                 ...
        cmp     #$83                            ; D0A9 C9 83                    ..
        beq     UpperFixedEngine_Branch_D0C4    ; D0AB F0 17                    ..
        cmp     #$B0                            ; D0AD C9 B0                    ..
        beq     UpperFixedEngine_Branch_D0C9    ; D0AF F0 18                    ..
        and     #$80                            ; D0B1 29 80                    ).
        beq     UpperFixedEngine_Branch_D0B8    ; D0B3 F0 03                    ..
UpperFixedEngine_Branch_D0B5:
        jmp     UpperFixedEngine_Branch_D010    ; D0B5 4C 10 D0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D0B8:
        tya                                     ; D0B8 98                       .
        jsr     UpperFixedEngine_Entry_D1C9     ; D0B9 20 C9 D1                  ..
        rts                                     ; D0BC 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D0BD:
        sty     $54                             ; D0BD 84 54                    .T
        jmp     UpperFixedEngine_Branch_D01A    ; D0BF 4C 1A D0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D0C2:
        pla                                     ; D0C2 68                       h
        pla                                     ; D0C3 68                       h
UpperFixedEngine_Branch_D0C4:
        pla                                     ; D0C4 68                       h
        pla                                     ; D0C5 68                       h
        pla                                     ; D0C6 68                       h
        pla                                     ; D0C7 68                       h
        rts                                     ; D0C8 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D0C9:
        lda     CurrentMapNumber                ; D0C9 A5 63                    .c
        cmp     #$37                            ; D0CB C9 37                    .7
        bne     UpperFixedEngine_Branch_D0B5    ; D0CD D0 E6                    ..
        lda     $6BE7                           ; D0CF AD E7 6B                 ..k
        ora     $6BE8                           ; D0D2 0D E8 6B                 ..k
        ora     $6BE9                           ; D0D5 0D E9 6B                 ..k
        and     #$C0                            ; D0D8 29 C0                    ).
        bne     UpperFixedEngine_Branch_D0E2    ; D0DA D0 06                    ..
        brk                                     ; D0DC 00                       .
        db   $3F,$EF,$4C,$B8,$D0             ; D0DD 3F EF 4C B8 D0           ?.L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D0E2:
        brk                                     ; D0E2 00                       .
        db   $07,$6F,$43,$00,$C2,$4B,$20,$0A ; D0E3 07 6F 43 00 C2 4B 20 0A  .oC..K .
        db   $D2,$4C,$10,$D0                 ; D0EB D2 4C 10 D0              .L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D0EF:
        lda     $70E0,x                         ; D0EF BD E0 70                 ..p
        and     #$08                            ; D0F2 29 08                    ).
        beq     UpperFixedEngine_Branch_D14A    ; D0F4 F0 54                    .T
        lda     #$00                            ; D0F6 A9 00                    ..
        sta     $7E                             ; D0F8 85 7E                    .~
        lda     $3D                             ; D0FA A5 3D                    .=
UpperFixedEngine_Branch_D0FC:
        sta     $7D                             ; D0FC 85 7D                    .}
        lda     $7000,x                         ; D0FE BD 00 70                 ..p
        and     #$FC                            ; D101 29 FC                    ).
        ora     $7D                             ; D103 05 7D                    .}
        sta     $7000,x                         ; D105 9D 00 70                 ..p
        lda     $70E0,x                         ; D108 BD E0 70                 ..p
        ora     #$10                            ; D10B 09 10                    ..
        sta     $70E0,x                         ; D10D 9D E0 70                 ..p
        txa                                     ; D110 8A                       .
        pha                                     ; D111 48                       H
        jsr     UpperFixedEngine_Entry_D53B     ; D112 20 3B D5                  ;.
        pla                                     ; D115 68                       h
        tax                                     ; D116 AA                       .
        lda     $7000,x                         ; D117 BD 00 70                 ..p
        bpl     UpperFixedEngine_Branch_D126    ; D11A 10 0A                    ..
        lda     $7E                             ; D11C A5 7E                    .~
        bne     UpperFixedEngine_Branch_D123    ; D11E D0 03                    ..
        inc     $052F                           ; D120 EE 2F 05                 ./.
UpperFixedEngine_Branch_D123:
        jmp     UpperFixedEngine_Branch_D080    ; D123 4C 80 D0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D126:
        inc     $7E                             ; D126 E6 7E                    .~
        lda     $7E                             ; D128 A5 7E                    .~
        cmp     #$03                            ; D12A C9 03                    ..
        bcs     UpperFixedEngine_Branch_D0C2    ; D12C B0 94                    ..
        cmp     #$01                            ; D12E C9 01                    ..
        beq     UpperFixedEngine_Branch_D139    ; D130 F0 07                    ..
        lda     $7D                             ; D132 A5 7D                    .}
        eor     #$02                            ; D134 49 02                    I.
        jmp     UpperFixedEngine_Branch_D0FC    ; D136 4C FC D0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D139:
        lda     $12                             ; D139 A5 12                    ..
        bpl     UpperFixedEngine_Branch_D141    ; D13B 10 04                    ..
        inc     $7D                             ; D13D E6 7D                    .}
        inc     $7D                             ; D13F E6 7D                    .}
UpperFixedEngine_Branch_D141:
        dec     $7D                             ; D141 C6 7D                    .}
        lda     $7D                             ; D143 A5 7D                    .}
        and     #$03                            ; D145 29 03                    ).
        jmp     UpperFixedEngine_Branch_D0FC    ; D147 4C FC D0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D14A:
        lda     $70E0,x                         ; D14A BD E0 70                 ..p
        and     #$07                            ; D14D 29 07                    ).
        beq     UpperFixedEngine_Branch_D16C    ; D14F F0 1B                    ..
        cmp     #$07                            ; D151 C9 07                    ..
        beq     UpperFixedEngine_Branch_D16C    ; D153 F0 17                    ..
        asl     a                               ; D155 0A                       .
        asl     a                               ; D156 0A                       .
        asl     a                               ; D157 0A                       .
        asl     a                               ; D158 0A                       .
        asl     a                               ; D159 0A                       .
        sta     $0534                           ; D15A 8D 34 05                 .4.
        txa                                     ; D15D 8A                       .
        ora     $0534                           ; D15E 0D 34 05                 .4.
        sta     $0534                           ; D161 8D 34 05                 .4.
        lda     #$01                            ; D164 A9 01                    ..
        sta     $0527                           ; D166 8D 27 05                 .'.
        jmp     UpperFixedEngine_Branch_D080    ; D169 4C 80 D0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D16C:
        jmp     UpperFixedEngine_Branch_D0C2    ; D16C 4C C2 D0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D16F:
        lda     $41                             ; D16F A5 41                    .A
        rol     a                               ; D171 2A                       *
        rol     a                               ; D172 2A                       *
        rol     a                               ; D173 2A                       *
        and     #$02                            ; D174 29 02                    ).
        tax                                     ; D176 AA                       .
        pha                                     ; D177 48                       H
        lda     $3D                             ; D178 A5 3D                    .=
        asl     a                               ; D17A 0A                       .
        tay                                     ; D17B A8                       .
        lda     PlayerWorldX,x                  ; D17C B5 42                    .B
        clc                                     ; D17E 18                       .
        adc     $D239,y                         ; D17F 79 39 D2                 y9.
        sta     $52                           ; D182 85 52                    .R
        lda     PlayerWorldY,x                  ; D184 B5 43                    .C
        clc                                     ; D186 18                       .
        adc     $D23A,y                         ; D187 79 3A D2                 y:.
        sta     $53                             ; D18A 85 53                    .S
        cpx     #$00                            ; D18C E0 00                    ..
        bne     UpperFixedEngine_Branch_D1B4    ; D18E D0 24                    .$
        lda     $0515                           ; D190 AD 15 05                 ...
        cmp     #$02                            ; D193 C9 02                    ..
        bne     UpperFixedEngine_Branch_D1B4    ; D195 D0 1D                    ..
        lda     #$00                            ; D197 A9 00                    ..
        sta     $57                             ; D199 85 57                    .W
        ldx     $D1B9,y                         ; D19B BE B9 D1                 ...
        lda     $52,x                         ; D19E B5 52                    .R
        cmp     $D1BA,y                         ; D1A0 D9 BA D1                 ...
        bne     UpperFixedEngine_Branch_D1B4    ; D1A3 D0 0F                    ..
        ldx     $D1C1,y                         ; D1A5 BE C1 D1                 ...
        stx     $58                             ; D1A8 86 58                    .X
        lda     $D1C2,y                         ; D1AA B9 C2 D1                 ...
        sta     $57                             ; D1AD 85 57                    .W
        clc                                     ; D1AF 18                       .
        adc     $52,x                         ; D1B0 75 52                    uR
        sta     $52,x                         ; D1B2 95 52                    .R
UpperFixedEngine_Branch_D1B4:
        pla                                     ; D1B4 68                       h
        tax                                     ; D1B5 AA                       .
        lda     $53                             ; D1B6 A5 53                    .S
        rts                                     ; D1B8 60                       `
; ----------------------------------------------------------------------------
        db   $01                             ; D1B9 01                       .
        db   $FF,$00,$00,$01,$00,$00,$FF     ; D1BA FF 00 00 01 00 00 FF     .......
        db   $00                             ; D1C1 00                       .
        db   $08,$01,$F8,$00,$F8,$01,$08     ; D1C2 08 01 F8 00 F8 01 08     .......
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D1C9:
        pha                                     ; D1C9 48                       H
        lda     $7142                           ; D1CA AD 42 71                 .Bq
        sta     $7143                           ; D1CD 8D 43 71                 .Cq
        lda     $7141                           ; D1D0 AD 41 71                 .Aq
        sta     $7142                           ; D1D3 8D 42 71                 .Bq
        lda     $7140                           ; D1D6 AD 40 71                 .@q
        sta     $7141                           ; D1D9 8D 41 71                 .Aq
        pla                                     ; D1DC 68                       h
        sta     $7140                           ; D1DD 8D 40 71                 .@q
        rts                                     ; D1E0 60                       `
; ----------------------------------------------------------------------------
        db   $AD,$BB,$07,$10,$06,$20,$E2,$E3 ; D1E1 AD BB 07 10 06 20 E2 E3  ..... ..
        db   $20,$74,$FF,$60                 ; D1E9 20 74 FF 60               t.`
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D1ED:
        jsr     UpperFixedEngine_Entry_D1FD     ; D1ED 20 FD D1                  ..
        jsr     UpperFixedEngine_Entry_C8CC     ; D1F0 20 CC C8                  ..
UpperFixedEngine_Entry_D1F3:
        lda     #$00                            ; D1F3 A9 00                    ..
        sta     $0539                           ; D1F5 8D 39 05                 .9.
        brk                                     ; D1F8 00                       .
        db   $07,$6F,$FF                     ; D1F9 07 6F FF                 .o.
; ----------------------------------------------------------------------------
        rts                                     ; D1FC 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D1FD:
        pha                                     ; D1FD 48                       H
        brk                                     ; D1FE 00                       .
        db   $07,$6F,$43                     ; D1FF 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        pla                                     ; D202 68                       h
        brk                                     ; D203 00                       .
        db   $04,$6F                         ; D204 04 6F                    .o
; ----------------------------------------------------------------------------
        rts                                     ; D206 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D207:
        jsr     UpperFixedEngine_Entry_D1FD     ; D207 20 FD D1                  ..
UpperFixedEngine_Entry_D20A:
        jsr     UpperFixedEngine_Entry_D218     ; D20A 20 18 D2                  ..
        jmp     UpperFixedEngine_Entry_D1F3     ; D20D 4C F3 D1                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D210:
        lda     #$3C                            ; D210 A9 3C                    .<
        bne     UpperFixedEngine_Branch_D21A    ; D212 D0 06                    ..
UpperFixedEngine_Entry_D214:
        lda     #$78                            ; D214 A9 78                    .x
        bne     UpperFixedEngine_Branch_D21A    ; D216 D0 02                    ..
UpperFixedEngine_Entry_D218:
        lda     #$B4                            ; D218 A9 B4                    ..
UpperFixedEngine_Branch_D21A:
        sta     $00                           ; D21A 85 00                    ..
UpperFixedEngine_Branch_D21C:
        jsr     UpperFixedEngine_Entry_D230     ; D21C 20 30 D2                  0.
        beq     UpperFixedEngine_Branch_D226    ; D21F F0 05                    ..
        dec     $00                           ; D221 C6 00                    ..
        bne     UpperFixedEngine_Branch_D21C    ; D223 D0 F7                    ..
        rts                                     ; D225 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D226:
        jsr     UpperFixedEngine_Entry_D230     ; D226 20 30 D2                  0.
        bne     $D22F                           ; D229 D0 04                    ..
        dec     $00                           ; D22B C6 00                    ..
        bne     UpperFixedEngine_Branch_D226    ; D22D D0 F7                    ..
        rts                                     ; D22F 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D230:
        jsr     WaitForNmi                      ; D230 20 74 FF                  t.
        jsr     UpperFixedEngine_Entry_C8EC     ; D233 20 EC C8                  ..
        lda     ButtonsPressed                  ; D236 A5 14                    ..
        rts                                     ; D238 60                       `
; ----------------------------------------------------------------------------
        db   $00                             ; D239 00                       .
        db   $FF,$01,$00,$00,$01,$FF,$00     ; D23A FF 01 00 00 01 FF 00     .......
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D241:
        lda     $62A5                           ; D241 AD A5 62                 ..b
        bmi     UpperFixedEngine_Branch_D249    ; D244 30 03                    0.
        jmp     UpperFixedEngine_Entry_C8EC     ; D246 4C EC C8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D249:
        lda     #$00                            ; D249 A9 00                    ..
        sta     ButtonsPressed                  ; D24B 85 14                    ..
        sta     $0529                           ; D24D 8D 29 05                 .).
        rts                                     ; D250 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D251:
        lda     $0507                           ; D251 AD 07 05                 ...
        sta     $04                             ; D254 85 04                    ..
        lda     #$0B                            ; D256 A9 0B                    ..
        jsr     SelectPrgBank                   ; D258 20 91 FF                  ..
        jsr     UpperFixedEngine_Entry_D266     ; D25B 20 66 D2                  f.
        pha                                     ; D25E 48                       H
        lda     $04                             ; D25F A5 04                    ..
        jsr     SelectPrgBank                   ; D261 20 91 FF                  ..
        pla                                     ; D264 68                       h
        rts                                     ; D265 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D266:
        stx     $00                           ; D266 86 00                    ..
        sty     $01                             ; D268 84 01                    ..
        jsr     UpperFixedEngine_Entry_D2B7     ; D26A 20 B7 D2                  ..
        jsr     UpperFixedEngine_Entry_D2E9     ; D26D 20 E9 D2                  ..
        jsr     UpperFixedEngine_Entry_D333     ; D270 20 33 D3                  3.
        jsr     UpperFixedEngine_Entry_D523     ; D273 20 23 D5                  #.
        rts                                     ; D276 60                       `
; ----------------------------------------------------------------------------
        db   $AD,$07,$05,$85,$04,$A9,$0B,$20 ; D277 AD 07 05 85 04 A9 0B 20  .......
        db   $91,$FF,$20,$8C,$D2,$48,$A5,$04 ; D27F 91 FF 20 8C D2 48 A5 04  .. ..H..
        db   $20,$91,$FF,$68,$60,$86,$00,$84 ; D287 20 91 FF 68 60 86 00 84   ..h`...
        db   $01,$20,$B7,$D2,$20,$E9,$D2,$20 ; D28F 01 20 B7 D2 20 E9 D2 20  . .. ..
        db   $33,$D3,$20,$23,$D5,$48,$E6,$00 ; D297 33 D3 20 23 D5 48 E6 00  3. #.H..
        db   $A5,$02,$20,$5F,$D3,$20,$23,$D5 ; D29F A5 02 20 5F D3 20 23 D5  .. _. #.
        db   $48,$E6,$00,$A5,$02,$20,$5F,$D3 ; D2A7 48 E6 00 A5 02 20 5F D3  H.... _.
        db   $20,$23,$D5,$A8,$68,$AA,$68,$60 ; D2AF 20 23 D5 A8 68 AA 68 60   #..h.h`
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D2B7:
        txa                                     ; D2B7 8A                       .
        pha                                     ; D2B8 48                       H
        sec                                     ; D2B9 38                       8
        sbc     #$03                            ; D2BA E9 03                    ..
        sta     $49                             ; D2BC 85 49                    .I
        tya                                     ; D2BE 98                       .
        pha                                     ; D2BF 48                       H
        sec                                     ; D2C0 38                       8
        sbc     #$03                            ; D2C1 E9 03                    ..
        sta     $4A                             ; D2C3 85 4A                    .J
        ldx     CurrentTilesetCandidate         ; D2C5 A6 65                    .e
        lda     $49                             ; D2C7 A5 49                    .I
        cmp     $D2E3,x                         ; D2C9 DD E3 D2                 ...
        bcs     UpperFixedEngine_Branch_D2D5    ; D2CC B0 07                    ..
        lda     $4A                             ; D2CE A5 4A                    .J
        cmp     $D2E6,x                         ; D2D0 DD E6 D2                 ...
        bcc     UpperFixedEngine_Branch_D2DE    ; D2D3 90 09                    ..
UpperFixedEngine_Branch_D2D5:
        pla                                     ; D2D5 68                       h
        pla                                     ; D2D6 68                       h
        pla                                     ; D2D7 68                       h
        pla                                     ; D2D8 68                       h
        lda     #$00                            ; D2D9 A9 00                    ..
        tax                                     ; D2DB AA                       .
        tay                                     ; D2DC A8                       .
        rts                                     ; D2DD 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D2DE:
        pla                                     ; D2DE 68                       h
        tay                                     ; D2DF A8                       .
        pla                                     ; D2E0 68                       h
        tax                                     ; D2E1 AA                       .
        rts                                     ; D2E2 60                       `
; ----------------------------------------------------------------------------
        db   $FA,$3D,$2A                     ; D2E3 FA 3D 2A                 .=*
        db   $FA,$3D,$36                     ; D2E6 FA 3D 36                 .=6
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D2E9:
        ldy     $01                             ; D2E9 A4 01                    ..
        lda     #$00                            ; D2EB A9 00                    ..
        sta     $02                             ; D2ED 85 02                    ..
        lda     CurrentTilesetCandidate         ; D2EF A5 65                    .e
        asl     a                               ; D2F1 0A                       .
        tax                                     ; D2F2 AA                       .
        lda     $8000,x                         ; D2F3 BD 00 80                 ...
        sta     $49                             ; D2F6 85 49                    .I
        lda     $8001,x                         ; D2F8 BD 01 80                 ...
        sta     $4A                             ; D2FB 85 4A                    .J
        ldx     $00                           ; D2FD A6 00                    ..
        tya                                     ; D2FF 98                       .
        asl     a                               ; D300 0A                       .
        rol     $02                             ; D301 26 02                    &.
        asl     a                               ; D303 0A                       .
        rol     $02                             ; D304 26 02                    &.
        clc                                     ; D306 18                       .
        adc     $49                             ; D307 65 49                    eI
        sta     $49                             ; D309 85 49                    .I
        lda     $02                             ; D30B A5 02                    ..
        adc     $4A                             ; D30D 65 4A                    eJ
        sta     $4A                             ; D30F 85 4A                    .J
        lda     #$00                            ; D311 A9 00                    ..
        ldy     #$02                            ; D313 A0 02                    ..
        cpx     #$40                            ; D315 E0 40                    .@
        bcc     UpperFixedEngine_Branch_D322    ; D317 90 09                    ..
        lda     ($49),y                         ; D319 B1 49                    .I
        cpx     #$C0                            ; D31B E0 C0                    ..
        bcc     UpperFixedEngine_Branch_D322    ; D31D 90 03                    ..
        iny                                     ; D31F C8                       .
        lda     ($49),y                         ; D320 B1 49                    .I
UpperFixedEngine_Branch_D322:
        pha                                     ; D322 48                       H
        ldy     #$00                            ; D323 A0 00                    ..
        lda     ($49),y                         ; D325 B1 49                    .I
        pha                                     ; D327 48                       H
        iny                                     ; D328 C8                       .
        lda     ($49),y                         ; D329 B1 49                    .I
        sta     $4A                             ; D32B 85 4A                    .J
        pla                                     ; D32D 68                       h
        sta     $49                             ; D32E 85 49                    .I
        pla                                     ; D330 68                       h
        tay                                     ; D331 A8                       .
        rts                                     ; D332 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D333:
        lda     #$00                            ; D333 A9 00                    ..
        bit     $00                           ; D335 24 00                    $.
        bvs     UpperFixedEngine_Branch_D386    ; D337 70 4D                    pM
        bpl     UpperFixedEngine_Branch_D33D    ; D339 10 02                    ..
        lda     #$80                            ; D33B A9 80                    ..
UpperFixedEngine_Branch_D33D:
        sta     $02                             ; D33D 85 02                    ..
        dec     $02                             ; D33F C6 02                    ..
        dey                                     ; D341 88                       .
UpperFixedEngine_Branch_D342:
        iny                                     ; D342 C8                       .
        lda     ($49),y                         ; D343 B1 49                    .I
        sta     $03                             ; D345 85 03                    ..
        and     #$E0                            ; D347 29 E0                    ).
        cmp     #$E0                            ; D349 C9 E0                    ..
        bne     UpperFixedEngine_Branch_D358    ; D34B D0 0B                    ..
        lda     $03                             ; D34D A5 03                    ..
        and     #$1F                            ; D34F 29 1F                    ).
        cmp     #$08                            ; D351 C9 08                    ..
        bcc     UpperFixedEngine_Branch_D36D    ; D353 90 18                    ..
        jmp     UpperFixedEngine_Branch_D379    ; D355 4C 79 D3                 Ly.
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D358:
        lda     $03                             ; D358 A5 03                    ..
        and     #$1F                            ; D35A 29 1F                    ).
        sec                                     ; D35C 38                       8
        adc     $02                             ; D35D 65 02                    e.
        sta     $02                             ; D35F 85 02                    ..
        cmp     $00                           ; D361 C5 00                    ..
        bcc     UpperFixedEngine_Branch_D342    ; D363 90 DD                    ..
        lda     $03                             ; D365 A5 03                    ..
        lsr     a                               ; D367 4A                       J
        lsr     a                               ; D368 4A                       J
        lsr     a                               ; D369 4A                       J
        lsr     a                               ; D36A 4A                       J
        lsr     a                               ; D36B 4A                       J
        rts                                     ; D36C 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D36D:
        sec                                     ; D36D 38                       8
        adc     $02                             ; D36E 65 02                    e.
        sta     $02                             ; D370 85 02                    ..
        cmp     $00                           ; D372 C5 00                    ..
        bcc     UpperFixedEngine_Branch_D342    ; D374 90 CC                    ..
        lda     #$07                            ; D376 A9 07                    ..
        rts                                     ; D378 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D379:
        inc     $02                             ; D379 E6 02                    ..
        lda     $02                             ; D37B A5 02                    ..
        cmp     $00                           ; D37D C5 00                    ..
        bcc     UpperFixedEngine_Branch_D342    ; D37F 90 C1                    ..
        lda     $03                             ; D381 A5 03                    ..
        and     #$1F                            ; D383 29 1F                    ).
        rts                                     ; D385 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D386:
        jsr     UpperFixedEngine_Entry_D38B     ; D386 20 8B D3                  ..
        dey                                     ; D389 88                       .
        rts                                     ; D38A 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D38B:
        bmi     UpperFixedEngine_Branch_D38F    ; D38B 30 02                    0.
        lda     #$80                            ; D38D A9 80                    ..
UpperFixedEngine_Branch_D38F:
        sta     $02                             ; D38F 85 02                    ..
        dec     $02                             ; D391 C6 02                    ..
UpperFixedEngine_Branch_D393:
        dey                                     ; D393 88                       .
        lda     ($49),y                         ; D394 B1 49                    .I
        sta     $03                             ; D396 85 03                    ..
        and     #$E0                            ; D398 29 E0                    ).
        cmp     #$E0                            ; D39A C9 E0                    ..
        bne     UpperFixedEngine_Branch_D3A9    ; D39C D0 0B                    ..
        lda     $03                             ; D39E A5 03                    ..
        and     #$1F                            ; D3A0 29 1F                    ).
        cmp     #$08                            ; D3A2 C9 08                    ..
        bcc     UpperFixedEngine_Branch_D3C7    ; D3A4 90 21                    .!
        jmp     UpperFixedEngine_Branch_D3D9    ; D3A6 4C D9 D3                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D3A9:
        lda     $03                             ; D3A9 A5 03                    ..
        tax                                     ; D3AB AA                       .
        and     #$1F                            ; D3AC 29 1F                    ).
        clc                                     ; D3AE 18                       .
        adc     #$01                            ; D3AF 69 01                    i.
        sta     $03                             ; D3B1 85 03                    ..
        lda     $02                             ; D3B3 A5 02                    ..
        sec                                     ; D3B5 38                       8
        sbc     $03                             ; D3B6 E5 03                    ..
        sta     $02                             ; D3B8 85 02                    ..
        cmp     $00                           ; D3BA C5 00                    ..
        bcs     UpperFixedEngine_Branch_D393    ; D3BC B0 D5                    ..
        txa                                     ; D3BE 8A                       .
        sta     $03                             ; D3BF 85 03                    ..
        lsr     a                               ; D3C1 4A                       J
        lsr     a                               ; D3C2 4A                       J
        lsr     a                               ; D3C3 4A                       J
        lsr     a                               ; D3C4 4A                       J
        lsr     a                               ; D3C5 4A                       J
        rts                                     ; D3C6 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D3C7:
        adc     #$01                            ; D3C7 69 01                    i.
        sta     $03                             ; D3C9 85 03                    ..
        lda     $02                             ; D3CB A5 02                    ..
        sec                                     ; D3CD 38                       8
        sbc     $03                             ; D3CE E5 03                    ..
        sta     $02                             ; D3D0 85 02                    ..
        cmp     $00                           ; D3D2 C5 00                    ..
        bcs     UpperFixedEngine_Branch_D393    ; D3D4 B0 BD                    ..
        lda     #$07                            ; D3D6 A9 07                    ..
        rts                                     ; D3D8 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D3D9:
        dec     $02                             ; D3D9 C6 02                    ..
        lda     $02                             ; D3DB A5 02                    ..
        cmp     $00                           ; D3DD C5 00                    ..
        bcs     UpperFixedEngine_Branch_D393    ; D3DF B0 B2                    ..
        lda     $03                             ; D3E1 A5 03                    ..
        and     #$1F                            ; D3E3 29 1F                    ).
        rts                                     ; D3E5 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D3E6:
        cpx     $3F                             ; D3E6 E4 3F                    .?
        bcs     $D410                           ; D3E8 B0 26                    .&
        cpy     $40                             ; D3EA C4 40                    .@
        bcs     $D410                           ; D3EC B0 22                    ."
        txa                                     ; D3EE 8A                       .
        pha                                     ; D3EF 48                       H
        lda     $3F                             ; D3F0 A5 3F                    .?
        sta     $00                           ; D3F2 85 00                    ..
        lda     #$00                            ; D3F4 A9 00                    ..
        sta     $01                             ; D3F6 85 01                    ..
        tya                                     ; D3F8 98                       .
        ldx     #$00                            ; D3F9 A2 00                    ..
        jsr     MultiplyPointerWord             ; D3FB 20 27 C8                  '.
        pla                                     ; D3FE 68                       h
        ldy     #$00                            ; D3FF A0 00                    ..
        jsr     AddWordToPointer                ; D401 20 1D C8                  ..
        ldy     #$78                            ; D404 A0 78                    .x
        lda     #$00                            ; D406 A9 00                    ..
        jsr     AddWordToPointer                ; D408 20 1D C8                  ..
        ldy     #$00                            ; D40B A0 00                    ..
        lda     ($00),y                       ; D40D B1 00                    ..
        rts                                     ; D40F 60                       `
; ----------------------------------------------------------------------------
        lda     #$FF                            ; D410 A9 FF                    ..
        sta     $00                           ; D412 85 00                    ..
        sta     $01                             ; D414 85 01                    ..
        jsr     UpperFixedEngine_Entry_D459     ; D416 20 59 D4                  Y.
        rts                                     ; D419 60                       `
; ----------------------------------------------------------------------------
        db   $E4,$3F,$B0,$F2,$C4,$40,$B0,$EE ; D41A E4 3F B0 F2 C4 40 B0 EE  .?...@..
        db   $A0,$00,$B1,$00,$48,$A5,$00,$25 ; D422 A0 00 B1 00 48 A5 00 25  ....H..%
        db   $01,$C9,$FF,$F0,$06,$E6,$00,$D0 ; D42A 01 C9 FF F0 06 E6 00 D0  ........
        db   $02,$E6,$01,$68,$60,$E4,$3F,$B0 ; D432 02 E6 01 68 60 E4 3F B0  ...h`.?.
        db   $D5,$C4,$40,$B0,$D1,$A0,$00,$B1 ; D43A D5 C4 40 B0 D1 A0 00 B1  ..@.....
        db   $00,$48,$A5,$00,$25,$01,$C9,$FF ; D442 00 48 A5 00 25 01 C9 FF  .H..%...
        db   $F0,$0B,$A5,$00,$18,$65,$3F,$85 ; D44A F0 0B A5 00 18 65 3F 85  .....e?.
        db   $00,$90,$02,$E6,$01,$68,$60     ; D452 00 90 02 E6 01 68 60     .....h`
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D459:
        bit     $0550                           ; D459 2C 50 05                 ,P.
        bpl     UpperFixedEngine_Branch_D472    ; D45C 10 14                    ..
        txa                                     ; D45E 8A                       .
        and     #$07                            ; D45F 29 07                    ).
        tax                                     ; D461 AA                       .
        tya                                     ; D462 98                       .
        and     #$07                            ; D463 29 07                    ).
        tay                                     ; D465 A8                       .
        lda     $D476,x                         ; D466 BD 76 D4                 .v.
        and     $D47E,y                         ; D469 39 7E D4                 9~.
        bne     UpperFixedEngine_Branch_D472    ; D46C D0 04                    ..
        lda     $058C                           ; D46E AD 8C 05                 ...
        rts                                     ; D471 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D472:
        lda     $0520                           ; D472 AD 20 05                 . .
        rts                                     ; D475 60                       `
; ----------------------------------------------------------------------------
        db   $01,$02,$04,$08,$10,$20,$40,$80 ; D476 01 02 04 08 10 20 40 80  ..... @.
        db   $44,$EE,$EE,$44,$11,$BB,$BB,$11 ; D47E 44 EE EE 44 11 BB BB 11  D..D....
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D486:
        cmp     #$00                            ; D486 C9 00                    ..
        bne     UpperFixedEngine_Branch_D490    ; D488 D0 06                    ..
        jsr     UpperFixedEngine_Entry_D4B5     ; D48A 20 B5 D4                  ..
        jmp     UpperFixedEngine_Branch_D4AA    ; D48D 4C AA D4                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D490:
        cmp     #$01                            ; D490 C9 01                    ..
        bne     UpperFixedEngine_Branch_D4AA    ; D492 D0 16                    ..
        ldx     CurrentTilesetCandidate         ; D494 A6 65                    .e
        cpx     #$03                            ; D496 E0 03                    ..
        bne     UpperFixedEngine_Branch_D4AA    ; D498 D0 10                    ..
        jsr     UpperFixedEngine_Entry_C891     ; D49A 20 91 C8                  ..
        cmp     #$FA                            ; D49D C9 FA                    ..
        lda     #$18                            ; D49F A9 18                    ..
        bcc     UpperFixedEngine_Branch_D4AA    ; D4A1 90 07                    ..
        lda     #$19                            ; D4A3 A9 19                    ..
        jmp     UpperFixedEngine_Branch_D4AA    ; D4A5 4C AA D4                 L..
; ----------------------------------------------------------------------------
        db   $A9,$00                         ; D4A8 A9 00                    ..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D4AA:
        tax                                     ; D4AA AA                       .
        lda     $76C0,x                         ; D4AB BD C0 76                 ..v
        pha                                     ; D4AE 48                       H
        txa                                     ; D4AF 8A                       .
        asl     a                               ; D4B0 0A                       .
        asl     a                               ; D4B1 0A                       .
        tax                                     ; D4B2 AA                       .
        pla                                     ; D4B3 68                       h
        rts                                     ; D4B4 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D4B5:
        sta     $59                             ; D4B5 85 59                    .Y
        dec     $53                             ; D4B7 C6 53                    .S
        jsr     UpperFixedEngine_Entry_D4D9     ; D4B9 20 D9 D4                  ..
        inc     $53                             ; D4BC E6 53                    .S
        inc     $54                             ; D4BE E6 54                    .T
        jsr     UpperFixedEngine_Entry_D4D9     ; D4C0 20 D9 D4                  ..
        dec     $54                             ; D4C3 C6 54                    .T
        inc     $53                             ; D4C5 E6 53                    .S
        jsr     UpperFixedEngine_Entry_D4D9     ; D4C7 20 D9 D4                  ..
        dec     $53                             ; D4CA C6 53                    .S
        dec     $54                             ; D4CC C6 54                    .T
        jsr     UpperFixedEngine_Entry_D4D9     ; D4CE 20 D9 D4                  ..
        inc     $54                             ; D4D1 E6 54                    .T
        lda     $59                             ; D4D3 A5 59                    .Y
        clc                                     ; D4D5 18                       .
        adc     #$20                            ; D4D6 69 20                    i
        rts                                     ; D4D8 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D4D9:
        ldx     $53                             ; D4D9 A6 53                    .S
        ldy     $54                             ; D4DB A4 54                    .T
        jsr     UpperFixedEngine_Entry_D251     ; D4DD 20 51 D2                  Q.
        cmp     #$00                            ; D4E0 C9 00                    ..
        beq     UpperFixedEngine_Branch_D4F0    ; D4E2 F0 0C                    ..
        cmp     #$16                            ; D4E4 C9 16                    ..
        beq     UpperFixedEngine_Branch_D4F0    ; D4E6 F0 08                    ..
        cmp     #$0A                            ; D4E8 C9 0A                    ..
        beq     UpperFixedEngine_Branch_D4F0    ; D4EA F0 04                    ..
        sec                                     ; D4EC 38                       8
        rol     $59                             ; D4ED 26 59                    &Y
        rts                                     ; D4EF 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D4F0:
        asl     $59                             ; D4F0 06 59                    .Y
        rts                                     ; D4F2 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D4F3:
        pha                                     ; D4F3 48                       H
        and     #$E0                            ; D4F4 29 E0                    ).
        cmp     $46                             ; D4F6 C5 46                    .F
        beq     UpperFixedEngine_Branch_D515    ; D4F8 F0 1B                    ..
        lda     $07BA                           ; D4FA AD BA 07                 ...
        cmp     #$04                            ; D4FD C9 04                    ..
        bne     UpperFixedEngine_Branch_D50A    ; D4FF D0 09                    ..
        pla                                     ; D501 68                       h
        pha                                     ; D502 48                       H
        and     #$1F                            ; D503 29 1F                    ).
        cmp     $0520                           ; D505 CD 20 05                 . .
        beq     UpperFixedEngine_Branch_D515    ; D508 F0 0B                    ..
UpperFixedEngine_Branch_D50A:
        pla                                     ; D50A 68                       h
        lda     #$20                            ; D50B A9 20                    .
        ldx     $46                             ; D50D A6 46                    .F
        beq     UpperFixedEngine_Branch_D518    ; D50F F0 07                    ..
        lda     #$21                            ; D511 A9 21                    .!
        bne     UpperFixedEngine_Branch_D518    ; D513 D0 03                    ..
UpperFixedEngine_Branch_D515:
        pla                                     ; D515 68                       h
        and     #$1F                            ; D516 29 1F                    ).
UpperFixedEngine_Branch_D518:
        tax                                     ; D518 AA                       .
        lda     $76C0,x                         ; D519 BD C0 76                 ..v
        pha                                     ; D51C 48                       H
        txa                                     ; D51D 8A                       .
        asl     a                               ; D51E 0A                       .
        asl     a                               ; D51F 0A                       .
        tax                                     ; D520 AA                       .
        pla                                     ; D521 68                       h
        rts                                     ; D522 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D523:
        pha                                     ; D523 48                       H
        lda     $00                           ; D524 A5 00                    ..
        cmp     #$C2                            ; D526 C9 C2                    ..
        bne     UpperFixedEngine_Branch_D539    ; D528 D0 0F                    ..
        lda     $01                             ; D52A A5 01                    ..
        cmp     #$2E                            ; D52C C9 2E                    ..
        bne     UpperFixedEngine_Branch_D539    ; D52E D0 09                    ..
        lda     $62A1                           ; D530 AD A1 62                 ..b
        bpl     UpperFixedEngine_Branch_D539    ; D533 10 04                    ..
        pla                                     ; D535 68                       h
        lda     #$02                            ; D536 A9 02                    ..
        rts                                     ; D538 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D539:
        pla                                     ; D539 68                       h
        rts                                     ; D53A 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D53B:
        lda     #$FF                            ; D53B A9 FF                    ..
        sta     $56                             ; D53D 85 56                    .V
        jmp     UpperFixedEngine_Branch_D546    ; D53F 4C 46 D5                 LF.
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D542:
        lda     #$00                            ; D542 A9 00                    ..
        sta     $56                             ; D544 85 56                    .V
UpperFixedEngine_Branch_D546:
        lda     $0507                           ; D546 AD 07 05                 ...
        sta     $58                             ; D549 85 58                    .X
        lda     #$06                            ; D54B A9 06                    ..
        sta     $51                             ; D54D 85 51                    .Q
        lda     $6F60                           ; D54F AD 60 6F                 .`o
        sec                                     ; D552 38                       8
        sbc     #$08                            ; D553 E9 08                    ..
        sta     $7C                             ; D555 85 7C                    .|
        lda     $6F80                           ; D557 AD 80 6F                 ..o
        sec                                     ; D55A 38                       8
        sbc     #$07                            ; D55B E9 07                    ..
        sta     $7B                             ; D55D 85 7B                    .{
        lda     $3C                             ; D55F A5 3C                    .<
        and     #$0F                            ; D561 29 0F                    ).
        bne     UpperFixedEngine_Branch_D588    ; D563 D0 23                    .#
        lda     $41                             ; D565 A5 41                    .A
        bmi     UpperFixedEngine_Branch_D56C    ; D567 30 03                    0.
        jmp     FixedTrampoline06               ; D569 4C 13 C0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D56C:
        lda     $67                             ; D56C A5 67                    .g
        jsr     SelectPrgBank                   ; D56E 20 91 FF                  ..
        jsr     UpperFixedEngine_Entry_D57F     ; D571 20 7F D5                  ..
        lda     $7024                           ; D574 AD 24 70                 .$p
        and     $7025                           ; D577 2D 25 70                 -%p
        bmi     UpperFixedEngine_Branch_D5AC    ; D57A 30 30                    00
        jmp     FixedTrampoline06               ; D57C 4C 13 C0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D57F:
        jsr     UpperFixedEngine_Entry_D607     ; D57F 20 07 D6                  ..
        jsr     UpperFixedEngine_Entry_D5EE     ; D582 20 EE D5                  ..
        jmp     UpperFixedEngine_Entry_D57F     ; D585 4C 7F D5                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D588:
        pha                                     ; D588 48                       H
        jsr     UpperFixedEngine_Entry_D5C0     ; D589 20 C0 D5                  ..
        pla                                     ; D58C 68                       h
        and     #$07                            ; D58D 29 07                    ).
        bne     UpperFixedEngine_Branch_D5AC    ; D58F D0 1B                    ..
        lda     $41                             ; D591 A5 41                    .A
        bpl     UpperFixedEngine_Branch_D598    ; D593 10 03                    ..
        jsr     UpperFixedEngine_Entry_D5AD     ; D595 20 AD D5                  ..
UpperFixedEngine_Branch_D598:
        ldx     #$00                            ; D598 A2 00                    ..
        jsr     UpperFixedEngine_Entry_D59D     ; D59A 20 9D D5                  ..
UpperFixedEngine_Entry_D59D:
        lda     $052A,x                         ; D59D BD 2A 05                 .*.
        and     #$40                            ; D5A0 29 40                    )@
        beq     UpperFixedEngine_Branch_D5AB    ; D5A2 F0 07                    ..
        asl     a                               ; D5A4 0A                       .
        ora     $7004,x                         ; D5A5 1D 04 70                 ..p
        sta     $7004,x                         ; D5A8 9D 04 70                 ..p
UpperFixedEngine_Branch_D5AB:
        inx                                     ; D5AB E8                       .
UpperFixedEngine_Branch_D5AC:
        rts                                     ; D5AC 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D5AD:
        lda     $67                             ; D5AD A5 67                    .g
        jsr     SelectPrgBank                   ; D5AF 20 91 FF                  ..
UpperFixedEngine_Branch_D5B2:
        jsr     UpperFixedEngine_Entry_D5FE     ; D5B2 20 FE D5                  ..
        jsr     UpperFixedEngine_Entry_D5EE     ; D5B5 20 EE D5                  ..
        jmp     UpperFixedEngine_Branch_D5B2    ; D5B8 4C B2 D5                 L..
; ----------------------------------------------------------------------------
        db   $A5,$58,$4C,$91,$FF             ; D5BB A5 58 4C 91 FF           .XL..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D5C0:
        ldx     $51                             ; D5C0 A6 51                    .Q
        lda     $7020,x                         ; D5C2 BD 20 70                 . p
        cmp     #$FF                            ; D5C5 C9 FF                    ..
        beq     UpperFixedEngine_Branch_D5E5    ; D5C7 F0 1C                    ..
        lda     $7160,x                         ; D5C9 BD 60 71                 .`q
        beq     UpperFixedEngine_Branch_D5DD    ; D5CC F0 0F                    ..
        bmi     UpperFixedEngine_Branch_D5DA    ; D5CE 30 0A                    0.
        lda     #$09                            ; D5D0 A9 09                    ..
        sta     $57                             ; D5D2 85 57                    .W
        jsr     UpperFixedEngine_Entry_D5EA     ; D5D4 20 EA D5                  ..
        jmp     UpperFixedEngine_Branch_D5DD    ; D5D7 4C DD D5                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D5DA:
        jsr     UpperFixedEngine_Entry_D9CB     ; D5DA 20 CB D9                  ..
UpperFixedEngine_Branch_D5DD:
        inc     $51                             ; D5DD E6 51                    .Q
        lda     $51                             ; D5DF A5 51                    .Q
        cmp     #$1E                            ; D5E1 C9 1E                    ..
        bcc     UpperFixedEngine_Entry_D5C0     ; D5E3 90 DB                    ..
UpperFixedEngine_Branch_D5E5:
        lda     #$06                            ; D5E5 A9 06                    ..
        sta     $51                             ; D5E7 85 51                    .Q
        rts                                     ; D5E9 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D5EA:
        jsr     UpperFixedEngine_Entry_D94B     ; D5EA 20 4B D9                  K.
        rts                                     ; D5ED 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D5EE:
        inc     $51                             ; D5EE E6 51                    .Q
        lda     $51                             ; D5F0 A5 51                    .Q
        cmp     #$1E                            ; D5F2 C9 1E                    ..
        bcc     UpperFixedEngine_Branch_D5FD    ; D5F4 90 07                    ..
UpperFixedEngine_Branch_D5F6:
        lda     $58                             ; D5F6 A5 58                    .X
        jsr     SelectPrgBank                   ; D5F8 20 91 FF                  ..
UpperFixedEngine_Branch_D5FB:
        pla                                     ; D5FB 68                       h
        pla                                     ; D5FC 68                       h
UpperFixedEngine_Branch_D5FD:
        rts                                     ; D5FD 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D5FE:
        ldx     $51                             ; D5FE A6 51                    .Q
        lda     $70E0,x                         ; D600 BD E0 70                 ..p
        and     #$40                            ; D603 29 40                    )@
        beq     UpperFixedEngine_Branch_D5FD    ; D605 F0 F6                    ..
UpperFixedEngine_Entry_D607:
        ldx     $51                             ; D607 A6 51                    .Q
        lda     $7020,x                         ; D609 BD 20 70                 . p
        cmp     #$FF                            ; D60C C9 FF                    ..
        beq     UpperFixedEngine_Branch_D5F6    ; D60E F0 E6                    ..
        jsr     UpperFixedEngine_Entry_D63B     ; D610 20 3B D6                  ;.
        bcc     UpperFixedEngine_Branch_D61B    ; D613 90 06                    ..
        jsr     UpperFixedEngine_Entry_D621     ; D615 20 21 D6                  !.
        jsr     UpperFixedEngine_Entry_D891     ; D618 20 91 D8                  ..
UpperFixedEngine_Branch_D61B:
        jsr     UpperFixedEngine_Entry_D684     ; D61B 20 84 D6                  ..
        jmp     UpperFixedEngine_Branch_D76E    ; D61E 4C 6E D7                 Ln.
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D621:
        lda     $6F60,x                         ; D621 BD 60 6F                 .`o
        sta     $52                           ; D624 85 52                    .R
        lda     $6F80,x                         ; D626 BD 80 6F                 ..o
        sta     $53                             ; D629 85 53                    .S
        jsr     UpperFixedEngine_Entry_D6F4     ; D62B 20 F4 D6                  ..
        bcs     UpperFixedEngine_Branch_D63A    ; D62E B0 0A                    ..
        ldx     $51                             ; D630 A6 51                    .Q
        lda     $7020,x                         ; D632 BD 20 70                 . p
        and     #$EF                            ; D635 29 EF                    ).
        sta     $7020,x                         ; D637 9D 20 70                 . p
UpperFixedEngine_Branch_D63A:
        rts                                     ; D63A 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D63B:
        lda     $56                             ; D63B A5 56                    .V
        beq     UpperFixedEngine_Branch_D646    ; D63D F0 07                    ..
        lda     $70E0,x                         ; D63F BD E0 70                 ..p
        and     #$10                            ; D642 29 10                    ).
        bne     UpperFixedEngine_Branch_D673    ; D644 D0 2D                    .-
UpperFixedEngine_Branch_D646:
        lda     $7000,x                         ; D646 BD 00 70                 ..p
        bmi     UpperFixedEngine_Branch_D5FB    ; D649 30 B0                    0.
        lda     $7040,x                         ; D64B BD 40 70                 .@p
        beq     UpperFixedEngine_Branch_D5FB    ; D64E F0 AB                    ..
        dec     $7040,x                         ; D650 DE 40 70                 .@p
        lda     $7040,x                         ; D653 BD 40 70                 .@p
        and     #$0F                            ; D656 29 0F                    ).
        bne     UpperFixedEngine_Branch_D5FB    ; D658 D0 A1                    ..
        lda     $7040,x                         ; D65A BD 40 70                 .@p
        lsr     a                               ; D65D 4A                       J
        lsr     a                               ; D65E 4A                       J
        lsr     a                               ; D65F 4A                       J
        lsr     a                               ; D660 4A                       J
        ora     $7040,x                         ; D661 1D 40 70                 .@p
        sta     $7040,x                         ; D664 9D 40 70                 .@p
        lda     $6F60,x                         ; D667 BD 60 6F                 .`o
        and     $6F80,x                         ; D66A 3D 80 6F                 =.o
        cmp     #$80                            ; D66D C9 80                    ..
        beq     UpperFixedEngine_Branch_D5FB    ; D66F F0 8A                    ..
        sec                                     ; D671 38                       8
        rts                                     ; D672 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D673:
        lda     $70E0,x                         ; D673 BD E0 70                 ..p
        and     #$10                            ; D676 29 10                    ).
        beq     UpperFixedEngine_Branch_D5FB    ; D678 F0 81                    ..
        lda     $70E0,x                         ; D67A BD E0 70                 ..p
        and     #$EF                            ; D67D 29 EF                    ).
        sta     $70E0,x                         ; D67F 9D E0 70                 ..p
        clc                                     ; D682 18                       .
        rts                                     ; D683 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D684:
        php                                     ; D684 08                       .
        jsr     UpperFixedEngine_Entry_D752     ; D685 20 52 D7                  R.
        plp                                     ; D688 28                       (
        bcc     UpperFixedEngine_Branch_D690    ; D689 90 05                    ..
        lda     $0530                           ; D68B AD 30 05                 .0.
        bmi     UpperFixedEngine_Branch_D695    ; D68E 30 05                    0.
UpperFixedEngine_Branch_D690:
        jsr     UpperFixedEngine_Entry_D722     ; D690 20 22 D7                  ".
        bcs     UpperFixedEngine_Branch_D6D8    ; D693 B0 43                    .C
UpperFixedEngine_Branch_D695:
        ldx     $52                           ; D695 A6 52                    .R
        ldy     $53                             ; D697 A4 53                    .S
        jsr     UpperFixedEngine_Entry_D3E6     ; D699 20 E6 D3                  ..
        sta     $55                             ; D69C 85 55                    .U
        and     #$E0                            ; D69E 29 E0                    ).
        sta     $54                             ; D6A0 85 54                    .T
        jsr     UpperFixedEngine_Entry_D6B6     ; D6A2 20 B6 D6                  ..
        jsr     UpperFixedEngine_Entry_D6DB     ; D6A5 20 DB D6                  ..
        jsr     UpperFixedEngine_Entry_D6E8     ; D6A8 20 E8 D6                  ..
        jsr     UpperFixedEngine_Entry_D6F4     ; D6AB 20 F4 D6                  ..
        ldx     $51                             ; D6AE A6 51                    .Q
        lda     $55                             ; D6B0 A5 55                    .U
        sta     $7140,x                         ; D6B2 9D 40 71                 .@q
        rts                                     ; D6B5 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D6B6:
        lda     $55                             ; D6B6 A5 55                    .U
        and     #$1F                            ; D6B8 29 1F                    ).
        tax                                     ; D6BA AA                       .
        ldy     $6F40,x                         ; D6BB BC 40 6F                 .@o
        ldx     $51                             ; D6BE A6 51                    .Q
        lda     $70E0,x                         ; D6C0 BD E0 70                 ..p
        and     #$07                            ; D6C3 29 07                    ).
        beq     UpperFixedEngine_Branch_D6CC    ; D6C5 F0 05                    ..
        cpy     #$83                            ; D6C7 C0 83                    ..
        bne     UpperFixedEngine_Branch_D6D6    ; D6C9 D0 0B                    ..
        rts                                     ; D6CB 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D6CC:
        tya                                     ; D6CC 98                       .
        bmi     UpperFixedEngine_Branch_D6D6    ; D6CD 30 07                    0.
        and     #$7F                            ; D6CF 29 7F                    ).
        cmp     #$05                            ; D6D1 C9 05                    ..
        beq     UpperFixedEngine_Branch_D6D6    ; D6D3 F0 01                    ..
        rts                                     ; D6D5 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D6D6:
        pla                                     ; D6D6 68                       h
        pla                                     ; D6D7 68                       h
UpperFixedEngine_Branch_D6D8:
        pla                                     ; D6D8 68                       h
        pla                                     ; D6D9 68                       h
        rts                                     ; D6DA 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D6DB:
        lda     $52                           ; D6DB A5 52                    .R
        cmp     $3F                             ; D6DD C5 3F                    .?
        bcs     UpperFixedEngine_Branch_D6D6    ; D6DF B0 F5                    ..
        lda     $53                             ; D6E1 A5 53                    .S
        cmp     $40                             ; D6E3 C5 40                    .@
        bcs     UpperFixedEngine_Branch_D6D6    ; D6E5 B0 EF                    ..
        rts                                     ; D6E7 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D6E8:
        ldx     $51                             ; D6E8 A6 51                    .Q
        lda     $7140,x                         ; D6EA BD 40 71                 .@q
        and     #$E0                            ; D6ED 29 E0                    ).
        cmp     $54                             ; D6EF C5 54                    .T
        bne     UpperFixedEngine_Branch_D6D6    ; D6F1 D0 E3                    ..
        rts                                     ; D6F3 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D6F4:
        lda     $0539                           ; D6F4 AD 39 05                 .9.
        bpl     UpperFixedEngine_Branch_D720    ; D6F7 10 27                    .'
        lda     $52                           ; D6F9 A5 52                    .R
        sec                                     ; D6FB 38                       8
        sbc     $7C                             ; D6FC E5 7C                    .|
        sta     $5F                             ; D6FE 85 5F                    ._
        cmp     #$10                            ; D700 C9 10                    ..
        bcs     UpperFixedEngine_Branch_D720    ; D702 B0 1C                    ..
        lda     $53                             ; D704 A5 53                    .S
        sec                                     ; D706 38                       8
        sbc     $7B                             ; D707 E5 7B                    .{
        sta     $60                             ; D709 85 60                    .`
        cmp     #$0F                            ; D70B C9 0F                    ..
        bcs     UpperFixedEngine_Branch_D720    ; D70D B0 11                    ..
        brk                                     ; D70F 00                       .
        db   $0B,$6F,$90,$0C,$A6,$51,$BD,$20 ; D710 0B 6F 90 0C A6 51 BD 20  .o...Q.
        db   $70,$09,$10,$9D,$20,$70,$38,$60 ; D718 70 09 10 9D 20 70 38 60  p... p8`
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D720:
        clc                                     ; D720 18                       .
        rts                                     ; D721 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D722:
        ldx     #$00                            ; D722 A2 00                    ..
UpperFixedEngine_Branch_D724:
        lda     $6F60,x                         ; D724 BD 60 6F                 .`o
        cmp     $52                           ; D727 C5 52                    .R
        bne     UpperFixedEngine_Branch_D732    ; D729 D0 07                    ..
        lda     $6F80,x                         ; D72B BD 80 6F                 ..o
        cmp     $53                             ; D72E C5 53                    .S
        beq     UpperFixedEngine_Branch_D743    ; D730 F0 11                    ..
UpperFixedEngine_Branch_D732:
        inx                                     ; D732 E8                       .
        cpx     #$1E                            ; D733 E0 1E                    ..
        bcs     UpperFixedEngine_Branch_D741    ; D735 B0 0A                    ..
        lda     $6F60,x                         ; D737 BD 60 6F                 .`o
        and     $6F80,x                         ; D73A 3D 80 6F                 =.o
        cmp     #$FF                            ; D73D C9 FF                    ..
        bne     UpperFixedEngine_Branch_D724    ; D73F D0 E3                    ..
UpperFixedEngine_Branch_D741:
        clc                                     ; D741 18                       .
        rts                                     ; D742 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D743:
        cpx     $51                             ; D743 E4 51                    .Q
        beq     UpperFixedEngine_Branch_D732    ; D745 F0 EB                    ..
        cpx     #$06                            ; D747 E0 06                    ..
        bcs     UpperFixedEngine_Branch_D751    ; D749 B0 06                    ..
        lda     $7020,x                         ; D74B BD 20 70                 . p
        bmi     UpperFixedEngine_Branch_D732    ; D74E 30 E2                    0.
        sec                                     ; D750 38                       8
UpperFixedEngine_Branch_D751:
        rts                                     ; D751 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D752:
        ldx     $51                             ; D752 A6 51                    .Q
        lda     $7000,x                         ; D754 BD 00 70                 ..p
        and     #$03                            ; D757 29 03                    ).
        asl     a                               ; D759 0A                       .
        tay                                     ; D75A A8                       .
        lda     $D239,y                         ; D75B B9 39 D2                 .9.
        clc                                     ; D75E 18                       .
        adc     $6F60,x                         ; D75F 7D 60 6F                 }`o
        sta     $52                           ; D762 85 52                    .R
        lda     $D23A,y                         ; D764 B9 3A D2                 .:.
        clc                                     ; D767 18                       .
        adc     $6F80,x                         ; D768 7D 80 6F                 }.o
        sta     $53                             ; D76B 85 53                    .S
        rts                                     ; D76D 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D76E:
        ldx     $51                             ; D76E A6 51                    .Q
        lda     $7000,x                         ; D770 BD 00 70                 ..p
        ora     #$80                            ; D773 09 80                    ..
        sta     $7000,x                         ; D775 9D 00 70                 ..p
        and     #$01                            ; D778 29 01                    ).
        beq     UpperFixedEngine_Branch_D794    ; D77A F0 18                    ..
        ldy     #$10                            ; D77C A0 10                    ..
        lda     $7000,x                         ; D77E BD 00 70                 ..p
        and     #$03                            ; D781 29 03                    ).
        cmp     #$01                            ; D783 C9 01                    ..
        beq     UpperFixedEngine_Branch_D789    ; D785 F0 02                    ..
        ldy     #$F0                            ; D787 A0 F0                    ..
UpperFixedEngine_Branch_D789:
        tya                                     ; D789 98                       .
        clc                                     ; D78A 18                       .
        adc     $71E0,x                         ; D78B 7D E0 71                 }.q
        sta     $71E0,x                         ; D78E 9D E0 71                 ..q
        jmp     UpperFixedEngine_Branch_D7B7    ; D791 4C B7 D7                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D794:
        ldy     #$01                            ; D794 A0 01                    ..
        lda     $7000,x                         ; D796 BD 00 70                 ..p
        and     #$03                            ; D799 29 03                    ).
        cmp     #$02                            ; D79B C9 02                    ..
        beq     UpperFixedEngine_Branch_D7A1    ; D79D F0 02                    ..
        ldy     #$FF                            ; D79F A0 FF                    ..
UpperFixedEngine_Branch_D7A1:
        sty     $54                             ; D7A1 84 54                    .T
        lda     $71E0,x                         ; D7A3 BD E0 71                 ..q
        clc                                     ; D7A6 18                       .
        adc     $54                             ; D7A7 65 54                    eT
        and     #$0F                            ; D7A9 29 0F                    ).
        sta     $54                             ; D7AB 85 54                    .T
        lda     $71E0,x                         ; D7AD BD E0 71                 ..q
        and     #$F0                            ; D7B0 29 F0                    ).
        ora     $54                             ; D7B2 05 54                    .T
        sta     $71E0,x                         ; D7B4 9D E0 71                 ..q
UpperFixedEngine_Branch_D7B7:
        lda     $52                           ; D7B7 A5 52                    .R
        sta     $6F60,x                         ; D7B9 9D 60 6F                 .`o
        lda     $53                             ; D7BC A5 53                    .S
        sta     $6F80,x                         ; D7BE 9D 80 6F                 ..o
        lda     $7020,x                         ; D7C1 BD 20 70                 . p
        and     #$10                            ; D7C4 29 10                    ).
        beq     UpperFixedEngine_Branch_D7D2    ; D7C6 F0 0A                    ..
        lda     $52                           ; D7C8 A5 52                    .R
        sta     $6FA0,x                         ; D7CA 9D A0 6F                 ..o
        lda     $53                             ; D7CD A5 53                    .S
        sta     $6FC0,x                         ; D7CF 9D C0 6F                 ..o
UpperFixedEngine_Branch_D7D2:
        jmp     UpperFixedEngine_Entry_D7FC     ; D7D2 4C FC D7                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D7D5:
        lda     $3C                             ; D7D5 A5 3C                    .<
        and     #$0F                            ; D7D7 29 0F                    ).
        sec                                     ; D7D9 38                       8
        sbc     #$01                            ; D7DA E9 01                    ..
        cmp     #$06                            ; D7DC C9 06                    ..
        bcs     UpperFixedEngine_Branch_D85C    ; D7DE B0 7C                    .|
        tax                                     ; D7E0 AA                       .
        jsr     UpperFixedEngine_Entry_D7F1     ; D7E1 20 F1 D7                  ..
        jsr     UpperFixedEngine_Entry_D7F1     ; D7E4 20 F1 D7                  ..
        jsr     UpperFixedEngine_Entry_D7F1     ; D7E7 20 F1 D7                  ..
        jsr     UpperFixedEngine_Entry_D7F1     ; D7EA 20 F1 D7                  ..
        jsr     UpperFixedEngine_Entry_D7F1     ; D7ED 20 F1 D7                  ..
        rts                                     ; D7F0 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D7F1:
        lda     $7020,x                         ; D7F1 BD 20 70                 . p
        cmp     #$FF                            ; D7F4 C9 FF                    ..
        beq     UpperFixedEngine_Branch_D861    ; D7F6 F0 69                    .i
        cpx     #$1E                            ; D7F8 E0 1E                    ..
        bcs     UpperFixedEngine_Branch_D861    ; D7FA B0 65                    .e
UpperFixedEngine_Entry_D7FC:
        txa                                     ; D7FC 8A                       .
        pha                                     ; D7FD 48                       H
        lda     $70E0,x                         ; D7FE BD E0 70                 ..p
        bpl     UpperFixedEngine_Branch_D857    ; D801 10 54                    .T
        pla                                     ; D803 68                       h
UpperFixedEngine_Entry_D804:
        txa                                     ; D804 8A                       .
        pha                                     ; D805 48                       H
        lda     $7000,x                         ; D806 BD 00 70                 ..p
        pha                                     ; D809 48                       H
        and     #$3C                            ; D80A 29 3C                    )<
        bne     UpperFixedEngine_Branch_D812    ; D80C D0 04                    ..
        cpx     #$00                            ; D80E E0 00                    ..
        bne     UpperFixedEngine_Branch_D85D    ; D810 D0 4B                    .K
UpperFixedEngine_Branch_D812:
        jsr     UpperFixedEngine_Entry_C78C     ; D812 20 8C C7                  ..
        lda     $6FE0,x                         ; D815 BD E0 6F                 ..o
        and     #$0F                            ; D818 29 0F                    ).
        jsr     UpperFixedEngine_Entry_D864     ; D81A 20 64 D8                  d.
        ldx     #$59                            ; D81D A2 59                    .Y
        pla                                     ; D81F 68                       h
        and     #$03                            ; D820 29 03                    ).
        jsr     UpperFixedEngine_Entry_D876     ; D822 20 76 D8                  v.
        ldx     $16                             ; D825 A6 16                    ..
        lda     $59                             ; D827 A5 59                    .Y
        sta     $0201,x                         ; D829 9D 01 02                 ...
        lda     $5A                             ; D82C A5 5A                    .Z
        ora     #$00                            ; D82E 09 00                    ..
        sta     $0202,x                         ; D830 9D 02 02                 ...
        lda     $5B                             ; D833 A5 5B                    .[
        sta     $0205,x                         ; D835 9D 05 02                 ...
        lda     $5C                             ; D838 A5 5C                    .\
        ora     #$00                            ; D83A 09 00                    ..
        sta     $0206,x                         ; D83C 9D 06 02                 ...
        lda     $5D                             ; D83F A5 5D                    .]
        sta     $0209,x                         ; D841 9D 09 02                 ...
        lda     $5E                             ; D844 A5 5E                    .^
        ora     #$00                            ; D846 09 00                    ..
        sta     $020A,x                         ; D848 9D 0A 02                 ...
        lda     $5F                             ; D84B A5 5F                    ._
        sta     $020D,x                         ; D84D 9D 0D 02                 ...
        lda     $60                             ; D850 A5 60                    .`
        ora     #$00                            ; D852 09 00                    ..
        sta     $020E,x                         ; D854 9D 0E 02                 ...
UpperFixedEngine_Branch_D857:
        pla                                     ; D857 68                       h
        clc                                     ; D858 18                       .
        adc     #$06                            ; D859 69 06                    i.
        tax                                     ; D85B AA                       .
UpperFixedEngine_Branch_D85C:
        rts                                     ; D85C 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D85D:
        pla                                     ; D85D 68                       h
        jmp     UpperFixedEngine_Branch_D857    ; D85E 4C 57 D8                 LW.
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D861:
        pla                                     ; D861 68                       h
        pla                                     ; D862 68                       h
        rts                                     ; D863 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D864:
        pha                                     ; D864 48                       H
        lda     #$00                            ; D865 A9 00                    ..
        sta     $4F                             ; D867 85 4F                    .O
        pla                                     ; D869 68                       h
        lsr     a                               ; D86A 4A                       J
        ror     $4F                             ; D86B 66 4F                    fO
        lsr     a                               ; D86D 4A                       J
        ror     $4F                             ; D86E 66 4F                    fO
        clc                                     ; D870 18                       .
        adc     #$72                            ; D871 69 72                    ir
        sta     $50                             ; D873 85 50                    .P
        rts                                     ; D875 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D876:
        and     #$03                            ; D876 29 03                    ).
        asl     a                               ; D878 0A                       .
        asl     a                               ; D879 0A                       .
        asl     a                               ; D87A 0A                       .
        asl     a                               ; D87B 0A                       .
        ldy     $0526                           ; D87C AC 26 05                 .&.
        bpl     UpperFixedEngine_Branch_D884    ; D87F 10 03                    ..
        clc                                     ; D881 18                       .
        adc     #$08                            ; D882 69 08                    i.
UpperFixedEngine_Branch_D884:
        tay                                     ; D884 A8                       .
UpperFixedEngine_Branch_D885:
        lda     ($4F),y                         ; D885 B1 4F                    .O
        sta     $00,x                         ; D887 95 00                    ..
        inx                                     ; D889 E8                       .
        iny                                     ; D88A C8                       .
        tya                                     ; D88B 98                       .
        and     #$07                            ; D88C 29 07                    ).
        bne     UpperFixedEngine_Branch_D885    ; D88E D0 F5                    ..
        rts                                     ; D890 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D891:
        ldx     $51                             ; D891 A6 51                    .Q
        lda     $7080,x                         ; D893 BD 80 70                 ..p
        sta     $4D                             ; D896 85 4D                    .M
        lda     $7060,x                         ; D898 BD 60 70                 .`p
        sta     $4E                             ; D89B 85 4E                    .N
        ldy     #$00                            ; D89D A0 00                    ..
        lda     ($4D),y                         ; D89F B1 4D                    .M
        sta     $57                             ; D8A1 85 57                    .W
        bmi     UpperFixedEngine_Branch_D8BA    ; D8A3 30 15                    0.
        cmp     #$31                            ; D8A5 C9 31                    .1
        bcc     UpperFixedEngine_Branch_D8AB    ; D8A7 90 02                    ..
        lda     #$00                            ; D8A9 A9 00                    ..
UpperFixedEngine_Branch_D8AB:
        asl     a                               ; D8AB 0A                       .
        tay                                     ; D8AC A8                       .
        lda     $DF02,y                         ; D8AD B9 02 DF                 ...
        sta     $52                           ; D8B0 85 52                    .R
        lda     $DF03,y                         ; D8B2 B9 03 DF                 ...
        sta     $53                             ; D8B5 85 53                    .S
        jmp     ($0052)                         ; D8B7 6C 52 00                 lR.
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D8BA:
        and     #$7F                            ; D8BA 29 7F                    ).
        asl     a                               ; D8BC 0A                       .
        tay                                     ; D8BD A8                       .
        lda     $DF64,y                         ; D8BE B9 64 DF                 .d.
        sta     $52                           ; D8C1 85 52                    .R
        lda     $DF65,y                         ; D8C3 B9 65 DF                 .e.
        sta     $53                             ; D8C6 85 53                    .S
        jmp     ($0052)                         ; D8C8 6C 52 00                 lR.
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D8CB:
        jsr     UpperFixedEngine_Entry_DDE3     ; D8CB 20 E3 DD                  ..
UpperFixedEngine_Entry_D8CE:
        jsr     UpperFixedEngine_Entry_DA59     ; D8CE 20 59 DA                  Y.
        jmp     UpperFixedEngine_Branch_DDF0    ; D8D1 4C F0 DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D8D4:
        jsr     UpperFixedEngine_Entry_DDE3     ; D8D4 20 E3 DD                  ..
UpperFixedEngine_Entry_D8D7:
        jsr     UpperFixedEngine_Entry_DA47     ; D8D7 20 47 DA                  G.
        jmp     UpperFixedEngine_Branch_DDF0    ; D8DA 4C F0 DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D8DD:
        jsr     UpperFixedEngine_Entry_DDE3     ; D8DD 20 E3 DD                  ..
UpperFixedEngine_Entry_D8E0:
        lda     #$03                            ; D8E0 A9 03                    ..
        sta     $68                             ; D8E2 85 68                    .h
        lda     $7000,x                         ; D8E4 BD 00 70                 ..p
UpperFixedEngine_Branch_D8E7:
        pha                                     ; D8E7 48                       H
        and     #$FC                            ; D8E8 29 FC                    ).
        sta     $7000,x                         ; D8EA 9D 00 70                 ..p
        jsr     UpperFixedEngine_Entry_C891     ; D8ED 20 91 C8                  ..
        lda     $12                             ; D8F0 A5 12                    ..
        and     #$03                            ; D8F2 29 03                    ).
        ora     $7000,x                         ; D8F4 1D 00 70                 ..p
        sta     $7000,x                         ; D8F7 9D 00 70                 ..p
        pla                                     ; D8FA 68                       h
        eor     #$02                            ; D8FB 49 02                    I.
        cmp     $7000,x                         ; D8FD DD 00 70                 ..p
        bne     UpperFixedEngine_Branch_D908    ; D900 D0 06                    ..
        eor     #$02                            ; D902 49 02                    I.
        dec     $68                             ; D904 C6 68                    .h
        bne     UpperFixedEngine_Branch_D8E7    ; D906 D0 DF                    ..
UpperFixedEngine_Branch_D908:
        clc                                     ; D908 18                       .
        rts                                     ; D909 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D90A:
        lda     $7000,x                         ; D90A BD 00 70                 ..p
        clc                                     ; D90D 18                       .
        adc     #$01                            ; D90E 69 01                    i.
UpperFixedEngine_Branch_D910:
        and     #$03                            ; D910 29 03                    ).
        pha                                     ; D912 48                       H
        lda     $7000,x                         ; D913 BD 00 70                 ..p
        and     #$FC                            ; D916 29 FC                    ).
        sta     $7000,x                         ; D918 9D 00 70                 ..p
        pla                                     ; D91B 68                       h
        ora     $7000,x                         ; D91C 1D 00 70                 ..p
        sta     $7000,x                         ; D91F 9D 00 70                 ..p
        jsr     UpperFixedEngine_Entry_DDE3     ; D922 20 E3 DD                  ..
        jmp     UpperFixedEngine_Branch_DDF0    ; D925 4C F0 DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D928:
        lda     $7000,x                         ; D928 BD 00 70                 ..p
        sec                                     ; D92B 38                       8
        sbc     #$01                            ; D92C E9 01                    ..
        jmp     UpperFixedEngine_Branch_D910    ; D92E 4C 10 D9                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D931:
        jsr     UpperFixedEngine_Entry_D9AB     ; D931 20 AB D9                  ..
        jmp     UpperFixedEngine_Branch_DDF0    ; D934 4C F0 DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D937:
        jsr     UpperFixedEngine_Entry_D9AB     ; D937 20 AB D9                  ..
        lda     #$81                            ; D93A A9 81                    ..
        sta     $6F60,x                         ; D93C 9D 60 6F                 .`o
        sta     $6F80,x                         ; D93F 9D 80 6F                 ..o
        sta     $6FA0,x                         ; D942 9D A0 6F                 ..o
        sta     $6FC0,x                         ; D945 9D C0 6F                 ..o
        jmp     UpperFixedEngine_Branch_DDF0    ; D948 4C F0 DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D94B:
        ldx     $51                             ; D94B A6 51                    .Q
        lda     $7160,x                         ; D94D BD 60 71                 .`q
        beq     UpperFixedEngine_Branch_D99B    ; D950 F0 49                    .I
        dec     $7160,x                         ; D952 DE 60 71                 .`q
        lda     $7160,x                         ; D955 BD 60 71                 .`q
        and     #$07                            ; D958 29 07                    ).
        bne     UpperFixedEngine_Branch_D974    ; D95A D0 18                    ..
        lda     $7160,x                         ; D95C BD 60 71                 .`q
        sec                                     ; D95F 38                       8
        sbc     #$08                            ; D960 E9 08                    ..
        and     #$38                            ; D962 29 38                    )8
        cmp     #$08                            ; D964 C9 08                    ..
        beq     UpperFixedEngine_Branch_D97F    ; D966 F0 17                    ..
        sta     $7160,x                         ; D968 9D 60 71                 .`q
        lsr     a                               ; D96B 4A                       J
        lsr     a                               ; D96C 4A                       J
        lsr     a                               ; D96D 4A                       J
        ora     $7160,x                         ; D96E 1D 60 71                 .`q
        jmp     UpperFixedEngine_Branch_D99D    ; D971 4C 9D D9                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D974:
        lda     $7020,x                         ; D974 BD 20 70                 . p
        and     #$7F                            ; D977 29 7F                    ).
        sta     $7020,x                         ; D979 9D 20 70                 . p
        jmp     UpperFixedEngine_Branch_DDF0    ; D97C 4C F0 DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D97F:
        jsr     UpperFixedEngine_Entry_DDE3     ; D97F 20 E3 DD                  ..
        db   $A5,$57,$C9,$09,$F0,$0E,$A9,$81 ; D982 A5 57 C9 09 F0 0E A9 81  .W......
        db   $9D,$60,$6F,$9D,$80,$6F,$9D,$A0 ; D98A 9D 60 6F 9D 80 6F 9D A0  .`o..o..
        db   $6F,$9D,$C0,$6F,$A9,$00,$4C,$9D ; D992 6F 9D C0 6F A9 00 4C 9D  o..o..L.
        db   $D9                             ; D99A D9                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D99B:
        lda     #$36                            ; D99B A9 36                    .6
UpperFixedEngine_Branch_D99D:
        sta     $7160,x                         ; D99D 9D 60 71                 .`q
UpperFixedEngine_Branch_D9A0:
        lda     $7020,x                         ; D9A0 BD 20 70                 . p
        ora     #$80                            ; D9A3 09 80                    ..
        sta     $7020,x                         ; D9A5 9D 20 70                 . p
        jmp     UpperFixedEngine_Branch_DDF0    ; D9A8 4C F0 DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D9AB:
        ldx     $51                             ; D9AB A6 51                    .Q
        lda     $7020,x                         ; D9AD BD 20 70                 . p
        ora     #$80                            ; D9B0 09 80                    ..
        sta     $7020,x                         ; D9B2 9D 20 70                 . p
        jmp     UpperFixedEngine_Entry_DDE3     ; D9B5 4C E3 DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D9B8:
        ldx     $51                             ; D9B8 A6 51                    .Q
        lda     $7020,x                         ; D9BA BD 20 70                 . p
        and     #$7F                            ; D9BD 29 7F                    ).
        sta     $7020,x                         ; D9BF 9D 20 70                 . p
        jsr     UpperFixedEngine_Entry_DA11     ; D9C2 20 11 DA                  ..
        jsr     UpperFixedEngine_Entry_DDE3     ; D9C5 20 E3 DD                  ..
        jmp     UpperFixedEngine_Branch_DDF0    ; D9C8 4C F0 DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_D9CB:
        ldx     $51                             ; D9CB A6 51                    .Q
        lda     $7160,x                         ; D9CD BD 60 71                 .`q
        beq     UpperFixedEngine_Branch_DA06    ; D9D0 F0 34                    .4
        dec     $7160,x                         ; D9D2 DE 60 71                 .`q
        lda     $7160,x                         ; D9D5 BD 60 71                 .`q
        and     #$07                            ; D9D8 29 07                    ).
        bne     UpperFixedEngine_Branch_D974    ; D9DA D0 98                    ..
        lda     $7160,x                         ; D9DC BD 60 71                 .`q
        clc                                     ; D9DF 18                       .
        adc     #$08                            ; D9E0 69 08                    i.
        and     #$38                            ; D9E2 29 38                    )8
        cmp     #$30                            ; D9E4 C9 30                    .0
        bcs     UpperFixedEngine_Branch_D9FB    ; D9E6 B0 13                    ..
        ora     #$80                            ; D9E8 09 80                    ..
        sta     $7160,x                         ; D9EA 9D 60 71                 .`q
        and     #$38                            ; D9ED 29 38                    )8
        lsr     a                               ; D9EF 4A                       J
        lsr     a                               ; D9F0 4A                       J
        lsr     a                               ; D9F1 4A                       J
        ora     $7160,x                         ; D9F2 1D 60 71                 .`q
        sta     $7160,x                         ; D9F5 9D 60 71                 .`q
        jmp     UpperFixedEngine_Branch_D9A0    ; D9F8 4C A0 D9                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_D9FB:
        jsr     UpperFixedEngine_Entry_DDE3     ; D9FB 20 E3 DD                  ..
        db   $A9,$00,$9D,$60,$71,$4C,$74,$D9 ; D9FE A9 00 9D 60 71 4C 74 D9  ...`qLt.
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DA06:
        lda     #$89                            ; DA06 A9 89                    ..
        sta     $7160,x                         ; DA08 9D 60 71                 .`q
        jsr     UpperFixedEngine_Entry_DA11     ; DA0B 20 11 DA                  ..
        jmp     UpperFixedEngine_Branch_D974    ; DA0E 4C 74 D9                 Lt.
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DA11:
        lda     $6F60,x                         ; DA11 BD 60 6F                 .`o
        sta     $6FA0,x                         ; DA14 9D A0 6F                 ..o
        lda     $6F80,x                         ; DA17 BD 80 6F                 ..o
        sta     $6FC0,x                         ; DA1A 9D C0 6F                 ..o
        rts                                     ; DA1D 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DA1E:
        lda     $3E                             ; DA1E A5 3E                    .>
        beq     UpperFixedEngine_Branch_DA2B    ; DA20 F0 09                    ..
        ldx     $51                             ; DA22 A6 51                    .Q
        lda     $3D                             ; DA24 A5 3D                    .=
        jsr     UpperFixedEngine_Entry_DDF3     ; DA26 20 F3 DD                  ..
        sec                                     ; DA29 38                       8
        rts                                     ; DA2A 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DA2B:
        jmp     UpperFixedEngine_Branch_DDF0    ; DA2B 4C F0 DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DA2E:
        ldx     $51                             ; DA2E A6 51                    .Q
        lda     $70E0,x                         ; DA30 BD E0 70                 ..p
        ora     #$08                            ; DA33 09 08                    ..
        sta     $70E0,x                         ; DA35 9D E0 70                 ..p
        jsr     UpperFixedEngine_Entry_DDE3     ; DA38 20 E3 DD                  ..
        jmp     UpperFixedEngine_Branch_DDF0    ; DA3B 4C F0 DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DA3E:
        jsr     UpperFixedEngine_Entry_DA47     ; DA3E 20 47 DA                  G.
        jsr     UpperFixedEngine_Entry_DDE3     ; DA41 20 E3 DD                  ..
        jmp     UpperFixedEngine_Entry_D891     ; DA44 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DA47:
        lda     $70E0,x                         ; DA47 BD E0 70                 ..p
        ora     #$80                            ; DA4A 09 80                    ..
        sta     $70E0,x                         ; DA4C 9D E0 70                 ..p
        rts                                     ; DA4F 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DA50:
        jsr     UpperFixedEngine_Entry_DA59     ; DA50 20 59 DA                  Y.
        jsr     UpperFixedEngine_Entry_DDE3     ; DA53 20 E3 DD                  ..
        jmp     UpperFixedEngine_Entry_D891     ; DA56 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DA59:
        lda     $70E0,x                         ; DA59 BD E0 70                 ..p
        and     #$7F                            ; DA5C 29 7F                    ).
        sta     $70E0,x                         ; DA5E 9D E0 70                 ..p
        rts                                     ; DA61 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DA62:
        lda     $70E0,x                         ; DA62 BD E0 70                 ..p
        ora     #$40                            ; DA65 09 40                    .@
        sta     $70E0,x                         ; DA67 9D E0 70                 ..p
        lda     #$11                            ; DA6A A9 11                    ..
        sta     $7040,x                         ; DA6C 9D 40 70                 .@p
        jsr     UpperFixedEngine_Entry_DDE3     ; DA6F 20 E3 DD                  ..
        jmp     UpperFixedEngine_Entry_D891     ; DA72 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DA75:
        tya                                     ; DA75 98                       .
        lsr     a                               ; DA76 4A                       J
        sec                                     ; DA77 38                       8
        sbc     #$11                            ; DA78 E9 11                    ..
        pha                                     ; DA7A 48                       H
        asl     a                               ; DA7B 0A                       .
        asl     a                               ; DA7C 0A                       .
        asl     a                               ; DA7D 0A                       .
        asl     a                               ; DA7E 0A                       .
        sta     $7040,x                         ; DA7F 9D 40 70                 .@p
        pla                                     ; DA82 68                       h
        ora     $7040,x                         ; DA83 1D 40 70                 .@p
        sta     $7040,x                         ; DA86 9D 40 70                 .@p
        lda     $70E0,x                         ; DA89 BD E0 70                 ..p
        and     #$BF                            ; DA8C 29 BF                    ).
        sta     $70E0,x                         ; DA8E 9D E0 70                 ..p
        jsr     UpperFixedEngine_Entry_DDE3     ; DA91 20 E3 DD                  ..
        jmp     UpperFixedEngine_Entry_D891     ; DA94 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DA97:
        ldy     #$01                            ; DA97 A0 01                    ..
        lda     ($4D),y                         ; DA99 B1 4D                    .M
        jsr     UpperFixedEngine_Entry_DDE0     ; DA9B 20 E0 DD                  ..
        brk                                     ; DA9E 00                       .
        db   $01,$8F,$4C,$F0,$DD             ; DA9F 01 8F 4C F0 DD           ..L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DAA4:
        lda     $0507                           ; DAA4 AD 07 05                 ...
        pha                                     ; DAA7 48                       H
        cmp     #$1C                            ; DAA8 C9 1C                    ..
        clc                                     ; DAAA 18                       .
        beq     UpperFixedEngine_Branch_DAB3    ; DAAB F0 06                    ..
        lda     #$1C                            ; DAAD A9 1C                    ..
        jsr     SelectPrgBank                   ; DAAF 20 91 FF                  ..
        sec                                     ; DAB2 38                       8
UpperFixedEngine_Branch_DAB3:
        php                                     ; DAB3 08                       .
        jsr     UpperFixedEngine_Entry_DAC6     ; DAB4 20 C6 DA                  ..
        ldx     $51                             ; DAB7 A6 51                    .Q
        jsr     UpperFixedEngine_Entry_DDE0     ; DAB9 20 E0 DD                  ..
        plp                                     ; DABC 28                       (
        pla                                     ; DABD 68                       h
        bcc     UpperFixedEngine_Branch_DAC3    ; DABE 90 03                    ..
        jsr     SelectPrgBank                   ; DAC0 20 91 FF                  ..
UpperFixedEngine_Branch_DAC3:
        jmp     UpperFixedEngine_Branch_DDF0    ; DAC3 4C F0 DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DAC6:
        lda     $8014                           ; DAC6 AD 14 80                 ...
        sta     $55                             ; DAC9 85 55                    .U
        lda     $8015                           ; DACB AD 15 80                 ...
        sta     $56                             ; DACE 85 56                    .V
        lda     $8016                           ; DAD0 AD 16 80                 ...
        sta     $00                           ; DAD3 85 00                    ..
        lda     $8017                           ; DAD5 AD 17 80                 ...
        sta     $01                             ; DAD8 85 01                    ..
        ldy     #$01                            ; DADA A0 01                    ..
        lda     $67                             ; DADC A5 67                    .g
        ldx     #$4D                            ; DADE A2 4D                    .M
        jsr     UpperFixedEngine_Entry_C3EA     ; DAE0 20 EA C3                  ..
        tax                                     ; DAE3 AA                       .
        ldy     #$00                            ; DAE4 A0 00                    ..
        lda     ($00),y                       ; DAE6 B1 00                    ..
        sta     $0531                           ; DAE8 8D 31 05                 .1.
        cpx     #$00                            ; DAEB E0 00                    ..
        beq     $DB03                           ; DAED F0 14                    ..
        lda     ($00),y                       ; DAEF B1 00                    ..
        clc                                     ; DAF1 18                       .
        adc     $55                             ; DAF2 65 55                    eU
        sta     $55                             ; DAF4 85 55                    .U
        bcc     $DAFA                           ; DAF6 90 02                    ..
        inc     $56                             ; DAF8 E6 56                    .V
        iny                                     ; DAFA C8                       .
        lda     ($00),y                       ; DAFB B1 00                    ..
        sta     $0531                           ; DAFD 8D 31 05                 .1.
        dex                                     ; DB00 CA                       .
        bne     $DAEF                           ; DB01 D0 EC                    ..
        lda     $55                             ; DB03 A5 55                    .U
        sta     $0532                           ; DB05 8D 32 05                 .2.
        lda     $56                             ; DB08 A5 56                    .V
        sta     $0533                           ; DB0A 8D 33 05                 .3.
        jsr     UpperFixedEngine_Entry_DB6A     ; DB0D 20 6A DB                  j.
        and     #$0F                            ; DB10 29 0F                    ).
        ora     #$80                            ; DB12 09 80                    ..
        sta     $0530                           ; DB14 8D 30 05                 .0.
        rts                                     ; DB17 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DB18:
        jsr     UpperFixedEngine_Entry_DB6A     ; DB18 20 6A DB                  j.
        and     #$F0                            ; DB1B 29 F0                    ).
        pha                                     ; DB1D 48                       H
        dec     $0530                           ; DB1E CE 30 05                 .0.
        lda     $0530                           ; DB21 AD 30 05                 .0.
        and     #$0F                            ; DB24 29 0F                    ).
        bne     UpperFixedEngine_Branch_DB66    ; DB26 D0 3E                    .>
        dec     $0531                           ; DB28 CE 31 05                 .1.
        beq     UpperFixedEngine_Branch_DB61    ; DB2B F0 34                    .4
        lda     $0533                           ; DB2D AD 33 05                 .3.
        ora     $0532                           ; DB30 0D 32 05                 .2.
        bne     UpperFixedEngine_Branch_DB3A    ; DB33 D0 05                    ..
        lda     #$8F                            ; DB35 A9 8F                    ..
        jmp     UpperFixedEngine_Branch_DB63    ; DB37 4C 63 DB                 Lc.
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DB3A:
        lda     $00                           ; DB3A A5 00                    ..
        clc                                     ; DB3C 18                       .
        adc     #$01                            ; DB3D 69 01                    i.
        sta     $00                           ; DB3F 85 00                    ..
        bcc     UpperFixedEngine_Branch_DB45    ; DB41 90 02                    ..
        inc     $01                             ; DB43 E6 01                    ..
UpperFixedEngine_Branch_DB45:
        pla                                     ; DB45 68                       h
        lda     $00                           ; DB46 A5 00                    ..
        sta     $0532                           ; DB48 8D 32 05                 .2.
        lda     $01                             ; DB4B A5 01                    ..
        sta     $0533                           ; DB4D 8D 33 05                 .3.
        ldy     #$00                            ; DB50 A0 00                    ..
        ldx     #$00                            ; DB52 A2 00                    ..
        lda     #$1C                            ; DB54 A9 1C                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; DB56 20 EA C3                  ..
        pha                                     ; DB59 48                       H
        and     #$0F                            ; DB5A 29 0F                    ).
        ora     #$80                            ; DB5C 09 80                    ..
        jmp     UpperFixedEngine_Branch_DB63    ; DB5E 4C 63 DB                 Lc.
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DB61:
        lda     #$00                            ; DB61 A9 00                    ..
UpperFixedEngine_Branch_DB63:
        sta     $0530                           ; DB63 8D 30 05                 .0.
UpperFixedEngine_Branch_DB66:
        pla                                     ; DB66 68                       h
        and     #$F0                            ; DB67 29 F0                    ).
        rts                                     ; DB69 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DB6A:
        ldy     #$00                            ; DB6A A0 00                    ..
        lda     $0532                           ; DB6C AD 32 05                 .2.
        sta     $00                           ; DB6F 85 00                    ..
        ora     $0533                           ; DB71 0D 33 05                 .3.
        beq     $DB82                           ; DB74 F0 0C                    ..
        lda     $0533                           ; DB76 AD 33 05                 .3.
        sta     $01                             ; DB79 85 01                    ..
        ldx     #$00                            ; DB7B A2 00                    ..
        lda     #$1C                            ; DB7D A9 1C                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; DB7F 20 EA C3                  ..
        rts                                     ; DB82 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DB83:
        ldx     $51                             ; DB83 A6 51                    .Q
        ldy     #$01                            ; DB85 A0 01                    ..
        lda     ($4D),y                         ; DB87 B1 4D                    .M
        pha                                     ; DB89 48                       H
        jsr     UpperFixedEngine_Entry_DDF3     ; DB8A 20 F3 DD                  ..
        pla                                     ; DB8D 68                       h
        bmi     UpperFixedEngine_Branch_DBA7    ; DB8E 30 17                    0.
        and     #$3C                            ; DB90 29 3C                    )<
        lsr     a                               ; DB92 4A                       J
        lsr     a                               ; DB93 4A                       J
        clc                                     ; DB94 18                       .
        adc     #$04                            ; DB95 69 04                    i.
        pha                                     ; DB97 48                       H
        lda     $6FE0,x                         ; DB98 BD E0 6F                 ..o
        and     #$F0                            ; DB9B 29 F0                    ).
        sta     $6FE0,x                         ; DB9D 9D E0 6F                 ..o
        pla                                     ; DBA0 68                       h
        ora     $6FE0,x                         ; DBA1 1D E0 6F                 ..o
        sta     $6FE0,x                         ; DBA4 9D E0 6F                 ..o
UpperFixedEngine_Branch_DBA7:
        jsr     UpperFixedEngine_Entry_DDE0     ; DBA7 20 E0 DD                  ..
        jmp     UpperFixedEngine_Entry_D891     ; DBAA 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DBAD:
        ldy     #$01                            ; DBAD A0 01                    ..
        lda     ($4D),y                         ; DBAF B1 4D                    .M
        bpl     UpperFixedEngine_Branch_DBC1    ; DBB1 10 0E                    ..
        lda     #$FF                            ; DBB3 A9 FF                    ..
        sta     $71A0,x                         ; DBB5 9D A0 71                 ..q
        sta     $71C0,x                         ; DBB8 9D C0 71                 ..q
        jsr     UpperFixedEngine_Entry_DDDD     ; DBBB 20 DD DD                  ..
        jmp     UpperFixedEngine_Entry_D891     ; DBBE 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DBC1:
        sta     $71A0,x                         ; DBC1 9D A0 71                 ..q
        iny                                     ; DBC4 C8                       .
        lda     ($4D),y                         ; DBC5 B1 4D                    .M
        sta     $71C0,x                         ; DBC7 9D C0 71                 ..q
        jsr     UpperFixedEngine_Entry_DDDD     ; DBCA 20 DD DD                  ..
        db   $4C,$91,$D8                     ; DBCD 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DBD0:
        ldy     #$01                            ; DBD0 A0 01                    ..
        lda     ($4D),y                         ; DBD2 B1 4D                    .M
        sta     $6F60,x                         ; DBD4 9D 60 6F                 .`o
        sta     $6FA0,x                         ; DBD7 9D A0 6F                 ..o
        pha                                     ; DBDA 48                       H
        iny                                     ; DBDB C8                       .
        lda     ($4D),y                         ; DBDC B1 4D                    .M
        sta     $6F80,x                         ; DBDE 9D 80 6F                 ..o
        sta     $6FC0,x                         ; DBE1 9D C0 6F                 ..o
        tay                                     ; DBE4 A8                       .
        jsr     UpperFixedEngine_Entry_DDDD     ; DBE5 20 DD DD                  ..
        pla                                     ; DBE8 68                       h
        tax                                     ; DBE9 AA                       .
        jsr     UpperFixedEngine_Entry_D3E6     ; DBEA 20 E6 D3                  ..
        ldx     $51                             ; DBED A6 51                    .Q
        sta     $7140,x                         ; DBEF 9D 40 71                 .@q
        jmp     UpperFixedEngine_Entry_D891     ; DBF2 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DBF5:
        ldx     $51                             ; DBF5 A6 51                    .Q
        nop                                     ; DBF7 EA                       .
        nop                                     ; DBF8 EA                       .
        nop                                     ; DBF9 EA                       .
        nop                                     ; DBFA EA                       .
        stx     $059C                           ; DBFB 8E 9C 05                 ...
        jsr     UpperFixedEngine_Entry_DDDD     ; DBFE 20 DD DD                  ..
        ldy     #$02                            ; DC01 A0 02                    ..
        lda     ($4D),y                         ; DC03 B1 4D                    .M
        sta     $0594                           ; DC05 8D 94 05                 ...
        dey                                     ; DC08 88                       .
        lda     ($4D),y                         ; DC09 B1 4D                    .M
        sta     $0593                           ; DC0B 8D 93 05                 ...
        lda     #$80                            ; DC0E A9 80                    ..
        sta     $0527                           ; DC10 8D 27 05                 .'.
        jmp     UpperFixedEngine_Branch_DDF0    ; DC13 4C F0 DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DC16:
        jsr     UpperFixedEngine_Entry_DC3B     ; DC16 20 3B DC                  ;.
        ora     ($52),y                       ; DC19 11 52                    .R
        sta     ($52),y                       ; DC1B 91 52                    .R
        jsr     UpperFixedEngine_Entry_DDDA     ; DC1D 20 DA DD                  ..
        jmp     UpperFixedEngine_Entry_D891     ; DC20 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DC23:
        jsr     UpperFixedEngine_Entry_DC3B     ; DC23 20 3B DC                  ;.
        and     ($52),y                       ; DC26 31 52                    1R
        sta     ($52),y                       ; DC28 91 52                    .R
        jsr     UpperFixedEngine_Entry_DDDA     ; DC2A 20 DA DD                  ..
        jmp     UpperFixedEngine_Entry_D891     ; DC2D 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DC30:
        jsr     UpperFixedEngine_Entry_DC3B     ; DC30 20 3B DC                  ;.
        sta     ($52),y                       ; DC33 91 52                    .R
        jsr     UpperFixedEngine_Entry_DDDA     ; DC35 20 DA DD                  ..
        jmp     UpperFixedEngine_Entry_D891     ; DC38 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DC3B:
        ldy     #$03                            ; DC3B A0 03                    ..
        lda     ($4D),y                         ; DC3D B1 4D                    .M
        sta     $53                             ; DC3F 85 53                    .S
        dey                                     ; DC41 88                       .
        lda     ($4D),y                         ; DC42 B1 4D                    .M
        sta     $52                           ; DC44 85 52                    .R
        dey                                     ; DC46 88                       .
        lda     ($4D),y                         ; DC47 B1 4D                    .M
        dey                                     ; DC49 88                       .
        rts                                     ; DC4A 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DC4B:
        lda     #$00                            ; DC4B A9 00                    ..
        sta     $54                             ; DC4D 85 54                    .T
        lda     $71A0,x                         ; DC4F BD A0 71                 ..q
        and     $71C0,x                         ; DC52 3D C0 71                 =.q
        cmp     #$FF                            ; DC55 C9 FF                    ..
        bne     UpperFixedEngine_Branch_DC9F    ; DC57 D0 46                    .F
        lda     $6F60                           ; DC59 AD 60 6F                 .`o
        cmp     $6F60,x                         ; DC5C DD 60 6F                 .`o
        rol     $52                           ; DC5F 26 52                    &R
        lda     $6F80,x                         ; DC61 BD 80 6F                 ..o
        cmp     $6F80                           ; DC64 CD 80 6F                 ..o
        rol     $52                           ; DC67 26 52                    &R
        lda     $6F60,x                         ; DC69 BD 60 6F                 .`o
        cmp     $6F60                           ; DC6C CD 60 6F                 .`o
        rol     $52                           ; DC6F 26 52                    &R
        lda     $6F80                           ; DC71 AD 80 6F                 ..o
        cmp     $6F80,x                         ; DC74 DD 80 6F                 ..o
        rol     $52                           ; DC77 26 52                    &R
        lda     $6F60,x                         ; DC79 BD 60 6F                 .`o
        sec                                     ; DC7C 38                       8
        sbc     $6F60                           ; DC7D ED 60 6F                 .`o
        clc                                     ; DC80 18                       .
        adc     #$01                            ; DC81 69 01                    i.
        cmp     #$03                            ; DC83 C9 03                    ..
        bcs     UpperFixedEngine_Branch_DCBF    ; DC85 B0 38                    .8
        sta     $53                             ; DC87 85 53                    .S
        lda     $6F80,x                         ; DC89 BD 80 6F                 ..o
        sec                                     ; DC8C 38                       8
        sbc     $6F80                           ; DC8D ED 80 6F                 ..o
        clc                                     ; DC90 18                       .
        adc     #$01                            ; DC91 69 01                    i.
        cmp     #$03                            ; DC93 C9 03                    ..
        bcs     UpperFixedEngine_Branch_DCBF    ; DC95 B0 28                    .(
        adc     $53                             ; DC97 65 53                    eS
        and     #$01                            ; DC99 29 01                    ).
        beq     UpperFixedEngine_Branch_DCBF    ; DC9B F0 22                    ."
        bne     UpperFixedEngine_Branch_DCF9    ; DC9D D0 5A                    .Z
UpperFixedEngine_Branch_DC9F:
        lda     $71A0,x                         ; DC9F BD A0 71                 ..q
        cmp     $6F60,x                         ; DCA2 DD 60 6F                 .`o
        rol     $52                           ; DCA5 26 52                    &R
        lda     $6F80,x                         ; DCA7 BD 80 6F                 ..o
        cmp     $71C0,x                         ; DCAA DD C0 71                 ..q
        rol     $52                           ; DCAD 26 52                    &R
        lda     $6F60,x                         ; DCAF BD 60 6F                 .`o
        cmp     $71A0,x                         ; DCB2 DD A0 71                 ..q
        rol     $52                           ; DCB5 26 52                    &R
        lda     $71C0,x                         ; DCB7 BD C0 71                 ..q
        cmp     $6F80,x                         ; DCBA DD 80 6F                 ..o
        rol     $52                           ; DCBD 26 52                    &R
UpperFixedEngine_Branch_DCBF:
        lda     $52                           ; DCBF A5 52                    .R
        eor     #$0F                            ; DCC1 49 0F                    I.
        and     #$0F                            ; DCC3 29 0F                    ).
        sta     $52                           ; DCC5 85 52                    .R
        beq     UpperFixedEngine_Branch_DCEF    ; DCC7 F0 26                    .&
        ldy     #$FF                            ; DCC9 A0 FF                    ..
        sty     $53                             ; DCCB 84 53                    .S
UpperFixedEngine_Branch_DCCD:
        iny                                     ; DCCD C8                       .
        lsr     a                               ; DCCE 4A                       J
        bcc     UpperFixedEngine_Branch_DCCD    ; DCCF 90 FC                    ..
        sty     $53                             ; DCD1 84 53                    .S
UpperFixedEngine_Branch_DCD3:
        iny                                     ; DCD3 C8                       .
        cpy     #$04                            ; DCD4 C0 04                    ..
        bcs     UpperFixedEngine_Branch_DCE6    ; DCD6 B0 0E                    ..
        lsr     a                               ; DCD8 4A                       J
        bcc     UpperFixedEngine_Branch_DCD3    ; DCD9 90 F8                    ..
        lda     $7000,x                         ; DCDB BD 00 70                 ..p
        and     #$03                            ; DCDE 29 03                    ).
        sta     $52                           ; DCE0 85 52                    .R
        cpy     $52                           ; DCE2 C4 52                    .R
        beq     UpperFixedEngine_Branch_DCE8    ; DCE4 F0 02                    ..
UpperFixedEngine_Branch_DCE6:
        lda     $53                             ; DCE6 A5 53                    .S
UpperFixedEngine_Branch_DCE8:
        eor     $54                             ; DCE8 45 54                    ET
        jsr     UpperFixedEngine_Entry_DDF3     ; DCEA 20 F3 DD                  ..
        sec                                     ; DCED 38                       8
        rts                                     ; DCEE 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DCEF:
        lda     $54                             ; DCEF A5 54                    .T
        beq     UpperFixedEngine_Branch_DCF9    ; DCF1 F0 06                    ..
        jsr     UpperFixedEngine_Entry_C891     ; DCF3 20 91 C8                  ..
        jmp     UpperFixedEngine_Branch_DCE8    ; DCF6 4C E8 DC                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DCF9:
        jsr     UpperFixedEngine_Entry_DDE3     ; DCF9 20 E3 DD                  ..
        db   $4C,$91,$D8                     ; DCFC 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DCFF:
        lda     #$02                            ; DCFF A9 02                    ..
        sta     $54                             ; DD01 85 54                    .T
        jmp     UpperFixedEngine_Branch_DC9F    ; DD03 4C 9F DC                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DD06:
        ldy     #$01                            ; DD06 A0 01                    ..
        lda     ($4D),y                         ; DD08 B1 4D                    .M
        tax                                     ; DD0A AA                       .
        iny                                     ; DD0B C8                       .
        lda     ($4D),y                         ; DD0C B1 4D                    .M
        pha                                     ; DD0E 48                       H
        iny                                     ; DD0F C8                       .
        lda     ($4D),y                         ; DD10 B1 4D                    .M
        tay                                     ; DD12 A8                       .
        pla                                     ; DD13 68                       h
        brk                                     ; DD14 00                       .
        db   $09,$EF,$A6,$51,$20,$DA,$DD,$4C ; DD15 09 EF A6 51 20 DA DD 4C  ...Q ..L
        db   $91,$D8                         ; DD1D 91 D8                    ..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DD1F:
        ldy     #$01                            ; DD1F A0 01                    ..
        lda     #$0F                            ; DD21 A9 0F                    ..
        sta     $54                             ; DD23 85 54                    .T
        ldx     $51                             ; DD25 A6 51                    .Q
        lda     $71E0,x                         ; DD27 BD E0 71                 ..q
        and     #$F0                            ; DD2A 29 F0                    ).
        sta     $53                             ; DD2C 85 53                    .S
        bmi     UpperFixedEngine_Branch_DD41    ; DD2E 30 11                    0.
        lda     ($4D),y                         ; DD30 B1 4D                    .M
        and     #$F0                            ; DD32 29 F0                    ).
        cmp     $53                             ; DD34 C5 53                    .S
        beq     UpperFixedEngine_Branch_DD3A    ; DD36 F0 02                    ..
        bcs     UpperFixedEngine_Branch_DD56    ; DD38 B0 1C                    ..
UpperFixedEngine_Branch_DD3A:
        lda     #$0D                            ; DD3A A9 0D                    ..
        sta     $54                             ; DD3C 85 54                    .T
        jmp     UpperFixedEngine_Branch_DD56    ; DD3E 4C 56 DD                 LV.
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DD41:
        eor     #$F0                            ; DD41 49 F0                    I.
        clc                                     ; DD43 18                       .
        adc     #$10                            ; DD44 69 10                    i.
        sta     $53                             ; DD46 85 53                    .S
        lda     ($4D),y                         ; DD48 B1 4D                    .M
        and     #$F0                            ; DD4A 29 F0                    ).
        cmp     $53                             ; DD4C C5 53                    .S
        beq     UpperFixedEngine_Branch_DD52    ; DD4E F0 02                    ..
        bcs     UpperFixedEngine_Branch_DD56    ; DD50 B0 04                    ..
UpperFixedEngine_Branch_DD52:
        lda     #$07                            ; DD52 A9 07                    ..
        sta     $54                             ; DD54 85 54                    .T
UpperFixedEngine_Branch_DD56:
        ldx     $51                             ; DD56 A6 51                    .Q
        lda     $71E0,x                         ; DD58 BD E0 71                 ..q
        and     #$0F                            ; DD5B 29 0F                    ).
        sta     $53                             ; DD5D 85 53                    .S
        cmp     #$08                            ; DD5F C9 08                    ..
        bcs     UpperFixedEngine_Branch_DD76    ; DD61 B0 13                    ..
        lda     ($4D),y                         ; DD63 B1 4D                    .M
        and     #$0F                            ; DD65 29 0F                    ).
        cmp     $53                             ; DD67 C5 53                    .S
        beq     UpperFixedEngine_Branch_DD6D    ; DD69 F0 02                    ..
        bcs     UpperFixedEngine_Branch_DD8C    ; DD6B B0 1F                    ..
UpperFixedEngine_Branch_DD6D:
        lda     $54                             ; DD6D A5 54                    .T
        and     #$0B                            ; DD6F 29 0B                    ).
        sta     $54                             ; DD71 85 54                    .T
        jmp     UpperFixedEngine_Branch_DD8C    ; DD73 4C 8C DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DD76:
        eor     #$0F                            ; DD76 49 0F                    I.
        sta     $53                             ; DD78 85 53                    .S
        inc     $53                             ; DD7A E6 53                    .S
        lda     ($4D),y                         ; DD7C B1 4D                    .M
        and     #$0F                            ; DD7E 29 0F                    ).
        cmp     $53                             ; DD80 C5 53                    .S
        beq     UpperFixedEngine_Branch_DD86    ; DD82 F0 02                    ..
        bcs     UpperFixedEngine_Branch_DD8C    ; DD84 B0 06                    ..
UpperFixedEngine_Branch_DD86:
        lda     $54                             ; DD86 A5 54                    .T
        and     #$0E                            ; DD88 29 0E                    ).
        sta     $54                             ; DD8A 85 54                    .T
UpperFixedEngine_Branch_DD8C:
        lda     #$01                            ; DD8C A9 01                    ..
        sta     $53                             ; DD8E 85 53                    .S
        jsr     UpperFixedEngine_Entry_C891     ; DD90 20 91 C8                  ..
        and     #$03                            ; DD93 29 03                    ).
        pha                                     ; DD95 48                       H
        tax                                     ; DD96 AA                       .
UpperFixedEngine_Branch_DD97:
        dex                                     ; DD97 CA                       .
        bmi     UpperFixedEngine_Branch_DD9F    ; DD98 30 05                    0.
        asl     $53                             ; DD9A 06 53                    .S
        jmp     UpperFixedEngine_Branch_DD97    ; DD9C 4C 97 DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DD9F:
        pla                                     ; DD9F 68                       h
        tax                                     ; DDA0 AA                       .
        lda     $53                             ; DDA1 A5 53                    .S
        and     $54                             ; DDA3 25 54                    %T
        beq     UpperFixedEngine_Branch_DD8C    ; DDA5 F0 E5                    ..
        txa                                     ; DDA7 8A                       .
        ldx     $51                             ; DDA8 A6 51                    .Q
        jsr     UpperFixedEngine_Entry_DDF3     ; DDAA 20 F3 DD                  ..
        clc                                     ; DDAD 18                       .
        rts                                     ; DDAE 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DDAF:
        ldy     #$01                            ; DDAF A0 01                    ..
        lda     ($4D),y                         ; DDB1 B1 4D                    .M
        cmp     PlayerLocalX                    ; DDB3 C5 44                    .D
        bne     UpperFixedEngine_Branch_DDC4    ; DDB5 D0 0D                    ..
        iny                                     ; DDB7 C8                       .
        lda     ($4D),y                         ; DDB8 B1 4D                    .M
        cmp     PlayerLocalY                    ; DDBA C5 45                    .E
        bne     UpperFixedEngine_Branch_DDC4    ; DDBC D0 06                    ..
        jsr     UpperFixedEngine_Entry_DDDA     ; DDBE 20 DA DD                  ..
        jmp     UpperFixedEngine_Entry_D891     ; DDC1 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DDC4:
        ldy     #$03                            ; DDC4 A0 03                    ..
        lda     ($4D),y                         ; DDC6 B1 4D                    .M
        jmp     UpperFixedEngine_Branch_D8AB    ; DDC8 4C AB D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DDCB:
        ldy     #$01                            ; DDCB A0 01                    ..
        lda     ($4D),y                         ; DDCD B1 4D                    .M
        brk                                     ; DDCF 00                       .
        db   $03,$9F,$A6,$51,$20,$E0,$DD,$4C ; DDD0 03 9F A6 51 20 E0 DD 4C  ...Q ..L
; ----------------------------------------------------------------------------
        sta     ($D8),y                         ; DDD8 91 D8                    ..
UpperFixedEngine_Entry_DDDA:
        jsr     UpperFixedEngine_Entry_DDE7     ; DDDA 20 E7 DD                  ..
UpperFixedEngine_Entry_DDDD:
        jsr     UpperFixedEngine_Entry_DDE7     ; DDDD 20 E7 DD                  ..
UpperFixedEngine_Entry_DDE0:
        jsr     UpperFixedEngine_Entry_DDE7     ; DDE0 20 E7 DD                  ..
UpperFixedEngine_Entry_DDE3:
        jsr     UpperFixedEngine_Entry_DDE7     ; DDE3 20 E7 DD                  ..
        rts                                     ; DDE6 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DDE7:
        inc     $7080,x                         ; DDE7 FE 80 70                 ..p
        bne     $DDEF                           ; DDEA D0 03                    ..
        inc     $7060,x                         ; DDEC FE 60 70                 .`p
        rts                                     ; DDEF 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DDF0:
        pla                                     ; DDF0 68                       h
        pla                                     ; DDF1 68                       h
        rts                                     ; DDF2 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DDF3:
        and     #$03                            ; DDF3 29 03                    ).
        pha                                     ; DDF5 48                       H
        lda     $7000,x                         ; DDF6 BD 00 70                 ..p
        and     #$FC                            ; DDF9 29 FC                    ).
        sta     $7000,x                         ; DDFB 9D 00 70                 ..p
        pla                                     ; DDFE 68                       h
        ora     $7000,x                         ; DDFF 1D 00 70                 ..p
        sta     $7000,x                         ; DE02 9D 00 70                 ..p
        rts                                     ; DE05 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DE06:
        ldx     $51                             ; DE06 A6 51                    .Q
        jmp     UpperFixedEngine_Branch_DE12    ; DE08 4C 12 DE                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DE0B:
        ldx     $51                             ; DE0B A6 51                    .Q
        dec     $7180,x                         ; DE0D DE 80 71                 ..q
        beq     UpperFixedEngine_Branch_DE21    ; DE10 F0 0F                    ..
UpperFixedEngine_Branch_DE12:
        lda     $70A0,x                         ; DE12 BD A0 70                 ..p
        sta     $7060,x                         ; DE15 9D 60 70                 .`p
        lda     $70C0,x                         ; DE18 BD C0 70                 ..p
        sta     $7080,x                         ; DE1B 9D 80 70                 ..p
        jmp     UpperFixedEngine_Entry_D891     ; DE1E 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DE21:
        jsr     UpperFixedEngine_Entry_DDE3     ; DE21 20 E3 DD                  ..
        db   $4C,$91,$D8                     ; DE24 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DE27:
        ldx     $51                             ; DE27 A6 51                    .Q
        ldy     #$01                            ; DE29 A0 01                    ..
        lda     ($4D),y                         ; DE2B B1 4D                    .M
        sta     $7180,x                         ; DE2D 9D 80 71                 ..q
        jsr     UpperFixedEngine_Entry_DDE0     ; DE30 20 E0 DD                  ..
        lda     $7060,x                         ; DE33 BD 60 70                 .`p
        sta     $70A0,x                         ; DE36 9D A0 70                 ..p
        lda     $7080,x                         ; DE39 BD 80 70                 ..p
        sta     $70C0,x                         ; DE3C 9D C0 70                 ..p
        jmp     UpperFixedEngine_Entry_D891     ; DE3F 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DE42:
        ldy     #$01                            ; DE42 A0 01                    ..
        lda     ($4D),y                         ; DE44 B1 4D                    .M
        bpl     UpperFixedEngine_Branch_DE4B    ; DE46 10 03                    ..
        dec     $7060,x                         ; DE48 DE 60 70                 .`p
UpperFixedEngine_Branch_DE4B:
        clc                                     ; DE4B 18                       .
        adc     $7080,x                         ; DE4C 7D 80 70                 }.p
        sta     $7080,x                         ; DE4F 9D 80 70                 ..p
        lda     $7060,x                         ; DE52 BD 60 70                 .`p
        adc     #$00                            ; DE55 69 00                    i.
        sta     $7060,x                         ; DE57 9D 60 70                 .`p
        jmp     UpperFixedEngine_Entry_D891     ; DE5A 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DE5D:
        ldy     #$01                            ; DE5D A0 01                    ..
        lda     ($4D),y                         ; DE5F B1 4D                    .M
        sta     $7080,x                         ; DE61 9D 80 70                 ..p
        iny                                     ; DE64 C8                       .
        lda     ($4D),y                         ; DE65 B1 4D                    .M
        sta     $7060,x                         ; DE67 9D 60 70                 .`p
        jmp     UpperFixedEngine_Entry_D891     ; DE6A 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DE6D:
        ldx     $51                             ; DE6D A6 51                    .Q
        ldy     #$01                            ; DE6F A0 01                    ..
        lda     ($4D),y                         ; DE71 B1 4D                    .M
        pha                                     ; DE73 48                       H
        iny                                     ; DE74 C8                       .
        lda     ($4D),y                         ; DE75 B1 4D                    .M
        pha                                     ; DE77 48                       H
        jsr     UpperFixedEngine_Entry_DDDD     ; DE78 20 DD DD                  ..
        lda     $7080,x                         ; DE7B BD 80 70                 ..p
        sta     $70C0,x                         ; DE7E 9D C0 70                 ..p
        lda     $7060,x                         ; DE81 BD 60 70                 .`p
        sta     $70A0,x                         ; DE84 9D A0 70                 ..p
        pla                                     ; DE87 68                       h
        sta     $7060,x                         ; DE88 9D 60 70                 .`p
        pla                                     ; DE8B 68                       h
        sta     $7080,x                         ; DE8C 9D 80 70                 ..p
        jmp     UpperFixedEngine_Entry_D891     ; DE8F 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DE92:
        ldy     #$01                            ; DE92 A0 01                    ..
        lda     ($4D),y                         ; DE94 B1 4D                    .M
        asl     a                               ; DE96 0A                       .
        tay                                     ; DE97 A8                       .
        lda     $DEA5,y                         ; DE98 B9 A5 DE                 ...
        sta     $52                           ; DE9B 85 52                    .R
        lda     $DEA6,y                         ; DE9D B9 A6 DE                 ...
        sta     $53                             ; DEA0 85 53                    .S
        jmp     ($0052)                         ; DEA2 6C 52 00                 lR.
; ----------------------------------------------------------------------------
        db   $A9                             ; DEA5 A9                       .
        db   $DE,$CE,$DE                     ; DEA6 DE CE DE                 ...
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DEA9:
        lda     PlayerLocalX                    ; DEA9 A5 44                    .D
        cmp     #$0A                            ; DEAB C9 0A                    ..
        bne     UpperFixedEngine_Branch_DECB    ; DEAD D0 1C                    ..
        lda     PlayerLocalY                    ; DEAF A5 45                    .E
        cmp     #$1E                            ; DEB1 C9 1E                    ..
        bne     UpperFixedEngine_Branch_DECB    ; DEB3 D0 16                    ..
        ldy     #$02                            ; DEB5 A0 02                    ..
        lda     ($4D),y                         ; DEB7 B1 4D                    .M
        clc                                     ; DEB9 18                       .
        adc     $7080,x                         ; DEBA 7D 80 70                 }.p
        sta     $7080,x                         ; DEBD 9D 80 70                 ..p
        lda     $7060,x                         ; DEC0 BD 60 70                 .`p
        adc     #$00                            ; DEC3 69 00                    i.
        sta     $7060,x                         ; DEC5 9D 60 70                 .`p
        jmp     UpperFixedEngine_Entry_D891     ; DEC8 4C 91 D8                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DECB:
        jmp     UpperFixedEngine_Branch_DDF0    ; DECB 4C F0 DD                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DECE:
        rts                                     ; DECE 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DECF:
        jsr     UpperFixedEngine_Entry_DDDD     ; DECF 20 DD DD                  ..
        lda     $3D                             ; DED2 A5 3D                    .=
        lsr     a                               ; DED4 4A                       J
        bcs     UpperFixedEngine_Branch_DEDE    ; DED5 B0 07                    ..
        lda     $3D                             ; DED7 A5 3D                    .=
        eor     #$02                            ; DED9 49 02                    I.
        jmp     UpperFixedEngine_Branch_DEE0    ; DEDB 4C E0 DE                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DEDE:
        lda     $3D                             ; DEDE A5 3D                    .=
UpperFixedEngine_Branch_DEE0:
        jsr     UpperFixedEngine_Entry_DDF3     ; DEE0 20 F3 DD                  ..
        clc                                     ; DEE3 18                       .
        rts                                     ; DEE4 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DEE5:
        ldy     #$01                            ; DEE5 A0 01                    ..
        lda     ($4D),y                         ; DEE7 B1 4D                    .M
        pha                                     ; DEE9 48                       H
        brk                                     ; DEEA 00                       .
        db   $04,$DF,$68,$A6,$51,$B0,$0A,$C9 ; DEEB 04 DF 68 A6 51 B0 0A C9  ..h.Q...
        db   $16,$F0,$03,$4C,$D7,$D8,$4C,$CE ; DEF3 16 F0 03 4C D7 D8 4C CE  ...L..L.
        db   $D8,$20,$E0,$DD,$4C,$91,$D8     ; DEFB D8 20 E0 DD 4C 91 D8     . ..L..
        db   $CB                             ; DF02 CB                       .
        db   $D8,$D4,$D8,$DD,$D8,$4B,$DC,$FF ; DF03 D8 D4 D8 DD D8 4B DC FF  .....K..
        db   $DC,$0A,$D9,$28,$D9,$31,$D9,$37 ; DF0B DC 0A D9 28 D9 31 D9 37  ...(.1.7
        db   $D9,$4B,$D9,$4B,$D9,$B8,$D9,$CB ; DF13 D9 4B D9 4B D9 B8 D9 CB  .K.K....
        db   $D9,$1E,$DA,$2E,$DA,$3E,$DA,$50 ; DF1B D9 1E DA 2E DA 3E DA 50  .....>.P
        db   $DA,$62,$DA,$75,$DA,$75,$DA,$75 ; DF23 DA 62 DA 75 DA 75 DA 75  .b.u.u.u
        db   $DA,$75,$DA,$75,$DA,$75,$DA,$75 ; DF2B DA 75 DA 75 DA 75 DA 75  .u.u.u.u
        db   $DA,$75,$DA,$75,$DA,$75,$DA,$75 ; DF33 DA 75 DA 75 DA 75 DA 75  .u.u.u.u
        db   $DA,$75,$DA,$75,$DA,$75,$DA,$75 ; DF3B DA 75 DA 75 DA 75 DA 75  .u.u.u.u
        db   $DA,$97,$DA,$A4,$DA,$83,$DB,$AD ; DF43 DA 97 DA A4 DA 83 DB AD  ........
        db   $DB,$D0,$DB,$F5,$DB,$16,$DC,$23 ; DF4B DB D0 DB F5 DB 16 DC 23  .......#
        db   $DC,$30,$DC,$D7,$D8,$E0,$D8,$06 ; DF53 DC 30 DC D7 D8 E0 D8 06  .0......
        db   $DD,$1F,$DD,$AF,$DD,$CE,$D8,$CB ; DF5B DD 1F DD AF DD CE D8 CB  ........
        db   $DD                             ; DF63 DD                       .
        db   $06                             ; DF64 06                       .
        db   $DE,$0B,$DE,$27,$DE,$42,$DE,$5D ; DF65 DE 0B DE 27 DE 42 DE 5D  ...'.B.]
        db   $DE,$6D,$DE,$92,$DE,$CF,$DE,$E5 ; DF6D DE 6D DE 92 DE CF DE E5  .m......
        db   $DE,$E5,$DE,$E5,$DE             ; DF75 DE E5 DE E5 DE           .....
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DF7A:
        lda     $0507                           ; DF7A AD 07 05                 ...
        pha                                     ; DF7D 48                       H
        lda     $51                             ; DF7E A5 51                    .Q
        jsr     SelectPrgBank                   ; DF80 20 91 FF                  ..
        ldy     #$00                            ; DF83 A0 00                    ..
        lda     ($49),y                         ; DF85 B1 49                    .I
        sta     $98                             ; DF87 85 98                    ..
        jsr     UpperFixedEngine_Entry_DF9F     ; DF89 20 9F DF                  ..
        lda     ($49),y                         ; DF8C B1 49                    .I
        sta     $99                             ; DF8E 85 99                    ..
        jsr     UpperFixedEngine_Entry_DF9F     ; DF90 20 9F DF                  ..
        lda     ($49),y                         ; DF93 B1 49                    .I
        sta     $9A                             ; DF95 85 9A                    ..
        jsr     UpperFixedEngine_Entry_DF9F     ; DF97 20 9F DF                  ..
        pla                                     ; DF9A 68                       h
        jsr     SelectPrgBank                   ; DF9B 20 91 FF                  ..
        rts                                     ; DF9E 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DF9F:
        pha                                     ; DF9F 48                       H
        inc     $49                             ; DFA0 E6 49                    .I
        bne     UpperFixedEngine_Branch_DFA6    ; DFA2 D0 02                    ..
        inc     $4A                             ; DFA4 E6 4A                    .J
UpperFixedEngine_Branch_DFA6:
        lda     $49                             ; DFA6 A5 49                    .I
        cmp     #$D8                            ; DFA8 C9 D8                    ..
        bne     UpperFixedEngine_Branch_DFED    ; DFAA D0 41                    .A
        lda     $4A                             ; DFAC A5 4A                    .J
        cmp     #$BF                            ; DFAE C9 BF                    ..
        bne     UpperFixedEngine_Branch_DFED    ; DFB0 D0 3B                    .;
        inc     $0507                           ; DFB2 EE 07 05                 ...
        inc     $51                             ; DFB5 E6 51                    .Q
        lda     $0507                           ; DFB7 AD 07 05                 ...
        pha                                     ; DFBA 48                       H
        jsr     SelectPrgBank                   ; DFBB 20 91 FF                  ..
        pla                                     ; DFBE 68                       h
        cmp     #$05                            ; DFBF C9 05                    ..
        bcc     UpperFixedEngine_Branch_DFE5    ; DFC1 90 22                    ."
        beq     UpperFixedEngine_Branch_DFDE    ; DFC3 F0 19                    ..
        lda     #$1B                            ; DFC5 A9 1B                    ..
        sta     $51                             ; DFC7 85 51                    .Q
        jsr     SelectPrgBank                   ; DFC9 20 91 FF                  ..
        lda     $DFEF                           ; DFCC AD EF DF                 ...
        asl     a                               ; DFCF 0A                       .
        tax                                     ; DFD0 AA                       .
        lda     $8000,x                         ; DFD1 BD 00 80                 ...
        sta     $49                             ; DFD4 85 49                    .I
        lda     $8001,x                         ; DFD6 BD 01 80                 ...
        sta     $4A                             ; DFD9 85 4A                    .J
        jmp     UpperFixedEngine_Branch_DFED    ; DFDB 4C ED DF                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_DFDE:
        lda     #$1A                            ; DFDE A9 1A                    ..
        sta     $51                             ; DFE0 85 51                    .Q
        jsr     SelectPrgBank                   ; DFE2 20 91 FF                  ..
UpperFixedEngine_Branch_DFE5:
        lda     #$80                            ; DFE5 A9 80                    ..
        sta     $4A                             ; DFE7 85 4A                    .J
        lda     #$00                            ; DFE9 A9 00                    ..
        sta     $49                             ; DFEB 85 49                    .I
UpperFixedEngine_Branch_DFED:
        pla                                     ; DFED 68                       h
        rts                                     ; DFEE 60                       `
; ----------------------------------------------------------------------------
        db   $0A,$BF                         ; DFEF 0A BF                    ..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_DFF1:
        lda     #$00                            ; DFF1 A9 00                    ..
        sta     $07BB                           ; DFF3 8D BB 07                 ...
        sta     $EA                             ; DFF6 85 EA                    ..
        sta     $EB                             ; DFF8 85 EB                    ..
        jsr     UpperFixedEngine_Entry_E4F6     ; DFFA 20 F6 E4                  ..
LDFFF = $+ 2
        jsr     UpperFixedEngine_Entry_E402     ; DFFD 20 02 E4                  ..
        lda     $41                             ; E000 A5 41                    .A
        bpl     $E015                           ; E002 10 11                    ..
        lda     PlayerLocalY                    ; E004 A5 45                    .E
        sec                                     ; E006 38                       8
        sbc     #$07                            ; E007 E9 07                    ..
        sta     $ED                             ; E009 85 ED                    ..
        lda     PlayerLocalX                    ; E00B A5 44                    .D
        sec                                     ; E00D 38                       8
        sbc     #$08                            ; E00E E9 08                    ..
        sta     $EC                             ; E010 85 EC                    ..
        jmp     $E023                           ; E012 4C 23 E0                 L#.
; ----------------------------------------------------------------------------
        lda     PlayerWorldY                    ; E015 A5 43                    .C
        sec                                     ; E017 38                       8
        sbc     #$07                            ; E018 E9 07                    ..
        sta     $ED                             ; E01A 85 ED                    ..
        lda     PlayerWorldX                    ; E01C A5 42                    .B
        sec                                     ; E01E 38                       8
        sbc     #$08                            ; E01F E9 08                    ..
        sta     $EC                             ; E021 85 EC                    ..
        lda     $61                             ; E023 A5 61                    .a
        ora     #$01                            ; E025 09 01                    ..
        sta     $61                             ; E027 85 61                    .a
        jsr     UpperFixedEngine_Entry_E147     ; E029 20 47 E1                  G.
        lda     #$00                            ; E02C A9 00                    ..
        sta     $16                             ; E02E 85 16                    ..
        jsr     UpperFixedEngine_Entry_E368     ; E030 20 68 E3                  h.
        ldx     #$01                            ; E033 A2 01                    ..
        lda     $7020,x                         ; E035 BD 20 70                 . p
        cmp     #$FF                            ; E038 C9 FF                    ..
        beq     $E06D                           ; E03A F0 31                    .1
        lda     #$00                            ; E03C A9 00                    ..
        sta     $7100,x                         ; E03E 9D 00 71                 ..q
        sta     $7120,x                         ; E041 9D 20 71                 . q
        lda     $7000,x                         ; E044 BD 00 70                 ..p
        sta     $E4                             ; E047 85 E4                    ..
        lda     $7020,x                         ; E049 BD 20 70                 . p
        and     #$90                            ; E04C 29 90                    ).
        bne     $E060                           ; E04E D0 10                    ..
        jsr     UpperFixedEngine_Entry_E169     ; E050 20 69 E1                  i.
        lda     $E4                             ; E053 A5 E4                    ..
        sta     $7000,x                         ; E055 9D 00 70                 ..p
        bcc     $E068                           ; E058 90 0E                    ..
        jsr     UpperFixedEngine_Entry_E368     ; E05A 20 68 E3                  h.
        jmp     $E068                           ; E05D 4C 68 E0                 Lh.
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_E160     ; E060 20 60 E1                  `.
        lda     $E4                             ; E063 A5 E4                    ..
        sta     $7000,x                         ; E065 9D 00 70                 ..p
        inx                                     ; E068 E8                       .
        cpx     #$1E                            ; E069 E0 1E                    ..
        bcc     $E035                           ; E06B 90 C8                    ..
        rts                                     ; E06D 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E06E:
        jsr     UpperFixedEngine_Entry_E147     ; E06E 20 47 E1                  G.
        lda     $3E                             ; E071 A5 3E                    .>
        beq     UpperFixedEngine_Branch_E0BE    ; E073 F0 49                    .I
        lda     $7000                           ; E075 AD 00 70                 ..p
        and     #$03                            ; E078 29 03                    ).
        bne     UpperFixedEngine_Branch_E08C    ; E07A D0 10                    ..
        lda     $EB                             ; E07C A5 EB                    ..
        sec                                     ; E07E 38                       8
        sbc     $058F                           ; E07F ED 8F 05                 ...
        sta     $EB                             ; E082 85 EB                    ..
        bcs     UpperFixedEngine_Branch_E089    ; E084 B0 03                    ..
        dec     a:$ED                           ; E086 CE ED 00                 ...
UpperFixedEngine_Branch_E089:
        jmp     UpperFixedEngine_Branch_E0BE    ; E089 4C BE E0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E08C:
        cmp     #$01                            ; E08C C9 01                    ..
        bne     UpperFixedEngine_Branch_E09F    ; E08E D0 0F                    ..
        lda     $EA                             ; E090 A5 EA                    ..
        clc                                     ; E092 18                       .
        adc     $058F                           ; E093 6D 8F 05                 m..
        sta     $EA                             ; E096 85 EA                    ..
        bcc     UpperFixedEngine_Branch_E09C    ; E098 90 02                    ..
        inc     $EC                             ; E09A E6 EC                    ..
UpperFixedEngine_Branch_E09C:
        jmp     UpperFixedEngine_Branch_E0BE    ; E09C 4C BE E0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E09F:
        cmp     #$02                            ; E09F C9 02                    ..
        bne     UpperFixedEngine_Branch_E0B2    ; E0A1 D0 0F                    ..
        lda     $EB                             ; E0A3 A5 EB                    ..
        clc                                     ; E0A5 18                       .
        adc     $058F                           ; E0A6 6D 8F 05                 m..
        sta     $EB                             ; E0A9 85 EB                    ..
        bcc     UpperFixedEngine_Branch_E0AF    ; E0AB 90 02                    ..
        inc     $ED                             ; E0AD E6 ED                    ..
UpperFixedEngine_Branch_E0AF:
        jmp     UpperFixedEngine_Branch_E0BE    ; E0AF 4C BE E0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E0B2:
        lda     $EA                             ; E0B2 A5 EA                    ..
        sec                                     ; E0B4 38                       8
        sbc     $058F                           ; E0B5 ED 8F 05                 ...
        sta     $EA                             ; E0B8 85 EA                    ..
        bcs     UpperFixedEngine_Branch_E0BE    ; E0BA B0 02                    ..
        dec     $EC                             ; E0BC C6 EC                    ..
UpperFixedEngine_Branch_E0BE:
        ldx     #$01                            ; E0BE A2 01                    ..
UpperFixedEngine_Branch_E0C0:
        lda     $7020,x                         ; E0C0 BD 20 70                 . p
        cmp     #$FF                            ; E0C3 C9 FF                    ..
        bne     UpperFixedEngine_Branch_E0C8    ; E0C5 D0 01                    ..
        rts                                     ; E0C7 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E0C8:
        lda     $7000,x                         ; E0C8 BD 00 70                 ..p
        sta     $E4                             ; E0CB 85 E4                    ..
        bmi     UpperFixedEngine_Branch_E0EA    ; E0CD 30 1B                    0.
        lda     $7020,x                         ; E0CF BD 20 70                 . p
        and     #$90                            ; E0D2 29 90                    ).
        beq     UpperFixedEngine_Branch_E0DC    ; E0D4 F0 06                    ..
        jsr     UpperFixedEngine_Entry_E160     ; E0D6 20 60 E1                  `.
        jmp     UpperFixedEngine_Branch_E0DF    ; E0D9 4C DF E0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E0DC:
        jsr     UpperFixedEngine_Entry_E169     ; E0DC 20 69 E1                  i.
UpperFixedEngine_Branch_E0DF:
        lda     $E4                             ; E0DF A5 E4                    ..
        sta     $7000,x                         ; E0E1 9D 00 70                 ..p
        inx                                     ; E0E4 E8                       .
        cpx     #$1E                            ; E0E5 E0 1E                    ..
        bcc     UpperFixedEngine_Branch_E0C0    ; E0E7 90 D7                    ..
        rts                                     ; E0E9 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E0EA:
        lda     #$0F                            ; E0EA A9 0F                    ..
        sta     $E3                             ; E0EC 85 E3                    ..
        ldy     #$10                            ; E0EE A0 10                    ..
        lda     $70E0,x                         ; E0F0 BD E0 70                 ..p
        and     #$40                            ; E0F3 29 40                    )@
        beq     UpperFixedEngine_Branch_E0FB    ; E0F5 F0 04                    ..
        ldy     #$20                            ; E0F7 A0 20                    .
        lsr     $E3                             ; E0F9 46 E3                    F.
UpperFixedEngine_Branch_E0FB:
        sty     $E2                             ; E0FB 84 E2                    ..
        lda     $7020,x                         ; E0FD BD 20 70                 . p
        sta     $E5                             ; E100 85 E5                    ..
        and     #$90                            ; E102 29 90                    ).
        beq     UpperFixedEngine_Branch_E10C    ; E104 F0 06                    ..
        jsr     UpperFixedEngine_Entry_E160     ; E106 20 60 E1                  `.
        jmp     UpperFixedEngine_Branch_E12B    ; E109 4C 2B E1                 L+.
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E10C:
        lda     $E4                             ; E10C A5 E4                    ..
        jsr     UpperFixedEngine_Entry_E2EE     ; E10E 20 EE E2                  ..
        lda     $E5                             ; E111 A5 E5                    ..
        and     #$40                            ; E113 29 40                    )@
        beq     UpperFixedEngine_Branch_E128    ; E115 F0 11                    ..
        lda     #$10                            ; E117 A9 10                    ..
        sta     $E2                             ; E119 85 E2                    ..
        lda     $E5                             ; E11B A5 E5                    ..
        and     #$20                            ; E11D 29 20                    )
        beq     UpperFixedEngine_Branch_E123    ; E11F F0 02                    ..
        asl     $E2                             ; E121 06 E2                    ..
UpperFixedEngine_Branch_E123:
        lda     $E5                             ; E123 A5 E5                    ..
        jsr     UpperFixedEngine_Entry_E2EE     ; E125 20 EE E2                  ..
UpperFixedEngine_Branch_E128:
        jsr     UpperFixedEngine_Entry_E169     ; E128 20 69 E1                  i.
UpperFixedEngine_Branch_E12B:
        lda     $3C                             ; E12B A5 3C                    .<
        and     $E3                             ; E12D 25 E3                    %.
        cmp     $E3                             ; E12F C5 E3                    ..
        bne     UpperFixedEngine_Branch_E139    ; E131 D0 06                    ..
        lda     $E4                             ; E133 A5 E4                    ..
        and     #$7F                            ; E135 29 7F                    ).
        sta     $E4                             ; E137 85 E4                    ..
UpperFixedEngine_Branch_E139:
        lda     $E4                             ; E139 A5 E4                    ..
        sta     $7000,x                         ; E13B 9D 00 70                 ..p
        inx                                     ; E13E E8                       .
        cpx     #$1E                            ; E13F E0 1E                    ..
        bcs     UpperFixedEngine_Branch_E146    ; E141 B0 03                    ..
        jmp     UpperFixedEngine_Branch_E0C0    ; E143 4C C0 E0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E146:
        rts                                     ; E146 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E147:
        lda     $7020                           ; E147 AD 20 70                 . p
        and     #$90                            ; E14A 29 90                    ).
        beq     $E152                           ; E14C F0 04                    ..
        ldy     #$00                            ; E14E A0 00                    ..
        beq     $E1B7                           ; E150 F0 65                    .e
        lda     #$08                            ; E152 A9 08                    ..
        sta     $00                           ; E154 85 00                    ..
        lda     #$07                            ; E156 A9 07                    ..
        sta     $01                             ; E158 85 01                    ..
        lda     #$00                            ; E15A A9 00                    ..
        tax                                     ; E15C AA                       .
        jmp     $E336                           ; E15D 4C 36 E3                 L6.
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E160:
        lda     $E4                             ; E160 A5 E4                    ..
        and     #$3C                            ; E162 29 3C                    )<
        sta     $E2                             ; E164 85 E2                    ..
        bne     $E1A9                           ; E166 D0 41                    .A
        rts                                     ; E168 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E169:
        lda     $E4                             ; E169 A5 E4                    ..
        and     #$3C                            ; E16B 29 3C                    )<
        sta     $E2                             ; E16D 85 E2                    ..
        lda     $7140,x                         ; E16F BD 40 71                 .@q
        and     #$E0                            ; E172 29 E0                    ).
        cmp     $46                             ; E174 C5 46                    .F
        bne     $E1A5                           ; E176 D0 2D                    .-
UpperFixedEngine_Entry_E178:
        lda     $7120,x                         ; E178 BD 20 71                 . q
        sec                                     ; E17B 38                       8
        sbc     $EB                             ; E17C E5 EB                    ..
        sta     $E0                             ; E17E 85 E0                    ..
        lda     $6FC0,x                         ; E180 BD C0 6F                 ..o
        sbc     $ED                             ; E183 E5 ED                    ..
        sta     $E1                             ; E185 85 E1                    ..
        and     #$F0                            ; E187 29 F0                    ).
        beq     $E199                           ; E189 F0 0E                    ..
        lda     $E1                             ; E18B A5 E1                    ..
        cmp     #$FF                            ; E18D C9 FF                    ..
        bne     $E1A5                           ; E18F D0 14                    ..
        lda     $E0                             ; E191 A5 E0                    ..
        cmp     #$40                            ; E193 C9 40                    .@
        bcc     $E1A5                           ; E195 90 0E                    ..
        bcs     UpperFixedEngine_Branch_E1D3    ; E197 B0 3A                    .:
        lda     $E1                             ; E199 A5 E1                    ..
        and     #$0F                            ; E19B 29 0F                    ).
        cmp     #$0F                            ; E19D C9 0F                    ..
        bcc     UpperFixedEngine_Branch_E1D3    ; E19F 90 32                    .2
        lda     $E0                             ; E1A1 A5 E0                    ..
        beq     UpperFixedEngine_Branch_E1D3    ; E1A3 F0 2E                    ..
        lda     $E2                             ; E1A5 A5 E2                    ..
        beq     $E1D1                           ; E1A7 F0 28                    .(
        jsr     UpperFixedEngine_Entry_C78C     ; E1A9 20 8C C7                  ..
        lda     $E2                             ; E1AC A5 E2                    ..
        jsr     UpperFixedEngine_Entry_E4BB     ; E1AE 20 BB E4                  ..
        lda     $E4                             ; E1B1 A5 E4                    ..
        and     #$C3                            ; E1B3 29 C3                    ).
        sta     $E4                             ; E1B5 85 E4                    ..
        lda     #$F7                            ; E1B7 A9 F7                    ..
        sta     $0200,y                         ; E1B9 99 00 02                 ...
        sta     $0204,y                         ; E1BC 99 04 02                 ...
        sta     $0208,y                         ; E1BF 99 08 02                 ...
        sta     $020C,y                         ; E1C2 99 0C 02                 ...
        sta     $0203,y                         ; E1C5 99 03 02                 ...
        sta     $0207,y                         ; E1C8 99 07 02                 ...
        sta     $020B,y                         ; E1CB 99 0B 02                 ...
        sta     $020F,y                         ; E1CE 99 0F 02                 ...
        clc                                     ; E1D1 18                       .
        rts                                     ; E1D2 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E1D3:
        lda     $7100,x                         ; E1D3 BD 00 71                 ..q
        sec                                     ; E1D6 38                       8
        sbc     $EA                             ; E1D7 E5 EA                    ..
        sta     $DE                             ; E1D9 85 DE                    ..
        lda     $6FA0,x                         ; E1DB BD A0 6F                 ..o
        sbc     $EC                             ; E1DE E5 EC                    ..
        sta     $DF                             ; E1E0 85 DF                    ..
        and     #$F0                            ; E1E2 29 F0                    ).
        beq     $E24D                           ; E1E4 F0 67                    .g
        lda     $DF                             ; E1E6 A5 DF                    ..
        cmp     #$FF                            ; E1E8 C9 FF                    ..
        bne     $E1A5                           ; E1EA D0 B9                    ..
        lda     $DE                             ; E1EC A5 DE                    ..
        bpl     $E1A5                           ; E1EE 10 B5                    ..
        sta     $E6                             ; E1F0 85 E6                    ..
        lda     $E2                             ; E1F2 A5 E2                    ..
        bne     UpperFixedEngine_Branch_E20E    ; E1F4 D0 18                    ..
        jsr     UpperFixedEngine_Entry_E45C     ; E1F6 20 5C E4                  \.
        sta     $E2                             ; E1F9 85 E2                    ..
        lda     $E4                             ; E1FB A5 E4                    ..
        and     #$C3                            ; E1FD 29 C3                    ).
        ora     $E2                             ; E1FF 05 E2                    ..
        sta     $E4                             ; E201 85 E4                    ..
        lda     $E2                             ; E203 A5 E2                    ..
        jsr     UpperFixedEngine_Entry_C78C     ; E205 20 8C C7                  ..
        jsr     UpperFixedEngine_Entry_E368     ; E208 20 68 E3                  h.
        jmp     UpperFixedEngine_Branch_E211    ; E20B 4C 11 E2                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E20E:
        jsr     UpperFixedEngine_Entry_C78C     ; E20E 20 8C C7                  ..
UpperFixedEngine_Branch_E211:
        lda     $E6                             ; E211 A5 E6                    ..
        lsr     a                               ; E213 4A                       J
        lsr     a                               ; E214 4A                       J
        lsr     a                               ; E215 4A                       J
        lsr     a                               ; E216 4A                       J
        ora     #$F8                            ; E217 09 F8                    ..
        clc                                     ; E219 18                       .
        adc     #$08                            ; E21A 69 08                    i.
        sta     $0207,y                         ; E21C 99 07 02                 ...
        sta     $020F,y                         ; E21F 99 0F 02                 ...
        lda     $E0                             ; E222 A5 E0                    ..
        lsr     $E1                             ; E224 46 E1                    F.
        ror     a                               ; E226 6A                       j
        lsr     $E1                             ; E227 46 E1                    F.
        ror     a                               ; E229 6A                       j
        lsr     $E1                             ; E22A 46 E1                    F.
        ror     a                               ; E22C 6A                       j
        lsr     $E1                             ; E22D 46 E1                    F.
        ror     a                               ; E22F 6A                       j
        sec                                     ; E230 38                       8
        sbc     $07BC                           ; E231 ED BC 07                 ...
        sta     $0204,y                         ; E234 99 04 02                 ...
        clc                                     ; E237 18                       .
        adc     #$08                            ; E238 69 08                    i.
        sta     $020C,y                         ; E23A 99 0C 02                 ...
        lda     #$F7                            ; E23D A9 F7                    ..
        sta     $0200,y                         ; E23F 99 00 02                 ...
        sta     $0208,y                         ; E242 99 08 02                 ...
        sta     $0203,y                         ; E245 99 03 02                 ...
        sta     $020B,y                         ; E248 99 0B 02                 ...
        sec                                     ; E24B 38                       8
        rts                                     ; E24C 60                       `
; ----------------------------------------------------------------------------
        lda     $E2                             ; E24D A5 E2                    ..
        bne     $E269                           ; E24F D0 18                    ..
        jsr     UpperFixedEngine_Entry_E45C     ; E251 20 5C E4                  \.
        sta     $E2                             ; E254 85 E2                    ..
        lda     $E4                             ; E256 A5 E4                    ..
        and     #$C3                            ; E258 29 C3                    ).
        ora     $E2                             ; E25A 05 E2                    ..
        sta     $E4                             ; E25C 85 E4                    ..
        lda     $E2                             ; E25E A5 E2                    ..
        jsr     UpperFixedEngine_Entry_C78C     ; E260 20 8C C7                  ..
        jsr     UpperFixedEngine_Entry_E368     ; E263 20 68 E3                  h.
        jmp     $E26C                           ; E266 4C 6C E2                 Ll.
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C78C     ; E269 20 8C C7                  ..
        lda     $DF                             ; E26C A5 DF                    ..
        cmp     #$0F                            ; E26E C9 0F                    ..
        bne     $E2AE                           ; E270 D0 3C                    .<
        lda     $DE                             ; E272 A5 DE                    ..
        bpl     $E2AE                           ; E274 10 38                    .8
        lsr     a                               ; E276 4A                       J
        lsr     a                               ; E277 4A                       J
        lsr     a                               ; E278 4A                       J
        lsr     a                               ; E279 4A                       J
        clc                                     ; E27A 18                       .
        adc     #$F0                            ; E27B 69 F0                    i.
        sta     $0203,y                         ; E27D 99 03 02                 ...
        sta     $020B,y                         ; E280 99 0B 02                 ...
        lda     $E0                             ; E283 A5 E0                    ..
        lsr     $E1                             ; E285 46 E1                    F.
        ror     a                               ; E287 6A                       j
        lsr     $E1                             ; E288 46 E1                    F.
        ror     a                               ; E28A 6A                       j
        lsr     $E1                             ; E28B 46 E1                    F.
        ror     a                               ; E28D 6A                       j
        lsr     $E1                             ; E28E 46 E1                    F.
        ror     a                               ; E290 6A                       j
        sec                                     ; E291 38                       8
        sbc     $07BC                           ; E292 ED BC 07                 ...
        sta     $0200,y                         ; E295 99 00 02                 ...
        clc                                     ; E298 18                       .
        adc     #$08                            ; E299 69 08                    i.
        sta     $0208,y                         ; E29B 99 08 02                 ...
        lda     #$F7                            ; E29E A9 F7                    ..
        sta     $0204,y                         ; E2A0 99 04 02                 ...
        sta     $020C,y                         ; E2A3 99 0C 02                 ...
        sta     $0207,y                         ; E2A6 99 07 02                 ...
        sta     $020F,y                         ; E2A9 99 0F 02                 ...
        sec                                     ; E2AC 38                       8
        rts                                     ; E2AD 60                       `
; ----------------------------------------------------------------------------
        lda     $DE                             ; E2AE A5 DE                    ..
        lsr     $DF                             ; E2B0 46 DF                    F.
        ror     a                               ; E2B2 6A                       j
        lsr     $DF                             ; E2B3 46 DF                    F.
        ror     a                               ; E2B5 6A                       j
        lsr     $DF                             ; E2B6 46 DF                    F.
        ror     a                               ; E2B8 6A                       j
        lsr     $DF                             ; E2B9 46 DF                    F.
        ror     a                               ; E2BB 6A                       j
        sta     $0203,y                         ; E2BC 99 03 02                 ...
        sta     $020B,y                         ; E2BF 99 0B 02                 ...
        clc                                     ; E2C2 18                       .
        adc     #$08                            ; E2C3 69 08                    i.
        sta     $0207,y                         ; E2C5 99 07 02                 ...
        sta     $020F,y                         ; E2C8 99 0F 02                 ...
        lda     $E0                             ; E2CB A5 E0                    ..
        lsr     $E1                             ; E2CD 46 E1                    F.
        ror     a                               ; E2CF 6A                       j
        lsr     $E1                             ; E2D0 46 E1                    F.
        ror     a                               ; E2D2 6A                       j
        lsr     $E1                             ; E2D3 46 E1                    F.
        ror     a                               ; E2D5 6A                       j
        lsr     $E1                             ; E2D6 46 E1                    F.
        ror     a                               ; E2D8 6A                       j
        sec                                     ; E2D9 38                       8
        sbc     $07BC                           ; E2DA ED BC 07                 ...
        sta     $0200,y                         ; E2DD 99 00 02                 ...
        sta     $0204,y                         ; E2E0 99 04 02                 ...
        clc                                     ; E2E3 18                       .
        adc     #$08                            ; E2E4 69 08                    i.
        sta     $0208,y                         ; E2E6 99 08 02                 ...
        sta     $020C,y                         ; E2E9 99 0C 02                 ...
        sec                                     ; E2EC 38                       8
        rts                                     ; E2ED 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E2EE:
        and     #$03                            ; E2EE 29 03                    ).
        bne     UpperFixedEngine_Branch_E301    ; E2F0 D0 0F                    ..
        lda     $7120,x                         ; E2F2 BD 20 71                 . q
        sec                                     ; E2F5 38                       8
        sbc     $E2                             ; E2F6 E5 E2                    ..
        sta     $7120,x                         ; E2F8 9D 20 71                 . q
        bcs     UpperFixedEngine_Branch_E300    ; E2FB B0 03                    ..
        dec     $6FC0,x                         ; E2FD DE C0 6F                 ..o
UpperFixedEngine_Branch_E300:
        rts                                     ; E300 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E301:
        cmp     #$01                            ; E301 C9 01                    ..
        bne     UpperFixedEngine_Branch_E314    ; E303 D0 0F                    ..
        lda     $7100,x                         ; E305 BD 00 71                 ..q
        clc                                     ; E308 18                       .
        adc     $E2                             ; E309 65 E2                    e.
        sta     $7100,x                         ; E30B 9D 00 71                 ..q
        bcc     UpperFixedEngine_Branch_E313    ; E30E 90 03                    ..
        inc     $6FA0,x                         ; E310 FE A0 6F                 ..o
UpperFixedEngine_Branch_E313:
        rts                                     ; E313 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E314:
        cmp     #$02                            ; E314 C9 02                    ..
        bne     UpperFixedEngine_Branch_E327    ; E316 D0 0F                    ..
        lda     $7120,x                         ; E318 BD 20 71                 . q
        clc                                     ; E31B 18                       .
        adc     $E2                             ; E31C 65 E2                    e.
        sta     $7120,x                         ; E31E 9D 20 71                 . q
        bcc     UpperFixedEngine_Branch_E326    ; E321 90 03                    ..
        inc     $6FC0,x                         ; E323 FE C0 6F                 ..o
UpperFixedEngine_Branch_E326:
        rts                                     ; E326 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E327:
        lda     $7100,x                         ; E327 BD 00 71                 ..q
        sec                                     ; E32A 38                       8
        sbc     $E2                             ; E32B E5 E2                    ..
        sta     $7100,x                         ; E32D 9D 00 71                 ..q
        bcs     UpperFixedEngine_Branch_E335    ; E330 B0 03                    ..
        dec     $6FA0,x                         ; E332 DE A0 6F                 ..o
UpperFixedEngine_Branch_E335:
        rts                                     ; E335 60                       `
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C78C     ; E336 20 8C C7                  ..
        lda     $00                           ; E339 A5 00                    ..
        asl     a                               ; E33B 0A                       .
        asl     a                               ; E33C 0A                       .
        asl     a                               ; E33D 0A                       .
        asl     a                               ; E33E 0A                       .
        sta     $0203,y                         ; E33F 99 03 02                 ...
        sta     $020B,y                         ; E342 99 0B 02                 ...
        clc                                     ; E345 18                       .
        adc     #$08                            ; E346 69 08                    i.
        sta     $0207,y                         ; E348 99 07 02                 ...
        sta     $020F,y                         ; E34B 99 0F 02                 ...
        lda     $01                             ; E34E A5 01                    ..
        asl     a                               ; E350 0A                       .
        asl     a                               ; E351 0A                       .
        asl     a                               ; E352 0A                       .
        asl     a                               ; E353 0A                       .
        sec                                     ; E354 38                       8
        sbc     $07BC                           ; E355 ED BC 07                 ...
        sta     $0200,y                         ; E358 99 00 02                 ...
        sta     $0204,y                         ; E35B 99 04 02                 ...
        clc                                     ; E35E 18                       .
        adc     #$08                            ; E35F 69 08                    i.
        sta     $0208,y                         ; E361 99 08 02                 ...
        sta     $020C,y                         ; E364 99 0C 02                 ...
        rts                                     ; E367 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E368:
        txa                                     ; E368 8A                       .
        pha                                     ; E369 48                       H
        tya                                     ; E36A 98                       .
        pha                                     ; E36B 48                       H
        lda     $E3E0                           ; E36C AD E0 E3                 ...
        sta     $02                             ; E36F 85 02                    ..
        lda     $E3E1                           ; E371 AD E1 E3                 ...
        sta     $03                             ; E374 85 03                    ..
        lda     #$00                            ; E376 A9 00                    ..
        sta     $00                           ; E378 85 00                    ..
        lda     $6FE0,x                         ; E37A BD E0 6F                 ..o
        and     #$0F                            ; E37D 29 0F                    ).
        lsr     a                               ; E37F 4A                       J
        ror     $00                           ; E380 66 00                    f.
        lsr     a                               ; E382 4A                       J
        ror     $00                           ; E383 66 00                    f.
        sta     $01                             ; E385 85 01                    ..
        lda     $7000,x                         ; E387 BD 00 70                 ..p
        and     #$03                            ; E38A 29 03                    ).
        asl     a                               ; E38C 0A                       .
        asl     a                               ; E38D 0A                       .
        asl     a                               ; E38E 0A                       .
        asl     a                               ; E38F 0A                       .
        clc                                     ; E390 18                       .
        adc     $00                           ; E391 65 00                    e.
        sta     $00                           ; E393 85 00                    ..
        lda     $01                             ; E395 A5 01                    ..
        adc     #$00                            ; E397 69 00                    i.
        sta     $01                             ; E399 85 01                    ..
        clc                                     ; E39B 18                       .
        lda     $00                           ; E39C A5 00                    ..
        adc     $02                             ; E39E 65 02                    e.
        sta     $02                             ; E3A0 85 02                    ..
        lda     $01                             ; E3A2 A5 01                    ..
        adc     $03                             ; E3A4 65 03                    e.
        sta     $03                             ; E3A6 85 03                    ..
        ldy     #$00                            ; E3A8 A0 00                    ..
        ldx     $16                             ; E3AA A6 16                    ..
        lda     ($02),y                         ; E3AC B1 02                    ..
        sta     $0201,x                         ; E3AE 9D 01 02                 ...
        iny                                     ; E3B1 C8                       .
        lda     ($02),y                         ; E3B2 B1 02                    ..
        sta     $0202,x                         ; E3B4 9D 02 02                 ...
        iny                                     ; E3B7 C8                       .
        lda     ($02),y                         ; E3B8 B1 02                    ..
        sta     $0205,x                         ; E3BA 9D 05 02                 ...
        iny                                     ; E3BD C8                       .
        lda     ($02),y                         ; E3BE B1 02                    ..
        sta     $0206,x                         ; E3C0 9D 06 02                 ...
        iny                                     ; E3C3 C8                       .
        lda     ($02),y                         ; E3C4 B1 02                    ..
        sta     $0209,x                         ; E3C6 9D 09 02                 ...
        iny                                     ; E3C9 C8                       .
        lda     ($02),y                         ; E3CA B1 02                    ..
        sta     $020A,x                         ; E3CC 9D 0A 02                 ...
        iny                                     ; E3CF C8                       .
        lda     ($02),y                         ; E3D0 B1 02                    ..
        sta     $020D,x                         ; E3D2 9D 0D 02                 ...
        iny                                     ; E3D5 C8                       .
        lda     ($02),y                         ; E3D6 B1 02                    ..
        sta     $020E,x                         ; E3D8 9D 0E 02                 ...
        pla                                     ; E3DB 68                       h
        tay                                     ; E3DC A8                       .
        pla                                     ; E3DD 68                       h
        tax                                     ; E3DE AA                       .
        rts                                     ; E3DF 60                       `
; ----------------------------------------------------------------------------
        db   $00                             ; E3E0 00                       .
        db   $72,$AD,$BB,$07,$29,$7F,$8D,$BB ; E3E1 72 AD BB 07 29 7F 8D BB  r...)...
        db   $07,$A2,$01,$BD,$20,$70,$C9,$FF ; E3E9 07 A2 01 BD 20 70 C9 FF  .... p..
        db   $F0,$0F,$BD,$E0,$70,$29,$20,$F0 ; E3F1 F0 0F BD E0 70 29 20 F0  ....p) .
        db   $03,$20,$19,$E4,$E8,$E0,$1E,$90 ; E3F9 03 20 19 E4 E8 E0 1E 90  . ......
        db   $EA                             ; E401 EA                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E402:
        ldx     #$01                            ; E402 A2 01                    ..
        lda     $7020,x                         ; E404 BD 20 70                 . p
        cmp     #$FF                            ; E407 C9 FF                    ..
        beq     $E418                           ; E409 F0 0D                    ..
        lda     $70E0,x                         ; E40B BD E0 70                 ..p
        and     #$DF                            ; E40E 29 DF                    ).
        sta     $70E0,x                         ; E410 9D E0 70                 ..p
        inx                                     ; E413 E8                       .
        cpx     #$1E                            ; E414 E0 1E                    ..
        bcc     $E404                           ; E416 90 EC                    ..
        rts                                     ; E418 60                       `
; ----------------------------------------------------------------------------
        db   $A0,$01                         ; E419 A0 01                    ..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E41B:
        lda     $7020,y                         ; E41B B9 20 70                 . p
        cmp     #$FF                            ; E41E C9 FF                    ..
        beq     UpperFixedEngine_Branch_E435    ; E420 F0 13                    ..
        lda     $70E0,y                         ; E422 B9 E0 70                 ..p
        and     #$20                            ; E425 29 20                    )
        bne     UpperFixedEngine_Branch_E430    ; E427 D0 07                    ..
        lda     $7000,y                         ; E429 B9 00 70                 ..p
        and     #$3C                            ; E42C 29 3C                    )<
        bne     UpperFixedEngine_Branch_E43A    ; E42E D0 0A                    ..
UpperFixedEngine_Branch_E430:
        iny                                     ; E430 C8                       .
        cpy     #$1E                            ; E431 C0 1E                    ..
        bcc     UpperFixedEngine_Branch_E41B    ; E433 90 E6                    ..
UpperFixedEngine_Branch_E435:
        pla                                     ; E435 68                       h
        pla                                     ; E436 68                       h
        jmp     UpperFixedEngine_Entry_E402     ; E437 4C 02 E4                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E43A:
        jsr     UpperFixedEngine_Entry_E4BB     ; E43A 20 BB E4                  ..
        lda     $7000,y                         ; E43D B9 00 70                 ..p
        and     #$C3                            ; E440 29 C3                    ).
        sta     $7000,y                         ; E442 99 00 70                 ..p
        lda     $7000,x                         ; E445 BD 00 70                 ..p
        sta     $E4                             ; E448 85 E4                    ..
        lda     #$00                            ; E44A A9 00                    ..
        sta     $E2                             ; E44C 85 E2                    ..
        jsr     UpperFixedEngine_Entry_E178     ; E44E 20 78 E1                  x.
        bcc     UpperFixedEngine_Branch_E456    ; E451 90 03                    ..
        jsr     UpperFixedEngine_Entry_E368     ; E453 20 68 E3                  h.
UpperFixedEngine_Branch_E456:
        lda     $E4                             ; E456 A5 E4                    ..
        sta     $7000,x                         ; E458 9D 00 70                 ..p
        rts                                     ; E45B 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E45C:
        lda     $61                             ; E45C A5 61                    .a
        cmp     #$FF                            ; E45E C9 FF                    ..
        beq     $E481                           ; E460 F0 1F                    ..
        lda     #$02                            ; E462 A9 02                    ..
        sta     $01                             ; E464 85 01                    ..
        lda     #$01                            ; E466 A9 01                    ..
        sta     $00                           ; E468 85 00                    ..
        lda     $61                             ; E46A A5 61                    .a
        lsr     a                               ; E46C 4A                       J
        lsr     a                               ; E46D 4A                       J
        bcc     $E476                           ; E46E 90 06                    ..
        asl     $01                             ; E470 06 01                    ..
        inc     $00                           ; E472 E6 00                    ..
        bne     $E46D                           ; E474 D0 F7                    ..
        lda     $61                             ; E476 A5 61                    .a
        ora     $01                             ; E478 05 01                    ..
        sta     $61                             ; E47A 85 61                    .a
        lda     $00                           ; E47C A5 00                    ..
        asl     a                               ; E47E 0A                       .
        asl     a                               ; E47F 0A                       .
        rts                                     ; E480 60                       `
; ----------------------------------------------------------------------------
        lda     $62                             ; E481 A5 62                    .b
        cmp     #$FF                            ; E483 C9 FF                    ..
        beq     $E4A8                           ; E485 F0 21                    .!
        lda     #$01                            ; E487 A9 01                    ..
        sta     $01                             ; E489 85 01                    ..
        lda     #$00                            ; E48B A9 00                    ..
        sta     $00                           ; E48D 85 00                    ..
        lda     $62                             ; E48F A5 62                    .b
        lsr     a                               ; E491 4A                       J
        bcc     $E49A                           ; E492 90 06                    ..
        asl     $01                             ; E494 06 01                    ..
        inc     $00                           ; E496 E6 00                    ..
        bne     $E491                           ; E498 D0 F7                    ..
        lda     $62                             ; E49A A5 62                    .b
        ora     $01                             ; E49C 05 01                    ..
        sta     $62                             ; E49E 85 62                    .b
        lda     $00                           ; E4A0 A5 00                    ..
        asl     a                               ; E4A2 0A                       .
        asl     a                               ; E4A3 0A                       .
        clc                                     ; E4A4 18                       .
        adc     #$20                            ; E4A5 69 20                    i
        rts                                     ; E4A7 60                       `
; ----------------------------------------------------------------------------
        lda     $07BB                           ; E4A8 AD BB 07                 ...
        ora     #$80                            ; E4AB 09 80                    ..
        sta     $07BB                           ; E4AD 8D BB 07                 ...
        lda     $70E0,x                         ; E4B0 BD E0 70                 ..p
        ora     #$20                            ; E4B3 09 20                    .
        sta     $70E0,x                         ; E4B5 9D E0 70                 ..p
        pla                                     ; E4B8 68                       h
        pla                                     ; E4B9 68                       h
        rts                                     ; E4BA 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E4BB:
        sta     $00                           ; E4BB 85 00                    ..
        cmp     #$20                            ; E4BD C9 20                    .
        bcs     $E4DC                           ; E4BF B0 1B                    ..
        lda     #$02                            ; E4C1 A9 02                    ..
        sta     $01                             ; E4C3 85 01                    ..
        lda     $00                           ; E4C5 A5 00                    ..
        cmp     #$04                            ; E4C7 C9 04                    ..
        beq     $E4D3                           ; E4C9 F0 08                    ..
        asl     $01                             ; E4CB 06 01                    ..
        sec                                     ; E4CD 38                       8
        sbc     #$04                            ; E4CE E9 04                    ..
        jmp     $E4C7                           ; E4D0 4C C7 E4                 L..
; ----------------------------------------------------------------------------
        lda     $01                             ; E4D3 A5 01                    ..
        eor     #$FF                            ; E4D5 49 FF                    I.
        and     $61                             ; E4D7 25 61                    %a
        sta     $61                             ; E4D9 85 61                    .a
        rts                                     ; E4DB 60                       `
; ----------------------------------------------------------------------------
        lda     #$01                            ; E4DC A9 01                    ..
        sta     $01                             ; E4DE 85 01                    ..
        lda     $00                           ; E4E0 A5 00                    ..
        cmp     #$20                            ; E4E2 C9 20                    .
        beq     $E4ED                           ; E4E4 F0 07                    ..
        asl     $01                             ; E4E6 06 01                    ..
        sec                                     ; E4E8 38                       8
        sbc     #$04                            ; E4E9 E9 04                    ..
        bne     $E4E2                           ; E4EB D0 F5                    ..
        lda     $01                             ; E4ED A5 01                    ..
        eor     #$FF                            ; E4EF 49 FF                    I.
        and     $62                             ; E4F1 25 62                    %b
        sta     $62                             ; E4F3 85 62                    .b
        rts                                     ; E4F5 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E4F6:
        ldx     #$00                            ; E4F6 A2 00                    ..
        lda     #$F7                            ; E4F8 A9 F7                    ..
        sta     $0200,x                         ; E4FA 9D 00 02                 ...
        inx                                     ; E4FD E8                       .
        bne     $E4FA                           ; E4FE D0 FA                    ..
        rts                                     ; E500 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E501:
        lda     #$00                            ; E501 A9 00                    ..
        sta     $61                             ; E503 85 61                    .a
        sta     $62                             ; E505 85 62                    .b
        lda     $41                             ; E507 A5 41                    .A
        bpl     $E510                           ; E509 10 05                    ..
        lda     #$05                            ; E50B A9 05                    ..
        jmp     $E512                           ; E50D 4C 12 E5                 L..
; ----------------------------------------------------------------------------
        lda     #$01                            ; E510 A9 01                    ..
        sta     $07BC                           ; E512 8D BC 07                 ...
        ldx     #$00                            ; E515 A2 00                    ..
        lda     $7020,x                         ; E517 BD 20 70                 . p
        cmp     #$FF                            ; E51A C9 FF                    ..
        beq     $E52B                           ; E51C F0 0D                    ..
        lda     $7000,x                         ; E51E BD 00 70                 ..p
        and     #$C3                            ; E521 29 C3                    ).
        sta     $7000,x                         ; E523 9D 00 70                 ..p
        inx                                     ; E526 E8                       .
        cpx     #$1E                            ; E527 E0 1E                    ..
        bcc     $E517                           ; E529 90 EC                    ..
        rts                                     ; E52B 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E52C:
        lda     $1A                             ; E52C A5 1A                    ..
        bne     UpperFixedEngine_Branch_E53E    ; E52E D0 0E                    ..
        lda     $FD                             ; E530 A5 FD                    ..
        cmp     #$7F                            ; E532 C9 7F                    ..
        lda     $FE                             ; E534 A5 FE                    ..
        sbc     #$96                            ; E536 E9 96                    ..
        lda     $FF                             ; E538 A5 FF                    ..
        sbc     #$98                            ; E53A E9 98                    ..
        bcc     UpperFixedEngine_Branch_E54A    ; E53C 90 0C                    ..
UpperFixedEngine_Branch_E53E:
        lda     #$7F                            ; E53E A9 7F                    ..
        sta     $FD                             ; E540 85 FD                    ..
        lda     #$96                            ; E542 A9 96                    ..
        sta     $FE                             ; E544 85 FE                    ..
        lda     #$98                            ; E546 A9 98                    ..
        sta     $FF                             ; E548 85 FF                    ..
UpperFixedEngine_Branch_E54A:
        rts                                     ; E54A 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E54B:
        php                                     ; E54B 08                       .
        sta     $07CA                           ; E54C 8D CA 07                 ...
        lda     $E55F                           ; E54F AD 5F E5                 ._.
        sta     $6CDC                           ; E552 8D DC 6C                 ..l
        lda     $E560                           ; E555 AD 60 E5                 .`.
        sta     $6CDD                           ; E558 8D DD 6C                 ..l
        plp                                     ; E55B 28                       (
        jmp     $6CAD                           ; E55C 4C AD 6C                 L.l
; ----------------------------------------------------------------------------
        db   $4B                             ; E55F 4B                       K
        db   $E5                             ; E560 E5                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E561:
        php                                     ; E561 08                       .
        sta     $07CA                           ; E562 8D CA 07                 ...
        lda     $E575                           ; E565 AD 75 E5                 .u.
        sta     $6CDC                           ; E568 8D DC 6C                 ..l
        lda     $E576                           ; E56B AD 76 E5                 .v.
        sta     $6CDD                           ; E56E 8D DD 6C                 ..l
        plp                                     ; E571 28                       (
        jmp     $6CAD                           ; E572 4C AD 6C                 L.l
; ----------------------------------------------------------------------------
        db   $44                             ; E575 44                       D
        db   $E9                             ; E576 E9                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E577:
        php                                     ; E577 08                       .
        sta     $07CA                           ; E578 8D CA 07                 ...
        lda     $E58B                           ; E57B AD 8B E5                 ...
        sta     $6CDC                           ; E57E 8D DC 6C                 ..l
        lda     $E58C                           ; E581 AD 8C E5                 ...
        sta     $6CDD                           ; E584 8D DD 6C                 ..l
        plp                                     ; E587 28                       (
        jmp     $6CAD                           ; E588 4C AD 6C                 L.l
; ----------------------------------------------------------------------------
        db   $CE                             ; E58B CE                       .
        db   $E9                             ; E58C E9                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E58D:
        php                                     ; E58D 08                       .
        sta     $07CA                           ; E58E 8D CA 07                 ...
        lda     $E5A1                           ; E591 AD A1 E5                 ...
        sta     $6CDC                           ; E594 8D DC 6C                 ..l
        lda     $E5A2                           ; E597 AD A2 E5                 ...
        sta     $6CDD                           ; E59A 8D DD 6C                 ..l
        plp                                     ; E59D 28                       (
        jmp     $6CAD                           ; E59E 4C AD 6C                 L.l
; ----------------------------------------------------------------------------
        db   $AB                             ; E5A1 AB                       .
        db   $F1                             ; E5A2 F1                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E5A3:
        php                                     ; E5A3 08                       .
        sta     $07CA                           ; E5A4 8D CA 07                 ...
        lda     $E5B7                           ; E5A7 AD B7 E5                 ...
        sta     $6CDC                           ; E5AA 8D DC 6C                 ..l
        lda     $E5B8                           ; E5AD AD B8 E5                 ...
        sta     $6CDD                           ; E5B0 8D DD 6C                 ..l
        plp                                     ; E5B3 28                       (
        jmp     $6CAD                           ; E5B4 4C AD 6C                 L.l
; ----------------------------------------------------------------------------
        db   $DB                             ; E5B7 DB                       .
        db   $EF                             ; E5B8 EF                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E5B9:
        php                                     ; E5B9 08                       .
        sta     $07CA                           ; E5BA 8D CA 07                 ...
        lda     $E5CD                           ; E5BD AD CD E5                 ...
        sta     $6CDC                           ; E5C0 8D DC 6C                 ..l
        lda     $E5CE                           ; E5C3 AD CE E5                 ...
        sta     $6CDD                           ; E5C6 8D DD 6C                 ..l
        plp                                     ; E5C9 28                       (
        jmp     $6CAD                           ; E5CA 4C AD 6C                 L.l
; ----------------------------------------------------------------------------
        db   $D7                             ; E5CD D7                       .
        db   $EF                             ; E5CE EF                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E5CF:
        php                                     ; E5CF 08                       .
        sta     $07CA                           ; E5D0 8D CA 07                 ...
        lda     $E5E3                           ; E5D3 AD E3 E5                 ...
        sta     $6CDC                           ; E5D6 8D DC 6C                 ..l
        lda     $E5E4                           ; E5D9 AD E4 E5                 ...
        sta     $6CDD                           ; E5DC 8D DD 6C                 ..l
        plp                                     ; E5DF 28                       (
        jmp     $6CAD                           ; E5E0 4C AD 6C                 L.l
; ----------------------------------------------------------------------------
        db   $FA                             ; E5E3 FA                       .
        db   $F1                             ; E5E4 F1                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E5E5:
        php                                     ; E5E5 08                       .
        sta     $07CA                           ; E5E6 8D CA 07                 ...
        lda     $E5F9                           ; E5E9 AD F9 E5                 ...
        sta     $6CDC                           ; E5EC 8D DC 6C                 ..l
        lda     $E5FA                           ; E5EF AD FA E5                 ...
        sta     $6CDD                           ; E5F2 8D DD 6C                 ..l
        plp                                     ; E5F5 28                       (
        jmp     $6CAD                           ; E5F6 4C AD 6C                 L.l
; ----------------------------------------------------------------------------
        db   $23                             ; E5F9 23                       #
        db   $F2                             ; E5FA F2                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E5FB:
        php                                     ; E5FB 08                       .
        sta     $07CA                           ; E5FC 8D CA 07                 ...
        lda     $E615                           ; E5FF AD 15 E6                 ...
        sta     $6CDC                           ; E602 8D DC 6C                 ..l
        lda     $E616                           ; E605 AD 16 E6                 ...
        sta     $6CDD                           ; E608 8D DD 6C                 ..l
        plp                                     ; E60B 28                       (
        jsr     $6CAD                           ; E60C 20 AD 6C                  .l
        lda     #$1D                            ; E60F A9 1D                    ..
        jsr     SelectPrgBank                   ; E611 20 91 FF                  ..
        rts                                     ; E614 60                       `
; ----------------------------------------------------------------------------
        db   $AB                             ; E615 AB                       .
        db   $F4                             ; E616 F4                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E617:
        php                                     ; E617 08                       .
        sta     $07CA                           ; E618 8D CA 07                 ...
        lda     $E62B                           ; E61B AD 2B E6                 .+.
        sta     $6CDC                           ; E61E 8D DC 6C                 ..l
        lda     $E62C                           ; E621 AD 2C E6                 .,.
        sta     $6CDD                           ; E624 8D DD 6C                 ..l
        plp                                     ; E627 28                       (
        jmp     $6CAD                           ; E628 4C AD 6C                 L.l
; ----------------------------------------------------------------------------
        db   $8A                             ; E62B 8A                       .
        db   $F5                             ; E62C F5                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E62D:
        php                                     ; E62D 08                       .
        sta     $07CA                           ; E62E 8D CA 07                 ...
        lda     $E641                           ; E631 AD 41 E6                 .A.
        sta     $6CDC                           ; E634 8D DC 6C                 ..l
        lda     $E642                           ; E637 AD 42 E6                 .B.
        sta     $6CDD                           ; E63A 8D DD 6C                 ..l
        plp                                     ; E63D 28                       (
        jmp     $6CAD                           ; E63E 4C AD 6C                 L.l
; ----------------------------------------------------------------------------
        db   $8B                             ; E641 8B                       .
        db   $F5                             ; E642 F5                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E643:
        php                                     ; E643 08                       .
        sta     $07CA                           ; E644 8D CA 07                 ...
        lda     $E657                           ; E647 AD 57 E6                 .W.
        sta     $6CDC                           ; E64A 8D DC 6C                 ..l
        lda     $E658                           ; E64D AD 58 E6                 .X.
        sta     $6CDD                           ; E650 8D DD 6C                 ..l
        plp                                     ; E653 28                       (
        jmp     $6CAD                           ; E654 4C AD 6C                 L.l
; ----------------------------------------------------------------------------
        db   $BE                             ; E657 BE                       .
        db   $FA                             ; E658 FA                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E659:
        php                                     ; E659 08                       .
        sta     $07CA                           ; E65A 8D CA 07                 ...
        lda     $E66D                           ; E65D AD 6D E6                 .m.
        sta     $6CDC                           ; E660 8D DC 6C                 ..l
        lda     $E66E                           ; E663 AD 6E E6                 .n.
        sta     $6CDD                           ; E666 8D DD 6C                 ..l
        plp                                     ; E669 28                       (
        jmp     $6CAD                           ; E66A 4C AD 6C                 L.l
; ----------------------------------------------------------------------------
        db   $BE                             ; E66D BE                       .
        db   $FA                             ; E66E FA                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E66F:
        lda     $3F                             ; E66F A5 3F                    .?
        clc                                     ; E671 18                       .
        adc     $49                             ; E672 65 49                    eI
        sta     $49                             ; E674 85 49                    .I
        bcc     $E67A                           ; E676 90 02                    ..
        inc     $4A                             ; E678 E6 4A                    .J
        rts                                     ; E67A 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E67B:
        lda     $49                             ; E67B A5 49                    .I
        sec                                     ; E67D 38                       8
        sbc     $3F                             ; E67E E5 3F                    .?
        sta     $49                             ; E680 85 49                    .I
        bcs     $E67A                           ; E682 B0 F6                    ..
        dec     $4A                             ; E684 C6 4A                    .J
        rts                                     ; E686 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E687:
        lda     $BF                             ; E687 A5 BF                    ..
        and     #$01                            ; E689 29 01                    ).
        bne     $E68E                           ; E68B D0 01                    ..
        rts                                     ; E68D 60                       `
; ----------------------------------------------------------------------------
        lda     #$19                            ; E68E A9 19                    ..
        sta     $6E86                           ; E690 8D 86 6E                 ..n
        jsr     UpperFixedEngine_Entry_FF94     ; E693 20 94 FF                  ..
        lda     #$00                            ; E696 A9 00                    ..
        sta     $B4                             ; E698 85 B4                    ..
        lda     $B0                             ; E69A A5 B0                    ..
        and     #$DF                            ; E69C 29 DF                    ).
        sta     $B0                             ; E69E 85 B0                    ..
        lda     $0621                           ; E6A0 AD 21 06                 .!.
        ora     $0623                           ; E6A3 0D 23 06                 .#.
        ora     $0625                           ; E6A6 0D 25 06                 .%.
        ora     $0627                           ; E6A9 0D 27 06                 .'.
        bne     $E6B2                           ; E6AC D0 04                    ..
        lda     #$20                            ; E6AE A9 20                    .
        sta     $B0                             ; E6B0 85 B0                    ..
        ldy     #$04                            ; E6B2 A0 04                    ..
        ldx     #$08                            ; E6B4 A2 08                    ..
        jsr     UpperFixedEngine_Entry_E77C     ; E6B6 20 7C E7                  |.
        ldy     #$04                            ; E6B9 A0 04                    ..
        ldx     #$08                            ; E6BB A2 08                    ..
        jsr     UpperFixedEngine_Entry_E739     ; E6BD 20 39 E7                  9.
        lda     $BD                             ; E6C0 A5 BD                    ..
        clc                                     ; E6C2 18                       .
        adc     $BC                             ; E6C3 65 BC                    e.
        sta     $BD                             ; E6C5 85 BD                    ..
        bcc     $E6F8                           ; E6C7 90 2F                    ./
        sbc     #$96                            ; E6C9 E9 96                    ..
        sta     $BD                             ; E6CB 85 BD                    ..
        jsr     UpperFixedEngine_Entry_F0E3     ; E6CD 20 E3 F0                  ..
        ldy     #$00                            ; E6D0 A0 00                    ..
        ldx     #$00                            ; E6D2 A2 00                    ..
        jsr     UpperFixedEngine_Entry_E77C     ; E6D4 20 7C E7                  |.
        ldy     #$01                            ; E6D7 A0 01                    ..
        ldx     #$02                            ; E6D9 A2 02                    ..
        jsr     UpperFixedEngine_Entry_E77C     ; E6DB 20 7C E7                  |.
        ldy     #$02                            ; E6DE A0 02                    ..
        ldx     #$04                            ; E6E0 A2 04                    ..
        jsr     UpperFixedEngine_Entry_E77C     ; E6E2 20 7C E7                  |.
        jsr     UpperFixedEngine_Entry_F0F6     ; E6E5 20 F6 F0                  ..
        ldy     #$03                            ; E6E8 A0 03                    ..
        ldx     #$06                            ; E6EA A2 06                    ..
        jsr     UpperFixedEngine_Entry_E77C     ; E6EC 20 7C E7                  |.
        jsr     UpperFixedEngine_Entry_EEE2     ; E6EF 20 E2 EE                  ..
        lda     $BD                             ; E6F2 A5 BD                    ..
        cmp     #$6A                            ; E6F4 C9 6A                    .j
        bcc     $E6C9                           ; E6F6 90 D1                    ..
        ldy     #$00                            ; E6F8 A0 00                    ..
        ldx     #$00                            ; E6FA A2 00                    ..
        jsr     UpperFixedEngine_Entry_E739     ; E6FC 20 39 E7                  9.
        ldy     #$01                            ; E6FF A0 01                    ..
        ldx     #$02                            ; E701 A2 02                    ..
        jsr     UpperFixedEngine_Entry_E739     ; E703 20 39 E7                  9.
        ldy     #$02                            ; E706 A0 02                    ..
        ldx     #$04                            ; E708 A2 04                    ..
        jsr     UpperFixedEngine_Entry_E739     ; E70A 20 39 E7                  9.
        ldy     #$03                            ; E70D A0 03                    ..
        ldx     #$06                            ; E70F A2 06                    ..
        jsr     UpperFixedEngine_Entry_E739     ; E711 20 39 E7                  9.
        lda     $0647                           ; E714 AD 47 06                 .G.
        cmp     #$FF                            ; E717 C9 FF                    ..
        bne     $E726                           ; E719 D0 0B                    ..
        lda     $BB                             ; E71B A5 BB                    ..
        and     #$20                            ; E71D 29 20                    )
        beq     $E726                           ; E71F F0 05                    ..
        lda     #$B0                            ; E721 A9 B0                    ..
        sta     $4004                           ; E723 8D 04 40                 ..@
        lda     $0649                           ; E726 AD 49 06                 .I.
        cmp     #$FF                            ; E729 C9 FF                    ..
        bne     $E738                           ; E72B D0 0B                    ..
        lda     $BB                             ; E72D A5 BB                    ..
        and     #$20                            ; E72F 29 20                    )
        bne     $E738                           ; E731 D0 05                    ..
        lda     #$30                            ; E733 A9 30                    .0
        sta     $400C                           ; E735 8D 0C 40                 ..@
        rts                                     ; E738 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E739:
        lda     $0620,x                         ; E739 BD 20 06                 . .
        beq     UpperFixedEngine_Branch_E770    ; E73C F0 32                    .2
        cpy     #$03                            ; E73E C0 03                    ..
        bne     $E748                           ; E740 D0 06                    ..
        lda     $BB                             ; E742 A5 BB                    ..
        and     #$20                            ; E744 29 20                    )
        bne     UpperFixedEngine_Branch_E770    ; E746 D0 28                    .(
        cpy     #$01                            ; E748 C0 01                    ..
        bne     $E757                           ; E74A D0 0B                    ..
        lda     $BB                             ; E74C A5 BB                    ..
        and     #$20                            ; E74E 29 20                    )
        bne     $E757                           ; E750 D0 05                    ..
        lda     $0628                           ; E752 AD 28 06                 .(.
        bne     UpperFixedEngine_Branch_E770    ; E755 D0 19                    ..
        jsr     UpperFixedEngine_Entry_EAFC     ; E757 20 FC EA                  ..
        jsr     UpperFixedEngine_Entry_ED69     ; E75A 20 69 ED                  i.
        ldy     $A4                             ; E75D A4 A4                    ..
        lda     $B4                             ; E75F A5 B4                    ..
        and     $EAF1,y                         ; E761 39 F1 EA                 9..
        beq     UpperFixedEngine_Branch_E770    ; E764 F0 0A                    ..
        lda     #$0F                            ; E766 A9 0F                    ..
        sta     APUSTATUS                       ; E768 8D 15 40                 ..@
        ldx     $A4                             ; E76B A6 A4                    ..
        ldy     $EC7F,x                         ; E76D BC 7F EC                 ...
UpperFixedEngine_Branch_E770:
        rts                                     ; E770 60                       `
; ----------------------------------------------------------------------------
ReadAudioSequenceByte:
        ldx     $A5                             ; E771 A6 A5                    ..
        lda     ($A6,x)                         ; E773 A1 A6                    ..
        inc     $A6,x                           ; E775 F6 A6                    ..
        bne     $E77B                           ; E777 D0 02                    ..
        inc     $A7,x                           ; E779 F6 A7                    ..
        rts                                     ; E77B 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E77C:
        sty     $A4                             ; E77C 84 A4                    ..
        stx     $A5                             ; E77E 86 A5                    ..
        lda     $0620,x                         ; E780 BD 20 06                 . .
        beq     $E77B                           ; E783 F0 F6                    ..
        lda     $062A,x                         ; E785 BD 2A 06                 .*.
        beq     $E7BB                           ; E788 F0 31                    .1
        lda     $062B,x                         ; E78A BD 2B 06                 .+.
        beq     $E7BB                           ; E78D F0 2C                    .,
        dec     $062B,x                         ; E78F DE 2B 06                 .+.
        bne     $E7BB                           ; E792 D0 27                    .'
        cpx     #$04                            ; E794 E0 04                    ..
        bcs     $E7BB                           ; E796 B0 23                    .#
        lda     $6BFA,y                         ; E798 B9 FA 6B                 ..k
        cmp     #$FF                            ; E79B C9 FF                    ..
        bne     $E7BB                           ; E79D D0 1C                    ..
        jsr     UpperFixedEngine_Entry_F0F6     ; E79F 20 F6 F0                  ..
        ldy     $063D,x                         ; E7A2 BC 3D 06                 .=.
        lda     $8337,y                         ; E7A5 B9 37 83                 .7.
        sta     $A0                             ; E7A8 85 A0                    ..
        lda     $8338,y                         ; E7AA B9 38 83                 .8.
        sta     $A1                             ; E7AD 85 A1                    ..
        ldy     #$01                            ; E7AF A0 01                    ..
        lda     ($A0),y                         ; E7B1 B1 A0                    ..
        sta     $063C,x                         ; E7B3 9D 3C 06                 .<.
        ldy     $A4                             ; E7B6 A4 A4                    ..
        jsr     UpperFixedEngine_Entry_F0E3     ; E7B8 20 E3 F0                  ..
        dec     $0621,x                         ; E7BB DE 21 06                 .!.
        bne     $E811                           ; E7BE D0 51                    .Q
        cpy     #$01                            ; E7C0 C0 01                    ..
        bne     $E7CF                           ; E7C2 D0 0B                    ..
        lda     $BB                             ; E7C4 A5 BB                    ..
        and     #$20                            ; E7C6 29 20                    )
        bne     $E7CF                           ; E7C8 D0 05                    ..
        lda     $0628                           ; E7CA AD 28 06                 .(.
        bne     UpperFixedEngine_Branch_E7DC    ; E7CD D0 0D                    ..
        lda     $E7EF,y                         ; E7CF B9 EF E7                 ...
        bmi     UpperFixedEngine_Branch_E7DC    ; E7D2 30 08                    0.
        tax                                     ; E7D4 AA                       .
        lda     #$88                            ; E7D5 A9 88                    ..
        sta     $4001,x                         ; E7D7 9D 01 40                 ..@
        ldx     $A5                             ; E7DA A6 A5                    ..
UpperFixedEngine_Branch_E7DC:
        jsr     ReadAudioSequenceByte           ; E7DC 20 71 E7                  q.
        ldy     $A4                             ; E7DF A4 A4                    ..
        cmp     #$E1                            ; E7E1 C9 E1                    ..
        beq     $E7EC                           ; E7E3 F0 07                    ..
        cmp     #$E8                            ; E7E5 C9 E8                    ..
        bcs     $E7F4                           ; E7E7 B0 0B                    ..
        jmp     $E9AA                           ; E7E9 4C AA E9                 L..
; ----------------------------------------------------------------------------
        jmp     $E99C                           ; E7EC 4C 9C E9                 L..
; ----------------------------------------------------------------------------
        db   $00,$04,$FF,$FF,$FF             ; E7EF 00 04 FF FF FF           .....
; ----------------------------------------------------------------------------
        pha                                     ; E7F4 48                       H
        pha                                     ; E7F5 48                       H
        pha                                     ; E7F6 48                       H
        tsx                                     ; E7F7 BA                       .
        lda     $0102,x                         ; E7F8 BD 02 01                 ...
        eor     #$FF                            ; E7FB 49 FF                    I.
        asl     a                               ; E7FD 0A                       .
        tay                                     ; E7FE A8                       .
        lda     $E812,y                         ; E7FF B9 12 E8                 ...
        sta     $0102,x                         ; E802 9D 02 01                 ...
        iny                                     ; E805 C8                       .
        lda     $E812,y                         ; E806 B9 12 E8                 ...
        sta     $0103,x                         ; E809 9D 03 01                 ...
        pla                                     ; E80C 68                       h
        ldx     $A5                             ; E80D A6 A5                    ..
        ldy     $A4                             ; E80F A4 A4                    ..
        rts                                     ; E811 60                       `
; ----------------------------------------------------------------------------
        db   $67,$E9,$6F,$E9,$8E,$E9,$8C,$E8 ; E812 67 E9 6F E9 8E E9 8C E8  g.o.....
        db   $40,$E9,$FF,$E8,$F5,$E8,$5D,$E9 ; E81A 40 E9 FF E8 F5 E8 5D E9  @.....].
        db   $53,$E9,$D7,$E8,$E9,$E8,$EF,$E8 ; E822 53 E9 D7 E8 E9 E8 EF E8  S.......
        db   $41,$E8,$AD,$E8,$99,$E8,$B9,$E8 ; E82A 41 E8 AD E8 99 E8 B9 E8  A.......
        db   $50,$F0,$2C,$E9,$83,$E8,$55,$E8 ; E832 50 F0 2C E9 83 E8 55 E8  P.,...U.
        db   $7D,$E8,$59,$E8,$68,$E8,$49,$E9 ; E83A 7D E8 59 E8 68 E8 49 E9  }.Y.h.I.
        db   $20,$71,$E7,$9D,$03,$6C,$20,$71 ; E842 20 71 E7 9D 03 6C 20 71   q...l q
        db   $E7,$9D,$04,$6C,$A9,$00,$99,$09 ; E84A E7 9D 04 6C A9 00 99 09  ...l....
        db   $6C,$4C,$DC,$E7,$A9,$FF,$30,$F6 ; E852 6C 4C DC E7 A9 FF 30 F6  lL....0.
        db   $B9,$B1,$00,$18,$69,$10,$AA,$B0 ; E85A B9 B1 00 18 69 10 AA B0  ....i...
        db   $03,$99,$B1,$00                 ; E862 03 99 B1 00              ....
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_E866:
        jmp     UpperFixedEngine_Branch_E7DC    ; E866 4C DC E7                 L..
; ----------------------------------------------------------------------------
        db   $B9,$B1,$00,$AA,$38,$E9,$10,$99 ; E869 B9 B1 00 AA 38 E9 10 99  ....8...
        db   $B1,$00,$29,$F0                 ; E871 B1 00 29 F0              ..).
; ----------------------------------------------------------------------------
        bne     UpperFixedEngine_Branch_E866    ; E875 D0 EF                    ..
        txa                                     ; E877 8A                       .
        sta     $B1,y                           ; E878 99 B1 00                 ...
        jmp     UpperFixedEngine_Branch_E7DC    ; E87B 4C DC E7                 L..
; ----------------------------------------------------------------------------
        db   $EE,$F9,$6B,$4C,$DC,$E7         ; E87E EE F9 6B 4C DC E7        ..kL..
; ----------------------------------------------------------------------------
        jsr     ReadAudioSequenceByte           ; E884 20 71 E7                  q.
        sta     $6BFA,y                         ; E887 99 FA 6B                 ..k
        jmp     UpperFixedEngine_Branch_E7DC    ; E88A 4C DC E7                 L..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_E893     ; E88D 20 93 E8                  ..
        jmp     UpperFixedEngine_Branch_E7DC    ; E890 4C DC E7                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_E893:
        lda     #$20                            ; E893 A9 20                    .
        ora     $B0                             ; E895 05 B0                    ..
        sta     $B0                             ; E897 85 B0                    ..
        rts                                     ; E899 60                       `
; ----------------------------------------------------------------------------
        db   $20,$71,$E7,$29,$0F,$85,$10,$B9 ; E89A 20 71 E7 29 0F 85 10 B9   q.)....
        db   $B1,$00,$29,$F0,$05,$10,$99,$B1 ; E8A2 B1 00 29 F0 05 10 99 B1  ..).....
        db   $00,$4C,$DC,$E7,$20,$71,$E7,$BE ; E8AA 00 4C DC E7 20 71 E7 BE  .L.. q..
        db   $7F,$EC,$9D,$01,$40,$4C,$DC,$E7 ; E8B2 7F EC 9D 01 40 4C DC E7  ....@L..
        db   $20,$71,$E7,$85,$10,$29,$01,$D0 ; E8BA 20 71 E7 85 10 29 01 D0   q...)..
        db   $0D,$A5,$10,$99,$B5,$00,$A9,$00 ; E8C2 0D A5 10 99 B5 00 A9 00  ........
        db   $99,$B8,$00,$4C,$DC,$E7,$A9,$FF ; E8CA 99 B8 00 4C DC E7 A9 FF  ...L....
        db   $99,$B5,$00,$4C,$DC,$E7,$A5,$B0 ; E8D2 99 B5 00 4C DC E7 A5 B0  ...L....
        db   $29,$F0,$85,$10,$20,$71,$E7,$29 ; E8DA 29 F0 85 10 20 71 E7 29  )... q.)
        db   $0F,$05,$10,$85,$B0,$4C,$DC,$E7 ; E8E2 0F 05 10 85 B0 4C DC E7  .....L..
        db   $20,$B9,$EE,$4C,$DC,$E7,$20,$C6 ; E8EA 20 B9 EE 4C DC E7 20 C6   ..L.. .
        db   $EE,$4C,$DC,$E7                 ; E8F2 EE 4C DC E7              .L..
; ----------------------------------------------------------------------------
        lda     $064B,y                         ; E8F6 B9 4B 06                 .K.
        php                                     ; E8F9 08                       .
        lda     #$02                            ; E8FA A9 02                    ..
        plp                                     ; E8FC 28                       (
        jmp     $E908                           ; E8FD 4C 08 E9                 L..
; ----------------------------------------------------------------------------
        lda     $064B,y                         ; E900 B9 4B 06                 .K.
        php                                     ; E903 08                       .
        jsr     ReadAudioSequenceByte           ; E904 20 71 E7                  q.
        plp                                     ; E907 28                       (
        bne     $E90D                           ; E908 D0 03                    ..
        sta     $064B,y                         ; E90A 99 4B 06                 .K.
        lda     $064B,y                         ; E90D B9 4B 06                 .K.
        sec                                     ; E910 38                       8
        sbc     #$01                            ; E911 E9 01                    ..
        sta     $064B,y                         ; E913 99 4B 06                 .K.
        beq     $E927                           ; E916 F0 0F                    ..
        jsr     ReadAudioSequenceByte           ; E918 20 71 E7                  q.
        clc                                     ; E91B 18                       .
        adc     $A6,x                           ; E91C 75 A6                    u.
        sta     $A6,x                           ; E91E 95 A6                    ..
        bcs     $E924                           ; E920 B0 02                    ..
        dec     $A7,x                           ; E922 D6 A7                    ..
        jmp     UpperFixedEngine_Branch_E7DC    ; E924 4C DC E7                 L..
; ----------------------------------------------------------------------------
        jsr     ReadAudioSequenceByte           ; E927 20 71 E7                  q.
        jmp     UpperFixedEngine_Branch_E7DC    ; E92A 4C DC E7                 L..
; ----------------------------------------------------------------------------
        lda     $B1,y                           ; E92D B9 B1 00                 ...
        and     #$0F                            ; E930 29 0F                    ).
        sta     $10                             ; E932 85 10                    ..
        jsr     ReadAudioSequenceByte           ; E934 20 71 E7                  q.
        and     #$F0                            ; E937 29 F0                    ).
        ora     $10                             ; E939 05 10                    ..
        sta     $B1,y                           ; E93B 99 B1 00                 ...
        jmp     UpperFixedEngine_Branch_E7DC    ; E93E 4C DC E7                 L..
; ----------------------------------------------------------------------------
        db   $20,$71,$E7,$9D,$FE,$6B,$4C,$DC ; E941 20 71 E7 9D FE 6B 4C DC   q...kL.
        db   $E7,$20,$71,$E7,$18,$7D,$FE,$6B ; E949 E7 20 71 E7 18 7D FE 6B  . q..}.k
        db   $4C,$44,$E9                     ; E951 4C 44 E9                 LD.
; ----------------------------------------------------------------------------
        lda     $EAF0,y                         ; E954 B9 F0 EA                 ...
        ora     $B0                             ; E957 05 B0                    ..
        sta     $B0                             ; E959 85 B0                    ..
        jmp     UpperFixedEngine_Branch_E7DC    ; E95B 4C DC E7                 L..
; ----------------------------------------------------------------------------
        lda     $EAF6,y                         ; E95E B9 F6 EA                 ...
        and     $B0                             ; E961 25 B0                    %.
        sta     $B0                             ; E963 85 B0                    ..
        jmp     UpperFixedEngine_Branch_E7DC    ; E965 4C DC E7                 L..
; ----------------------------------------------------------------------------
        db   $20,$71,$E7,$85,$BC,$4C,$DC,$E7 ; E968 20 71 E7 85 BC 4C DC E7   q...L..
; ----------------------------------------------------------------------------
        jsr     ReadAudioSequenceByte           ; E970 20 71 E7                  q.
        pha                                     ; E973 48                       H
        jsr     ReadAudioSequenceByte           ; E974 20 71 E7                  q.
        cpy     #$04                            ; E977 C0 04                    ..
        beq     $E987                           ; E979 F0 0C                    ..
        pha                                     ; E97B 48                       H
        lda     $A6,x                           ; E97C B5 A6                    ..
        sta     $0634,x                         ; E97E 9D 34 06                 .4.
        lda     $A7,x                           ; E981 B5 A7                    ..
        sta     $0635,x                         ; E983 9D 35 06                 .5.
        pla                                     ; E986 68                       h
        sta     $A7,x                           ; E987 95 A7                    ..
        pla                                     ; E989 68                       h
        sta     $A6,x                           ; E98A 95 A6                    ..
        jmp     UpperFixedEngine_Branch_E7DC    ; E98C 4C DC E7                 L..
; ----------------------------------------------------------------------------
        lda     $0634,x                         ; E98F BD 34 06                 .4.
        sta     $A6,x                           ; E992 95 A6                    ..
        lda     $0635,x                         ; E994 BD 35 06                 .5.
        sta     $A7,x                           ; E997 95 A7                    ..
        jmp     UpperFixedEngine_Branch_E7DC    ; E999 4C DC E7                 L..
; ----------------------------------------------------------------------------
        jsr     ReadAudioSequenceByte           ; E99C 20 71 E7                  q.
        sta     $063D,x                         ; E99F 9D 3D 06                 .=.
        lda     #$00                            ; E9A2 A9 00                    ..
        sta     $063C,x                         ; E9A4 9D 3C 06                 .<.
        jmp     UpperFixedEngine_Branch_E7DC    ; E9A7 4C DC E7                 L..
; ----------------------------------------------------------------------------
        pha                                     ; E9AA 48                       H
        sec                                     ; E9AB 38                       8
        sbc     #$4B                            ; E9AC E9 4B                    .K
        bcs     $E9AC                           ; E9AE B0 FC                    ..
        adc     #$4B                            ; E9B0 69 4B                    iK
        sta     $A2                             ; E9B2 85 A2                    ..
        cmp     #$4A                            ; E9B4 C9 4A                    .J
        beq     $E9C8                           ; E9B6 F0 10                    ..
        cmp     #$49                            ; E9B8 C9 49                    .I
        bne     $E9C3                           ; E9BA D0 07                    ..
        lda     #$FF                            ; E9BC A9 FF                    ..
        sta     $0646,y                         ; E9BE 99 46 06                 .F.
        bne     $E9C8                           ; E9C1 D0 05                    ..
        ldy     $A4                             ; E9C3 A4 A4                    ..
        sta     $0646,y                         ; E9C5 99 46 06                 .F.
        cpy     #$03                            ; E9C8 C0 03                    ..
        bcs     $EA08                           ; E9CA B0 3C                    .<
        lda     $EAF0,y                         ; E9CC B9 F0 EA                 ...
        and     $B0                             ; E9CF 25 B0                    %.
        beq     $E9DF                           ; E9D1 F0 0C                    ..
        lda     $061E,x                         ; E9D3 BD 1E 06                 ...
        sta     $0620,x                         ; E9D6 9D 20 06                 . .
        lda     $0628,x                         ; E9D9 BD 28 06                 .(.
        sta     $062A,x                         ; E9DC 9D 2A 06                 .*.
        lda     $6C09,y                         ; E9DF B9 09 6C                 ..l
        bmi     $EA08                           ; E9E2 30 24                    0$
        lda     $6C03,x                         ; E9E4 BD 03 6C                 ..l
        sta     $10                             ; E9E7 85 10                    ..
        lda     $6C04,x                         ; E9E9 BD 04 6C                 ..l
        sta     $11                             ; E9EC 85 11                    ..
        lda     $6C09,y                         ; E9EE B9 09 6C                 ..l
UpperFixedEngine_Branch_E9F1:
        tay                                     ; E9F1 A8                       .
        lda     ($10),y                         ; E9F2 B1 10                    ..
        beq     UpperFixedEngine_Branch_E9F1    ; E9F4 F0 FB                    ..
        sta     $0620,x                         ; E9F6 9D 20 06                 . .
        iny                                     ; E9F9 C8                       .
        lda     ($10),y                         ; E9FA B1 10                    ..
        bmi     UpperFixedEngine_Branch_EA01    ; E9FC 30 03                    0.
        sta     $062A,x                         ; E9FE 9D 2A 06                 .*.
UpperFixedEngine_Branch_EA01:
        iny                                     ; EA01 C8                       .
        tya                                     ; EA02 98                       .
        ldy     $A4                             ; EA03 A4 A4                    ..
        sta     $6C09,y                         ; EA05 99 09 6C                 ..l
        pla                                     ; EA08 68                       h
        cmp     #$96                            ; EA09 C9 96                    ..
        bcc     $EA16                           ; EA0B 90 09                    ..
        jsr     ReadAudioSequenceByte           ; EA0D 20 71 E7                  q.
        sta     $062A,x                         ; EA10 9D 2A 06                 .*.
        jmp     $EA47                           ; EA13 4C 47 EA                 LG.
; ----------------------------------------------------------------------------
        cmp     #$4B                            ; EA16 C9 4B                    .K
        bcc     $EA47                           ; EA18 90 2D                    .-
        jsr     ReadAudioSequenceByte           ; EA1A 20 71 E7                  q.
        pha                                     ; EA1D 48                       H
        and     #$7F                            ; EA1E 29 7F                    ).
        sta     $0620,x                         ; EA20 9D 20 06                 . .
        bne     $EA3C                           ; EA23 D0 17                    ..
        cpx     #$08                            ; EA25 E0 08                    ..
        bne     $EA3C                           ; EA27 D0 13                    ..
        ldx     #$02                            ; EA29 A2 02                    ..
        ldy     #$01                            ; EA2B A0 01                    ..
        sty     $A4                             ; EA2D 84 A4                    ..
        stx     $A5                             ; EA2F 86 A5                    ..
        jsr     UpperFixedEngine_Entry_EC59     ; EA31 20 59 EC                  Y.
        ldx     #$08                            ; EA34 A2 08                    ..
        ldy     #$04                            ; EA36 A0 04                    ..
        sty     $A4                             ; EA38 84 A4                    ..
        stx     $A5                             ; EA3A 86 A5                    ..
        pla                                     ; EA3C 68                       h
        and     #$FF                            ; EA3D 29 FF                    ).
        bpl     $EA47                           ; EA3F 10 06                    ..
        jsr     ReadAudioSequenceByte           ; EA41 20 71 E7                  q.
        sta     $062A,x                         ; EA44 9D 2A 06                 .*.
        lda     $063C,x                         ; EA47 BD 3C 06                 .<.
        cmp     #$FF                            ; EA4A C9 FF                    ..
        beq     $EA5E                           ; EA4C F0 10                    ..
        lda     $A2                             ; EA4E A5 A2                    ..
        cmp     #$4A                            ; EA50 C9 4A                    .J
        beq     $EA5E                           ; EA52 F0 0A                    ..
        lda     $062A,x                         ; EA54 BD 2A 06                 .*.
        bmi     $EA5E                           ; EA57 30 05                    0.
        lda     #$00                            ; EA59 A9 00                    ..
        sta     $063C,x                         ; EA5B 9D 3C 06                 .<.
        cpy     #$03                            ; EA5E C0 03                    ..
        bcs     $EA67                           ; EA60 B0 05                    ..
        lda     #$00                            ; EA62 A9 00                    ..
        sta     $6BFD,x                         ; EA64 9D FD 6B                 ..k
        lda     $0620,x                         ; EA67 BD 20 06                 . .
        sta     $0621,x                         ; EA6A 9D 21 06                 .!.
        lda     $062A,x                         ; EA6D BD 2A 06                 .*.
        pha                                     ; EA70 48                       H
        lda     a:$A2                           ; EA71 AD A2 00                 ...
        cmp     #$4A                            ; EA74 C9 4A                    .J
        bne     $EA80                           ; EA76 D0 08                    ..
        pla                                     ; EA78 68                       h
        lda     $062B,x                         ; EA79 BD 2B 06                 .+.
        pha                                     ; EA7C 48                       H
        jmp     $EA8C                           ; EA7D 4C 8C EA                 L..
; ----------------------------------------------------------------------------
        cpy     #$03                            ; EA80 C0 03                    ..
        bcs     $EA8C                           ; EA82 B0 08                    ..
        lda     #$00                            ; EA84 A9 00                    ..
        sta     $B8,y                           ; EA86 99 B8 00                 ...
        sta     $6BFD,x                         ; EA89 9D FD 6B                 ..k
        pla                                     ; EA8C 68                       h
        and     #$7F                            ; EA8D 29 7F                    ).
        cpy     #$02                            ; EA8F C0 02                    ..
        bne     $EABA                           ; EA91 D0 27                    .'
        and     #$FF                            ; EA93 29 FF                    ).
        bne     $EA99                           ; EA95 D0 02                    ..
        lda     #$0F                            ; EA97 A9 0F                    ..
        sta     $11                             ; EA99 85 11                    ..
        lda     $B0                             ; EA9B A5 B0                    ..
        and     #$0F                            ; EA9D 29 0F                    ).
        cmp     #$06                            ; EA9F C9 06                    ..
        bcc     $EAB0                           ; EAA1 90 0D                    ..
        sta     $10                             ; EAA3 85 10                    ..
        dec     $11                             ; EAA5 C6 11                    ..
        inc     $10                             ; EAA7 E6 10                    ..
        jsr     UpperFixedEngine_Entry_EE8C     ; EAA9 20 8C EE                  ..
        cmp     #$00                            ; EAAC C9 00                    ..
        bne     $EABA                           ; EAAE D0 0A                    ..
        lda     #$FF                            ; EAB0 A9 FF                    ..
        sta     $063C,x                         ; EAB2 9D 3C 06                 .<.
        sta     $0646,y                         ; EAB5 99 46 06                 .F.
        lda     #$01                            ; EAB8 A9 01                    ..
        sta     $062B,x                         ; EABA 9D 2B 06                 .+.
        lda     $0620,x                         ; EABD BD 20 06                 . .
        bne     $EAE2                           ; EAC0 D0 20                    .
        lda     #$FF                            ; EAC2 A9 FF                    ..
        sta     $0646,y                         ; EAC4 99 46 06                 .F.
        jsr     UpperFixedEngine_Entry_ED69     ; EAC7 20 69 ED                  i.
        ldy     $A4                             ; EACA A4 A4                    ..
        cpy     #$04                            ; EACC C0 04                    ..
        bne     $EAE1                           ; EACE D0 11                    ..
        lda     #$88                            ; EAD0 A9 88                    ..
        sta     $4005                           ; EAD2 8D 05 40                 ..@
        lda     $BB                             ; EAD5 A5 BB                    ..
        and     #$DF                            ; EAD7 29 DF                    ).
        sta     $BB                             ; EAD9 85 BB                    ..
        lda     $B4                             ; EADB A5 B4                    ..
        ora     #$40                            ; EADD 09 40                    .@
        sta     $B4                             ; EADF 85 B4                    ..
        rts                                     ; EAE1 60                       `
; ----------------------------------------------------------------------------
        lda     $A2                             ; EAE2 A5 A2                    ..
        cmp     #$4A                            ; EAE4 C9 4A                    .J
        beq     $EAEF                           ; EAE6 F0 07                    ..
        lda     $EAF1,y                         ; EAE8 B9 F1 EA                 ...
        ora     $B4                             ; EAEB 05 B4                    ..
        sta     $B4                             ; EAED 85 B4                    ..
        rts                                     ; EAEF 60                       `
; ----------------------------------------------------------------------------
        db   $00                             ; EAF0 00                       .
        db   $80,$40,$20,$10,$08             ; EAF1 80 40 20 10 08           .@ ..
        db   $FF,$7F,$BF,$DF,$EF,$F7         ; EAF6 FF 7F BF DF EF F7        ......
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_EAFC:
        sty     $A4                             ; EAFC 84 A4                    ..
        stx     $A5                             ; EAFE 86 A5                    ..
        lda     #$00                            ; EB00 A9 00                    ..
        sta     $A0                             ; EB02 85 A0                    ..
        cpy     #$03                            ; EB04 C0 03                    ..
        bcc     $EB21                           ; EB06 90 19                    ..
        beq     $EB10                           ; EB08 F0 06                    ..
        lda     $BB                             ; EB0A A5 BB                    ..
        and     #$20                            ; EB0C 29 20                    )
        beq     $EB1E                           ; EB0E F0 0E                    ..
        lda     $0646,y                         ; EB10 B9 46 06                 .F.
        and     #$0F                            ; EB13 29 0F                    ).
        sta     $400E                           ; EB15 8D 0E 40                 ..@
        lda     #$08                            ; EB18 A9 08                    ..
        sta     $400F                           ; EB1A 8D 0F 40                 ..@
        rts                                     ; EB1D 60                       `
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Branch_EBB4    ; EB1E 4C B4 EB                 L..
; ----------------------------------------------------------------------------
        lda     $B1,y                           ; EB21 B9 B1 00                 ...
        and     #$0F                            ; EB24 29 0F                    ).
        asl     a                               ; EB26 0A                       .
        sta     $A0                             ; EB27 85 A0                    ..
        beq     $EB32                           ; EB29 F0 07                    ..
        lda     $EAF1,y                         ; EB2B B9 F1 EA                 ...
        ora     $B4                             ; EB2E 05 B4                    ..
        sta     $B4                             ; EB30 85 B4                    ..
        cpy     #$04                            ; EB32 C0 04                    ..
        bcs     UpperFixedEngine_Branch_EBB4    ; EB34 B0 7E                    .~
        lda     $B5,y                           ; EB36 B9 B5 00                 ...
        cmp     #$FF                            ; EB39 C9 FF                    ..
        beq     $EB98                           ; EB3B F0 5B                    .[
        tax                                     ; EB3D AA                       .
        lda     $8842,x                         ; EB3E BD 42 88                 .B.
        sta     $10                             ; EB41 85 10                    ..
        lda     $8843,x                         ; EB43 BD 43 88                 .C.
        sta     $11                             ; EB46 85 11                    ..
        ldx     $A5                             ; EB48 A6 A5                    ..
        lda     $6BFD,x                         ; EB4A BD FD 6B                 ..k
        and     #$0F                            ; EB4D 29 0F                    ).
        bne     UpperFixedEngine_Branch_EB87    ; EB4F D0 36                    .6
        lda     $B8,y                           ; EB51 B9 B8 00                 ...
        tay                                     ; EB54 A8                       .
UpperFixedEngine_Branch_EB55:
        lda     ($10),y                         ; EB55 B1 10                    ..
        php                                     ; EB57 08                       .
        lsr     a                               ; EB58 4A                       J
        bcs     UpperFixedEngine_Branch_EB6B    ; EB59 B0 10                    ..
        lsr     a                               ; EB5B 4A                       J
        bcs     UpperFixedEngine_Branch_EB9B    ; EB5C B0 3D                    .=
        plp                                     ; EB5E 28                       (
        bpl     UpperFixedEngine_Branch_EB63    ; EB5F 10 02                    ..
        ora     #$C0                            ; EB61 09 C0                    ..
UpperFixedEngine_Branch_EB63:
        clc                                     ; EB63 18                       .
        adc     $A0                             ; EB64 65 A0                    e.
        sta     $A0                             ; EB66 85 A0                    ..
        iny                                     ; EB68 C8                       .
        bne     UpperFixedEngine_Branch_EBA5    ; EB69 D0 3A                    .:
UpperFixedEngine_Branch_EB6B:
        plp                                     ; EB6B 28                       (
        lsr     a                               ; EB6C 4A                       J
        bcs     UpperFixedEngine_Branch_EB74    ; EB6D B0 05                    ..
        tay                                     ; EB6F A8                       .
        jmp     UpperFixedEngine_Branch_EB55    ; EB70 4C 55 EB                 LU.
; ----------------------------------------------------------------------------
        rts                                     ; EB73 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_EB74:
        and     #$0F                            ; EB74 29 0F                    ).
        pha                                     ; EB76 48                       H
        lda     $6BFD,x                         ; EB77 BD FD 6B                 ..k
        and     #$F0                            ; EB7A 29 F0                    ).
        sta     $6BFD,x                         ; EB7C 9D FD 6B                 ..k
        pla                                     ; EB7F 68                       h
        ora     $6BFD,x                         ; EB80 1D FD 6B                 ..k
        sta     $6BFD,x                         ; EB83 9D FD 6B                 ..k
        rts                                     ; EB86 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_EB87:
        dec     $6BFD,x                         ; EB87 DE FD 6B                 ..k
        lda     $6BFD,x                         ; EB8A BD FD 6B                 ..k
        and     #$0F                            ; EB8D 29 0F                    ).
        bne     UpperFixedEngine_Branch_EB95    ; EB8F D0 04                    ..
        ldx     $A4                             ; EB91 A6 A4                    ..
        inc     $B8,x                           ; EB93 F6 B8                    ..
UpperFixedEngine_Branch_EB95:
        rts                                     ; EB95 60                       `
; ----------------------------------------------------------------------------
        db   $B0,$1C                         ; EB96 B0 1C                    ..
; ----------------------------------------------------------------------------
        jmp     $EC50                           ; EB98 4C 50 EC                 LP.
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_EB9B:
        plp                                     ; EB9B 28                       (
        ldy     $A4                             ; EB9C A4 A4                    ..
        lda     #$FF                            ; EB9E A9 FF                    ..
        sta     $B5,y                           ; EBA0 99 B5 00                 ...
        bmi     UpperFixedEngine_Branch_EBB4    ; EBA3 30 0F                    0.
UpperFixedEngine_Branch_EBA5:
        tya                                     ; EBA5 98                       .
        ldy     $A4                             ; EBA6 A4 A4                    ..
        sta     $B8,y                           ; EBA8 99 B8 00                 ...
        ldx     $A5                             ; EBAB A6 A5                    ..
        lda     $EAF1,y                         ; EBAD B9 F1 EA                 ...
        ora     $B4                             ; EBB0 05 B4                    ..
        sta     $B4                             ; EBB2 85 B4                    ..
UpperFixedEngine_Branch_EBB4:
        lda     $B4                             ; EBB4 A5 B4                    ..
        and     $EAF1,y                         ; EBB6 39 F1 EA                 9..
        beq     $EB73                           ; EBB9 F0 B8                    ..
        lda     $0646,y                         ; EBBB B9 46 06                 .F.
        cmp     #$FF                            ; EBBE C9 FF                    ..
        beq     UpperFixedEngine_Branch_EB95    ; EBC0 F0 D3                    ..
        jsr     UpperFixedEngine_Entry_ED4B     ; EBC2 20 4B ED                  K.
        lda     $EC85,x                         ; EBC5 BD 85 EC                 ...
        sta     $10                             ; EBC8 85 10                    ..
        sta     $A2                             ; EBCA 85 A2                    ..
        lda     $EC86,x                         ; EBCC BD 86 EC                 ...
        sta     $11                             ; EBCF 85 11                    ..
        sta     $A3                             ; EBD1 85 A3                    ..
        txa                                     ; EBD3 8A                       .
        pha                                     ; EBD4 48                       H
        lda     #$00                            ; EBD5 A9 00                    ..
        sta     $11                             ; EBD7 85 11                    ..
        lda     $EC9D,x                         ; EBD9 BD 9D EC                 ...
        sta     $A1                             ; EBDC 85 A1                    ..
        lda     $EC9E,x                         ; EBDE BD 9E EC                 ...
        sta     $10                             ; EBE1 85 10                    ..
        ldx     #$05                            ; EBE3 A2 05                    ..
        lda     $A0                             ; EBE5 A5 A0                    ..
        and     #$0F                            ; EBE7 29 0F                    ).
        pha                                     ; EBE9 48                       H
        pla                                     ; EBEA 68                       h
        ror     a                               ; EBEB 6A                       j
        pha                                     ; EBEC 48                       H
        bcc     UpperFixedEngine_Branch_EC10    ; EBED 90 21                    .!
        lda     $A0                             ; EBEF A5 A0                    ..
        bmi     UpperFixedEngine_Branch_EC03    ; EBF1 30 10                    0.
        clc                                     ; EBF3 18                       .
        lda     $A2                             ; EBF4 A5 A2                    ..
        adc     $10                             ; EBF6 65 10                    e.
        sta     $A2                             ; EBF8 85 A2                    ..
        lda     $A3                             ; EBFA A5 A3                    ..
        adc     $11                             ; EBFC 65 11                    e.
        sta     $A3                             ; EBFE 85 A3                    ..
        jmp     UpperFixedEngine_Branch_EC10    ; EC00 4C 10 EC                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_EC03:
        sec                                     ; EC03 38                       8
        lda     $A2                             ; EC04 A5 A2                    ..
        sbc     $10                             ; EC06 E5 10                    ..
        sta     $A2                             ; EC08 85 A2                    ..
        lda     $A3                             ; EC0A A5 A3                    ..
        sbc     $11                             ; EC0C E5 11                    ..
        sta     $A3                             ; EC0E 85 A3                    ..
UpperFixedEngine_Branch_EC10:
        asl     $A1                             ; EC10 06 A1                    ..
        rol     $10                             ; EC12 26 10                    &.
        rol     $11                             ; EC14 26 11                    &.
        dex                                     ; EC16 CA                       .
        bne     $EBEA                           ; EC17 D0 D1                    ..
        pla                                     ; EC19 68                       h
        lda     $A2                             ; EC1A A5 A2                    ..
        sta     $10                             ; EC1C 85 10                    ..
        lda     $A3                             ; EC1E A5 A3                    ..
        sta     $11                             ; EC20 85 11                    ..
        pla                                     ; EC22 68                       h
        tax                                     ; EC23 AA                       .
        lda     $EC86,x                         ; EC24 BD 86 EC                 ...
        ldx     $A4                             ; EC27 A6 A4                    ..
        ldy     $EC7F,x                         ; EC29 BC 7F EC                 ...
        cmp     $A3                             ; EC2C C5 A3                    ..
        bne     $EC7E                           ; EC2E D0 4E                    .N
        ldx     $A5                             ; EC30 A6 A5                    ..
        lda     $0620,x                         ; EC32 BD 20 06                 . .
        cmp     $0621,x                         ; EC35 DD 21 06                 .!.
        beq     $EC50                           ; EC38 F0 16                    ..
        ldx     $A4                             ; EC3A A6 A4                    ..
        ldy     $EC7F,x                         ; EC3C BC 7F EC                 ...
        lda     $10                             ; EC3F A5 10                    ..
        sta     $4002,y                         ; EC41 99 02 40                 ..@
        rts                                     ; EC44 60                       `
; ----------------------------------------------------------------------------
        db   $A6,$A5,$BD,$20,$06,$DD,$21,$06 ; EC45 A6 A5 BD 20 06 DD 21 06  ... ..!.
        db   $F0,$01,$60                     ; EC4D F0 01 60                 ..`
; ----------------------------------------------------------------------------
        ldy     $A4                             ; EC50 A4 A4                    ..
        lda     $B4                             ; EC52 A5 B4                    ..
        and     $EAF1,y                         ; EC54 39 F1 EA                 9..
        beq     $EC7E                           ; EC57 F0 25                    .%
UpperFixedEngine_Entry_EC59:
        lda     $0646,y                         ; EC59 B9 46 06                 .F.
        cmp     #$FF                            ; EC5C C9 FF                    ..
        beq     $EC7E                           ; EC5E F0 1E                    ..
        jsr     UpperFixedEngine_Entry_ED4B     ; EC60 20 4B ED                  K.
        lda     $EC85,x                         ; EC63 BD 85 EC                 ...
        sta     $10                             ; EC66 85 10                    ..
        lda     $EC86,x                         ; EC68 BD 86 EC                 ...
        sta     $11                             ; EC6B 85 11                    ..
        ldx     $A4                             ; EC6D A6 A4                    ..
        ldy     $EC7F,x                         ; EC6F BC 7F EC                 ...
        lda     $10                             ; EC72 A5 10                    ..
        sta     $4002,y                         ; EC74 99 02 40                 ..@
        lda     $11                             ; EC77 A5 11                    ..
        ora     #$08                            ; EC79 09 08                    ..
        sta     $4003,y                         ; EC7B 99 03 40                 ..@
        rts                                     ; EC7E 60                       `
; ----------------------------------------------------------------------------
        db   $00,$04,$08,$0C,$04,$0C         ; EC7F 00 04 08 0C 04 0C        ......
; ----------------------------------------------------------------------------
LEC86 = $+ 1
        beq     UpperFixedEngine_Branch_EC8E    ; EC85 F0 07                    ..
        ror     $1207,x                         ; EC87 7E 07 12                 ~..
        db   $07,$AD,$06,$43                 ; EC8A 07 AD 06 43              ...C
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_EC8E:
        asl     $F3                             ; EC8E 06 F3                    ..
        ora     $9D                             ; EC90 05 9D                    ..
        ora     $4C                             ; EC92 05 4C                    .L
        ora     $00                           ; EC94 05 00                    ..
        ora     $B8                             ; EC96 05 B8                    ..
        db   $04,$75,$04,$34,$04             ; EC98 04 75 04 34 04           .u.4.
        db   $F8                             ; EC9D F8                       .
        db   $03,$BF,$03,$89,$03,$56,$03,$26 ; EC9E 03 BF 03 89 03 56 03 26  .....V.&
        db   $03,$F9,$02,$CE,$02,$A6,$02,$80 ; ECA6 03 F9 02 CE 02 A6 02 80  ........
        db   $02,$5C,$02,$3A,$02,$1A,$02,$FB ; ECAE 02 5C 02 3A 02 1A 02 FB  .\.:....
        db   $01,$DF,$01,$C4,$01,$AB,$01,$93 ; ECB6 01 DF 01 C4 01 AB 01 93  ........
        db   $01,$7C,$01,$67,$01,$52,$01,$3F ; ECBE 01 7C 01 67 01 52 01 3F  .|.g.R.?
        db   $01,$2D,$01,$1C,$01,$0C,$01,$FD ; ECC6 01 2D 01 1C 01 0C 01 FD  .-......
        db   $00,$EF,$00,$E1,$00,$D5,$00,$C9 ; ECCE 00 EF 00 E1 00 D5 00 C9  ........
        db   $00,$BD,$00,$B3,$00,$A9,$00,$9F ; ECD6 00 BD 00 B3 00 A9 00 9F  ........
        db   $00,$96,$00,$8E,$00,$86,$00,$7E ; ECDE 00 96 00 8E 00 86 00 7E  .......~
        db   $00,$77,$00,$70,$00,$6A,$00,$64 ; ECE6 00 77 00 70 00 6A 00 64  .w.p.j.d
        db   $00,$5E,$00,$59,$00,$54,$00,$4F ; ECEE 00 5E 00 59 00 54 00 4F  .^.Y.T.O
        db   $00,$4B,$00,$46,$00,$42,$00,$3F ; ECF6 00 4B 00 46 00 42 00 3F  .K.F.B.?
        db   $00,$3B,$00,$38,$00,$34,$00,$31 ; ECFE 00 3B 00 38 00 34 00 31  .;.8.4.1
        db   $00,$2F,$00,$2C,$00,$29,$00,$27 ; ED06 00 2F 00 2C 00 29 00 27  ./.,.).'
        db   $00,$25,$00,$23,$00,$21,$00,$1F ; ED0E 00 25 00 23 00 21 00 1F  .%.#.!..
        db   $00,$1D,$00,$1B,$00,$20,$00,$20 ; ED16 00 1D 00 1B 00 20 00 20  ..... .
        db   $00,$20,$00,$4A,$00,$46,$00,$42 ; ED1E 00 20 00 4A 00 46 00 42  . .J.F.B
        db   $00,$3E,$00,$3B,$00,$37,$00,$34 ; ED26 00 3E 00 3B 00 37 00 34  .>.;.7.4
        db   $00,$32,$00,$2E,$00,$2C,$00,$29 ; ED2E 00 32 00 2E 00 2C 00 29  .2...,.)
        db   $00,$27,$00,$25,$00,$23,$00,$21 ; ED36 00 27 00 25 00 23 00 21  .'.%.#.!
        db   $00,$20,$00,$20,$00,$20,$00     ; ED3E 00 20 00 20 00 20 00     . . . .
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_ED45:
        jsr     PPUCTRL                         ; ED45 20 00 20                  .
        brk                                     ; ED48 00                       .
        db   $20,$00                         ; ED49 20 00                     .
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_ED4B:
        clc                                     ; ED4B 18                       .
        adc     #$03                            ; ED4C 69 03                    i.
        cpy     #$04                            ; ED4E C0 04                    ..
        bcs     $ED66                           ; ED50 B0 14                    ..
        clc                                     ; ED52 18                       .
        ldx     $A5                             ; ED53 A6 A5                    ..
        adc     $6BFE,x                         ; ED55 7D FE 6B                 }.k
        cpx     #$04                            ; ED58 E0 04                    ..
        bne     $ED66                           ; ED5A D0 0A                    ..
        cmp     #$39                            ; ED5C C9 39                    .9
        bcc     $ED66                           ; ED5E 90 06                    ..
        sec                                     ; ED60 38                       8
        sbc     #$39                            ; ED61 E9 39                    .9
        clc                                     ; ED63 18                       .
        adc     #$4E                            ; ED64 69 4E                    iN
        asl     a                               ; ED66 0A                       .
        tax                                     ; ED67 AA                       .
        rts                                     ; ED68 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_ED69:
        ldy     $A4                             ; ED69 A4 A4                    ..
        ldx     $A5                             ; ED6B A6 A5                    ..
        lda     #$B0                            ; ED6D A9 B0                    ..
        sta     $A2                             ; ED6F 85 A2                    ..
        lda     $0646,y                         ; ED71 B9 46 06                 .F.
        cmp     #$FF                            ; ED74 C9 FF                    ..
        beq     $ED7D                           ; ED76 F0 05                    ..
        lda     $0621,x                         ; ED78 BD 21 06                 .!.
        bne     $ED99                           ; ED7B D0 1C                    ..
        cpy     #$04                            ; ED7D C0 04                    ..
        bne     $ED88                           ; ED7F D0 07                    ..
        lda     $BB                             ; ED81 A5 BB                    ..
        and     #$20                            ; ED83 29 20                    )
        beq     $ED88                           ; ED85 F0 01                    ..
        iny                                     ; ED87 C8                       .
        lda     $ED93,y                         ; ED88 B9 93 ED                 ...
        ldy     $A4                             ; ED8B A4 A4                    ..
        sta     $A2                             ; ED8D 85 A2                    ..
        lda     #$00                            ; ED8F A9 00                    ..
        beq     $EDD8                           ; ED91 F0 45                    .E
        bcs     UpperFixedEngine_Branch_ED45    ; ED93 B0 B0                    ..
        db   $80,$30,$B0,$30                 ; ED95 80 30 B0 30              .0.0
; ----------------------------------------------------------------------------
        lda     $062A,x                         ; ED99 BD 2A 06                 .*.
        beq     $EDDE                           ; ED9C F0 40                    .@
        bmi     $EDDE                           ; ED9E 30 3E                    0>
        lda     $062B,x                         ; EDA0 BD 2B 06                 .+.
        bne     $EDDE                           ; EDA3 D0 39                    .9
        cpy     #$02                            ; EDA5 C0 02                    ..
        beq     $ED88                           ; EDA7 F0 DF                    ..
        lda     $EE87,y                         ; EDA9 B9 87 EE                 ...
        sta     $10                             ; EDAC 85 10                    ..
        cpy     #$02                            ; EDAE C0 02                    ..
        bcs     $EDDB                           ; EDB0 B0 29                    .)
        lda     $6BFA,y                         ; EDB2 B9 FA 6B                 ..k
        cmp     #$FF                            ; EDB5 C9 FF                    ..
        beq     $EDDE                           ; EDB7 F0 25                    .%
        ora     #$00                            ; EDB9 09 00                    ..
        bne     $EDC1                           ; EDBB D0 04                    ..
        lda     $10                             ; EDBD A5 10                    ..
        ora     #$30                            ; EDBF 09 30                    .0
        pha                                     ; EDC1 48                       H
        and     #$F0                            ; EDC2 29 F0                    ).
        sta     $A2                             ; EDC4 85 A2                    ..
        pla                                     ; EDC6 68                       h
        and     #$0F                            ; EDC7 29 0F                    ).
        tax                                     ; EDC9 AA                       .
        inx                                     ; EDCA E8                       .
        stx     $10                             ; EDCB 86 10                    ..
        ldx     $A5                             ; EDCD A6 A5                    ..
        lda     $B0                             ; EDCF A5 B0                    ..
        and     #$0F                            ; EDD1 29 0F                    ).
        sta     $11                             ; EDD3 85 11                    ..
        jsr     UpperFixedEngine_Entry_EE8E     ; EDD5 20 8E EE                  ..
        jmp     $EE68                           ; EDD8 4C 68 EE                 Lh.
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Branch_EE6C    ; EDDB 4C 6C EE                 Ll.
; ----------------------------------------------------------------------------
        lda     #$0F                            ; EDDE A9 0F                    ..
        sta     $10                             ; EDE0 85 10                    ..
        lda     $B0                             ; EDE2 A5 B0                    ..
        and     #$0F                            ; EDE4 29 0F                    ).
        sta     $10                             ; EDE6 85 10                    ..
        cpy     #$02                            ; EDE8 C0 02                    ..
        bcs     $EDFC                           ; EDEA B0 10                    ..
        lda     $B1,y                           ; EDEC B9 B1 00                 ...
        lsr     a                               ; EDEF 4A                       J
        lsr     a                               ; EDF0 4A                       J
        lsr     a                               ; EDF1 4A                       J
        lsr     a                               ; EDF2 4A                       J
        sta     $11                             ; EDF3 85 11                    ..
        beq     $EDFC                           ; EDF5 F0 05                    ..
        jsr     UpperFixedEngine_Entry_EE8C     ; EDF7 20 8C EE                  ..
        sta     $10                             ; EDFA 85 10                    ..
        lda     $063C,x                         ; EDFC BD 3C 06                 .<.
        cmp     #$FF                            ; EDFF C9 FF                    ..
        beq     UpperFixedEngine_Branch_EE6C    ; EE01 F0 69                    .i
        cpx     #$04                            ; EE03 E0 04                    ..
        bcs     $EE0E                           ; EE05 B0 07                    ..
        lda     $6BFD,x                         ; EE07 BD FD 6B                 ..k
        and     #$F0                            ; EE0A 29 F0                    ).
        bne     $EE3F                           ; EE0C D0 31                    .1
        ldy     $063D,x                         ; EE0E BC 3D 06                 .=.
        lda     $8337,y                         ; EE11 B9 37 83                 .7.
        sta     $A0                             ; EE14 85 A0                    ..
        lda     $8338,y                         ; EE16 B9 38 83                 .8.
        sta     $A1                             ; EE19 85 A1                    ..
        ldy     $063C,x                         ; EE1B BC 3C 06                 .<.
        lda     ($A0),y                         ; EE1E B1 A0                    ..
        cmp     #$10                            ; EE20 C9 10                    ..
        bcc     $EE2A                           ; EE22 90 06                    ..
        cmp     #$C0                            ; EE24 C9 C0                    ..
        bcs     $EE50                           ; EE26 B0 28                    .(
        bcc     $EE58                           ; EE28 90 2E                    ..
        asl     a                               ; EE2A 0A                       .
        asl     a                               ; EE2B 0A                       .
        asl     a                               ; EE2C 0A                       .
        asl     a                               ; EE2D 0A                       .
        pha                                     ; EE2E 48                       H
        lda     $6BFD,x                         ; EE2F BD FD 6B                 ..k
        and     #$0F                            ; EE32 29 0F                    ).
        sta     $6BFD,x                         ; EE34 9D FD 6B                 ..k
        pla                                     ; EE37 68                       h
        ora     $6BFD,x                         ; EE38 1D FD 6B                 ..k
        sta     $6BFD,x                         ; EE3B 9D FD 6B                 ..k
        rts                                     ; EE3E 60                       `
; ----------------------------------------------------------------------------
        lda     $6BFD,x                         ; EE3F BD FD 6B                 ..k
        sec                                     ; EE42 38                       8
        sbc     #$10                            ; EE43 E9 10                    ..
        sta     $6BFD,x                         ; EE45 9D FD 6B                 ..k
        and     #$F0                            ; EE48 29 F0                    ).
        bne     $EE4F                           ; EE4A D0 03                    ..
        inc     $063C,x                         ; EE4C FE 3C 06                 .<.
        rts                                     ; EE4F 60                       `
; ----------------------------------------------------------------------------
        and     #$3F                            ; EE50 29 3F                    )?
        sta     $063C,x                         ; EE52 9D 3C 06                 .<.
        tay                                     ; EE55 A8                       .
        bcs     $EE1E                           ; EE56 B0 C6                    ..
        inc     $063C,x                         ; EE58 FE 3C 06                 .<.
        sta     $A2                             ; EE5B 85 A2                    ..
        cpx     #$08                            ; EE5D E0 08                    ..
        beq     $EE6A                           ; EE5F F0 09                    ..
        and     #$0F                            ; EE61 29 0F                    ).
        sta     $11                             ; EE63 85 11                    ..
        jsr     UpperFixedEngine_Entry_EE8C     ; EE65 20 8C EE                  ..
        and     #$0F                            ; EE68 29 0F                    ).
        sta     $10                             ; EE6A 85 10                    ..
UpperFixedEngine_Branch_EE6C:
        ldx     $A4                             ; EE6C A6 A4                    ..
        cpx     #$04                            ; EE6E E0 04                    ..
        bne     $EE7A                           ; EE70 D0 08                    ..
        lda     $BB                             ; EE72 A5 BB                    ..
        and     #$20                            ; EE74 29 20                    )
        beq     $EE7A                           ; EE76 F0 02                    ..
        ldx     #$03                            ; EE78 A2 03                    ..
        ldy     $EC7F,x                         ; EE7A BC 7F EC                 ...
        lda     $A2                             ; EE7D A5 A2                    ..
        and     #$F0                            ; EE7F 29 F0                    ).
        ora     $10                             ; EE81 05 10                    ..
        sta     $4000,y                         ; EE83 99 00 40                 ..@
        rts                                     ; EE86 60                       `
; ----------------------------------------------------------------------------
        db   $82,$82,$02,$00,$02             ; EE87 82 82 02 00 02           .....
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_EE8C:
        inc     $11                             ; EE8C E6 11                    ..
UpperFixedEngine_Entry_EE8E:
        lda     $10                             ; EE8E A5 10                    ..
        eor     #$FF                            ; EE90 49 FF                    I.
        sta     $10                             ; EE92 85 10                    ..
        lda     #$00                            ; EE94 A9 00                    ..
        lsr     $10                             ; EE96 46 10                    F.
        bcs     $EE9C                           ; EE98 B0 02                    ..
        adc     $11                             ; EE9A 65 11                    e.
        lsr     a                               ; EE9C 4A                       J
        lsr     $10                             ; EE9D 46 10                    F.
        bcs     $EEA3                           ; EE9F B0 02                    ..
        adc     $11                             ; EEA1 65 11                    e.
        lsr     a                               ; EEA3 4A                       J
        lsr     $10                             ; EEA4 46 10                    F.
        bcs     $EEAA                           ; EEA6 B0 02                    ..
        adc     $11                             ; EEA8 65 11                    e.
        lsr     a                               ; EEAA 4A                       J
        lsr     $10                             ; EEAB 46 10                    F.
        bcs     $EEB1                           ; EEAD B0 02                    ..
        adc     $11                             ; EEAF 65 11                    e.
        lsr     a                               ; EEB1 4A                       J
        lsr     $10                             ; EEB2 46 10                    F.
        bcs     $EEB8                           ; EEB4 B0 02                    ..
        adc     $11                             ; EEB6 65 11                    e.
        rts                                     ; EEB8 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_EEB9:
        ldx     $B0                             ; EEB9 A6 B0                    ..
        inx                                     ; EEBB E8                       .
        txa                                     ; EEBC 8A                       .
        and     #$0F                            ; EEBD 29 0F                    ).
        beq     UpperFixedEngine_Branch_EEC3    ; EEBF F0 02                    ..
        stx     $B0                             ; EEC1 86 B0                    ..
UpperFixedEngine_Branch_EEC3:
        ldx     $A5                             ; EEC3 A6 A5                    ..
        rts                                     ; EEC5 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_EEC6:
        ldx     $B0                             ; EEC6 A6 B0                    ..
        dex                                     ; EEC8 CA                       .
        txa                                     ; EEC9 8A                       .
        and     #$0F                            ; EECA 29 0F                    ).
        cmp     #$0F                            ; EECC C9 0F                    ..
        beq     $EED2                           ; EECE F0 02                    ..
        stx     $B0                             ; EED0 86 B0                    ..
        ldx     $A5                             ; EED2 A6 A5                    ..
        rts                                     ; EED4 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_EED5:
        and     #$0F                            ; EED5 29 0F                    ).
        sta     $10                             ; EED7 85 10                    ..
        lda     $B0                             ; EED9 A5 B0                    ..
        and     #$F0                            ; EEDB 29 F0                    ).
        ora     $10                             ; EEDD 05 10                    ..
        sta     $B0                             ; EEDF 85 B0                    ..
        rts                                     ; EEE1 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_EEE2:
        bit     $BB                             ; EEE2 24 BB                    $.
        bvc     $EF0B                           ; EEE4 50 25                    P%
        ldx     $BB                             ; EEE6 A6 BB                    ..
        dex                                     ; EEE8 CA                       .
        stx     $BB                             ; EEE9 86 BB                    ..
        txa                                     ; EEEB 8A                       .
        and     #$1F                            ; EEEC 29 1F                    ).
        bne     $EF0B                           ; EEEE D0 1B                    ..
        txa                                     ; EEF0 8A                       .
        ora     #$05                            ; EEF1 09 05                    ..
        sta     $BB                             ; EEF3 85 BB                    ..
        bmi     $EF00                           ; EEF5 30 09                    0.
        lda     $B0                             ; EEF7 A5 B0                    ..
        and     #$0F                            ; EEF9 29 0F                    ).
        beq     UpperFixedEngine_Branch_EF0C    ; EEFB F0 0F                    ..
        jmp     UpperFixedEngine_Entry_EEC6     ; EEFD 4C C6 EE                 L..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_EEB9     ; EF00 20 B9 EE                  ..
        lda     $B0                             ; EF03 A5 B0                    ..
        and     #$0F                            ; EF05 29 0F                    ).
        cmp     #$0F                            ; EF07 C9 0F                    ..
        beq     UpperFixedEngine_Branch_EF0C    ; EF09 F0 01                    ..
        rts                                     ; EF0B 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_EF0C:
        lda     #$00                            ; EF0C A9 00                    ..
        sta     $BB                             ; EF0E 85 BB                    ..
        rts                                     ; EF10 60                       `
; ----------------------------------------------------------------------------
        tax                                     ; EF11 AA                       .
        lda     #$00                            ; EF12 A9 00                    ..
        sta     $4010                           ; EF14 8D 10 40                 ..@
        lda     #$0F                            ; EF17 A9 0F                    ..
        sta     APUSTATUS                       ; EF19 8D 15 40                 ..@
        lda     #$88                            ; EF1C A9 88                    ..
        sta     $4005                           ; EF1E 8D 05 40                 ..@
        lda     #$CF                            ; EF21 A9 CF                    ..
        and     $BB                             ; EF23 25 BB                    %.
        sta     $BB                             ; EF25 85 BB                    ..
        lda     $A16C,x                         ; EF27 BD 6C A1                 .l.
        bmi     $EF34                           ; EF2A 30 08                    0.
        pha                                     ; EF2C 48                       H
        lda     #$20                            ; EF2D A9 20                    .
        ora     $BB                             ; EF2F 05 BB                    ..
        sta     $BB                             ; EF31 85 BB                    ..
        pla                                     ; EF33 68                       h
        ora     #$80                            ; EF34 09 80                    ..
        sta     $AF                             ; EF36 85 AF                    ..
        lda     $A16B,x                         ; EF38 BD 6B A1                 .k.
        sta     $AE                             ; EF3B 85 AE                    ..
        lda     #$01                            ; EF3D A9 01                    ..
        sta     $0629                           ; EF3F 8D 29 06                 .).
        sta     $0628                           ; EF42 8D 28 06                 .(.
        lda     #$00                            ; EF45 A9 00                    ..
        sta     $0632                           ; EF47 8D 32 06                 .2.
        sta     $0633                           ; EF4A 8D 33 06                 .3.
        sta     $064F                           ; EF4D 8D 4F 06                 .O.
        lda     #$FF                            ; EF50 A9 FF                    ..
        sta     $0644                           ; EF52 8D 44 06                 .D.
        sta     $0645                           ; EF55 8D 45 06                 .E.
        jmp     UpperFixedEngine_Branch_F083    ; EF58 4C 83 F0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_EF5B:
        jsr     UpperFixedEngine_Entry_F07A     ; EF5B 20 7A F0                  z.
        tax                                     ; EF5E AA                       .
        asl     a                               ; EF5F 0A                       .
        bcs     $EF11                           ; EF60 B0 AF                    ..
        pha                                     ; EF62 48                       H
        lda     #$20                            ; EF63 A9 20                    .
        and     $BB                             ; EF65 25 BB                    %.
        sta     $BB                             ; EF67 85 BB                    ..
        pla                                     ; EF69 68                       h
        cmp     $BF                             ; EF6A C5 BF                    ..
        beq     $EF58                           ; EF6C F0 EA                    ..
        sta     $BF                             ; EF6E 85 BF                    ..
UpperFixedEngine_Branch_EF70:
        asl     a                               ; EF70 0A                       .
        asl     a                               ; EF71 0A                       .
        tay                                     ; EF72 A8                       .
        lda     $00                           ; EF73 A5 00                    ..
        pha                                     ; EF75 48                       H
        lda     $01                             ; EF76 A5 01                    ..
        pha                                     ; EF78 48                       H
        lda     $EFBE                           ; EF79 AD BE EF                 ...
        sta     $00                           ; EF7C 85 00                    ..
        lda     $EFBF                           ; EF7E AD BF EF                 ...
        sta     $01                             ; EF81 85 01                    ..
        lda     $82FE,x                         ; EF83 BD FE 82                 ...
        sta     $6BFC                           ; EF86 8D FC 6B                 ..k
        ldx     #$00                            ; EF89 A2 00                    ..
        stx     $A4                             ; EF8B 86 A4                    ..
        stx     $A5                             ; EF8D 86 A5                    ..
        bcc     $EF93                           ; EF8F 90 02                    ..
        inc     $01                             ; EF91 E6 01                    ..
        lda     ($00),y                       ; EF93 B1 00                    ..
        lda     $6BFC                           ; EF95 AD FC 6B                 ..k
        beq     $EFC0                           ; EF98 F0 26                    .&
        lda     $6BFC                           ; EF9A AD FC 6B                 ..k
        sta     $23                           ; EF9D 85 23                    .#
        ldx     #$A6                            ; EF9F A2 A6                    ..
        lda     ($00),y                       ; EFA1 B1 00                    ..
        sta     $24                             ; EFA3 85 24                    .$
        jsr     UpperFixedEngine_Entry_C3CE     ; EFA5 20 CE C3                  ..
        iny                                     ; EFA8 C8                       .
        iny                                     ; EFA9 C8                       .
        inx                                     ; EFAA E8                       .
        inx                                     ; EFAB E8                       .
        cpx     #$AC                            ; EFAC E0 AC                    ..
        bne     $EFA1                           ; EFAE D0 F1                    ..
        lda     $EFBC                           ; EFB0 AD BC EF                 ...
        sta     $AC                             ; EFB3 85 AC                    ..
        lda     $EFBD                           ; EFB5 AD BD EF                 ...
        sta     $AD                             ; EFB8 85 AD                    ..
        bne     $EFD0                           ; EFBA D0 14                    ..
LEFBD = $+ 1
        and     $83,x                           ; EFBC 35 83                    5.
        db   $4E                             ; EFBE 4E                       N
        db   $81                             ; EFBF 81                       .
; ----------------------------------------------------------------------------
        lda     ($00),y                       ; EFC0 B1 00                    ..
        sta     $A6,x                           ; EFC2 95 A6                    ..
        iny                                     ; EFC4 C8                       .
        lda     ($00),y                       ; EFC5 B1 00                    ..
        sta     $A7,x                           ; EFC7 95 A7                    ..
        inx                                     ; EFC9 E8                       .
        inx                                     ; EFCA E8                       .
        iny                                     ; EFCB C8                       .
        cpx     #$08                            ; EFCC E0 08                    ..
        bne     $EFC0                           ; EFCE D0 F0                    ..
        lda     #$0F                            ; EFD0 A9 0F                    ..
        sta     $B0                             ; EFD2 85 B0                    ..
        lda     $6BFC                           ; EFD4 AD FC 6B                 ..k
        beq     $EFED                           ; EFD7 F0 14                    ..
        ldx     #$A6                            ; EFD9 A2 A6                    ..
        ldy     #$00                            ; EFDB A0 00                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; EFDD 20 EA C3                  ..
        pha                                     ; EFE0 48                       H
        inc     $A6                             ; EFE1 E6 A6                    ..
        bne     $EFE7                           ; EFE3 D0 02                    ..
        inc     $A7                             ; EFE5 E6 A7                    ..
        pla                                     ; EFE7 68                       h
        sta     $BC                             ; EFE8 85 BC                    ..
        jmp     $EFF2                           ; EFEA 4C F2 EF                 L..
; ----------------------------------------------------------------------------
        jsr     ReadAudioSequenceByte           ; EFED 20 71 E7                  q.
        sta     $BC                             ; EFF0 85 BC                    ..
        lda     #$FF                            ; EFF2 A9 FF                    ..
        sta     $BD                             ; EFF4 85 BD                    ..
        ldx     #$00                            ; EFF6 A2 00                    ..
        ldy     #$00                            ; EFF8 A0 00                    ..
        lda     #$00                            ; EFFA A9 00                    ..
        sta     $064B,y                         ; EFFC 99 4B 06                 .K.
        sta     $062A,x                         ; EFFF 9D 2A 06                 .*.
        lda     #$FF                            ; F002 A9 FF                    ..
        sta     $063D,x                         ; F004 9D 3D 06                 .=.
        sta     $063C,x                         ; F007 9D 3C 06                 .<.
        lda     #$01                            ; F00A A9 01                    ..
        sta     $0620,x                         ; F00C 9D 20 06                 . .
        sta     $0621,x                         ; F00F 9D 21 06                 .!.
        sta     $062B,x                         ; F012 9D 2B 06                 .+.
        inx                                     ; F015 E8                       .
        inx                                     ; F016 E8                       .
        iny                                     ; F017 C8                       .
        cpy     #$04                            ; F018 C0 04                    ..
        bne     $EFFA                           ; F01A D0 DE                    ..
        lda     #$00                            ; F01C A9 00                    ..
        sta     $6BFA                           ; F01E 8D FA 6B                 ..k
        sta     $6BFB                           ; F021 8D FB 6B                 ..k
        sta     $6BF9                           ; F024 8D F9 6B                 ..k
        tax                                     ; F027 AA                       .
        tay                                     ; F028 A8                       .
        lda     #$00                            ; F029 A9 00                    ..
        sta     $B1,y                           ; F02B 99 B1 00                 ...
        sta     $6BFD,x                         ; F02E 9D FD 6B                 ..k
        sta     $6BFE,x                         ; F031 9D FE 6B                 ..k
        lda     #$FF                            ; F034 A9 FF                    ..
        sta     $B5,y                           ; F036 99 B5 00                 ...
        sta     $6C09,y                         ; F039 99 09 6C                 ..l
        inx                                     ; F03C E8                       .
        inx                                     ; F03D E8                       .
        iny                                     ; F03E C8                       .
        cpy     #$03                            ; F03F C0 03                    ..
        bne     $F029                           ; F041 D0 E6                    ..
        lda     #$80                            ; F043 A9 80                    ..
        sta     $4008                           ; F045 8D 08 40                 ..@
        pla                                     ; F048 68                       h
        sta     $01                             ; F049 85 01                    ..
        pla                                     ; F04B 68                       h
        sta     $00                           ; F04C 85 00                    ..
        jmp     UpperFixedEngine_Branch_F083    ; F04E 4C 83 F0                 L..
; ----------------------------------------------------------------------------
        db   $20,$57,$F0,$4C,$DC,$E7         ; F051 20 57 F0 4C DC E7         W.L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_F057:
        lda     #$45                            ; F057 A9 45                    .E
        ora     $BB                             ; F059 05 BB                    ..
        sta     $BB                             ; F05B 85 BB                    ..
        rts                                     ; F05D 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_F05E:
        jsr     UpperFixedEngine_Entry_F07A     ; F05E 20 7A F0                  z.
        asl     a                               ; F061 0A                       .
        cmp     $BF                             ; F062 C5 BF                    ..
        beq     UpperFixedEngine_Branch_F071    ; F064 F0 0B                    ..
        sta     $BF                             ; F066 85 BF                    ..
        lda     #$C5                            ; F068 A9 C5                    ..
        ora     $BB                             ; F06A 05 BB                    ..
        sta     $BB                             ; F06C 85 BB                    ..
        jmp     UpperFixedEngine_Branch_EF70    ; F06E 4C 70 EF                 Lp.
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_F071:
        lda     #$C5                            ; F071 A9 C5                    ..
        ora     $BB                             ; F073 05 BB                    ..
        sta     $BB                             ; F075 85 BB                    ..
        jmp     UpperFixedEngine_Branch_F083    ; F077 4C 83 F0                 L..
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_F07A:
        pha                                     ; F07A 48                       H
        lda     $BF                             ; F07B A5 BF                    ..
        and     #$FE                            ; F07D 29 FE                    ).
        sta     $BF                             ; F07F 85 BF                    ..
        pla                                     ; F081 68                       h
        rts                                     ; F082 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_F083:
        pha                                     ; F083 48                       H
        lda     $BF                             ; F084 A5 BF                    ..
        ora     #$01                            ; F086 09 01                    ..
        bne     $F07F                           ; F088 D0 F5                    ..
ResetApuChannels:
        sei                                     ; F08A 78                       x
        lda     #$00                            ; F08B A9 00                    ..
        sta     APUSTATUS                       ; F08D 8D 15 40                 ..@
        lda     #$80                            ; F090 A9 80                    ..
        sta     JOY2                            ; F092 8D 17 40                 ..@
        lda     #$0F                            ; F095 A9 0F                    ..
        sta     APUSTATUS                       ; F097 8D 15 40                 ..@
        lda     #$88                            ; F09A A9 88                    ..
        sta     $4001                           ; F09C 8D 01 40                 ..@
        sta     $4005                           ; F09F 8D 05 40                 ..@
        lda     #$FF                            ; F0A2 A9 FF                    ..
        sta     $BD                             ; F0A4 85 BD                    ..
        lda     #$00                            ; F0A6 A9 00                    ..
        sta     $BB                             ; F0A8 85 BB                    ..
        jsr     UpperFixedEngine_Entry_EF5B     ; F0AA 20 5B EF                  [.
        lda     #$80                            ; F0AD A9 80                    ..
        jsr     UpperFixedEngine_Entry_EF5B     ; F0AF 20 5B EF                  [.
        cli                                     ; F0B2 58                       X
        rts                                     ; F0B3 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_F0B4:
        jsr     WaitForNmi                      ; F0B4 20 74 FF                  t.
        jsr     WaitForNmi                      ; F0B7 20 74 FF                  t.
        jsr     WaitForNmi                      ; F0BA 20 74 FF                  t.
        jsr     WaitForNmi                      ; F0BD 20 74 FF                  t.
        lda     $B0                             ; F0C0 A5 B0                    ..
        and     #$20                            ; F0C2 29 20                    )
        beq     $F0BD                           ; F0C4 F0 F7                    ..
        rts                                     ; F0C6 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_F0C7:
        jsr     WaitForNmi                      ; F0C7 20 74 FF                  t.
        jsr     WaitForNmi                      ; F0CA 20 74 FF                  t.
        jsr     WaitForNmi                      ; F0CD 20 74 FF                  t.
UpperFixedEngine_Branch_F0D0:
        jsr     WaitForNmi                      ; F0D0 20 74 FF                  t.
        jsr     UpperFixedEngine_Entry_C8EC     ; F0D3 20 EC C8                  ..
        lda     ButtonsPressed                  ; F0D6 A5 14                    ..
        and     #$03                            ; F0D8 29 03                    ).
        bne     UpperFixedEngine_Branch_F0E2    ; F0DA D0 06                    ..
        lda     $B0                             ; F0DC A5 B0                    ..
        and     #$20                            ; F0DE 29 20                    )
        beq     UpperFixedEngine_Branch_F0D0    ; F0E0 F0 EE                    ..
UpperFixedEngine_Branch_F0E2:
        rts                                     ; F0E2 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_F0E3:
        lda     $6BFC                           ; F0E3 AD FC 6B                 ..k
        bne     $F0EA                           ; F0E6 D0 02                    ..
        lda     #$19                            ; F0E8 A9 19                    ..
        cmp     $6E86                           ; F0EA CD 86 6E                 ..n
        beq     $F0F5                           ; F0ED F0 06                    ..
        sta     $6E86                           ; F0EF 8D 86 6E                 ..n
        jsr     UpperFixedEngine_Entry_FF94     ; F0F2 20 94 FF                  ..
        rts                                     ; F0F5 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_F0F6:
        lda     #$19                            ; F0F6 A9 19                    ..
        cmp     $6E86                           ; F0F8 CD 86 6E                 ..n
        beq     $F103                           ; F0FB F0 06                    ..
        sta     $6E86                           ; F0FD 8D 86 6E                 ..n
        jsr     UpperFixedEngine_Entry_FF94     ; F100 20 94 FF                  ..
        rts                                     ; F103 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_F104:
        lda     #$26                            ; F104 A9 26                    .&
        sta     $04F3                           ; F106 8D F3 04                 ...
        lda     #$55                            ; F109 A9 55                    .U
        sta     $04F2                           ; F10B 8D F2 04                 ...
        ldx     #$2F                            ; F10E A2 2F                    ./
UpperFixedEngine_Branch_F110:
        lda     $F19B,x                         ; F110 BD 9B F1                 ...
        sta     $0480,x                         ; F113 9D 80 04                 ...
        dex                                     ; F116 CA                       .
        bpl     UpperFixedEngine_Branch_F110    ; F117 10 F7                    ..
        brk                                     ; F119 00                       .
        db   $12,$DF,$20,$EC,$C8,$20,$2E,$F1 ; F11A 12 DF 20 EC C8 20 2E F1  .. .. ..
        db   $20,$58,$F1,$20,$82,$F1,$20,$90 ; F122 20 58 F1 20 82 F1 20 90   X. .. .
        db   $F1,$4C,$1C,$F1,$A9,$0B,$85,$00 ; F12A F1 4C 1C F1 A9 0B 85 00  .L......
        db   $A9,$0C,$85,$01,$A2,$05,$8A,$48 ; F132 A9 0C 85 01 A2 05 8A 48  .......H
        db   $A9,$00,$20,$5A,$C6,$E6,$00,$E6 ; F13A A9 00 20 5A C6 E6 00 E6  .. Z....
        db   $00,$68,$AA,$CA,$D0,$F0,$AD,$5A ; F142 00 68 AA CA D0 F0 AD 5A  .h.....Z
        db   $61,$0A,$69,$0B,$85,$00,$A9,$81 ; F14A 61 0A 69 0B 85 00 A9 81  a.i.....
        db   $20,$5A,$C6,$4C,$2D,$C6,$A5,$14 ; F152 20 5A C6 4C 2D C6 A5 14   Z.L-...
        db   $0A,$90,$0E,$AD,$5A,$61,$C9,$04 ; F15A 0A 90 0E AD 5A 61 C9 04  ....Za..
        db   $F0,$07,$EE,$5A,$61,$20,$7A,$F1 ; F162 F0 07 EE 5A 61 20 7A F1  ...Za z.
        db   $60,$0A,$90,$0B,$AD,$5A,$61,$F0 ; F16A 60 0A 90 0B AD 5A 61 F0  `....Za.
        db   $06,$CE,$5A,$61,$20,$7A,$F1,$60 ; F172 06 CE 5A 61 20 7A F1 60  ..Za z.`
        db   $20,$2E,$F1,$A2,$0A,$4C,$0C,$C9 ; F17A 20 2E F1 A2 0A 4C 0C C9   ....L..
        db   $A5,$14,$4A,$90,$08,$68,$68,$00 ; F182 A5 14 4A 90 08 68 68 00  ..J..hh.
        db   $85,$FB,$AD,$5A,$61,$60,$A5,$14 ; F18A 85 FB AD 5A 61 60 A5 14  ...Za`..
        db   $29,$02,$F0,$04,$68,$68,$A9,$06 ; F192 29 02 F0 04 68 68 A9 06  )...hh..
        db   $60                             ; F19A 60                       `
        db   $86,$85,$85,$85,$49,$4F,$32,$43 ; F19B 86 85 85 85 49 4F 32 43  ....IO2C
        db   $85,$85,$85,$89,$84,$00,$00,$00 ; F1A3 85 85 85 89 84 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$88 ; F1AB 00 00 00 00 00 00 00 88  ........
        db   $84,$00,$02,$00,$03,$00,$04,$00 ; F1B3 84 00 02 00 03 00 04 00  ........
        db   $05,$00,$06,$88                 ; F1BB 05 00 06 88              ....
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_F1BF:
        ldx     #$14                            ; F1BF A2 14                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; F1C1 20 0C C9                  ..
        brk                                     ; F1C4 00                       .
        db   $9D,$FB,$20,$71,$F2,$20,$F6,$F1 ; F1C5 9D FB 20 71 F2 20 F6 F1  .. q. ..
        db   $A5,$1F,$09,$40,$85,$1F,$20,$2D ; F1CD A5 1F 09 40 85 1F 20 2D  ...@.. -
        db   $C6,$A5,$1F,$29,$BF,$85,$1F,$A2 ; F1D5 C6 A5 1F 29 BF 85 1F A2  ...)....
        db   $05,$20,$0C,$C9,$E6,$51,$A5,$51 ; F1DD 05 20 0C C9 E6 51 A5 51  . ...Q.Q
        db   $C9,$05,$90,$E1,$20,$9E,$F2,$20 ; F1E5 C9 05 90 E1 20 9E F2 20  .... ..
        db   $31,$F2,$20,$B3,$F2,$20,$2D,$C6 ; F1ED 31 F2 20 B3 F2 20 2D C6  1. .. -.
        db   $60,$A5,$51                     ; F1F5 60 A5 51                 `.Q
; ----------------------------------------------------------------------------
        bne     UpperFixedEngine_Branch_F1FD    ; F1F8 D0 03                    ..
        jsr     UpperFixedEngine_Entry_F231     ; F1FA 20 31 F2                  1.
UpperFixedEngine_Branch_F1FD:
        ldx     $050A                           ; F1FD AE 0A 05                 ...
        lda     #$9F                            ; F200 A9 9F                    ..
        sta     $0300,x                         ; F202 9D 00 03                 ...
        lda     #$40                            ; F205 A9 40                    .@
        sta     $0301,x                         ; F207 9D 01 03                 ...
        lda     #$C0                            ; F20A A9 C0                    ..
        sta     NextTextCharacter,x             ; F20C 9D 02 03                 ...
        inx                                     ; F20F E8                       .
        inx                                     ; F210 E8                       .
        inx                                     ; F211 E8                       .
        ldy     #$00                            ; F212 A0 00                    ..
UpperFixedEngine_Branch_F214:
        lda     ($49),y                         ; F214 B1 49                    .I
        sta     $0300,x                         ; F216 9D 00 03                 ...
        inx                                     ; F219 E8                       .
        iny                                     ; F21A C8                       .
        cpy     #$40                            ; F21B C0 40                    .@
        bcc     UpperFixedEngine_Branch_F214    ; F21D 90 F5                    ..
        stx     $050A                           ; F21F 8E 0A 05                 ...
        inc     $050B                           ; F222 EE 0B 05                 ...
        lda     $49                             ; F225 A5 49                    .I
        clc                                     ; F227 18                       .
        adc     #$40                            ; F228 69 40                    i@
        sta     $49                             ; F22A 85 49                    .I
        bcc     UpperFixedEngine_Branch_F230    ; F22C 90 02                    ..
        inc     $4A                             ; F22E E6 4A                    .J
UpperFixedEngine_Branch_F230:
        rts                                     ; F230 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_F231:
        ldx     $050A                           ; F231 AE 0A 05                 ...
        lda     $1C                             ; F234 A5 1C                    ..
        ora     #$80                            ; F236 09 80                    ..
        sta     $0300,x                         ; F238 9D 00 03                 ...
        sta     $0305,x                         ; F23B 9D 05 03                 ...
        lda     #$02                            ; F23E A9 02                    ..
        sta     $0301,x                         ; F240 9D 01 03                 ...
        sta     $0306,x                         ; F243 9D 06 03                 ...
        lda     $1D                             ; F246 A5 1D                    ..
        sta     NextTextCharacter,x             ; F248 9D 02 03                 ...
        clc                                     ; F24B 18                       .
        adc     #$20                            ; F24C 69 20                    i
        sta     $0307,x                         ; F24E 9D 07 03                 ...
        lda     $52                           ; F251 A5 52                    .R
        sta     $0303,x                         ; F253 9D 03 03                 ...
        lda     $53                             ; F256 A5 53                    .S
        sta     $0304,x                         ; F258 9D 04 03                 ...
        lda     $54                             ; F25B A5 54                    .T
        sta     $0308,x                         ; F25D 9D 08 03                 ...
        lda     $55                             ; F260 A5 55                    .U
        sta     $0309,x                         ; F262 9D 09 03                 ...
        inc     $050B                           ; F265 EE 0B 05                 ...
        inc     $050B                           ; F268 EE 0B 05                 ...
        ldx     #$0A                            ; F26B A2 0A                    ..
        stx     $050A                           ; F26D 8E 0A 05                 ...
        rts                                     ; F270 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_F271:
        lda     #$00                            ; F271 A9 00                    ..
        sta     $51                             ; F273 85 51                    .Q
        lda     $F29C                           ; F275 AD 9C F2                 ...
        sta     $49                             ; F278 85 49                    .I
        lda     $F29D                           ; F27A AD 9D F2                 ...
        sta     $4A                             ; F27D 85 4A                    .J
        jsr     UpperFixedEngine_Entry_F293     ; F27F 20 93 F2                  ..
        jsr     UpperFixedEngine_Entry_C662     ; F282 20 62 C6                  b.
        ldx     #$FC                            ; F285 A2 FC                    ..
        stx     $52                           ; F287 86 52                    .R
        inx                                     ; F289 E8                       .
        stx     $53                             ; F28A 86 53                    .S
        inx                                     ; F28C E8                       .
        stx     $54                             ; F28D 86 54                    .T
        inx                                     ; F28F E8                       .
        stx     $55                             ; F290 86 55                    .U
        rts                                     ; F292 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_F293:
        lda     #$10                            ; F293 A9 10                    ..
        sta     $00                           ; F295 85 00                    ..
        lda     #$0C                            ; F297 A9 0C                    ..
        sta     $01                             ; F299 85 01                    ..
        rts                                     ; F29B 60                       `
; ----------------------------------------------------------------------------
        db   $BB                             ; F29C BB                       .
        db   $F2                             ; F29D F2                       .
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_F29E:
        lda     $7608                           ; F29E AD 08 76                 ..v
        sta     $52                           ; F2A1 85 52                    .R
        lda     $7609                           ; F2A3 AD 09 76                 ..v
        sta     $53                             ; F2A6 85 53                    .S
        lda     $760A                           ; F2A8 AD 0A 76                 ..v
        sta     $54                             ; F2AB 85 54                    .T
        lda     $760B                           ; F2AD AD 0B 76                 ..v
        sta     $55                             ; F2B0 85 55                    .U
        rts                                     ; F2B2 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_F2B3:
        jsr     UpperFixedEngine_Entry_F293     ; F2B3 20 93 F2                  ..
        lda     #$02                            ; F2B6 A9 02                    ..
        jmp     UpperFixedEngine_Entry_C727     ; F2B8 4C 27 C7                 L'.
; ----------------------------------------------------------------------------
        db   $FB,$D1,$F5,$F5,$A4,$E4,$E9,$CA ; F2BB FB D1 F5 F5 A4 E4 E9 CA  ........
        db   $F9,$D3,$F2,$F2,$A2,$E1,$E6,$C4 ; F2C3 F9 D3 F2 F2 A2 E1 E6 C4  ........
        db   $FB,$DF,$AF,$AD,$AF,$07,$47,$5B ; F2CB FB DF AF AD AF 07 47 5B  ......G[
        db   $FB,$CF,$9F,$95,$97,$1B,$2B,$25 ; F2D3 FB CF 9F 95 97 1B 2B 25  ......+%
        db   $C0,$D8,$89,$B1,$50,$32,$83,$C0 ; F2DB C0 D8 89 B1 50 32 83 C0  ....P2..
        db   $C6,$C2,$84,$8C,$09,$09,$94,$C0 ; F2E3 C6 C2 84 8C 09 09 94 C0  ........
        db   $09,$09,$05,$65,$82,$E3,$53,$07 ; F2EB 09 09 05 65 82 E3 53 07  ...e..S.
        db   $25,$92,$A2,$12,$31,$18,$87,$0F ; F2F3 25 92 A2 12 31 18 87 0F  %...1...
        db   $FB,$FF,$8F,$77,$86,$78,$81,$EA ; F2FB FB FF 8F 77 86 78 81 EA  ...w.x..
        db   $FB,$FF,$8F,$07,$76,$01,$86,$E4 ; F303 FB FF 8F 07 76 01 86 E4  ....v...
        db   $FF,$E3,$DD,$C3,$D9,$47,$47,$9B ; F30B FF E3 DD C3 D9 47 47 9B  .....GG.
        db   $FF,$E3,$C1,$DD,$C1,$43,$4B,$A5 ; F313 FF E3 C1 DD C1 43 4B A5  .....CK.
        db   $C8,$D0,$89,$B1,$50,$32,$83,$C0 ; F31B C8 D0 89 B1 50 32 83 C0  ....P2..
        db   $C4,$C2,$84,$8C,$09,$09,$94,$C0 ; F323 C4 C2 84 8C 09 09 94 C0  ........
        db   $0B,$09,$05,$65,$C2,$E3,$53,$07 ; F32B 0B 09 05 65 C2 E3 53 07  ...e..S.
        db   $25,$96,$A2,$92,$31,$18,$87,$0F ; F333 25 96 A2 92 31 18 87 0F  %...1...
        db   $FB,$DF,$FF,$FD,$FF,$AF,$D7,$13 ; F33B FB DF FF FD FF AF D7 13  ........
        db   $FB,$DF,$FF,$FD,$FF,$AF,$C7,$23 ; F343 FB DF FF FD FF AF C7 23  .......#
        db   $FB,$DF,$FF,$FD,$FF,$B3,$E5,$EA ; F34B FB DF FF FD FF B3 E5 EA  ........
        db   $FB,$DF,$FF,$FD,$FF,$B3,$E9,$E4 ; F353 FB DF FF FD FF B3 E9 E4  ........
        db   $50,$54,$A1,$90,$50,$32,$83,$C0 ; F35B 50 54 A1 90 50 32 83 C0  PT..P2..
        db   $24,$22,$81,$88,$09,$09,$94,$C0 ; F363 24 22 81 88 09 09 94 C0  $"......
        db   $EA,$92,$05,$21,$42,$E3,$53,$07 ; F36B EA 92 05 21 42 E3 53 07  ...!B.S.
        db   $E4,$94,$20,$92,$31,$18,$87,$0F ; F373 E4 94 20 92 31 18 87 0F  .. .1...
        db   $FB,$DF,$FF,$FD,$FF,$BF,$F7,$FF ; F37B FB DF FF FD FF BF F7 FF  ........
        db   $FB,$DF,$FF,$FD,$FF,$BF,$F7,$FF ; F383 FB DF FF FD FF BF F7 FF  ........
        db   $FB,$DF,$FF,$FD,$FF,$BF,$F7,$FF ; F38B FB DF FF FD FF BF F7 FF  ........
        db   $FB,$DF,$FF,$FD,$FF,$BF,$F7,$FF ; F393 FB DF FF FD FF BF F7 FF  ........
        db   $FF,$CF,$83,$81,$2C,$50,$82,$C0 ; F39B FF CF 83 81 2C 50 82 C0  ....,P..
        db   $FF,$CF,$B3,$9D,$42,$20,$94,$C0 ; F3A3 FF CF B3 9D 42 20 94 C0  ....B ..
        db   $FF,$FA,$C5,$A0,$8A,$62,$53,$07 ; F3AB FF FA C5 A0 8A 62 53 07  .....bS.
        db   $FF,$FA,$C0,$96,$94,$08,$87,$0F ; F3B3 FF FA C0 96 94 08 87 0F  ........
        db   $FB,$DF,$FF,$FD,$FF,$BF,$F7,$FF ; F3BB FB DF FF FD FF BF F7 FF  ........
        db   $FB,$DF,$FF,$FD,$FF,$BF,$F7,$FF ; F3C3 FB DF FF FD FF BF F7 FF  ........
        db   $FB,$DF,$FF,$FD,$FF,$BF,$F7,$FF ; F3CB FB DF FF FD FF BF F7 FF  ........
        db   $FB,$DF,$FF,$FD,$FF,$BF,$F7,$FF ; F3D3 FB DF FF FD FF BF F7 FF  ........
        db   $FB,$DF,$FF,$FD,$CF,$B3,$4B,$03 ; F3DB FB DF FF FD CF B3 4B 03  ......K.
        db   $FB,$DF,$FF,$FD,$CF,$83,$27,$03 ; F3E3 FB DF FF FD CF 83 27 03  ......'.
        db   $FB,$DF,$FF,$FF,$E4,$D2,$B0,$83 ; F3EB FB DF FF FF E4 D2 B0 83  ........
        db   $FB,$DF,$FF,$FF,$E4,$C9,$84,$83 ; F3F3 FB DF FF FF E4 C9 84 83  ........
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_F3FB:
        stx     $05                             ; F3FB 86 05                    ..
        txa                                     ; F3FD 8A                       .
        beq     UpperFixedEngine_Entry_F405     ; F3FE F0 05                    ..
        jsr     UpperFixedEngine_Entry_F405     ; F400 20 05 F4                  ..
        dec     $05                             ; F403 C6 05                    ..
UpperFixedEngine_Entry_F405:
        jsr     UpperFixedEngine_Entry_F453     ; F405 20 53 F4                  S.
        jsr     UpperFixedEngine_Entry_F41B     ; F408 20 1B F4                  ..
        lda     $00                           ; F40B A5 00                    ..
        clc                                     ; F40D 18                       .
        adc     #$10                            ; F40E 69 10                    i.
        sta     $00                           ; F410 85 00                    ..
        bcc     $F416                           ; F412 90 02                    ..
        inc     $01                             ; F414 E6 01                    ..
        dec     $02                             ; F416 C6 02                    ..
        bne     $F408                           ; F418 D0 EE                    ..
        rts                                     ; F41A 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_F41B:
        ldx     $05                             ; F41B A6 05                    ..
        beq     $F421                           ; F41D F0 02                    ..
        ldx     #$03                            ; F41F A2 03                    ..
        lda     $F43F,x                         ; F421 BD 3F F4                 .?.
        bmi     $F43E                           ; F424 30 18                    0.
        sta     $06                             ; F426 85 06                    ..
        inx                                     ; F428 E8                       .
        ldy     $F43F,x                         ; F429 BC 3F F4                 .?.
        inx                                     ; F42C E8                       .
        tya                                     ; F42D 98                       .
        beq     $F435                           ; F42E F0 05                    ..
        dey                                     ; F430 88                       .
        lda     ($00),y                       ; F431 B1 00                    ..
        iny                                     ; F433 C8                       .
        iny                                     ; F434 C8                       .
        sta     PPUDATA                         ; F435 8D 07 20                 ..
        dec     $06                             ; F438 C6 06                    ..
        bpl     $F42D                           ; F43A 10 F1                    ..
        bmi     $F421                           ; F43C 30 E3                    0.
        rts                                     ; F43E 60                       `
; ----------------------------------------------------------------------------
        db   $0F,$01,$FF,$07,$01,$00,$00,$00 ; F43F 0F 01 FF 07 01 00 00 00  ........
        db   $02,$05,$00,$07,$09,$00,$09,$05 ; F447 02 05 00 07 09 00 09 05  ........
        db   $00,$00,$10,$FF                 ; F44F 00 00 10 FF              ....
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_F453:
        ldx     $05                             ; F453 A6 05                    ..
        ldy     $F471,x                         ; F455 BC 71 F4                 .q.
        ldx     #$03                            ; F458 A2 03                    ..
        lda     $F473,y                         ; F45A B9 73 F4                 .s.
        sta     $00,x                         ; F45D 95 00                    ..
        dey                                     ; F45F 88                       .
        dex                                     ; F460 CA                       .
        bpl     $F45A                           ; F461 10 F7                    ..
        lda     PPUSTATUS                       ; F463 AD 02 20                 ..
        lda     $03                             ; F466 A5 03                    ..
        sta     PPUADDR                         ; F468 8D 06 20                 ..
        lda     #$00                            ; F46B A9 00                    ..
        sta     PPUADDR                         ; F46D 8D 06 20                 ..
        rts                                     ; F470 60                       `
; ----------------------------------------------------------------------------
        db   $03,$07                         ; F471 03 07                    ..
        db   $7B,$F4,$70,$18,$7B,$FB,$28,$10 ; F473 7B F4 70 18 7B FB 28 10  {.p.{.(.
Bank1F_FixedGraphics:
        db   $00,$FF,$E1,$97,$C8,$E4,$96,$8F ; F47B 00 FF E1 97 C8 E4 96 8F  ........
        db   $FF,$FF,$FE,$FE,$BF,$BF,$FB,$F3 ; F483 FF FF FE FE BF BF FB F3  ........
        db   $00,$FF,$63,$76,$38,$0F,$EC,$FF ; F48B 00 FF 63 76 38 0F EC FF  ..cv8...
        db   $FF,$FF,$9F,$FF,$F7,$FC,$73,$FF ; F493 FF FF 9F FF F7 FC 73 FF  ......s.
        db   $00,$FF,$18,$B4,$D9,$2F,$00,$FF ; F49B 00 FF 18 B4 D9 2F 00 FF  ...../..
        db   $FF,$FF,$E7,$FB,$BF,$DF,$FF,$FF ; F4A3 FF FF E7 FB BF DF FF FF  ........
        db   $00,$FF,$A7,$4B,$93,$EB,$4B,$8F ; F4AB 00 FF A7 4B 93 EB 4B 8F  ...K..K.
        db   $FF,$FF,$FF,$FF,$7F,$3F,$FF,$F3 ; F4B3 FF FF FF FF 7F 3F FF F3  .....?..
        db   $B3,$A3,$AB,$B7,$9F,$AB,$93,$9B ; F4BB B3 A3 AB B7 9F AB 93 9B  ........
        db   $FE,$FE,$F6,$FA,$FA,$DE,$EE,$FE ; F4C3 FE FE F6 FA FA DE EE FE  ........
        db   $A7,$AF,$EB,$F3,$9B,$DF,$CF,$C3 ; F4CB A7 AF EB F3 9B DF CF C3  ........
        db   $DE,$DE,$BE,$AE,$FE,$FA,$FA,$BE ; F4D3 DE DE BE AE FE FA FA BE  ........
        db   $87,$E7,$F7,$B3,$9F,$AF,$EB,$CB ; F4DB 87 E7 F7 B3 9F AF EB CB  ........
        db   $FB,$BF,$BF,$FF,$EB,$FB,$F7,$F7 ; F4E3 FB BF BF FF EB FB F7 F7  ........
        db   $B3,$93,$AB,$F3,$DB,$AB,$8B,$9B ; F4EB B3 93 AB F3 DB AB 8B 9B  ........
        db   $FF,$EF,$F7,$BF,$BF,$DF,$FF,$FF ; F4F3 FF EF F7 BF BF DF FF FF  ........
        db   $F3,$93,$B7,$E9,$92,$A5,$CD,$FF ; F4FB F3 93 B7 E9 92 A5 CD FF  ........
        db   $CE,$FF,$FC,$DE,$FF,$FF,$F3,$FF ; F503 CE FF FC DE FF FF F3 FF  ........
        db   $FF,$FF,$18,$2D,$9B,$F4,$00,$FF ; F50B FF FF 18 2D 9B F4 00 FF  ...-....
        db   $00,$FF,$E7,$DF,$FD,$FB,$FF,$FF ; F513 00 FF E7 DF FD FB FF FF  ........
        db   $FF,$FF,$C6,$6E,$1C,$F0,$37,$FF ; F51B FF FF C6 6E 1C F0 37 FF  ...n..7.
        db   $00,$FF,$F9,$FF,$EF,$3F,$CE,$FF ; F523 00 FF F9 FF EF 3F CE FF  .....?..
        db   $8F,$CB,$EB,$93,$4B,$2F,$57,$FF ; F52B 8F CB EB 93 4B 2F 57 FF  ....K/W.
        db   $F3,$FF,$3F,$7F,$FF,$F7,$EF,$FF ; F533 F3 FF 3F 7F FF F7 EF FF  ..?.....
        db   $7E,$83,$81,$9C,$92,$92,$92,$92 ; F53B 7E 83 81 9C 92 92 92 92  ~.......
        db   $81,$FC,$FE,$EF,$EF,$EF,$EF,$EF ; F543 81 FC FE EF EF EF EF EF  ........
        db   $07,$08,$88,$C9,$49,$49,$49,$49 ; F54B 07 08 88 C9 49 49 49 49  ....IIII
        db   $F8,$FF,$7F,$3E,$BE,$BE,$BE,$BE ; F553 F8 FF 7F 3E BE BE BE BE  ...>....
        db   $F0,$18,$0C,$C4,$24,$24,$24,$24 ; F55B F0 18 0C C4 24 24 24 24  ....$$$$
        db   $0F,$E7,$F3,$FB,$FB,$FB,$FB,$FB ; F563 0F E7 F3 FB FB FB FB FB  ........
        db   $1F,$21,$40,$40,$4C,$8A,$92,$92 ; F56B 1F 21 40 40 4C 8A 92 92  .!@@L...
        db   $E0,$FE,$FF,$FF,$F7,$F7,$EF,$EF ; F573 E0 FE FF FF F7 F7 EF EF  ........
        db   $01,$82,$84,$88,$C9,$49,$49,$49 ; F57B 01 82 84 88 C9 49 49 49  .....III
        db   $FE,$7F,$7F,$7F,$3E,$BE,$BE,$BE ; F583 FE 7F 7F 7F 3E BE BE BE  ....>...
        db   $F0,$18,$0C,$C4,$24,$24,$3C,$7E ; F58B F0 18 0C C4 24 24 3C 7E  ....$$<~
        db   $0F,$E7,$F3,$FB,$FB,$FB,$FB,$81 ; F593 0F E7 F3 FB FB FB FB 81  ........
        db   $0F,$10,$20,$46,$49,$49,$49,$49 ; F59B 0F 10 20 46 49 49 49 49  .. FIIII
        db   $F0,$FF,$FF,$FF,$F7,$F7,$F7,$F7 ; F5A3 F0 FF FF FF F7 F7 F7 F7  ........
        db   $87,$C4,$64,$24,$24,$24,$24,$24 ; F5AB 87 C4 64 24 24 24 24 24  ..d$$$$$
        db   $78,$3F,$9F,$DF,$DF,$DF,$DF,$DF ; F5B3 78 3F 9F DF DF DF DF DF  x?......
        db   $8F,$89,$49,$49,$29,$29,$19,$09 ; F5BB 8F 89 49 49 29 29 19 09  ..II))..
        db   $70,$7E,$BE,$BE,$DE,$DE,$EE,$FE ; F5C3 70 7E BE BE DE DE EE FE  p~......
        db   $F3,$92,$92,$92,$92,$9E,$92,$92 ; F5CB F3 92 92 92 92 9E 92 92  ........
        db   $0C,$EF,$EF,$EF,$EF,$E3,$EF,$EF ; F5D3 0C EF EF EF EF E3 EF EF  ........
; ----------------------------------------------------------------------------
        cmp     (PlayerWorldX,x)                ; F5DB C1 42                    .B
        db   $44,$44,$44,$48,$49,$49,$3E,$BF ; F5DD 44 44 44 48 49 49 3E BF  DDDHII>.
        db   $BF,$BF,$BF,$BF,$BE,$BE,$F0,$18 ; F5E5 BF BF BF BF BE BE F0 18  ........
        db   $08,$08,$CC,$A4,$24,$24,$0F,$E7 ; F5ED 08 08 CC A4 24 24 0F E7  ....$$..
        db   $F7,$F7,$73,$7B,$FB,$FB,$7F,$81 ; F5F5 F7 F7 73 7B FB FB 7F 81  ..s{....
        db   $80,$9C,$92,$92,$92,$92,$80,$FE ; F5FD 80 9C 92 92 92 92 80 FE  ........
        db   $FF,$EF,$EF,$EF,$EF,$EF,$07,$88 ; F605 FF EF EF EF EF EF 07 88  ........
        db   $C8,$49,$49,$49,$49,$49,$F8,$7F ; F60D C8 49 49 49 49 49 F8 7F  .IIIII..
        db   $3F,$BE,$BE,$BE,$BE,$BE,$F0,$18 ; F615 3F BE BE BE BE BE F0 18  ?.......
        db   $0C,$C4,$24                     ; F61D 0C C4 24                 ..$
; ----------------------------------------------------------------------------
        bit     $24                             ; F620 24 24                    $$
        bit     $0F                             ; F622 24 0F                    $.
        db   $E7,$F3,$FB,$FB,$FB,$FB,$FB,$7E ; F624 E7 F3 FB FB FB FB FB 7E  .......~
        db   $42,$42,$24,$24,$24,$24,$24,$81 ; F62C 42 42 24 24 24 24 24 81  BB$$$$$.
        db   $FD,$FD,$FB,$FB,$FB,$FB,$FB,$0F ; F634 FD FD FB FB FB FB FB 0F  ........
        db   $10,$20,$46,$49,$49,$49,$49,$F0 ; F63C 10 20 46 49 49 49 49 F0  . FIIII.
        db   $FF,$FF,$FF,$F7,$F7,$F7,$F7,$83 ; F644 FF FF FF F7 F7 F7 F7 83  ........
        db   $C4,$64,$24,$24,$24,$24,$24,$7C ; F64C C4 64 24 24 24 24 24 7C  .d$$$$$|
        db   $3F,$9F,$DF,$DF,$DF,$DF,$DF,$F8 ; F654 3F 9F DF DF DF DF DF F8  ?.......
        db   $0C,$06,$E2,$92,$92,$92,$92,$07 ; F65C 0C 06 E2 92 92 92 92 07  ........
        db   $F3,$F9,$7D,$7D,$7D,$7D,$7D,$92 ; F664 F3 F9 7D 7D 7D 7D 7D 92  ..}}}}}.
        db   $92,$92,$94,$98,$80,$81,$7E,$EF ; F66C 92 92 94 98 80 81 7E EF  ......~.
        db   $EF,$EF,$EF,$E7,$FF,$FF,$FF,$49 ; F674 EF EF EF E7 FF FF FF 49  .......I
        db   $48,$48,$49,$49,$89,$09,$0F,$BE ; F67C 48 48 49 49 89 09 0F BE  HHII....
        db   $BF,$BF,$BE,$BE,$FE,$FE,$FE,$C4 ; F684 BF BF BE BE FE FE FE C4  ........
        db   $08,$10,$90,$48,$24,$24,$3C,$3F ; F68C 08 10 90 48 24 24 3C 3F  ...H$$<?
        db   $FF,$EF,$EF,$F7,$FB,$FB,$FB,$9C ; F694 FF EF EF F7 FB FB FB 9C  ........
        db   $90,$90,$9C,$92,$92,$92,$F3,$E3 ; F69C 90 90 9C 92 92 92 F3 E3  ........
        db   $EF,$EF,$EF,$EF,$EF,$EF,$EF,$49 ; F6A4 EF EF EF EF EF EF EF 49  .......I
        db   $49,$49,$49,$48,$44,$42,$C1,$BE ; F6AC 49 49 49 48 44 42 C1 BE  IIIHDB..
        db   $BE,$BE,$BE,$BF,$BF,$BF,$BF,$42 ; F6B4 BE BE BE BF BF BF BF 42  .......B
        db   $42,$24,$24,$E4,$04,$04,$FC,$FD ; F6BC 42 24 24 E4 04 04 FC FD  B$$.....
        db   $FD,$FB,$FB,$3B,$FB,$FB,$FB,$49 ; F6C4 FD FB FB 3B FB FB FB 49  ...;...I
        db   $49,$49,$49,$46                 ; F6CC 49 49 49 46              IIIF
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_F6D0:
        jsr     $0F10                           ; F6D0 20 10 0F                  ..
        db   $F7,$F7,$F7,$F7,$F9,$FF,$FF,$FF ; F6D3 F7 F7 F7 F7 F9 FF FF FF  ........
        db   $24,$24,$24,$24,$24,$44,$84,$07 ; F6DB 24 24 24 24 24 44 84 07  $$$$$D..
        db   $DF,$DF,$DF,$DF,$DF,$FF,$FF,$FF ; F6E3 DF DF DF DF DF FF FF FF  ........
        db   $81,$C1,$A1,$A1,$91,$91,$89,$8F ; F6EB 81 C1 A1 A1 91 91 89 8F  ........
; ----------------------------------------------------------------------------
        ror     $7E7E,x                         ; F6F3 7E 7E 7E                 ~~~
        ror     $7E7E,x                         ; F6F6 7E 7E 7E                 ~~~
        ror     $807E,x                         ; F6F9 7E 7E 80                 ~~.
        db   $80,$8C,$8C,$92,$92,$92,$F3,$FF ; F6FC 80 8C 8C 92 92 92 F3 FF  ........
        db   $FF,$F7,$F7,$EF,$EF,$EF,$EF,$49 ; F704 FF F7 F7 EF EF EF EF 49  .......I
        db   $49,$49,$49,$49                 ; F70C 49 49 49 49              IIII
; ----------------------------------------------------------------------------
        eor     #$49                            ; F710 49 49                    II
        db   $CF,$BE,$BE,$BE,$BE,$BE,$BE,$BE ; F712 CF BE BE BE BE BE BE BE  ........
        db   $BE,$C4,$04,$04,$C4,$24,$24,$24 ; F71A BE C4 04 04 C4 24 24 24  .....$$$
        db   $3C,$3B,$FB,$FB,$FB,$FB,$FB,$FB ; F722 3C 3B FB FB FB FB FB FB  <;......
        db   $FB,$9C,$80,$81,$99,$94,$92,$92 ; F72A FB 9C 80 81 99 94 92 92  ........
        db   $F3,$E3,$FF,$FE,$EE,$EF,$EF,$EF ; F732 F3 E3 FF FE EE EF EF EF  ........
        db   $EF,$49,$88,$08,$09,$89,$49,$49 ; F73A EF 49 88 08 09 89 49 49  .I....II
        db   $CF,$FE,$FF,$FF,$FE,$7E,$BE,$BE ; F742 CF FE FF FF FE 7E BE BE  .....~..
        db   $BE,$C4,$08,$10,$90,$48,$24,$24 ; F74A BE C4 08 10 90 48 24 24  .....H$$
        db   $3C,$3F,$FF,$EF,$EF,$F7,$FB,$FB ; F752 3C 3F FF EF EF F7 FB FB  <?......
        db   $FB,$24,$24,$24,$24,$24,$22,$42 ; F75A FB 24 24 24 24 24 22 42  .$$$$$"B
        db   $7E,$FB,$FB,$FB,$FB,$FB,$FD,$FD ; F762 7E FB FB FB FB FB FD FD  ~.......
        db   $FF,$49,$49,$49,$49,$46,$20,$10 ; F76A FF 49 49 49 49 46 20 10  .IIIIF .
        db   $0F,$F7,$F7,$F7,$F7,$F9,$FF,$FF ; F772 0F F7 F7 F7 F7 F9 FF FF  ........
        db   $FF,$24,$24,$24,$24,$24,$44,$84 ; F77A FF 24 24 24 24 24 44 84  .$$$$$D.
        db   $07,$DF,$DF,$DF,$DF,$DF,$FF,$FF ; F782 07 DF DF DF DF DF FF FF  ........
        db   $FF,$E2,$04,$08,$C8,$A4,$92     ; F78A FF E2 04 08 C8 A4 92     .......
        db   $92,$9E                         ; F791 92 9E                    ..
        db   $1F,$FF,$F7,$77,$7B,$7D,$7D,$7D ; F793 1F FF F7 77 7B 7D 7D 7D  ...w{}}}
        db   $FF,$80,$80,$80,$80,$E1,$21,$21 ; F79B FF 80 80 80 80 E1 21 21  ......!!
        db   $00,$FF,$FF,$FF,$FF,$FF,$FE,$FE ; F7A3 00 FF FF FF FF FF FE FE  ........
        db   $FF,$00,$00,$00,$00,$C3,$42,$42 ; F7AB FF 00 00 00 00 C3 42 42  ......BB
        db   $00,$FF,$FF,$FF,$FF,$FF,$FD,$FD ; F7B3 00 FF FF FF FF FF FD FD  ........
        db   $9F,$90,$90,$90,$90,$9C,$04,$04 ; F7BB 9F 90 90 90 90 9C 04 04  ........
        db   $60,$7F,$7F,$7F,$7F,$7F,$FF,$FF ; F7C3 60 7F 7F 7F 7F 7F FF FF  `.......
        db   $F8,$08,$08,$08,$08,$38,$20,$20 ; F7CB F8 08 08 08 08 38 20 20  .....8
        db   $07,$F7,$F7,$F7,$F7,$F7,$DF,$DF ; F7D3 07 F7 F7 F7 F7 F7 DF DF  ........
        db   $21,$21,$21,$21,$21,$21,$21,$21 ; F7DB 21 21 21 21 21 21 21 21  !!!!!!!!
        db   $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE ; F7E3 FE FE FE FE FE FE FE FE  ........
        db   $21,$21,$21,$21,$10,$10,$10,$10 ; F7EB 21 21 21 21 10 10 10 10  !!!!....
        db   $FE,$FE,$FE,$FE,$FF,$FF,$FF,$FF ; F7F3 FE FE FE FE FF FF FF FF  ........
; ----------------------------------------------------------------------------
        php                                     ; F7FB 08                       .
        php                                     ; F7FC 08                       .
        php                                     ; F7FD 08                       .
        php                                     ; F7FE 08                       .
        bcc     $F791                           ; F7FF 90 90                    ..
        bcc     $F793                           ; F801 90 90                    ..
        db   $FF,$FF,$FF,$FF,$7F,$7F,$7F,$7F ; F803 FF FF FF FF 7F 7F 7F 7F  ........
        db   $40,$42,$40,$40,$80,$88,$80,$80 ; F80B 40 42 40 40 80 88 80 80  @B@@....
        db   $BF,$BF,$BF,$BF,$7F,$77,$7F,$7F ; F813 BF BF BF BF 7F 77 7F 7F  .....w..
        db   $21,$21,$21,$21,$21,$21,$21,$21 ; F81B 21 21 21 21 21 21 21 21  !!!!!!!!
        db   $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE ; F823 FE FE FE FE FE FE FE FE  ........
        db   $08,$08,$08,$08,$04,$44,$04,$04 ; F82B 08 08 08 08 04 44 04 04  .....D..
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; F833 FF FF FF FF FF FF FF FF  ........
        db   $61,$61,$61,$61,$02,$02,$02,$02 ; F83B 61 61 61 61 02 02 02 02  aaaa....
        db   $BE,$BE,$BE,$BE,$FD,$FD,$FD,$FD ; F843 BE BE BE BE FD FD FD FD  ........
        db   $00,$00,$12,$00,$00,$40,$00,$00 ; F84B 00 00 12 00 00 40 00 00  .....@..
        db   $FF,$FF,$FD,$FF,$FF,$FF,$FF,$FF ; F853 FF FF FD FF FF FF FF FF  ........
        db   $21,$21,$E1,$80,$80,$80,$80,$FF ; F85B 21 21 E1 80 80 80 80 FF  !!......
        db   $FE,$FE,$3E,$FF,$FF,$FF,$FF,$FF ; F863 FE FE 3E FF FF FF FF FF  ..>.....
        db   $02,$02,$C2,$42,$41,$49,$41,$C1 ; F86B 02 02 C2 42 41 49 41 C1  ...BAIA.
        db   $FF,$FF,$3F,$BF,$BF,$B7,$BF,$BF ; F873 FF FF 3F BF BF B7 BF BF  ..?.....
        db   $04,$04,$04,$04,$08,$08,$08,$F8 ; F87B 04 04 04 04 08 08 08 F8  ........
        db   $FB,$FB,$FB,$FB,$F7,$F7,$F7,$F7 ; F883 FB FB FB FB F7 F7 F7 F7  ........
        db   $00,$02,$40,$00,$00,$08,$00,$00 ; F88B 00 02 40 00 00 08 00 00  ..@.....
        db   $FF,$FF,$FF,$FF,$FF,$F7,$FF,$FF ; F893 FF FF FF FF FF F7 FF FF  ........
        db   $FE,$82,$82,$EE,$28,$28,$28,$38 ; F89B FE 82 82 EE 28 28 28 38  ....(((8
        db   $01,$FD,$FD,$F1,$F7,$F7,$F7,$F7 ; F8A3 01 FD FD F1 F7 F7 F7 F7  ........
        db   $C3,$A5,$99,$81,$81,$BD,$A5,$E7 ; F8AB C3 A5 99 81 81 BD A5 E7  ........
        db   $3C,$DE,$EE,$FE,$FE,$D6,$DE,$DE ; F8B3 3C DE EE FE FE D6 DE DE  <.......
        db   $00,$00,$00,$00,$00,$00,$00,$01 ; F8BB 00 00 00 00 00 00 00 01  ........
        db   $00,$00,$00,$00,$00,$00,$00,$01 ; F8C3 00 00 00 00 00 00 00 01  ........
        db   $00,$01,$07,$1F,$3F,$7F,$FE,$FC ; F8CB 00 01 07 1F 3F 7F FE FC  ....?...
        db   $00,$01,$07,$1F,$3F,$7F,$FE,$FC ; F8D3 00 01 07 1F 3F 7F FE FC  ....?...
        db   $7F,$FF,$F1,$C0,$80,$00,$00,$00 ; F8DB 7F FF F1 C0 80 00 00 00  ........
        db   $7F,$FF,$F1,$C0,$80,$00,$00,$00 ; F8E3 7F FF F1 C0 80 00 00 00  ........
        db   $80,$E0,$F0,$F0,$78,$78,$78,$78 ; F8EB 80 E0 F0 F0 78 78 78 78  ....xxxx
        db   $80,$E0,$F0,$F0,$78,$78,$78,$78 ; F8F3 80 E0 F0 F0 78 78 78 78  ....xxxx
        db   $01,$03,$07,$07,$0F,$0F,$1F,$1F ; F8FB 01 03 07 07 0F 0F 1F 1F  ........
        db   $01,$03,$07,$07,$0F,$0F,$1F,$1F ; F903 01 03 07 07 0F 0F 1F 1F  ........
        db   $FC,$F8,$F8,$F0,$F0,$F0,$E0,$E0 ; F90B FC F8 F8 F0 F0 F0 E0 E0  ........
        db   $FC,$F8,$F8,$F0,$F0,$F0,$E0,$E0 ; F913 FC F8 F8 F0 F0 F0 E0 E0  ........
        db   $00,$00,$01,$03,$07,$0F,$3E,$78 ; F91B 00 00 01 03 07 0F 3E 78  ......>x
        db   $00,$00,$01,$03,$07,$0F,$3E,$78 ; F923 00 00 01 03 07 0F 3E 78  ......>x
        db   $F8,$F0,$F2,$E2,$C6,$86,$0C,$0C ; F92B F8 F0 F2 E2 C6 86 0C 0C  ........
        db   $F8,$F0,$F2,$E2,$C6,$86,$0C,$0C ; F933 F8 F0 F2 E2 C6 86 0C 0C  ........
        db   $3F,$3F,$3F,$7F,$7F,$7F,$7F,$7F ; F93B 3F 3F 3F 7F 7F 7F 7F 7F  ???.....
        db   $3F,$3F,$3F,$7F,$7F,$7F,$7F,$7F ; F943 3F 3F 3F 7F 7F 7F 7F 7F  ???.....
        db   $E1,$FF,$F0,$F0,$F8,$FE,$FF,$FF ; F94B E1 FF F0 F0 F8 FE FF FF  ........
        db   $E1,$FF,$F0,$F0,$F8,$FE,$FF,$FF ; F953 E1 FF F0 F0 F8 FE FF FF  ........
        db   $E0,$00,$00,$00,$03,$1F,$FF,$FF ; F95B E0 00 00 00 03 1F FF FF  ........
        db   $E0,$00,$00,$00,$03,$1F,$FF,$FF ; F963 E0 00 00 00 03 1F FF FF  ........
        db   $1C,$38,$78,$F0,$F0,$E0,$E0,$C0 ; F96B 1C 38 78 F0 F0 E0 E0 C0  .8x.....
        db   $1C,$38,$78,$F0,$F0,$E0,$E0,$C0 ; F973 1C 38 78 F0 F0 E0 E0 C0  .8x.....
        db   $7F,$3F,$3F,$1F,$1F,$0F,$07,$01 ; F97B 7F 3F 3F 1F 1F 0F 07 01  .??.....
        db   $7F,$3F,$3F,$1F,$1F,$0F,$07,$01 ; F983 7F 3F 3F 1F 1F 0F 07 01  .??.....
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC ; F98B FF FF FF FF FF FF FF FC  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC ; F993 FF FF FF FF FF FF FF FC  ........
        db   $FF,$FF,$FE,$FC,$F8,$E0,$80,$00 ; F99B FF FF FE FC F8 E0 80 00  ........
        db   $FF,$FF,$FE,$FC,$F8,$E0,$80,$00 ; F9A3 FF FF FE FC F8 E0 80 00  ........
        db   $80,$00,$00,$00,$00,$00,$00,$00 ; F9AB 80 00 00 00 00 00 00 00  ........
        db   $80,$00,$00,$00,$00,$00,$00,$00 ; F9B3 80 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$3F,$40,$40,$40,$40 ; F9BB 00 00 00 3F 40 40 40 40  ...?@@@@
        db   $00,$00,$00,$3F,$40,$40,$40,$40 ; F9C3 00 00 00 3F 40 40 40 40  ...?@@@@
        db   $00,$00,$00,$20,$70             ; F9CB 00 00 00 20 70           ... p
; ----------------------------------------------------------------------------
        bvc     UpperFixedEngine_Branch_FA2A    ; F9D0 50 58                    PX
        pha                                     ; F9D2 48                       H
        brk                                     ; F9D3 00                       .
        db   $00,$00,$20,$70,$50,$58,$48,$00 ; F9D4 00 00 20 70 50 58 48 00  .. pPXH.
        db   $00,$00,$49,$49,$48,$48,$48,$00 ; F9DC 00 00 49 49 48 48 48 00  ..IIHHH.
        db   $00,$00,$49,$49,$48,$48,$48,$00 ; F9E4 00 00 49 49 48 48 48 00  ..IIHHH.
        db   $00,$00,$02,$86,$84,$CC,$48,$00 ; F9EC 00 00 02 86 84 CC 48 00  ......H.
        db   $00,$00,$02,$86                 ; F9F4 00 00 02 86              ....
; ----------------------------------------------------------------------------
        sty     $CC                             ; F9F8 84 CC                    ..
        pha                                     ; F9FA 48                       H
        rti                                     ; F9FB 40                       @
; ----------------------------------------------------------------------------
        db   $7E,$60,$60,$60,$60,$60,$3F,$40 ; F9FC 7E 60 60 60 60 60 3F 40  ~`````?@
        db   $7E,$60,$60,$60,$60,$60,$3F,$4E ; FA04 7E 60 60 60 60 60 3F 4E  ~`````?N
        db   $47,$47,$43,$43,$41,$41,$40,$4E ; FA0C 47 47 43 43 41 41 40 4E  GGCCAA@N
        db   $47,$47,$43,$43,$41,$41,$40,$48 ; FA14 47 47 43 43 41 41 40 48  GGCCAA@H
        db   $4C,$4C,$CC,$CC,$CC,$CD,$8D,$48 ; FA1C 4C 4C CC CC CC CD 8D 48  LL.....H
        db   $4C,$4C,$CC,$CC,$CC,$CD         ; FA24 4C 4C CC CC CC CD        LL....
; ----------------------------------------------------------------------------
UpperFixedEngine_Branch_FA2A:
        sta     $3878                           ; FA2A 8D 78 38                 .x8
        db   $7C,$4C,$CE,$86,$87,$03,$78,$38 ; FA2D 7C 4C CE 86 87 03 78 38  |L....x8
        db   $7C,$4C,$CE,$86,$87,$03,$ED,$80 ; FA35 7C 4C CE 86 87 03 ED 80  |L......
        db   $02,$90,$80,$20,$82,$80,$FF,$FF ; FA3D 02 90 80 20 82 80 FF FF  ... ....
        db   $FF,$EF,$FF,$FF,$FF,$FF,$5D,$00 ; FA45 FF EF FF FF FF FF 5D 00  ......].
        db   $20,$00,$00,$08,$00,$00,$FF,$FF ; FA4D 20 00 00 08 00 00 FF FF   .......
        db   $DF,$FF,$FF,$FF,$FF,$FF,$AF,$00 ; FA55 DF FF FF FF FF FF AF 00  ........
        db   $08,$00,$80,$02,$00,$00,$FF,$FF ; FA5D 08 00 80 02 00 00 FF FF  ........
        db   $FF,$FF,$FF,$FD,$FF,$FF,$7D,$83 ; FA65 FF FF FF FD FF FF 7D 83  ......}.
        db   $0B,$41,$03,$09,$21,$01,$FF,$FF ; FA6D 0B 41 03 09 21 01 FF FF  .A..!...
        db   $FF,$FF,$FF,$FF,$DF,$FF,$80,$A0 ; FA75 FF FF FF FF DF FF 80 A0  ........
        db   $84,$80,$80,$84,$40,$80,$FF,$FF ; FA7D 84 80 80 84 40 80 FF FF  ....@...
        db   $FB,$FF,$FF,$FF,$FF,$FF,$00,$02 ; FA85 FB FF FF FF FF FF 00 02  ........
        db   $40,$00,$00,$08,$00,$00,$FF,$FF ; FA8D 40 00 00 08 00 00 FF FF  @.......
        db   $FF,$FF,$FF,$F7,$FF,$FF,$00,$04 ; FA95 FF FF FF F7 FF FF 00 04  ........
        db   $10,$00,$40,$04,$00,$00,$FF,$FF ; FA9D 10 00 40 04 00 00 FF FF  ..@.....
        db   $EF,$FF,$FF,$FF,$FF,$FF,$01,$03 ; FAA5 EF FF FF FF FF FF 01 03  ........
        db   $25,$01,$01,$09,$01,$01,$FF,$FF ; FAAD 25 01 01 09 01 01 FF FF  %.......
        db   $FB,$FF,$FF,$FF,$FF,$FF,$80,$90 ; FAB5 FB FF FF FF FF FF 80 90  ........
        db   $82,$00,$A0,$80,$88,$C0,$FF,$FF ; FABD 82 00 A0 80 88 C0 FF FF  ........
        db   $FD,$FF,$DF,$FF,$FF,$FF,$00,$00 ; FAC5 FD FF DF FF FF FF 00 00  ........
        db   $12,$00,$00                     ; FACD 12 00 00                 ...
; ----------------------------------------------------------------------------
        rti                                     ; FAD0 40                       @
; ----------------------------------------------------------------------------
        db   $00,$00,$FF,$FF,$FD,$FF,$FF,$FF ; FAD1 00 00 FF FF FD FF FF FF  ........
        db   $FF,$FF,$00,$04,$00,$40,$00,$00 ; FAD9 FF FF 00 04 00 40 00 00  .....@..
        db   $08,$00,$FF,$FB,$FF,$FF,$FF,$FF ; FAE1 08 00 FF FB FF FF FF FF  ........
        db   $FF,$FF,$01,$21,$03,$11,$01,$41 ; FAE9 FF FF 01 21 03 11 01 41  ...!...A
        db   $01,$03,$FF,$FF,$FF,$EF,$FF,$FF ; FAF1 01 03 FF FF FF EF FF FF  ........
        db   $FF,$FF,$80,$82,$80,$10,$84,$80 ; FAF9 FF FF 80 82 80 10 84 80  ........
        db   $55,$FF,$FF,$FD,$FF,$EF,$FF,$FF ; FB01 55 FF FF FD FF EF FF FF  U.......
        db   $FF,$FF,$00,$00,$08,$00,$02,$00 ; FB09 FF FF 00 00 08 00 02 00  ........
        db   $B6,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FB11 B6 FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$00,$00,$00,$22,$00,$00 ; FB19 FF FF 00 00 00 22 00 00  ....."..
        db   $CB,$FF,$FF,$FF,$FF,$DF,$FF,$FF ; FB21 CB FF FF FF FF DF FF FF  ........
        db   $FF,$FF,$21,$01,$01,$11,$45,$01 ; FB29 FF FF 21 01 01 11 45 01  ..!...E.
        db   $97,$FE,$DF,$FF,$FF,$EF,$FF,$FF ; FB31 97 FE DF FF FF EF FF FF  ........
        db   $FF,$FF,$D6,$00,$04,$20,$00,$14 ; FB39 FF FF D6 00 04 20 00 14  ..... ..
        db   $00,$AB,$FF,$FF,$FF,$DF,$FF,$FB ; FB41 00 AB FF FF FF DF FF FB  ........
        db   $FF,$FF,$00,$00,$00,$00,$00,$00 ; FB49 FF FF 00 00 00 00 00 00  ........
        db   $00,$00,$F0,$F0,$F0,$F0,$00,$00 ; FB51 00 00 F0 F0 F0 F0 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; FB59 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$C0,$C0,$00,$00,$00,$00 ; FB61 00 00 C0 C0 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; FB69 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$80,$00,$00,$00,$00,$00 ; FB71 00 00 80 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; FB79 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; FB81 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$38,$6C             ; FB89 00 00 00 38 6C           ...8l
; ----------------------------------------------------------------------------
        jmp     ($C6C6)                         ; FB8E 6C C6 C6                 l..
; ----------------------------------------------------------------------------
        db   $C6,$C6,$FE,$C6,$C6,$C6,$C6,$C6 ; FB91 C6 C6 FE C6 C6 C6 C6 C6  ........
        db   $C6,$C6,$00,$F8,$CC,$CE,$C6,$C6 ; FB99 C6 C6 00 F8 CC CE C6 C6  ........
        db   $C6,$C4,$F8,$C4,$C6,$C6,$C6,$CE ; FBA1 C6 C4 F8 C4 C6 C6 C6 CE  ........
        db   $CC,$F8,$00,$38,$6C,$EE,$C6,$C6 ; FBA9 CC F8 00 38 6C EE C6 C6  ...8l...
        db   $C0,$C0,$C0,$C0,$C6,$C6,$C6,$EE ; FBB1 C0 C0 C0 C0 C6 C6 C6 EE  ........
        db   $6C,$38,$00,$F8,$CC,$C6,$C6,$C6 ; FBB9 6C 38 00 F8 CC C6 C6 C6  l8......
        db   $C6,$C6,$C6,$C6,$C6,$C6,$C6,$C6 ; FBC1 C6 C6 C6 C6 C6 C6 C6 C6  ........
        db   $CC,$F8,$00,$FE,$C0,$C0,$C0,$C0 ; FBC9 CC F8 00 FE C0 C0 C0 C0  ........
        db   $C0,$C4,$FC,$C4,$C0,$C0,$C0,$C0 ; FBD1 C0 C4 FC C4 C0 C0 C0 C0  ........
        db   $C0,$FE,$00,$FE,$C0,$C0,$C0,$C0 ; FBD9 C0 FE 00 FE C0 C0 C0 C0  ........
        db   $C0,$C4,$FC,$C4,$C0,$C0,$C0,$C0 ; FBE1 C0 C4 FC C4 C0 C0 C0 C0  ........
        db   $C0,$C0,$00,$38,$6C,$EE,$C6,$C6 ; FBE9 C0 C0 00 38 6C EE C6 C6  ...8l...
        db   $C0,$D0,$DE,$D6,$C6,$C6,$C6,$EE ; FBF1 C0 D0 DE D6 C6 C6 C6 EE  ........
        db   $6E,$3A,$00,$C6,$C6,$C6,$C6,$C6 ; FBF9 6E 3A 00 C6 C6 C6 C6 C6  n:......
        db   $C6,$C6,$FE,$C6,$C6,$C6,$C6,$C6 ; FC01 C6 C6 FE C6 C6 C6 C6 C6  ........
        db   $C6,$C6,$00,$3C,$18,$18,$18,$18 ; FC09 C6 C6 00 3C 18 18 18 18  ...<....
        db   $18,$18,$18,$18,$18,$18,$18,$18 ; FC11 18 18 18 18 18 18 18 18  ........
        db   $18,$3C,$00,$7E,$18,$18,$18,$18 ; FC19 18 3C 00 7E 18 18 18 18  .<.~....
        db   $18,$18,$18,$18,$18,$18,$18,$D8 ; FC21 18 18 18 18 18 18 18 D8  ........
        db   $F8,$70,$00,$C4,$CC,$CC,$D8,$D8 ; FC29 F8 70 00 C4 CC CC D8 D8  .p......
        db   $F0,$F0,$F0,$F0,$D8,$D8,$CC,$CC ; FC31 F0 F0 F0 F0 D8 D8 CC CC  ........
        db   $C6,$C6,$00,$C0,$C0,$C0,$C0,$C0 ; FC39 C6 C6 00 C0 C0 C0 C0 C0  ........
        db   $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0 ; FC41 C0 C0 C0 C0 C0 C0 C0 C0  ........
        db   $C6,$FE,$00,$C6,$C6,$C6,$EE,$EE ; FC49 C6 FE 00 C6 C6 C6 EE EE  ........
        db   $FE,$FE,$D6,$D6,$C6,$C6,$C6,$C6 ; FC51 FE FE D6 D6 C6 C6 C6 C6  ........
        db   $C6,$C6,$00,$C6,$C6,$E6,$E6,$E6 ; FC59 C6 C6 00 C6 C6 E6 E6 E6  ........
        db   $F6,$F6,$F6,$DE,$DE,$DE,$CE,$CE ; FC61 F6 F6 F6 DE DE DE CE CE  ........
        db   $C6,$C6,$00,$38,$6C,$EE,$C6,$C6 ; FC69 C6 C6 00 38 6C EE C6 C6  ...8l...
        db   $C6,$C6,$C6,$C6,$C6,$C6,$C6,$EE ; FC71 C6 C6 C6 C6 C6 C6 C6 EE  ........
        db   $6C,$38,$00,$F8,$CC,$C6,$C6,$C6 ; FC79 6C 38 00 F8 CC C6 C6 C6  l8......
        db   $C6,$CC,$F8,$C0,$C0,$C0,$C0,$C0 ; FC81 C6 CC F8 C0 C0 C0 C0 C0  ........
        db   $C0,$C0,$00,$38,$6C,$EE,$C6,$C6 ; FC89 C0 C0 00 38 6C EE C6 C6  ...8l...
        db   $C6,$C6,$C6,$C6,$C6,$DE,$DE,$EE ; FC91 C6 C6 C6 C6 C6 DE DE EE  ........
        db   $6C,$3A,$00,$F8,$CC,$C6,$C6,$C6 ; FC99 6C 3A 00 F8 CC C6 C6 C6  l:......
        db   $C6,$CC,$F8,$D8,$D8,$CC,$CC,$C6 ; FCA1 C6 CC F8 D8 D8 CC CC C6  ........
        db   $C6,$C2,$00,$38,$6C,$C6,$C0,$C0 ; FCA9 C6 C2 00 38 6C C6 C0 C0  ...8l...
        db   $C0,$60,$38,$0C,$06,$06,$06,$C6 ; FCB1 C0 60 38 0C 06 06 06 C6  .`8.....
        db   $6C,$38,$00,$7E,$5A,$18,$18,$18 ; FCB9 6C 38 00 7E 5A 18 18 18  l8.~Z...
        db   $18,$18,$18,$18,$18,$18,$18,$18 ; FCC1 18 18 18 18 18 18 18 18  ........
        db   $18,$18,$00,$C6,$C6,$C6,$C6,$C6 ; FCC9 18 18 00 C6 C6 C6 C6 C6  ........
        db   $C6,$C6,$C6,$C6,$C6,$C6,$C6,$EE ; FCD1 C6 C6 C6 C6 C6 C6 C6 EE  ........
        db   $6C,$38,$00,$C6,$C6,$C6,$C6,$C6 ; FCD9 6C 38 00 C6 C6 C6 C6 C6  l8......
        db   $C6,$EE,$6C,$6C,$6C,$6C,$38,$38 ; FCE1 C6 EE 6C 6C 6C 6C 38 38  ..llll88
        db   $10,$10,$00,$C6,$C6,$C6,$C6,$C6 ; FCE9 10 10 00 C6 C6 C6 C6 C6  ........
        db   $C6,$D6,$D6,$FE,$FE,$EE,$EE,$C6 ; FCF1 C6 D6 D6 FE FE EE EE C6  ........
        db   $C6                             ; FCF9 C6                       .
; ----------------------------------------------------------------------------
        dec     $00                           ; FCFA C6 00                    ..
        dec     $C6                             ; FCFC C6 C6                    ..
        dec     $6C                             ; FCFE C6 6C                    .l
        jmp     ($387C)                         ; FD00 6C 7C 38                 l|8
; ----------------------------------------------------------------------------
        db   $38,$38,$7C,$6C,$6C,$C6,$C6,$C6 ; FD03 38 38 7C 6C 6C C6 C6 C6  88|ll...
        db   $00,$C6,$C6,$C6,$C6,$C6,$C6,$6C ; FD0B 00 C6 C6 C6 C6 C6 C6 6C  .......l
        db   $38,$18,$18,$18,$18,$18,$18,$18 ; FD13 38 18 18 18 18 18 18 18  8.......
        db   $00,$FE,$86,$06,$0C,$0C,$18,$18 ; FD1B 00 FE 86 06 0C 0C 18 18  ........
        db   $10,$30,$30,$60,$60,$C0,$C2,$FE ; FD23 10 30 30 60 60 C0 C2 FE  .00``...
        db   $00,$07,$1C,$38,$33,$63,$66,$66 ; FD2B 00 07 1C 38 33 63 66 66  ...83cff
        db   $66,$66,$66,$67,$33,$38,$1C,$07 ; FD33 66 66 66 67 33 38 1C 07  fffg38..
        db   $00,$C0,$70,$38,$98,$CC,$CC,$0C ; FD3B 00 C0 70 38 98 CC CC 0C  ..p8....
        db   $0C,$0C,$CC,$CC,$98,$38,$70,$C0 ; FD43 0C 0C CC CC 98 38 70 C0  .....8p.
        db   $00,$FF,$77,$77,$77,$77,$73,$73 ; FD4B 00 FF 77 77 77 77 73 73  ..wwwwss
        db   $73,$73,$71,$71,$71,$71,$70,$F8 ; FD53 73 73 71 71 71 71 70 F8  ssqqqqp.
        db   $00,$FE,$1C,$1C,$1C,$1C,$B8,$B8 ; FD5B 00 FE 1C 1C 1C 1C B8 B8  ........
        db   $B8,$B8,$F0,$F0,$F0,$F0,$E0,$E0 ; FD63 B8 B8 F0 F0 F0 F0 E0 E0  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; FD6B 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$30,$30,$10,$20 ; FD73 00 00 00 00 30 30 10 20  ....00.
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; FD7B 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$30,$30,$00,$00 ; FD83 00 00 00 00 30 30 00 00  ....00..
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; FD8B 00 00 00 00 00 00 00 00  ........
        db   $FC,$30,$30,$30,$30,$30,$30,$30 ; FD93 FC 30 30 30 30 30 30 30  .0000000
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; FD9B 00 00 00 00 00 00 00 00  ........
        db   $82,$C6,$EE,$FE,$D6,$C6,$C6,$C6 ; FDA3 82 C6 EE FE D6 C6 C6 C6  ........
        db   $00,$18,$18,$38,$38,$18,$18,$18 ; FDAB 00 18 18 38 38 18 18 18  ...88...
        db   $18,$18,$18,$18,$18,$18,$18,$3C ; FDB3 18 18 18 18 18 18 18 3C  .......<
        db   $00,$38,$6C,$6C,$6C,$6C,$6C,$6C ; FDBB 00 38 6C 6C 6C 6C 6C 6C  .8llllll
        db   $3C,$0C,$0C,$0C,$0C,$0C,$6C,$38 ; FDC3 3C 0C 0C 0C 0C 0C 6C 38  <.....l8
        db   $00,$38,$6C,$6C,$6C,$6C,$6C,$6C ; FDCB 00 38 6C 6C 6C 6C 6C 6C  .8llllll
        db   $6C,$6C,$6C,$6C,$6C,$6C,$6C,$38 ; FDD3 6C 6C 6C 6C 6C 6C 6C 38  lllllll8
        db   $00,$38,$6C,$6C,$0C,$0C,$0C,$18 ; FDDB 00 38 6C 6C 0C 0C 0C 18  .8ll....
        db   $18,$30,$30,$30,$60,$60,$64,$7C ; FDE3 18 30 30 30 60 60 64 7C  .000``d|
        db   $00,$A0,$14,$00,$44,$00,$20,$00 ; FDEB 00 A0 14 00 44 00 20 00  ....D. .
        db   $01,$80,$00,$00,$00,$00,$00,$00 ; FDF3 01 80 00 00 00 00 00 00  ........
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_FDFB:
        jsr     UpperFixedEngine_Entry_FE6B     ; FDFB 20 6B FE                  k.
        jsr     UpperFixedEngine_Entry_FE52     ; FDFE 20 52 FE                  R.
        jsr     UpperFixedEngine_Entry_FE27     ; FE01 20 27 FE                  '.
        jsr     UpperFixedEngine_Entry_FE52     ; FE04 20 52 FE                  R.
        jsr     UpperFixedEngine_Entry_FE0B     ; FE07 20 0B FE                  ..
        rts                                     ; FE0A 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_FE0B:
        ldx     #$08                            ; FE0B A2 08                    ..
UpperFixedEngine_Branch_FE0D:
        jsr     UpperFixedEngine_Entry_FE1A     ; FE0D 20 1A FE                  ..
        jsr     UpperFixedEngine_Entry_FE1A     ; FE10 20 1A FE                  ..
        jsr     WaitForNmi                      ; FE13 20 74 FF                  t.
        dex                                     ; FE16 CA                       .
        bne     UpperFixedEngine_Branch_FE0D    ; FE17 D0 F4                    ..
        rts                                     ; FE19 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_FE1A:
        inc     $0210                           ; FE1A EE 10 02                 ...
        inc     $0214                           ; FE1D EE 14 02                 ...
        inc     $0218                           ; FE20 EE 18 02                 ...
        inc     $021C                           ; FE23 EE 1C 02                 ...
        rts                                     ; FE26 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_FE27:
        ldy     #$10                            ; FE27 A0 10                    ..
        ldx     #$00                            ; FE29 A2 00                    ..
UpperFixedEngine_Branch_FE2B:
        iny                                     ; FE2B C8                       .
        lda     $FE42,x                         ; FE2C BD 42 FE                 .B.
        sta     $0200,y                         ; FE2F 99 00 02                 ...
        inx                                     ; FE32 E8                       .
        iny                                     ; FE33 C8                       .
        lda     $FE42,x                         ; FE34 BD 42 FE                 .B.
        sta     $0200,y                         ; FE37 99 00 02                 ...
        inx                                     ; FE3A E8                       .
        iny                                     ; FE3B C8                       .
        iny                                     ; FE3C C8                       .
        cpy     #$30                            ; FE3D C0 30                    .0
        bcc     UpperFixedEngine_Branch_FE2B    ; FE3F 90 EA                    ..
        rts                                     ; FE41 60                       `
; ----------------------------------------------------------------------------
        db   $00,$01,$00,$41,$01,$01,$01,$41 ; FE42 00 01 00 41 01 01 01 41  ...A...A
        db   $02,$02,$02,$42,$03,$02,$03,$42 ; FE4A 02 02 02 42 03 02 03 42  ...B...B
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_FE52:
        ldx     #$10                            ; FE52 A2 10                    ..
UpperFixedEngine_Branch_FE54:
        jsr     UpperFixedEngine_Entry_FE5E     ; FE54 20 5E FE                  ^.
        jsr     WaitForNmi                      ; FE57 20 74 FF                  t.
        dex                                     ; FE5A CA                       .
        bne     UpperFixedEngine_Branch_FE54    ; FE5B D0 F7                    ..
        rts                                     ; FE5D 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_FE5E:
        dec     $0210                           ; FE5E CE 10 02                 ...
        dec     $0214                           ; FE61 CE 14 02                 ...
        dec     $0218                           ; FE64 CE 18 02                 ...
        dec     $021C                           ; FE67 CE 1C 02                 ...
        rts                                     ; FE6A 60                       `
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_FE6B:
        lda     #$80                            ; FE6B A9 80                    ..
        sta     $0300                           ; FE6D 8D 00 03                 ...
        lda     #$40                            ; FE70 A9 40                    .@
        sta     $0301                           ; FE72 8D 01 03                 ...
        lda     #$00                            ; FE75 A9 00                    ..
        sta     NextTextCharacter               ; FE77 8D 02 03                 ...
        ldx     #$00                            ; FE7A A2 00                    ..
UpperFixedEngine_Branch_FE7C:
        lda     $FE8D,x                         ; FE7C BD 8D FE                 ...
        sta     $0303,x                         ; FE7F 9D 03 03                 ...
        inx                                     ; FE82 E8                       .
        cpx     #$40                            ; FE83 E0 40                    .@
        bcc     UpperFixedEngine_Branch_FE7C    ; FE85 90 F5                    ..
        inc     $050B                           ; FE87 EE 0B 05                 ...
        jmp     UpperFixedEngine_Entry_C626     ; FE8A 4C 26 C6                 L&.
; ----------------------------------------------------------------------------
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; FE8D 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$03,$07,$0F,$0F ; FE95 00 00 00 00 03 07 0F 0F  ........
        db   $00,$00,$34,$3B,$1B,$00,$0C,$0E ; FE9D 00 00 34 3B 1B 00 0C 0E  ..4;....
        db   $0F,$0F,$03,$1F,$1F,$07,$03,$01 ; FEA5 0F 0F 03 1F 1F 07 03 01  ........
        db   $1E,$1B,$1F,$1F,$3F,$3F,$3F,$3F ; FEAD 1E 1B 1F 1F 3F 3F 3F 3F  ....????
        db   $01,$07,$02,$1A,$31,$3B,$38,$3C ; FEB5 01 07 02 1A 31 3B 38 3C  ....1;8<
        db   $17,$23,$03,$03,$3F,$3F,$3F,$1E ; FEBD 17 23 03 03 3F 3F 3F 1E  .#..???.
        db   $1F,$3D,$3D,$3D,$3D,$15,$3F,$00 ; FEC5 1F 3D 3D 3D 3D 15 3F 00  .====.?.
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_FECD:
        lda     $0508                           ; FECD AD 08 05                 ...
        sta     $7B                             ; FED0 85 7B                    .{
        sta     $7C                             ; FED2 85 7C                    .|
        lda     #$00                            ; FED4 A9 00                    ..
        sta     $7F                             ; FED6 85 7F                    ..
        lda     #$C1                            ; FED8 A9 C1                    ..
        sta     $0200                           ; FEDA 8D 00 02                 ...
        lda     #$00                            ; FEDD A9 00                    ..
        sta     $0201                           ; FEDF 8D 01 02                 ...
        lda     #$20                            ; FEE2 A9 20                    .
        sta     $0202                           ; FEE4 8D 02 02                 ...
        lda     #$C0                            ; FEE7 A9 C0                    ..
        sta     $0203                           ; FEE9 8D 03 02                 ...
        lda     #$80                            ; FEEC A9 80                    ..
        sta     $0300                           ; FEEE 8D 00 03                 ...
        lda     #$16                            ; FEF1 A9 16                    ..
        sta     $0301                           ; FEF3 8D 01 03                 ...
        lda     #$00                            ; FEF6 A9 00                    ..
        sta     NextTextCharacter               ; FEF8 8D 02 03                 ...
        lda     #$FF                            ; FEFB A9 FF                    ..
        ldx     #$0F                            ; FEFD A2 0F                    ..
        sta     $0303,x                         ; FEFF 9D 03 03                 ...
        dex                                     ; FF02 CA                       .
        bpl     $FEFF                           ; FF03 10 FA                    ..
        lda     #$0F                            ; FF05 A9 0F                    ..
        jsr     WriteMmc1Control                ; FF07 20 18 C1                  ..
        inc     $050B                           ; FF0A EE 0B 05                 ...
        jmp     UpperFixedEngine_Entry_C626     ; FF0D 4C 26 C6                 L&.
; ----------------------------------------------------------------------------
UpperFixedEngine_Entry_FF10:
        ldy     #$02                            ; FF10 A0 02                    ..
        ldx     #$00                            ; FF12 A2 00                    ..
        nop                                     ; FF14 EA                       .
        dex                                     ; FF15 CA                       .
        bne     $FF14                           ; FF16 D0 FC                    ..
        dey                                     ; FF18 88                       .
        bne     $FF14                           ; FF19 D0 F9                    ..
        bit     PPUSTATUS                       ; FF1B 2C 02 20                 ,.
        bvc     $FF1B                           ; FF1E 50 FB                    P.
        lda     $7B                             ; FF20 A5 7B                    .{
        sta     PPUSCROLL                       ; FF22 8D 05 20                 ..
        lda     #$80                            ; FF25 A9 80                    ..
        sta     PPUSCROLL                       ; FF27 8D 05 20                 ..
        ldy     #$01                            ; FF2A A0 01                    ..
        ldx     #$00                            ; FF2C A2 00                    ..
        nop                                     ; FF2E EA                       .
        dex                                     ; FF2F CA                       .
        bne     $FF2E                           ; FF30 D0 FC                    ..
        dey                                     ; FF32 88                       .
        bne     $FF2E                           ; FF33 D0 F9                    ..
        lda     $7C                             ; FF35 A5 7C                    .|
        sta     PPUSCROLL                       ; FF37 8D 05 20                 ..
        lda     #$00                            ; FF3A A9 00                    ..
        sta     PPUSCROLL                       ; FF3C 8D 05 20                 ..
        lda     $7F                             ; FF3F A5 7F                    ..
        and     #$03                            ; FF41 29 03                    ).
        bne     $FF4C                           ; FF43 D0 07                    ..
        lda     $7B                             ; FF45 A5 7B                    .{
        clc                                     ; FF47 18                       .
        adc     #$01                            ; FF48 69 01                    i.
        sta     $7B                             ; FF4A 85 7B                    .{
        lda     $7F                             ; FF4C A5 7F                    ..
        and     #$01                            ; FF4E 29 01                    ).
        bne     $FF59                           ; FF50 D0 07                    ..
        lda     $7C                             ; FF52 A5 7C                    .|
        clc                                     ; FF54 18                       .
        adc     #$01                            ; FF55 69 01                    i.
        sta     $7C                             ; FF57 85 7C                    .|
        inc     $7F                             ; FF59 E6 7F                    ..
        jmp     WaitForNmi                      ; FF5B 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
        db   $01,$02,$04,$08,$10,$20,$40,$80 ; FF5E 01 02 04 08 10 20 40 80  ..... @.
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FF66 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF         ; FF6E FF FF FF FF FF FF        ......
; ----------------------------------------------------------------------------
WaitForNmi:
        lda     $050C                           ; FF74 AD 0C 05                 ...
        nop                                     ; FF77 EA                       .
        nop                                     ; FF78 EA                       .
        inc     $12                             ; FF79 E6 12                    ..
        cmp     $050C                           ; FF7B CD 0C 05                 ...
        beq     $FF77                           ; FF7E F0 F7                    ..
        nop                                     ; FF80 EA                       .
        nop                                     ; FF81 EA                       .
        jsr     UpperFixedEngine_Entry_C913     ; FF82 20 13 C9                  ..
        rts                                     ; FF85 60                       `
; ----------------------------------------------------------------------------
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FF86 FF FF FF FF FF FF FF FF  ........
; ----------------------------------------------------------------------------
        jmp     ResetMain                       ; FF8E 4C 3D C0                 L=.
; ----------------------------------------------------------------------------
SelectPrgBank:
        sta     $0507                           ; FF91 8D 07 05                 ...
UpperFixedEngine_Entry_FF94:
        pha                                     ; FF94 48                       H
        lda     $0501                           ; FF95 AD 01 05                 ...
        and     #$EF                            ; FF98 29 EF                    ).
        sta     $0501                           ; FF9A 8D 01 05                 ...
        pla                                     ; FF9D 68                       h
        pha                                     ; FF9E 48                       H
        and     #$10                            ; FF9F 29 10                    ).
        ora     $0501                           ; FFA1 0D 01 05                 ...
        sta     $0501                           ; FFA4 8D 01 05                 ...
        pla                                     ; FFA7 68                       h
        and     #$0F                            ; FFA8 29 0F                    ).
        nop                                     ; FFAA EA                       .
        nop                                     ; FFAB EA                       .
        sta     $FFFF                           ; FFAC 8D FF FF                 ...
        lsr     a                               ; FFAF 4A                       J
        sta     $FFFF                           ; FFB0 8D FF FF                 ...
        lsr     a                               ; FFB3 4A                       J
        sta     $FFFF                           ; FFB4 8D FF FF                 ...
        lsr     a                               ; FFB7 4A                       J
        sta     $FFFF                           ; FFB8 8D FF FF                 ...
        lsr     a                               ; FFBB 4A                       J
        sta     $FFFF                           ; FFBC 8D FF FF                 ...
        lda     $0501                           ; FFBF AD 01 05                 ...
        sta     $BFFF                           ; FFC2 8D FF BF                 ...
        lsr     a                               ; FFC5 4A                       J
        sta     $BFFF                           ; FFC6 8D FF BF                 ...
        lsr     a                               ; FFC9 4A                       J
        sta     $BFFF                           ; FFCA 8D FF BF                 ...
        lsr     a                               ; FFCD 4A                       J
        sta     $BFFF                           ; FFCE 8D FF BF                 ...
        lsr     a                               ; FFD1 4A                       J
        sta     $BFFF                           ; FFD2 8D FF BF                 ...
        nop                                     ; FFD5 EA                       .
        nop                                     ; FFD6 EA                       .
        rts                                     ; FFD7 60                       `
; ----------------------------------------------------------------------------
Reset:
        sei                                     ; FFD8 78                       x
        inc     $FFDF                           ; FFD9 EE DF FF                 ...
        jmp     ResetMain                       ; FFDC 4C 3D C0                 L=.
; ----------------------------------------------------------------------------
        db   $80,$44,$52,$41,$47,$4F,$4E,$20 ; FFDF 80 44 52 41 47 4F 4E 20  .DRAGON
        db   $51,$55,$45,$53,$54,$20,$49,$56 ; FFE7 51 55 45 53 54 20 49 56  QUEST IV
        db   $20,$FF,$FF,$00,$00,$48,$04,$01 ; FFEF 20 FF FF 00 00 48 04 01   ....H..
        db   $0F,$07,$9D                     ; FFF7 0F 07 9D                 ...
CpuVectors:
        db   $02,$05,$D8,$FF,$08             ; FFFA 02 05 D8 FF 08           .....
        db   $C4                             ; FFFF C4                       .
Bank1F_End:
