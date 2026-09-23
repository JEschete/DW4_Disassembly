; PRG bank $0F: ROM file $03C010-$04000F
; CPU window $C000-$FFFF
; Disassembled by project-local da65 using generated code/data ranges.

base $C000
Bank0F_Start:
; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------
Bank0F_LowerFixedEngine:
        db   $FF                             ; C000 FF                       .
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C001:
        jmp     LowerFixedEngine_Branch_E9CE    ; C001 4C CE E9                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C004:
        jmp     LowerFixedEngine_Branch_E54B    ; C004 4C 4B E5                 LK.
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C007:
        jmp     LowerFixedEngine_Branch_F1AB    ; C007 4C AB F1                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C00A:
        jmp     LowerFixedEngine_Branch_EFDB    ; C00A 4C DB EF                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C00D:
        jmp     LowerFixedEngine_Branch_EFD7    ; C00D 4C D7 EF                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C010:
        jmp     LowerFixedEngine_Branch_F1FA    ; C010 4C FA F1                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C013:
        jmp     LowerFixedEngine_Branch_F223    ; C013 4C 23 F2                 L#.
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C016:
        jmp     LowerFixedEngine_Branch_E944    ; C016 4C 44 E9                 LD.
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C019:
        brk                                     ; C019 00                       .
        db   $00,$00                         ; C01A 00 00                    ..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C01C:
        brk                                     ; C01C 00                       .
        db   $00,$00                         ; C01D 00 00                    ..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C01F:
        brk                                     ; C01F 00                       .
        db   $00,$00                         ; C020 00 00                    ..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C022:
        brk                                     ; C022 00                       .
        db   $00,$00                         ; C023 00 00                    ..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C025:
        brk                                     ; C025 00                       .
        db   $00,$00                         ; C026 00 00                    ..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C028:
        brk                                     ; C028 00                       .
        db   $00,$00                         ; C029 00 00                    ..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C02B:
        brk                                     ; C02B 00                       .
        db   $00,$00                         ; C02C 00 00                    ..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C02E:
        jmp     LowerFixedEngine_Branch_F4AB    ; C02E 4C AB F4                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C031:
        jmp     LowerFixedEngine_Branch_F58A    ; C031 4C 8A F5                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C034:
        jmp     LowerFixedEngine_Branch_F58B    ; C034 4C 8B F5                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C037:
        jmp     LowerFixedEngine_Branch_FABE    ; C037 4C BE FA                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C03A:
        jmp     LowerFixedEngine_Branch_FABE    ; C03A 4C BE FA                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_C03D:
        cld                                     ; C03D D8                       .
LowerFixedEngine_Branch_C03E:
        lda     PPUSTATUS                       ; C03E AD 02 20                 ..
        bpl     LowerFixedEngine_Branch_C03E    ; C041 10 FB                    ..
LowerFixedEngine_Branch_C043:
        lda     PPUSTATUS                       ; C043 AD 02 20                 ..
        bpl     LowerFixedEngine_Branch_C043    ; C046 10 FB                    ..
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
LowerFixedEngine_Branch_C07E:
        sta     $00,x                           ; C07E 95 00                    ..
        sta     $0300,x                         ; C080 9D 00 03                 ...
        sta     $0400,x                         ; C083 9D 00 04                 ...
        sta     $0505,x                         ; C086 9D 05 05                 ...
        sta     $0600,x                         ; C089 9D 00 06                 ...
        sta     $0700,x                         ; C08C 9D 00 07                 ...
        inx                                     ; C08F E8                       .
        bne     LowerFixedEngine_Branch_C07E    ; C090 D0 EC                    ..
        lda     #$0E                            ; C092 A9 0E                    ..
        sta     $0500                           ; C094 8D 00 05                 ...
        lda     #$10                            ; C097 A9 10                    ..
        sta     $0501                           ; C099 8D 01 05                 ...
        sta     $39                             ; C09C 85 39                    .9
        jsr     LowerFixedEngine_Entry_C104     ; C09E 20 04 C1                  ..
        lda     PPUSTATUS                       ; C0A1 AD 02 20                 ..
        lda     #$10                            ; C0A4 A9 10                    ..
        sta     PPUADDR                         ; C0A6 8D 06 20                 ..
        lda     #$00                            ; C0A9 A9 00                    ..
        sta     PPUADDR                         ; C0AB 8D 06 20                 ..
        ldx     #$10                            ; C0AE A2 10                    ..
LowerFixedEngine_Branch_C0B0:
        sta     PPUDATA                         ; C0B0 8D 07 20                 ..
        dex                                     ; C0B3 CA                       .
        bne     LowerFixedEngine_Branch_C0B0    ; C0B4 D0 FA                    ..
        lda     #$90                            ; C0B6 A9 90                    ..
        sta     $0505                           ; C0B8 8D 05 05                 ...
        sta     PPUCTRL                         ; C0BB 8D 00 20                 ..
        jsr     LowerFixedEngine_Entry_C569     ; C0BE 20 69 C5                  i.
        jsr     LowerFixedEngine_Entry_C543     ; C0C1 20 43 C5                  C.
        jsr     LowerFixedEngine_Entry_FF74     ; C0C4 20 74 FF                  t.
        lda     #$18                            ; C0C7 A9 18                    ..
        sta     $0506                           ; C0C9 8D 06 05                 ...
        sta     PPUMASK                         ; C0CC 8D 01 20                 ..
        jmp     $C968                           ; C0CF 4C 68 C9                 Lh.
; ----------------------------------------------------------------------------
        db   $5A                             ; C0D2 5A                       Z
        db   $C1,$AD,$02,$20,$10,$FB,$AD,$02 ; C0D3 C1 AD 02 20 10 FB AD 02  ... ....
        db   $20,$30,$FB,$AD,$02,$20,$10,$FB ; C0DB 20 30 FB AD 02 20 10 FB   0... ..
        db   $AD,$02,$20,$30,$FB,$60,$A9,$40 ; C0E3 AD 02 20 30 FB 60 A9 40  .. 0.`.@
        db   $8D,$02,$05,$A9,$00,$8D,$FF,$FF ; C0EB 8D 02 05 A9 00 8D FF FF  ........
        db   $8D,$FF,$FF,$8D,$FF,$FF,$8D,$FF ; C0F3 8D FF FF 8D FF FF 8D FF  ........
        db   $FF,$A9,$01,$8D,$FF,$FF,$4C,$01 ; C0FB FF A9 01 8D FF FF 4C 01  ......L.
        db   $C1                             ; C103 C1                       .
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C104:
        inc     $FFDF                           ; C104 EE DF FF                 ...
        lda     $0500                           ; C107 AD 00 05                 ...
        jsr     LowerFixedEngine_Entry_C118     ; C10A 20 18 C1                  ..
        lda     $0501                           ; C10D AD 01 05                 ...
        jsr     LowerFixedEngine_Entry_C12F     ; C110 20 2F C1                  /.
        lda     #$00                            ; C113 A9 00                    ..
        jmp     $C146                           ; C115 4C 46 C1                 LF.
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C118:
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
LowerFixedEngine_Entry_C12F:
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
LowerFixedEngine_Entry_C15A:
        pha                                     ; C15A 48                       H
        txa                                     ; C15B 8A                       .
        pha                                     ; C15C 48                       H
        tya                                     ; C15D 98                       .
        pha                                     ; C15E 48                       H
        lda     $1F                             ; C15F A5 1F                    ..
        bmi     LowerFixedEngine_Branch_C181    ; C161 30 1E                    0.
        tsx                                     ; C163 BA                       .
        ldy     $0106,x                         ; C164 BC 06 01                 ...
        iny                                     ; C167 C8                       .
        bne     LowerFixedEngine_Branch_C181    ; C168 D0 17                    ..
        lda     $0105,x                         ; C16A BD 05 01                 ...
        cmp     #$77                            ; C16D C9 77                    .w
        bcc     LowerFixedEngine_Branch_C181    ; C16F 90 10                    ..
        cmp     #$81                            ; C171 C9 81                    ..
        bcs     LowerFixedEngine_Branch_C181    ; C173 B0 0C                    ..
        lda     PPUSTATUS                       ; C175 AD 02 20                 ..
        jsr     LowerFixedEngine_Entry_C222     ; C178 20 22 C2                  ".
        jsr     LowerFixedEngine_Entry_C303     ; C17B 20 03 C3                  ..
        jsr     LowerFixedEngine_Entry_C2EA     ; C17E 20 EA C2                  ..
LowerFixedEngine_Branch_C181:
        tsx                                     ; C181 BA                       .
        ldy     $0106,x                         ; C182 BC 06 01                 ...
        iny                                     ; C185 C8                       .
        bne     LowerFixedEngine_Branch_C19B    ; C186 D0 13                    ..
        lda     $0105,x                         ; C188 BD 05 01                 ...
        cmp     #$AB                            ; C18B C9 AB                    ..
        bcc     LowerFixedEngine_Branch_C19B    ; C18D 90 0C                    ..
        cmp     #$D6                            ; C18F C9 D6                    ..
        bcs     LowerFixedEngine_Branch_C19B    ; C191 B0 08                    ..
        lda     #$D6                            ; C193 A9 D6                    ..
        sta     $0105,x                         ; C195 9D 05 01                 ...
        jsr     LowerFixedEngine_Entry_C104     ; C198 20 04 C1                  ..
LowerFixedEngine_Branch_C19B:
        lda     $0519                           ; C19B AD 19 05                 ...
        bne     LowerFixedEngine_Branch_C1B0    ; C19E D0 10                    ..
        inc     $C221                           ; C1A0 EE 21 C2                 .!.
        lda     #$10                            ; C1A3 A9 10                    ..
        jsr     LowerFixedEngine_Entry_C12F     ; C1A5 20 2F C1                  /.
        lda     #$10                            ; C1A8 A9 10                    ..
        jsr     LowerFixedEngine_Entry_C12F     ; C1AA 20 2F C1                  /.
        jsr     LowerFixedEngine_Entry_C019     ; C1AD 20 19 C0                  ..
LowerFixedEngine_Branch_C1B0:
        lda     $0507                           ; C1B0 AD 07 05                 ...
        jsr     LowerFixedEngine_Entry_FF91     ; C1B3 20 91 FF                  ..
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
        bne     LowerFixedEngine_Branch_C1EF    ; C1C3 D0 2A                    .*
        lda     $0105,x                         ; C1C5 BD 05 01                 ...
        cmp     #$B9                            ; C1C8 C9 B9                    ..
        bcc     LowerFixedEngine_Branch_C1DD    ; C1CA 90 11                    ..
        cmp     #$D6                            ; C1CC C9 D6                    ..
        bcs     LowerFixedEngine_Branch_C1DD    ; C1CE B0 0D                    ..
        lda     #$D6                            ; C1D0 A9 D6                    ..
        sta     $0105,x                         ; C1D2 9D 05 01                 ...
        lda     #$00                            ; C1D5 A9 00                    ..
        jsr     LowerFixedEngine_Entry_C12F     ; C1D7 20 2F C1                  /.
        jmp     LowerFixedEngine_Branch_C1EF    ; C1DA 4C EF C1                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_C1DD:
        cmp     #$E9                            ; C1DD C9 E9                    ..
        bcc     LowerFixedEngine_Branch_C1EF    ; C1DF 90 0E                    ..
        cmp     #$FF                            ; C1E1 C9 FF                    ..
        bcs     LowerFixedEngine_Branch_C1EF    ; C1E3 B0 0A                    ..
        lda     #$FF                            ; C1E5 A9 FF                    ..
        sta     $0105,x                         ; C1E7 9D 05 01                 ...
        lda     #$10                            ; C1EA A9 10                    ..
        jsr     LowerFixedEngine_Entry_C12F     ; C1EC 20 2F C1                  /.
LowerFixedEngine_Branch_C1EF:
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
        jmp     LowerFixedEngine_Entry_C408     ; C21E 4C 08 C4                 L..
; ----------------------------------------------------------------------------
        db   $80                             ; C221 80                       .
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C222:
        lda     $1F                             ; C222 A5 1F                    ..
        and     #$20                            ; C224 29 20                    )
        bne     $C23A                           ; C226 D0 12                    ..
        lda     $1F                             ; C228 A5 1F                    ..
        and     #$10                            ; C22A 29 10                    ).
        beq     $C231                           ; C22C F0 03                    ..
        jmp     LowerFixedEngine_Branch_C297    ; C22E 4C 97 C2                 L..
; ----------------------------------------------------------------------------
        lda     $1F                             ; C231 A5 1F                    ..
        and     #$04                            ; C233 29 04                    ).
        beq     LowerFixedEngine_Branch_C276    ; C235 F0 3F                    .?
        jmp     LowerFixedEngine_Branch_C315    ; C237 4C 15 C3                 L..
; ----------------------------------------------------------------------------
        ldx     #$00                            ; C23A A2 00                    ..
        lda     $050B                           ; C23C AD 0B 05                 ...
        beq     LowerFixedEngine_Branch_C276    ; C23F F0 35                    .5
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
LowerFixedEngine_Branch_C276:
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
LowerFixedEngine_Branch_C297:
        ldx     #$00                            ; C297 A2 00                    ..
LowerFixedEngine_Branch_C299:
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
        bne     LowerFixedEngine_Branch_C299    ; C2E5 D0 B2                    ..
        jmp     LowerFixedEngine_Branch_C276    ; C2E7 4C 76 C2                 Lv.
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C2EA:
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
LowerFixedEngine_Entry_C303:
        bit     $1F                             ; C303 24 1F                    $.
        bvs     $C314                           ; C305 70 0D                    p.
        lda     $0506                           ; C307 AD 06 05                 ...
        ora     #$18                            ; C30A 09 18                    ..
        sta     PPUMASK                         ; C30C 8D 01 20                 ..
        lda     #$02                            ; C30F A9 02                    ..
        sta     OAMDMA                          ; C311 8D 14 40                 ..@
        rts                                     ; C314 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_C315:
        ldx     $051A                           ; C315 AE 1A 05                 ...
LowerFixedEngine_Branch_C318:
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
        bcc     LowerFixedEngine_Branch_C318    ; C372 90 A4                    ..
        lda     $1F                             ; C374 A5 1F                    ..
        and     #$FB                            ; C376 29 FB                    ).
        sta     $1F                             ; C378 85 1F                    ..
        rts                                     ; C37A 60                       `
; ----------------------------------------------------------------------------
        db   $22,$64,$22,$84,$22,$A4,$22,$C4 ; C37B 22 64 22 84 22 A4 22 C4  "d".".".
        db   $22,$E4,$23,$04,$23,$24,$23,$44 ; C383 22 E4 23 04 23 24 23 44  ".#.#$#D
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_C38B:
        sta     $20                             ; C38B 85 20                    .
        stx     $21                             ; C38D 86 21                    .!
        lda     $0507                           ; C38F AD 07 05                 ...
        pha                                     ; C392 48                       H
        php                                     ; C393 08                       .
        lda     $0507                           ; C394 AD 07 05                 ...
        sta     $0517                           ; C397 8D 17 05                 ...
        jsr     LowerFixedEngine_Entry_C3BA     ; C39A 20 BA C3                  ..
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
        jsr     LowerFixedEngine_Entry_FF91     ; C3B0 20 91 FF                  ..
        lda     $23                           ; C3B3 A5 23                    .#
        pha                                     ; C3B5 48                       H
        lda     $20                             ; C3B6 A5 20                    .
        plp                                     ; C3B8 28                       (
        rts                                     ; C3B9 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C3BA:
        lda     $23                           ; C3BA A5 23                    .#
        jsr     LowerFixedEngine_Entry_FF91     ; C3BC 20 91 FF                  ..
        lda     $24                             ; C3BF A5 24                    .$
        asl     a                               ; C3C1 0A                       .
        tax                                     ; C3C2 AA                       .
        lda     $8000,x                         ; C3C3 BD 00 80                 ...
        sta     $24                             ; C3C6 85 24                    .$
        lda     $8001,x                         ; C3C8 BD 01 80                 ...
        sta     $25                             ; C3CB 85 25                    .%
        rts                                     ; C3CD 60                       `
; ----------------------------------------------------------------------------
        sta     $20                             ; C3CE 85 20                    .
        stx     $21                             ; C3D0 86 21                    .!
        lda     $0507                           ; C3D2 AD 07 05                 ...
        pha                                     ; C3D5 48                       H
        jsr     LowerFixedEngine_Entry_C3BA     ; C3D6 20 BA C3                  ..
        pla                                     ; C3D9 68                       h
        jsr     LowerFixedEngine_Entry_FF91     ; C3DA 20 91 FF                  ..
        ldx     $21                             ; C3DD A6 21                    .!
        lda     $24                             ; C3DF A5 24                    .$
        sta     $00,x                           ; C3E1 95 00                    ..
        lda     $25                             ; C3E3 A5 25                    .%
        sta     $01,x                           ; C3E5 95 01                    ..
        lda     $20                             ; C3E7 A5 20                    .
        rts                                     ; C3E9 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C3EA:
        sta     $20                             ; C3EA 85 20                    .
        lda     $0507                           ; C3EC AD 07 05                 ...
        pha                                     ; C3EF 48                       H
        lda     $20                             ; C3F0 A5 20                    .
        jsr     LowerFixedEngine_Entry_FF91     ; C3F2 20 91 FF                  ..
        lda     $00,x                           ; C3F5 B5 00                    ..
        sta     $23                           ; C3F7 85 23                    .#
        lda     $01,x                           ; C3F9 B5 01                    ..
        sta     $24                             ; C3FB 85 24                    .$
        lda     ($23),y                       ; C3FD B1 23                    .#
        sta     $20                             ; C3FF 85 20                    .
        pla                                     ; C401 68                       h
        jsr     LowerFixedEngine_Entry_FF91     ; C402 20 91 FF                  ..
        lda     $20                             ; C405 A5 20                    .
        rts                                     ; C407 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C408:
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
        beq     LowerFixedEngine_Branch_C463    ; C42C F0 35                    .5
        cmp     #$03                            ; C42E C9 03                    ..
        beq     LowerFixedEngine_Branch_C460    ; C430 F0 2E                    ..
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
        bmi     LowerFixedEngine_Branch_C451    ; C442 30 0D                    0.
        sta     $24                             ; C444 85 24                    .$
        ldy     $22                             ; C446 A4 22                    ."
        ldx     $21                             ; C448 A6 21                    .!
        plp                                     ; C44A 28                       (
        pla                                     ; C44B 68                       h
        lda     $20                             ; C44C A5 20                    .
        jmp     LowerFixedEngine_Branch_C38B    ; C44E 4C 8B C3                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_C451:
        and     #$3F                            ; C451 29 3F                    )?
        sta     $24                             ; C453 85 24                    .$
        ldy     $22                             ; C455 A4 22                    ."
        ldx     $21                             ; C457 A6 21                    .!
        plp                                     ; C459 28                       (
        pla                                     ; C45A 68                       h
        lda     $20                             ; C45B A5 20                    .
        jmp     $C3CE                           ; C45D 4C CE C3                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_C460:
        jmp     LowerFixedEngine_Branch_C4F8    ; C460 4C F8 C4                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_C463:
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
        jmp     LowerFixedEngine_Branch_C38B    ; C481 4C 8B C3                 L..
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
        jmp     LowerFixedEngine_Branch_C38B    ; C49E 4C 8B C3                 L..
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
LowerFixedEngine_Branch_C4F8:
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
        bcc     LowerFixedEngine_Branch_C516    ; C50E 90 06                    ..
        cmp     #$0D                            ; C510 C9 0D                    ..
        bcs     LowerFixedEngine_Branch_C527    ; C512 B0 13                    ..
        adc     #$18                            ; C514 69 18                    i.
LowerFixedEngine_Branch_C516:
        sta     $24                             ; C516 85 24                    .$
        lda     #$10                            ; C518 A9 10                    ..
LowerFixedEngine_Branch_C51A:
        sta     $23                           ; C51A 85 23                    .#
        ldy     $22                             ; C51C A4 22                    ."
        ldx     $21                             ; C51E A6 21                    .!
        plp                                     ; C520 28                       (
        pla                                     ; C521 68                       h
        lda     $20                             ; C522 A5 20                    .
        jmp     LowerFixedEngine_Branch_C38B    ; C524 4C 8B C3                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_C527:
        sbc     #$0C                            ; C527 E9 0C                    ..
        sta     $24                             ; C529 85 24                    .$
        lda     #$12                            ; C52B A9 12                    ..
        bne     LowerFixedEngine_Branch_C51A    ; C52D D0 EB                    ..
LowerFixedEngine_Entry_C52F:
        lda     #$00                            ; C52F A9 00                    ..
        sta     $1F                             ; C531 85 1F                    ..
        sta     $050A                           ; C533 8D 0A 05                 ...
        sta     $050B                           ; C536 8D 0B 05                 ...
        sta     $0508                           ; C539 8D 08 05                 ...
        sta     $0509                           ; C53C 8D 09 05                 ...
        sta     $0513                           ; C53F 8D 13 05                 ...
        rts                                     ; C542 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C543:
        lda     #$F7                            ; C543 A9 F7                    ..
        ldx     #$00                            ; C545 A2 00                    ..
        sta     $0200,x                         ; C547 9D 00 02                 ...
        inx                                     ; C54A E8                       .
        bne     $C547                           ; C54B D0 FA                    ..
        rts                                     ; C54D 60                       `
; ----------------------------------------------------------------------------
        db   $20,$AF,$C5,$20,$69,$C5,$20,$43 ; C54E 20 AF C5 20 69 C5 20 43   .. i. C
        db   $C5,$A5,$1F,$29,$7F,$85,$1F,$A5 ; C556 C5 A5 1F 29 7F 85 1F A5  ...)....
        db   $1F,$29,$BF,$85,$1F,$20,$74,$FF ; C55E 1F 29 BF 85 1F 20 74 FF  .)... t.
        db   $4C,$92,$C5                     ; C566 4C 92 C5                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C569:
        jsr     LowerFixedEngine_Entry_C575     ; C569 20 75 C5                  u.
        ldx     #$7F                            ; C56C A2 7F                    ..
LowerFixedEngine_Branch_C56E:
        sta     $0400,x                         ; C56E 9D 00 04                 ...
        dex                                     ; C571 CA                       .
        bpl     LowerFixedEngine_Branch_C56E    ; C572 10 FA                    ..
        rts                                     ; C574 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C575:
        lda     PPUSTATUS                       ; C575 AD 02 20                 ..
        lda     #$20                            ; C578 A9 20                    .
        sta     PPUADDR                         ; C57A 8D 06 20                 ..
        lda     #$00                            ; C57D A9 00                    ..
        sta     PPUADDR                         ; C57F 8D 06 20                 ..
        ldx     #$08                            ; C582 A2 08                    ..
        tay                                     ; C584 A8                       .
LowerFixedEngine_Branch_C585:
        sta     PPUDATA                         ; C585 8D 07 20                 ..
        dey                                     ; C588 88                       .
        bne     LowerFixedEngine_Branch_C585    ; C589 D0 FA                    ..
        dex                                     ; C58B CA                       .
        bne     LowerFixedEngine_Branch_C585    ; C58C D0 F7                    ..
        rts                                     ; C58E 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C58F:
        jsr     LowerFixedEngine_Entry_C5A8     ; C58F 20 A8 C5                  ..
        ldy     #$18                            ; C592 A0 18                    ..
        bne     $C598                           ; C594 D0 02                    ..
LowerFixedEngine_Entry_C596:
        ldy     #$00                            ; C596 A0 00                    ..
        lda     PPUSTATUS                       ; C598 AD 02 20                 ..
        lda     PPUSTATUS                       ; C59B AD 02 20                 ..
        bpl     $C59B                           ; C59E 10 FB                    ..
        tya                                     ; C5A0 98                       .
        sta     PPUMASK                         ; C5A1 8D 01 20                 ..
        sta     $0506                           ; C5A4 8D 06 05                 ...
        rts                                     ; C5A7 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C5A8:
        lda     $1F                             ; C5A8 A5 1F                    ..
        and     #$7F                            ; C5AA 29 7F                    ).
        sta     $1F                             ; C5AC 85 1F                    ..
        rts                                     ; C5AE 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C5AF:
        jsr     LowerFixedEngine_Entry_C596     ; C5AF 20 96 C5                  ..
        lda     $1F                             ; C5B2 A5 1F                    ..
        ora     #$80                            ; C5B4 09 80                    ..
        sta     $1F                             ; C5B6 85 1F                    ..
        rts                                     ; C5B8 60                       `
; ----------------------------------------------------------------------------
        db   $A9,$00,$85,$16,$F0,$1F,$A9,$40 ; C5B9 A9 00 85 16 F0 1F A9 40  .......@
        db   $A2,$F0,$D0,$03,$A9,$10,$AA,$86 ; C5C1 A2 F0 D0 03 A9 10 AA 86  ........
        db   $17,$85,$16,$20,$DE,$C5,$A2,$03 ; C5C9 17 85 16 20 DE C5 A2 03  ... ....
        db   $20,$0C,$C9,$A5,$16,$18,$65,$17 ; C5D1 20 0C C9 A5 16 18 65 17   .....e.
        db   $C9,$50,$90,$ED,$60,$A0,$00,$A9 ; C5D9 C9 50 90 ED 60 A0 00 A9  .P..`...
        db   $BF,$99,$00,$03,$C8,$A9,$20,$99 ; C5E1 BF 99 00 03 C8 A9 20 99  ...... .
        db   $00,$03,$C8,$A9,$00,$99,$00,$03 ; C5E9 00 03 C8 A9 00 99 00 03  ........
        db   $C8,$8C,$0A,$05,$85,$18,$AA,$A5 ; C5F1 C8 8C 0A 05 85 18 AA A5  ........
        db   $18,$AC,$FC,$05,$29,$03,$F0,$04 ; C5F9 18 AC FC 05 29 03 F0 04  ....)...
        db   $BC,$FD,$05,$E8,$98,$38,$E5,$16 ; C601 BC FD 05 E8 98 38 E5 16  .....8..
        db   $C9,$40,$90,$03,$AD,$FC,$05,$AC ; C609 C9 40 90 03 AD FC 05 AC  .@......
        db   $0A,$05,$99,$00,$03,$E6,$18,$EE ; C611 0A 05 99 00 03 E6 18 EE  ........
        db   $0A,$05,$A5,$18,$C9,$20,$90,$D7 ; C619 0A 05 A5 18 C9 20 90 D7  ..... ..
        db   $A9,$01,$8D,$0B,$05             ; C621 A9 01 8D 0B 05           .....
; ----------------------------------------------------------------------------
        lda     $1F                             ; C626 A5 1F                    ..
        ora     #$20                            ; C628 09 20                    .
        sta     $1F                             ; C62A 85 1F                    ..
        rts                                     ; C62C 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C62D:
        lda     $1F                             ; C62D A5 1F                    ..
        ora     #$20                            ; C62F 09 20                    .
        sta     $1F                             ; C631 85 1F                    ..
        jmp     LowerFixedEngine_Entry_FF74     ; C633 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
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
        db   $85,$1E,$20,$62,$C6,$4C,$36,$C6 ; C65A 85 1E 20 62 C6 4C 36 C6  .. b.L6.
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C662:
        lda     $0505                           ; C662 AD 05 05                 ...
        asl     a                               ; C665 0A                       .
        asl     a                               ; C666 0A                       .
        and     #$04                            ; C667 29 04                    ).
        ora     #$20                            ; C669 09 20                    .
        sta     $1C                             ; C66B 85 1C                    ..
        lda     $00                             ; C66D A5 00                    ..
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
LowerFixedEngine_Entry_C6BF:
        and     #$03                            ; C6BF 29 03                    ).
        sta     $0D                             ; C6C1 85 0D                    ..
LowerFixedEngine_Entry_C6C3:
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
LowerFixedEngine_Entry_C727:
        and     #$03                            ; C727 29 03                    ).
        sta     $0D                             ; C729 85 0D                    ..
        jsr     LowerFixedEngine_Entry_C662     ; C72B 20 62 C6                  b.
        jsr     LowerFixedEngine_Entry_C6C3     ; C72E 20 C3 C6                  ..
        sta     $1E                             ; C731 85 1E                    ..
        lda     $0E                             ; C733 A5 0E                    ..
        sta     $1C                             ; C735 85 1C                    ..
        lda     $0F                             ; C737 A5 0F                    ..
        sta     $1D                             ; C739 85 1D                    ..
        jmp     $C636                           ; C73B 4C 36 C6                 L6.
; ----------------------------------------------------------------------------
        db   $98,$48,$20,$8C,$C7,$B5,$00,$99 ; C73E 98 48 20 8C C7 B5 00 99  .H .....
        db   $00,$02,$B5,$01,$99,$01,$02,$B5 ; C746 00 02 B5 01 99 01 02 B5  ........
        db   $02,$99,$02,$02,$B5,$03,$99,$03 ; C74E 02 99 02 02 B5 03 99 03  ........
        db   $02,$E8,$E8,$E8,$E8,$68,$A8,$60 ; C756 02 E8 E8 E8 E8 68 A8 60  .....h.`
        db   $98,$48,$20,$8C,$C7,$B5,$01,$99 ; C75E 98 48 20 8C C7 B5 01 99  .H .....
        db   $01,$02,$B5,$02,$99,$02,$02,$4C ; C766 01 02 B5 02 99 02 02 4C  .......L
        db   $57,$C7,$98,$48,$20,$8C,$C7,$B9 ; C76E 57 C7 98 48 20 8C C7 B9  W..H ...
        db   $00,$02,$95,$00,$B9,$01,$02,$95 ; C776 00 02 95 00 B9 01 02 95  ........
        db   $01,$B9,$02,$02,$95,$02,$B9,$03 ; C77E 01 B9 02 02 95 02 B9 03  ........
        db   $02,$95,$03,$4C,$57,$C7         ; C786 02 95 03 4C 57 C7        ...LW.
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C78C:
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
LowerFixedEngine_Entry_C7E1:
        tax                                     ; C7E1 AA                       .
        lda     $0507                           ; C7E2 AD 07 05                 ...
        pha                                     ; C7E5 48                       H
        txa                                     ; C7E6 8A                       .
        jsr     LowerFixedEngine_Entry_FF91     ; C7E7 20 91 FF                  ..
        ldy     #$00                            ; C7EA A0 00                    ..
        lda     ($00),y                         ; C7EC B1 00                    ..
        sta     $0108,y                         ; C7EE 99 08 01                 ...
        iny                                     ; C7F1 C8                       .
        cpy     #$11                            ; C7F2 C0 11                    ..
        bne     $C7EC                           ; C7F4 D0 F6                    ..
        pla                                     ; C7F6 68                       h
        jmp     LowerFixedEngine_Entry_FF91     ; C7F7 4C 91 FF                 L..
; ----------------------------------------------------------------------------
        db   $EA,$49,$FF,$38,$75,$00,$95,$00 ; C7FA EA 49 FF 38 75 00 95 00  .I.8u...
        db   $B0,$02,$D6,$01,$60,$20,$FB,$C7 ; C802 B0 02 D6 01 60 20 FB C7  ....` ..
        db   $98,$49,$FF,$38,$75,$01,$95,$01 ; C80A 98 49 FF 38 75 01 95 01  .I.8u...
        db   $60                             ; C812 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C813:
        clc                                     ; C813 18                       .
        adc     $00,x                           ; C814 75 00                    u.
        sta     $00,x                           ; C816 95 00                    ..
        bcc     $C81C                           ; C818 90 02                    ..
        inc     $01,x                           ; C81A F6 01                    ..
        rts                                     ; C81C 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C81D:
        jsr     LowerFixedEngine_Entry_C813     ; C81D 20 13 C8                  ..
        tya                                     ; C820 98                       .
        clc                                     ; C821 18                       .
        adc     $01,x                           ; C822 75 01                    u.
        sta     $01,x                           ; C824 95 01                    ..
        rts                                     ; C826 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C827:
        sta     $16                             ; C827 85 16                    ..
        lda     #$00                            ; C829 A9 00                    ..
        sta     $17                             ; C82B 85 17                    ..
        sta     $18                             ; C82D 85 18                    ..
        lsr     $16                             ; C82F 46 16                    F.
        bcc     $C840                           ; C831 90 0D                    ..
        lda     $00,x                           ; C833 B5 00                    ..
        clc                                     ; C835 18                       .
        adc     $17                             ; C836 65 17                    e.
        sta     $17                             ; C838 85 17                    ..
        lda     $01,x                           ; C83A B5 01                    ..
        adc     $18                             ; C83C 65 18                    e.
        sta     $18                             ; C83E 85 18                    ..
        asl     $00,x                           ; C840 16 00                    ..
        rol     $01,x                           ; C842 36 01                    6.
        lda     $16                             ; C844 A5 16                    ..
        bne     $C82F                           ; C846 D0 E7                    ..
        lda     $17                             ; C848 A5 17                    ..
        sta     $00,x                           ; C84A 95 00                    ..
        lda     $18                             ; C84C A5 18                    ..
        sta     $01,x                           ; C84E 95 01                    ..
        rts                                     ; C850 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C851:
        sta     $18                             ; C851 85 18                    ..
        tya                                     ; C853 98                       .
        pha                                     ; C854 48                       H
        ldy     #$10                            ; C855 A0 10                    ..
        lda     #$00                            ; C857 A9 00                    ..
        sta     $19                             ; C859 85 19                    ..
        sta     $16                             ; C85B 85 16                    ..
        sta     $17                             ; C85D 85 17                    ..
        asl     $00,x                           ; C85F 16 00                    ..
        rol     $01,x                           ; C861 36 01                    6.
        rol     $16                             ; C863 26 16                    &.
        rol     $17                             ; C865 26 17                    &.
        inc     $00,x                           ; C867 F6 00                    ..
        lda     $16                             ; C869 A5 16                    ..
        sec                                     ; C86B 38                       8
        sbc     $18                             ; C86C E5 18                    ..
        pha                                     ; C86E 48                       H
        lda     $17                             ; C86F A5 17                    ..
        sbc     $19                             ; C871 E5 19                    ..
        bcs     $C87B                           ; C873 B0 06                    ..
        pla                                     ; C875 68                       h
        dec     $00,x                           ; C876 D6 00                    ..
        jmp     $C880                           ; C878 4C 80 C8                 L..
; ----------------------------------------------------------------------------
        sta     $17                             ; C87B 85 17                    ..
        pla                                     ; C87D 68                       h
        sta     $16                             ; C87E 85 16                    ..
        dey                                     ; C880 88                       .
        bne     $C85F                           ; C881 D0 DC                    ..
        pla                                     ; C883 68                       h
        tay                                     ; C884 A8                       .
        lda     $16                             ; C885 A5 16                    ..
        rts                                     ; C887 60                       `
; ----------------------------------------------------------------------------
        db   $A1,$00,$F6,$00,$D0,$02,$F6,$01 ; C888 A1 00 F6 00 D0 02 F6 01  ........
        db   $60                             ; C890 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C891:
        tya                                     ; C891 98                       .
        pha                                     ; C892 48                       H
        lda     #$FF                            ; C893 A9 FF                    ..
        sta     $16                             ; C895 85 16                    ..
        jsr     LowerFixedEngine_Entry_C8AD     ; C897 20 AD C8                  ..
        lda     #$FF                            ; C89A A9 FF                    ..
        sta     $16                             ; C89C 85 16                    ..
        jsr     LowerFixedEngine_Entry_C8AD     ; C89E 20 AD C8                  ..
        inc     $050D                           ; C8A1 EE 0D 05                 ...
        pla                                     ; C8A4 68                       h
        tay                                     ; C8A5 A8                       .
        lda     $12                             ; C8A6 A5 12                    ..
        clc                                     ; C8A8 18                       .
        adc     $050D                           ; C8A9 6D 0D 05                 m..
        rts                                     ; C8AC 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C8AD:
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
LowerFixedEngine_Entry_C8CC:
        ldx     #$00                            ; C8CC A2 00                    ..
LowerFixedEngine_Branch_C8CE:
        txa                                     ; C8CE 8A                       .
        pha                                     ; C8CF 48                       H
        jsr     LowerFixedEngine_Entry_C8EC     ; C8D0 20 EC C8                  ..
        jsr     LowerFixedEngine_Entry_FF74     ; C8D3 20 74 FF                  t.
        pla                                     ; C8D6 68                       h
        tax                                     ; C8D7 AA                       .
        inx                                     ; C8D8 E8                       .
        cpx     #$5A                            ; C8D9 E0 5A                    .Z
        beq     LowerFixedEngine_Branch_C8EB    ; C8DB F0 0E                    ..
        lda     ButtonsPressed                  ; C8DD A5 14                    ..
        bne     LowerFixedEngine_Branch_C8CE    ; C8DF D0 ED                    ..
LowerFixedEngine_Branch_C8E1:
        jsr     LowerFixedEngine_Entry_FF74     ; C8E1 20 74 FF                  t.
        jsr     LowerFixedEngine_Entry_C8EC     ; C8E4 20 EC C8                  ..
        lda     ButtonsPressed                  ; C8E7 A5 14                    ..
        beq     LowerFixedEngine_Branch_C8E1    ; C8E9 F0 F6                    ..
LowerFixedEngine_Branch_C8EB:
        rts                                     ; C8EB 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C8EC:
        ldx     #$00                            ; C8EC A2 00                    ..
        jsr     LowerFixedEngine_Entry_C8F3     ; C8EE 20 F3 C8                  ..
        ldx     #$01                            ; C8F1 A2 01                    ..
LowerFixedEngine_Entry_C8F3:
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
LowerFixedEngine_Entry_C90C:
        jsr     LowerFixedEngine_Entry_FF74     ; C90C 20 74 FF                  t.
        dex                                     ; C90F CA                       .
        bne     LowerFixedEngine_Entry_C90C     ; C910 D0 FA                    ..
        rts                                     ; C912 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C913:
        txa                                     ; C913 8A                       .
        pha                                     ; C914 48                       H
        tya                                     ; C915 98                       .
        pha                                     ; C916 48                       H
        jsr     LowerFixedEngine_Entry_C91F     ; C917 20 1F C9                  ..
        pla                                     ; C91A 68                       h
        tay                                     ; C91B A8                       .
        pla                                     ; C91C 68                       h
        tax                                     ; C91D AA                       .
        rts                                     ; C91E 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C91F:
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
        jsr     LowerFixedEngine_Entry_C94E     ; C934 20 4E C9                  N.
        ldx     #$10                            ; C937 A2 10                    ..
        pla                                     ; C939 68                       h
        jsr     LowerFixedEngine_Entry_C94E     ; C93A 20 4E C9                  N.
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
LowerFixedEngine_Entry_C94E:
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
        jsr     LowerFixedEngine_Entry_C983     ; C968 20 83 C9                  ..
        jsr     LowerFixedEngine_Entry_C52F     ; C96B 20 2F C5                  /.
        brk                                     ; C96E 00                       .
        db   $0B,$BF                         ; C96F 0B BF                    ..
; ----------------------------------------------------------------------------
        brk                                     ; C971 00                       .
        db   $0D,$2F                         ; C972 0D 2F                    ./
; ----------------------------------------------------------------------------
        brk                                     ; C974 00                       .
        db   $0C,$EF                         ; C975 0C EF                    ..
; ----------------------------------------------------------------------------
        brk                                     ; C977 00                       .
        db   $34,$EF                         ; C978 34 EF                    4.
; ----------------------------------------------------------------------------
        brk                                     ; C97A 00                       .
        db   $22,$EF                         ; C97B 22 EF                    ".
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_C9ED     ; C97D 20 ED C9                  ..
        jmp     $C97D                           ; C980 4C 7D C9                 L}.
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C983:
        ldx     #$5D                            ; C983 A2 5D                    .]
        lda     $C98F,x                         ; C985 BD 8F C9                 ...
        sta     $6CAD,x                         ; C988 9D AD 6C                 ..l
        dex                                     ; C98B CA                       .
        bpl     $C985                           ; C98C 10 F7                    ..
        rts                                     ; C98E 60                       `
; ----------------------------------------------------------------------------
        db   $08,$AD,$07,$05,$8D,$CC,$07,$A9 ; C98F 08 AD 07 05 8D CC 07 A9  ........
        db   $0F,$8D,$07,$05,$EA,$EA,$A9,$00 ; C997 0F 8D 07 05 EA EA A9 00  ........
        db   $8D,$01,$05,$85,$39,$8D,$FF,$BF ; C99F 8D 01 05 85 39 8D FF BF  ....9...
        db   $4A,$8D,$FF,$BF,$4A,$8D,$FF,$BF ; C9A7 4A 8D FF BF 4A 8D FF BF  J...J...
        db   $4A,$8D,$FF,$BF,$4A,$8D,$FF,$BF ; C9AF 4A 8D FF BF 4A 8D FF BF  J...J...
        db   $EA,$EA,$AD,$CA,$07,$28,$20,$00 ; C9B7 EA EA AD CA 07 28 20 00  .....( .
        db   $00,$08,$8D,$CA,$07,$A9,$10,$8D ; C9BF 00 08 8D CA 07 A9 10 8D  ........
        db   $01,$05,$85,$39,$EA,$EA,$8D,$FF ; C9C7 01 05 85 39 EA EA 8D FF  ...9....
        db   $BF,$4A,$8D,$FF,$BF,$4A,$8D,$FF ; C9CF BF 4A 8D FF BF 4A 8D FF  .J...J..
        db   $BF,$4A,$8D,$FF,$BF,$4A,$8D,$FF ; C9D7 BF 4A 8D FF BF 4A 8D FF  .J...J..
        db   $BF,$EA,$EA,$AD,$CC,$07,$20,$91 ; C9DF BF EA EA AD CC 07 20 91  ...... .
        db   $FF,$AD,$CA,$07,$28,$60         ; C9E7 FF AD CA 07 28 60        ....(`
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_C9ED:
        jsr     LowerFixedEngine_Entry_CBB4     ; C9ED 20 B4 CB                  ..
        jsr     LowerFixedEngine_Entry_CB98     ; C9F0 20 98 CB                  ..
        jsr     LowerFixedEngine_Entry_CA21     ; C9F3 20 21 CA                  !.
        jsr     LowerFixedEngine_Entry_D542     ; C9F6 20 42 D5                  B.
        jsr     LowerFixedEngine_Entry_E06E     ; C9F9 20 6E E0                  n.
        brk                                     ; C9FC 00                       .
        db   $00,$DF                         ; C9FD 00 DF                    ..
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_C001     ; C9FF 20 01 C0                  ..
        jsr     LowerFixedEngine_Entry_CE09     ; CA02 20 09 CE                  ..
        jsr     LowerFixedEngine_Entry_D7D5     ; CA05 20 D5 D7                  ..
        ldx     $052F                           ; CA08 AE 2F 05                 ./.
        jsr     LowerFixedEngine_Entry_C90C     ; CA0B 20 0C C9                  ..
        jsr     LowerFixedEngine_Entry_CA17     ; CA0E 20 17 CA                  ..
        jsr     LowerFixedEngine_Entry_D1E1     ; CA11 20 E1 D1                  ..
        inc     $3C                             ; CA14 E6 3C                    .<
        rts                                     ; CA16 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CA17:
        jsr     LowerFixedEngine_Entry_D241     ; CA17 20 41 D2                  A.
        lda     ButtonsPressed                  ; CA1A A5 14                    ..
        and     #$04                            ; CA1C 29 04                    ).
        bne     LowerFixedEngine_Entry_CA17     ; CA1E D0 F7                    ..
        rts                                     ; CA20 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CA21:
        ldx     $058E                           ; CA21 AE 8E 05                 ...
        lda     $CA3C,x                         ; CA24 BD 3C CA                 .<.
        and     $3C                             ; CA27 25 3C                    %<
        bne     $CA3C                           ; CA29 D0 11                    ..
        lda     #$01                            ; CA2B A9 01                    ..
        sta     $052F                           ; CA2D 8D 2F 05                 ./.
        jsr     LowerFixedEngine_Entry_CA41     ; CA30 20 41 CA                  A.
        jsr     LowerFixedEngine_Entry_CB1E     ; CA33 20 1E CB                  ..
        jsr     LowerFixedEngine_Entry_CBF8     ; CA36 20 F8 CB                  ..
        jsr     LowerFixedEngine_Entry_CB71     ; CA39 20 71 CB                  q.
        rts                                     ; CA3C 60                       `
; ----------------------------------------------------------------------------
        db   $0F,$07,$0F,$03                 ; CA3D 0F 07 0F 03              ....
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CA41:
        lda     $0530                           ; CA41 AD 30 05                 .0.
        bpl     $CA55                           ; CA44 10 0F                    ..
        lda     #$FF                            ; CA46 A9 FF                    ..
        sta     $56                             ; CA48 85 56                    .V
        jsr     LowerFixedEngine_Entry_DB18     ; CA4A 20 18 DB                  ..
        sta     ButtonsPressed                  ; CA4D 85 14                    ..
        lda     $0530                           ; CA4F AD 30 05                 .0.
        bpl     $CA55                           ; CA52 10 01                    ..
        rts                                     ; CA54 60                       `
; ----------------------------------------------------------------------------
        lda     $0515                           ; CA55 AD 15 05                 ...
        cmp     #$02                            ; CA58 C9 02                    ..
        bne     $CA77                           ; CA5A D0 1B                    ..
        jsr     LowerFixedEngine_Entry_D241     ; CA5C 20 41 D2                  A.
        lda     ButtonsPressed                  ; CA5F A5 14                    ..
        and     #$F0                            ; CA61 29 F0                    ).
        bne     LowerFixedEngine_Branch_CA71    ; CA63 D0 0C                    ..
        lda     $0597                           ; CA65 AD 97 05                 ...
        beq     LowerFixedEngine_Branch_CA76    ; CA68 F0 0C                    ..
        ldx     $3D                             ; CA6A A6 3D                    .=
        lda     $CB1A,x                         ; CA6C BD 1A CB                 ...
        sta     ButtonsPressed                  ; CA6F 85 14                    ..
LowerFixedEngine_Branch_CA71:
        lda     #$FF                            ; CA71 A9 FF                    ..
        sta     $0597                           ; CA73 8D 97 05                 ...
LowerFixedEngine_Branch_CA76:
        rts                                     ; CA76 60                       `
; ----------------------------------------------------------------------------
        lda     #$00                            ; CA77 A9 00                    ..
        sta     $56                             ; CA79 85 56                    .V
        lda     $7140                           ; CA7B AD 40 71                 .@q
        and     #$1F                            ; CA7E 29 1F                    ).
        tax                                     ; CA80 AA                       .
        lda     $6F40,x                         ; CA81 BD 40 6F                 .@o
        cmp     #$10                            ; CA84 C9 10                    ..
        bcc     $CAD8                           ; CA86 90 50                    .P
        cmp     #$14                            ; CA88 C9 14                    ..
        bcs     $CAD8                           ; CA8A B0 4C                    .L
        and     #$03                            ; CA8C 29 03                    ).
        tax                                     ; CA8E AA                       .
        lda     $CB1A,x                         ; CA8F BD 1A CB                 ...
        sta     ButtonsPressed                  ; CA92 85 14                    ..
        lda     #$02                            ; CA94 A9 02                    ..
        sta     $058E                           ; CA96 8D 8E 05                 ...
        lda     #$20                            ; CA99 A9 20                    .
        sta     $058F                           ; CA9B 8D 8F 05                 ...
        ldx     #$03                            ; CA9E A2 03                    ..
LowerFixedEngine_Branch_CAA0:
        lda     $70E0,x                         ; CAA0 BD E0 70                 ..p
        ora     #$40                            ; CAA3 09 40                    .@
        and     #$7F                            ; CAA5 29 7F                    ).
        sta     $70E0,x                         ; CAA7 9D E0 70                 ..p
        dex                                     ; CAAA CA                       .
        bpl     LowerFixedEngine_Branch_CAA0    ; CAAB 10 F3                    ..
        brk                                     ; CAAD 00                       .
        db   $A4,$FB,$A5,$3C,$29,$F0,$09,$08 ; CAAE A4 FB A5 3C 29 F0 09 08  ...<)...
        db   $85,$3C,$A2,$00,$20,$BE,$CA,$E8 ; CAB6 85 3C A2 00 20 BE CA E8  .<.. ...
        db   $BD,$04,$70,$29,$7F,$9D,$04,$70 ; CABE BD 04 70 29 7F 9D 04 70  ..p)...p
        db   $BD,$64,$6F,$9D,$A4,$6F,$BD,$84 ; CAC6 BD 64 6F 9D A4 6F BD 84  .do..o..
        db   $6F,$9D,$C4,$6F,$A9,$00,$9D,$2A ; CACE 6F 9D C4 6F A9 00 9D 2A  o..o...*
        db   $05,$60                         ; CAD6 05 60                    .`
; ----------------------------------------------------------------------------
        lda     $15                             ; CAD8 A5 15                    ..
        and     #$03                            ; CADA 29 03                    ).
        jmp     $CAEA                           ; CADC 4C EA CA                 L..
; ----------------------------------------------------------------------------
        db   $8D,$8E,$05,$A9,$20,$8D,$8F,$05 ; CADF 8D 8E 05 A9 20 8D 8F 05  .... ...
        db   $4C,$41,$D2                     ; CAE7 4C 41 D2                 LA.
; ----------------------------------------------------------------------------
        lda     $058E                           ; CAEA AD 8E 05                 ...
        cmp     #$01                            ; CAED C9 01                    ..
        beq     $CB17                           ; CAEF F0 26                    .&
        lda     #$01                            ; CAF1 A9 01                    ..
        sta     $058E                           ; CAF3 8D 8E 05                 ...
        lda     #$10                            ; CAF6 A9 10                    ..
        sta     $058F                           ; CAF8 8D 8F 05                 ...
        ldx     #$03                            ; CAFB A2 03                    ..
LowerFixedEngine_Branch_CAFD:
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
        bpl     LowerFixedEngine_Branch_CAFD    ; CB15 10 E6                    ..
        jmp     LowerFixedEngine_Entry_D241     ; CB17 4C 41 D2                 LA.
; ----------------------------------------------------------------------------
        db   $10,$80,$20,$40                 ; CB1A 10 80 20 40              .. @
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CB1E:
        lda     $0515                           ; CB1E AD 15 05                 ...
        cmp     #$02                            ; CB21 C9 02                    ..
        bne     LowerFixedEngine_Branch_CB33    ; CB23 D0 0E                    ..
        lda     $0597                           ; CB25 AD 97 05                 ...
        beq     LowerFixedEngine_Branch_CB33    ; CB28 F0 09                    ..
        lda     ButtonsPressed                  ; CB2A A5 14                    ..
        ora     $0529                           ; CB2C 0D 29 05                 .).
        lsr     a                               ; CB2F 4A                       J
        bcc     LowerFixedEngine_Branch_CB33    ; CB30 90 01                    ..
        rts                                     ; CB32 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CB33:
        ldx     $3D                             ; CB33 A6 3D                    .=
        beq     $CB4A                           ; CB35 F0 13                    ..
        dex                                     ; CB37 CA                       .
        beq     $CB64                           ; CB38 F0 2A                    .*
        dex                                     ; CB3A CA                       .
        beq     $CB57                           ; CB3B F0 1A                    ..
        jsr     LowerFixedEngine_Entry_CBCA     ; CB3D 20 CA CB                  ..
        jsr     LowerFixedEngine_Entry_CBD6     ; CB40 20 D6 CB                  ..
        jsr     LowerFixedEngine_Entry_CBE4     ; CB43 20 E4 CB                  ..
        jsr     LowerFixedEngine_Entry_CBBE     ; CB46 20 BE CB                  ..
        rts                                     ; CB49 60                       `
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_CBD6     ; CB4A 20 D6 CB                  ..
        jsr     LowerFixedEngine_Entry_CBBE     ; CB4D 20 BE CB                  ..
        jsr     LowerFixedEngine_Entry_CBCA     ; CB50 20 CA CB                  ..
        jsr     LowerFixedEngine_Entry_CBE4     ; CB53 20 E4 CB                  ..
        rts                                     ; CB56 60                       `
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_CBE4     ; CB57 20 E4 CB                  ..
        jsr     LowerFixedEngine_Entry_CBCA     ; CB5A 20 CA CB                  ..
        jsr     LowerFixedEngine_Entry_CBBE     ; CB5D 20 BE CB                  ..
        jsr     LowerFixedEngine_Entry_CBD6     ; CB60 20 D6 CB                  ..
        rts                                     ; CB63 60                       `
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_CBBE     ; CB64 20 BE CB                  ..
        jsr     LowerFixedEngine_Entry_CBE4     ; CB67 20 E4 CB                  ..
        jsr     LowerFixedEngine_Entry_CBD6     ; CB6A 20 D6 CB                  ..
        jsr     LowerFixedEngine_Entry_CBCA     ; CB6D 20 CA CB                  ..
        rts                                     ; CB70 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CB71:
        lda     $0530                           ; CB71 AD 30 05                 .0.
        bmi     $CB97                           ; CB74 30 21                    0!
        lda     $0599                           ; CB76 AD 99 05                 ...
        and     #$10                            ; CB79 29 10                    ).
        bne     $CB97                           ; CB7B D0 1A                    ..
        lda     $0539                           ; CB7D AD 39 05                 .9.
        bmi     $CB97                           ; CB80 30 15                    0.
        clc                                     ; CB82 18                       .
        adc     #$10                            ; CB83 69 10                    i.
        sta     $0539                           ; CB85 8D 39 05                 .9.
        bpl     $CB97                           ; CB88 10 0D                    ..
        brk                                     ; CB8A 00                       .
        db   $13,$1F                         ; CB8B 13 1F                    ..
; ----------------------------------------------------------------------------
        bcc     $CB93                           ; CB8D 90 04                    ..
        brk                                     ; CB8F 00                       .
        db   $07,$6F,$28                     ; CB90 07 6F 28                 .o(
; ----------------------------------------------------------------------------
        brk                                     ; CB93 00                       .
        db   $07,$6F,$2A                     ; CB94 07 6F 2A                 .o*
; ----------------------------------------------------------------------------
        rts                                     ; CB97 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CB98:
        lda     $052E                           ; CB98 AD 2E 05                 ...
        beq     $CBA1                           ; CB9B F0 04                    ..
        dec     $052E                           ; CB9D CE 2E 05                 ...
        rts                                     ; CBA0 60                       `
; ----------------------------------------------------------------------------
        ldx     #$01                            ; CBA1 A2 01                    ..
        stx     JOY1                            ; CBA3 8E 16 40                 ..@
        dex                                     ; CBA6 CA                       .
        stx     JOY1                            ; CBA7 8E 16 40                 ..@
        lda     JOY1                            ; CBAA AD 16 40                 ..@
        ora     $0529                           ; CBAD 0D 29 05                 .).
        sta     $0529                           ; CBB0 8D 29 05                 .).
        rts                                     ; CBB3 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CBB4:
        lda     $0526                           ; CBB4 AD 26 05                 .&.
        clc                                     ; CBB7 18                       .
        adc     #$08                            ; CBB8 69 08                    i.
        sta     $0526                           ; CBBA 8D 26 05                 .&.
        rts                                     ; CBBD 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CBBE:
        lda     ButtonsPressed                  ; CBBE A5 14                    ..
        bpl     $CBF7                           ; CBC0 10 35                    .5
        jsr     LowerFixedEngine_Entry_CD85     ; CBC2 20 85 CD                  ..
        lda     #$01                            ; CBC5 A9 01                    ..
        jmp     $CBEF                           ; CBC7 4C EF CB                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CBCA:
        bit     ButtonsPressed                  ; CBCA 24 14                    $.
        bvc     $CBF7                           ; CBCC 50 29                    P)
        jsr     LowerFixedEngine_Entry_CD85     ; CBCE 20 85 CD                  ..
        lda     #$03                            ; CBD1 A9 03                    ..
        jmp     $CBEF                           ; CBD3 4C EF CB                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CBD6:
        lda     ButtonsPressed                  ; CBD6 A5 14                    ..
        and     #$10                            ; CBD8 29 10                    ).
        beq     $CBF7                           ; CBDA F0 1B                    ..
        jsr     LowerFixedEngine_Entry_CD85     ; CBDC 20 85 CD                  ..
        lda     #$00                            ; CBDF A9 00                    ..
        jmp     $CBEF                           ; CBE1 4C EF CB                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CBE4:
        lda     ButtonsPressed                  ; CBE4 A5 14                    ..
        and     #$20                            ; CBE6 29 20                    )
        beq     $CBF7                           ; CBE8 F0 0D                    ..
        jsr     LowerFixedEngine_Entry_CD85     ; CBEA 20 85 CD                  ..
        lda     #$02                            ; CBED A9 02                    ..
        sta     $3D                             ; CBEF 85 3D                    .=
        jsr     LowerFixedEngine_Entry_CC88     ; CBF1 20 88 CC                  ..
        jmp     $D0C4                           ; CBF4 4C C4 D0                 L..
; ----------------------------------------------------------------------------
        rts                                     ; CBF7 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CBF8:
        lda     $0530                           ; CBF8 AD 30 05                 .0.
        bmi     $CC64                           ; CBFB 30 67                    0g
        lda     ButtonsPressed                  ; CBFD A5 14                    ..
        ora     $0529                           ; CBFF 0D 29 05                 .).
        and     #$01                            ; CC02 29 01                    ).
        beq     $CC63                           ; CC04 F0 5D                    .]
        asl     $0529                           ; CC06 0E 29 05                 .).
        lda     $0515                           ; CC09 AD 15 05                 ...
        cmp     #$02                            ; CC0C C9 02                    ..
        beq     $CC33                           ; CC0E F0 23                    .#
        lda     $41                             ; CC10 A5 41                    .A
        bmi     LowerFixedEngine_Branch_CC68    ; CC12 30 54                    0T
        lda     PlayerWorldX                    ; CC14 A5 42                    .B
        cmp     SavePlayerWorldX                ; CC16 CD 97 61                 ..a
        bne     LowerFixedEngine_Branch_CC68    ; CC19 D0 4D                    .M
        lda     PlayerWorldY                    ; CC1B A5 43                    .C
        cmp     SavePlayerWorldY                ; CC1D CD 98 61                 ..a
        bne     LowerFixedEngine_Branch_CC68    ; CC20 D0 46                    .F
        brk                                     ; CC22 00                       .
        db   $13,$EB,$02,$F0,$40,$AD,$5A,$61 ; CC23 13 EB 02 F0 40 AD 5A 61  ....@.Za
        db   $C9,$04,$D0,$39,$00,$08,$EF,$60 ; CC2B C9 04 D0 39 00 08 EF 60  ...9...`
; ----------------------------------------------------------------------------
        ldx     SavePlayerWorldX                ; CC33 AE 97 61                 ..a
        ldy     SavePlayerWorldY                ; CC36 AC 98 61                 ..a
        jsr     LowerFixedEngine_Entry_D251     ; CC39 20 51 D2                  Q.
        tax                                     ; CC3C AA                       .
        lda     $6F40,x                         ; CC3D BD 40 6F                 .@o
        bne     LowerFixedEngine_Branch_CC81    ; CC40 D0 3F                    .?
        brk                                     ; CC42 00                       .
        db   $5B,$33,$A9,$00,$8D,$15,$05,$A9 ; CC43 5B 33 A9 00 8D 15 05 A9  [3......
        db   $10,$8D,$2E,$05,$00,$18,$EF,$00 ; CC4B 10 8D 2E 05 00 18 EF 00  ........
        db   $0E,$EF,$20,$F1,$DF,$00,$09,$9F ; CC53 0E EF 20 F1 DF 00 09 9F  .. .....
        db   $AD,$00,$70,$09,$40,$8D,$00,$70 ; CC5B AD 00 70 09 40 8D 00 70  ..p.@..p
; ----------------------------------------------------------------------------
        rts                                     ; CC63 60                       `
; ----------------------------------------------------------------------------
        asl     $0529                           ; CC64 0E 29 05                 .).
        rts                                     ; CC67 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CC68:
        lda     $0599                           ; CC68 AD 99 05                 ...
        and     #$10                            ; CC6B 29 10                    ).
        bne     $CC7D                           ; CC6D D0 0E                    ..
        lda     $0539                           ; CC6F AD 39 05                 .9.
        bmi     $CC7D                           ; CC72 30 09                    0.
        brk                                     ; CC74 00                       .
        db   $07,$6F,$2A                     ; CC75 07 6F 2A                 .o*
; ----------------------------------------------------------------------------
        lda     #$80                            ; CC78 A9 80                    ..
        sta     $0539                           ; CC7A 8D 39 05                 .9.
        brk                                     ; CC7D 00                       .
        db   $14,$EF                         ; CC7E 14 EF                    ..
; ----------------------------------------------------------------------------
        rts                                     ; CC80 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CC81:
        lda     #$0B                            ; CC81 A9 0B                    ..
        ldx     #$03                            ; CC83 A2 03                    ..
        jmp     LowerFixedEngine_Branch_D1ED    ; CC85 4C ED D1                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CC88:
        jsr     LowerFixedEngine_Entry_CF91     ; CC88 20 91 CF                  ..
        jsr     LowerFixedEngine_Entry_CC91     ; CC8B 20 91 CC                  ..
        jmp     $CDC9                           ; CC8E 4C C9 CD                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CC91:
        jsr     LowerFixedEngine_Entry_D16F     ; CC91 20 6F D1                  o.
        sta     PlayerWorldY,x                  ; CC94 95 43                    .C
        sta     $6F80                           ; CC96 8D 80 6F                 ..o
        lda     $52                           ; CC99 A5 52                    .R
        sta     PlayerWorldX,x                  ; CC9B 95 42                    .B
        sta     $6F60                           ; CC9D 8D 60 6F                 .`o
        lda     $0515                           ; CCA0 AD 15 05                 ...
        beq     LowerFixedEngine_Branch_CCE9    ; CCA3 F0 44                    .D
        cpx     #$00                            ; CCA5 E0 00                    ..
        bne     LowerFixedEngine_Branch_CCEA    ; CCA7 D0 41                    .A
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
        beq     LowerFixedEngine_Branch_CCD5    ; CCC0 F0 13                    ..
        lda     PlayerWorldX                    ; CCC2 A5 42                    .B
        sta     $6F67,y                         ; CCC4 99 67 6F                 .go
        sta     $6F68,y                         ; CCC7 99 68 6F                 .ho
        lda     PlayerWorldY                    ; CCCA A5 43                    .C
        sta     $6F88,y                         ; CCCC 99 88 6F                 ..o
        sec                                     ; CCCF 38                       8
        sbc     #$01                            ; CCD0 E9 01                    ..
        sta     $6F87,y                         ; CCD2 99 87 6F                 ..o
LowerFixedEngine_Branch_CCD5:
        jsr     LowerFixedEngine_Entry_CD78     ; CCD5 20 78 CD                  x.
        cpx     #$00                            ; CCD8 E0 00                    ..
        beq     LowerFixedEngine_Branch_CD3B    ; CCDA F0 5F                    ._
        iny                                     ; CCDC C8                       .
        jsr     LowerFixedEngine_Entry_CD78     ; CCDD 20 78 CD                  x.
        iny                                     ; CCE0 C8                       .
        jsr     LowerFixedEngine_Entry_CD78     ; CCE1 20 78 CD                  x.
        dey                                     ; CCE4 88                       .
        dey                                     ; CCE5 88                       .
        jsr     LowerFixedEngine_Entry_CD0F     ; CCE6 20 0F CD                  ..
LowerFixedEngine_Branch_CCE9:
        rts                                     ; CCE9 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CCEA:
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
        jmp     LowerFixedEngine_Entry_D7FC     ; CD0C 4C FC D7                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CD0F:
        lda     $57                             ; CD0F A5 57                    .W
        beq     LowerFixedEngine_Branch_CD3B    ; CD11 F0 28                    .(
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
LowerFixedEngine_Branch_CD29:
        lda     $6FA7,x                         ; CD29 BD A7 6F                 ..o
        clc                                     ; CD2C 18                       .
        adc     $57                             ; CD2D 65 57                    eW
        sta     $6FA7,x                         ; CD2F 9D A7 6F                 ..o
        inx                                     ; CD32 E8                       .
        iny                                     ; CD33 C8                       .
        cpy     #$03                            ; CD34 C0 03                    ..
        bcc     LowerFixedEngine_Branch_CD29    ; CD36 90 F1                    ..
        pla                                     ; CD38 68                       h
        bcs     LowerFixedEngine_Branch_CD3E    ; CD39 B0 03                    ..
LowerFixedEngine_Branch_CD3B:
        txa                                     ; CD3B 8A                       .
        pha                                     ; CD3C 48                       H
        tya                                     ; CD3D 98                       .
LowerFixedEngine_Branch_CD3E:
        clc                                     ; CD3E 18                       .
        adc     #$06                            ; CD3F 69 06                    i.
        tax                                     ; CD41 AA                       .
        jsr     LowerFixedEngine_Entry_D7FC     ; CD42 20 FC D7                  ..
        pla                                     ; CD45 68                       h
        tax                                     ; CD46 AA                       .
        beq     LowerFixedEngine_Branch_CCE9    ; CD47 F0 A0                    ..
        ldx     #$08                            ; CD49 A2 08                    ..
        jsr     LowerFixedEngine_Entry_D7FC     ; CD4B 20 FC D7                  ..
        jsr     LowerFixedEngine_Entry_CD52     ; CD4E 20 52 CD                  R.
        rts                                     ; CD51 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CD52:
        ldx     #$0B                            ; CD52 A2 0B                    ..
        lda     $7140                           ; CD54 AD 40 71                 .@q
        beq     LowerFixedEngine_Branch_CD6A    ; CD57 F0 11                    ..
        ldx     #$07                            ; CD59 A2 07                    ..
LowerFixedEngine_Branch_CD5B:
        cmp     $CD70,x                         ; CD5B DD 70 CD                 .p.
        beq     LowerFixedEngine_Branch_CD68    ; CD5E F0 08                    ..
        dex                                     ; CD60 CA                       .
        bpl     LowerFixedEngine_Branch_CD5B    ; CD61 10 F8                    ..
        ldx     #$0A                            ; CD63 A2 0A                    ..
        jmp     LowerFixedEngine_Branch_CD6A    ; CD65 4C 6A CD                 Lj.
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CD68:
        ldx     #$09                            ; CD68 A2 09                    ..
LowerFixedEngine_Branch_CD6A:
        stx     $6FE9                           ; CD6A 8E E9 6F                 ..o
        ldx     #$09                            ; CD6D A2 09                    ..
        rts                                     ; CD6F 60                       `
; ----------------------------------------------------------------------------
        db   $01,$06,$0D,$0E,$0F,$11,$12,$13 ; CD70 01 06 0D 0E 0F 11 12 13  ........
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CD78:
        lda     $7006,y                         ; CD78 B9 06 70                 ..p
        and     #$FC                            ; CD7B 29 FC                    ).
        ora     $3D                             ; CD7D 05 3D                    .=
        ora     #$80                            ; CD7F 09 80                    ..
        sta     $7006,y                         ; CD81 99 06 70                 ..p
        rts                                     ; CD84 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CD85:
        lda     $0539                           ; CD85 AD 39 05                 .9.
        bpl     $CD8E                           ; CD88 10 04                    ..
        brk                                     ; CD8A 00                       .
        db   $07,$6F,$FF                     ; CD8B 07 6F FF                 .o.
; ----------------------------------------------------------------------------
        lda     #$00                            ; CD8E A9 00                    ..
        sta     $0539                           ; CD90 8D 39 05                 .9.
        lda     $0599                           ; CD93 AD 99 05                 ...
        and     #$F0                            ; CD96 29 F0                    ).
        beq     $CDC8                           ; CD98 F0 2E                    ..
        ldy     #$BC                            ; CD9A A0 BC                    ..
        and     #$30                            ; CD9C 29 30                    )0
        bne     LowerFixedEngine_Branch_CDB6    ; CD9E D0 16                    ..
        dey                                     ; CDA0 88                       .
        ldx     #$00                            ; CDA1 A2 00                    ..
        brk                                     ; CDA3 00                       .
        db   $2B,$63,$41,$C9,$08,$B0,$04,$E8 ; CDA4 2B 63 41 C9 08 B0 04 E8  +cA.....
        db   $4C,$A3,$CD,$86,$6E,$00,$2E,$0F ; CDAC 4C A3 CD 86 6E 00 2E 0F  L...n...
        db   $85,$F9                         ; CDB4 85 F9                    ..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CDB6:
        tya                                     ; CDB6 98                       .
        ldx     #$03                            ; CDB7 A2 03                    ..
        jsr     LowerFixedEngine_Entry_D1FD     ; CDB9 20 FD D1                  ..
        ldx     #$03                            ; CDBC A2 03                    ..
        lda     #$BD                            ; CDBE A9 BD                    ..
        brk                                     ; CDC0 00                       .
        db   $04,$6F,$20,$F0,$D1,$68,$68     ; CDC1 04 6F 20 F0 D1 68 68     .o ..hh
; ----------------------------------------------------------------------------
        rts                                     ; CDC8 60                       `
; ----------------------------------------------------------------------------
        lda     $7001                           ; CDC9 AD 01 70                 ..p
        and     #$03                            ; CDCC 29 03                    ).
        sta     $0528                           ; CDCE 8D 28 05                 .(.
        lda     #$10                            ; CDD1 A9 10                    ..
        sta     $3E                             ; CDD3 85 3E                    .>
        jsr     LowerFixedEngine_Entry_C007     ; CDD5 20 07 C0                  ..
        jsr     LowerFixedEngine_Entry_CDDC     ; CDD8 20 DC CD                  ..
        rts                                     ; CDDB 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CDDC:
        lda     $41                             ; CDDC A5 41                    .A
        bmi     LowerFixedEngine_Branch_CE08    ; CDDE 30 28                    0(
        lda     $6288                           ; CDE0 AD 88 62                 ..b
        bmi     LowerFixedEngine_Branch_CE08    ; CDE3 30 23                    0#
        lda     $12                             ; CDE5 A5 12                    ..
        and     #$1F                            ; CDE7 29 1F                    ).
        adc     #$FF                            ; CDE9 69 FF                    i.
        sta     $0516                           ; CDEB 8D 16 05                 ...
        sta     $0516                           ; CDEE 8D 16 05                 ...
        bcc     LowerFixedEngine_Branch_CE08    ; CDF1 90 15                    ..
        inc     SaveTimeOfDay                   ; CDF3 EE ED 62                 ..b
        lda     SaveTimeOfDay                   ; CDF6 AD ED 62                 ..b
        cmp     #$CC                            ; CDF9 C9 CC                    ..
        bcc     LowerFixedEngine_Branch_CE08    ; CDFB 90 0B                    ..
        lda     #$00                            ; CDFD A9 00                    ..
        sta     SaveTimeOfDay                   ; CDFF 8D ED 62                 ..b
        inc     $628C                           ; CE02 EE 8C 62                 ..b
        inc     $628D                           ; CE05 EE 8D 62                 ..b
LowerFixedEngine_Branch_CE08:
        rts                                     ; CE08 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CE09:
        cmp     #$00                            ; CE09 C9 00                    ..
        bne     $CE50                           ; CE0B D0 43                    .C
        lda     $41                             ; CE0D A5 41                    .A
        bpl     $CE80                           ; CE0F 10 6F                    .o
        lda     PlayerLocalX                    ; CE11 A5 44                    .D
        sta     $6FA0                           ; CE13 8D A0 6F                 ..o
        lda     PlayerLocalY                    ; CE16 A5 45                    .E
        sta     $6FC0                           ; CE18 8D C0 6F                 ..o
        lda     $0527                           ; CE1B AD 27 05                 .'.
        beq     $CE31                           ; CE1E F0 11                    ..
        bmi     LowerFixedEngine_Branch_CE2E    ; CE20 30 0C                    0.
        sta     $0515                           ; CE22 8D 15 05                 ...
        brk                                     ; CE25 00                       .
        db   $00,$EF,$00,$04,$EF,$4C,$31,$CE ; CE26 00 EF 00 04 EF 4C 31 CE  .....L1.
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CE2E:
        jsr     LowerFixedEngine_Entry_CE72     ; CE2E 20 72 CE                  r.
        jsr     LowerFixedEngine_Entry_CF56     ; CE31 20 56 CF                  V.
        brk                                     ; CE34 00                       .
        db   $00,$BF                         ; CE35 00 BF                    ..
; ----------------------------------------------------------------------------
        bcs     $CE47                           ; CE37 B0 0E                    ..
        jsr     LowerFixedEngine_Entry_CF5F     ; CE39 20 5F CF                  _.
        jsr     LowerFixedEngine_Entry_CEBE     ; CE3C 20 BE CE                  ..
        bcs     $CE4A                           ; CE3F B0 09                    ..
        jsr     LowerFixedEngine_Entry_CF8D     ; CE41 20 8D CF                  ..
        jmp     $CE4A                           ; CE44 4C 4A CE                 LJ.
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_CF56     ; CE47 20 56 CF                  V.
        jsr     LowerFixedEngine_Entry_CEA9     ; CE4A 20 A9 CE                  ..
        jmp     LowerFixedEngine_Entry_C010     ; CE4D 4C 10 C0                 L..
; ----------------------------------------------------------------------------
        tax                                     ; CE50 AA                       .
        lda     $3C                             ; CE51 A5 3C                    .<
        and     #$0F                            ; CE53 29 0F                    ).
        cmp     #$0F                            ; CE55 C9 0F                    ..
        bne     LowerFixedEngine_Branch_CE68    ; CE57 D0 0F                    ..
        bit     $41                             ; CE59 24 41                    $A
        bmi     $CE69                           ; CE5B 30 0C                    0.
        lda     $052C                           ; CE5D AD 2C 05                 .,.
        ora     $052D                           ; CE60 0D 2D 05                 .-.
        beq     LowerFixedEngine_Branch_CE68    ; CE63 F0 03                    ..
        brk                                     ; CE65 00                       .
        db   $07,$EF                         ; CE66 07 EF                    ..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CE68:
        rts                                     ; CE68 60                       `
; ----------------------------------------------------------------------------
        cpx     #$FF                            ; CE69 E0 FF                    ..
        bne     LowerFixedEngine_Branch_CE68    ; CE6B D0 FB                    ..
        lda     $0527                           ; CE6D AD 27 05                 .'.
        bpl     LowerFixedEngine_Branch_CE68    ; CE70 10 F6                    ..
LowerFixedEngine_Entry_CE72:
        lda     #$00                            ; CE72 A9 00                    ..
        sta     $0527                           ; CE74 8D 27 05                 .'.
        lda     $0593                           ; CE77 AD 93 05                 ...
        ldx     $0594                           ; CE7A AE 94 05                 ...
        jmp     LowerFixedEngine_Entry_D207     ; CE7D 4C 07 D2                 L..
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_CF56     ; CE80 20 56 CF                  V.
        lda     $0527                           ; CE83 AD 27 05                 .'.
        beq     LowerFixedEngine_Branch_CE9A    ; CE86 F0 12                    ..
        sta     $0515                           ; CE88 8D 15 05                 ...
        brk                                     ; CE8B 00                       .
        db   $09,$FB,$A9,$20,$8D,$34,$05,$00 ; CE8C 09 FB A9 20 8D 34 05 00  ... .4..
        db   $00,$EF,$00,$04,$EF,$60         ; CE94 00 EF 00 04 EF 60        .....`
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CE9A:
        jsr     LowerFixedEngine_Entry_CF03     ; CE9A 20 03 CF                  ..
        jsr     LowerFixedEngine_Entry_CF38     ; CE9D 20 38 CF                  8.
        jsr     LowerFixedEngine_Entry_CF41     ; CEA0 20 41 CF                  A.
        jsr     LowerFixedEngine_Entry_CEA9     ; CEA3 20 A9 CE                  ..
        jmp     LowerFixedEngine_Entry_C010     ; CEA6 4C 10 C0                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CEA9:
        lda     Bank0F_LowerFixedEngine         ; CEA9 AD 00 C0                 ...
        and     #$40                            ; CEAC 29 40                    )@
        bne     $CEB6                           ; CEAE D0 06                    ..
        lda     ButtonsPressed                  ; CEB0 A5 14                    ..
        and     #$08                            ; CEB2 29 08                    ).
        beq     LowerFixedEngine_Branch_CEBD    ; CEB4 F0 07                    ..
        tsx                                     ; CEB6 BA                       .
        stx     $051B                           ; CEB7 8E 1B 05                 ...
        brk                                     ; CEBA 00                       .
        db   $00,$8F                         ; CEBB 00 8F                    ..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CEBD:
        rts                                     ; CEBD 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CEBE:
        lda     $059E                           ; CEBE AD 9E 05                 ...
        ldx     #$00                            ; CEC1 A2 00                    ..
        and     #$7F                            ; CEC3 29 7F                    ).
        cmp     $CEF8,x                         ; CEC5 DD F8 CE                 ...
        beq     $CED1                           ; CEC8 F0 07                    ..
        inx                                     ; CECA E8                       .
        cpx     #$0B                            ; CECB E0 0B                    ..
        bcc     $CEC5                           ; CECD 90 F6                    ..
        clc                                     ; CECF 18                       .
        rts                                     ; CED0 60                       `
; ----------------------------------------------------------------------------
        cpx     #$06                            ; CED1 E0 06                    ..
        beq     LowerFixedEngine_Branch_CEF3    ; CED3 F0 1E                    ..
        cpx     #$08                            ; CED5 E0 08                    ..
        beq     LowerFixedEngine_Branch_CEE6    ; CED7 F0 0D                    ..
        cpx     #$09                            ; CED9 E0 09                    ..
        beq     LowerFixedEngine_Branch_CEE6    ; CEDB F0 09                    ..
        cpx     #$0A                            ; CEDD E0 0A                    ..
        beq     LowerFixedEngine_Branch_CEEE    ; CEDF F0 0D                    ..
        brk                                     ; CEE1 00                       .
        db   $0D,$EF,$38,$60                 ; CEE2 0D EF 38 60              ..8`
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CEE6:
        brk                                     ; CEE6 00                       .
        db   $1B,$EF,$20,$BE,$CE,$38,$60     ; CEE7 1B EF 20 BE CE 38 60     .. ..8`
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CEEE:
        brk                                     ; CEEE 00                       .
        db   $21,$EF,$38,$60                 ; CEEF 21 EF 38 60              !.8`
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CEF3:
        brk                                     ; CEF3 00                       .
        db   $09,$BF,$38,$60                 ; CEF4 09 BF 38 60              ..8`
        db   $06,$07,$08,$09,$25,$26,$0A,$0C ; CEF8 06 07 08 09 25 26 0A 0C  ....%&..
        db   $05,$0B,$0F                     ; CF00 05 0B 0F                 ...
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CF03:
        lda     $0515                           ; CF03 AD 15 05                 ...
        cmp     #$02                            ; CF06 C9 02                    ..
        beq     LowerFixedEngine_Branch_CF37    ; CF08 F0 2D                    .-
        ldx     $7140                           ; CF0A AE 40 71                 .@q
        ldy     $7141                           ; CF0D AC 41 71                 .Aq
        lda     $6F40,x                         ; CF10 BD 40 6F                 .@o
        and     #$7F                            ; CF13 29 7F                    ).
        cmp     #$06                            ; CF15 C9 06                    ..
        beq     LowerFixedEngine_Branch_CF2B    ; CF17 F0 12                    ..
        cmp     #$07                            ; CF19 C9 07                    ..
        bne     LowerFixedEngine_Branch_CF37    ; CF1B D0 1A                    ..
        lda     $6F40,y                         ; CF1D B9 40 6F                 .@o
        and     #$7F                            ; CF20 29 7F                    ).
        cmp     #$06                            ; CF22 C9 06                    ..
        beq     LowerFixedEngine_Branch_CF37    ; CF24 F0 11                    ..
        dec     PlayerWorldX                    ; CF26 C6 42                    .B
        jmp     LowerFixedEngine_Branch_CF34    ; CF28 4C 34 CF                 L4.
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CF2B:
        lda     $6F40,y                         ; CF2B B9 40 6F                 .@o
        and     #$7F                            ; CF2E 29 7F                    ).
        cmp     #$07                            ; CF30 C9 07                    ..
        beq     LowerFixedEngine_Branch_CF37    ; CF32 F0 03                    ..
LowerFixedEngine_Branch_CF34:
        brk                                     ; CF34 00                       .
        db   $01,$EF                         ; CF35 01 EF                    ..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CF37:
        rts                                     ; CF37 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CF38:
        brk                                     ; CF38 00                       .
        db   $10,$87,$90,$03,$00,$06,$EF,$60 ; CF39 10 87 90 03 00 06 EF 60  .......`
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CF41:
        lda     SaveCurrentChapterMinus1        ; CF41 AD 5A 61                 .Za
        cmp     #$03                            ; CF44 C9 03                    ..
        bne     LowerFixedEngine_Branch_CF55    ; CF46 D0 0D                    ..
        lda     PlayerWorldY                    ; CF48 A5 43                    .C
        cmp     #$67                            ; CF4A C9 67                    .g
        bne     LowerFixedEngine_Branch_CF55    ; CF4C D0 07                    ..
        ldx     #$03                            ; CF4E A2 03                    ..
        lda     #$AB                            ; CF50 A9 AB                    ..
        jsr     LowerFixedEngine_Entry_D207     ; CF52 20 07 D2                  ..
LowerFixedEngine_Branch_CF55:
        rts                                     ; CF55 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CF56:
        lda     $0515                           ; CF56 AD 15 05                 ...
        bne     $CF5E                           ; CF59 D0 03                    ..
        brk                                     ; CF5B 00                       .
        db   $16,$EF                         ; CF5C 16 EF                    ..
; ----------------------------------------------------------------------------
        rts                                     ; CF5E 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CF5F:
        lda     $46                             ; CF5F A5 46                    .F
        sta     $47                             ; CF61 85 47                    .G
        lda     $7140                           ; CF63 AD 40 71                 .@q
        and     #$E0                            ; CF66 29 E0                    ).
        sta     $46                             ; CF68 85 46                    .F
        ldx     #$00                            ; CF6A A2 00                    ..
        cmp     $47                             ; CF6C C5 47                    .G
        beq     $CF7D                           ; CF6E F0 0D                    ..
        brk                                     ; CF70 00                       .
        db   $00,$87,$90,$03,$00,$1C,$EF,$00 ; CF71 00 87 90 03 00 1C EF 00  ........
        db   $0A,$EF,$A2,$10                 ; CF79 0A EF A2 10              ....
; ----------------------------------------------------------------------------
        lda     $627D                           ; CF7D AD 7D 62                 .}b
        and     #$EF                            ; CF80 29 EF                    ).
        sta     $627D                           ; CF82 8D 7D 62                 .}b
        txa                                     ; CF85 8A                       .
        ora     $627D                           ; CF86 0D 7D 62                 .}b
        sta     $627D                           ; CF89 8D 7D 62                 .}b
        rts                                     ; CF8C 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CF8D:
        brk                                     ; CF8D 00                       .
        db   $02,$EF                         ; CF8E 02 EF                    ..
; ----------------------------------------------------------------------------
        rts                                     ; CF90 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_CF91:
        lda     $7000                           ; CF91 AD 00 70                 ..p
        and     #$FC                            ; CF94 29 FC                    ).
        ora     $3D                             ; CF96 05 3D                    .=
        ora     #$40                            ; CF98 09 40                    .@
        sta     $7000                           ; CF9A 8D 00 70                 ..p
        ldx     #$00                            ; CF9D A2 00                    ..
        stx     $0527                           ; CF9F 8E 27 05                 .'.
        jsr     LowerFixedEngine_Entry_D7FC     ; CFA2 20 FC D7                  ..
        jsr     LowerFixedEngine_Entry_D16F     ; CFA5 20 6F D1                  o.
        bit     $41                             ; CFA8 24 41                    $A
        bpl     $CFAF                           ; CFAA 10 03                    ..
        jmp     $D050                           ; CFAC 4C 50 D0                 LP.
; ----------------------------------------------------------------------------
        tay                                     ; CFAF A8                       .
        lda     $52                           ; CFB0 A5 52                    .R
        tax                                     ; CFB2 AA                       .
        jsr     LowerFixedEngine_Entry_D251     ; CFB3 20 51 D2                  Q.
        sta     $54                             ; CFB6 85 54                    .T
        tax                                     ; CFB8 AA                       .
        lda     $0515                           ; CFB9 AD 15 05                 ...
        bne     LowerFixedEngine_Branch_D016    ; CFBC D0 58                    .X
        lda     Bank0F_LowerFixedEngine         ; CFBE AD 00 C0                 ...
        bmi     LowerFixedEngine_Branch_CFC9    ; CFC1 30 06                    0.
        lda     ButtonsPressed                  ; CFC3 A5 14                    ..
        and     #$02                            ; CFC5 29 02                    ).
        bne     LowerFixedEngine_Branch_D00A    ; CFC7 D0 41                    .A
LowerFixedEngine_Branch_CFC9:
        lda     $6F40,x                         ; CFC9 BD 40 6F                 .@o
        sta     $059E                           ; CFCC 8D 9E 05                 ...
        bpl     LowerFixedEngine_Branch_CFEB    ; CFCF 10 1A                    ..
        cmp     #$83                            ; CFD1 C9 83                    ..
        bne     LowerFixedEngine_Branch_D010    ; CFD3 D0 3B                    .;
        lda     $52                           ; CFD5 A5 52                    .R
        cmp     $6195                           ; CFD7 CD 95 61                 ..a
        bne     LowerFixedEngine_Branch_D013    ; CFDA D0 37                    .7
        lda     $53                             ; CFDC A5 53                    .S
        cmp     $6196                           ; CFDE CD 96 61                 ..a
        bne     LowerFixedEngine_Branch_D013    ; CFE1 D0 30                    .0
        lda     #$01                            ; CFE3 A9 01                    ..
        sta     $0527                           ; CFE5 8D 27 05                 .'.
        jmp     LowerFixedEngine_Branch_D00A    ; CFE8 4C 0A D0                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_CFEB:
        lda     CurrentTilesetCandidate         ; CFEB A5 65                    .e
        cmp     #$03                            ; CFED C9 03                    ..
        bne     LowerFixedEngine_Branch_D00A    ; CFEF D0 19                    ..
        ldx     #$03                            ; CFF1 A2 03                    ..
LowerFixedEngine_Branch_CFF3:
        lda     $6F6A,x                         ; CFF3 BD 6A 6F                 .jo
        cmp     $52                           ; CFF6 C5 52                    .R
        bne     LowerFixedEngine_Branch_D007    ; CFF8 D0 0D                    ..
        lda     $6F8A,x                         ; CFFA BD 8A 6F                 ..o
        cmp     $53                             ; CFFD C5 53                    .S
        bne     LowerFixedEngine_Branch_D007    ; CFFF D0 06                    ..
        brk                                     ; D001 00                       .
        db   $81,$FB,$4C,$13,$D0             ; D002 81 FB 4C 13 D0           ..L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D007:
        dex                                     ; D007 CA                       .
        bpl     LowerFixedEngine_Branch_CFF3    ; D008 10 E9                    ..
LowerFixedEngine_Branch_D00A:
        lda     $54                             ; D00A A5 54                    .T
        jsr     LowerFixedEngine_Entry_D1C9     ; D00C 20 C9 D1                  ..
        rts                                     ; D00F 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D010:
        brk                                     ; D010 00                       .
        db   $A2,$FB                         ; D011 A2 FB                    ..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D013:
        jmp     $D0C4                           ; D013 4C C4 D0                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D016:
        cmp     #$01                            ; D016 C9 01                    ..
        bne     LowerFixedEngine_Branch_D00A    ; D018 D0 F0                    ..
LowerFixedEngine_Branch_D01A:
        lda     $6F40,x                         ; D01A BD 40 6F                 .@o
        cmp     #$83                            ; D01D C9 83                    ..
        beq     LowerFixedEngine_Branch_D00A    ; D01F F0 E9                    ..
        cmp     #$24                            ; D021 C9 24                    .$
        beq     LowerFixedEngine_Branch_D00A    ; D023 F0 E5                    ..
        and     #$80                            ; D025 29 80                    ).
        bne     LowerFixedEngine_Branch_D013    ; D027 D0 EA                    ..
        sta     $0515                           ; D029 8D 15 05                 ...
        brk                                     ; D02C 00                       .
        db   $59,$33,$AD,$34,$05,$29,$1F,$8D ; D02D 59 33 AD 34 05 29 1F 8D  Y3.4.)..
        db   $34,$05,$AD,$88,$62,$30,$03,$00 ; D035 34 05 AD 88 62 30 03 00  4...b0..
        db   $09,$9F,$00,$0E,$EF,$20,$F1,$DF ; D03D 09 9F 00 0E EF 20 F1 DF  ..... ..
        db   $AD,$00,$70,$09                 ; D045 AD 00 70 09              ..p.
; ----------------------------------------------------------------------------
        rti                                     ; D049 40                       @
; ----------------------------------------------------------------------------
        db   $8D,$00,$70,$4C,$0A,$D0         ; D04A 8D 00 70 4C 0A D0        ..pL..
; ----------------------------------------------------------------------------
        pha                                     ; D050 48                       H
        lda     $52                           ; D051 A5 52                    .R
        pha                                     ; D053 48                       H
        lda     CurrentMapNumber                ; D054 A5 63                    .c
        cmp     #$3E                            ; D056 C9 3E                    .>
        beq     $D05E                           ; D058 F0 04                    ..
        lda     $56                             ; D05A A5 56                    .V
        bne     LowerFixedEngine_Branch_D080    ; D05C D0 22                    ."
        lda     $0515                           ; D05E AD 15 05                 ...
        cmp     #$01                            ; D061 C9 01                    ..
        bne     $D075                           ; D063 D0 10                    ..
        lda     $0534                           ; D065 AD 34 05                 .4.
        and     #$1F                            ; D068 29 1F                    ).
        tax                                     ; D06A AA                       .
        lda     $7000,x                         ; D06B BD 00 70                 ..p
        and     #$FC                            ; D06E 29 FC                    ).
        ora     $3D                             ; D070 05 3D                    .=
        sta     $7000,x                         ; D072 9D 00 70                 ..p
        lda     #$00                            ; D075 A9 00                    ..
        sta     $51                             ; D077 85 51                    .Q
        ldx     #$06                            ; D079 A2 06                    ..
        jsr     LowerFixedEngine_Entry_D724     ; D07B 20 24 D7                  $.
        bcs     $D0EF                           ; D07E B0 6F                    .o
LowerFixedEngine_Branch_D080:
        pla                                     ; D080 68                       h
        tax                                     ; D081 AA                       .
        pla                                     ; D082 68                       h
        tay                                     ; D083 A8                       .
        jsr     LowerFixedEngine_Entry_D3E6     ; D084 20 E6 D3                  ..
        tay                                     ; D087 A8                       .
        and     #$1F                            ; D088 29 1F                    ).
        tax                                     ; D08A AA                       .
        lda     $0527                           ; D08B AD 27 05                 .'.
        bne     LowerFixedEngine_Branch_D0B8    ; D08E D0 28                    .(
        lda     $0515                           ; D090 AD 15 05                 ...
        bne     $D0BD                           ; D093 D0 28                    .(
        lda     $6F40,x                         ; D095 BD 40 6F                 .@o
        sta     $059E                           ; D098 8D 9E 05                 ...
        lda     Bank0F_LowerFixedEngine         ; D09B AD 00 C0                 ...
        bmi     $D0A6                           ; D09E 30 06                    0.
        lda     ButtonsPressed                  ; D0A0 A5 14                    ..
        and     #$02                            ; D0A2 29 02                    ).
        bne     LowerFixedEngine_Branch_D0B8    ; D0A4 D0 12                    ..
        lda     $059E                           ; D0A6 AD 9E 05                 ...
        cmp     #$83                            ; D0A9 C9 83                    ..
        beq     $D0C4                           ; D0AB F0 17                    ..
        cmp     #$B0                            ; D0AD C9 B0                    ..
        beq     $D0C9                           ; D0AF F0 18                    ..
        and     #$80                            ; D0B1 29 80                    ).
        beq     LowerFixedEngine_Branch_D0B8    ; D0B3 F0 03                    ..
LowerFixedEngine_Branch_D0B5:
        jmp     LowerFixedEngine_Branch_D010    ; D0B5 4C 10 D0                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D0B8:
        tya                                     ; D0B8 98                       .
        jsr     LowerFixedEngine_Entry_D1C9     ; D0B9 20 C9 D1                  ..
        rts                                     ; D0BC 60                       `
; ----------------------------------------------------------------------------
        sty     $54                             ; D0BD 84 54                    .T
        jmp     LowerFixedEngine_Branch_D01A    ; D0BF 4C 1A D0                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D0C2:
        pla                                     ; D0C2 68                       h
        pla                                     ; D0C3 68                       h
        pla                                     ; D0C4 68                       h
        pla                                     ; D0C5 68                       h
        pla                                     ; D0C6 68                       h
        pla                                     ; D0C7 68                       h
        rts                                     ; D0C8 60                       `
; ----------------------------------------------------------------------------
        lda     CurrentMapNumber                ; D0C9 A5 63                    .c
        cmp     #$37                            ; D0CB C9 37                    .7
        bne     LowerFixedEngine_Branch_D0B5    ; D0CD D0 E6                    ..
        lda     $6BE7                           ; D0CF AD E7 6B                 ..k
        ora     $6BE8                           ; D0D2 0D E8 6B                 ..k
        ora     $6BE9                           ; D0D5 0D E9 6B                 ..k
        and     #$C0                            ; D0D8 29 C0                    ).
        bne     LowerFixedEngine_Branch_D0E2    ; D0DA D0 06                    ..
        brk                                     ; D0DC 00                       .
        db   $3F,$EF,$4C,$B8,$D0             ; D0DD 3F EF 4C B8 D0           ?.L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D0E2:
        brk                                     ; D0E2 00                       .
        db   $07,$6F,$43,$00,$C2,$4B,$20,$0A ; D0E3 07 6F 43 00 C2 4B 20 0A  .oC..K .
        db   $D2,$4C,$10,$D0                 ; D0EB D2 4C 10 D0              .L..
; ----------------------------------------------------------------------------
        lda     $70E0,x                         ; D0EF BD E0 70                 ..p
        and     #$08                            ; D0F2 29 08                    ).
        beq     $D14A                           ; D0F4 F0 54                    .T
        lda     #$00                            ; D0F6 A9 00                    ..
        sta     $7E                             ; D0F8 85 7E                    .~
        lda     $3D                             ; D0FA A5 3D                    .=
LowerFixedEngine_Branch_D0FC:
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
        jsr     LowerFixedEngine_Entry_D53B     ; D112 20 3B D5                  ;.
        pla                                     ; D115 68                       h
        tax                                     ; D116 AA                       .
        lda     $7000,x                         ; D117 BD 00 70                 ..p
        bpl     LowerFixedEngine_Branch_D126    ; D11A 10 0A                    ..
        lda     $7E                             ; D11C A5 7E                    .~
        bne     LowerFixedEngine_Branch_D123    ; D11E D0 03                    ..
        inc     $052F                           ; D120 EE 2F 05                 ./.
LowerFixedEngine_Branch_D123:
        jmp     LowerFixedEngine_Branch_D080    ; D123 4C 80 D0                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D126:
        inc     $7E                             ; D126 E6 7E                    .~
        lda     $7E                             ; D128 A5 7E                    .~
        cmp     #$03                            ; D12A C9 03                    ..
        bcs     LowerFixedEngine_Branch_D0C2    ; D12C B0 94                    ..
        cmp     #$01                            ; D12E C9 01                    ..
        beq     LowerFixedEngine_Branch_D139    ; D130 F0 07                    ..
        lda     $7D                             ; D132 A5 7D                    .}
        eor     #$02                            ; D134 49 02                    I.
        jmp     LowerFixedEngine_Branch_D0FC    ; D136 4C FC D0                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D139:
        lda     $12                             ; D139 A5 12                    ..
        bpl     LowerFixedEngine_Branch_D141    ; D13B 10 04                    ..
        inc     $7D                             ; D13D E6 7D                    .}
        inc     $7D                             ; D13F E6 7D                    .}
LowerFixedEngine_Branch_D141:
        dec     $7D                             ; D141 C6 7D                    .}
        lda     $7D                             ; D143 A5 7D                    .}
        and     #$03                            ; D145 29 03                    ).
        jmp     LowerFixedEngine_Branch_D0FC    ; D147 4C FC D0                 L..
; ----------------------------------------------------------------------------
        lda     $70E0,x                         ; D14A BD E0 70                 ..p
        and     #$07                            ; D14D 29 07                    ).
        beq     LowerFixedEngine_Branch_D16C    ; D14F F0 1B                    ..
        cmp     #$07                            ; D151 C9 07                    ..
        beq     LowerFixedEngine_Branch_D16C    ; D153 F0 17                    ..
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
        jmp     LowerFixedEngine_Branch_D080    ; D169 4C 80 D0                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D16C:
        jmp     LowerFixedEngine_Branch_D0C2    ; D16C 4C C2 D0                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D16F:
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
        bne     LowerFixedEngine_Branch_D1B4    ; D18E D0 24                    .$
        lda     $0515                           ; D190 AD 15 05                 ...
        cmp     #$02                            ; D193 C9 02                    ..
        bne     LowerFixedEngine_Branch_D1B4    ; D195 D0 1D                    ..
        lda     #$00                            ; D197 A9 00                    ..
        sta     $57                             ; D199 85 57                    .W
        ldx     $D1B9,y                         ; D19B BE B9 D1                 ...
        lda     $52,x                         ; D19E B5 52                    .R
        cmp     $D1BA,y                         ; D1A0 D9 BA D1                 ...
        bne     LowerFixedEngine_Branch_D1B4    ; D1A3 D0 0F                    ..
        ldx     $D1C1,y                         ; D1A5 BE C1 D1                 ...
        stx     $58                             ; D1A8 86 58                    .X
        lda     $D1C2,y                         ; D1AA B9 C2 D1                 ...
        sta     $57                             ; D1AD 85 57                    .W
        clc                                     ; D1AF 18                       .
        adc     $52,x                         ; D1B0 75 52                    uR
        sta     $52,x                         ; D1B2 95 52                    .R
LowerFixedEngine_Branch_D1B4:
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
LowerFixedEngine_Entry_D1C9:
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
LowerFixedEngine_Entry_D1E1:
        lda     $07BB                           ; D1E1 AD BB 07                 ...
        bpl     $D1EC                           ; D1E4 10 06                    ..
        jsr     LowerFixedEngine_Entry_E3E2     ; D1E6 20 E2 E3                  ..
        jsr     LowerFixedEngine_Entry_FF74     ; D1E9 20 74 FF                  t.
        rts                                     ; D1EC 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D1ED:
        jsr     LowerFixedEngine_Entry_D1FD     ; D1ED 20 FD D1                  ..
        jsr     LowerFixedEngine_Entry_C8CC     ; D1F0 20 CC C8                  ..
LowerFixedEngine_Entry_D1F3:
        lda     #$00                            ; D1F3 A9 00                    ..
        sta     $0539                           ; D1F5 8D 39 05                 .9.
        brk                                     ; D1F8 00                       .
        db   $07,$6F,$FF                     ; D1F9 07 6F FF                 .o.
; ----------------------------------------------------------------------------
        rts                                     ; D1FC 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D1FD:
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
LowerFixedEngine_Entry_D207:
        jsr     LowerFixedEngine_Entry_D1FD     ; D207 20 FD D1                  ..
        jsr     LowerFixedEngine_Entry_D218     ; D20A 20 18 D2                  ..
        jmp     LowerFixedEngine_Entry_D1F3     ; D20D 4C F3 D1                 L..
; ----------------------------------------------------------------------------
        db   $A9,$3C,$D0,$06,$A9,$78,$D0,$02 ; D210 A9 3C D0 06 A9 78 D0 02  .<...x..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D218:
        lda     #$B4                            ; D218 A9 B4                    ..
        sta     $00                             ; D21A 85 00                    ..
        jsr     LowerFixedEngine_Entry_D230     ; D21C 20 30 D2                  0.
        beq     $D226                           ; D21F F0 05                    ..
        dec     $00                             ; D221 C6 00                    ..
        bne     $D21C                           ; D223 D0 F7                    ..
        rts                                     ; D225 60                       `
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_D230     ; D226 20 30 D2                  0.
        bne     $D22F                           ; D229 D0 04                    ..
        dec     $00                             ; D22B C6 00                    ..
        bne     $D226                           ; D22D D0 F7                    ..
        rts                                     ; D22F 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D230:
        jsr     LowerFixedEngine_Entry_FF74     ; D230 20 74 FF                  t.
        jsr     LowerFixedEngine_Entry_C8EC     ; D233 20 EC C8                  ..
        lda     ButtonsPressed                  ; D236 A5 14                    ..
        rts                                     ; D238 60                       `
; ----------------------------------------------------------------------------
        db   $00                             ; D239 00                       .
        db   $FF,$01,$00,$00,$01,$FF,$00     ; D23A FF 01 00 00 01 FF 00     .......
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D241:
        lda     $62A5                           ; D241 AD A5 62                 ..b
        bmi     $D249                           ; D244 30 03                    0.
        jmp     LowerFixedEngine_Entry_C8EC     ; D246 4C EC C8                 L..
; ----------------------------------------------------------------------------
        lda     #$00                            ; D249 A9 00                    ..
        sta     ButtonsPressed                  ; D24B 85 14                    ..
        sta     $0529                           ; D24D 8D 29 05                 .).
        rts                                     ; D250 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D251:
        lda     $0507                           ; D251 AD 07 05                 ...
        sta     $04                             ; D254 85 04                    ..
        lda     #$0B                            ; D256 A9 0B                    ..
        jsr     LowerFixedEngine_Entry_FF91     ; D258 20 91 FF                  ..
        jsr     LowerFixedEngine_Entry_D266     ; D25B 20 66 D2                  f.
        pha                                     ; D25E 48                       H
        lda     $04                             ; D25F A5 04                    ..
        jsr     LowerFixedEngine_Entry_FF91     ; D261 20 91 FF                  ..
        pla                                     ; D264 68                       h
        rts                                     ; D265 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D266:
        stx     $00                             ; D266 86 00                    ..
        sty     $01                             ; D268 84 01                    ..
        jsr     LowerFixedEngine_Entry_D2B7     ; D26A 20 B7 D2                  ..
        jsr     LowerFixedEngine_Entry_D2E9     ; D26D 20 E9 D2                  ..
        jsr     LowerFixedEngine_Entry_D333     ; D270 20 33 D3                  3.
        jsr     LowerFixedEngine_Entry_D523     ; D273 20 23 D5                  #.
        rts                                     ; D276 60                       `
; ----------------------------------------------------------------------------
        db   $AD,$07,$05,$85,$04,$A9,$0B,$20 ; D277 AD 07 05 85 04 A9 0B 20  .......
        db   $91,$FF,$20,$8C,$D2,$48,$A5,$04 ; D27F 91 FF 20 8C D2 48 A5 04  .. ..H..
        db   $20,$91,$FF,$68,$60             ; D287 20 91 FF 68 60            ..h`
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D28C:
        stx     $00                             ; D28C 86 00                    ..
        sty     $01                             ; D28E 84 01                    ..
        jsr     LowerFixedEngine_Entry_D2B7     ; D290 20 B7 D2                  ..
        jsr     LowerFixedEngine_Entry_D2E9     ; D293 20 E9 D2                  ..
        jsr     LowerFixedEngine_Entry_D333     ; D296 20 33 D3                  3.
        jsr     LowerFixedEngine_Entry_D523     ; D299 20 23 D5                  #.
        pha                                     ; D29C 48                       H
        inc     $00                             ; D29D E6 00                    ..
        lda     $02                             ; D29F A5 02                    ..
        jsr     LowerFixedEngine_Entry_D35F     ; D2A1 20 5F D3                  _.
        jsr     LowerFixedEngine_Entry_D523     ; D2A4 20 23 D5                  #.
        pha                                     ; D2A7 48                       H
        inc     $00                             ; D2A8 E6 00                    ..
        lda     $02                             ; D2AA A5 02                    ..
        jsr     LowerFixedEngine_Entry_D35F     ; D2AC 20 5F D3                  _.
        jsr     LowerFixedEngine_Entry_D523     ; D2AF 20 23 D5                  #.
        tay                                     ; D2B2 A8                       .
        pla                                     ; D2B3 68                       h
        tax                                     ; D2B4 AA                       .
        pla                                     ; D2B5 68                       h
        rts                                     ; D2B6 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D2B7:
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
        bcs     LowerFixedEngine_Branch_D2D5    ; D2CC B0 07                    ..
        lda     $4A                             ; D2CE A5 4A                    .J
        cmp     $D2E6,x                         ; D2D0 DD E6 D2                 ...
        bcc     LowerFixedEngine_Branch_D2DE    ; D2D3 90 09                    ..
LowerFixedEngine_Branch_D2D5:
        pla                                     ; D2D5 68                       h
        pla                                     ; D2D6 68                       h
        pla                                     ; D2D7 68                       h
        pla                                     ; D2D8 68                       h
        lda     #$00                            ; D2D9 A9 00                    ..
        tax                                     ; D2DB AA                       .
        tay                                     ; D2DC A8                       .
        rts                                     ; D2DD 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D2DE:
        pla                                     ; D2DE 68                       h
        tay                                     ; D2DF A8                       .
        pla                                     ; D2E0 68                       h
        tax                                     ; D2E1 AA                       .
        rts                                     ; D2E2 60                       `
; ----------------------------------------------------------------------------
        db   $FA,$3D,$2A                     ; D2E3 FA 3D 2A                 .=*
        db   $FA,$3D,$36                     ; D2E6 FA 3D 36                 .=6
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D2E9:
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
        ldx     $00                             ; D2FD A6 00                    ..
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
        bcc     LowerFixedEngine_Branch_D322    ; D317 90 09                    ..
        lda     ($49),y                         ; D319 B1 49                    .I
        cpx     #$C0                            ; D31B E0 C0                    ..
        bcc     LowerFixedEngine_Branch_D322    ; D31D 90 03                    ..
        iny                                     ; D31F C8                       .
        lda     ($49),y                         ; D320 B1 49                    .I
LowerFixedEngine_Branch_D322:
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
LowerFixedEngine_Entry_D333:
        lda     #$00                            ; D333 A9 00                    ..
        bit     $00                             ; D335 24 00                    $.
        bvs     LowerFixedEngine_Branch_D386    ; D337 70 4D                    pM
        bpl     LowerFixedEngine_Branch_D33D    ; D339 10 02                    ..
        lda     #$80                            ; D33B A9 80                    ..
LowerFixedEngine_Branch_D33D:
        sta     $02                             ; D33D 85 02                    ..
        dec     $02                             ; D33F C6 02                    ..
        dey                                     ; D341 88                       .
LowerFixedEngine_Branch_D342:
        iny                                     ; D342 C8                       .
        lda     ($49),y                         ; D343 B1 49                    .I
        sta     $03                             ; D345 85 03                    ..
        and     #$E0                            ; D347 29 E0                    ).
        cmp     #$E0                            ; D349 C9 E0                    ..
        bne     LowerFixedEngine_Branch_D358    ; D34B D0 0B                    ..
        lda     $03                             ; D34D A5 03                    ..
        and     #$1F                            ; D34F 29 1F                    ).
        cmp     #$08                            ; D351 C9 08                    ..
        bcc     LowerFixedEngine_Branch_D36D    ; D353 90 18                    ..
        jmp     LowerFixedEngine_Branch_D379    ; D355 4C 79 D3                 Ly.
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D358:
        lda     $03                             ; D358 A5 03                    ..
        and     #$1F                            ; D35A 29 1F                    ).
        sec                                     ; D35C 38                       8
        adc     $02                             ; D35D 65 02                    e.
LowerFixedEngine_Entry_D35F:
        sta     $02                             ; D35F 85 02                    ..
        cmp     $00                             ; D361 C5 00                    ..
        bcc     LowerFixedEngine_Branch_D342    ; D363 90 DD                    ..
        lda     $03                             ; D365 A5 03                    ..
        lsr     a                               ; D367 4A                       J
        lsr     a                               ; D368 4A                       J
        lsr     a                               ; D369 4A                       J
        lsr     a                               ; D36A 4A                       J
        lsr     a                               ; D36B 4A                       J
        rts                                     ; D36C 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D36D:
        sec                                     ; D36D 38                       8
        adc     $02                             ; D36E 65 02                    e.
        sta     $02                             ; D370 85 02                    ..
        cmp     $00                             ; D372 C5 00                    ..
        bcc     LowerFixedEngine_Branch_D342    ; D374 90 CC                    ..
        lda     #$07                            ; D376 A9 07                    ..
        rts                                     ; D378 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D379:
        inc     $02                             ; D379 E6 02                    ..
        lda     $02                             ; D37B A5 02                    ..
        cmp     $00                             ; D37D C5 00                    ..
        bcc     LowerFixedEngine_Branch_D342    ; D37F 90 C1                    ..
        lda     $03                             ; D381 A5 03                    ..
        and     #$1F                            ; D383 29 1F                    ).
        rts                                     ; D385 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D386:
        jsr     LowerFixedEngine_Entry_D38B     ; D386 20 8B D3                  ..
        dey                                     ; D389 88                       .
        rts                                     ; D38A 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D38B:
        bmi     LowerFixedEngine_Branch_D38F    ; D38B 30 02                    0.
        lda     #$80                            ; D38D A9 80                    ..
LowerFixedEngine_Branch_D38F:
        sta     $02                             ; D38F 85 02                    ..
        dec     $02                             ; D391 C6 02                    ..
LowerFixedEngine_Branch_D393:
        dey                                     ; D393 88                       .
        lda     ($49),y                         ; D394 B1 49                    .I
        sta     $03                             ; D396 85 03                    ..
        and     #$E0                            ; D398 29 E0                    ).
        cmp     #$E0                            ; D39A C9 E0                    ..
        bne     LowerFixedEngine_Branch_D3A9    ; D39C D0 0B                    ..
        lda     $03                             ; D39E A5 03                    ..
        and     #$1F                            ; D3A0 29 1F                    ).
        cmp     #$08                            ; D3A2 C9 08                    ..
        bcc     LowerFixedEngine_Branch_D3C7    ; D3A4 90 21                    .!
        jmp     LowerFixedEngine_Branch_D3D9    ; D3A6 4C D9 D3                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D3A9:
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
        cmp     $00                             ; D3BA C5 00                    ..
        bcs     LowerFixedEngine_Branch_D393    ; D3BC B0 D5                    ..
        txa                                     ; D3BE 8A                       .
        sta     $03                             ; D3BF 85 03                    ..
        lsr     a                               ; D3C1 4A                       J
        lsr     a                               ; D3C2 4A                       J
        lsr     a                               ; D3C3 4A                       J
        lsr     a                               ; D3C4 4A                       J
        lsr     a                               ; D3C5 4A                       J
        rts                                     ; D3C6 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D3C7:
        adc     #$01                            ; D3C7 69 01                    i.
        sta     $03                             ; D3C9 85 03                    ..
        lda     $02                             ; D3CB A5 02                    ..
        sec                                     ; D3CD 38                       8
        sbc     $03                             ; D3CE E5 03                    ..
        sta     $02                             ; D3D0 85 02                    ..
        cmp     $00                             ; D3D2 C5 00                    ..
        bcs     LowerFixedEngine_Branch_D393    ; D3D4 B0 BD                    ..
        lda     #$07                            ; D3D6 A9 07                    ..
        rts                                     ; D3D8 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D3D9:
        dec     $02                             ; D3D9 C6 02                    ..
        lda     $02                             ; D3DB A5 02                    ..
        cmp     $00                             ; D3DD C5 00                    ..
        bcs     LowerFixedEngine_Branch_D393    ; D3DF B0 B2                    ..
        lda     $03                             ; D3E1 A5 03                    ..
        and     #$1F                            ; D3E3 29 1F                    ).
        rts                                     ; D3E5 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D3E6:
        cpx     $3F                             ; D3E6 E4 3F                    .?
        bcs     $D410                           ; D3E8 B0 26                    .&
        cpy     $40                             ; D3EA C4 40                    .@
        bcs     $D410                           ; D3EC B0 22                    ."
        txa                                     ; D3EE 8A                       .
        pha                                     ; D3EF 48                       H
        lda     $3F                             ; D3F0 A5 3F                    .?
        sta     $00                             ; D3F2 85 00                    ..
        lda     #$00                            ; D3F4 A9 00                    ..
        sta     $01                             ; D3F6 85 01                    ..
        tya                                     ; D3F8 98                       .
        ldx     #$00                            ; D3F9 A2 00                    ..
        jsr     LowerFixedEngine_Entry_C827     ; D3FB 20 27 C8                  '.
        pla                                     ; D3FE 68                       h
        ldy     #$00                            ; D3FF A0 00                    ..
        jsr     LowerFixedEngine_Entry_C81D     ; D401 20 1D C8                  ..
        ldy     #$78                            ; D404 A0 78                    .x
        lda     #$00                            ; D406 A9 00                    ..
        jsr     LowerFixedEngine_Entry_C81D     ; D408 20 1D C8                  ..
        ldy     #$00                            ; D40B A0 00                    ..
        lda     ($00),y                         ; D40D B1 00                    ..
        rts                                     ; D40F 60                       `
; ----------------------------------------------------------------------------
        lda     #$FF                            ; D410 A9 FF                    ..
        sta     $00                             ; D412 85 00                    ..
        sta     $01                             ; D414 85 01                    ..
        jsr     LowerFixedEngine_Entry_D459     ; D416 20 59 D4                  Y.
        rts                                     ; D419 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D41A:
        cpx     $3F                             ; D41A E4 3F                    .?
        bcs     $D410                           ; D41C B0 F2                    ..
        cpy     $40                             ; D41E C4 40                    .@
        bcs     $D410                           ; D420 B0 EE                    ..
        ldy     #$00                            ; D422 A0 00                    ..
        lda     ($00),y                         ; D424 B1 00                    ..
LowerFixedEngine_Entry_D426:
        pha                                     ; D426 48                       H
        lda     $00                             ; D427 A5 00                    ..
        and     $01                             ; D429 25 01                    %.
        cmp     #$FF                            ; D42B C9 FF                    ..
        beq     $D435                           ; D42D F0 06                    ..
        inc     $00                             ; D42F E6 00                    ..
        bne     $D435                           ; D431 D0 02                    ..
        inc     $01                             ; D433 E6 01                    ..
        pla                                     ; D435 68                       h
        rts                                     ; D436 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D437:
        cpx     $3F                             ; D437 E4 3F                    .?
        bcs     $D410                           ; D439 B0 D5                    ..
        cpy     $40                             ; D43B C4 40                    .@
        bcs     $D410                           ; D43D B0 D1                    ..
        ldy     #$00                            ; D43F A0 00                    ..
        lda     ($00),y                         ; D441 B1 00                    ..
LowerFixedEngine_Entry_D443:
        pha                                     ; D443 48                       H
        lda     $00                             ; D444 A5 00                    ..
        and     $01                             ; D446 25 01                    %.
        cmp     #$FF                            ; D448 C9 FF                    ..
        beq     $D457                           ; D44A F0 0B                    ..
        lda     $00                             ; D44C A5 00                    ..
        clc                                     ; D44E 18                       .
        adc     $3F                             ; D44F 65 3F                    e?
        sta     $00                             ; D451 85 00                    ..
        bcc     $D457                           ; D453 90 02                    ..
        inc     $01                             ; D455 E6 01                    ..
        pla                                     ; D457 68                       h
        rts                                     ; D458 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D459:
        bit     $0550                           ; D459 2C 50 05                 ,P.
        bpl     LowerFixedEngine_Branch_D472    ; D45C 10 14                    ..
        txa                                     ; D45E 8A                       .
        and     #$07                            ; D45F 29 07                    ).
        tax                                     ; D461 AA                       .
        tya                                     ; D462 98                       .
        and     #$07                            ; D463 29 07                    ).
        tay                                     ; D465 A8                       .
        lda     $D476,x                         ; D466 BD 76 D4                 .v.
        and     $D47E,y                         ; D469 39 7E D4                 9~.
        bne     LowerFixedEngine_Branch_D472    ; D46C D0 04                    ..
        lda     $058C                           ; D46E AD 8C 05                 ...
        rts                                     ; D471 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D472:
        lda     $0520                           ; D472 AD 20 05                 . .
        rts                                     ; D475 60                       `
; ----------------------------------------------------------------------------
        db   $01,$02,$04,$08,$10,$20,$40,$80 ; D476 01 02 04 08 10 20 40 80  ..... @.
        db   $44,$EE,$EE,$44,$11,$BB,$BB,$11 ; D47E 44 EE EE 44 11 BB BB 11  D..D....
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D486:
        cmp     #$00                            ; D486 C9 00                    ..
        bne     LowerFixedEngine_Branch_D490    ; D488 D0 06                    ..
        jsr     LowerFixedEngine_Entry_D4B5     ; D48A 20 B5 D4                  ..
        jmp     LowerFixedEngine_Branch_D4AA    ; D48D 4C AA D4                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D490:
        cmp     #$01                            ; D490 C9 01                    ..
        bne     LowerFixedEngine_Branch_D4AA    ; D492 D0 16                    ..
        ldx     CurrentTilesetCandidate         ; D494 A6 65                    .e
        cpx     #$03                            ; D496 E0 03                    ..
        bne     LowerFixedEngine_Branch_D4AA    ; D498 D0 10                    ..
        jsr     LowerFixedEngine_Entry_C891     ; D49A 20 91 C8                  ..
        cmp     #$FA                            ; D49D C9 FA                    ..
        lda     #$18                            ; D49F A9 18                    ..
        bcc     LowerFixedEngine_Branch_D4AA    ; D4A1 90 07                    ..
        lda     #$19                            ; D4A3 A9 19                    ..
        jmp     LowerFixedEngine_Branch_D4AA    ; D4A5 4C AA D4                 L..
; ----------------------------------------------------------------------------
        db   $A9,$00                         ; D4A8 A9 00                    ..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D4AA:
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
LowerFixedEngine_Entry_D4B5:
        sta     $59                             ; D4B5 85 59                    .Y
        dec     $53                             ; D4B7 C6 53                    .S
        jsr     LowerFixedEngine_Entry_D4D9     ; D4B9 20 D9 D4                  ..
        inc     $53                             ; D4BC E6 53                    .S
        inc     $54                             ; D4BE E6 54                    .T
        jsr     LowerFixedEngine_Entry_D4D9     ; D4C0 20 D9 D4                  ..
        dec     $54                             ; D4C3 C6 54                    .T
        inc     $53                             ; D4C5 E6 53                    .S
        jsr     LowerFixedEngine_Entry_D4D9     ; D4C7 20 D9 D4                  ..
        dec     $53                             ; D4CA C6 53                    .S
        dec     $54                             ; D4CC C6 54                    .T
        jsr     LowerFixedEngine_Entry_D4D9     ; D4CE 20 D9 D4                  ..
        inc     $54                             ; D4D1 E6 54                    .T
        lda     $59                             ; D4D3 A5 59                    .Y
        clc                                     ; D4D5 18                       .
        adc     #$20                            ; D4D6 69 20                    i
        rts                                     ; D4D8 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D4D9:
        ldx     $53                             ; D4D9 A6 53                    .S
        ldy     $54                             ; D4DB A4 54                    .T
        jsr     LowerFixedEngine_Entry_D251     ; D4DD 20 51 D2                  Q.
        cmp     #$00                            ; D4E0 C9 00                    ..
        beq     LowerFixedEngine_Branch_D4F0    ; D4E2 F0 0C                    ..
        cmp     #$16                            ; D4E4 C9 16                    ..
        beq     LowerFixedEngine_Branch_D4F0    ; D4E6 F0 08                    ..
        cmp     #$0A                            ; D4E8 C9 0A                    ..
        beq     LowerFixedEngine_Branch_D4F0    ; D4EA F0 04                    ..
        sec                                     ; D4EC 38                       8
        rol     $59                             ; D4ED 26 59                    &Y
        rts                                     ; D4EF 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D4F0:
        asl     $59                             ; D4F0 06 59                    .Y
        rts                                     ; D4F2 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D4F3:
        pha                                     ; D4F3 48                       H
        and     #$E0                            ; D4F4 29 E0                    ).
        cmp     $46                             ; D4F6 C5 46                    .F
        beq     LowerFixedEngine_Branch_D515    ; D4F8 F0 1B                    ..
        lda     $07BA                           ; D4FA AD BA 07                 ...
        cmp     #$04                            ; D4FD C9 04                    ..
        bne     $D50A                           ; D4FF D0 09                    ..
        pla                                     ; D501 68                       h
        pha                                     ; D502 48                       H
        and     #$1F                            ; D503 29 1F                    ).
        cmp     $0520                           ; D505 CD 20 05                 . .
        beq     LowerFixedEngine_Branch_D515    ; D508 F0 0B                    ..
        pla                                     ; D50A 68                       h
        lda     #$20                            ; D50B A9 20                    .
        ldx     $46                             ; D50D A6 46                    .F
        beq     LowerFixedEngine_Branch_D518    ; D50F F0 07                    ..
        lda     #$21                            ; D511 A9 21                    .!
        bne     LowerFixedEngine_Branch_D518    ; D513 D0 03                    ..
LowerFixedEngine_Branch_D515:
        pla                                     ; D515 68                       h
        and     #$1F                            ; D516 29 1F                    ).
LowerFixedEngine_Branch_D518:
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
LowerFixedEngine_Entry_D523:
        pha                                     ; D523 48                       H
        lda     $00                             ; D524 A5 00                    ..
        cmp     #$C2                            ; D526 C9 C2                    ..
        bne     LowerFixedEngine_Branch_D539    ; D528 D0 0F                    ..
        lda     $01                             ; D52A A5 01                    ..
        cmp     #$2E                            ; D52C C9 2E                    ..
        bne     LowerFixedEngine_Branch_D539    ; D52E D0 09                    ..
        lda     $62A1                           ; D530 AD A1 62                 ..b
        bpl     LowerFixedEngine_Branch_D539    ; D533 10 04                    ..
        pla                                     ; D535 68                       h
        lda     #$02                            ; D536 A9 02                    ..
        rts                                     ; D538 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D539:
        pla                                     ; D539 68                       h
        rts                                     ; D53A 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D53B:
        lda     #$FF                            ; D53B A9 FF                    ..
        sta     $56                             ; D53D 85 56                    .V
        jmp     LowerFixedEngine_Branch_D546    ; D53F 4C 46 D5                 LF.
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D542:
        lda     #$00                            ; D542 A9 00                    ..
        sta     $56                             ; D544 85 56                    .V
LowerFixedEngine_Branch_D546:
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
        bne     $D588                           ; D563 D0 23                    .#
        lda     $41                             ; D565 A5 41                    .A
        bmi     $D56C                           ; D567 30 03                    0.
        jmp     LowerFixedEngine_Entry_C013     ; D569 4C 13 C0                 L..
; ----------------------------------------------------------------------------
        lda     $67                             ; D56C A5 67                    .g
        jsr     LowerFixedEngine_Entry_FF91     ; D56E 20 91 FF                  ..
        jsr     LowerFixedEngine_Entry_D57F     ; D571 20 7F D5                  ..
        lda     $7024                           ; D574 AD 24 70                 .$p
        and     $7025                           ; D577 2D 25 70                 -%p
        bmi     $D5AC                           ; D57A 30 30                    00
        jmp     LowerFixedEngine_Entry_C013     ; D57C 4C 13 C0                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D57F:
        jsr     LowerFixedEngine_Entry_D607     ; D57F 20 07 D6                  ..
        jsr     LowerFixedEngine_Entry_D5EE     ; D582 20 EE D5                  ..
        jmp     LowerFixedEngine_Entry_D57F     ; D585 4C 7F D5                 L..
; ----------------------------------------------------------------------------
        pha                                     ; D588 48                       H
        jsr     LowerFixedEngine_Entry_D5C0     ; D589 20 C0 D5                  ..
        pla                                     ; D58C 68                       h
        and     #$07                            ; D58D 29 07                    ).
        bne     $D5AC                           ; D58F D0 1B                    ..
        lda     $41                             ; D591 A5 41                    .A
        bpl     $D598                           ; D593 10 03                    ..
        jsr     LowerFixedEngine_Entry_D5AD     ; D595 20 AD D5                  ..
        ldx     #$00                            ; D598 A2 00                    ..
        jsr     LowerFixedEngine_Entry_D59D     ; D59A 20 9D D5                  ..
LowerFixedEngine_Entry_D59D:
        lda     $052A,x                         ; D59D BD 2A 05                 .*.
        and     #$40                            ; D5A0 29 40                    )@
        beq     $D5AB                           ; D5A2 F0 07                    ..
        asl     a                               ; D5A4 0A                       .
        ora     $7004,x                         ; D5A5 1D 04 70                 ..p
        sta     $7004,x                         ; D5A8 9D 04 70                 ..p
        inx                                     ; D5AB E8                       .
        rts                                     ; D5AC 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D5AD:
        lda     $67                             ; D5AD A5 67                    .g
        jsr     LowerFixedEngine_Entry_FF91     ; D5AF 20 91 FF                  ..
        jsr     LowerFixedEngine_Entry_D5FE     ; D5B2 20 FE D5                  ..
        jsr     LowerFixedEngine_Entry_D5EE     ; D5B5 20 EE D5                  ..
        jmp     $D5B2                           ; D5B8 4C B2 D5                 L..
; ----------------------------------------------------------------------------
        db   $A5,$58,$4C,$91,$FF             ; D5BB A5 58 4C 91 FF           .XL..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D5C0:
        ldx     $51                             ; D5C0 A6 51                    .Q
        lda     $7020,x                         ; D5C2 BD 20 70                 . p
        cmp     #$FF                            ; D5C5 C9 FF                    ..
        beq     $D5E5                           ; D5C7 F0 1C                    ..
        lda     $7160,x                         ; D5C9 BD 60 71                 .`q
        beq     LowerFixedEngine_Branch_D5DD    ; D5CC F0 0F                    ..
        bmi     LowerFixedEngine_Branch_D5DA    ; D5CE 30 0A                    0.
        lda     #$09                            ; D5D0 A9 09                    ..
        sta     $57                             ; D5D2 85 57                    .W
        jsr     LowerFixedEngine_Entry_D5EA     ; D5D4 20 EA D5                  ..
        jmp     LowerFixedEngine_Branch_D5DD    ; D5D7 4C DD D5                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D5DA:
        jsr     LowerFixedEngine_Entry_D9CB     ; D5DA 20 CB D9                  ..
LowerFixedEngine_Branch_D5DD:
        inc     $51                             ; D5DD E6 51                    .Q
        lda     $51                             ; D5DF A5 51                    .Q
        cmp     #$1E                            ; D5E1 C9 1E                    ..
        bcc     LowerFixedEngine_Entry_D5C0     ; D5E3 90 DB                    ..
        lda     #$06                            ; D5E5 A9 06                    ..
        sta     $51                             ; D5E7 85 51                    .Q
        rts                                     ; D5E9 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D5EA:
        jsr     LowerFixedEngine_Entry_D94B     ; D5EA 20 4B D9                  K.
        rts                                     ; D5ED 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D5EE:
        inc     $51                             ; D5EE E6 51                    .Q
        lda     $51                             ; D5F0 A5 51                    .Q
        cmp     #$1E                            ; D5F2 C9 1E                    ..
        bcc     $D5FD                           ; D5F4 90 07                    ..
        lda     $58                             ; D5F6 A5 58                    .X
        jsr     LowerFixedEngine_Entry_FF91     ; D5F8 20 91 FF                  ..
LowerFixedEngine_Branch_D5FB:
        pla                                     ; D5FB 68                       h
        pla                                     ; D5FC 68                       h
        rts                                     ; D5FD 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D5FE:
        ldx     $51                             ; D5FE A6 51                    .Q
        lda     $70E0,x                         ; D600 BD E0 70                 ..p
        and     #$40                            ; D603 29 40                    )@
        beq     $D5FD                           ; D605 F0 F6                    ..
LowerFixedEngine_Entry_D607:
        ldx     $51                             ; D607 A6 51                    .Q
        lda     $7020,x                         ; D609 BD 20 70                 . p
        cmp     #$FF                            ; D60C C9 FF                    ..
        beq     $D5F6                           ; D60E F0 E6                    ..
        jsr     LowerFixedEngine_Entry_D63B     ; D610 20 3B D6                  ;.
        bcc     $D61B                           ; D613 90 06                    ..
        jsr     LowerFixedEngine_Entry_D621     ; D615 20 21 D6                  !.
        jsr     LowerFixedEngine_Entry_D891     ; D618 20 91 D8                  ..
        jsr     LowerFixedEngine_Entry_D684     ; D61B 20 84 D6                  ..
        jmp     $D76E                           ; D61E 4C 6E D7                 Ln.
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D621:
        lda     $6F60,x                         ; D621 BD 60 6F                 .`o
        sta     $52                           ; D624 85 52                    .R
        lda     $6F80,x                         ; D626 BD 80 6F                 ..o
        sta     $53                             ; D629 85 53                    .S
        jsr     LowerFixedEngine_Entry_D6F4     ; D62B 20 F4 D6                  ..
        bcs     $D63A                           ; D62E B0 0A                    ..
        ldx     $51                             ; D630 A6 51                    .Q
        lda     $7020,x                         ; D632 BD 20 70                 . p
        and     #$EF                            ; D635 29 EF                    ).
        sta     $7020,x                         ; D637 9D 20 70                 . p
        rts                                     ; D63A 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D63B:
        lda     $56                             ; D63B A5 56                    .V
        beq     $D646                           ; D63D F0 07                    ..
        lda     $70E0,x                         ; D63F BD E0 70                 ..p
        and     #$10                            ; D642 29 10                    ).
        bne     LowerFixedEngine_Branch_D673    ; D644 D0 2D                    .-
        lda     $7000,x                         ; D646 BD 00 70                 ..p
        bmi     LowerFixedEngine_Branch_D5FB    ; D649 30 B0                    0.
        lda     $7040,x                         ; D64B BD 40 70                 .@p
        beq     LowerFixedEngine_Branch_D5FB    ; D64E F0 AB                    ..
        dec     $7040,x                         ; D650 DE 40 70                 .@p
        lda     $7040,x                         ; D653 BD 40 70                 .@p
        and     #$0F                            ; D656 29 0F                    ).
        bne     LowerFixedEngine_Branch_D5FB    ; D658 D0 A1                    ..
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
        beq     LowerFixedEngine_Branch_D5FB    ; D66F F0 8A                    ..
        sec                                     ; D671 38                       8
        rts                                     ; D672 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D673:
        lda     $70E0,x                         ; D673 BD E0 70                 ..p
        and     #$10                            ; D676 29 10                    ).
        beq     LowerFixedEngine_Branch_D5FB    ; D678 F0 81                    ..
        lda     $70E0,x                         ; D67A BD E0 70                 ..p
        and     #$EF                            ; D67D 29 EF                    ).
        sta     $70E0,x                         ; D67F 9D E0 70                 ..p
        clc                                     ; D682 18                       .
        rts                                     ; D683 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D684:
        php                                     ; D684 08                       .
        jsr     LowerFixedEngine_Entry_D752     ; D685 20 52 D7                  R.
        plp                                     ; D688 28                       (
        bcc     $D690                           ; D689 90 05                    ..
        lda     $0530                           ; D68B AD 30 05                 .0.
        bmi     $D695                           ; D68E 30 05                    0.
        jsr     LowerFixedEngine_Entry_D722     ; D690 20 22 D7                  ".
        bcs     $D6D8                           ; D693 B0 43                    .C
        ldx     $52                           ; D695 A6 52                    .R
        ldy     $53                             ; D697 A4 53                    .S
        jsr     LowerFixedEngine_Entry_D3E6     ; D699 20 E6 D3                  ..
        sta     $55                             ; D69C 85 55                    .U
        and     #$E0                            ; D69E 29 E0                    ).
        sta     $54                             ; D6A0 85 54                    .T
        jsr     LowerFixedEngine_Entry_D6B6     ; D6A2 20 B6 D6                  ..
        jsr     LowerFixedEngine_Entry_D6DB     ; D6A5 20 DB D6                  ..
        jsr     LowerFixedEngine_Entry_D6E8     ; D6A8 20 E8 D6                  ..
        jsr     LowerFixedEngine_Entry_D6F4     ; D6AB 20 F4 D6                  ..
        ldx     $51                             ; D6AE A6 51                    .Q
        lda     $55                             ; D6B0 A5 55                    .U
        sta     $7140,x                         ; D6B2 9D 40 71                 .@q
        rts                                     ; D6B5 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D6B6:
        lda     $55                             ; D6B6 A5 55                    .U
        and     #$1F                            ; D6B8 29 1F                    ).
        tax                                     ; D6BA AA                       .
        ldy     $6F40,x                         ; D6BB BC 40 6F                 .@o
        ldx     $51                             ; D6BE A6 51                    .Q
        lda     $70E0,x                         ; D6C0 BD E0 70                 ..p
        and     #$07                            ; D6C3 29 07                    ).
        beq     $D6CC                           ; D6C5 F0 05                    ..
        cpy     #$83                            ; D6C7 C0 83                    ..
        bne     LowerFixedEngine_Branch_D6D6    ; D6C9 D0 0B                    ..
        rts                                     ; D6CB 60                       `
; ----------------------------------------------------------------------------
        tya                                     ; D6CC 98                       .
        bmi     LowerFixedEngine_Branch_D6D6    ; D6CD 30 07                    0.
        and     #$7F                            ; D6CF 29 7F                    ).
        cmp     #$05                            ; D6D1 C9 05                    ..
        beq     LowerFixedEngine_Branch_D6D6    ; D6D3 F0 01                    ..
        rts                                     ; D6D5 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D6D6:
        pla                                     ; D6D6 68                       h
        pla                                     ; D6D7 68                       h
        pla                                     ; D6D8 68                       h
        pla                                     ; D6D9 68                       h
        rts                                     ; D6DA 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D6DB:
        lda     $52                           ; D6DB A5 52                    .R
        cmp     $3F                             ; D6DD C5 3F                    .?
        bcs     LowerFixedEngine_Branch_D6D6    ; D6DF B0 F5                    ..
        lda     $53                             ; D6E1 A5 53                    .S
        cmp     $40                             ; D6E3 C5 40                    .@
        bcs     LowerFixedEngine_Branch_D6D6    ; D6E5 B0 EF                    ..
        rts                                     ; D6E7 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D6E8:
        ldx     $51                             ; D6E8 A6 51                    .Q
        lda     $7140,x                         ; D6EA BD 40 71                 .@q
        and     #$E0                            ; D6ED 29 E0                    ).
        cmp     $54                             ; D6EF C5 54                    .T
        bne     LowerFixedEngine_Branch_D6D6    ; D6F1 D0 E3                    ..
        rts                                     ; D6F3 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D6F4:
        lda     $0539                           ; D6F4 AD 39 05                 .9.
        bpl     $D720                           ; D6F7 10 27                    .'
        lda     $52                           ; D6F9 A5 52                    .R
        sec                                     ; D6FB 38                       8
        sbc     $7C                             ; D6FC E5 7C                    .|
        sta     $5F                             ; D6FE 85 5F                    ._
        cmp     #$10                            ; D700 C9 10                    ..
        bcs     $D720                           ; D702 B0 1C                    ..
        lda     $53                             ; D704 A5 53                    .S
        sec                                     ; D706 38                       8
        sbc     $7B                             ; D707 E5 7B                    .{
        sta     $60                             ; D709 85 60                    .`
        cmp     #$0F                            ; D70B C9 0F                    ..
        bcs     $D720                           ; D70D B0 11                    ..
        brk                                     ; D70F 00                       .
        db   $0B,$6F                         ; D710 0B 6F                    .o
; ----------------------------------------------------------------------------
        bcc     $D720                           ; D712 90 0C                    ..
        ldx     $51                             ; D714 A6 51                    .Q
        lda     $7020,x                         ; D716 BD 20 70                 . p
        ora     #$10                            ; D719 09 10                    ..
        sta     $7020,x                         ; D71B 9D 20 70                 . p
        sec                                     ; D71E 38                       8
        rts                                     ; D71F 60                       `
; ----------------------------------------------------------------------------
        clc                                     ; D720 18                       .
        rts                                     ; D721 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D722:
        ldx     #$00                            ; D722 A2 00                    ..
LowerFixedEngine_Entry_D724:
        lda     $6F60,x                         ; D724 BD 60 6F                 .`o
        cmp     $52                           ; D727 C5 52                    .R
        bne     $D732                           ; D729 D0 07                    ..
        lda     $6F80,x                         ; D72B BD 80 6F                 ..o
        cmp     $53                             ; D72E C5 53                    .S
        beq     $D743                           ; D730 F0 11                    ..
        inx                                     ; D732 E8                       .
        cpx     #$1E                            ; D733 E0 1E                    ..
        bcs     $D741                           ; D735 B0 0A                    ..
        lda     $6F60,x                         ; D737 BD 60 6F                 .`o
        and     $6F80,x                         ; D73A 3D 80 6F                 =.o
        cmp     #$FF                            ; D73D C9 FF                    ..
        bne     LowerFixedEngine_Entry_D724     ; D73F D0 E3                    ..
        clc                                     ; D741 18                       .
        rts                                     ; D742 60                       `
; ----------------------------------------------------------------------------
        cpx     $51                             ; D743 E4 51                    .Q
        beq     $D732                           ; D745 F0 EB                    ..
        cpx     #$06                            ; D747 E0 06                    ..
        bcs     $D751                           ; D749 B0 06                    ..
        lda     $7020,x                         ; D74B BD 20 70                 . p
        bmi     $D732                           ; D74E 30 E2                    0.
        sec                                     ; D750 38                       8
        rts                                     ; D751 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D752:
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
        ldx     $51                             ; D76E A6 51                    .Q
        lda     $7000,x                         ; D770 BD 00 70                 ..p
        ora     #$80                            ; D773 09 80                    ..
        sta     $7000,x                         ; D775 9D 00 70                 ..p
        and     #$01                            ; D778 29 01                    ).
        beq     $D794                           ; D77A F0 18                    ..
        ldy     #$10                            ; D77C A0 10                    ..
        lda     $7000,x                         ; D77E BD 00 70                 ..p
        and     #$03                            ; D781 29 03                    ).
        cmp     #$01                            ; D783 C9 01                    ..
        beq     $D789                           ; D785 F0 02                    ..
        ldy     #$F0                            ; D787 A0 F0                    ..
        tya                                     ; D789 98                       .
        clc                                     ; D78A 18                       .
        adc     $71E0,x                         ; D78B 7D E0 71                 }.q
        sta     $71E0,x                         ; D78E 9D E0 71                 ..q
        jmp     $D7B7                           ; D791 4C B7 D7                 L..
; ----------------------------------------------------------------------------
        ldy     #$01                            ; D794 A0 01                    ..
        lda     $7000,x                         ; D796 BD 00 70                 ..p
        and     #$03                            ; D799 29 03                    ).
        cmp     #$02                            ; D79B C9 02                    ..
        beq     $D7A1                           ; D79D F0 02                    ..
        ldy     #$FF                            ; D79F A0 FF                    ..
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
        lda     $52                           ; D7B7 A5 52                    .R
        sta     $6F60,x                         ; D7B9 9D 60 6F                 .`o
        lda     $53                             ; D7BC A5 53                    .S
        sta     $6F80,x                         ; D7BE 9D 80 6F                 ..o
        lda     $7020,x                         ; D7C1 BD 20 70                 . p
        and     #$10                            ; D7C4 29 10                    ).
        beq     $D7D2                           ; D7C6 F0 0A                    ..
        lda     $52                           ; D7C8 A5 52                    .R
        sta     $6FA0,x                         ; D7CA 9D A0 6F                 ..o
        lda     $53                             ; D7CD A5 53                    .S
        sta     $6FC0,x                         ; D7CF 9D C0 6F                 ..o
        jmp     LowerFixedEngine_Entry_D7FC     ; D7D2 4C FC D7                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D7D5:
        lda     $3C                             ; D7D5 A5 3C                    .<
        and     #$0F                            ; D7D7 29 0F                    ).
        sec                                     ; D7D9 38                       8
        sbc     #$01                            ; D7DA E9 01                    ..
        cmp     #$06                            ; D7DC C9 06                    ..
        bcs     $D85C                           ; D7DE B0 7C                    .|
        tax                                     ; D7E0 AA                       .
        jsr     LowerFixedEngine_Entry_D7F1     ; D7E1 20 F1 D7                  ..
        jsr     LowerFixedEngine_Entry_D7F1     ; D7E4 20 F1 D7                  ..
        jsr     LowerFixedEngine_Entry_D7F1     ; D7E7 20 F1 D7                  ..
        jsr     LowerFixedEngine_Entry_D7F1     ; D7EA 20 F1 D7                  ..
        jsr     LowerFixedEngine_Entry_D7F1     ; D7ED 20 F1 D7                  ..
        rts                                     ; D7F0 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D7F1:
        lda     $7020,x                         ; D7F1 BD 20 70                 . p
        cmp     #$FF                            ; D7F4 C9 FF                    ..
        beq     $D861                           ; D7F6 F0 69                    .i
        cpx     #$1E                            ; D7F8 E0 1E                    ..
        bcs     $D861                           ; D7FA B0 65                    .e
LowerFixedEngine_Entry_D7FC:
        txa                                     ; D7FC 8A                       .
        pha                                     ; D7FD 48                       H
        lda     $70E0,x                         ; D7FE BD E0 70                 ..p
        bpl     $D857                           ; D801 10 54                    .T
        pla                                     ; D803 68                       h
        txa                                     ; D804 8A                       .
        pha                                     ; D805 48                       H
        lda     $7000,x                         ; D806 BD 00 70                 ..p
        pha                                     ; D809 48                       H
        and     #$3C                            ; D80A 29 3C                    )<
        bne     $D812                           ; D80C D0 04                    ..
        cpx     #$00                            ; D80E E0 00                    ..
        bne     $D85D                           ; D810 D0 4B                    .K
        jsr     LowerFixedEngine_Entry_C78C     ; D812 20 8C C7                  ..
        lda     $6FE0,x                         ; D815 BD E0 6F                 ..o
        and     #$0F                            ; D818 29 0F                    ).
        jsr     LowerFixedEngine_Entry_D864     ; D81A 20 64 D8                  d.
        ldx     #$59                            ; D81D A2 59                    .Y
        pla                                     ; D81F 68                       h
        and     #$03                            ; D820 29 03                    ).
        jsr     LowerFixedEngine_Entry_D876     ; D822 20 76 D8                  v.
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
        pla                                     ; D857 68                       h
        clc                                     ; D858 18                       .
        adc     #$06                            ; D859 69 06                    i.
        tax                                     ; D85B AA                       .
        rts                                     ; D85C 60                       `
; ----------------------------------------------------------------------------
        pla                                     ; D85D 68                       h
        jmp     $D857                           ; D85E 4C 57 D8                 LW.
; ----------------------------------------------------------------------------
        pla                                     ; D861 68                       h
        pla                                     ; D862 68                       h
        rts                                     ; D863 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D864:
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
LowerFixedEngine_Entry_D876:
        and     #$03                            ; D876 29 03                    ).
        asl     a                               ; D878 0A                       .
        asl     a                               ; D879 0A                       .
        asl     a                               ; D87A 0A                       .
        asl     a                               ; D87B 0A                       .
        ldy     $0526                           ; D87C AC 26 05                 .&.
        bpl     $D884                           ; D87F 10 03                    ..
        clc                                     ; D881 18                       .
        adc     #$08                            ; D882 69 08                    i.
        tay                                     ; D884 A8                       .
        lda     ($4F),y                         ; D885 B1 4F                    .O
        sta     $00,x                           ; D887 95 00                    ..
        inx                                     ; D889 E8                       .
        iny                                     ; D88A C8                       .
        tya                                     ; D88B 98                       .
        and     #$07                            ; D88C 29 07                    ).
        bne     $D885                           ; D88E D0 F5                    ..
        rts                                     ; D890 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D891:
        ldx     $51                             ; D891 A6 51                    .Q
        lda     $7080,x                         ; D893 BD 80 70                 ..p
        sta     $4D                             ; D896 85 4D                    .M
        lda     $7060,x                         ; D898 BD 60 70                 .`p
        sta     $4E                             ; D89B 85 4E                    .N
        ldy     #$00                            ; D89D A0 00                    ..
        lda     ($4D),y                         ; D89F B1 4D                    .M
        sta     $57                             ; D8A1 85 57                    .W
        bmi     $D8BA                           ; D8A3 30 15                    0.
        cmp     #$31                            ; D8A5 C9 31                    .1
        bcc     $D8AB                           ; D8A7 90 02                    ..
        lda     #$00                            ; D8A9 A9 00                    ..
        asl     a                               ; D8AB 0A                       .
        tay                                     ; D8AC A8                       .
        lda     $DF02,y                         ; D8AD B9 02 DF                 ...
        sta     $52                           ; D8B0 85 52                    .R
        lda     $DF03,y                         ; D8B2 B9 03 DF                 ...
        sta     $53                             ; D8B5 85 53                    .S
        jmp     ($0052)                         ; D8B7 6C 52 00                 lR.
; ----------------------------------------------------------------------------
        and     #$7F                            ; D8BA 29 7F                    ).
        asl     a                               ; D8BC 0A                       .
        tay                                     ; D8BD A8                       .
        lda     $DF64,y                         ; D8BE B9 64 DF                 .d.
        sta     $52                           ; D8C1 85 52                    .R
        lda     $DF65,y                         ; D8C3 B9 65 DF                 .e.
        sta     $53                             ; D8C6 85 53                    .S
        jmp     ($0052)                         ; D8C8 6C 52 00                 lR.
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D8CB:
        jsr     LowerFixedEngine_Entry_DDE3     ; D8CB 20 E3 DD                  ..
LowerFixedEngine_Entry_D8CE:
        jsr     LowerFixedEngine_Entry_DA59     ; D8CE 20 59 DA                  Y.
        jmp     LowerFixedEngine_Branch_DDF0    ; D8D1 4C F0 DD                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D8D4:
        jsr     LowerFixedEngine_Entry_DDE3     ; D8D4 20 E3 DD                  ..
LowerFixedEngine_Entry_D8D7:
        jsr     LowerFixedEngine_Entry_DA47     ; D8D7 20 47 DA                  G.
        jmp     LowerFixedEngine_Branch_DDF0    ; D8DA 4C F0 DD                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D8DD:
        jsr     LowerFixedEngine_Entry_DDE3     ; D8DD 20 E3 DD                  ..
LowerFixedEngine_Entry_D8E0:
        lda     #$03                            ; D8E0 A9 03                    ..
        sta     $68                             ; D8E2 85 68                    .h
        lda     $7000,x                         ; D8E4 BD 00 70                 ..p
LowerFixedEngine_Branch_D8E7:
        pha                                     ; D8E7 48                       H
        and     #$FC                            ; D8E8 29 FC                    ).
        sta     $7000,x                         ; D8EA 9D 00 70                 ..p
        jsr     LowerFixedEngine_Entry_C891     ; D8ED 20 91 C8                  ..
        lda     $12                             ; D8F0 A5 12                    ..
        and     #$03                            ; D8F2 29 03                    ).
        ora     $7000,x                         ; D8F4 1D 00 70                 ..p
        sta     $7000,x                         ; D8F7 9D 00 70                 ..p
        pla                                     ; D8FA 68                       h
        eor     #$02                            ; D8FB 49 02                    I.
        cmp     $7000,x                         ; D8FD DD 00 70                 ..p
        bne     LowerFixedEngine_Branch_D908    ; D900 D0 06                    ..
        eor     #$02                            ; D902 49 02                    I.
        dec     $68                             ; D904 C6 68                    .h
        bne     LowerFixedEngine_Branch_D8E7    ; D906 D0 DF                    ..
LowerFixedEngine_Branch_D908:
        clc                                     ; D908 18                       .
        rts                                     ; D909 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D90A:
        lda     $7000,x                         ; D90A BD 00 70                 ..p
        clc                                     ; D90D 18                       .
        adc     #$01                            ; D90E 69 01                    i.
LowerFixedEngine_Branch_D910:
        and     #$03                            ; D910 29 03                    ).
        pha                                     ; D912 48                       H
        lda     $7000,x                         ; D913 BD 00 70                 ..p
        and     #$FC                            ; D916 29 FC                    ).
        sta     $7000,x                         ; D918 9D 00 70                 ..p
        pla                                     ; D91B 68                       h
        ora     $7000,x                         ; D91C 1D 00 70                 ..p
        sta     $7000,x                         ; D91F 9D 00 70                 ..p
        jsr     LowerFixedEngine_Entry_DDE3     ; D922 20 E3 DD                  ..
        jmp     LowerFixedEngine_Branch_DDF0    ; D925 4C F0 DD                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D928:
        lda     $7000,x                         ; D928 BD 00 70                 ..p
        sec                                     ; D92B 38                       8
        sbc     #$01                            ; D92C E9 01                    ..
        jmp     LowerFixedEngine_Branch_D910    ; D92E 4C 10 D9                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D931:
        jsr     LowerFixedEngine_Entry_D9AB     ; D931 20 AB D9                  ..
        jmp     LowerFixedEngine_Branch_DDF0    ; D934 4C F0 DD                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D937:
        jsr     LowerFixedEngine_Entry_D9AB     ; D937 20 AB D9                  ..
        lda     #$81                            ; D93A A9 81                    ..
        sta     $6F60,x                         ; D93C 9D 60 6F                 .`o
        sta     $6F80,x                         ; D93F 9D 80 6F                 ..o
        sta     $6FA0,x                         ; D942 9D A0 6F                 ..o
        sta     $6FC0,x                         ; D945 9D C0 6F                 ..o
        jmp     LowerFixedEngine_Branch_DDF0    ; D948 4C F0 DD                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D94B:
        ldx     $51                             ; D94B A6 51                    .Q
        lda     $7160,x                         ; D94D BD 60 71                 .`q
        beq     LowerFixedEngine_Branch_D99B    ; D950 F0 49                    .I
        dec     $7160,x                         ; D952 DE 60 71                 .`q
        lda     $7160,x                         ; D955 BD 60 71                 .`q
        and     #$07                            ; D958 29 07                    ).
        bne     LowerFixedEngine_Branch_D974    ; D95A D0 18                    ..
        lda     $7160,x                         ; D95C BD 60 71                 .`q
        sec                                     ; D95F 38                       8
        sbc     #$08                            ; D960 E9 08                    ..
        and     #$38                            ; D962 29 38                    )8
        cmp     #$08                            ; D964 C9 08                    ..
        beq     LowerFixedEngine_Branch_D97F    ; D966 F0 17                    ..
        sta     $7160,x                         ; D968 9D 60 71                 .`q
        lsr     a                               ; D96B 4A                       J
        lsr     a                               ; D96C 4A                       J
        lsr     a                               ; D96D 4A                       J
        ora     $7160,x                         ; D96E 1D 60 71                 .`q
        jmp     LowerFixedEngine_Branch_D99D    ; D971 4C 9D D9                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D974:
        lda     $7020,x                         ; D974 BD 20 70                 . p
        and     #$7F                            ; D977 29 7F                    ).
        sta     $7020,x                         ; D979 9D 20 70                 . p
        jmp     LowerFixedEngine_Branch_DDF0    ; D97C 4C F0 DD                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D97F:
        jsr     LowerFixedEngine_Entry_DDE3     ; D97F 20 E3 DD                  ..
        db   $A5,$57,$C9,$09,$F0,$0E,$A9,$81 ; D982 A5 57 C9 09 F0 0E A9 81  .W......
        db   $9D,$60,$6F,$9D,$80,$6F,$9D,$A0 ; D98A 9D 60 6F 9D 80 6F 9D A0  .`o..o..
        db   $6F,$9D,$C0,$6F,$A9,$00,$4C,$9D ; D992 6F 9D C0 6F A9 00 4C 9D  o..o..L.
        db   $D9                             ; D99A D9                       .
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D99B:
        lda     #$36                            ; D99B A9 36                    .6
LowerFixedEngine_Branch_D99D:
        sta     $7160,x                         ; D99D 9D 60 71                 .`q
LowerFixedEngine_Branch_D9A0:
        lda     $7020,x                         ; D9A0 BD 20 70                 . p
        ora     #$80                            ; D9A3 09 80                    ..
        sta     $7020,x                         ; D9A5 9D 20 70                 . p
        jmp     LowerFixedEngine_Branch_DDF0    ; D9A8 4C F0 DD                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D9AB:
        ldx     $51                             ; D9AB A6 51                    .Q
        lda     $7020,x                         ; D9AD BD 20 70                 . p
        ora     #$80                            ; D9B0 09 80                    ..
        sta     $7020,x                         ; D9B2 9D 20 70                 . p
        jmp     LowerFixedEngine_Entry_DDE3     ; D9B5 4C E3 DD                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D9B8:
        ldx     $51                             ; D9B8 A6 51                    .Q
        lda     $7020,x                         ; D9BA BD 20 70                 . p
        and     #$7F                            ; D9BD 29 7F                    ).
        sta     $7020,x                         ; D9BF 9D 20 70                 . p
        jsr     LowerFixedEngine_Entry_DA11     ; D9C2 20 11 DA                  ..
        jsr     LowerFixedEngine_Entry_DDE3     ; D9C5 20 E3 DD                  ..
        jmp     LowerFixedEngine_Branch_DDF0    ; D9C8 4C F0 DD                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_D9CB:
        ldx     $51                             ; D9CB A6 51                    .Q
        lda     $7160,x                         ; D9CD BD 60 71                 .`q
        beq     LowerFixedEngine_Branch_DA06    ; D9D0 F0 34                    .4
        dec     $7160,x                         ; D9D2 DE 60 71                 .`q
        lda     $7160,x                         ; D9D5 BD 60 71                 .`q
        and     #$07                            ; D9D8 29 07                    ).
        bne     LowerFixedEngine_Branch_D974    ; D9DA D0 98                    ..
        lda     $7160,x                         ; D9DC BD 60 71                 .`q
        clc                                     ; D9DF 18                       .
        adc     #$08                            ; D9E0 69 08                    i.
        and     #$38                            ; D9E2 29 38                    )8
        cmp     #$30                            ; D9E4 C9 30                    .0
        bcs     LowerFixedEngine_Branch_D9FB    ; D9E6 B0 13                    ..
        ora     #$80                            ; D9E8 09 80                    ..
        sta     $7160,x                         ; D9EA 9D 60 71                 .`q
        and     #$38                            ; D9ED 29 38                    )8
        lsr     a                               ; D9EF 4A                       J
        lsr     a                               ; D9F0 4A                       J
        lsr     a                               ; D9F1 4A                       J
        ora     $7160,x                         ; D9F2 1D 60 71                 .`q
        sta     $7160,x                         ; D9F5 9D 60 71                 .`q
        jmp     LowerFixedEngine_Branch_D9A0    ; D9F8 4C A0 D9                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_D9FB:
        jsr     LowerFixedEngine_Entry_DDE3     ; D9FB 20 E3 DD                  ..
        db   $A9,$00,$9D,$60,$71,$4C,$74,$D9 ; D9FE A9 00 9D 60 71 4C 74 D9  ...`qLt.
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_DA06:
        lda     #$89                            ; DA06 A9 89                    ..
        sta     $7160,x                         ; DA08 9D 60 71                 .`q
        jsr     LowerFixedEngine_Entry_DA11     ; DA0B 20 11 DA                  ..
        jmp     LowerFixedEngine_Branch_D974    ; DA0E 4C 74 D9                 Lt.
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DA11:
        lda     $6F60,x                         ; DA11 BD 60 6F                 .`o
        sta     $6FA0,x                         ; DA14 9D A0 6F                 ..o
        lda     $6F80,x                         ; DA17 BD 80 6F                 ..o
        sta     $6FC0,x                         ; DA1A 9D C0 6F                 ..o
        rts                                     ; DA1D 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DA1E:
        lda     $3E                             ; DA1E A5 3E                    .>
        beq     LowerFixedEngine_Branch_DA2B    ; DA20 F0 09                    ..
        ldx     $51                             ; DA22 A6 51                    .Q
        lda     $3D                             ; DA24 A5 3D                    .=
        jsr     LowerFixedEngine_Entry_DDF3     ; DA26 20 F3 DD                  ..
        sec                                     ; DA29 38                       8
        rts                                     ; DA2A 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_DA2B:
        jmp     LowerFixedEngine_Branch_DDF0    ; DA2B 4C F0 DD                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DA2E:
        ldx     $51                             ; DA2E A6 51                    .Q
        lda     $70E0,x                         ; DA30 BD E0 70                 ..p
        ora     #$08                            ; DA33 09 08                    ..
        sta     $70E0,x                         ; DA35 9D E0 70                 ..p
        jsr     LowerFixedEngine_Entry_DDE3     ; DA38 20 E3 DD                  ..
        jmp     LowerFixedEngine_Branch_DDF0    ; DA3B 4C F0 DD                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DA3E:
        jsr     LowerFixedEngine_Entry_DA47     ; DA3E 20 47 DA                  G.
        jsr     LowerFixedEngine_Entry_DDE3     ; DA41 20 E3 DD                  ..
        jmp     LowerFixedEngine_Entry_D891     ; DA44 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DA47:
        lda     $70E0,x                         ; DA47 BD E0 70                 ..p
        ora     #$80                            ; DA4A 09 80                    ..
        sta     $70E0,x                         ; DA4C 9D E0 70                 ..p
        rts                                     ; DA4F 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DA50:
        jsr     LowerFixedEngine_Entry_DA59     ; DA50 20 59 DA                  Y.
        jsr     LowerFixedEngine_Entry_DDE3     ; DA53 20 E3 DD                  ..
        jmp     LowerFixedEngine_Entry_D891     ; DA56 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DA59:
        lda     $70E0,x                         ; DA59 BD E0 70                 ..p
        and     #$7F                            ; DA5C 29 7F                    ).
        sta     $70E0,x                         ; DA5E 9D E0 70                 ..p
        rts                                     ; DA61 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DA62:
        lda     $70E0,x                         ; DA62 BD E0 70                 ..p
        ora     #$40                            ; DA65 09 40                    .@
        sta     $70E0,x                         ; DA67 9D E0 70                 ..p
        lda     #$11                            ; DA6A A9 11                    ..
        sta     $7040,x                         ; DA6C 9D 40 70                 .@p
        jsr     LowerFixedEngine_Entry_DDE3     ; DA6F 20 E3 DD                  ..
        jmp     LowerFixedEngine_Entry_D891     ; DA72 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DA75:
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
        jsr     LowerFixedEngine_Entry_DDE3     ; DA91 20 E3 DD                  ..
        jmp     LowerFixedEngine_Entry_D891     ; DA94 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DA97:
        ldy     #$01                            ; DA97 A0 01                    ..
        lda     ($4D),y                         ; DA99 B1 4D                    .M
        jsr     LowerFixedEngine_Entry_DDE0     ; DA9B 20 E0 DD                  ..
        brk                                     ; DA9E 00                       .
        db   $01,$8F,$4C,$F0,$DD             ; DA9F 01 8F 4C F0 DD           ..L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DAA4:
        lda     $0507                           ; DAA4 AD 07 05                 ...
        pha                                     ; DAA7 48                       H
        cmp     #$1C                            ; DAA8 C9 1C                    ..
        clc                                     ; DAAA 18                       .
        beq     LowerFixedEngine_Branch_DAB3    ; DAAB F0 06                    ..
        lda     #$1C                            ; DAAD A9 1C                    ..
        jsr     LowerFixedEngine_Entry_FF91     ; DAAF 20 91 FF                  ..
        sec                                     ; DAB2 38                       8
LowerFixedEngine_Branch_DAB3:
        php                                     ; DAB3 08                       .
        jsr     LowerFixedEngine_Entry_DAC6     ; DAB4 20 C6 DA                  ..
        ldx     $51                             ; DAB7 A6 51                    .Q
        jsr     LowerFixedEngine_Entry_DDE0     ; DAB9 20 E0 DD                  ..
        plp                                     ; DABC 28                       (
        pla                                     ; DABD 68                       h
        bcc     LowerFixedEngine_Branch_DAC3    ; DABE 90 03                    ..
        jsr     LowerFixedEngine_Entry_FF91     ; DAC0 20 91 FF                  ..
LowerFixedEngine_Branch_DAC3:
        jmp     LowerFixedEngine_Branch_DDF0    ; DAC3 4C F0 DD                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DAC6:
        lda     $8014                           ; DAC6 AD 14 80                 ...
        sta     $55                             ; DAC9 85 55                    .U
        lda     $8015                           ; DACB AD 15 80                 ...
        sta     $56                             ; DACE 85 56                    .V
        lda     $8016                           ; DAD0 AD 16 80                 ...
        sta     $00                             ; DAD3 85 00                    ..
        lda     $8017                           ; DAD5 AD 17 80                 ...
        sta     $01                             ; DAD8 85 01                    ..
        ldy     #$01                            ; DADA A0 01                    ..
        lda     $67                             ; DADC A5 67                    .g
        ldx     #$4D                            ; DADE A2 4D                    .M
        jsr     LowerFixedEngine_Entry_C3EA     ; DAE0 20 EA C3                  ..
        tax                                     ; DAE3 AA                       .
        ldy     #$00                            ; DAE4 A0 00                    ..
        lda     ($00),y                         ; DAE6 B1 00                    ..
        sta     $0531                           ; DAE8 8D 31 05                 .1.
        cpx     #$00                            ; DAEB E0 00                    ..
        beq     LowerFixedEngine_Branch_DB03    ; DAED F0 14                    ..
LowerFixedEngine_Branch_DAEF:
        lda     ($00),y                         ; DAEF B1 00                    ..
        clc                                     ; DAF1 18                       .
        adc     $55                             ; DAF2 65 55                    eU
        sta     $55                             ; DAF4 85 55                    .U
        bcc     LowerFixedEngine_Branch_DAFA    ; DAF6 90 02                    ..
        inc     $56                             ; DAF8 E6 56                    .V
LowerFixedEngine_Branch_DAFA:
        iny                                     ; DAFA C8                       .
        lda     ($00),y                         ; DAFB B1 00                    ..
        sta     $0531                           ; DAFD 8D 31 05                 .1.
        dex                                     ; DB00 CA                       .
        bne     LowerFixedEngine_Branch_DAEF    ; DB01 D0 EC                    ..
LowerFixedEngine_Branch_DB03:
        lda     $55                             ; DB03 A5 55                    .U
        sta     $0532                           ; DB05 8D 32 05                 .2.
        lda     $56                             ; DB08 A5 56                    .V
        sta     $0533                           ; DB0A 8D 33 05                 .3.
        jsr     LowerFixedEngine_Entry_DB6A     ; DB0D 20 6A DB                  j.
        and     #$0F                            ; DB10 29 0F                    ).
        ora     #$80                            ; DB12 09 80                    ..
        sta     $0530                           ; DB14 8D 30 05                 .0.
        rts                                     ; DB17 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DB18:
        jsr     LowerFixedEngine_Entry_DB6A     ; DB18 20 6A DB                  j.
        and     #$F0                            ; DB1B 29 F0                    ).
        pha                                     ; DB1D 48                       H
        dec     $0530                           ; DB1E CE 30 05                 .0.
        lda     $0530                           ; DB21 AD 30 05                 .0.
        and     #$0F                            ; DB24 29 0F                    ).
        bne     $DB66                           ; DB26 D0 3E                    .>
        dec     $0531                           ; DB28 CE 31 05                 .1.
        beq     $DB61                           ; DB2B F0 34                    .4
        lda     $0533                           ; DB2D AD 33 05                 .3.
        ora     $0532                           ; DB30 0D 32 05                 .2.
        bne     LowerFixedEngine_Branch_DB3A    ; DB33 D0 05                    ..
        lda     #$8F                            ; DB35 A9 8F                    ..
        jmp     LowerFixedEngine_Branch_DB63    ; DB37 4C 63 DB                 Lc.
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_DB3A:
        lda     $00                             ; DB3A A5 00                    ..
        clc                                     ; DB3C 18                       .
        adc     #$01                            ; DB3D 69 01                    i.
        sta     $00                             ; DB3F 85 00                    ..
        bcc     LowerFixedEngine_Branch_DB45    ; DB41 90 02                    ..
        inc     $01                             ; DB43 E6 01                    ..
LowerFixedEngine_Branch_DB45:
        pla                                     ; DB45 68                       h
        lda     $00                             ; DB46 A5 00                    ..
        sta     $0532                           ; DB48 8D 32 05                 .2.
        lda     $01                             ; DB4B A5 01                    ..
        sta     $0533                           ; DB4D 8D 33 05                 .3.
        ldy     #$00                            ; DB50 A0 00                    ..
        ldx     #$00                            ; DB52 A2 00                    ..
        lda     #$1C                            ; DB54 A9 1C                    ..
        jsr     LowerFixedEngine_Entry_C3EA     ; DB56 20 EA C3                  ..
        pha                                     ; DB59 48                       H
        and     #$0F                            ; DB5A 29 0F                    ).
        ora     #$80                            ; DB5C 09 80                    ..
        jmp     LowerFixedEngine_Branch_DB63    ; DB5E 4C 63 DB                 Lc.
; ----------------------------------------------------------------------------
        lda     #$00                            ; DB61 A9 00                    ..
LowerFixedEngine_Branch_DB63:
        sta     $0530                           ; DB63 8D 30 05                 .0.
        pla                                     ; DB66 68                       h
        and     #$F0                            ; DB67 29 F0                    ).
        rts                                     ; DB69 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DB6A:
        ldy     #$00                            ; DB6A A0 00                    ..
        lda     $0532                           ; DB6C AD 32 05                 .2.
        sta     $00                             ; DB6F 85 00                    ..
        ora     $0533                           ; DB71 0D 33 05                 .3.
        beq     $DB82                           ; DB74 F0 0C                    ..
        lda     $0533                           ; DB76 AD 33 05                 .3.
        sta     $01                             ; DB79 85 01                    ..
        ldx     #$00                            ; DB7B A2 00                    ..
        lda     #$1C                            ; DB7D A9 1C                    ..
        jsr     LowerFixedEngine_Entry_C3EA     ; DB7F 20 EA C3                  ..
        rts                                     ; DB82 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DB83:
        ldx     $51                             ; DB83 A6 51                    .Q
        ldy     #$01                            ; DB85 A0 01                    ..
        lda     ($4D),y                         ; DB87 B1 4D                    .M
        pha                                     ; DB89 48                       H
        jsr     LowerFixedEngine_Entry_DDF3     ; DB8A 20 F3 DD                  ..
        pla                                     ; DB8D 68                       h
        bmi     LowerFixedEngine_Branch_DBA7    ; DB8E 30 17                    0.
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
LowerFixedEngine_Branch_DBA7:
        jsr     LowerFixedEngine_Entry_DDE0     ; DBA7 20 E0 DD                  ..
        jmp     LowerFixedEngine_Entry_D891     ; DBAA 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DBAD:
        ldy     #$01                            ; DBAD A0 01                    ..
        lda     ($4D),y                         ; DBAF B1 4D                    .M
        bpl     LowerFixedEngine_Branch_DBC1    ; DBB1 10 0E                    ..
        lda     #$FF                            ; DBB3 A9 FF                    ..
        sta     $71A0,x                         ; DBB5 9D A0 71                 ..q
        sta     $71C0,x                         ; DBB8 9D C0 71                 ..q
        jsr     LowerFixedEngine_Entry_DDDD     ; DBBB 20 DD DD                  ..
        jmp     LowerFixedEngine_Entry_D891     ; DBBE 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_DBC1:
        sta     $71A0,x                         ; DBC1 9D A0 71                 ..q
        iny                                     ; DBC4 C8                       .
        lda     ($4D),y                         ; DBC5 B1 4D                    .M
        sta     $71C0,x                         ; DBC7 9D C0 71                 ..q
        jsr     LowerFixedEngine_Entry_DDDD     ; DBCA 20 DD DD                  ..
        jmp     LowerFixedEngine_Entry_D891     ; DBCD 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DBD0:
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
        jsr     LowerFixedEngine_Entry_DDDD     ; DBE5 20 DD DD                  ..
        pla                                     ; DBE8 68                       h
        tax                                     ; DBE9 AA                       .
        jsr     LowerFixedEngine_Entry_D3E6     ; DBEA 20 E6 D3                  ..
        ldx     $51                             ; DBED A6 51                    .Q
        sta     $7140,x                         ; DBEF 9D 40 71                 .@q
        jmp     LowerFixedEngine_Entry_D891     ; DBF2 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DBF5:
        ldx     $51                             ; DBF5 A6 51                    .Q
        nop                                     ; DBF7 EA                       .
        nop                                     ; DBF8 EA                       .
        nop                                     ; DBF9 EA                       .
        nop                                     ; DBFA EA                       .
        stx     $059C                           ; DBFB 8E 9C 05                 ...
        jsr     LowerFixedEngine_Entry_DDDD     ; DBFE 20 DD DD                  ..
        ldy     #$02                            ; DC01 A0 02                    ..
        lda     ($4D),y                         ; DC03 B1 4D                    .M
        sta     $0594                           ; DC05 8D 94 05                 ...
        dey                                     ; DC08 88                       .
        lda     ($4D),y                         ; DC09 B1 4D                    .M
        sta     $0593                           ; DC0B 8D 93 05                 ...
        lda     #$80                            ; DC0E A9 80                    ..
        sta     $0527                           ; DC10 8D 27 05                 .'.
        jmp     LowerFixedEngine_Branch_DDF0    ; DC13 4C F0 DD                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DC16:
        jsr     LowerFixedEngine_Entry_DC3B     ; DC16 20 3B DC                  ;.
        ora     ($52),y                       ; DC19 11 52                    .R
        sta     ($52),y                       ; DC1B 91 52                    .R
        jsr     LowerFixedEngine_Entry_DDDA     ; DC1D 20 DA DD                  ..
        jmp     LowerFixedEngine_Entry_D891     ; DC20 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DC23:
        jsr     LowerFixedEngine_Entry_DC3B     ; DC23 20 3B DC                  ;.
        and     ($52),y                       ; DC26 31 52                    1R
        sta     ($52),y                       ; DC28 91 52                    .R
        jsr     LowerFixedEngine_Entry_DDDA     ; DC2A 20 DA DD                  ..
        jmp     LowerFixedEngine_Entry_D891     ; DC2D 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DC30:
        jsr     LowerFixedEngine_Entry_DC3B     ; DC30 20 3B DC                  ;.
        sta     ($52),y                       ; DC33 91 52                    .R
        jsr     LowerFixedEngine_Entry_DDDA     ; DC35 20 DA DD                  ..
        jmp     LowerFixedEngine_Entry_D891     ; DC38 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DC3B:
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
LowerFixedEngine_Entry_DC4B:
        lda     #$00                            ; DC4B A9 00                    ..
        sta     $54                             ; DC4D 85 54                    .T
        lda     $71A0,x                         ; DC4F BD A0 71                 ..q
        and     $71C0,x                         ; DC52 3D C0 71                 =.q
        cmp     #$FF                            ; DC55 C9 FF                    ..
        bne     LowerFixedEngine_Branch_DC9F    ; DC57 D0 46                    .F
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
        bcs     LowerFixedEngine_Branch_DCBF    ; DC85 B0 38                    .8
        sta     $53                             ; DC87 85 53                    .S
        lda     $6F80,x                         ; DC89 BD 80 6F                 ..o
        sec                                     ; DC8C 38                       8
        sbc     $6F80                           ; DC8D ED 80 6F                 ..o
        clc                                     ; DC90 18                       .
        adc     #$01                            ; DC91 69 01                    i.
        cmp     #$03                            ; DC93 C9 03                    ..
        bcs     LowerFixedEngine_Branch_DCBF    ; DC95 B0 28                    .(
        adc     $53                             ; DC97 65 53                    eS
        and     #$01                            ; DC99 29 01                    ).
        beq     LowerFixedEngine_Branch_DCBF    ; DC9B F0 22                    ."
        bne     LowerFixedEngine_Branch_DCF9    ; DC9D D0 5A                    .Z
LowerFixedEngine_Branch_DC9F:
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
LowerFixedEngine_Branch_DCBF:
        lda     $52                           ; DCBF A5 52                    .R
        eor     #$0F                            ; DCC1 49 0F                    I.
        and     #$0F                            ; DCC3 29 0F                    ).
        sta     $52                           ; DCC5 85 52                    .R
        beq     LowerFixedEngine_Branch_DCEF    ; DCC7 F0 26                    .&
        ldy     #$FF                            ; DCC9 A0 FF                    ..
        sty     $53                             ; DCCB 84 53                    .S
LowerFixedEngine_Branch_DCCD:
        iny                                     ; DCCD C8                       .
        lsr     a                               ; DCCE 4A                       J
        bcc     LowerFixedEngine_Branch_DCCD    ; DCCF 90 FC                    ..
        sty     $53                             ; DCD1 84 53                    .S
LowerFixedEngine_Branch_DCD3:
        iny                                     ; DCD3 C8                       .
        cpy     #$04                            ; DCD4 C0 04                    ..
        bcs     LowerFixedEngine_Branch_DCE6    ; DCD6 B0 0E                    ..
        lsr     a                               ; DCD8 4A                       J
        bcc     LowerFixedEngine_Branch_DCD3    ; DCD9 90 F8                    ..
        lda     $7000,x                         ; DCDB BD 00 70                 ..p
        and     #$03                            ; DCDE 29 03                    ).
        sta     $52                           ; DCE0 85 52                    .R
        cpy     $52                           ; DCE2 C4 52                    .R
        beq     LowerFixedEngine_Branch_DCE8    ; DCE4 F0 02                    ..
LowerFixedEngine_Branch_DCE6:
        lda     $53                             ; DCE6 A5 53                    .S
LowerFixedEngine_Branch_DCE8:
        eor     $54                             ; DCE8 45 54                    ET
        jsr     LowerFixedEngine_Entry_DDF3     ; DCEA 20 F3 DD                  ..
        sec                                     ; DCED 38                       8
        rts                                     ; DCEE 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_DCEF:
        lda     $54                             ; DCEF A5 54                    .T
        beq     LowerFixedEngine_Branch_DCF9    ; DCF1 F0 06                    ..
        jsr     LowerFixedEngine_Entry_C891     ; DCF3 20 91 C8                  ..
        jmp     LowerFixedEngine_Branch_DCE8    ; DCF6 4C E8 DC                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_DCF9:
        jsr     LowerFixedEngine_Entry_DDE3     ; DCF9 20 E3 DD                  ..
        jmp     LowerFixedEngine_Entry_D891     ; DCFC 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DCFF:
        lda     #$02                            ; DCFF A9 02                    ..
        sta     $54                             ; DD01 85 54                    .T
        jmp     LowerFixedEngine_Branch_DC9F    ; DD03 4C 9F DC                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DD06:
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
LowerFixedEngine_Entry_DD1F:
        ldy     #$01                            ; DD1F A0 01                    ..
        lda     #$0F                            ; DD21 A9 0F                    ..
        sta     $54                             ; DD23 85 54                    .T
        ldx     $51                             ; DD25 A6 51                    .Q
        lda     $71E0,x                         ; DD27 BD E0 71                 ..q
        and     #$F0                            ; DD2A 29 F0                    ).
        sta     $53                             ; DD2C 85 53                    .S
        bmi     LowerFixedEngine_Branch_DD41    ; DD2E 30 11                    0.
        lda     ($4D),y                         ; DD30 B1 4D                    .M
        and     #$F0                            ; DD32 29 F0                    ).
        cmp     $53                             ; DD34 C5 53                    .S
        beq     LowerFixedEngine_Branch_DD3A    ; DD36 F0 02                    ..
        bcs     LowerFixedEngine_Branch_DD56    ; DD38 B0 1C                    ..
LowerFixedEngine_Branch_DD3A:
        lda     #$0D                            ; DD3A A9 0D                    ..
        sta     $54                             ; DD3C 85 54                    .T
        jmp     LowerFixedEngine_Branch_DD56    ; DD3E 4C 56 DD                 LV.
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_DD41:
        eor     #$F0                            ; DD41 49 F0                    I.
        clc                                     ; DD43 18                       .
        adc     #$10                            ; DD44 69 10                    i.
        sta     $53                             ; DD46 85 53                    .S
        lda     ($4D),y                         ; DD48 B1 4D                    .M
        and     #$F0                            ; DD4A 29 F0                    ).
        cmp     $53                             ; DD4C C5 53                    .S
        beq     LowerFixedEngine_Branch_DD52    ; DD4E F0 02                    ..
        bcs     LowerFixedEngine_Branch_DD56    ; DD50 B0 04                    ..
LowerFixedEngine_Branch_DD52:
        lda     #$07                            ; DD52 A9 07                    ..
        sta     $54                             ; DD54 85 54                    .T
LowerFixedEngine_Branch_DD56:
        ldx     $51                             ; DD56 A6 51                    .Q
        lda     $71E0,x                         ; DD58 BD E0 71                 ..q
        and     #$0F                            ; DD5B 29 0F                    ).
        sta     $53                             ; DD5D 85 53                    .S
        cmp     #$08                            ; DD5F C9 08                    ..
        bcs     $DD76                           ; DD61 B0 13                    ..
        lda     ($4D),y                         ; DD63 B1 4D                    .M
        and     #$0F                            ; DD65 29 0F                    ).
        cmp     $53                             ; DD67 C5 53                    .S
        beq     $DD6D                           ; DD69 F0 02                    ..
        bcs     LowerFixedEngine_Branch_DD8C    ; DD6B B0 1F                    ..
        lda     $54                             ; DD6D A5 54                    .T
        and     #$0B                            ; DD6F 29 0B                    ).
        sta     $54                             ; DD71 85 54                    .T
        jmp     LowerFixedEngine_Branch_DD8C    ; DD73 4C 8C DD                 L..
; ----------------------------------------------------------------------------
        eor     #$0F                            ; DD76 49 0F                    I.
        sta     $53                             ; DD78 85 53                    .S
        inc     $53                             ; DD7A E6 53                    .S
        lda     ($4D),y                         ; DD7C B1 4D                    .M
        and     #$0F                            ; DD7E 29 0F                    ).
        cmp     $53                             ; DD80 C5 53                    .S
        beq     $DD86                           ; DD82 F0 02                    ..
        bcs     LowerFixedEngine_Branch_DD8C    ; DD84 B0 06                    ..
        lda     $54                             ; DD86 A5 54                    .T
        and     #$0E                            ; DD88 29 0E                    ).
        sta     $54                             ; DD8A 85 54                    .T
LowerFixedEngine_Branch_DD8C:
        lda     #$01                            ; DD8C A9 01                    ..
        sta     $53                             ; DD8E 85 53                    .S
        jsr     LowerFixedEngine_Entry_C891     ; DD90 20 91 C8                  ..
        and     #$03                            ; DD93 29 03                    ).
        pha                                     ; DD95 48                       H
        tax                                     ; DD96 AA                       .
        dex                                     ; DD97 CA                       .
        bmi     $DD9F                           ; DD98 30 05                    0.
        asl     $53                             ; DD9A 06 53                    .S
        jmp     $DD97                           ; DD9C 4C 97 DD                 L..
; ----------------------------------------------------------------------------
        pla                                     ; DD9F 68                       h
        tax                                     ; DDA0 AA                       .
        lda     $53                             ; DDA1 A5 53                    .S
        and     $54                             ; DDA3 25 54                    %T
        beq     LowerFixedEngine_Branch_DD8C    ; DDA5 F0 E5                    ..
        txa                                     ; DDA7 8A                       .
        ldx     $51                             ; DDA8 A6 51                    .Q
        jsr     LowerFixedEngine_Entry_DDF3     ; DDAA 20 F3 DD                  ..
        clc                                     ; DDAD 18                       .
        rts                                     ; DDAE 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DDAF:
        ldy     #$01                            ; DDAF A0 01                    ..
        lda     ($4D),y                         ; DDB1 B1 4D                    .M
        cmp     PlayerLocalX                    ; DDB3 C5 44                    .D
        bne     LowerFixedEngine_Branch_DDC4    ; DDB5 D0 0D                    ..
        iny                                     ; DDB7 C8                       .
        lda     ($4D),y                         ; DDB8 B1 4D                    .M
        cmp     PlayerLocalY                    ; DDBA C5 45                    .E
        bne     LowerFixedEngine_Branch_DDC4    ; DDBC D0 06                    ..
        jsr     LowerFixedEngine_Entry_DDDA     ; DDBE 20 DA DD                  ..
        jmp     LowerFixedEngine_Entry_D891     ; DDC1 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_DDC4:
        ldy     #$03                            ; DDC4 A0 03                    ..
        lda     ($4D),y                         ; DDC6 B1 4D                    .M
        jmp     $D8AB                           ; DDC8 4C AB D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DDCB:
        ldy     #$01                            ; DDCB A0 01                    ..
        lda     ($4D),y                         ; DDCD B1 4D                    .M
        brk                                     ; DDCF 00                       .
        db   $03,$9F,$A6,$51,$20,$E0,$DD,$4C ; DDD0 03 9F A6 51 20 E0 DD 4C  ...Q ..L
; ----------------------------------------------------------------------------
        sta     ($D8),y                         ; DDD8 91 D8                    ..
LowerFixedEngine_Entry_DDDA:
        jsr     LowerFixedEngine_Entry_DDE7     ; DDDA 20 E7 DD                  ..
LowerFixedEngine_Entry_DDDD:
        jsr     LowerFixedEngine_Entry_DDE7     ; DDDD 20 E7 DD                  ..
LowerFixedEngine_Entry_DDE0:
        jsr     LowerFixedEngine_Entry_DDE7     ; DDE0 20 E7 DD                  ..
LowerFixedEngine_Entry_DDE3:
        jsr     LowerFixedEngine_Entry_DDE7     ; DDE3 20 E7 DD                  ..
        rts                                     ; DDE6 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DDE7:
        inc     $7080,x                         ; DDE7 FE 80 70                 ..p
        bne     $DDEF                           ; DDEA D0 03                    ..
        inc     $7060,x                         ; DDEC FE 60 70                 .`p
        rts                                     ; DDEF 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_DDF0:
        pla                                     ; DDF0 68                       h
        pla                                     ; DDF1 68                       h
        rts                                     ; DDF2 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DDF3:
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
LowerFixedEngine_Entry_DE06:
        ldx     $51                             ; DE06 A6 51                    .Q
        jmp     LowerFixedEngine_Branch_DE12    ; DE08 4C 12 DE                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DE0B:
        ldx     $51                             ; DE0B A6 51                    .Q
        dec     $7180,x                         ; DE0D DE 80 71                 ..q
        beq     LowerFixedEngine_Branch_DE21    ; DE10 F0 0F                    ..
LowerFixedEngine_Branch_DE12:
        lda     $70A0,x                         ; DE12 BD A0 70                 ..p
        sta     $7060,x                         ; DE15 9D 60 70                 .`p
        lda     $70C0,x                         ; DE18 BD C0 70                 ..p
        sta     $7080,x                         ; DE1B 9D 80 70                 ..p
        jmp     LowerFixedEngine_Entry_D891     ; DE1E 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_DE21:
        jsr     LowerFixedEngine_Entry_DDE3     ; DE21 20 E3 DD                  ..
        jmp     LowerFixedEngine_Entry_D891     ; DE24 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DE27:
        ldx     $51                             ; DE27 A6 51                    .Q
        ldy     #$01                            ; DE29 A0 01                    ..
        lda     ($4D),y                         ; DE2B B1 4D                    .M
        sta     $7180,x                         ; DE2D 9D 80 71                 ..q
        jsr     LowerFixedEngine_Entry_DDE0     ; DE30 20 E0 DD                  ..
        lda     $7060,x                         ; DE33 BD 60 70                 .`p
        sta     $70A0,x                         ; DE36 9D A0 70                 ..p
        lda     $7080,x                         ; DE39 BD 80 70                 ..p
        sta     $70C0,x                         ; DE3C 9D C0 70                 ..p
        jmp     LowerFixedEngine_Entry_D891     ; DE3F 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DE42:
        ldy     #$01                            ; DE42 A0 01                    ..
        lda     ($4D),y                         ; DE44 B1 4D                    .M
        bpl     LowerFixedEngine_Branch_DE4B    ; DE46 10 03                    ..
        dec     $7060,x                         ; DE48 DE 60 70                 .`p
LowerFixedEngine_Branch_DE4B:
        clc                                     ; DE4B 18                       .
        adc     $7080,x                         ; DE4C 7D 80 70                 }.p
        sta     $7080,x                         ; DE4F 9D 80 70                 ..p
        lda     $7060,x                         ; DE52 BD 60 70                 .`p
        adc     #$00                            ; DE55 69 00                    i.
        sta     $7060,x                         ; DE57 9D 60 70                 .`p
        jmp     LowerFixedEngine_Entry_D891     ; DE5A 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DE5D:
        ldy     #$01                            ; DE5D A0 01                    ..
        lda     ($4D),y                         ; DE5F B1 4D                    .M
        sta     $7080,x                         ; DE61 9D 80 70                 ..p
        iny                                     ; DE64 C8                       .
        lda     ($4D),y                         ; DE65 B1 4D                    .M
        sta     $7060,x                         ; DE67 9D 60 70                 .`p
        jmp     LowerFixedEngine_Entry_D891     ; DE6A 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DE6D:
        ldx     $51                             ; DE6D A6 51                    .Q
        ldy     #$01                            ; DE6F A0 01                    ..
        lda     ($4D),y                         ; DE71 B1 4D                    .M
        pha                                     ; DE73 48                       H
        iny                                     ; DE74 C8                       .
        lda     ($4D),y                         ; DE75 B1 4D                    .M
        pha                                     ; DE77 48                       H
        jsr     LowerFixedEngine_Entry_DDDD     ; DE78 20 DD DD                  ..
        lda     $7080,x                         ; DE7B BD 80 70                 ..p
        sta     $70C0,x                         ; DE7E 9D C0 70                 ..p
        lda     $7060,x                         ; DE81 BD 60 70                 .`p
        sta     $70A0,x                         ; DE84 9D A0 70                 ..p
        pla                                     ; DE87 68                       h
        sta     $7060,x                         ; DE88 9D 60 70                 .`p
        pla                                     ; DE8B 68                       h
        sta     $7080,x                         ; DE8C 9D 80 70                 ..p
        jmp     LowerFixedEngine_Entry_D891     ; DE8F 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DE92:
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
LowerFixedEngine_Entry_DEA9:
        lda     PlayerLocalX                    ; DEA9 A5 44                    .D
        cmp     #$0A                            ; DEAB C9 0A                    ..
        bne     LowerFixedEngine_Branch_DECB    ; DEAD D0 1C                    ..
        lda     PlayerLocalY                    ; DEAF A5 45                    .E
        cmp     #$1E                            ; DEB1 C9 1E                    ..
        bne     LowerFixedEngine_Branch_DECB    ; DEB3 D0 16                    ..
        ldy     #$02                            ; DEB5 A0 02                    ..
        lda     ($4D),y                         ; DEB7 B1 4D                    .M
        clc                                     ; DEB9 18                       .
        adc     $7080,x                         ; DEBA 7D 80 70                 }.p
        sta     $7080,x                         ; DEBD 9D 80 70                 ..p
        lda     $7060,x                         ; DEC0 BD 60 70                 .`p
        adc     #$00                            ; DEC3 69 00                    i.
        sta     $7060,x                         ; DEC5 9D 60 70                 .`p
        jmp     LowerFixedEngine_Entry_D891     ; DEC8 4C 91 D8                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_DECB:
        jmp     LowerFixedEngine_Branch_DDF0    ; DECB 4C F0 DD                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DECE:
        rts                                     ; DECE 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DECF:
        jsr     LowerFixedEngine_Entry_DDDD     ; DECF 20 DD DD                  ..
        lda     $3D                             ; DED2 A5 3D                    .=
        lsr     a                               ; DED4 4A                       J
        bcs     LowerFixedEngine_Branch_DEDE    ; DED5 B0 07                    ..
        lda     $3D                             ; DED7 A5 3D                    .=
        eor     #$02                            ; DED9 49 02                    I.
        jmp     LowerFixedEngine_Branch_DEE0    ; DEDB 4C E0 DE                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_DEDE:
        lda     $3D                             ; DEDE A5 3D                    .=
LowerFixedEngine_Branch_DEE0:
        jsr     LowerFixedEngine_Entry_DDF3     ; DEE0 20 F3 DD                  ..
        clc                                     ; DEE3 18                       .
        rts                                     ; DEE4 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DEE5:
        ldy     #$01                            ; DEE5 A0 01                    ..
        lda     ($4D),y                         ; DEE7 B1 4D                    .M
        pha                                     ; DEE9 48                       H
        brk                                     ; DEEA 00                       .
        db   $04,$DF                         ; DEEB 04 DF                    ..
; ----------------------------------------------------------------------------
        pla                                     ; DEED 68                       h
        ldx     $51                             ; DEEE A6 51                    .Q
        bcs     $DEFC                           ; DEF0 B0 0A                    ..
        cmp     #$16                            ; DEF2 C9 16                    ..
        beq     $DEF9                           ; DEF4 F0 03                    ..
        jmp     LowerFixedEngine_Entry_D8D7     ; DEF6 4C D7 D8                 L..
; ----------------------------------------------------------------------------
        jmp     LowerFixedEngine_Entry_D8CE     ; DEF9 4C CE D8                 L..
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_DDE0     ; DEFC 20 E0 DD                  ..
        jmp     LowerFixedEngine_Entry_D891     ; DEFF 4C 91 D8                 L..
; ----------------------------------------------------------------------------
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
        db   $DE,$E5,$DE,$E5,$DE,$AD,$07,$05 ; DF75 DE E5 DE E5 DE AD 07 05  ........
        db   $48,$A5,$51,$20,$91,$FF         ; DF7D 48 A5 51 20 91 FF        H.Q ..
; ----------------------------------------------------------------------------
        ldy     #$00                            ; DF83 A0 00                    ..
        lda     ($49),y                         ; DF85 B1 49                    .I
        sta     $98                             ; DF87 85 98                    ..
        jsr     LowerFixedEngine_Entry_DF9F     ; DF89 20 9F DF                  ..
        lda     ($49),y                         ; DF8C B1 49                    .I
        sta     $99                             ; DF8E 85 99                    ..
        jsr     LowerFixedEngine_Entry_DF9F     ; DF90 20 9F DF                  ..
        lda     ($49),y                         ; DF93 B1 49                    .I
        sta     $9A                             ; DF95 85 9A                    ..
        jsr     LowerFixedEngine_Entry_DF9F     ; DF97 20 9F DF                  ..
        pla                                     ; DF9A 68                       h
        jsr     LowerFixedEngine_Entry_FF91     ; DF9B 20 91 FF                  ..
        rts                                     ; DF9E 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_DF9F:
        pha                                     ; DF9F 48                       H
        inc     $49                             ; DFA0 E6 49                    .I
        bne     $DFA6                           ; DFA2 D0 02                    ..
        inc     $4A                             ; DFA4 E6 4A                    .J
        lda     $49                             ; DFA6 A5 49                    .I
        cmp     #$D8                            ; DFA8 C9 D8                    ..
        bne     LowerFixedEngine_Branch_DFED    ; DFAA D0 41                    .A
        lda     $4A                             ; DFAC A5 4A                    .J
        cmp     #$BF                            ; DFAE C9 BF                    ..
        bne     LowerFixedEngine_Branch_DFED    ; DFB0 D0 3B                    .;
        inc     $0507                           ; DFB2 EE 07 05                 ...
        inc     $51                             ; DFB5 E6 51                    .Q
        lda     $0507                           ; DFB7 AD 07 05                 ...
        pha                                     ; DFBA 48                       H
        jsr     LowerFixedEngine_Entry_FF91     ; DFBB 20 91 FF                  ..
        pla                                     ; DFBE 68                       h
        cmp     #$05                            ; DFBF C9 05                    ..
        bcc     LowerFixedEngine_Branch_DFE5    ; DFC1 90 22                    ."
        beq     LowerFixedEngine_Branch_DFDE    ; DFC3 F0 19                    ..
        lda     #$1B                            ; DFC5 A9 1B                    ..
        sta     $51                             ; DFC7 85 51                    .Q
        jsr     LowerFixedEngine_Entry_FF91     ; DFC9 20 91 FF                  ..
        lda     $DFEF                           ; DFCC AD EF DF                 ...
        asl     a                               ; DFCF 0A                       .
        tax                                     ; DFD0 AA                       .
        lda     $8000,x                         ; DFD1 BD 00 80                 ...
        sta     $49                             ; DFD4 85 49                    .I
        lda     $8001,x                         ; DFD6 BD 01 80                 ...
        sta     $4A                             ; DFD9 85 4A                    .J
        jmp     LowerFixedEngine_Branch_DFED    ; DFDB 4C ED DF                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_DFDE:
        lda     #$1A                            ; DFDE A9 1A                    ..
        sta     $51                             ; DFE0 85 51                    .Q
        jsr     LowerFixedEngine_Entry_FF91     ; DFE2 20 91 FF                  ..
LowerFixedEngine_Branch_DFE5:
        lda     #$80                            ; DFE5 A9 80                    ..
        sta     $4A                             ; DFE7 85 4A                    .J
        lda     #$00                            ; DFE9 A9 00                    ..
        sta     $49                             ; DFEB 85 49                    .I
LowerFixedEngine_Branch_DFED:
        pla                                     ; DFED 68                       h
        rts                                     ; DFEE 60                       `
; ----------------------------------------------------------------------------
        db   $0A,$BF,$A9,$00,$8D,$BB,$07,$85 ; DFEF 0A BF A9 00 8D BB 07 85  ........
        db   $EA,$85,$EB,$20,$F6,$E4,$20,$02 ; DFF7 EA 85 EB 20 F6 E4 20 02  ... .. .
        db   $E4,$A5,$41,$10,$11,$A5,$45,$38 ; DFFF E4 A5 41 10 11 A5 45 38  ..A...E8
        db   $E9,$07,$85,$ED,$A5,$44,$38,$E9 ; E007 E9 07 85 ED A5 44 38 E9  .....D8.
        db   $08,$85,$EC,$4C,$23,$E0,$A5,$43 ; E00F 08 85 EC 4C 23 E0 A5 43  ...L#..C
        db   $38,$E9,$07,$85,$ED,$A5,$42,$38 ; E017 38 E9 07 85 ED A5 42 38  8.....B8
        db   $E9,$08,$85,$EC,$A5,$61,$09,$01 ; E01F E9 08 85 EC A5 61 09 01  .....a..
        db   $85,$61,$20,$47,$E1,$A9,$00,$85 ; E027 85 61 20 47 E1 A9 00 85  .a G....
        db   $16,$20,$68,$E3,$A2,$01         ; E02F 16 20 68 E3 A2 01        . h...
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_E035:
        lda     $7020,x                         ; E035 BD 20 70                 . p
        cmp     #$FF                            ; E038 C9 FF                    ..
        beq     LowerFixedEngine_Branch_E06D    ; E03A F0 31                    .1
        lda     #$00                            ; E03C A9 00                    ..
        sta     $7100,x                         ; E03E 9D 00 71                 ..q
        sta     $7120,x                         ; E041 9D 20 71                 . q
        lda     $7000,x                         ; E044 BD 00 70                 ..p
        sta     $E4                             ; E047 85 E4                    ..
        lda     $7020,x                         ; E049 BD 20 70                 . p
        and     #$90                            ; E04C 29 90                    ).
        bne     LowerFixedEngine_Branch_E060    ; E04E D0 10                    ..
        jsr     LowerFixedEngine_Entry_E169     ; E050 20 69 E1                  i.
        lda     $E4                             ; E053 A5 E4                    ..
        sta     $7000,x                         ; E055 9D 00 70                 ..p
        bcc     LowerFixedEngine_Branch_E068    ; E058 90 0E                    ..
        jsr     LowerFixedEngine_Entry_E368     ; E05A 20 68 E3                  h.
        jmp     LowerFixedEngine_Branch_E068    ; E05D 4C 68 E0                 Lh.
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_E060:
        jsr     LowerFixedEngine_Entry_E160     ; E060 20 60 E1                  `.
        lda     $E4                             ; E063 A5 E4                    ..
        sta     $7000,x                         ; E065 9D 00 70                 ..p
LowerFixedEngine_Branch_E068:
        inx                                     ; E068 E8                       .
        cpx     #$1E                            ; E069 E0 1E                    ..
        bcc     LowerFixedEngine_Branch_E035    ; E06B 90 C8                    ..
LowerFixedEngine_Branch_E06D:
        rts                                     ; E06D 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E06E:
        jsr     LowerFixedEngine_Entry_E147     ; E06E 20 47 E1                  G.
        lda     $3E                             ; E071 A5 3E                    .>
        beq     $E0BE                           ; E073 F0 49                    .I
        lda     $7000                           ; E075 AD 00 70                 ..p
        and     #$03                            ; E078 29 03                    ).
        bne     $E08C                           ; E07A D0 10                    ..
        lda     $EB                             ; E07C A5 EB                    ..
        sec                                     ; E07E 38                       8
        sbc     $058F                           ; E07F ED 8F 05                 ...
        sta     $EB                             ; E082 85 EB                    ..
        bcs     $E089                           ; E084 B0 03                    ..
        dec     a:$ED                           ; E086 CE ED 00                 ...
        jmp     $E0BE                           ; E089 4C BE E0                 L..
; ----------------------------------------------------------------------------
        cmp     #$01                            ; E08C C9 01                    ..
        bne     $E09F                           ; E08E D0 0F                    ..
        lda     $EA                             ; E090 A5 EA                    ..
        clc                                     ; E092 18                       .
        adc     $058F                           ; E093 6D 8F 05                 m..
        sta     $EA                             ; E096 85 EA                    ..
        bcc     $E09C                           ; E098 90 02                    ..
        inc     $EC                             ; E09A E6 EC                    ..
        jmp     $E0BE                           ; E09C 4C BE E0                 L..
; ----------------------------------------------------------------------------
        cmp     #$02                            ; E09F C9 02                    ..
        bne     $E0B2                           ; E0A1 D0 0F                    ..
        lda     $EB                             ; E0A3 A5 EB                    ..
        clc                                     ; E0A5 18                       .
        adc     $058F                           ; E0A6 6D 8F 05                 m..
        sta     $EB                             ; E0A9 85 EB                    ..
        bcc     $E0AF                           ; E0AB 90 02                    ..
        inc     $ED                             ; E0AD E6 ED                    ..
        jmp     $E0BE                           ; E0AF 4C BE E0                 L..
; ----------------------------------------------------------------------------
        lda     $EA                             ; E0B2 A5 EA                    ..
        sec                                     ; E0B4 38                       8
        sbc     $058F                           ; E0B5 ED 8F 05                 ...
        sta     $EA                             ; E0B8 85 EA                    ..
        bcs     $E0BE                           ; E0BA B0 02                    ..
        dec     $EC                             ; E0BC C6 EC                    ..
        ldx     #$01                            ; E0BE A2 01                    ..
        lda     $7020,x                         ; E0C0 BD 20 70                 . p
        cmp     #$FF                            ; E0C3 C9 FF                    ..
        bne     $E0C8                           ; E0C5 D0 01                    ..
        rts                                     ; E0C7 60                       `
; ----------------------------------------------------------------------------
        lda     $7000,x                         ; E0C8 BD 00 70                 ..p
        sta     $E4                             ; E0CB 85 E4                    ..
        bmi     $E0EA                           ; E0CD 30 1B                    0.
        lda     $7020,x                         ; E0CF BD 20 70                 . p
        and     #$90                            ; E0D2 29 90                    ).
        beq     $E0DC                           ; E0D4 F0 06                    ..
        jsr     LowerFixedEngine_Entry_E160     ; E0D6 20 60 E1                  `.
        jmp     $E0DF                           ; E0D9 4C DF E0                 L..
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_E169     ; E0DC 20 69 E1                  i.
        lda     $E4                             ; E0DF A5 E4                    ..
        sta     $7000,x                         ; E0E1 9D 00 70                 ..p
        inx                                     ; E0E4 E8                       .
        cpx     #$1E                            ; E0E5 E0 1E                    ..
        bcc     $E0C0                           ; E0E7 90 D7                    ..
        rts                                     ; E0E9 60                       `
; ----------------------------------------------------------------------------
        lda     #$0F                            ; E0EA A9 0F                    ..
        sta     $E3                             ; E0EC 85 E3                    ..
        ldy     #$10                            ; E0EE A0 10                    ..
        lda     $70E0,x                         ; E0F0 BD E0 70                 ..p
        and     #$40                            ; E0F3 29 40                    )@
        beq     $E0FB                           ; E0F5 F0 04                    ..
        ldy     #$20                            ; E0F7 A0 20                    .
        lsr     $E3                             ; E0F9 46 E3                    F.
        sty     $E2                             ; E0FB 84 E2                    ..
        lda     $7020,x                         ; E0FD BD 20 70                 . p
        sta     $E5                             ; E100 85 E5                    ..
        and     #$90                            ; E102 29 90                    ).
        beq     $E10C                           ; E104 F0 06                    ..
        jsr     LowerFixedEngine_Entry_E160     ; E106 20 60 E1                  `.
        jmp     $E12B                           ; E109 4C 2B E1                 L+.
; ----------------------------------------------------------------------------
        lda     $E4                             ; E10C A5 E4                    ..
        jsr     LowerFixedEngine_Entry_E2EE     ; E10E 20 EE E2                  ..
        lda     $E5                             ; E111 A5 E5                    ..
        and     #$40                            ; E113 29 40                    )@
        beq     $E128                           ; E115 F0 11                    ..
        lda     #$10                            ; E117 A9 10                    ..
        sta     $E2                             ; E119 85 E2                    ..
        lda     $E5                             ; E11B A5 E5                    ..
        and     #$20                            ; E11D 29 20                    )
        beq     LowerFixedEngine_Branch_E123    ; E11F F0 02                    ..
        asl     $E2                             ; E121 06 E2                    ..
LowerFixedEngine_Branch_E123:
        lda     $E5                             ; E123 A5 E5                    ..
        jsr     LowerFixedEngine_Entry_E2EE     ; E125 20 EE E2                  ..
        jsr     LowerFixedEngine_Entry_E169     ; E128 20 69 E1                  i.
        lda     $3C                             ; E12B A5 3C                    .<
        and     $E3                             ; E12D 25 E3                    %.
        cmp     $E3                             ; E12F C5 E3                    ..
        bne     $E139                           ; E131 D0 06                    ..
        lda     $E4                             ; E133 A5 E4                    ..
        and     #$7F                            ; E135 29 7F                    ).
        sta     $E4                             ; E137 85 E4                    ..
        lda     $E4                             ; E139 A5 E4                    ..
        sta     $7000,x                         ; E13B 9D 00 70                 ..p
        inx                                     ; E13E E8                       .
        cpx     #$1E                            ; E13F E0 1E                    ..
        bcs     $E146                           ; E141 B0 03                    ..
        jmp     $E0C0                           ; E143 4C C0 E0                 L..
; ----------------------------------------------------------------------------
        rts                                     ; E146 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E147:
        lda     $7020                           ; E147 AD 20 70                 . p
        and     #$90                            ; E14A 29 90                    ).
        beq     $E152                           ; E14C F0 04                    ..
        ldy     #$00                            ; E14E A0 00                    ..
        beq     LowerFixedEngine_Branch_E1B7    ; E150 F0 65                    .e
        lda     #$08                            ; E152 A9 08                    ..
        sta     $00                             ; E154 85 00                    ..
        lda     #$07                            ; E156 A9 07                    ..
        sta     $01                             ; E158 85 01                    ..
        lda     #$00                            ; E15A A9 00                    ..
        tax                                     ; E15C AA                       .
        jmp     $E336                           ; E15D 4C 36 E3                 L6.
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E160:
        lda     $E4                             ; E160 A5 E4                    ..
        and     #$3C                            ; E162 29 3C                    )<
        sta     $E2                             ; E164 85 E2                    ..
        bne     $E1A9                           ; E166 D0 41                    .A
        rts                                     ; E168 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E169:
        lda     $E4                             ; E169 A5 E4                    ..
        and     #$3C                            ; E16B 29 3C                    )<
        sta     $E2                             ; E16D 85 E2                    ..
        lda     $7140,x                         ; E16F BD 40 71                 .@q
        and     #$E0                            ; E172 29 E0                    ).
        cmp     $46                             ; E174 C5 46                    .F
        bne     $E1A5                           ; E176 D0 2D                    .-
LowerFixedEngine_Entry_E178:
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
        bcs     $E1D3                           ; E197 B0 3A                    .:
        lda     $E1                             ; E199 A5 E1                    ..
        and     #$0F                            ; E19B 29 0F                    ).
        cmp     #$0F                            ; E19D C9 0F                    ..
        bcc     $E1D3                           ; E19F 90 32                    .2
        lda     $E0                             ; E1A1 A5 E0                    ..
        beq     $E1D3                           ; E1A3 F0 2E                    ..
        lda     $E2                             ; E1A5 A5 E2                    ..
        beq     $E1D1                           ; E1A7 F0 28                    .(
        jsr     LowerFixedEngine_Entry_C78C     ; E1A9 20 8C C7                  ..
        lda     $E2                             ; E1AC A5 E2                    ..
        jsr     LowerFixedEngine_Entry_E4BB     ; E1AE 20 BB E4                  ..
        lda     $E4                             ; E1B1 A5 E4                    ..
        and     #$C3                            ; E1B3 29 C3                    ).
        sta     $E4                             ; E1B5 85 E4                    ..
LowerFixedEngine_Branch_E1B7:
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
        bne     $E20E                           ; E1F4 D0 18                    ..
        jsr     LowerFixedEngine_Entry_E45C     ; E1F6 20 5C E4                  \.
        sta     $E2                             ; E1F9 85 E2                    ..
        lda     $E4                             ; E1FB A5 E4                    ..
        and     #$C3                            ; E1FD 29 C3                    ).
        ora     $E2                             ; E1FF 05 E2                    ..
        sta     $E4                             ; E201 85 E4                    ..
        lda     $E2                             ; E203 A5 E2                    ..
        jsr     LowerFixedEngine_Entry_C78C     ; E205 20 8C C7                  ..
        jsr     LowerFixedEngine_Entry_E368     ; E208 20 68 E3                  h.
        jmp     $E211                           ; E20B 4C 11 E2                 L..
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_C78C     ; E20E 20 8C C7                  ..
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
        jsr     LowerFixedEngine_Entry_E45C     ; E251 20 5C E4                  \.
        sta     $E2                             ; E254 85 E2                    ..
        lda     $E4                             ; E256 A5 E4                    ..
        and     #$C3                            ; E258 29 C3                    ).
        ora     $E2                             ; E25A 05 E2                    ..
        sta     $E4                             ; E25C 85 E4                    ..
        lda     $E2                             ; E25E A5 E2                    ..
        jsr     LowerFixedEngine_Entry_C78C     ; E260 20 8C C7                  ..
        jsr     LowerFixedEngine_Entry_E368     ; E263 20 68 E3                  h.
        jmp     $E26C                           ; E266 4C 6C E2                 Ll.
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_C78C     ; E269 20 8C C7                  ..
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
LowerFixedEngine_Entry_E2EE:
        and     #$03                            ; E2EE 29 03                    ).
        bne     $E301                           ; E2F0 D0 0F                    ..
        lda     $7120,x                         ; E2F2 BD 20 71                 . q
        sec                                     ; E2F5 38                       8
        sbc     $E2                             ; E2F6 E5 E2                    ..
        sta     $7120,x                         ; E2F8 9D 20 71                 . q
        bcs     $E300                           ; E2FB B0 03                    ..
        dec     $6FC0,x                         ; E2FD DE C0 6F                 ..o
        rts                                     ; E300 60                       `
; ----------------------------------------------------------------------------
        cmp     #$01                            ; E301 C9 01                    ..
        bne     $E314                           ; E303 D0 0F                    ..
        lda     $7100,x                         ; E305 BD 00 71                 ..q
        clc                                     ; E308 18                       .
        adc     $E2                             ; E309 65 E2                    e.
        sta     $7100,x                         ; E30B 9D 00 71                 ..q
        bcc     $E313                           ; E30E 90 03                    ..
        inc     $6FA0,x                         ; E310 FE A0 6F                 ..o
        rts                                     ; E313 60                       `
; ----------------------------------------------------------------------------
        cmp     #$02                            ; E314 C9 02                    ..
        bne     $E327                           ; E316 D0 0F                    ..
        lda     $7120,x                         ; E318 BD 20 71                 . q
        clc                                     ; E31B 18                       .
        adc     $E2                             ; E31C 65 E2                    e.
        sta     $7120,x                         ; E31E 9D 20 71                 . q
        bcc     $E326                           ; E321 90 03                    ..
        inc     $6FC0,x                         ; E323 FE C0 6F                 ..o
        rts                                     ; E326 60                       `
; ----------------------------------------------------------------------------
        lda     $7100,x                         ; E327 BD 00 71                 ..q
        sec                                     ; E32A 38                       8
        sbc     $E2                             ; E32B E5 E2                    ..
        sta     $7100,x                         ; E32D 9D 00 71                 ..q
        bcs     $E335                           ; E330 B0 03                    ..
        dec     $6FA0,x                         ; E332 DE A0 6F                 ..o
        rts                                     ; E335 60                       `
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_C78C     ; E336 20 8C C7                  ..
        lda     $00                             ; E339 A5 00                    ..
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
LowerFixedEngine_Entry_E368:
        txa                                     ; E368 8A                       .
        pha                                     ; E369 48                       H
        tya                                     ; E36A 98                       .
        pha                                     ; E36B 48                       H
        lda     $E3E0                           ; E36C AD E0 E3                 ...
        sta     $02                             ; E36F 85 02                    ..
        lda     $E3E1                           ; E371 AD E1 E3                 ...
        sta     $03                             ; E374 85 03                    ..
        lda     #$00                            ; E376 A9 00                    ..
        sta     $00                             ; E378 85 00                    ..
        lda     $6FE0,x                         ; E37A BD E0 6F                 ..o
        and     #$0F                            ; E37D 29 0F                    ).
        lsr     a                               ; E37F 4A                       J
        ror     $00                             ; E380 66 00                    f.
        lsr     a                               ; E382 4A                       J
        ror     $00                             ; E383 66 00                    f.
        sta     $01                             ; E385 85 01                    ..
        lda     $7000,x                         ; E387 BD 00 70                 ..p
        and     #$03                            ; E38A 29 03                    ).
        asl     a                               ; E38C 0A                       .
        asl     a                               ; E38D 0A                       .
        asl     a                               ; E38E 0A                       .
        asl     a                               ; E38F 0A                       .
        clc                                     ; E390 18                       .
        adc     $00                             ; E391 65 00                    e.
        sta     $00                             ; E393 85 00                    ..
        lda     $01                             ; E395 A5 01                    ..
        adc     #$00                            ; E397 69 00                    i.
        sta     $01                             ; E399 85 01                    ..
        clc                                     ; E39B 18                       .
        lda     $00                             ; E39C A5 00                    ..
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
        db   $72                             ; E3E1 72                       r
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E3E2:
        lda     $07BB                           ; E3E2 AD BB 07                 ...
        and     #$7F                            ; E3E5 29 7F                    ).
        sta     $07BB                           ; E3E7 8D BB 07                 ...
        ldx     #$01                            ; E3EA A2 01                    ..
LowerFixedEngine_Branch_E3EC:
        lda     $7020,x                         ; E3EC BD 20 70                 . p
        cmp     #$FF                            ; E3EF C9 FF                    ..
        beq     LowerFixedEngine_Branch_E402    ; E3F1 F0 0F                    ..
        lda     $70E0,x                         ; E3F3 BD E0 70                 ..p
        and     #$20                            ; E3F6 29 20                    )
        beq     LowerFixedEngine_Branch_E3FD    ; E3F8 F0 03                    ..
        jsr     LowerFixedEngine_Entry_E419     ; E3FA 20 19 E4                  ..
LowerFixedEngine_Branch_E3FD:
        inx                                     ; E3FD E8                       .
        cpx     #$1E                            ; E3FE E0 1E                    ..
        bcc     LowerFixedEngine_Branch_E3EC    ; E400 90 EA                    ..
LowerFixedEngine_Branch_E402:
        ldx     #$01                            ; E402 A2 01                    ..
LowerFixedEngine_Branch_E404:
        lda     $7020,x                         ; E404 BD 20 70                 . p
        cmp     #$FF                            ; E407 C9 FF                    ..
        beq     LowerFixedEngine_Branch_E418    ; E409 F0 0D                    ..
        lda     $70E0,x                         ; E40B BD E0 70                 ..p
        and     #$DF                            ; E40E 29 DF                    ).
        sta     $70E0,x                         ; E410 9D E0 70                 ..p
        inx                                     ; E413 E8                       .
        cpx     #$1E                            ; E414 E0 1E                    ..
        bcc     LowerFixedEngine_Branch_E404    ; E416 90 EC                    ..
LowerFixedEngine_Branch_E418:
        rts                                     ; E418 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E419:
        ldy     #$01                            ; E419 A0 01                    ..
LowerFixedEngine_Branch_E41B:
        lda     $7020,y                         ; E41B B9 20 70                 . p
        cmp     #$FF                            ; E41E C9 FF                    ..
        beq     LowerFixedEngine_Branch_E435    ; E420 F0 13                    ..
        lda     $70E0,y                         ; E422 B9 E0 70                 ..p
        and     #$20                            ; E425 29 20                    )
        bne     LowerFixedEngine_Branch_E430    ; E427 D0 07                    ..
        lda     $7000,y                         ; E429 B9 00 70                 ..p
        and     #$3C                            ; E42C 29 3C                    )<
        bne     LowerFixedEngine_Branch_E43A    ; E42E D0 0A                    ..
LowerFixedEngine_Branch_E430:
        iny                                     ; E430 C8                       .
        cpy     #$1E                            ; E431 C0 1E                    ..
        bcc     LowerFixedEngine_Branch_E41B    ; E433 90 E6                    ..
LowerFixedEngine_Branch_E435:
        pla                                     ; E435 68                       h
        pla                                     ; E436 68                       h
        jmp     LowerFixedEngine_Branch_E402    ; E437 4C 02 E4                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_E43A:
        jsr     LowerFixedEngine_Entry_E4BB     ; E43A 20 BB E4                  ..
        lda     $7000,y                         ; E43D B9 00 70                 ..p
        and     #$C3                            ; E440 29 C3                    ).
        sta     $7000,y                         ; E442 99 00 70                 ..p
        lda     $7000,x                         ; E445 BD 00 70                 ..p
        sta     $E4                             ; E448 85 E4                    ..
        lda     #$00                            ; E44A A9 00                    ..
        sta     $E2                             ; E44C 85 E2                    ..
        jsr     LowerFixedEngine_Entry_E178     ; E44E 20 78 E1                  x.
        bcc     LowerFixedEngine_Branch_E456    ; E451 90 03                    ..
        jsr     LowerFixedEngine_Entry_E368     ; E453 20 68 E3                  h.
LowerFixedEngine_Branch_E456:
        lda     $E4                             ; E456 A5 E4                    ..
        sta     $7000,x                         ; E458 9D 00 70                 ..p
        rts                                     ; E45B 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E45C:
        lda     $61                             ; E45C A5 61                    .a
        cmp     #$FF                            ; E45E C9 FF                    ..
        beq     $E481                           ; E460 F0 1F                    ..
        lda     #$02                            ; E462 A9 02                    ..
        sta     $01                             ; E464 85 01                    ..
        lda     #$01                            ; E466 A9 01                    ..
        sta     $00                             ; E468 85 00                    ..
        lda     $61                             ; E46A A5 61                    .a
        lsr     a                               ; E46C 4A                       J
        lsr     a                               ; E46D 4A                       J
        bcc     $E476                           ; E46E 90 06                    ..
        asl     $01                             ; E470 06 01                    ..
        inc     $00                             ; E472 E6 00                    ..
        bne     $E46D                           ; E474 D0 F7                    ..
        lda     $61                             ; E476 A5 61                    .a
        ora     $01                             ; E478 05 01                    ..
        sta     $61                             ; E47A 85 61                    .a
        lda     $00                             ; E47C A5 00                    ..
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
        sta     $00                             ; E48D 85 00                    ..
        lda     $62                             ; E48F A5 62                    .b
        lsr     a                               ; E491 4A                       J
        bcc     $E49A                           ; E492 90 06                    ..
        asl     $01                             ; E494 06 01                    ..
        inc     $00                             ; E496 E6 00                    ..
        bne     $E491                           ; E498 D0 F7                    ..
        lda     $62                             ; E49A A5 62                    .b
        ora     $01                             ; E49C 05 01                    ..
        sta     $62                             ; E49E 85 62                    .b
        lda     $00                             ; E4A0 A5 00                    ..
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
LowerFixedEngine_Entry_E4BB:
        sta     $00                             ; E4BB 85 00                    ..
        cmp     #$20                            ; E4BD C9 20                    .
        bcs     $E4DC                           ; E4BF B0 1B                    ..
        lda     #$02                            ; E4C1 A9 02                    ..
        sta     $01                             ; E4C3 85 01                    ..
        lda     $00                             ; E4C5 A5 00                    ..
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
        lda     $00                             ; E4E0 A5 00                    ..
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
        db   $A2,$00,$A9,$F7,$9D,$00,$02,$E8 ; E4F6 A2 00 A9 F7 9D 00 02 E8  ........
        db   $D0,$FA,$60,$A9,$00,$85,$61,$85 ; E4FE D0 FA 60 A9 00 85 61 85  ..`...a.
        db   $62,$A5,$41,$10,$05,$A9,$05,$4C ; E506 62 A5 41 10 05 A9 05 4C  b.A....L
        db   $12,$E5,$A9,$01,$8D,$BC,$07,$A2 ; E50E 12 E5 A9 01 8D BC 07 A2  ........
        db   $00,$BD,$20,$70,$C9,$FF,$F0,$0D ; E516 00 BD 20 70 C9 FF F0 0D  .. p....
        db   $BD,$00,$70,$29,$C3,$9D,$00,$70 ; E51E BD 00 70 29 C3 9D 00 70  ..p)...p
        db   $E8,$E0,$1E,$90,$EC,$60,$A5,$1A ; E526 E8 E0 1E 90 EC 60 A5 1A  .....`..
        db   $D0,$0E,$A5,$FD,$C9,$7F,$A5,$FE ; E52E D0 0E A5 FD C9 7F A5 FE  ........
        db   $E9,$96,$A5,$FF,$E9,$98,$90,$0C ; E536 E9 96 A5 FF E9 98 90 0C  ........
        db   $A9,$7F,$85,$FD,$A9,$96,$85,$FE ; E53E A9 7F 85 FD A9 96 85 FE  ........
        db   $A9,$98,$85,$FF,$60             ; E546 A9 98 85 FF 60           ....`
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_E54B:
        php                                     ; E54B 08                       .
        lda     $0507                           ; E54C AD 07 05                 ...
        pha                                     ; E54F 48                       H
        and     #$0F                            ; E550 29 0F                    ).
        sta     $0507                           ; E552 8D 07 05                 ...
        php                                     ; E555 08                       .
        lda     $0596                           ; E556 AD 96 05                 ...
        jsr     LowerFixedEngine_Entry_FF91     ; E559 20 91 FF                  ..
        jsr     LowerFixedEngine_Entry_E584     ; E55C 20 84 E5                  ..
        jsr     LowerFixedEngine_Entry_E5A5     ; E55F 20 A5 E5                  ..
        plp                                     ; E562 28                       (
        php                                     ; E563 08                       .
        brk                                     ; E564 00                       .
        db   $11,$EF                         ; E565 11 EF                    ..
; ----------------------------------------------------------------------------
        brk                                     ; E567 00                       .
        db   $03,$DF                         ; E568 03 DF                    ..
; ----------------------------------------------------------------------------
        brk                                     ; E56A 00                       .
        db   $01,$BF                         ; E56B 01 BF                    ..
; ----------------------------------------------------------------------------
        brk                                     ; E56D 00                       .
        db   $20,$EF                         ; E56E 20 EF                     .
; ----------------------------------------------------------------------------
        plp                                     ; E570 28                       (
        bcc     $E577                           ; E571 90 04                    ..
        brk                                     ; E573 00                       .
        db   $29,$EF                         ; E574 29 EF                    ).
; ----------------------------------------------------------------------------
        sec                                     ; E576 38                       8
        pla                                     ; E577 68                       h
        pha                                     ; E578 48                       H
        and     #$0F                            ; E579 29 0F                    ).
        jsr     LowerFixedEngine_Entry_FF91     ; E57B 20 91 FF                  ..
        pla                                     ; E57E 68                       h
        sta     $0507                           ; E57F 8D 07 05                 ...
        plp                                     ; E582 28                       (
        rts                                     ; E583 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E584:
        jsr     LowerFixedEngine_Entry_E5B8     ; E584 20 B8 E5                  ..
        jsr     LowerFixedEngine_Entry_E5C1     ; E587 20 C1 E5                  ..
LowerFixedEngine_Entry_E58A:
        jsr     LowerFixedEngine_Entry_E600     ; E58A 20 00 E6                  ..
        cmp     #$00                            ; E58D C9 00                    ..
        beq     $E59C                           ; E58F F0 0B                    ..
        cmp     #$01                            ; E591 C9 01                    ..
        beq     $E59F                           ; E593 F0 0A                    ..
        cmp     #$02                            ; E595 C9 02                    ..
        beq     $E5A2                           ; E597 F0 09                    ..
        jmp     $E78C                           ; E599 4C 8C E7                 L..
; ----------------------------------------------------------------------------
        jmp     $E674                           ; E59C 4C 74 E6                 Lt.
; ----------------------------------------------------------------------------
        jmp     $E6A3                           ; E59F 4C A3 E6                 L..
; ----------------------------------------------------------------------------
        jmp     $E795                           ; E5A2 4C 95 E7                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E5A5:
        lda     #$FF                            ; E5A5 A9 FF                    ..
        sta     $53                             ; E5A7 85 53                    .S
        lda     #$02                            ; E5A9 A9 02                    ..
        jsr     LowerFixedEngine_Entry_E606     ; E5AB 20 06 E6                  ..
        cmp     #$00                            ; E5AE C9 00                    ..
        beq     $E5B7                           ; E5B0 F0 05                    ..
        sta     $66                             ; E5B2 85 66                    .f
        jsr     LowerFixedEngine_Entry_E58A     ; E5B4 20 8A E5                  ..
        rts                                     ; E5B7 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E5B8:
        lda     #$00                            ; E5B8 A9 00                    ..
        sta     $52                           ; E5BA 85 52                    .R
        sta     $53                             ; E5BC 85 53                    .S
        sta     $5B                             ; E5BE 85 5B                    .[
        rts                                     ; E5C0 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E5C1:
        jsr     LowerFixedEngine_Entry_E5E6     ; E5C1 20 E6 E5                  ..
        pha                                     ; E5C4 48                       H
        lda     #$00                            ; E5C5 A9 00                    ..
        sta     $4F                             ; E5C7 85 4F                    .O
        lda     #$78                            ; E5C9 A9 78                    .x
        sta     $50                             ; E5CB 85 50                    .P
        pla                                     ; E5CD 68                       h
        ldy     $40                             ; E5CE A4 40                    .@
        sty     $00                             ; E5D0 84 00                    ..
        ldy     #$00                            ; E5D2 A0 00                    ..
        ldx     $3F                             ; E5D4 A6 3F                    .?
        sta     ($4F),y                         ; E5D6 91 4F                    .O
        inc     $4F                             ; E5D8 E6 4F                    .O
        bne     $E5DE                           ; E5DA D0 02                    ..
        inc     $50                             ; E5DC E6 50                    .P
        dex                                     ; E5DE CA                       .
        bne     $E5D6                           ; E5DF D0 F5                    ..
        dec     $00                             ; E5E1 C6 00                    ..
        bne     $E5D4                           ; E5E3 D0 EF                    ..
        rts                                     ; E5E5 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E5E6:
        lda     $66                             ; E5E6 A5 66                    .f
        jmp     LowerFixedEngine_Entry_E606     ; E5E8 4C 06 E6                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E5EB:
        jsr     LowerFixedEngine_Entry_E604     ; E5EB 20 04 E6                  ..
        lda     #$00                            ; E5EE A9 00                    ..
        ldy     #$78                            ; E5F0 A0 78                    .x
        ldx     #$00                            ; E5F2 A2 00                    ..
        jsr     LowerFixedEngine_Entry_C81D     ; E5F4 20 1D C8                  ..
        lda     $00                             ; E5F7 A5 00                    ..
        sta     $08                             ; E5F9 85 08                    ..
        lda     $01                             ; E5FB A5 01                    ..
        sta     $09                             ; E5FD 85 09                    ..
        rts                                     ; E5FF 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E600:
        lda     #$02                            ; E600 A9 02                    ..
        bne     LowerFixedEngine_Entry_E606     ; E602 D0 02                    ..
LowerFixedEngine_Entry_E604:
        lda     $55                             ; E604 A5 55                    .U
LowerFixedEngine_Entry_E606:
        tax                                     ; E606 AA                       .
        lda     #$00                            ; E607 A9 00                    ..
        sta     $00                             ; E609 85 00                    ..
        sta     $01                             ; E60B 85 01                    ..
        jsr     LowerFixedEngine_Entry_E61A     ; E60D 20 1A E6                  ..
        rol     $00                             ; E610 26 00                    &.
        rol     $01                             ; E612 26 01                    &.
        dex                                     ; E614 CA                       .
        bne     $E60D                           ; E615 D0 F6                    ..
        lda     $00                             ; E617 A5 00                    ..
        rts                                     ; E619 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E61A:
        lda     #$80                            ; E61A A9 80                    ..
        ldy     $52                           ; E61C A4 52                    .R
        beq     $E625                           ; E61E F0 05                    ..
        lsr     a                               ; E620 4A                       J
        dey                                     ; E621 88                       .
        jmp     $E61E                           ; E622 4C 1E E6                 L..
; ----------------------------------------------------------------------------
        ldy     #$00                            ; E625 A0 00                    ..
        and     ($49),y                         ; E627 31 49                    1I
        sta     $0F                             ; E629 85 0F                    ..
        inc     $52                           ; E62B E6 52                    .R
        lda     $52                           ; E62D A5 52                    .R
        cmp     #$08                            ; E62F C9 08                    ..
        bcc     $E63A                           ; E631 90 07                    ..
        lda     #$00                            ; E633 A9 00                    ..
        sta     $52                           ; E635 85 52                    .R
        jsr     LowerFixedEngine_Entry_E642     ; E637 20 42 E6                  B.
        lda     $0F                             ; E63A A5 0F                    ..
        beq     $E640                           ; E63C F0 02                    ..
        sec                                     ; E63E 38                       8
        rts                                     ; E63F 60                       `
; ----------------------------------------------------------------------------
        clc                                     ; E640 18                       .
        rts                                     ; E641 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E642:
        inc     $49                             ; E642 E6 49                    .I
        bne     $E648                           ; E644 D0 02                    ..
        inc     $4A                             ; E646 E6 4A                    .J
        lda     $49                             ; E648 A5 49                    .I
        cmp     #$D8                            ; E64A C9 D8                    ..
        bne     $E673                           ; E64C D0 25                    .%
        lda     $4A                             ; E64E A5 4A                    .J
        cmp     #$BF                            ; E650 C9 BF                    ..
        bne     $E673                           ; E652 D0 1F                    ..
        pha                                     ; E654 48                       H
        txa                                     ; E655 8A                       .
        pha                                     ; E656 48                       H
        inc     $0507                           ; E657 EE 07 05                 ...
        lda     $0507                           ; E65A AD 07 05                 ...
        pha                                     ; E65D 48                       H
        jsr     LowerFixedEngine_Entry_FF91     ; E65E 20 91 FF                  ..
        ldx     #$00                            ; E661 A2 00                    ..
        pla                                     ; E663 68                       h
        cmp     #$0B                            ; E664 C9 0B                    ..
        bne     LowerFixedEngine_Branch_E66A    ; E666 D0 02                    ..
        ldx     #$12                            ; E668 A2 12                    ..
LowerFixedEngine_Branch_E66A:
        stx     $49                             ; E66A 86 49                    .I
        lda     #$80                            ; E66C A9 80                    ..
        sta     $4A                             ; E66E 85 4A                    .J
        pla                                     ; E670 68                       h
        tax                                     ; E671 AA                       .
        pla                                     ; E672 68                       h
        rts                                     ; E673 60                       `
; ----------------------------------------------------------------------------
        lda     #$00                            ; E674 A9 00                    ..
        sta     $54                             ; E676 85 54                    .T
        jsr     LowerFixedEngine_Entry_E5E6     ; E678 20 E6 E5                  ..
        sta     $57                             ; E67B 85 57                    .W
        jsr     LowerFixedEngine_Entry_E600     ; E67D 20 00 E6                  ..
        cmp     #$00                            ; E680 C9 00                    ..
        bne     $E6A0                           ; E682 D0 1C                    ..
        jsr     LowerFixedEngine_Entry_E61A     ; E684 20 1A E6                  ..
        bcc     $E68A                           ; E687 90 01                    ..
        rts                                     ; E689 60                       `
; ----------------------------------------------------------------------------
        lda     #$FF                            ; E68A A9 FF                    ..
        sta     $54                             ; E68C 85 54                    .T
        jsr     LowerFixedEngine_Entry_E5E6     ; E68E 20 E6 E5                  ..
        sta     $58                             ; E691 85 58                    .X
        jsr     LowerFixedEngine_Entry_E5E6     ; E693 20 E6 E5                  ..
        sta     $59                             ; E696 85 59                    .Y
        jsr     LowerFixedEngine_Entry_E5E6     ; E698 20 E6 E5                  ..
        sta     $5A                             ; E69B 85 5A                    .Z
        jmp     LowerFixedEngine_Entry_E58A     ; E69D 4C 8A E5                 L..
; ----------------------------------------------------------------------------
        jmp     $E58D                           ; E6A0 4C 8D E5                 L..
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_E604     ; E6A3 20 04 E6                  ..
        lda     $00                             ; E6A6 A5 00                    ..
        sta     $07                             ; E6A8 85 07                    ..
        lda     $01                             ; E6AA A5 01                    ..
        sta     $08                             ; E6AC 85 08                    ..
        lda     $3F                             ; E6AE A5 3F                    .?
        ldx     #$00                            ; E6B0 A2 00                    ..
        jsr     LowerFixedEngine_Entry_C851     ; E6B2 20 51 C8                  Q.
        sta     $03                             ; E6B5 85 03                    ..
        lda     $00                             ; E6B7 A5 00                    ..
        sta     $04                             ; E6B9 85 04                    ..
        jsr     LowerFixedEngine_Entry_E604     ; E6BB 20 04 E6                  ..
        lda     $3F                             ; E6BE A5 3F                    .?
        ldx     #$00                            ; E6C0 A2 00                    ..
        jsr     LowerFixedEngine_Entry_C851     ; E6C2 20 51 C8                  Q.
        sta     $05                             ; E6C5 85 05                    ..
        lda     $00                             ; E6C7 A5 00                    ..
        sta     $06                             ; E6C9 85 06                    ..
        lda     #$00                            ; E6CB A9 00                    ..
        ldy     #$78                            ; E6CD A0 78                    .x
        ldx     #$07                            ; E6CF A2 07                    ..
        jsr     LowerFixedEngine_Entry_C81D     ; E6D1 20 1D C8                  ..
        lda     $06                             ; E6D4 A5 06                    ..
        sec                                     ; E6D6 38                       8
        sbc     $04                             ; E6D7 E5 04                    ..
        sta     $04                             ; E6D9 85 04                    ..
        lda     $05                             ; E6DB A5 05                    ..
        sec                                     ; E6DD 38                       8
        sbc     $03                             ; E6DE E5 03                    ..
        sta     $03                             ; E6E0 85 03                    ..
        lda     $54                             ; E6E2 A5 54                    .T
        beq     $E6EA                           ; E6E4 F0 04                    ..
        lsr     $03                             ; E6E6 46 03                    F.
        lsr     $04                             ; E6E8 46 04                    F.
        inc     $03                             ; E6EA E6 03                    ..
        inc     $04                             ; E6EC E6 04                    ..
        lda     $57                             ; E6EE A5 57                    .W
        ldx     $03                             ; E6F0 A6 03                    ..
LowerFixedEngine_Branch_E6F2:
        ldy     #$00                            ; E6F2 A0 00                    ..
        pha                                     ; E6F4 48                       H
        lda     $53                             ; E6F5 A5 53                    .S
        beq     $E70E                           ; E6F7 F0 15                    ..
        lda     ($07),y                         ; E6F9 B1 07                    ..
        and     #$1F                            ; E6FB 29 1F                    ).
        sta     ($07),y                         ; E6FD 91 07                    ..
        pla                                     ; E6FF 68                       h
        pha                                     ; E700 48                       H
        asl     a                               ; E701 0A                       .
        asl     a                               ; E702 0A                       .
        asl     a                               ; E703 0A                       .
        asl     a                               ; E704 0A                       .
        asl     a                               ; E705 0A                       .
        ora     ($07),y                         ; E706 11 07                    ..
        sta     ($07),y                         ; E708 91 07                    ..
        pla                                     ; E70A 68                       h
        jmp     $E752                           ; E70B 4C 52 E7                 LR.
; ----------------------------------------------------------------------------
        lda     $54                             ; E70E A5 54                    .T
        beq     $E74F                           ; E710 F0 3D                    .=
        pla                                     ; E712 68                       h
        lda     $57                             ; E713 A5 57                    .W
        sta     ($07),y                         ; E715 91 07                    ..
        jsr     LowerFixedEngine_Entry_E76D     ; E717 20 6D E7                  m.
        lda     $07                             ; E71A A5 07                    ..
        pha                                     ; E71C 48                       H
        lda     $08                             ; E71D A5 08                    ..
        pha                                     ; E71F 48                       H
        lda     $58                             ; E720 A5 58                    .X
        sta     ($07),y                         ; E722 91 07                    ..
        jsr     LowerFixedEngine_Entry_E780     ; E724 20 80 E7                  ..
        lda     $5A                             ; E727 A5 5A                    .Z
        sta     ($07),y                         ; E729 91 07                    ..
        jsr     LowerFixedEngine_Entry_E774     ; E72B 20 74 E7                  t.
        lda     $59                             ; E72E A5 59                    .Y
        sta     ($07),y                         ; E730 91 07                    ..
        pla                                     ; E732 68                       h
        sta     $08                             ; E733 85 08                    ..
        pla                                     ; E735 68                       h
        sta     $07                             ; E736 85 07                    ..
        jsr     LowerFixedEngine_Entry_E76D     ; E738 20 6D E7                  m.
        dex                                     ; E73B CA                       .
        bne     LowerFixedEngine_Branch_E6F2    ; E73C D0 B4                    ..
        lda     $3F                             ; E73E A5 3F                    .?
        sec                                     ; E740 38                       8
        sbc     $03                             ; E741 E5 03                    ..
        sec                                     ; E743 38                       8
        sbc     $03                             ; E744 E5 03                    ..
        jsr     LowerFixedEngine_Entry_E782     ; E746 20 82 E7                  ..
        jsr     LowerFixedEngine_Entry_E780     ; E749 20 80 E7                  ..
        jmp     LowerFixedEngine_Branch_E766    ; E74C 4C 66 E7                 Lf.
; ----------------------------------------------------------------------------
        pla                                     ; E74F 68                       h
        sta     ($07),y                         ; E750 91 07                    ..
        jsr     LowerFixedEngine_Entry_E76D     ; E752 20 6D E7                  m.
        dex                                     ; E755 CA                       .
        bne     LowerFixedEngine_Branch_E6F2    ; E756 D0 9A                    ..
        lda     $3F                             ; E758 A5 3F                    .?
        sec                                     ; E75A 38                       8
        sbc     $03                             ; E75B E5 03                    ..
        clc                                     ; E75D 18                       .
        adc     $07                             ; E75E 65 07                    e.
        sta     $07                             ; E760 85 07                    ..
        bcc     LowerFixedEngine_Branch_E766    ; E762 90 02                    ..
        inc     $08                             ; E764 E6 08                    ..
LowerFixedEngine_Branch_E766:
        dec     $04                             ; E766 C6 04                    ..
        bne     $E6EE                           ; E768 D0 84                    ..
        jmp     LowerFixedEngine_Entry_E58A     ; E76A 4C 8A E5                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E76D:
        inc     $07                             ; E76D E6 07                    ..
        bne     $E773                           ; E76F D0 02                    ..
        inc     $08                             ; E771 E6 08                    ..
        rts                                     ; E773 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E774:
        lda     $07                             ; E774 A5 07                    ..
        sec                                     ; E776 38                       8
        sbc     #$01                            ; E777 E9 01                    ..
        sta     $07                             ; E779 85 07                    ..
        bcs     LowerFixedEngine_Branch_E77F    ; E77B B0 02                    ..
        dec     $08                             ; E77D C6 08                    ..
LowerFixedEngine_Branch_E77F:
        rts                                     ; E77F 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E780:
        lda     $3F                             ; E780 A5 3F                    .?
LowerFixedEngine_Entry_E782:
        clc                                     ; E782 18                       .
        adc     $07                             ; E783 65 07                    e.
        sta     $07                             ; E785 85 07                    ..
        bcc     LowerFixedEngine_Branch_E78B    ; E787 90 02                    ..
        inc     $08                             ; E789 E6 08                    ..
LowerFixedEngine_Branch_E78B:
        rts                                     ; E78B 60                       `
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_E5EB     ; E78C 20 EB E5                  ..
        jsr     LowerFixedEngine_Entry_E86F     ; E78F 20 6F E8                  o.
        jmp     LowerFixedEngine_Entry_E58A     ; E792 4C 8A E5                 L..
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_E5EB     ; E795 20 EB E5                  ..
        jsr     LowerFixedEngine_Entry_E86F     ; E798 20 6F E8                  o.
        jsr     LowerFixedEngine_Entry_E867     ; E79B 20 67 E8                  g.
        jsr     LowerFixedEngine_Entry_E61A     ; E79E 20 1A E6                  ..
        bcs     $E7A6                           ; E7A1 B0 03                    ..
        jmp     $E802                           ; E7A3 4C 02 E8                 L..
; ----------------------------------------------------------------------------
        lda     #$02                            ; E7A6 A9 02                    ..
        jsr     LowerFixedEngine_Entry_E606     ; E7A8 20 06 E6                  ..
        cmp     #$00                            ; E7AB C9 00                    ..
        beq     $E7EA                           ; E7AD F0 3B                    .;
        cmp     #$01                            ; E7AF C9 01                    ..
        beq     $E7F6                           ; E7B1 F0 43                    .C
        cmp     #$02                            ; E7B3 C9 02                    ..
        beq     $E7DC                           ; E7B5 F0 25                    .%
        jsr     LowerFixedEngine_Entry_E61A     ; E7B7 20 1A E6                  ..
        bcs     $E7BE                           ; E7BA B0 02                    ..
        bcc     $E795                           ; E7BC 90 D7                    ..
        ldx     $5B                             ; E7BE A6 5B                    .[
        beq     $E7D9                           ; E7C0 F0 17                    ..
        dex                                     ; E7C2 CA                       .
        lda     $6E8A,x                         ; E7C3 BD 8A 6E                 ..n
        sta     $56                             ; E7C6 85 56                    .V
        dex                                     ; E7C8 CA                       .
        lda     $6E8A,x                         ; E7C9 BD 8A 6E                 ..n
        sta     $09                             ; E7CC 85 09                    ..
        dex                                     ; E7CE CA                       .
        lda     $6E8A,x                         ; E7CF BD 8A 6E                 ..n
        sta     $08                             ; E7D2 85 08                    ..
        stx     $5B                             ; E7D4 86 5B                    .[
        jmp     $E79E                           ; E7D6 4C 9E E7                 L..
; ----------------------------------------------------------------------------
        jmp     LowerFixedEngine_Entry_E58A     ; E7D9 4C 8A E5                 L..
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_E61A     ; E7DC 20 1A E6                  ..
        bcc     $E7E7                           ; E7DF 90 06                    ..
        jsr     LowerFixedEngine_Entry_E8E1     ; E7E1 20 E1 E8                  ..
        jmp     $E7F6                           ; E7E4 4C F6 E7                 L..
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_E8E1     ; E7E7 20 E1 E8                  ..
        lda     $56                             ; E7EA A5 56                    .V
        clc                                     ; E7EC 18                       .
        adc     #$01                            ; E7ED 69 01                    i.
        and     #$03                            ; E7EF 29 03                    ).
        sta     $56                             ; E7F1 85 56                    .V
        jmp     $E802                           ; E7F3 4C 02 E8                 L..
; ----------------------------------------------------------------------------
        lda     $56                             ; E7F6 A5 56                    .V
        sec                                     ; E7F8 38                       8
        sbc     #$01                            ; E7F9 E9 01                    ..
        and     #$03                            ; E7FB 29 03                    ).
        sta     $56                             ; E7FD 85 56                    .V
        jmp     $E802                           ; E7FF 4C 02 E8                 L..
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_E80B     ; E802 20 0B E8                  ..
        jsr     LowerFixedEngine_Entry_E8AA     ; E805 20 AA E8                  ..
        jmp     $E79E                           ; E808 4C 9E E7                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E80B:
        ldx     $56                             ; E80B A6 56                    .V
        beq     $E817                           ; E80D F0 08                    ..
        dex                                     ; E80F CA                       .
        beq     $E821                           ; E810 F0 0F                    ..
        dex                                     ; E812 CA                       .
        beq     $E82A                           ; E813 F0 15                    ..
        bne     $E833                           ; E815 D0 1C                    ..
        jsr     LowerFixedEngine_Entry_E83C     ; E817 20 3C E8                  <.
        lda     $54                             ; E81A A5 54                    .T
        beq     $E820                           ; E81C F0 02                    ..
        bne     LowerFixedEngine_Entry_E83C     ; E81E D0 1C                    ..
        rts                                     ; E820 60                       `
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_E848     ; E821 20 48 E8                  H.
        lda     $54                             ; E824 A5 54                    .T
        beq     $E820                           ; E826 F0 F8                    ..
        bne     LowerFixedEngine_Entry_E848     ; E828 D0 1E                    ..
        jsr     LowerFixedEngine_Entry_E84F     ; E82A 20 4F E8                  O.
        lda     $54                             ; E82D A5 54                    .T
        beq     $E820                           ; E82F F0 EF                    ..
        bne     LowerFixedEngine_Entry_E84F     ; E831 D0 1C                    ..
        jsr     LowerFixedEngine_Entry_E85B     ; E833 20 5B E8                  [.
        lda     $54                             ; E836 A5 54                    .T
        beq     $E820                           ; E838 F0 E6                    ..
        bne     LowerFixedEngine_Entry_E85B     ; E83A D0 1F                    ..
LowerFixedEngine_Entry_E83C:
        lda     $08                             ; E83C A5 08                    ..
        sec                                     ; E83E 38                       8
        sbc     $3F                             ; E83F E5 3F                    .?
        sta     $08                             ; E841 85 08                    ..
        bcs     $E847                           ; E843 B0 02                    ..
        dec     $09                             ; E845 C6 09                    ..
        rts                                     ; E847 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E848:
        inc     $08                             ; E848 E6 08                    ..
        bne     $E847                           ; E84A D0 FB                    ..
        inc     $09                             ; E84C E6 09                    ..
        rts                                     ; E84E 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E84F:
        lda     $08                             ; E84F A5 08                    ..
        clc                                     ; E851 18                       .
        adc     $3F                             ; E852 65 3F                    e?
        sta     $08                             ; E854 85 08                    ..
        bcc     $E847                           ; E856 90 EF                    ..
        inc     $09                             ; E858 E6 09                    ..
        rts                                     ; E85A 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E85B:
        lda     $08                             ; E85B A5 08                    ..
        sec                                     ; E85D 38                       8
        sbc     #$01                            ; E85E E9 01                    ..
        sta     $08                             ; E860 85 08                    ..
        bcs     $E847                           ; E862 B0 E3                    ..
        dec     $09                             ; E864 C6 09                    ..
        rts                                     ; E866 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E867:
        lda     #$02                            ; E867 A9 02                    ..
        jsr     LowerFixedEngine_Entry_E606     ; E869 20 06 E6                  ..
        sta     $56                             ; E86C 85 56                    .V
        rts                                     ; E86E 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E86F:
        lda     $57                             ; E86F A5 57                    .W
        ldy     #$00                            ; E871 A0 00                    ..
        jsr     LowerFixedEngine_Entry_E88E     ; E873 20 8E E8                  ..
        lda     $54                             ; E876 A5 54                    .T
        beq     $E88D                           ; E878 F0 13                    ..
        iny                                     ; E87A C8                       .
        lda     $58                             ; E87B A5 58                    .X
        jsr     LowerFixedEngine_Entry_E88E     ; E87D 20 8E E8                  ..
        ldy     $3F                             ; E880 A4 3F                    .?
        lda     $59                             ; E882 A5 59                    .Y
        jsr     LowerFixedEngine_Entry_E88E     ; E884 20 8E E8                  ..
        iny                                     ; E887 C8                       .
        lda     $5A                             ; E888 A5 5A                    .Z
        jmp     LowerFixedEngine_Entry_E88E     ; E88A 4C 8E E8                 L..
; ----------------------------------------------------------------------------
        rts                                     ; E88D 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E88E:
        pha                                     ; E88E 48                       H
        lda     $53                             ; E88F A5 53                    .S
        beq     $E8A6                           ; E891 F0 13                    ..
        lda     ($00),y                         ; E893 B1 00                    ..
        and     #$1F                            ; E895 29 1F                    ).
        sta     ($00),y                         ; E897 91 00                    ..
        pla                                     ; E899 68                       h
        pha                                     ; E89A 48                       H
        asl     a                               ; E89B 0A                       .
        asl     a                               ; E89C 0A                       .
        asl     a                               ; E89D 0A                       .
        asl     a                               ; E89E 0A                       .
        asl     a                               ; E89F 0A                       .
        ora     ($00),y                         ; E8A0 11 00                    ..
        sta     ($00),y                         ; E8A2 91 00                    ..
        pla                                     ; E8A4 68                       h
        rts                                     ; E8A5 60                       `
; ----------------------------------------------------------------------------
        pla                                     ; E8A6 68                       h
        sta     ($00),y                         ; E8A7 91 00                    ..
        rts                                     ; E8A9 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E8AA:
        lda     $57                             ; E8AA A5 57                    .W
        ldy     #$00                            ; E8AC A0 00                    ..
        jsr     LowerFixedEngine_Entry_E8C5     ; E8AE 20 C5 E8                  ..
        lda     $54                             ; E8B1 A5 54                    .T
        beq     $E88D                           ; E8B3 F0 D8                    ..
        iny                                     ; E8B5 C8                       .
        lda     $58                             ; E8B6 A5 58                    .X
        jsr     LowerFixedEngine_Entry_E8C5     ; E8B8 20 C5 E8                  ..
        ldy     $3F                             ; E8BB A4 3F                    .?
        lda     $59                             ; E8BD A5 59                    .Y
        jsr     LowerFixedEngine_Entry_E8C5     ; E8BF 20 C5 E8                  ..
        iny                                     ; E8C2 C8                       .
        lda     $5A                             ; E8C3 A5 5A                    .Z
LowerFixedEngine_Entry_E8C5:
        pha                                     ; E8C5 48                       H
        lda     $53                             ; E8C6 A5 53                    .S
        beq     $E8DD                           ; E8C8 F0 13                    ..
        lda     ($08),y                         ; E8CA B1 08                    ..
        and     #$1F                            ; E8CC 29 1F                    ).
        sta     ($08),y                         ; E8CE 91 08                    ..
        pla                                     ; E8D0 68                       h
        pha                                     ; E8D1 48                       H
        asl     a                               ; E8D2 0A                       .
        asl     a                               ; E8D3 0A                       .
        asl     a                               ; E8D4 0A                       .
        asl     a                               ; E8D5 0A                       .
        asl     a                               ; E8D6 0A                       .
        ora     ($08),y                         ; E8D7 11 08                    ..
        sta     ($08),y                         ; E8D9 91 08                    ..
        pla                                     ; E8DB 68                       h
        rts                                     ; E8DC 60                       `
; ----------------------------------------------------------------------------
        pla                                     ; E8DD 68                       h
        sta     ($08),y                         ; E8DE 91 08                    ..
        rts                                     ; E8E0 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_E8E1:
        ldx     $5B                             ; E8E1 A6 5B                    .[
        lda     $08                             ; E8E3 A5 08                    ..
        sta     $6E8A,x                         ; E8E5 9D 8A 6E                 ..n
        inx                                     ; E8E8 E8                       .
        lda     $09                             ; E8E9 A5 09                    ..
        sta     $6E8A,x                         ; E8EB 9D 8A 6E                 ..n
        inx                                     ; E8EE E8                       .
        lda     $56                             ; E8EF A5 56                    .V
        sta     $6E8A,x                         ; E8F1 9D 8A 6E                 ..n
        inx                                     ; E8F4 E8                       .
        stx     $5B                             ; E8F5 86 5B                    .[
        rts                                     ; E8F7 60                       `
; ----------------------------------------------------------------------------
        db   $A5,$3F,$18,$65,$49,$85,$49,$90 ; E8F8 A5 3F 18 65 49 85 49 90  .?.eI.I.
        db   $02,$E6,$4A,$60,$A5,$49,$38,$E5 ; E900 02 E6 4A 60 A5 49 38 E5  ..J`.I8.
        db   $3F,$85,$49,$B0,$F6,$C6,$4A,$60 ; E908 3F 85 49 B0 F6 C6 4A 60  ?.I...J`
        db   $48,$20,$1E,$E9,$29,$E0,$91,$02 ; E910 48 20 1E E9 29 E0 91 02  H ..)...
        db   $68,$11,$02,$91,$02,$60,$8A,$48 ; E918 68 11 02 91 02 60 8A 48  h....`.H
        db   $A5,$3F,$85,$02,$A9,$00,$85,$03 ; E920 A5 3F 85 02 A9 00 85 03  .?......
        db   $98,$A2,$02,$20,$27,$C8,$A9,$00 ; E928 98 A2 02 20 27 C8 A9 00  ... '...
        db   $A0,$78,$A2,$02,$20,$1D,$C8,$68 ; E930 A0 78 A2 02 20 1D C8 68  .x.. ..h
; ----------------------------------------------------------------------------
        ldy     #$00                            ; E938 A0 00                    ..
        ldx     #$02                            ; E93A A2 02                    ..
        jsr     LowerFixedEngine_Entry_C81D     ; E93C 20 1D C8                  ..
        ldy     #$00                            ; E93F A0 00                    ..
        lda     ($02),y                         ; E941 B1 02                    ..
        rts                                     ; E943 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_E944:
        lda     $0507                           ; E944 AD 07 05                 ...
        pha                                     ; E947 48                       H
        and     #$0F                            ; E948 29 0F                    ).
        sta     $0507                           ; E94A 8D 07 05                 ...
        brk                                     ; E94D 00                       .
        db   $05,$87                         ; E94E 05 87                    ..
; ----------------------------------------------------------------------------
        sta     $28                             ; E950 85 28                    .(
        jsr     Bank0F_GetMapDataBank           ; E952 20 AD E9                  ..
        txa                                     ; E955 8A                       .
        jsr     LowerFixedEngine_Entry_FF91     ; E956 20 91 FF                  ..
        ldy     #$00                            ; E959 A0 00                    ..
        sty     $01                             ; E95B 84 01                    ..
        lda     ($49),y                         ; E95D B1 49                    .I
        sta     $3F                             ; E95F 85 3F                    .?
        sta     $00                             ; E961 85 00                    ..
        jsr     LowerFixedEngine_Entry_E642     ; E963 20 42 E6                  B.
        lda     ($49),y                         ; E966 B1 49                    .I
        sta     $40                             ; E968 85 40                    .@
        ldx     #$00                            ; E96A A2 00                    ..
        jsr     LowerFixedEngine_Entry_C827     ; E96C 20 27 C8                  '.
        lda     $00                             ; E96F A5 00                    ..
        sec                                     ; E971 38                       8
        sbc     #$01                            ; E972 E9 01                    ..
        sta     $00                             ; E974 85 00                    ..
        lda     $01                             ; E976 A5 01                    ..
        sbc     #$00                            ; E978 E9 00                    ..
        sta     $01                             ; E97A 85 01                    ..
        ldx     #$10                            ; E97C A2 10                    ..
        asl     $00                             ; E97E 06 00                    ..
        rol     $01                             ; E980 26 01                    &.
        bcs     $E988                           ; E982 B0 04                    ..
        dex                                     ; E984 CA                       .
        jmp     $E97E                           ; E985 4C 7E E9                 L~.
; ----------------------------------------------------------------------------
        stx     $55                             ; E988 86 55                    .U
        jsr     LowerFixedEngine_Entry_E642     ; E98A 20 42 E6                  B.
        lda     ($49),y                         ; E98D B1 49                    .I
        tax                                     ; E98F AA                       .
        and     #$C0                            ; E990 29 C0                    ).
        clc                                     ; E992 18                       .
        rol     a                               ; E993 2A                       *
        rol     a                               ; E994 2A                       *
        rol     a                               ; E995 2A                       *
        adc     #$02                            ; E996 69 02                    i.
        sta     $66                             ; E998 85 66                    .f
        txa                                     ; E99A 8A                       .
        and     #$1F                            ; E99B 29 1F                    ).
        sta     $0520                           ; E99D 8D 20 05                 . .
        jsr     LowerFixedEngine_Entry_E642     ; E9A0 20 42 E6                  B.
        lda     $0507                           ; E9A3 AD 07 05                 ...
        sta     $0596                           ; E9A6 8D 96 05                 ...
        pla                                     ; E9A9 68                       h
        jmp     LowerFixedEngine_Entry_FF91     ; E9AA 4C 91 FF                 L..
; ----------------------------------------------------------------------------
Bank0F_GetMapDataBank:
        ldx     CurrentMapNumber                ; E9AD A6 63                    .c
        ldy     CurrentSubmapNumber             ; E9AF A4 64                    .d
        cpx     #$2D                            ; E9B1 E0 2D                    .-
        bcc     LowerFixedEngine_Branch_E9BB    ; E9B3 90 06                    ..
        bne     LowerFixedEngine_Branch_E9BE    ; E9B5 D0 07                    ..
        cpy     #$08                            ; E9B7 C0 08                    ..
        bcs     LowerFixedEngine_Branch_E9BE    ; E9B9 B0 03                    ..
LowerFixedEngine_Branch_E9BB:
        ldx     #$09                            ; E9BB A2 09                    ..
        rts                                     ; E9BD 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_E9BE:
        cpx     #$45                            ; E9BE E0 45                    .E
        bcc     LowerFixedEngine_Branch_E9C8    ; E9C0 90 06                    ..
        bne     LowerFixedEngine_Branch_E9CB    ; E9C2 D0 07                    ..
        cpy     #$05                            ; E9C4 C0 05                    ..
        bcs     LowerFixedEngine_Branch_E9CB    ; E9C6 B0 03                    ..
LowerFixedEngine_Branch_E9C8:
        ldx     #$0A                            ; E9C8 A2 0A                    ..
        rts                                     ; E9CA 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_E9CB:
        ldx     #$0B                            ; E9CB A2 0B                    ..
        rts                                     ; E9CD 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_E9CE:
        lda     $3E                             ; E9CE A5 3E                    .>
        bne     $E9D5                           ; E9D0 D0 03                    ..
        lda     #$FF                            ; E9D2 A9 FF                    ..
        rts                                     ; E9D4 60                       `
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_EA03     ; E9D5 20 03 EA                  ..
        bit     $6291                           ; E9D8 2C 91 62                 ,.b
        bvc     $E9E0                           ; E9DB 50 03                    P.
        brk                                     ; E9DD 00                       .
        db   $3F,$EF                         ; E9DE 3F EF                    ?.
; ----------------------------------------------------------------------------
        lda     $3D                             ; E9E0 A5 3D                    .=
        and     #$01                            ; E9E2 29 01                    ).
        bne     $E9FA                           ; E9E4 D0 14                    ..
        lda     $059E                           ; E9E6 AD 9E 05                 ...
        cmp     #$31                            ; E9E9 C9 31                    .1
        bne     $E9FA                           ; E9EB D0 0D                    ..
        ldy     #$01                            ; E9ED A0 01                    ..
        lda     $3E                             ; E9EF A5 3E                    .>
        and     #$07                            ; E9F1 29 07                    ).
        bne     LowerFixedEngine_Branch_E9F7    ; E9F3 D0 02                    ..
        ldy     #$04                            ; E9F5 A0 04                    ..
LowerFixedEngine_Branch_E9F7:
        sty     $052F                           ; E9F7 8C 2F 05                 ./.
        lda     $3E                             ; E9FA A5 3E                    .>
        sec                                     ; E9FC 38                       8
        sbc     $058E                           ; E9FD ED 8E 05                 ...
        sta     $3E                             ; EA00 85 3E                    .>
        rts                                     ; EA02 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_EA03:
        jsr     LowerFixedEngine_Entry_EA5A     ; EA03 20 5A EA                  Z.
        ldx     $3D                             ; EA06 A6 3D                    .=
        beq     $EA32                           ; EA08 F0 28                    .(
        dex                                     ; EA0A CA                       .
        beq     $EA25                           ; EA0B F0 18                    ..
        dex                                     ; EA0D CA                       .
        beq     $EA46                           ; EA0E F0 36                    .6
        lda     $0508                           ; EA10 AD 08 05                 ...
        sec                                     ; EA13 38                       8
        sbc     $058E                           ; EA14 ED 8E 05                 ...
        sta     $0508                           ; EA17 8D 08 05                 ...
        bcs     $EA24                           ; EA1A B0 08                    ..
        lda     $0505                           ; EA1C AD 05 05                 ...
        eor     #$01                            ; EA1F 49 01                    I.
        sta     $0505                           ; EA21 8D 05 05                 ...
        rts                                     ; EA24 60                       `
; ----------------------------------------------------------------------------
        lda     $0508                           ; EA25 AD 08 05                 ...
        clc                                     ; EA28 18                       .
        adc     $058E                           ; EA29 6D 8E 05                 m..
        sta     $0508                           ; EA2C 8D 08 05                 ...
        bcs     $EA1C                           ; EA2F B0 EB                    ..
        rts                                     ; EA31 60                       `
; ----------------------------------------------------------------------------
        lda     $0509                           ; EA32 AD 09 05                 ...
        sec                                     ; EA35 38                       8
        sbc     $058E                           ; EA36 ED 8E 05                 ...
        sta     $0509                           ; EA39 8D 09 05                 ...
        cmp     #$F0                            ; EA3C C9 F0                    ..
        bcc     $EA59                           ; EA3E 90 19                    ..
        sbc     #$10                            ; EA40 E9 10                    ..
        sta     $0509                           ; EA42 8D 09 05                 ...
        rts                                     ; EA45 60                       `
; ----------------------------------------------------------------------------
        lda     $0509                           ; EA46 AD 09 05                 ...
        clc                                     ; EA49 18                       .
        adc     $058E                           ; EA4A 6D 8E 05                 m..
        sta     $0509                           ; EA4D 8D 09 05                 ...
        cmp     #$F0                            ; EA50 C9 F0                    ..
        bcc     $EA59                           ; EA52 90 05                    ..
        adc     #$0F                            ; EA54 69 0F                    i.
        sta     $0509                           ; EA56 8D 09 05                 ...
        rts                                     ; EA59 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_EA5A:
        lda     $3E                             ; EA5A A5 3E                    .>
        and     #$01                            ; EA5C 29 01                    ).
        bne     $EA76                           ; EA5E D0 16                    ..
        lda     $3E                             ; EA60 A5 3E                    .>
        cmp     #$0A                            ; EA62 C9 0A                    ..
        bcs     $EAAB                           ; EA64 B0 45                    .E
        cmp     #$08                            ; EA66 C9 08                    ..
        beq     $EA87                           ; EA68 F0 1D                    ..
        cmp     #$06                            ; EA6A C9 06                    ..
        beq     $EA93                           ; EA6C F0 25                    .%
        cmp     #$04                            ; EA6E C9 04                    ..
        beq     $EA7B                           ; EA70 F0 09                    ..
        cmp     #$02                            ; EA72 C9 02                    ..
        beq     $EA77                           ; EA74 F0 01                    ..
        rts                                     ; EA76 60                       `
; ----------------------------------------------------------------------------
        brk                                     ; EA77 00                       .
        db   $13,$EF                         ; EA78 13 EF                    ..
; ----------------------------------------------------------------------------
        rts                                     ; EA7A 60                       `
; ----------------------------------------------------------------------------
        lda     $3D                             ; EA7B A5 3D                    .=
        and     #$01                            ; EA7D 29 01                    ).
        beq     $EA84                           ; EA7F F0 03                    ..
        jmp     $EF9C                           ; EA81 4C 9C EF                 L..
; ----------------------------------------------------------------------------
        jmp     $EF78                           ; EA84 4C 78 EF                 Lx.
; ----------------------------------------------------------------------------
        lda     $3D                             ; EA87 A5 3D                    .=
        and     #$01                            ; EA89 29 01                    ).
        beq     $EA9F                           ; EA8B F0 12                    ..
        jsr     LowerFixedEngine_Entry_EE05     ; EA8D 20 05 EE                  ..
        jmp     $EEED                           ; EA90 4C ED EE                 L..
; ----------------------------------------------------------------------------
        lda     $3D                             ; EA93 A5 3D                    .=
        and     #$01                            ; EA95 29 01                    ).
        beq     $EA9C                           ; EA97 F0 03                    ..
        jmp     $EEF3                           ; EA99 4C F3 EE                 L..
; ----------------------------------------------------------------------------
        jmp     $EE42                           ; EA9C 4C 42 EE                 LB.
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_EDC7     ; EA9F 20 C7 ED                  ..
        jmp     $EE3C                           ; EAA2 4C 3C EE                 L<.
; ----------------------------------------------------------------------------
        jmp     $EC4B                           ; EAA5 4C 4B EC                 LK.
; ----------------------------------------------------------------------------
        jmp     LowerFixedEngine_Branch_EB46    ; EAA8 4C 46 EB                 LF.
; ----------------------------------------------------------------------------
        ldx     $3D                             ; EAAB A6 3D                    .=
        beq     $EAB3                           ; EAAD F0 04                    ..
        cpx     #$02                            ; EAAF E0 02                    ..
        bne     $EAA5                           ; EAB1 D0 F2                    ..
        bit     $41                             ; EAB3 24 41                    $A
        bpl     $EAA8                           ; EAB5 10 F1                    ..
        cmp     #$0E                            ; EAB7 C9 0E                    ..
        beq     $EA76                           ; EAB9 F0 BB                    ..
        cmp     #$0A                            ; EABB C9 0A                    ..
        beq     $EA76                           ; EABD F0 B7                    ..
        and     #$10                            ; EABF 29 10                    ).
        lsr     a                               ; EAC1 4A                       J
        beq     $EAC6                           ; EAC2 F0 02                    ..
        adc     #$01                            ; EAC4 69 01                    i.
        sta     $02                             ; EAC6 85 02                    ..
        sec                                     ; EAC8 38                       8
        sbc     #$09                            ; EAC9 E9 09                    ..
        clc                                     ; EACB 18                       .
        adc     PlayerLocalX                    ; EACC 65 44                    eD
        sta     $03                             ; EACE 85 03                    ..
        lda     #$F9                            ; EAD0 A9 F9                    ..
        cpx     #$00                            ; EAD2 E0 00                    ..
        beq     $EAD8                           ; EAD4 F0 02                    ..
        lda     #$07                            ; EAD6 A9 07                    ..
        clc                                     ; EAD8 18                       .
        adc     PlayerLocalY                    ; EAD9 65 45                    eE
        sta     $04                             ; EADB 85 04                    ..
        lda     #$08                            ; EADD A9 08                    ..
        sta     $05                             ; EADF 85 05                    ..
        ldx     $03                             ; EAE1 A6 03                    ..
        ldy     $04                             ; EAE3 A4 04                    ..
        jsr     LowerFixedEngine_Entry_D3E6     ; EAE5 20 E6 D3                  ..
        jsr     LowerFixedEngine_Entry_D4F3     ; EAE8 20 F3 D4                  ..
        jsr     LowerFixedEngine_Entry_EB25     ; EAEB 20 25 EB                  %.
        jsr     LowerFixedEngine_Entry_D426     ; EAEE 20 26 D4                  &.
        jsr     LowerFixedEngine_Entry_EB20     ; EAF1 20 20 EB                   .
        ldx     $03                             ; EAF4 A6 03                    ..
        ldy     $04                             ; EAF6 A4 04                    ..
        lda     $00                             ; EAF8 A5 00                    ..
        and     $01                             ; EAFA 25 01                    %.
        cmp     #$FF                            ; EAFC C9 FF                    ..
        bne     $EB0F                           ; EAFE D0 0F                    ..
        jsr     LowerFixedEngine_Entry_D3E6     ; EB00 20 E6 D3                  ..
        jsr     LowerFixedEngine_Entry_D4F3     ; EB03 20 F3 D4                  ..
        jsr     LowerFixedEngine_Entry_EB25     ; EB06 20 25 EB                  %.
        jsr     LowerFixedEngine_Entry_D426     ; EB09 20 26 D4                  &.
        jmp     $EB18                           ; EB0C 4C 18 EB                 L..
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_D41A     ; EB0F 20 1A D4                  ..
        jsr     LowerFixedEngine_Entry_D4F3     ; EB12 20 F3 D4                  ..
        jsr     LowerFixedEngine_Entry_EB25     ; EB15 20 25 EB                  %.
        jsr     LowerFixedEngine_Entry_EB20     ; EB18 20 20 EB                   .
        dec     $05                             ; EB1B C6 05                    ..
        bne     $EAF4                           ; EB1D D0 D5                    ..
        rts                                     ; EB1F 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_EB20:
        inc     $02                             ; EB20 E6 02                    ..
        inc     $03                             ; EB22 E6 03                    ..
        rts                                     ; EB24 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_EB25:
        ldy     $02                             ; EB25 A4 02                    ..
        sta     $6F0E,y                         ; EB27 99 0E 6F                 ..o
        lda     $7600,x                         ; EB2A BD 00 76                 ..v
        sta     $6EC6,y                         ; EB2D 99 C6 6E                 ..n
        lda     $7601,x                         ; EB30 BD 01 76                 ..v
        sta     $6ED8,y                         ; EB33 99 D8 6E                 ..n
        lda     $7602,x                         ; EB36 BD 02 76                 ..v
        sta     $6EEA,y                         ; EB39 99 EA 6E                 ..n
        lda     $7603,x                         ; EB3C BD 03 76                 ..v
        sta     $6EFC,y                         ; EB3F 99 FC 6E                 ..n
        rts                                     ; EB42 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_EB43:
        jmp     LowerFixedEngine_Branch_EBCA    ; EB43 4C CA EB                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_EB46:
        cmp     #$0A                            ; EB46 C9 0A                    ..
        beq     LowerFixedEngine_Branch_EB43    ; EB48 F0 F9                    ..
        lsr     a                               ; EB4A 4A                       J
        tay                                     ; EB4B A8                       .
        dey                                     ; EB4C 88                       .
        lda     #$F8                            ; EB4D A9 F8                    ..
        cpx     #$00                            ; EB4F E0 00                    ..
        beq     LowerFixedEngine_Branch_EB55    ; EB51 F0 02                    ..
        lda     #$06                            ; EB53 A9 06                    ..
LowerFixedEngine_Branch_EB55:
        clc                                     ; EB55 18                       .
        adc     PlayerWorldY                    ; EB56 65 43                    eC
        sta     $55                             ; EB58 85 55                    .U
        tya                                     ; EB5A 98                       .
        eor     #$07                            ; EB5B 49 07                    I.
        clc                                     ; EB5D 18                       .
        adc     $55                             ; EB5E 65 55                    eU
        sta     $55                             ; EB60 85 55                    .U
        lda     PlayerWorldX                    ; EB62 A5 42                    .B
        sec                                     ; EB64 38                       8
        sbc     #$09                            ; EB65 E9 09                    ..
        sta     $54                             ; EB67 85 54                    .T
        tya                                     ; EB69 98                       .
        and     #$01                            ; EB6A 29 01                    ).
        lsr     a                               ; EB6C 4A                       J
        lda     $54                             ; EB6D A5 54                    .T
        sbc     #$00                            ; EB6F E9 00                    ..
        sta     $54                             ; EB71 85 54                    .T
        lda     $0507                           ; EB73 AD 07 05                 ...
        pha                                     ; EB76 48                       H
        and     #$0F                            ; EB77 29 0F                    ).
        sta     $0507                           ; EB79 8D 07 05                 ...
        lda     #$0B                            ; EB7C A9 0B                    ..
        jsr     LowerFixedEngine_Entry_FF91     ; EB7E 20 91 FF                  ..
        tya                                     ; EB81 98                       .
        and     #$03                            ; EB82 29 03                    ).
        tay                                     ; EB84 A8                       .
        lda     $EB93,y                         ; EB85 B9 93 EB                 ...
        tax                                     ; EB88 AA                       .
        lda     $EB97,y                         ; EB89 B9 97 EB                 ...
        jsr     LowerFixedEngine_Entry_EB9B     ; EB8C 20 9B EB                  ..
        pla                                     ; EB8F 68                       h
        jmp     LowerFixedEngine_Entry_FF91     ; EB90 4C 91 FF                 L..
; ----------------------------------------------------------------------------
        db   $00,$29,$14,$01                 ; EB93 00 29 14 01              .)..
        db   $00,$06,$07,$06                 ; EB97 00 06 07 06              ....
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_EB9B:
        sta     $56                             ; EB9B 85 56                    .V
        stx     $53                             ; EB9D 86 53                    .S
LowerFixedEngine_Branch_EB9F:
        jsr     LowerFixedEngine_Entry_EBAD     ; EB9F 20 AD EB                  ..
        inc     $54                             ; EBA2 E6 54                    .T
        inc     $54                             ; EBA4 E6 54                    .T
        inc     $54                             ; EBA6 E6 54                    .T
        dec     $56                             ; EBA8 C6 56                    .V
        bne     LowerFixedEngine_Branch_EB9F    ; EBAA D0 F3                    ..
        rts                                     ; EBAC 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_EBAD:
        ldx     $54                             ; EBAD A6 54                    .T
        ldy     $55                             ; EBAF A4 55                    .U
        jsr     LowerFixedEngine_Entry_D28C     ; EBB1 20 8C D2                  ..
        stx     $51                             ; EBB4 86 51                    .Q
        ldx     $53                             ; EBB6 A6 53                    .S
        sta     $6E8A,x                         ; EBB8 9D 8A 6E                 ..n
        inx                                     ; EBBB E8                       .
        lda     $51                             ; EBBC A5 51                    .Q
        sta     $6E8A,x                         ; EBBE 9D 8A 6E                 ..n
        inx                                     ; EBC1 E8                       .
        tya                                     ; EBC2 98                       .
        sta     $6E8A,x                         ; EBC3 9D 8A 6E                 ..n
        inx                                     ; EBC6 E8                       .
        stx     $53                             ; EBC7 86 53                    .S
        rts                                     ; EBC9 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_EBCA:
        ldx     #$15                            ; EBCA A2 15                    ..
LowerFixedEngine_Branch_EBCC:
        lda     $6E8A,x                         ; EBCC BD 8A 6E                 ..n
        bne     LowerFixedEngine_Branch_EBD7    ; EBCF D0 06                    ..
        jsr     LowerFixedEngine_Entry_EC1A     ; EBD1 20 1A EC                  ..
        jmp     LowerFixedEngine_Branch_EBF1    ; EBD4 4C F1 EB                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_EBD7:
        cmp     #$01                            ; EBD7 C9 01                    ..
        bne     LowerFixedEngine_Branch_EBF1    ; EBD9 D0 16                    ..
        ldy     CurrentTilesetCandidate         ; EBDB A4 65                    .e
        cpy     #$03                            ; EBDD C0 03                    ..
        bne     LowerFixedEngine_Branch_EBF1    ; EBDF D0 10                    ..
        jsr     LowerFixedEngine_Entry_C891     ; EBE1 20 91 C8                  ..
        cmp     #$FA                            ; EBE4 C9 FA                    ..
        lda     #$18                            ; EBE6 A9 18                    ..
        bcc     LowerFixedEngine_Branch_EBF1    ; EBE8 90 07                    ..
        lda     #$19                            ; EBEA A9 19                    ..
        jmp     LowerFixedEngine_Branch_EBF1    ; EBEC 4C F1 EB                 L..
; ----------------------------------------------------------------------------
        db   $A9,$20                         ; EBEF A9 20                    .
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_EBF1:
        tay                                     ; EBF1 A8                       .
        lda     $76C0,y                         ; EBF2 B9 C0 76                 ..v
        sta     $6EF9,x                         ; EBF5 9D F9 6E                 ..n
        tya                                     ; EBF8 98                       .
        asl     a                               ; EBF9 0A                       .
        asl     a                               ; EBFA 0A                       .
        tay                                     ; EBFB A8                       .
        lda     $7600,y                         ; EBFC B9 00 76                 ..v
        sta     $6EB1,x                         ; EBFF 9D B1 6E                 ..n
        lda     $7601,y                         ; EC02 B9 01 76                 ..v
        sta     $6EC3,x                         ; EC05 9D C3 6E                 ..n
        lda     $7602,y                         ; EC08 B9 02 76                 ..v
        sta     $6ED5,x                         ; EC0B 9D D5 6E                 ..n
        lda     $7603,y                         ; EC0E B9 03 76                 ..v
        sta     $6EE7,x                         ; EC11 9D E7 6E                 ..n
        inx                                     ; EC14 E8                       .
        cpx     #$27                            ; EC15 E0 27                    .'
        bne     LowerFixedEngine_Branch_EBCC    ; EC17 D0 B3                    ..
        rts                                     ; EC19 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_EC1A:
        sta     $53                             ; EC1A 85 53                    .S
        lda     $6E89,x                         ; EC1C BD 89 6E                 ..n
        jsr     LowerFixedEngine_Entry_EC3A     ; EC1F 20 3A EC                  :.
        lda     $6E9E,x                         ; EC22 BD 9E 6E                 ..n
        jsr     LowerFixedEngine_Entry_EC3A     ; EC25 20 3A EC                  :.
        lda     $6E8B,x                         ; EC28 BD 8B 6E                 ..n
        jsr     LowerFixedEngine_Entry_EC3A     ; EC2B 20 3A EC                  :.
        lda     $6E76,x                         ; EC2E BD 76 6E                 .vn
        jsr     LowerFixedEngine_Entry_EC3A     ; EC31 20 3A EC                  :.
        lda     $53                             ; EC34 A5 53                    .S
        clc                                     ; EC36 18                       .
        adc     #$20                            ; EC37 69 20                    i
        rts                                     ; EC39 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_EC3A:
        beq     LowerFixedEngine_Branch_EC48    ; EC3A F0 0C                    ..
        cmp     #$16                            ; EC3C C9 16                    ..
        beq     LowerFixedEngine_Branch_EC48    ; EC3E F0 08                    ..
        cmp     #$0A                            ; EC40 C9 0A                    ..
        beq     LowerFixedEngine_Branch_EC48    ; EC42 F0 04                    ..
        sec                                     ; EC44 38                       8
        rol     $53                             ; EC45 26 53                    &S
        rts                                     ; EC47 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_EC48:
        asl     $53                             ; EC48 06 53                    .S
        rts                                     ; EC4A 60                       `
; ----------------------------------------------------------------------------
        bit     $41                             ; EC4B 24 41                    $A
        bpl     $ECBC                           ; EC4D 10 6D                    .m
        cmp     #$0E                            ; EC4F C9 0E                    ..
        beq     $EC4A                           ; EC51 F0 F7                    ..
        cmp     #$0A                            ; EC53 C9 0A                    ..
        beq     $EC4A                           ; EC55 F0 F3                    ..
        and     #$10                            ; EC57 29 10                    ).
        lsr     a                               ; EC59 4A                       J
        sta     $02                             ; EC5A 85 02                    ..
        sec                                     ; EC5C 38                       8
        sbc     #$07                            ; EC5D E9 07                    ..
        clc                                     ; EC5F 18                       .
        adc     PlayerLocalY                    ; EC60 65 45                    eE
        sta     $04                             ; EC62 85 04                    ..
        lda     #$F7                            ; EC64 A9 F7                    ..
        cpx     #$03                            ; EC66 E0 03                    ..
        beq     $EC6C                           ; EC68 F0 02                    ..
        lda     #$08                            ; EC6A A9 08                    ..
        clc                                     ; EC6C 18                       .
        adc     PlayerLocalX                    ; EC6D 65 44                    eD
        sta     $03                             ; EC6F 85 03                    ..
        lda     #$07                            ; EC71 A9 07                    ..
        sta     $05                             ; EC73 85 05                    ..
        ldx     $03                             ; EC75 A6 03                    ..
        ldy     $04                             ; EC77 A4 04                    ..
        jsr     LowerFixedEngine_Entry_D3E6     ; EC79 20 E6 D3                  ..
        jsr     LowerFixedEngine_Entry_D4F3     ; EC7C 20 F3 D4                  ..
        jsr     LowerFixedEngine_Entry_EB25     ; EC7F 20 25 EB                  %.
        jsr     LowerFixedEngine_Entry_D443     ; EC82 20 43 D4                  C.
        jsr     LowerFixedEngine_Entry_ECB4     ; EC85 20 B4 EC                  ..
        ldx     $03                             ; EC88 A6 03                    ..
        ldy     $04                             ; EC8A A4 04                    ..
        lda     $00                             ; EC8C A5 00                    ..
        and     $01                             ; EC8E 25 01                    %.
        cmp     #$FF                            ; EC90 C9 FF                    ..
        bne     $ECA3                           ; EC92 D0 0F                    ..
        jsr     LowerFixedEngine_Entry_D3E6     ; EC94 20 E6 D3                  ..
        jsr     LowerFixedEngine_Entry_D4F3     ; EC97 20 F3 D4                  ..
        jsr     LowerFixedEngine_Entry_EB25     ; EC9A 20 25 EB                  %.
        jsr     LowerFixedEngine_Entry_D443     ; EC9D 20 43 D4                  C.
        jmp     $ECAC                           ; ECA0 4C AC EC                 L..
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_D437     ; ECA3 20 37 D4                  7.
        jsr     LowerFixedEngine_Entry_D4F3     ; ECA6 20 F3 D4                  ..
        jsr     LowerFixedEngine_Entry_EB25     ; ECA9 20 25 EB                  %.
        jsr     LowerFixedEngine_Entry_ECB4     ; ECAC 20 B4 EC                  ..
        dec     $05                             ; ECAF C6 05                    ..
        bne     $EC88                           ; ECB1 D0 D5                    ..
        rts                                     ; ECB3 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_ECB4:
        inc     $02                             ; ECB4 E6 02                    ..
        inc     $04                             ; ECB6 E6 04                    ..
        rts                                     ; ECB8 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_ECB9:
        jmp     LowerFixedEngine_Branch_ED49    ; ECB9 4C 49 ED                 LI.
; ----------------------------------------------------------------------------
        cmp     #$0A                            ; ECBC C9 0A                    ..
        beq     LowerFixedEngine_Branch_ECB9    ; ECBE F0 F9                    ..
        lsr     a                               ; ECC0 4A                       J
        tay                                     ; ECC1 A8                       .
        dey                                     ; ECC2 88                       .
        tya                                     ; ECC3 98                       .
        eor     #$07                            ; ECC4 49 07                    I.
        sta     $55                             ; ECC6 85 55                    .U
        asl     a                               ; ECC8 0A                       .
        asl     a                               ; ECC9 0A                       .
        clc                                     ; ECCA 18                       .
        adc     $55                             ; ECCB 65 55                    eU
        sta     $55                             ; ECCD 85 55                    .U
        lda     PlayerWorldY                    ; ECCF A5 43                    .C
        sec                                     ; ECD1 38                       8
        sbc     #$07                            ; ECD2 E9 07                    ..
        clc                                     ; ECD4 18                       .
        adc     $55                             ; ECD5 65 55                    eU
        sta     $55                             ; ECD7 85 55                    .U
        lda     #$F6                            ; ECD9 A9 F6                    ..
        cpx     #$03                            ; ECDB E0 03                    ..
        beq     LowerFixedEngine_Branch_ECE1    ; ECDD F0 02                    ..
        lda     #$07                            ; ECDF A9 07                    ..
LowerFixedEngine_Branch_ECE1:
        clc                                     ; ECE1 18                       .
        adc     PlayerWorldX                    ; ECE2 65 42                    eB
        sta     $54                             ; ECE4 85 54                    .T
        lda     $0507                           ; ECE6 AD 07 05                 ...
        pha                                     ; ECE9 48                       H
        and     #$0F                            ; ECEA 29 0F                    ).
        sta     $0507                           ; ECEC 8D 07 05                 ...
        lda     #$0B                            ; ECEF A9 0B                    ..
        jsr     LowerFixedEngine_Entry_FF91     ; ECF1 20 91 FF                  ..
        cpy     #$07                            ; ECF4 C0 07                    ..
        bne     LowerFixedEngine_Branch_ED01    ; ECF6 D0 09                    ..
        dec     $55                             ; ECF8 C6 55                    .U
        inc     $54                             ; ECFA E6 54                    .T
        jsr     LowerFixedEngine_Entry_ED23     ; ECFC 20 23 ED                  #.
        ldy     #$07                            ; ECFF A0 07                    ..
LowerFixedEngine_Branch_ED01:
        tya                                     ; ED01 98                       .
        and     #$03                            ; ED02 29 03                    ).
        tax                                     ; ED04 AA                       .
        lda     $ED1F,x                         ; ED05 BD 1F ED                 ...
        sta     $53                             ; ED08 85 53                    .S
        lda     #$05                            ; ED0A A9 05                    ..
        sta     $56                             ; ED0C 85 56                    .V
        tya                                     ; ED0E 98                       .
        pha                                     ; ED0F 48                       H
        jsr     LowerFixedEngine_Entry_ED32     ; ED10 20 32 ED                  2.
        pla                                     ; ED13 68                       h
        cmp     #$05                            ; ED14 C9 05                    ..
        bne     LowerFixedEngine_Branch_ED1B    ; ED16 D0 03                    ..
        jsr     LowerFixedEngine_Entry_ED3E     ; ED18 20 3E ED                  >.
LowerFixedEngine_Branch_ED1B:
        pla                                     ; ED1B 68                       h
        jmp     LowerFixedEngine_Entry_FF91     ; ED1C 4C 91 FF                 L..
; ----------------------------------------------------------------------------
        db   $00,$21,$12,$03                 ; ED1F 00 21 12 03              .!..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_ED23:
        ldx     $54                             ; ED23 A6 54                    .T
        ldy     $55                             ; ED25 A4 55                    .U
        jsr     LowerFixedEngine_Entry_D266     ; ED27 20 66 D2                  f.
        sta     $6E8B                           ; ED2A 8D 8B 6E                 ..n
        dec     $54                             ; ED2D C6 54                    .T
        inc     $55                             ; ED2F E6 55                    .U
        rts                                     ; ED31 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_ED32:
        jsr     LowerFixedEngine_Entry_EBAD     ; ED32 20 AD EB                  ..
        inc     $55                             ; ED35 E6 55                    .U
        dec     $56                             ; ED37 C6 56                    .V
        bne     LowerFixedEngine_Entry_ED32     ; ED39 D0 F7                    ..
        inc     $54                             ; ED3B E6 54                    .T
        rts                                     ; ED3D 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_ED3E:
        ldx     $54                             ; ED3E A6 54                    .T
        ldy     $55                             ; ED40 A4 55                    .U
        jsr     LowerFixedEngine_Entry_D266     ; ED42 20 66 D2                  f.
        sta     $6EBB                           ; ED45 8D BB 6E                 ..n
        rts                                     ; ED48 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_ED49:
        lda     #$00                            ; ED49 A9 00                    ..
        sta     $51                             ; ED4B 85 51                    .Q
        ldx     #$04                            ; ED4D A2 04                    ..
LowerFixedEngine_Branch_ED4F:
        lda     $6E8A,x                         ; ED4F BD 8A 6E                 ..n
        bne     LowerFixedEngine_Branch_ED5A    ; ED52 D0 06                    ..
        jsr     LowerFixedEngine_Entry_EDA7     ; ED54 20 A7 ED                  ..
        jmp     LowerFixedEngine_Branch_ED74    ; ED57 4C 74 ED                 Lt.
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_ED5A:
        cmp     #$01                            ; ED5A C9 01                    ..
        bne     LowerFixedEngine_Branch_ED74    ; ED5C D0 16                    ..
        ldy     CurrentTilesetCandidate         ; ED5E A4 65                    .e
        cpy     #$03                            ; ED60 C0 03                    ..
        bne     LowerFixedEngine_Branch_ED74    ; ED62 D0 10                    ..
        jsr     LowerFixedEngine_Entry_C891     ; ED64 20 91 C8                  ..
        cmp     #$FA                            ; ED67 C9 FA                    ..
        lda     #$18                            ; ED69 A9 18                    ..
        bcc     LowerFixedEngine_Branch_ED74    ; ED6B 90 07                    ..
        lda     #$19                            ; ED6D A9 19                    ..
        jmp     LowerFixedEngine_Branch_ED74    ; ED6F 4C 74 ED                 Lt.
; ----------------------------------------------------------------------------
        db   $A9,$20                         ; ED72 A9 20                    .
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_ED74:
        tay                                     ; ED74 A8                       .
        txa                                     ; ED75 8A                       .
        pha                                     ; ED76 48                       H
        ldx     $51                             ; ED77 A6 51                    .Q
        lda     $76C0,y                         ; ED79 B9 C0 76                 ..v
        sta     $6F0E,x                         ; ED7C 9D 0E 6F                 ..o
        tya                                     ; ED7F 98                       .
        asl     a                               ; ED80 0A                       .
        asl     a                               ; ED81 0A                       .
        tay                                     ; ED82 A8                       .
        lda     $7600,y                         ; ED83 B9 00 76                 ..v
        sta     $6EC6,x                         ; ED86 9D C6 6E                 ..n
        lda     $7601,y                         ; ED89 B9 01 76                 ..v
        sta     $6ED8,x                         ; ED8C 9D D8 6E                 ..n
        lda     $7602,y                         ; ED8F B9 02 76                 ..v
        sta     $6EEA,x                         ; ED92 9D EA 6E                 ..n
        lda     $7603,y                         ; ED95 B9 03 76                 ..v
        sta     $6EFC,x                         ; ED98 9D FC 6E                 ..n
        inc     $51                             ; ED9B E6 51                    .Q
        pla                                     ; ED9D 68                       h
        tax                                     ; ED9E AA                       .
        inx                                     ; ED9F E8                       .
        inx                                     ; EDA0 E8                       .
        inx                                     ; EDA1 E8                       .
        cpx     #$31                            ; EDA2 E0 31                    .1
        bne     LowerFixedEngine_Branch_ED4F    ; EDA4 D0 A9                    ..
        rts                                     ; EDA6 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_EDA7:
        sta     $53                             ; EDA7 85 53                    .S
        lda     $6E89,x                         ; EDA9 BD 89 6E                 ..n
        jsr     LowerFixedEngine_Entry_EC3A     ; EDAC 20 3A EC                  :.
        lda     $6E8D,x                         ; EDAF BD 8D 6E                 ..n
        jsr     LowerFixedEngine_Entry_EC3A     ; EDB2 20 3A EC                  :.
        lda     $6E8B,x                         ; EDB5 BD 8B 6E                 ..n
        jsr     LowerFixedEngine_Entry_EC3A     ; EDB8 20 3A EC                  :.
        lda     $6E87,x                         ; EDBB BD 87 6E                 ..n
        jsr     LowerFixedEngine_Entry_EC3A     ; EDBE 20 3A EC                  :.
        lda     $53                             ; EDC1 A5 53                    .S
        clc                                     ; EDC3 18                       .
        adc     #$20                            ; EDC4 69 20                    i
        rts                                     ; EDC6 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_EDC7:
        lda     #$3E                            ; EDC7 A9 3E                    .>
        sta     $00                             ; EDC9 85 00                    ..
        lda     #$1D                            ; EDCB A9 1D                    ..
        sta     $01                             ; EDCD 85 01                    ..
        jsr     LowerFixedEngine_Entry_C662     ; EDCF 20 62 C6                  b.
        lda     $1C                             ; EDD2 A5 1C                    ..
        sta     $0521                           ; EDD4 8D 21 05                 .!.
        lda     $1D                             ; EDD7 A5 1D                    ..
        sta     $0522                           ; EDD9 8D 22 05                 .".
        lda     $0508                           ; EDDC AD 08 05                 ...
        lsr     a                               ; EDDF 4A                       J
        lsr     a                               ; EDE0 4A                       J
        lsr     a                               ; EDE1 4A                       J
        lsr     a                               ; EDE2 4A                       J
        eor     #$0F                            ; EDE3 49 0F                    I.
        ldx     #$00                            ; EDE5 A2 00                    ..
        clc                                     ; EDE7 18                       .
        adc     #$02                            ; EDE8 69 02                    i.
        cmp     #$11                            ; EDEA C9 11                    ..
        bcc     $EDF1                           ; EDEC 90 03                    ..
        lda     #$01                            ; EDEE A9 01                    ..
        inx                                     ; EDF0 E8                       .
        sta     $0523                           ; EDF1 8D 23 05                 .#.
        stx     $0525                           ; EDF4 8E 25 05                 .%.
        lda     #$12                            ; EDF7 A9 12                    ..
        sec                                     ; EDF9 38                       8
        sbc     $0523                           ; EDFA ED 23 05                 .#.
        sec                                     ; EDFD 38                       8
        sbc     $0525                           ; EDFE ED 25 05                 .%.
        sta     $0524                           ; EE01 8D 24 05                 .$.
        rts                                     ; EE04 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_EE05:
        lda     #$00                            ; EE05 A9 00                    ..
        sta     $01                             ; EE07 85 01                    ..
        jsr     LowerFixedEngine_Entry_EE2F     ; EE09 20 2F EE                  /.
        jsr     LowerFixedEngine_Entry_C662     ; EE0C 20 62 C6                  b.
        lda     $1C                             ; EE0F A5 1C                    ..
        sta     $0521                           ; EE11 8D 21 05                 .!.
        lda     $1D                             ; EE14 A5 1D                    ..
        sta     $0522                           ; EE16 8D 22 05                 .".
        lda     $0509                           ; EE19 AD 09 05                 ...
        lsr     a                               ; EE1C 4A                       J
        lsr     a                               ; EE1D 4A                       J
        lsr     a                               ; EE1E 4A                       J
        lsr     a                               ; EE1F 4A                       J
        eor     #$0F                            ; EE20 49 0F                    I.
        sta     $0523                           ; EE22 8D 23 05                 .#.
        lda     #$0F                            ; EE25 A9 0F                    ..
        sec                                     ; EE27 38                       8
        sbc     $0523                           ; EE28 ED 23 05                 .#.
        sta     $0525                           ; EE2B 8D 25 05                 .%.
        rts                                     ; EE2E 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_EE2F:
        ldx     #$3D                            ; EE2F A2 3D                    .=
        lda     $3D                             ; EE31 A5 3D                    .=
        cmp     #$03                            ; EE33 C9 03                    ..
        beq     $EE39                           ; EE35 F0 02                    ..
        ldx     #$21                            ; EE37 A2 21                    .!
        stx     $00                             ; EE39 86 00                    ..
        rts                                     ; EE3B 60                       `
; ----------------------------------------------------------------------------
        lda     #$00                            ; EE3C A9 00                    ..
        sta     $01                             ; EE3E 85 01                    ..
        beq     $EE4F                           ; EE40 F0 0D                    ..
        lda     $0522                           ; EE42 AD 22 05                 .".
        clc                                     ; EE45 18                       .
        adc     #$20                            ; EE46 69 20                    i
        sta     $0522                           ; EE48 8D 22 05                 .".
        lda     #$01                            ; EE4B A9 01                    ..
        sta     $01                             ; EE4D 85 01                    ..
        ldx     #$00                            ; EE4F A2 00                    ..
        ldy     $050A                           ; EE51 AC 0A 05                 ...
        inc     $050B                           ; EE54 EE 0B 05                 ...
        lda     $0521                           ; EE57 AD 21 05                 .!.
        ora     #$80                            ; EE5A 09 80                    ..
        sta     $0300,y                         ; EE5C 99 00 03                 ...
        iny                                     ; EE5F C8                       .
        lda     $0523                           ; EE60 AD 23 05                 .#.
        sta     $00                             ; EE63 85 00                    ..
        asl     a                               ; EE65 0A                       .
        sta     $0300,y                         ; EE66 99 00 03                 ...
        iny                                     ; EE69 C8                       .
        lda     $0522                           ; EE6A AD 22 05                 .".
        sta     $0300,y                         ; EE6D 99 00 03                 ...
        iny                                     ; EE70 C8                       .
        jsr     LowerFixedEngine_Entry_EEB7     ; EE71 20 B7 EE                  ..
        inc     $050B                           ; EE74 EE 0B 05                 ...
        lda     $0521                           ; EE77 AD 21 05                 .!.
        eor     #$84                            ; EE7A 49 84                    I.
        sta     $0300,y                         ; EE7C 99 00 03                 ...
        iny                                     ; EE7F C8                       .
        lda     $0524                           ; EE80 AD 24 05                 .$.
        sta     $00                             ; EE83 85 00                    ..
        asl     a                               ; EE85 0A                       .
        sta     $0300,y                         ; EE86 99 00 03                 ...
        iny                                     ; EE89 C8                       .
        lda     $0522                           ; EE8A AD 22 05                 .".
        and     #$E0                            ; EE8D 29 E0                    ).
        sta     $0300,y                         ; EE8F 99 00 03                 ...
        iny                                     ; EE92 C8                       .
        jsr     LowerFixedEngine_Entry_EEB7     ; EE93 20 B7 EE                  ..
        lda     $0525                           ; EE96 AD 25 05                 .%.
        beq     $EECE                           ; EE99 F0 33                    .3
        sta     $00                             ; EE9B 85 00                    ..
        asl     a                               ; EE9D 0A                       .
        sta     $0301,y                         ; EE9E 99 01 03                 ...
        inc     $050B                           ; EEA1 EE 0B 05                 ...
        lda     $0521                           ; EEA4 AD 21 05                 .!.
        ora     #$80                            ; EEA7 09 80                    ..
        sta     $0300,y                         ; EEA9 99 00 03                 ...
        iny                                     ; EEAC C8                       .
        iny                                     ; EEAD C8                       .
        lda     $0522                           ; EEAE AD 22 05                 .".
        and     #$E0                            ; EEB1 29 E0                    ).
        sta     $0300,y                         ; EEB3 99 00 03                 ...
        iny                                     ; EEB6 C8                       .
LowerFixedEngine_Entry_EEB7:
        lda     $01                             ; EEB7 A5 01                    ..
        bne     $EED4                           ; EEB9 D0 19                    ..
        lda     $6EC6,x                         ; EEBB BD C6 6E                 ..n
        sta     $0300,y                         ; EEBE 99 00 03                 ...
        iny                                     ; EEC1 C8                       .
        lda     $6ED8,x                         ; EEC2 BD D8 6E                 ..n
        sta     $0300,y                         ; EEC5 99 00 03                 ...
        inx                                     ; EEC8 E8                       .
        iny                                     ; EEC9 C8                       .
        dec     $00                             ; EECA C6 00                    ..
        bne     $EEBB                           ; EECC D0 ED                    ..
        sty     $050A                           ; EECE 8C 0A 05                 ...
        jmp     $C626                           ; EED1 4C 26 C6                 L&.
; ----------------------------------------------------------------------------
        lda     $6EEA,x                         ; EED4 BD EA 6E                 ..n
        sta     $0300,y                         ; EED7 99 00 03                 ...
        iny                                     ; EEDA C8                       .
        lda     $6EFC,x                         ; EEDB BD FC 6E                 ..n
        sta     $0300,y                         ; EEDE 99 00 03                 ...
        inx                                     ; EEE1 E8                       .
        iny                                     ; EEE2 C8                       .
        dec     $00                             ; EEE3 C6 00                    ..
        bne     $EED4                           ; EEE5 D0 ED                    ..
        sty     $050A                           ; EEE7 8C 0A 05                 ...
        jmp     $C626                           ; EEEA 4C 26 C6                 L&.
; ----------------------------------------------------------------------------
        lda     #$00                            ; EEED A9 00                    ..
        sta     $01                             ; EEEF 85 01                    ..
        beq     $EEFA                           ; EEF1 F0 07                    ..
        inc     $0522                           ; EEF3 EE 22 05                 .".
        lda     #$01                            ; EEF6 A9 01                    ..
        sta     $01                             ; EEF8 85 01                    ..
        ldx     #$00                            ; EEFA A2 00                    ..
        ldy     $050A                           ; EEFC AC 0A 05                 ...
        inc     $050B                           ; EEFF EE 0B 05                 ...
        lda     $0521                           ; EF02 AD 21 05                 .!.
        ora     #$C0                            ; EF05 09 C0                    ..
        sta     $0300,y                         ; EF07 99 00 03                 ...
        iny                                     ; EF0A C8                       .
        lda     $0523                           ; EF0B AD 23 05                 .#.
        sta     $00                             ; EF0E 85 00                    ..
        asl     a                               ; EF10 0A                       .
        sta     $0300,y                         ; EF11 99 00 03                 ...
        iny                                     ; EF14 C8                       .
        lda     $0522                           ; EF15 AD 22 05                 .".
        sta     $0300,y                         ; EF18 99 00 03                 ...
        iny                                     ; EF1B C8                       .
        jsr     LowerFixedEngine_Entry_EF42     ; EF1C 20 42 EF                  B.
        lda     $0525                           ; EF1F AD 25 05                 .%.
        beq     $EF59                           ; EF22 F0 35                    .5
        sta     $00                             ; EF24 85 00                    ..
        asl     a                               ; EF26 0A                       .
        sta     $0301,y                         ; EF27 99 01 03                 ...
        inc     $050B                           ; EF2A EE 0B 05                 ...
        lda     $0521                           ; EF2D AD 21 05                 .!.
        and     #$24                            ; EF30 29 24                    )$
        ora     #$C0                            ; EF32 09 C0                    ..
        sta     $0300,y                         ; EF34 99 00 03                 ...
        iny                                     ; EF37 C8                       .
        iny                                     ; EF38 C8                       .
        lda     $0522                           ; EF39 AD 22 05                 .".
        and     #$1F                            ; EF3C 29 1F                    ).
        sta     $0300,y                         ; EF3E 99 00 03                 ...
        iny                                     ; EF41 C8                       .
LowerFixedEngine_Entry_EF42:
        lda     $01                             ; EF42 A5 01                    ..
        bne     $EF5F                           ; EF44 D0 19                    ..
        lda     $6EC6,x                         ; EF46 BD C6 6E                 ..n
        sta     $0300,y                         ; EF49 99 00 03                 ...
        iny                                     ; EF4C C8                       .
        lda     $6EEA,x                         ; EF4D BD EA 6E                 ..n
        sta     $0300,y                         ; EF50 99 00 03                 ...
        inx                                     ; EF53 E8                       .
        iny                                     ; EF54 C8                       .
        dec     $00                             ; EF55 C6 00                    ..
        bne     $EF46                           ; EF57 D0 ED                    ..
        sty     $050A                           ; EF59 8C 0A 05                 ...
        jmp     $C626                           ; EF5C 4C 26 C6                 L&.
; ----------------------------------------------------------------------------
        lda     $6ED8,x                         ; EF5F BD D8 6E                 ..n
        sta     $0300,y                         ; EF62 99 00 03                 ...
        iny                                     ; EF65 C8                       .
        lda     $6EFC,x                         ; EF66 BD FC 6E                 ..n
        sta     $0300,y                         ; EF69 99 00 03                 ...
        inx                                     ; EF6C E8                       .
        iny                                     ; EF6D C8                       .
        dec     $00                             ; EF6E C6 00                    ..
        bne     $EF5F                           ; EF70 D0 ED                    ..
        sty     $050A                           ; EF72 8C 0A 05                 ...
        jmp     $C626                           ; EF75 4C 26 C6                 L&.
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_EFBF     ; EF78 20 BF EF                  ..
        ldx     #$3E                            ; EF7B A2 3E                    .>
        stx     $00                             ; EF7D 86 00                    ..
        lda     #$00                            ; EF7F A9 00                    ..
        sta     $03                             ; EF81 85 03                    ..
        lda     #$12                            ; EF83 A9 12                    ..
        sta     $02                             ; EF85 85 02                    ..
        ldx     $03                             ; EF87 A6 03                    ..
        lda     $6F0E,x                         ; EF89 BD 0E 6F                 ..o
        jsr     LowerFixedEngine_Entry_C727     ; EF8C 20 27 C7                  '.
        inc     $00                             ; EF8F E6 00                    ..
        inc     $00                             ; EF91 E6 00                    ..
        inc     $03                             ; EF93 E6 03                    ..
        dec     $02                             ; EF95 C6 02                    ..
        bne     $EF87                           ; EF97 D0 EE                    ..
        jmp     $C626                           ; EF99 4C 26 C6                 L&.
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_EFCA     ; EF9C 20 CA EF                  ..
        lda     #$00                            ; EF9F A9 00                    ..
        sta     $01                             ; EFA1 85 01                    ..
        sta     $03                             ; EFA3 85 03                    ..
        lda     #$0F                            ; EFA5 A9 0F                    ..
        sta     $02                             ; EFA7 85 02                    ..
        ldx     $03                             ; EFA9 A6 03                    ..
        lda     $6F0E,x                         ; EFAB BD 0E 6F                 ..o
        jsr     LowerFixedEngine_Entry_C727     ; EFAE 20 27 C7                  '.
        inc     $01                             ; EFB1 E6 01                    ..
        inc     $01                             ; EFB3 E6 01                    ..
        inc     $03                             ; EFB5 E6 03                    ..
        dec     $02                             ; EFB7 C6 02                    ..
        bne     $EFA9                           ; EFB9 D0 EE                    ..
        jmp     $C626                           ; EFBB 4C 26 C6                 L&.
; ----------------------------------------------------------------------------
        db   $60                             ; EFBE 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_EFBF:
        ldx     #$1D                            ; EFBF A2 1D                    ..
        lda     $3D                             ; EFC1 A5 3D                    .=
        bne     $EFC7                           ; EFC3 D0 02                    ..
        ldx     #$00                            ; EFC5 A2 00                    ..
        stx     $01                             ; EFC7 86 01                    ..
        rts                                     ; EFC9 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_EFCA:
        ldx     #$3F                            ; EFCA A2 3F                    .?
        lda     $3D                             ; EFCC A5 3D                    .=
        cmp     #$03                            ; EFCE C9 03                    ..
        beq     $EFD4                           ; EFD0 F0 02                    ..
        ldx     #$22                            ; EFD2 A2 22                    ."
        stx     $00                             ; EFD4 86 00                    ..
        rts                                     ; EFD6 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_EFD7:
        lda     #$FF                            ; EFD7 A9 FF                    ..
        bne     LowerFixedEngine_Branch_EFDD    ; EFD9 D0 02                    ..
LowerFixedEngine_Branch_EFDB:
        lda     #$00                            ; EFDB A9 00                    ..
LowerFixedEngine_Branch_EFDD:
        sta     $29                             ; EFDD 85 29                    .)
        bmi     $EFE4                           ; EFDF 30 03                    0.
        jsr     LowerFixedEngine_Entry_C5AF     ; EFE1 20 AF C5                  ..
        jsr     LowerFixedEngine_Entry_F15B     ; EFE4 20 5B F1                  [.
        jsr     LowerFixedEngine_Entry_EFF5     ; EFE7 20 F5 EF                  ..
        jsr     LowerFixedEngine_Entry_F194     ; EFEA 20 94 F1                  ..
        bit     $29                             ; EFED 24 29                    $)
        bmi     $EFF4                           ; EFEF 30 03                    0.
        jsr     LowerFixedEngine_Entry_C58F     ; EFF1 20 8F C5                  ..
        rts                                     ; EFF4 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_EFF5:
        lda     $41                             ; EFF5 A5 41                    .A
        bmi     $F010                           ; EFF7 30 17                    0.
        jsr     LowerFixedEngine_Entry_F18D     ; EFF9 20 8D F1                  ..
LowerFixedEngine_Branch_EFFC:
        lda     #$0F                            ; EFFC A9 0F                    ..
        sta     $58                             ; EFFE 85 58                    .X
LowerFixedEngine_Branch_F000:
        jsr     LowerFixedEngine_Entry_F147     ; F000 20 47 F1                  G.
        jsr     LowerFixedEngine_Entry_F09E     ; F003 20 9E F0                  ..
        jsr     LowerFixedEngine_Entry_F06D     ; F006 20 6D F0                  m.
        bcc     LowerFixedEngine_Branch_F000    ; F009 90 F5                    ..
        dec     $55                             ; F00B C6 55                    .U
        bne     LowerFixedEngine_Branch_EFFC    ; F00D D0 ED                    ..
        rts                                     ; F00F 60                       `
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_F17A     ; F010 20 7A F1                  z.
        lda     #$0F                            ; F013 A9 0F                    ..
        sta     $58                             ; F015 85 58                    .X
        jsr     LowerFixedEngine_Entry_F147     ; F017 20 47 F1                  G.
        jsr     LowerFixedEngine_Entry_F09E     ; F01A 20 9E F0                  ..
        jsr     LowerFixedEngine_Entry_D443     ; F01D 20 43 D4                  C.
        jsr     LowerFixedEngine_Entry_F06D     ; F020 20 6D F0                  m.
        lda     $00                             ; F023 A5 00                    ..
        and     $01                             ; F025 25 01                    %.
        cmp     #$FF                            ; F027 C9 FF                    ..
        bne     $F037                           ; F029 D0 0C                    ..
        jsr     LowerFixedEngine_Entry_F147     ; F02B 20 47 F1                  G.
        jsr     LowerFixedEngine_Entry_F09E     ; F02E 20 9E F0                  ..
        jsr     LowerFixedEngine_Entry_D443     ; F031 20 43 D4                  C.
        jmp     $F044                           ; F034 4C 44 F0                 LD.
; ----------------------------------------------------------------------------
        ldx     $53                             ; F037 A6 53                    .S
        ldy     $54                             ; F039 A4 54                    .T
        jsr     LowerFixedEngine_Entry_D437     ; F03B 20 37 D4                  7.
        jsr     LowerFixedEngine_Entry_D4F3     ; F03E 20 F3 D4                  ..
        jsr     LowerFixedEngine_Entry_F09E     ; F041 20 9E F0                  ..
        jsr     LowerFixedEngine_Entry_F06D     ; F044 20 6D F0                  m.
        bcc     $F023                           ; F047 90 DA                    ..
        bit     $29                             ; F049 24 29                    $)
        bpl     $F068                           ; F04B 10 1B                    ..
        lda     $1F                             ; F04D A5 1F                    ..
        ora     #$10                            ; F04F 09 10                    ..
        sta     $1F                             ; F051 85 1F                    ..
        lda     $1F                             ; F053 A5 1F                    ..
        ora     #$40                            ; F055 09 40                    .@
        sta     $1F                             ; F057 85 1F                    ..
        jsr     LowerFixedEngine_Entry_FF74     ; F059 20 74 FF                  t.
        lda     $1F                             ; F05C A5 1F                    ..
        and     #$BF                            ; F05E 29 BF                    ).
        sta     $1F                             ; F060 85 1F                    ..
        lda     $1F                             ; F062 A5 1F                    ..
        and     #$EF                            ; F064 29 EF                    ).
        sta     $1F                             ; F066 85 1F                    ..
        dec     $55                             ; F068 C6 55                    .U
        bne     $F013                           ; F06A D0 A7                    ..
        rts                                     ; F06C 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F06D:
        inc     $54                             ; F06D E6 54                    .T
        dec     $58                             ; F06F C6 58                    .X
        bne     $F09C                           ; F071 D0 29                    .)
        lda     $54                             ; F073 A5 54                    .T
        sec                                     ; F075 38                       8
        sbc     #$0F                            ; F076 E9 0F                    ..
        sta     $54                             ; F078 85 54                    .T
        inc     $53                             ; F07A E6 53                    .S
        inc     $57                             ; F07C E6 57                    .W
        inc     $57                             ; F07E E6 57                    .W
        lda     $57                             ; F080 A5 57                    .W
        cmp     #$E0                            ; F082 C9 E0                    ..
        bcc     $F090                           ; F084 90 0A                    ..
        lda     #$00                            ; F086 A9 00                    ..
        sta     $57                             ; F088 85 57                    .W
        lda     #$20                            ; F08A A9 20                    .
        sta     $56                             ; F08C 85 56                    .V
        sec                                     ; F08E 38                       8
        rts                                     ; F08F 60                       `
; ----------------------------------------------------------------------------
        and     #$1F                            ; F090 29 1F                    ).
        sta     $57                             ; F092 85 57                    .W
        lda     $56                             ; F094 A5 56                    .V
        and     #$24                            ; F096 29 24                    )$
        sta     $56                             ; F098 85 56                    .V
        sec                                     ; F09A 38                       8
        rts                                     ; F09B 60                       `
; ----------------------------------------------------------------------------
        clc                                     ; F09C 18                       .
        rts                                     ; F09D 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F09E:
        bit     $29                             ; F09E 24 29                    $)
        bmi     $F0D6                           ; F0A0 30 34                    04
        pha                                     ; F0A2 48                       H
        jsr     LowerFixedEngine_Entry_F12B     ; F0A3 20 2B F1                  +.
        jsr     LowerFixedEngine_Entry_F0CA     ; F0A6 20 CA F0                  ..
        jsr     LowerFixedEngine_Entry_F12B     ; F0A9 20 2B F1                  +.
        lda     $56                             ; F0AC A5 56                    .V
        sta     $1C                             ; F0AE 85 1C                    ..
        lda     $57                             ; F0B0 A5 57                    .W
        sta     $1D                             ; F0B2 85 1D                    ..
        pla                                     ; F0B4 68                       h
        jsr     LowerFixedEngine_Entry_C6BF     ; F0B5 20 BF C6                  ..
        pha                                     ; F0B8 48                       H
        lda     PPUSTATUS                       ; F0B9 AD 02 20                 ..
        lda     $0E                             ; F0BC A5 0E                    ..
        sta     PPUADDR                         ; F0BE 8D 06 20                 ..
        lda     $0F                             ; F0C1 A5 0F                    ..
        sta     PPUADDR                         ; F0C3 8D 06 20                 ..
        pla                                     ; F0C6 68                       h
        sta     PPUDATA                         ; F0C7 8D 07 20                 ..
LowerFixedEngine_Entry_F0CA:
        lda     $57                             ; F0CA A5 57                    .W
        clc                                     ; F0CC 18                       .
        adc     #$20                            ; F0CD 69 20                    i
        sta     $57                             ; F0CF 85 57                    .W
        bcc     $F0D5                           ; F0D1 90 02                    ..
        inc     $56                             ; F0D3 E6 56                    .V
        rts                                     ; F0D5 60                       `
; ----------------------------------------------------------------------------
        pha                                     ; F0D6 48                       H
        jsr     LowerFixedEngine_Entry_F108     ; F0D7 20 08 F1                  ..
        jsr     LowerFixedEngine_Entry_F0CA     ; F0DA 20 CA F0                  ..
        jsr     LowerFixedEngine_Entry_F117     ; F0DD 20 17 F1                  ..
        lda     $56                             ; F0E0 A5 56                    .V
        sta     $1C                             ; F0E2 85 1C                    ..
        lda     $57                             ; F0E4 A5 57                    .W
        sta     $1D                             ; F0E6 85 1D                    ..
        pla                                     ; F0E8 68                       h
        jsr     LowerFixedEngine_Entry_C6BF     ; F0E9 20 BF C6                  ..
        ldy     $050A                           ; F0EC AC 0A 05                 ...
        sta     NextTextCharacter,y             ; F0EF 99 02 03                 ...
        lda     $0E                             ; F0F2 A5 0E                    ..
        sta     $0300,y                         ; F0F4 99 00 03                 ...
        lda     $0F                             ; F0F7 A5 0F                    ..
        sta     $0301,y                         ; F0F9 99 01 03                 ...
        iny                                     ; F0FC C8                       .
        iny                                     ; F0FD C8                       .
        iny                                     ; F0FE C8                       .
        sty     $050A                           ; F0FF 8C 0A 05                 ...
        inc     $050B                           ; F102 EE 0B 05                 ...
        jmp     LowerFixedEngine_Entry_F0CA     ; F105 4C CA F0                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F108:
        ldy     $050A                           ; F108 AC 0A 05                 ...
        lda     $56                             ; F10B A5 56                    .V
        sta     $0300,y                         ; F10D 99 00 03                 ...
        iny                                     ; F110 C8                       .
        lda     $57                             ; F111 A5 57                    .W
        sta     $0300,y                         ; F113 99 00 03                 ...
        iny                                     ; F116 C8                       .
LowerFixedEngine_Entry_F117:
        lda     $7600,x                         ; F117 BD 00 76                 ..v
        sta     $0300,y                         ; F11A 99 00 03                 ...
        iny                                     ; F11D C8                       .
        inx                                     ; F11E E8                       .
        lda     $7600,x                         ; F11F BD 00 76                 ..v
        sta     $0300,y                         ; F122 99 00 03                 ...
        iny                                     ; F125 C8                       .
        inx                                     ; F126 E8                       .
        sty     $050A                           ; F127 8C 0A 05                 ...
        rts                                     ; F12A 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F12B:
        lda     PPUSTATUS                       ; F12B AD 02 20                 ..
        lda     $56                             ; F12E A5 56                    .V
        sta     PPUADDR                         ; F130 8D 06 20                 ..
        lda     $57                             ; F133 A5 57                    .W
        sta     PPUADDR                         ; F135 8D 06 20                 ..
        lda     $7600,x                         ; F138 BD 00 76                 ..v
        sta     PPUDATA                         ; F13B 8D 07 20                 ..
        inx                                     ; F13E E8                       .
        lda     $7600,x                         ; F13F BD 00 76                 ..v
        sta     PPUDATA                         ; F142 8D 07 20                 ..
        inx                                     ; F145 E8                       .
        rts                                     ; F146 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F147:
        ldx     $53                             ; F147 A6 53                    .S
        ldy     $54                             ; F149 A4 54                    .T
        lda     $41                             ; F14B A5 41                    .A
        bmi     $F155                           ; F14D 30 06                    0.
        jsr     LowerFixedEngine_Entry_D251     ; F14F 20 51 D2                  Q.
        jmp     LowerFixedEngine_Branch_D486    ; F152 4C 86 D4                 L..
; ----------------------------------------------------------------------------
        jsr     LowerFixedEngine_Entry_D3E6     ; F155 20 E6 D3                  ..
        jmp     LowerFixedEngine_Entry_D4F3     ; F158 4C F3 D4                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F15B:
        lda     #$00                            ; F15B A9 00                    ..
        sta     $0509                           ; F15D 8D 09 05                 ...
        lda     #$80                            ; F160 A9 80                    ..
        sta     $0508                           ; F162 8D 08 05                 ...
        lda     $0505                           ; F165 AD 05 05                 ...
        ora     #$01                            ; F168 09 01                    ..
        sta     $0505                           ; F16A 8D 05 05                 ...
        lda     #$12                            ; F16D A9 12                    ..
        sta     $55                             ; F16F 85 55                    .U
        lda     #$24                            ; F171 A9 24                    .$
        sta     $56                             ; F173 85 56                    .V
        lda     #$0E                            ; F175 A9 0E                    ..
        sta     $57                             ; F177 85 57                    .W
        rts                                     ; F179 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F17A:
        ldx     PlayerLocalX                    ; F17A A6 44                    .D
        ldy     PlayerLocalY                    ; F17C A4 45                    .E
LowerFixedEngine_Branch_F17E:
        txa                                     ; F17E 8A                       .
        sec                                     ; F17F 38                       8
        sbc     #$09                            ; F180 E9 09                    ..
        sta     $53                             ; F182 85 53                    .S
        tax                                     ; F184 AA                       .
        tya                                     ; F185 98                       .
        sec                                     ; F186 38                       8
        sbc     #$07                            ; F187 E9 07                    ..
        sta     $54                             ; F189 85 54                    .T
        tay                                     ; F18B A8                       .
        rts                                     ; F18C 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F18D:
        ldx     PlayerWorldX                    ; F18D A6 42                    .B
        ldy     PlayerWorldY                    ; F18F A4 43                    .C
        jmp     LowerFixedEngine_Branch_F17E    ; F191 4C 7E F1                 L~.
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F194:
        ldx     #$1D                            ; F194 A2 1D                    ..
        lda     #$00                            ; F196 A9 00                    ..
        sta     $076A,x                         ; F198 9D 6A 07                 .j.
        lda     $7020,x                         ; F19B BD 20 70                 . p
        cmp     #$FF                            ; F19E C9 FF                    ..
        beq     $F1A7                           ; F1A0 F0 05                    ..
        and     #$EF                            ; F1A2 29 EF                    ).
        sta     $7020,x                         ; F1A4 9D 20 70                 . p
        dex                                     ; F1A7 CA                       .
        bpl     $F196                           ; F1A8 10 EC                    ..
        rts                                     ; F1AA 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F1AB:
        lda     #$00                            ; F1AB A9 00                    ..
        jsr     LowerFixedEngine_Entry_F1B7     ; F1AD 20 B7 F1                  ..
        lda     #$01                            ; F1B0 A9 01                    ..
        jsr     LowerFixedEngine_Entry_F1B7     ; F1B2 20 B7 F1                  ..
        lda     #$02                            ; F1B5 A9 02                    ..
LowerFixedEngine_Entry_F1B7:
        pha                                     ; F1B7 48                       H
        jsr     LowerFixedEngine_Entry_F1C1     ; F1B8 20 C1 F1                  ..
        pla                                     ; F1BB 68                       h
        tax                                     ; F1BC AA                       .
        inx                                     ; F1BD E8                       .
        jmp     LowerFixedEngine_Entry_D7FC     ; F1BE 4C FC D7                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F1C1:
        tax                                     ; F1C1 AA                       .
        pha                                     ; F1C2 48                       H
        lda     $7001,x                         ; F1C3 BD 01 70                 ..p
        and     #$40                            ; F1C6 29 40                    )@
        beq     $F1F5                           ; F1C8 F0 2B                    .+
        lda     $7001,x                         ; F1CA BD 01 70                 ..p
        and     #$03                            ; F1CD 29 03                    ).
        asl     a                               ; F1CF 0A                       .
        tax                                     ; F1D0 AA                       .
        pla                                     ; F1D1 68                       h
        tay                                     ; F1D2 A8                       .
        iny                                     ; F1D3 C8                       .
        lda     $D239,x                         ; F1D4 BD 39 D2                 .9.
        clc                                     ; F1D7 18                       .
        adc     $6F60,y                         ; F1D8 79 60 6F                 y`o
        sta     $6F60,y                         ; F1DB 99 60 6F                 .`o
        lda     $D23A,x                         ; F1DE BD 3A D2                 .:.
        clc                                     ; F1E1 18                       .
        adc     $6F80,y                         ; F1E2 79 80 6F                 y.o
        sta     $6F80,y                         ; F1E5 99 80 6F                 ..o
        lda     $7000,y                         ; F1E8 B9 00 70                 ..p
        and     #$40                            ; F1EB 29 40                    )@
        asl     a                               ; F1ED 0A                       .
        ora     $7000,y                         ; F1EE 19 00 70                 ..p
        sta     $7000,y                         ; F1F1 99 00 70                 ..p
        rts                                     ; F1F4 60                       `
; ----------------------------------------------------------------------------
        pla                                     ; F1F5 68                       h
        pla                                     ; F1F6 68                       h
        pla                                     ; F1F7 68                       h
        pla                                     ; F1F8 68                       h
        rts                                     ; F1F9 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F1FA:
        ldx     #$02                            ; F1FA A2 02                    ..
        lda     $7001,x                         ; F1FC BD 01 70                 ..p
        and     #$3C                            ; F1FF 29 3C                    )<
        sta     $7001,x                         ; F201 9D 01 70                 ..p
        lda     $7021,x                         ; F204 BD 21 70                 .!p
        and     #$FC                            ; F207 29 FC                    ).
        sta     $7021,x                         ; F209 9D 21 70                 .!p
        lda     $7000,x                         ; F20C BD 00 70                 ..p
        and     #$43                            ; F20F 29 43                    )C
        ora     $7001,x                         ; F211 1D 01 70                 ..p
        sta     $7001,x                         ; F214 9D 01 70                 ..p
        and     #$03                            ; F217 29 03                    ).
        ora     $7021,x                         ; F219 1D 21 70                 .!p
        sta     $7021,x                         ; F21C 9D 21 70                 .!p
        dex                                     ; F21F CA                       .
        bpl     $F1FC                           ; F220 10 DA                    ..
        rts                                     ; F222 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F223:
        lda     #$00                            ; F223 A9 00                    ..
        sta     $052A                           ; F225 8D 2A 05                 .*.
        sta     $052B                           ; F228 8D 2B 05                 .+.
        sta     $052C                           ; F22B 8D 2C 05                 .,.
        sta     $052D                           ; F22E 8D 2D 05                 .-.
        sta     $58                             ; F231 85 58                    .X
        lda     $0515                           ; F233 AD 15 05                 ...
        bne     LowerFixedEngine_Branch_F276    ; F236 D0 3E                    .>
        jsr     LowerFixedEngine_Entry_F467     ; F238 20 67 F4                  g.
        jsr     LowerFixedEngine_Entry_F243     ; F23B 20 43 F2                  C.
        jsr     LowerFixedEngine_Entry_F489     ; F23E 20 89 F4                  ..
        inc     $58                             ; F241 E6 58                    .X
LowerFixedEngine_Entry_F243:
        ldx     $58                             ; F243 A6 58                    .X
        lda     $6F64,x                         ; F245 BD 64 6F                 .do
        cmp     $51                             ; F248 C5 51                    .Q
        bne     LowerFixedEngine_Branch_F27E    ; F24A D0 32                    .2
        lda     $6F84,x                         ; F24C BD 84 6F                 ..o
        cmp     $52                           ; F24F C5 52                    .R
        bne     LowerFixedEngine_Branch_F27E    ; F251 D0 2B                    .+
LowerFixedEngine_Branch_F253:
        ldx     $58                             ; F253 A6 58                    .X
        lda     $0515                           ; F255 AD 15 05                 ...
        beq     LowerFixedEngine_Branch_F262    ; F258 F0 08                    ..
        lda     $7024,x                         ; F25A BD 24 70                 .$p
        ora     #$80                            ; F25D 09 80                    ..
        sta     $7024,x                         ; F25F 9D 24 70                 .$p
LowerFixedEngine_Branch_F262:
        lda     $7004,x                         ; F262 BD 04 70                 ..p
        and     #$FC                            ; F265 29 FC                    ).
        sta     $7004,x                         ; F267 9D 04 70                 ..p
        lda     $7002                           ; F26A AD 02 70                 ..p
        and     #$03                            ; F26D 29 03                    ).
        ora     $7004,x                         ; F26F 1D 04 70                 ..p
        sta     $7004,x                         ; F272 9D 04 70                 ..p
        rts                                     ; F275 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F276:
        jsr     LowerFixedEngine_Entry_F2D7     ; F276 20 D7 F2                  ..
        inc     $58                             ; F279 E6 58                    .X
        jmp     LowerFixedEngine_Entry_F2D7     ; F27B 4C D7 F2                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F27E:
        ldx     $51                             ; F27E A6 51                    .Q
        ldy     $52                           ; F280 A4 52                    .R
        lda     $41                             ; F282 A5 41                    .A
        bmi     LowerFixedEngine_Branch_F28D    ; F284 30 07                    0.
        jsr     LowerFixedEngine_Entry_D251     ; F286 20 51 D2                  Q.
        tay                                     ; F289 A8                       .
        jmp     LowerFixedEngine_Branch_F298    ; F28A 4C 98 F2                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F28D:
        jsr     LowerFixedEngine_Entry_D3E6     ; F28D 20 E6 D3                  ..
        tay                                     ; F290 A8                       .
        and     #$E0                            ; F291 29 E0                    ).
        cmp     $46                             ; F293 C5 46                    .F
        bne     LowerFixedEngine_Branch_F2C7    ; F295 D0 30                    .0
        tya                                     ; F297 98                       .
LowerFixedEngine_Branch_F298:
        and     #$1F                            ; F298 29 1F                    ).
        tax                                     ; F29A AA                       .
        lda     $6F40,x                         ; F29B BD 40 6F                 .@o
        bmi     LowerFixedEngine_Branch_F2C7    ; F29E 30 27                    0'
        tya                                     ; F2A0 98                       .
LowerFixedEngine_Branch_F2A1:
        ldy     $58                             ; F2A1 A4 58                    .X
        sta     $7144,y                         ; F2A3 99 44 71                 .Dq
        ldx     #$00                            ; F2A6 A2 00                    ..
        jsr     LowerFixedEngine_Entry_F433     ; F2A8 20 33 F4                  3.
        jsr     LowerFixedEngine_Entry_F433     ; F2AB 20 33 F4                  3.
        jsr     LowerFixedEngine_Entry_F40C     ; F2AE 20 0C F4                  ..
        lda     $5D                             ; F2B1 A5 5D                    .]
        clc                                     ; F2B3 18                       .
        adc     $5E                             ; F2B4 65 5E                    e^
        beq     LowerFixedEngine_Branch_F253    ; F2B6 F0 9B                    ..
        cmp     #$01                            ; F2B8 C9 01                    ..
        beq     LowerFixedEngine_Branch_F2E7    ; F2BA F0 2B                    .+
        cmp     #$02                            ; F2BC C9 02                    ..
        beq     LowerFixedEngine_Branch_F2F9    ; F2BE F0 39                    .9
        cmp     #$03                            ; F2C0 C9 03                    ..
        beq     LowerFixedEngine_Branch_F320    ; F2C2 F0 5C                    .\
        jmp     LowerFixedEngine_Branch_F36E    ; F2C4 4C 6E F3                 Ln.
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F2C7:
        lda     $6F62                           ; F2C7 AD 62 6F                 .bo
        sta     $51                             ; F2CA 85 51                    .Q
        lda     $6F82                           ; F2CC AD 82 6F                 ..o
        sta     $52                           ; F2CF 85 52                    .R
        lda     $7142                           ; F2D1 AD 42 71                 .Bq
        jmp     LowerFixedEngine_Branch_F2A1    ; F2D4 4C A1 F2                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F2D7:
        lda     $6F60                           ; F2D7 AD 60 6F                 .`o
        sta     $51                             ; F2DA 85 51                    .Q
        lda     $6F80                           ; F2DC AD 80 6F                 ..o
        sta     $52                           ; F2DF 85 52                    .R
        lda     $7140                           ; F2E1 AD 40 71                 .@q
        jmp     LowerFixedEngine_Branch_F2A1    ; F2E4 4C A1 F2                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F2E7:
        jsr     LowerFixedEngine_Entry_F3F3     ; F2E7 20 F3 F3                  ..
        lda     $5B                             ; F2EA A5 5B                    .[
        jsr     LowerFixedEngine_Entry_F372     ; F2EC 20 72 F3                  r.
        jsr     LowerFixedEngine_Entry_F3AE     ; F2EF 20 AE F3                  ..
        jsr     LowerFixedEngine_Entry_F3B9     ; F2F2 20 B9 F3                  ..
        jsr     LowerFixedEngine_Entry_F3A5     ; F2F5 20 A5 F3                  ..
        rts                                     ; F2F8 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F2F9:
        jsr     LowerFixedEngine_Entry_F3F3     ; F2F9 20 F3 F3                  ..
        cpx     #$02                            ; F2FC E0 02                    ..
        beq     LowerFixedEngine_Branch_F30F    ; F2FE F0 0F                    ..
        lda     $5B                             ; F300 A5 5B                    .[
        jsr     LowerFixedEngine_Entry_F372     ; F302 20 72 F3                  r.
        jsr     LowerFixedEngine_Entry_F3C4     ; F305 20 C4 F3                  ..
        jsr     LowerFixedEngine_Entry_F3AE     ; F308 20 AE F3                  ..
        jsr     LowerFixedEngine_Entry_F3A5     ; F30B 20 A5 F3                  ..
        rts                                     ; F30E 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F30F:
        lda     $5B                             ; F30F A5 5B                    .[
        jsr     LowerFixedEngine_Entry_F372     ; F311 20 72 F3                  r.
        jsr     LowerFixedEngine_Entry_F3B9     ; F314 20 B9 F3                  ..
        lda     $5C                             ; F317 A5 5C                    .\
        jsr     LowerFixedEngine_Entry_F38D     ; F319 20 8D F3                  ..
        jsr     LowerFixedEngine_Entry_F3A5     ; F31C 20 A5 F3                  ..
        rts                                     ; F31F 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F320:
        jsr     LowerFixedEngine_Entry_F3F3     ; F320 20 F3 F3                  ..
        cpx     #$02                            ; F323 E0 02                    ..
        beq     LowerFixedEngine_Branch_F338    ; F325 F0 11                    ..
        lda     $5B                             ; F327 A5 5B                    .[
        jsr     LowerFixedEngine_Entry_F372     ; F329 20 72 F3                  r.
        jsr     LowerFixedEngine_Entry_F3C4     ; F32C 20 C4 F3                  ..
        lda     $5B                             ; F32F A5 5B                    .[
        jsr     LowerFixedEngine_Entry_F38D     ; F331 20 8D F3                  ..
        jsr     LowerFixedEngine_Entry_F3A5     ; F334 20 A5 F3                  ..
        rts                                     ; F337 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F338:
        lda     $5D                             ; F338 A5 5D                    .]
        cmp     $5E                             ; F33A C5 5E                    .^
        bcs     LowerFixedEngine_Branch_F366    ; F33C B0 28                    .(
        lda     $5B                             ; F33E A5 5B                    .[
        and     #$01                            ; F340 29 01                    ).
        beq     LowerFixedEngine_Branch_F355    ; F342 F0 11                    ..
LowerFixedEngine_Branch_F344:
        lda     $5C                             ; F344 A5 5C                    .\
        jsr     LowerFixedEngine_Entry_F372     ; F346 20 72 F3                  r.
        jsr     LowerFixedEngine_Entry_F3C4     ; F349 20 C4 F3                  ..
        lda     $5B                             ; F34C A5 5B                    .[
        jsr     LowerFixedEngine_Entry_F38D     ; F34E 20 8D F3                  ..
        jsr     LowerFixedEngine_Entry_F3A5     ; F351 20 A5 F3                  ..
        rts                                     ; F354 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F355:
        lda     $5B                             ; F355 A5 5B                    .[
        jsr     LowerFixedEngine_Entry_F372     ; F357 20 72 F3                  r.
        jsr     LowerFixedEngine_Entry_F3C4     ; F35A 20 C4 F3                  ..
        lda     $5C                             ; F35D A5 5C                    .\
        jsr     LowerFixedEngine_Entry_F38D     ; F35F 20 8D F3                  ..
        jsr     LowerFixedEngine_Entry_F3A5     ; F362 20 A5 F3                  ..
        rts                                     ; F365 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F366:
        lda     $5B                             ; F366 A5 5B                    .[
        and     #$01                            ; F368 29 01                    ).
        bne     LowerFixedEngine_Branch_F355    ; F36A D0 E9                    ..
        beq     LowerFixedEngine_Branch_F344    ; F36C F0 D6                    ..
LowerFixedEngine_Branch_F36E:
        jmp     LowerFixedEngine_Branch_F320    ; F36E 4C 20 F3                 L .
; ----------------------------------------------------------------------------
        db   $60                             ; F371 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F372:
        tay                                     ; F372 A8                       .
        ldx     $58                             ; F373 A6 58                    .X
        lda     $7004,x                         ; F375 BD 04 70                 ..p
        and     #$FC                            ; F378 29 FC                    ).
        sta     $7004,x                         ; F37A 9D 04 70                 ..p
        tya                                     ; F37D 98                       .
        ora     $7004,x                         ; F37E 1D 04 70                 ..p
        ora     #$80                            ; F381 09 80                    ..
        sta     $7004,x                         ; F383 9D 04 70                 ..p
        sta     $052C,x                         ; F386 9D 2C 05                 .,.
        jsr     LowerFixedEngine_Entry_F3D8     ; F389 20 D8 F3                  ..
        rts                                     ; F38C 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F38D:
        tay                                     ; F38D A8                       .
        ldx     $58                             ; F38E A6 58                    .X
        lda     $7024,x                         ; F390 BD 24 70                 .$p
        and     #$80                            ; F393 29 80                    ).
        sta     $7024,x                         ; F395 9D 24 70                 .$p
        tya                                     ; F398 98                       .
        ora     $7024,x                         ; F399 1D 24 70                 .$p
        ora     #$40                            ; F39C 09 40                    .@
        sta     $7024,x                         ; F39E 9D 24 70                 .$p
        jsr     LowerFixedEngine_Entry_F3D8     ; F3A1 20 D8 F3                  ..
        rts                                     ; F3A4 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F3A5:
        lda     #$04                            ; F3A5 A9 04                    ..
        clc                                     ; F3A7 18                       .
        adc     $58                             ; F3A8 65 58                    eX
        tax                                     ; F3AA AA                       .
        jmp     LowerFixedEngine_Entry_D7FC     ; F3AB 4C FC D7                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F3AE:
        ldx     $58                             ; F3AE A6 58                    .X
        lda     $7024,x                         ; F3B0 BD 24 70                 .$p
        and     #$80                            ; F3B3 29 80                    ).
        sta     $7024,x                         ; F3B5 9D 24 70                 .$p
        rts                                     ; F3B8 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F3B9:
        ldx     $58                             ; F3B9 A6 58                    .X
        lda     $70E4,x                         ; F3BB BD E4 70                 ..p
        and     #$BF                            ; F3BE 29 BF                    ).
        sta     $70E4,x                         ; F3C0 9D E4 70                 ..p
        rts                                     ; F3C3 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F3C4:
        ldx     $58                             ; F3C4 A6 58                    .X
        lda     $70E4,x                         ; F3C6 BD E4 70                 ..p
        ora     #$40                            ; F3C9 09 40                    .@
        sta     $70E4,x                         ; F3CB 9D E4 70                 ..p
        sta     $052A,x                         ; F3CE 9D 2A 05                 .*.
        lda     $7004,x                         ; F3D1 BD 04 70                 ..p
        jsr     LowerFixedEngine_Entry_F3D8     ; F3D4 20 D8 F3                  ..
        rts                                     ; F3D7 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F3D8:
        and     #$03                            ; F3D8 29 03                    ).
        asl     a                               ; F3DA 0A                       .
        tay                                     ; F3DB A8                       .
        ldx     $58                             ; F3DC A6 58                    .X
        lda     $6F64,x                         ; F3DE BD 64 6F                 .do
        clc                                     ; F3E1 18                       .
        adc     $D239,y                         ; F3E2 79 39 D2                 y9.
        sta     $6F64,x                         ; F3E5 9D 64 6F                 .do
        lda     $6F84,x                         ; F3E8 BD 84 6F                 ..o
        clc                                     ; F3EB 18                       .
        adc     $D23A,y                         ; F3EC 79 3A D2                 y:.
        sta     $6F84,x                         ; F3EF 9D 84 6F                 ..o
        rts                                     ; F3F2 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F3F3:
        ldy     #$FF                            ; F3F3 A0 FF                    ..
        ldx     #$00                            ; F3F5 A2 00                    ..
LowerFixedEngine_Branch_F3F7:
        iny                                     ; F3F7 C8                       .
        lsr     $5A                             ; F3F8 46 5A                    FZ
        bcc     LowerFixedEngine_Branch_F3F7    ; F3FA 90 FB                    ..
        sty     $5B                             ; F3FC 84 5B                    .[
        inx                                     ; F3FE E8                       .
LowerFixedEngine_Branch_F3FF:
        iny                                     ; F3FF C8                       .
        cpy     #$04                            ; F400 C0 04                    ..
        bcs     LowerFixedEngine_Branch_F409    ; F402 B0 05                    ..
        lsr     $5A                             ; F404 46 5A                    FZ
        bcc     LowerFixedEngine_Branch_F3FF    ; F406 90 F7                    ..
        inx                                     ; F408 E8                       .
LowerFixedEngine_Branch_F409:
        sty     $5C                             ; F409 84 5C                    .\
        rts                                     ; F40B 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F40C:
        ldx     $58                             ; F40C A6 58                    .X
        lda     $51                             ; F40E A5 51                    .Q
        cmp     $6F64,x                         ; F410 DD 64 6F                 .do
        rol     $5A                             ; F413 26 5A                    &Z
        lda     $6F84,x                         ; F415 BD 84 6F                 ..o
        cmp     $52                           ; F418 C5 52                    .R
        rol     $5A                             ; F41A 26 5A                    &Z
        lda     $6F64,x                         ; F41C BD 64 6F                 .do
        cmp     $51                             ; F41F C5 51                    .Q
        rol     $5A                             ; F421 26 5A                    &Z
        lda     $52                           ; F423 A5 52                    .R
        cmp     $6F84,x                         ; F425 DD 84 6F                 ..o
        rol     $5A                             ; F428 26 5A                    &Z
        lda     $5A                             ; F42A A5 5A                    .Z
        eor     #$0F                            ; F42C 49 0F                    I.
        and     #$0F                            ; F42E 29 0F                    ).
        sta     $5A                             ; F430 85 5A                    .Z
        rts                                     ; F432 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F433:
        lda     $6F64,y                         ; F433 B9 64 6F                 .do
        eor     $51,x                           ; F436 55 51                    UQ
        bpl     LowerFixedEngine_Branch_F451    ; F438 10 17                    ..
        lda     $6F64,y                         ; F43A B9 64 6F                 .do
        and     #$F0                            ; F43D 29 F0                    ).
        beq     LowerFixedEngine_Branch_F447    ; F43F F0 06                    ..
        lda     $51,x                           ; F441 B5 51                    .Q
        and     #$F0                            ; F443 29 F0                    ).
        bne     LowerFixedEngine_Branch_F451    ; F445 D0 0A                    ..
LowerFixedEngine_Branch_F447:
        lda     $6F64,y                         ; F447 B9 64 6F                 .do
        sec                                     ; F44A 38                       8
        sbc     $51,x                           ; F44B F5 51                    .Q
        bcc     LowerFixedEngine_Branch_F45E    ; F44D 90 0F                    ..
        bcs     LowerFixedEngine_Branch_F459    ; F44F B0 08                    ..
LowerFixedEngine_Branch_F451:
        lda     $6F64,y                         ; F451 B9 64 6F                 .do
        sec                                     ; F454 38                       8
        sbc     $51,x                           ; F455 F5 51                    .Q
        bcs     LowerFixedEngine_Branch_F45E    ; F457 B0 05                    ..
LowerFixedEngine_Branch_F459:
        eor     #$FF                            ; F459 49 FF                    I.
        clc                                     ; F45B 18                       .
        adc     #$01                            ; F45C 69 01                    i.
LowerFixedEngine_Branch_F45E:
        sta     $5D,x                           ; F45E 95 5D                    .]
        inx                                     ; F460 E8                       .
        tya                                     ; F461 98                       .
        clc                                     ; F462 18                       .
        adc     #$20                            ; F463 69 20                    i
        tay                                     ; F465 A8                       .
        rts                                     ; F466 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F467:
        lda     $7002                           ; F467 AD 02 70                 ..p
        and     #$03                            ; F46A 29 03                    ).
        asl     a                               ; F46C 0A                       .
        tax                                     ; F46D AA                       .
        lda     $6F62                           ; F46E AD 62 6F                 .bo
        clc                                     ; F471 18                       .
        adc     $F481,x                         ; F472 7D 81 F4                 }..
        sta     $51                             ; F475 85 51                    .Q
        lda     $6F82                           ; F477 AD 82 6F                 ..o
        clc                                     ; F47A 18                       .
        adc     $F482,x                         ; F47B 7D 82 F4                 }..
        sta     $52                           ; F47E 85 52                    .R
        rts                                     ; F480 60                       `
; ----------------------------------------------------------------------------
        db   $FF                             ; F481 FF                       .
        db   $00,$00,$FF,$01,$00,$00,$01     ; F482 00 00 FF 01 00 00 01     .......
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F489:
        lda     $7002                           ; F489 AD 02 70                 ..p
        and     #$03                            ; F48C 29 03                    ).
        asl     a                               ; F48E 0A                       .
        tax                                     ; F48F AA                       .
        lda     $6F62                           ; F490 AD 62 6F                 .bo
        clc                                     ; F493 18                       .
        adc     $F4A3,x                         ; F494 7D A3 F4                 }..
        sta     $51                             ; F497 85 51                    .Q
        lda     $6F82                           ; F499 AD 82 6F                 ..o
        clc                                     ; F49C 18                       .
        adc     $F4A4,x                         ; F49D 7D A4 F4                 }..
        sta     $52                           ; F4A0 85 52                    .R
        rts                                     ; F4A2 60                       `
; ----------------------------------------------------------------------------
        db   $01                             ; F4A3 01                       .
        db   $00,$00,$01,$FF,$00,$00,$FF     ; F4A4 00 00 01 FF 00 00 FF     .......
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F4AB:
        lda     #$0B                            ; F4AB A9 0B                    ..
        jsr     LowerFixedEngine_Entry_FF91     ; F4AD 20 91 FF                  ..
        lda     $1F                             ; F4B0 A5 1F                    ..
        ora     #$40                            ; F4B2 09 40                    .@
        sta     $1F                             ; F4B4 85 1F                    ..
LowerFixedEngine_Branch_F4B6:
        jsr     LowerFixedEngine_Entry_F510     ; F4B6 20 10 F5                  ..
        jsr     LowerFixedEngine_Entry_F4FD     ; F4B9 20 FD F4                  ..
        dec     $7F                             ; F4BC C6 7F                    ..
        lda     $7F                             ; F4BE A5 7F                    ..
        cmp     #$09                            ; F4C0 C9 09                    ..
        bcc     LowerFixedEngine_Branch_F4F0    ; F4C2 90 2C                    .,
        and     #$07                            ; F4C4 29 07                    ).
        bne     LowerFixedEngine_Branch_F4E0    ; F4C6 D0 18                    ..
        inc     $050B                           ; F4C8 EE 0B 05                 ...
        jsr     LowerFixedEngine_Entry_C62D     ; F4CB 20 2D C6                  -.
        lda     NextTextCharacter               ; F4CE AD 02 03                 ...
        clc                                     ; F4D1 18                       .
        adc     #$80                            ; F4D2 69 80                    i.
        sta     NextTextCharacter               ; F4D4 8D 02 03                 ...
        bcc     LowerFixedEngine_Branch_F4DC    ; F4D7 90 03                    ..
        inc     $0300                           ; F4D9 EE 00 03                 ...
LowerFixedEngine_Branch_F4DC:
        lda     #$00                            ; F4DC A9 00                    ..
        sta     $82                             ; F4DE 85 82                    ..
LowerFixedEngine_Branch_F4E0:
        lda     $7F                             ; F4E0 A5 7F                    ..
        and     #$0F                            ; F4E2 29 0F                    ).
        bne     LowerFixedEngine_Branch_F4B6    ; F4E4 D0 D0                    ..
        lda     $7E                             ; F4E6 A5 7E                    .~
        clc                                     ; F4E8 18                       .
        adc     #$10                            ; F4E9 69 10                    i.
        sta     $7E                             ; F4EB 85 7E                    .~
        jmp     LowerFixedEngine_Branch_F4B6    ; F4ED 4C B6 F4                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F4F0:
        inc     $050B                           ; F4F0 EE 0B 05                 ...
        jsr     LowerFixedEngine_Entry_C62D     ; F4F3 20 2D C6                  -.
        lda     $1F                             ; F4F6 A5 1F                    ..
        and     #$BF                            ; F4F8 29 BF                    ).
        sta     $1F                             ; F4FA 85 1F                    ..
        rts                                     ; F4FC 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F4FD:
        ldx     #$00                            ; F4FD A2 00                    ..
        ldy     $82                             ; F4FF A4 82                    ..
LowerFixedEngine_Branch_F501:
        lda     $053E,x                         ; F501 BD 3E 05                 .>.
        sta     $0303,y                         ; F504 99 03 03                 ...
        iny                                     ; F507 C8                       .
        inx                                     ; F508 E8                       .
        cpx     #$10                            ; F509 E0 10                    ..
        bne     LowerFixedEngine_Branch_F501    ; F50B D0 F4                    ..
        sty     $82                             ; F50D 84 82                    ..
        rts                                     ; F50F 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F510:
        lda     #$00                            ; F510 A9 00                    ..
        sta     $7B                             ; F512 85 7B                    .{
LowerFixedEngine_Branch_F514:
        lda     #$03                            ; F514 A9 03                    ..
        sta     $7C                             ; F516 85 7C                    .|
LowerFixedEngine_Branch_F518:
        ldx     $7D                             ; F518 A6 7D                    .}
        ldy     $7E                             ; F51A A4 7E                    .~
        jsr     LowerFixedEngine_Entry_D28C     ; F51C 20 8C D2                  ..
        stx     $80                             ; F51F 86 80                    ..
        sty     $81                             ; F521 84 81                    ..
        ldx     $7B                             ; F523 A6 7B                    .{
        jsr     LowerFixedEngine_Entry_F566     ; F525 20 66 F5                  f.
        lda     $80                             ; F528 A5 80                    ..
        jsr     LowerFixedEngine_Entry_F566     ; F52A 20 66 F5                  f.
        lda     $7C                             ; F52D A5 7C                    .|
        cmp     #$01                            ; F52F C9 01                    ..
        beq     LowerFixedEngine_Branch_F544    ; F531 F0 11                    ..
        lda     $81                             ; F533 A5 81                    ..
        jsr     LowerFixedEngine_Entry_F566     ; F535 20 66 F5                  f.
        lda     $7D                             ; F538 A5 7D                    .}
        clc                                     ; F53A 18                       .
        adc     #$06                            ; F53B 69 06                    i.
        sta     $7D                             ; F53D 85 7D                    .}
        dec     $7C                             ; F53F C6 7C                    .|
        jmp     LowerFixedEngine_Branch_F518    ; F541 4C 18 F5                 L..
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F544:
        inc     $7E                             ; F544 E6 7E                    .~
        inc     $7E                             ; F546 E6 7E                    .~
        lda     $7D                             ; F548 A5 7D                    .}
        sec                                     ; F54A 38                       8
        sbc     #$0C                            ; F54B E9 0C                    ..
        sta     $7D                             ; F54D 85 7D                    .}
        inc     $7B                             ; F54F E6 7B                    .{
        lda     $7B                             ; F551 A5 7B                    .{
        cmp     #$08                            ; F553 C9 08                    ..
        bne     LowerFixedEngine_Branch_F514    ; F555 D0 BD                    ..
        lda     $7D                             ; F557 A5 7D                    .}
        clc                                     ; F559 18                       .
        adc     #$10                            ; F55A 69 10                    i.
        sta     $7D                             ; F55C 85 7D                    .}
        lda     $7E                             ; F55E A5 7E                    .~
        sec                                     ; F560 38                       8
        sbc     #$10                            ; F561 E9 10                    ..
        sta     $7E                             ; F563 85 7E                    .~
        rts                                     ; F565 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_F566:
        tay                                     ; F566 A8                       .
        lda     $F573,y                         ; F567 B9 73 F5                 .s.
        lsr     a                               ; F56A 4A                       J
        rol     $053E,x                         ; F56B 3E 3E 05                 >>.
        lsr     a                               ; F56E 4A                       J
        rol     $0546,x                         ; F56F 3E 46 05                 >F.
        rts                                     ; F572 60                       `
; ----------------------------------------------------------------------------
        db   $00,$01,$02,$02,$02,$01,$03,$02 ; F573 00 01 02 02 02 01 03 02  ........
        db   $02,$01,$00,$02,$02,$02,$02,$02 ; F57B 02 01 00 02 02 02 02 02  ........
        db   $02,$02,$02,$02,$01,$01,$00     ; F583 02 02 02 02 01 01 00     .......
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F58A:
        rts                                     ; F58A 60                       `
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_F58B:
        ldx     #$03                            ; F58B A2 03                    ..
LowerFixedEngine_Branch_F58D:
        lda     $F5AC,x                         ; F58D BD AC F5                 ...
        sta     $00,x                           ; F590 95 00                    ..
        dex                                     ; F592 CA                       .
        bpl     LowerFixedEngine_Branch_F58D    ; F593 10 F8                    ..
        ldy     #$00                            ; F595 A0 00                    ..
LowerFixedEngine_Branch_F597:
        lda     ($02),y                         ; F597 B1 02                    ..
        sta     ($00),y                         ; F599 91 00                    ..
        inc     $00                             ; F59B E6 00                    ..
        bne     LowerFixedEngine_Branch_F5A1    ; F59D D0 02                    ..
        inc     $01                             ; F59F E6 01                    ..
LowerFixedEngine_Branch_F5A1:
        inc     $02                             ; F5A1 E6 02                    ..
        bne     LowerFixedEngine_Branch_F5A7    ; F5A3 D0 02                    ..
        inc     $03                             ; F5A5 E6 03                    ..
LowerFixedEngine_Branch_F5A7:
        cmp     #$FF                            ; F5A7 C9 FF                    ..
        bne     LowerFixedEngine_Branch_F597    ; F5A9 D0 EC                    ..
        rts                                     ; F5AB 60                       `
; ----------------------------------------------------------------------------
        db   $00,$78,$B0,$F5,$04,$02,$26,$0A ; F5AC 00 78 B0 F5 04 02 26 0A  .x....&.
        db   $08,$00,$2A,$20,$1E,$1C,$00,$08 ; F5B4 08 00 2A 20 1E 1C 00 08  ..* ....
        db   $24,$02,$0E,$1E,$1C,$00,$22,$2A ; F5BC 24 02 0E 1E 1C 00 22 2A  $....."*
        db   $0A,$26,$28,$00,$3A,$3C,$F5,$08 ; F5C4 0A 26 28 00 3A 3C F5 08  .&(.:<..
        db   $24,$02,$0E,$1E,$1C,$00,$22,$2A ; F5CC 24 02 0E 1E 1C 00 22 2A  $....."*
        db   $0A,$26,$28,$00,$3A,$3C,$F1     ; F5D4 0A 26 28 00 3A 3C F1     .&(.:<.
; ----------------------------------------------------------------------------
        rol     $28                             ; F5DB 26 28                    &(
        db   $02,$0C,$0C,$F4,$26,$06,$0A,$1C ; F5DD 02 0C 0C F4 26 06 0A 1C  ....&...
        db   $02,$24,$12,$1E,$FE,$32,$2A,$14 ; F5E5 02 24 12 1E FE 32 2A 14  .$...2*.
        db   $12,$00,$10,$1E,$24,$12,$12,$F3 ; F5ED 12 00 10 1E 24 12 12 F3  ....$...
        db   $1A,$1E,$1C,$26,$28,$0A,$24,$00 ; F5F5 1A 1E 1C 26 28 0A 24 00  ...&(.$.
        db   $08,$0A,$26,$12,$0E,$1C,$FE,$02 ; F5FD 08 0A 26 12 0E 1C FE 02  ..&.....
        db   $16,$12,$24,$02,$00,$28,$1E,$24 ; F605 16 12 24 02 00 28 1E 24  ..$..(.$
        db   $12,$32,$02,$1A,$02,$F3,$1A,$2A ; F60D 12 32 02 1A 02 F3 1A 2A  .2.....*
        db   $26,$12,$06,$FE,$16,$1E,$12,$06 ; F615 26 12 06 FE 16 1E 12 06  &.......
        db   $10,$12,$00                     ; F61D 10 12 00                 ...
; ----------------------------------------------------------------------------
        rol     $2A                             ; F620 26 2A                    &*
        asl     $3212                           ; F622 0E 12 32                 ..2
        db   $02,$1A,$02,$F3,$06,$10,$12,$0A ; F625 02 1A 02 F3 06 10 12 0A  ........
        db   $0C,$00,$20,$24,$1E,$0E,$24,$02 ; F62D 0C 00 20 24 1E 0E 24 02  .. $..$.
        db   $1A,$1A,$0A,$24,$26,$FE,$16,$40 ; F635 1A 1A 0A 24 26 FE 16 40  ...$&..@
        db   $1C,$02,$12,$28,$1E,$10,$00,$00 ; F63D 1C 02 12 28 1E 10 00 00  ...(....
        db   $1A,$40,$32,$02,$1A,$02,$1C,$02 ; F645 1A 40 32 02 1A 02 1C 02  .@2.....
        db   $F3,$20,$24,$1E,$0E,$24,$02,$1A ; F64D F3 20 24 1E 0E 24 02 1A  . $..$..
        db   $1A,$0A,$24,$26,$FE,$16,$40,$1A ; F655 1A 0A 24 26 FE 16 40 1A  ..$&..@.
        db   $02,$26,$2A,$28,$02,$00,$00,$1A ; F65D 02 26 2A 28 02 00 00 1A  .&*(....
        db   $40,$26,$02,$12,$28,$1E,$10,$00 ; F665 40 26 02 12 28 1E 10 00  @&..(...
        db   $00,$28,$40,$1C,$02,$24,$12,$28 ; F66D 00 28 40 1C 02 24 12 28  .(@..$.(
        db   $02,$F1,$28,$40,$12,$16,$0A,$08 ; F675 02 F1 28 40 12 16 0A 08  ..(@....
        db   $02,$00,$00,$10,$40,$26,$12,$1C ; F67D 02 00 00 10 40 26 12 1C  ....@&..
        db   $1E,$10,$02,$24,$02,$00,$00,$16 ; F685 1E 10 02 24 02 00 00 16  ...$....
        db   $40,$02,$26,$02,$1C,$1E,$F3,$26 ; F68D 40 02 26 02 1C 1E F3 26  @.&....&
        db   $1E,$2A,$1C,$08,$00,$20,$24,$1E ; F695 1E 2A 1C 08 00 20 24 1E  .*... $.
        db   $0E,$24,$02,$1A,$1A,$0A,$24,$26 ; F69D 0E 24 02 1A 1A 0A 24 26  .$....$&
        db   $FE,$1A,$40,$28,$02,$16,$12,$1A ; F6A5 FE 1A 40 28 02 16 12 1A  ..@(....
        db   $1E,$28,$1E,$00,$00,$28,$40,$0C ; F6AD 1E 28 1E 00 00 28 40 0C  .(...(@.
        db   $2A,$16,$2A,$34,$02,$2E,$02,$F3 ; F6B5 2A 16 2A 34 02 2E 02 F3  *.*4....
        db   $0E,$24,$02,$20,$10,$12,$06,$00 ; F6BD 0E 24 02 20 10 12 06 00  .$. ....
        db   $08,$0A,$26,$12,$0E,$1C,$0A,$24 ; F6C5 08 0A 26 12 0E 1C 0A 24  ..&....$
        db   $26,$FE,$28,$40,$32,$02,$26,$2A ; F6CD 26 FE 28 40 32 02 26 2A  &.(@2.&*
        db   $1C,$1E,$00,$00,$26,$40,$0C,$2A ; F6D5 1C 1E 00 00 26 40 0C 2A  ....&@.*
        db   $08,$02,$04,$02,$F3,$26,$06,$0A ; F6DD 08 02 04 02 F3 26 06 0A  .....&..
        db   $1C,$02,$24,$12,$1E,$00,$02,$26 ; F6E5 1C 02 24 12 1E 00 02 26  ..$....&
        db   $26,$12,$26,$28,$02,$1C,$28,$26 ; F6ED 26 12 26 28 02 1C 28 26  &.&(..(&
        db   $FE,$16,$40,$1E,$24,$12,$1E,$00 ; F6F5 FE 16 40 1E 24 12 1E 00  ..@.$...
        db   $00,$02,$40,$02,$26,$02,$1A,$12 ; F6FD 00 02 40 02 26 02 1A 12  ..@.&...
        db   $00,$00,$0C,$40,$12,$26,$10,$12 ; F705 00 00 0C 40 12 26 10 12  ...@.&..
        db   $16,$02,$2E,$02,$F1,$26,$40,$2A ; F70D 16 02 2E 02 F1 26 40 2A  .....&@*
        db   $0A,$1C,$1E,$00,$00,$26,$40,$26 ; F715 0A 1C 1E 00 00 26 40 26  .....&@&
        db   $2A,$0E,$12,$1A,$2A,$24,$02,$F3 ; F71D 2A 0E 12 1A 2A 24 02 F3  *...*$..
        db   $08,$12,$24,$0A,$06,$28,$1E,$24 ; F725 08 12 24 0A 06 28 1E 24  ..$..(.$
        db   $FE,$16,$1E,$12,$06,$10,$12,$00 ; F72D FE 16 1E 12 06 10 12 00  ........
        db   $1C,$02,$16,$02,$1A,$2A,$24,$02 ; F735 1C 02 16 02 1A 2A 24 02  .....*$.
        db   $F3,$20,$24,$1E,$08,$2A,$06,$0A ; F73D F3 20 24 1E 08 2A 06 0A  . $..*..
        db   $24,$FE,$32,$2A,$16,$12,$1C,$1E ; F745 24 FE 32 2A 16 12 1C 1E  $.2*....
        db   $04,$2A,$00,$06,$10,$12,$08,$02 ; F74D 04 2A 00 06 10 12 08 02  .*......
        db   $F3,$20,$2A,$04,$18,$12,$26,$10 ; F755 F3 20 2A 04 18 12 26 10  . *...&.
        db   $0A,$24,$FE,$32,$02,$26,$2A,$10 ; F75D 0A 24 FE 32 02 26 2A 10  .$.2.&*.
        db   $12,$24,$1E,$00,$0C,$2A,$16,$2A ; F765 12 24 1E 00 0C 2A 16 2A  .$...*.*
        db   $26,$10,$12,$1A,$02,$F9,$00,$00 ; F76D 26 10 12 1A 02 F9 00 00  &.......
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; F775 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; F77D 00 00 00 00 00 00 00 00  ........
        db   $00,$42,$44,$F0,$08,$24,$02,$0E ; F785 00 42 44 F0 08 24 02 0E  .BD..$..
        db   $1E,$1C,$00,$2E,$02,$24,$24,$12 ; F78D 1E 1C 00 2E 02 24 24 12  .....$$.
        db   $1E,$24,$00,$3A,$3C,$F1,$26,$28 ; F795 1E 24 00 3A 3C F1 26 28  .$.:<.&(
        db   $02,$0C,$0C,$F4,$0A,$1C,$0E,$18 ; F79D 02 0C 0C F4 0A 1C 0E 18  ........
        db   $12,$26,$10,$00,$28,$0A,$30,$28 ; F7A5 12 26 10 00 28 0A 30 28  .&..(.0(
        db   $FE,$26,$28,$2A,$08,$12,$1E,$00 ; F7AD FE 26 28 2A 08 12 1E 00  .&(*....
        db   $04,$2A,$04,$1E,$1E,$F3,$06,$10 ; F7B5 04 2A 04 1E 1E F3 06 10  .*......
        db   $12,$0A,$0C,$00,$20,$24,$1E,$0E ; F7BD 12 0A 0C 00 20 24 1E 0E  .... $..
        db   $24,$02,$1A,$1A,$0A,$24,$FE,$1A ; F7C5 24 02 1A 1A 0A 24 FE 1A  $....$..
        db   $02,$26,$02,$32,$1E,$26,$10,$12 ; F7CD 02 26 02 32 1E 26 10 12  .&.2.&..
        db   $00,$26,$02,$12,$28,$1E,$10,$F3 ; F7D5 00 26 02 12 28 1E 10 F3  .&..(...
        db   $20,$24,$1E,$0E,$24,$02,$1A,$1A ; F7DD 20 24 1E 0E 24 02 1A 1A   $..$...
        db   $0A,$24,$26,$FE,$1A,$02,$26,$02 ; F7E5 0A 24 26 FE 1A 02 26 02  .$&...&.
        db   $10,$12,$24,$1E,$00,$1C,$12,$12 ; F7ED 10 12 24 1E 00 1C 12 12  ..$.....
        db   $F1,$26,$2A,$26,$2A,$1A,$2A,$00 ; F7F5 F1 26 2A 26 2A 1A 2A 00  .&*&*.*.
        db   $12,$12,$08,$02,$F1,$1C,$1E,$04 ; F7FD 12 12 08 02 F1 1C 1E 04  ........
        db   $2A,$10,$12,$24,$1E,$00,$32,$02 ; F805 2A 10 12 24 1E 00 32 02  *..$..2.
        db   $1A,$02,$08,$02,$F1,$10,$12,$28 ; F80D 1A 02 08 02 F1 10 12 28  .......(
        db   $1E,$1A,$12,$00,$26,$02,$12,$28 ; F815 1E 1A 12 00 26 02 12 28  ....&..(
        db   $1E,$10,$F3,$20,$24,$1E,$14,$0A ; F81D 1E 10 F3 20 24 1E 14 0A  ... $...
        db   $06,$28,$00,$06,$1E,$1E,$24,$08 ; F825 06 28 00 06 1E 1E 24 08  .(....$.
        db   $12,$1C,$02,$28,$1E,$24,$FE,$26 ; F82D 12 1C 02 28 1E 24 FE 26  ...(.$.&
        db   $10,$12,$1C,$14,$12,$00,$0C,$2A ; F835 10 12 1C 14 12 00 0C 2A  .......*
        db   $28,$02,$1A,$12,$F3,$02,$26,$26 ; F83D 28 02 1A 12 F3 02 26 26  (.....&&
        db   $12,$26,$28,$02,$1C,$28,$26,$FE ; F845 12 26 28 02 1C 28 26 FE  .&(..(&.
        db   $02,$28,$26,$2A,$16,$1E,$00,$26 ; F84D 02 28 26 2A 16 1E 00 26  .(&*...&
        db   $2A,$1A,$12,$32,$1E,$26,$10,$12 ; F855 2A 1A 12 32 1E 26 10 12  *..2.&..
        db   $F1,$32,$1E,$26,$10,$12,$16,$1E ; F85D F1 32 1E 26 10 12 16 1E  .2.&....
        db   $00,$10,$02,$28,$02,$1C,$1E,$F3 ; F865 00 10 02 28 02 1C 1E F3  ...(....
        db   $02,$26,$26,$12,$26,$28,$02,$1C ; F86D 02 26 26 12 26 28 02 1C  .&&.&(..
        db   $28,$00,$08,$12,$24,$0A,$06,$28 ; F875 28 00 08 12 24 0A 06 28  (...$..(
        db   $1E,$24,$26,$FE,$28,$1E,$0E,$1E ; F87D 1E 24 26 FE 28 1E 0E 1E  .$&.(...
        db   $00,$1C,$02,$24,$12,$28,$02,$F1 ; F885 00 1C 02 24 12 28 02 F1  ...$.(..
        db   $16,$0A,$1C,$12,$06,$10,$12,$00 ; F88D 16 0A 1C 12 06 10 12 00  ........
        db   $1A,$02,$26,$2A,$28,$02,$F3,$02 ; F895 1A 02 26 2A 28 02 F3 02  ..&*(...
        db   $26,$26,$12,$26,$28,$02,$1C,$28 ; F89D 26 26 12 26 28 02 1C 28  &&.&(..(
        db   $00,$20,$24,$1E,$08,$2A,$06,$0A ; F8A5 00 20 24 1E 08 2A 06 0A  . $..*..
        db   $24,$26,$FE,$32,$1E,$26,$10,$12 ; F8AD 24 26 FE 32 1E 26 10 12  $&.2.&..
        db   $1C,$1E,$24,$12,$00,$32,$02,$1A ; F8B5 1C 1E 24 12 00 32 02 1A  ..$..2..
        db   $02,$0E,$12,$26,$10,$12,$F1,$08 ; F8BD 02 0E 12 26 10 12 F1 08  ...&....
        db   $02,$12,$34,$1E,$00,$26,$10,$12 ; F8C5 02 12 34 1E 00 26 10 12  ..4..&..
        db   $1A,$02,$1A,$2A,$24,$02,$F1,$26 ; F8CD 1A 02 1A 2A 24 02 F1 26  ...*$..&
        db   $02,$08,$02,$1E,$00,$32,$02,$10 ; F8D5 02 08 02 1E 00 32 02 10  .....2..
        db   $02,$0E,$12,$F3,$26,$20,$0A,$06 ; F8DD 02 0E 12 F3 26 20 0A 06  ....& ..
        db   $12,$02,$18,$00,$06,$1E,$1E,$20 ; F8E5 12 02 18 00 06 1E 1E 20  .......
        db   $0A,$24,$02,$28,$1E,$24,$26,$FE ; F8ED 0A 24 02 28 1E 24 26 FE  .$.(.$&.
        db   $28,$2A,$1C,$0A,$1E,$00,$1A,$1E ; F8F5 28 2A 1C 0A 1E 00 1A 1E  (*......
        db   $24,$12,$28,$02,$F1,$20,$02,$2A ; F8FD 24 12 28 02 F1 20 02 2A  $.(.. .*
        db   $18,$00,$04,$1E,$2E,$18,$0A,$24 ; F905 18 00 04 1E 2E 18 0A 24  .......$
        db   $F1,$20,$02,$2A,$18,$00,$10,$02 ; F90D F1 20 02 2A 18 00 10 02  . .*....
        db   $1C,$08,$0A,$18,$1A,$02,$1C,$F1 ; F915 1C 08 0A 18 1A 02 1C F1  ........
        db   $06,$10,$0A,$24,$12,$0A,$00,$10 ; F91D 06 10 0A 24 12 0A 00 10  ...$....
        db   $02,$26,$26,$1E,$1C,$F1,$24,$1E ; F925 02 26 26 1E 1C F1 24 1E  .&&...$.
        db   $04,$0A,$24,$28,$00,$14,$0A,$02 ; F92D 04 0A 24 28 00 14 0A 02  ..$(....
        db   $24,$2A,$18,$08,$F3,$26,$2A,$20 ; F935 24 2A 18 08 F3 26 2A 20  $*...&*
        db   $0A,$24,$2C,$12,$26,$1E,$24,$FE ; F93D 0A 24 2C 12 26 1E 24 FE  .$,.&.$.
        db   $16,$0A,$12,$14,$12,$00,$10,$1E ; F945 16 0A 12 14 12 00 10 1E  ........
        db   $1C,$08,$02,$F3,$26,$20,$0A,$06 ; F94D 1C 08 02 F3 26 20 0A 06  ....& ..
        db   $12,$02,$18,$00,$28,$10,$02,$1C ; F955 12 02 18 00 28 10 02 1C  ....(...
        db   $16,$26,$00,$28,$1E,$FE,$02,$22 ; F95D 16 26 00 28 1E FE 02 22  .&.(..."
        db   $2A,$02,$00,$1A,$02,$24,$12,$1C ; F965 2A 02 00 1A 02 24 12 1C  *....$..
        db   $0A,$F1,$28,$1E,$16,$2A,$1A,$02 ; F96D 0A F1 28 1E 16 2A 1A 02  ..(..*..
        db   $00,$26,$10,$1E,$28,$0A,$1C,$00 ; F975 00 26 10 1E 28 0A 1C 00  .&..(...
        db   $20,$2A,$04,$18,$12,$26,$10,$12 ; F97D 20 2A 04 18 12 26 10 12   *...&..
        db   $1C,$0E,$F1,$00,$00,$00,$00,$00 ; F985 1C 0E F1 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; F98D 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$06 ; F995 00 00 00 00 00 00 00 06  ........
        db   $1E,$40,$3E,$00,$18,$28,$08,$F1 ; F99D 1E 40 3E 00 18 28 08 F1  .@>..(..
        db   $2E,$1E,$24,$16,$00,$10,$1E,$2A ; F9A5 2E 1E 24 16 00 10 1E 2A  ..$....*
        db   $26,$0A,$00,$2A,$40,$26,$40,$02 ; F9AD 26 0A 00 2A 40 26 40 02  &..*@&@.
        db   $40,$F3,$08,$12,$24,$0A,$06,$28 ; F9B5 40 F3 08 12 24 0A 06 28  @...$..(
        db   $1E,$24,$FE,$1A,$02,$1C,$02,$04 ; F9BD 1E 24 FE 1A 02 1C 02 04  .$......
        db   $2A,$00,$32,$02,$1A,$02,$1C,$02 ; F9C5 2A 00 32 02 1A 02 1C 02  *.2.....
        db   $F3,$20,$24,$1E,$08,$2A,$06,$0A ; F9CD F3 20 24 1E 08 2A 06 0A  . $..*..
        db   $24,$FE,$32,$2A,$16,$12,$1C,$1E ; F9D5 24 FE 32 2A 16 12 1C 1E  $.2*....
        db   $04,$2A,$00,$06,$10,$12,$08,$02 ; F9DD 04 2A 00 06 10 12 08 02  .*......
        db   $F3,$20,$2A,$04,$18,$12,$26,$10 ; F9E5 F3 20 2A 04 18 12 26 10  . *...&.
        db   $0A,$24,$FE,$32,$02,$26,$2A,$10 ; F9ED 0A 24 FE 32 02 26 2A 10  .$.2.&*.
        db   $12,$24,$1E,$00,$0C,$2A,$16,$2A ; F9F5 12 24 1E 00 0C 2A 16 2A  .$...*.*
        db   $26,$10,$12,$1A,$02,$F3,$06,$1E ; F9FD 26 10 12 1A 02 F3 06 1E  &.......
        db   $20,$32,$24,$12,$0E,$10,$28,$00 ; FA05 20 32 24 12 0E 10 28 00   2$...(.
        db   $36,$38,$00,$46,$48,$48,$4C,$FE ; FA0D 36 38 00 46 48 48 4C FE  68.FHHL.
        db   $0A,$1C,$12,$30,$00,$06,$1E,$24 ; FA15 0A 1C 12 30 00 06 1E 24  ...0...$
        db   $20,$1E,$24,$02,$28,$12,$1E,$1C ; FA1D 20 1E 24 02 28 12 1E 1C   .$.(...
        db   $F3,$04,$02,$26,$0A,$08,$00,$2A ; FA25 F3 04 02 26 0A 08 00 2A  ...&...*
        db   $20,$1E,$1C,$00,$08,$24,$02,$0E ; FA2D 20 1E 1C 00 08 24 02 0E   ....$..
        db   $1E,$1C,$00,$22,$2A,$0A,$26,$28 ; FA35 1E 1C 00 22 2A 0A 26 28  ..."*.&(
        db   $00,$3A,$3C,$F5,$06,$1E,$20,$32 ; FA3D 00 3A 3C F5 06 1E 20 32  .:<... 2
        db   $24,$12,$0E,$10,$28,$26,$00,$36 ; FA45 24 12 0E 10 28 26 00 36  $...(&.6
        db   $38,$00,$46,$48,$48,$4A,$FE,$02 ; FA4D 38 00 46 48 48 4A FE 02  8.FHHJ..
        db   $24,$1A,$1E,$24,$00,$20,$24,$1E ; FA55 24 1A 1E 24 00 20 24 1E  $..$. $.
        db   $14,$0A,$06,$28,$FE,$04,$12,$24 ; FA5D 14 0A 06 28 FE 04 12 24  ...(...$
        db   $08,$00,$26,$28,$2A,$08,$12,$1E ; FA65 08 00 26 28 2A 08 12 1E  ..&(*...
        db   $FE,$06,$10,$2A,$1C,$00,$26,$1E ; FA6D FE 06 10 2A 1C 00 26 1E  ...*..&.
        db   $0C,$28,$FE,$0A,$1C,$12,$30,$00 ; FA75 0C 28 FE 0A 1C 12 30 00  .(....0.
        db   $06,$1E,$24,$20,$1E,$24,$02,$28 ; FA7D 06 1E 24 20 1E 24 02 28  ..$ .$.(
        db   $12,$1E,$1C,$FE,$00,$F1,$1A,$2A ; FA85 12 1E 1C FE 00 F1 1A 2A  .......*
        db   $26,$12,$06,$00,$06,$1E,$20,$32 ; FA8D 26 12 06 00 06 1E 20 32  &..... 2
        db   $24,$12,$0E,$10,$28,$00,$36,$38 ; FA95 24 12 0E 10 28 00 36 38  $...(.68
        db   $00,$46,$48,$48,$4A,$FE,$16,$1E ; FA9D 00 46 48 48 4A FE 16 1E  .FHHJ...
        db   $12,$06,$10,$12,$00,$26,$2A,$0E ; FAA5 12 06 10 12 00 26 2A 0E  .....&*.
        db   $12,$32,$02,$1A,$02,$FE,$00,$F6 ; FAAD 12 32 02 1A 02 FE 00 F6  .2......
        db   $28,$10,$0A,$00,$0A,$1C,$08,$F7 ; FAB5 28 10 0A 00 0A 1C 08 F7  (.......
        db   $FF                             ; FABD FF                       .
; ----------------------------------------------------------------------------
LowerFixedEngine_Branch_FABE:
        jsr     LowerFixedEngine_Entry_C5AF     ; FABE 20 AF C5                  ..
        lda     #$10                            ; FAC1 A9 10                    ..
        sta     PPUADDR                         ; FAC3 8D 06 20                 ..
        sta     PPUADDR                         ; FAC6 8D 06 20                 ..
        lda     Bank0F_PpuUploadPointers        ; FAC9 AD 6C FB                 .l.
        sta     $00                             ; FACC 85 00                    ..
        lda     $FB6D                           ; FACE AD 6D FB                 .m.
        sta     $01                             ; FAD1 85 01                    ..
        ldx     #$00                            ; FAD3 A2 00                    ..
        lda     #$80                            ; FAD5 A9 80                    ..
        sta     $02                             ; FAD7 85 02                    ..
        ldy     #$00                            ; FAD9 A0 00                    ..
        lda     $02                             ; FADB A5 02                    ..
        and     $7800,x                         ; FADD 3D 00 78                 =.x
        beq     $FAEA                           ; FAE0 F0 08                    ..
        lda     ($00),y                         ; FAE2 B1 00                    ..
        inc     $00                             ; FAE4 E6 00                    ..
        bne     $FAEA                           ; FAE6 D0 02                    ..
        inc     $01                             ; FAE8 E6 01                    ..
        sta     PPUDATA                         ; FAEA 8D 07 20                 ..
        lsr     $02                             ; FAED 46 02                    F.
        bne     $FADB                           ; FAEF D0 EA                    ..
        inx                                     ; FAF1 E8                       .
        cpx     #$84                            ; FAF2 E0 84                    ..
        bne     $FAD5                           ; FAF4 D0 DF                    ..
        lda     #$20                            ; FAF6 A9 20                    .
        sta     PPUADDR                         ; FAF8 8D 06 20                 ..
        lda     #$00                            ; FAFB A9 00                    ..
        sta     PPUADDR                         ; FAFD 8D 06 20                 ..
        ldy     #$0E                            ; FB00 A0 0E                    ..
        ldx     #$20                            ; FB02 A2 20                    .
        sta     PPUDATA                         ; FB04 8D 07 20                 ..
        dex                                     ; FB07 CA                       .
        bne     $FB04                           ; FB08 D0 FA                    ..
        dey                                     ; FB0A 88                       .
        bne     $FB02                           ; FB0B D0 F5                    ..
        lda     $FB6E                           ; FB0D AD 6E FB                 .n.
        sta     $00                             ; FB10 85 00                    ..
        lda     $FB6F                           ; FB12 AD 6F FB                 .o.
        sta     $01                             ; FB15 85 01                    ..
        lda     #$80                            ; FB17 A9 80                    ..
        sta     $02                             ; FB19 85 02                    ..
        cpy     #$24                            ; FB1B C0 24                    .$
        bcs     $FB26                           ; FB1D B0 07                    ..
        lda     $02                             ; FB1F A5 02                    ..
        and     Bank0F_PpuUploadMasks,y         ; FB21 39 69 FC                 9i.
        beq     $FB2E                           ; FB24 F0 08                    ..
        lda     ($00,x)                         ; FB26 A1 00                    ..
        inc     $00                             ; FB28 E6 00                    ..
        bne     $FB2E                           ; FB2A D0 02                    ..
        inc     $01                             ; FB2C E6 01                    ..
        sta     PPUDATA                         ; FB2E 8D 07 20                 ..
        lsr     $02                             ; FB31 46 02                    F.
        bne     $FB1B                           ; FB33 D0 E6                    ..
        iny                                     ; FB35 C8                       .
        cpy     #$38                            ; FB36 C0 38                    .8
        bne     $FB17                           ; FB38 D0 DD                    ..
        ldy     #$40                            ; FB3A A0 40                    .@
        lda     #$0B                            ; FB3C A9 0B                    ..
        sta     PPUDATA                         ; FB3E 8D 07 20                 ..
        lda     #$0C                            ; FB41 A9 0C                    ..
        sta     PPUDATA                         ; FB43 8D 07 20                 ..
        dey                                     ; FB46 88                       .
        bne     $FB3C                           ; FB47 D0 F3                    ..
        lda     #$23                            ; FB49 A9 23                    .#
        sta     PPUADDR                         ; FB4B 8D 06 20                 ..
        lda     #$DE                            ; FB4E A9 DE                    ..
        sta     PPUADDR                         ; FB50 8D 06 20                 ..
        lda     Bank0F_PpuAttributeData,y       ; FB53 B9 57 FC                 .W.
        sta     PPUDATA                         ; FB56 8D 07 20                 ..
        iny                                     ; FB59 C8                       .
        cpy     #$12                            ; FB5A C0 12                    ..
        bne     $FB53                           ; FB5C D0 F5                    ..
        ldy     #$10                            ; FB5E A0 10                    ..
        lda     #$00                            ; FB60 A9 00                    ..
        sta     PPUDATA                         ; FB62 8D 07 20                 ..
        dey                                     ; FB65 88                       .
        bne     $FB60                           ; FB66 D0 F8                    ..
        jsr     LowerFixedEngine_Entry_C58F     ; FB68 20 8F C5                  ..
        rts                                     ; FB6B 60                       `
; ----------------------------------------------------------------------------
Bank0F_PpuUploadPointers:
        db   $8D                             ; FB6C 8D                       .
        db   $FC                             ; FB6D FC                       .
        db   $70                             ; FB6E 70                       p
        db   $FB                             ; FB6F FB                       .
Bank0F_PpuTileStream:
        db   $1D,$22,$1D,$1E,$1F,$20,$21,$22 ; FB70 1D 22 1D 1E 1F 20 21 22  ."... !"
        db   $23,$24,$25,$26,$27,$28,$29,$2A ; FB78 23 24 25 26 27 28 29 2A  #$%&'()*
        db   $2B,$2C,$2D,$2E,$2F,$30,$31,$3E ; FB80 2B 2C 2D 2E 2F 30 31 3E  +,-./01>
        db   $3F,$32,$33,$34,$35,$36,$37,$38 ; FB88 3F 32 33 34 35 36 37 38  ?2345678
        db   $39,$36,$40,$3A,$3B,$3C,$36,$36 ; FB90 39 36 40 3A 3B 3C 36 36  96@:;<66
        db   $36,$36,$36,$36,$36,$41,$3D,$36 ; FB98 36 36 36 36 36 41 3D 36  66666A=6
        db   $36,$36,$36,$36,$36,$36,$36,$36 ; FBA0 36 36 36 36 36 36 36 36  66666666
        db   $40,$18,$19,$16,$16,$16,$16,$16 ; FBA8 40 18 19 16 16 16 16 16  @.......
        db   $16,$16,$16,$16,$16,$16,$1B,$0D ; FBB0 16 16 16 16 16 16 1B 0D  ........
        db   $0E,$0D,$0E,$0F,$10,$11,$12,$0D ; FBB8 0E 0D 0E 0F 10 11 12 0D  ........
        db   $0E,$0D,$0E,$0F,$10,$11,$12,$0F ; FBC0 0E 0D 0E 0F 10 11 12 0F  ........
        db   $1A,$15,$17,$13,$14,$15,$17,$13 ; FBC8 1A 15 17 13 14 15 17 13  ........
        db   $14,$15,$17,$13,$14,$15,$1C,$05 ; FBD0 14 15 17 13 14 15 1C 05  ........
        db   $06,$07,$08,$01,$02,$03,$04,$05 ; FBD8 06 07 08 01 02 03 04 05  ........
        db   $06,$07,$08,$05,$06,$07,$08,$03 ; FBE0 06 07 08 05 06 07 08 03  ........
        db   $04,$03,$04,$01,$02,$01,$02,$05 ; FBE8 04 03 04 01 02 01 02 05  ........
        db   $06,$07,$08,$03,$04,$03,$04,$09 ; FBF0 06 07 08 03 04 03 04 09  ........
        db   $0A,$09,$0A,$09,$0A,$0B,$0C,$09 ; FBF8 0A 09 0A 09 0A 0B 0C 09  ........
        db   $0A,$09,$0A,$09,$0A,$09,$0A,$0B ; FC00 0A 09 0A 09 0A 09 0A 0B  ........
        db   $0C,$0B,$0C,$09,$0A,$09,$0A,$09 ; FC08 0C 0B 0C 09 0A 09 0A 09  ........
        db   $0A,$09,$0A,$0B,$0C,$0B,$0C,$03 ; FC10 0A 09 0A 0B 0C 0B 0C 03  ........
        db   $04,$01,$02,$05,$06,$07,$08,$03 ; FC18 04 01 02 05 06 07 08 03  ........
        db   $04,$01,$02,$01,$02,$05,$06,$07 ; FC20 04 01 02 01 02 05 06 07  ........
        db   $08,$03,$04,$03,$04,$01,$02,$03 ; FC28 08 03 04 03 04 01 02 03  ........
        db   $04,$05,$06,$07,$08,$03,$04,$0B ; FC30 04 05 06 07 08 03 04 0B  ........
        db   $0C,$09,$0A,$09,$0A,$09,$0A,$0B ; FC38 0C 09 0A 09 0A 09 0A 0B  ........
        db   $0C,$09,$0A,$09,$0A,$09,$0A,$09 ; FC40 0C 09 0A 09 0A 09 0A 09  ........
        db   $0A,$0B,$0C,$0B,$0C,$09,$0A,$0B ; FC48 0A 0B 0C 0B 0C 09 0A 0B  ........
        db   $0C,$09,$0A,$09,$0A,$0B,$0C     ; FC50 0C 09 0A 09 0A 0B 0C     .......
Bank0F_PpuAttributeData:
        db   $5A,$00,$00,$00,$00,$00,$00,$55 ; FC57 5A 00 00 00 00 00 00 55  Z......U
        db   $55,$55,$00,$00,$00,$00,$00,$05 ; FC5F 55 55 00 00 00 00 00 05  UU......
        db   $05,$05                         ; FC67 05 05                    ..
Bank0F_PpuUploadMasks:
        db   $00,$00,$00,$80,$00,$00,$00,$80 ; FC69 00 00 00 80 00 00 00 80  ........
        db   $00,$00,$03,$D0,$00,$00,$03,$FC ; FC71 00 00 03 D0 00 00 03 FC  ........
        db   $00,$00,$0F,$FC,$00,$00,$0F,$FC ; FC79 00 00 0F FC 00 00 0F FC  ........
        db   $00,$00,$0F,$FE,$00,$00,$0F,$FE ; FC81 00 00 0F FE 00 00 0F FE  ........
        db   $00,$00,$3F,$FF                 ; FC89 00 00 3F FF              ..?.
Bank0F_PpuPatternStream:
        db   $25,$88,$40,$87,$1A,$29,$16,$43 ; FC8D 25 88 40 87 1A 29 16 43  %.@..).C
        db   $DA,$77,$BF,$78,$E5,$D6,$E9,$BC ; FC95 DA 77 BF 78 E5 D6 E9 BC  .w.x....
        db   $5B,$06,$01,$A0,$78,$9C,$EC,$FE ; FC9D 5B 06 01 A0 78 9C EC FE  [...x...
        db   $A4,$F9,$FE,$5F,$87,$63,$13,$01 ; FCA5 A4 F9 FE 5F 87 63 13 01  ..._.c..
        db   $FF,$A5,$1A,$A0,$03,$1C,$63,$5A ; FCAD FF A5 1A A0 03 1C 63 5A  ......cZ
        db   $E5,$5F,$FF,$FC,$E3,$9C,$C7,$DF ; FCB5 E5 5F FF FC E3 9C C7 DF  ._......
        db   $BB,$16,$05,$C0,$F8,$7E,$38,$20 ; FCBD BB 16 05 C0 F8 7E 38 20  .....~8
        db   $44,$E9,$FA,$3F,$07,$81,$8F,$D5 ; FCC5 44 E9 FA 3F 07 81 8F D5  D..?....
        db   $2A,$C0,$01,$0E,$31,$70,$2A,$D5 ; FCCD 2A C0 01 0E 31 70 2A D5  *...1p*.
        db   $3F,$FF,$FE,$F1,$CE,$B4,$20,$07 ; FCD5 3F FF FE F1 CE B4 20 07  ?..... .
        db   $78,$81,$33,$EF,$4B,$DF,$FF,$F8 ; FCDD 78 81 33 EF 4B DF FF F8  x.3.K...
        db   $87,$7E,$CC,$10,$5F,$04,$E0,$7E ; FCE5 87 7E CC 10 5F 04 E0 7E  .~.._..~
        db   $9F,$EF,$FF,$A0,$FB,$FF,$1F,$81 ; FCED 9F EF FF A0 FB FF 1F 81  ........
        db   $60,$10,$8F,$37,$5D,$2A,$80,$F0 ; FCF5 60 10 8F 37 5D 2A 80 F0  `..7]*..
        db   $FC,$70,$C8,$A2,$D5,$FF,$7F,$0F ; FCFD FC 70 C8 A2 D5 FF 7F 0F  .p......
        db   $03,$AC,$47,$AB,$5F,$AF,$53,$2D ; FD05 03 AC 47 AB 5F AF 53 2D  ..G._.S-
        db   $17,$53,$B8,$54,$A0,$50,$AC,$D2 ; FD0D 17 53 B8 54 A0 50 AC D2  .S.T.P..
        db   $E8,$FF,$7C,$B9,$FA,$96,$7D,$FA ; FD15 E8 FF 7C B9 FA 96 7D FA  ..|...}.
        db   $FF,$83,$46,$05,$69,$82,$05,$9F ; FD1D FF 83 46 05 69 82 05 9F  ..F.i...
        db   $6F,$18,$27,$D7,$4B,$9F,$BF,$60 ; FD25 6F 18 27 D7 4B 9F BF 60  o.'.K..`
        db   $90,$E7,$D8,$28,$B4,$60,$40,$F9 ; FD2D 90 E7 D8 28 B4 60 40 F9  ...(.`@.
        db   $FE,$FF,$61,$CE,$8F,$BC,$7B,$06 ; FD35 FE FF 61 CE 8F BC 7B 06  ..a...{.
        db   $01,$9E,$31,$70,$43,$84,$03,$1C ; FD3D 01 9E 31 70 43 84 03 1C  ..1pC...
        db   $40,$03,$3F,$C0,$B8,$06,$40,$F8 ; FD45 40 03 3F C0 B8 06 40 F8  @.?...@.
        db   $01,$0E,$30,$01,$0F,$07,$78,$81 ; FD4D 01 0E 30 01 0F 07 78 81  ..0...x.
        db   $02,$07,$7E,$FD,$FF,$E0,$7E,$9F ; FD55 02 07 7E FD FF E0 7E 9F  ..~...~.
        db   $6B,$80,$80,$60,$94,$7F,$80,$F0 ; FD5D 6B 80 80 60 94 7F 80 F0  k..`....
        db   $5C,$A0,$BB,$55,$AA,$55,$AA,$55 ; FD65 5C A0 BB 55 AA 55 AA 55  \..U.U.U
        db   $AE,$70,$BB,$55,$AA,$55,$AA,$54 ; FD6D AE 70 BB 55 AA 55 AA 54  .p.U.U.T
        db   $A1,$4F,$BB,$55,$AA,$57,$F8,$81 ; FD75 A1 4F BB 55 AA 57 F8 81  .O.U.W..
        db   $02,$BB,$55,$AA,$50,$87,$7E,$FD ; FD7D 02 BB 55 AA 50 87 7E FD  ..U.P.~.
        db   $FF,$BB,$55,$AA,$F5,$7E,$9F,$6B ; FD85 FF BB 55 AA F5 7E 9F 6B  ..U..~.k
        db   $80,$BB,$55,$AA,$15,$80,$60,$94 ; FD8D 80 BB 55 AA 15 80 60 94  ..U...`.
        db   $7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FD95 7F FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FD9D FF FF FF FF FF FF FF FF  ........
        db   $FF,$BB,$55,$AA,$55,$AA,$D5,$FA ; FDA5 FF BB 55 AA 55 AA D5 FA  ..U.U...
        db   $5D,$BB,$55,$AA,$55,$AA,$55,$0A ; FDAD 5D BB 55 AA 55 AA 55 0A  ].U.U.U.
        db   $A1,$03,$07,$1F,$7F,$FF,$03,$07 ; FDB5 A1 03 07 1F 7F FF 03 07  ........
        db   $1F,$7F,$FF,$1F,$3F,$FF,$FF,$FF ; FDBD 1F 7F FF 1F 3F FF FF FF  ....?...
        db   $FF,$FF,$FF,$1F,$3F,$FF,$FF,$FF ; FDC5 FF FF FF 1F 3F FF FF FF  ....?...
        db   $FF,$FF,$FF,$03,$0D,$2A,$57,$78 ; FDCD FF FF FF 03 0D 2A 57 78  .....*Wx
        db   $81,$02,$03,$0D,$2A,$50,$07,$7E ; FDD5 81 02 03 0D 2A 50 07 7E  ....*P.~
        db   $FD,$FF,$80,$C0,$C0,$E0,$E0,$F0 ; FDDD FD FF 80 C0 C0 E0 E0 F0  ........
        db   $F0,$F8,$80,$C0,$C0,$E0,$E0,$F0 ; FDE5 F0 F8 80 C0 C0 E0 E0 F0  ........
        db   $F0,$F8,$B8,$5C,$AC,$54,$AA,$D6 ; FDED F0 F8 B8 5C AC 54 AA D6  ...\.T..
        db   $FA,$5D,$B8,$5C,$AC,$54,$AA,$56 ; FDF5 FA 5D B8 5C AC 54 AA 56  .].\.T.V
        db   $0A,$A1,$10,$18,$30,$38,$01,$01 ; FDFD 0A A1 10 18 30 38 01 01  ....08..
        db   $03,$03,$07,$0F,$1F,$03,$08,$08 ; FE05 03 03 07 0F 1F 03 08 08  ........
        db   $04,$02,$57,$FC,$FC,$FE,$FE,$FF ; FE0D 04 02 57 FC FC FE FE FF  ..W.....
        db   $FF,$FF,$FE,$80,$C0,$20,$30,$34 ; FE15 FF FF FE 80 C0 20 30 34  ..... 04
        db   $18,$60,$70,$74,$58,$1A,$0C,$20 ; FE1D 18 60 70 74 58 1A 0C 20  .`ptX..
        db   $10,$10,$3A,$2C,$20,$20,$70,$70 ; FE25 10 10 3A 2C 20 20 70 70  ..:,  pp
        db   $F8,$F8,$03,$1B,$1B,$1F,$1F,$07 ; FE2D F8 F8 03 1B 1B 1F 1F 07  ........
        db   $07,$07,$A0,$A0,$04,$04,$04,$04 ; FE35 07 07 A0 A0 04 04 04 04  ........
        db   $04,$FE,$FE,$FE,$FF,$FF,$FE,$FE ; FE3D 04 FE FE FE FF FF FE FE  ........
        db   $FF,$2D,$02,$C0,$C0,$C0,$C0,$2D ; FE45 FF 2D 02 C0 C0 C0 C0 2D  .-.....-
        db   $3F,$FF,$A0,$40,$01,$A1,$E3,$E7 ; FE4D 3F FF A0 40 01 A1 E3 E7  ?..@....
        db   $40,$20,$20,$10,$B8,$40,$40,$E0 ; FE55 40 20 20 10 B8 40 40 E0  @  ..@@.
        db   $E0,$F0,$F0,$F8,$FC,$04,$04,$02 ; FE5D E0 F0 F0 F8 FC 04 04 02  ........
        db   $08,$0C,$1E,$1F,$3F,$20,$E0,$20 ; FE65 08 0C 1E 1F 3F 20 E0 20  ....? .
        db   $60,$F0,$F0,$01,$01,$01,$03,$03 ; FE6D 60 F0 F0 01 01 01 03 03  `.......
        db   $03,$02,$02,$02,$01,$A0,$C0,$01 ; FE75 03 02 02 02 01 A0 C0 01  ........
        db   $01,$03,$07,$A1,$C1,$01,$01,$08 ; FE7D 01 03 07 A1 C1 01 01 08  ........
        db   $04,$6E,$02,$A1,$A8,$FC,$FC,$FE ; FE85 04 6E 02 A1 A8 FC FC FE  .n......
        db   $FF,$FC,$FE,$FF,$FF,$D8,$24,$07 ; FE8D FF FC FE FF FF D8 24 07  ......$.
        db   $07,$03,$03,$01,$D9,$FF,$FF,$04 ; FE95 07 03 03 01 D9 FF FF 04  ........
        db   $04,$FF,$FF,$FF,$FE,$FE,$FE,$FF ; FE9D 04 FF FF FF FE FE FE FF  ........
        db   $FF,$C0,$20,$FF,$9F,$1F,$1F,$1F ; FEA5 FF C0 20 FF 9F 1F 1F 1F  .. .....
        db   $DF,$FF,$FF,$80,$81,$01,$80,$18 ; FEAD DF FF FF 80 81 01 80 18  ........
        db   $04,$EF,$C3,$C3,$C3,$C3,$DB,$FF ; FEB5 04 EF C3 C3 C3 C3 DB FF  ........
        db   $FF,$40,$50,$10,$10,$10,$FE,$F8 ; FEBD FF 40 50 10 10 10 FE F8  .@P.....
        db   $F8,$F8,$F9,$F8,$F8,$F8,$01,$02 ; FEC5 F8 F8 F9 F8 F8 F8 01 02  ........
        db   $03,$07,$07,$0F,$0F,$0F,$0F,$80 ; FECD 03 07 07 0F 0F 0F 0F 80  ........
        db   $80,$80,$01,$01,$81,$81,$C1,$C0 ; FED5 80 80 01 01 81 81 C1 C0  ........
        db   $C0,$C0,$08,$08,$08,$08,$08,$FF ; FEDD C0 C0 08 08 08 08 08 FF  ........
        db   $FF,$FC,$FC,$FC,$FC,$7C,$7C,$FF ; FEE5 FF FC FC FC FC 7C 7C FF  .....||.
        db   $FF,$07,$0F,$1F,$3F,$7F,$FF,$FF ; FEED FF 07 0F 1F 3F 7F FF FF  ....?...
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FEF5 FF FF FF FF FF FF FF FF  ........
        db   $FF,$1F,$1F,$9F,$9F,$CF,$EF,$80 ; FEFD FF 1F 1F 9F 9F CF EF 80  ........
        db   $80,$80,$FF,$FF,$E7,$E7,$E7,$E7 ; FF05 80 80 FF FF E7 E7 E7 E7  ........
        db   $C7,$C7,$10,$10,$F8,$F8,$F8,$F8 ; FF0D C7 C7 10 10 F8 F8 F8 F8  ........
        db   $F9,$FB,$FF,$FF,$05,$05,$05,$0F ; FF15 F9 FB FF FF 05 05 05 0F  ........
        db   $0F,$1F,$3F,$3F,$0F,$0F,$1F,$80 ; FF1D 0F 1F 3F 3F 0F 0F 1F 80  ..??....
        db   $40,$E0,$C0,$C0,$E0,$F0,$F1,$C3 ; FF25 40 E0 C0 C0 E0 F0 F1 C3  @.......
        db   $C7,$EF,$7F,$7F,$7F,$FF,$FF,$FF ; FF2D C7 EF 7F 7F 7F FF FF FF  ........
        db   $FF,$FF,$1F,$1F,$1F,$3F,$7F,$FF ; FF35 FF FF 1F 1F 1F 3F 7F FF  .....?..
        db   $FF,$FF,$01,$01,$3F,$7F,$7F,$FF ; FF3D FF FF 01 01 3F 7F 7F FF  ....?...
        db   $FF,$7F,$7F,$7F,$10,$08,$80,$50 ; FF45 FF 7F 7F 7F 10 08 80 50  .......P
        db   $50,$F8,$F8,$FC,$FC,$FE,$F8,$F8 ; FF4D 50 F8 F8 FC FC FE F8 F8  P.......
        db   $F8,$F8,$F8,$FC,$FC,$FC,$FE,$FF ; FF55 F8 F8 F8 FC FC FC FE FF  ........
        db   $FF,$80,$E0,$E0,$F0,$F0,$F0,$F8 ; FF5D FF 80 E0 E0 F0 F0 F0 F8  ........
        db   $F8,$E0,$E0,$E0,$F0,$F0,$F0,$F0 ; FF65 F8 E0 E0 E0 F0 F0 F0 F0  ........
        db   $F8,$FF,$FF,$FF,$FF,$FF,$FF     ; FF6D F8 FF FF FF FF FF FF     .......
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_FF74:
        lda     $050C                           ; FF74 AD 0C 05                 ...
        nop                                     ; FF77 EA                       .
        nop                                     ; FF78 EA                       .
        inc     $12                             ; FF79 E6 12                    ..
        cmp     $050C                           ; FF7B CD 0C 05                 ...
        beq     $FF77                           ; FF7E F0 F7                    ..
        nop                                     ; FF80 EA                       .
        nop                                     ; FF81 EA                       .
        jsr     LowerFixedEngine_Entry_C913     ; FF82 20 13 C9                  ..
        rts                                     ; FF85 60                       `
; ----------------------------------------------------------------------------
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; FF86 FF FF FF FF FF FF FF FF  ........
        db   $4C,$3D,$C0                     ; FF8E 4C 3D C0                 L=.
; ----------------------------------------------------------------------------
LowerFixedEngine_Entry_FF91:
        sta     $0507                           ; FF91 8D 07 05                 ...
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
LowerFixedEngine_Entry_FFD8:
        sei                                     ; FFD8 78                       x
        inc     $FFDF                           ; FFD9 EE DF FF                 ...
        jmp     LowerFixedEngine_Branch_C03D    ; FFDC 4C 3D C0                 L=.
; ----------------------------------------------------------------------------
        db   $80,$44,$52,$41,$47,$4F,$4E,$20 ; FFDF 80 44 52 41 47 4F 4E 20  .DRAGON
        db   $51,$55,$45,$53,$54,$20,$49,$56 ; FFE7 51 55 45 53 54 20 49 56  QUEST IV
        db   $20,$FF,$FF,$00,$00,$48,$04,$01 ; FFEF 20 FF FF 00 00 48 04 01   ....H..
        db   $0F,$07,$9D,$02,$05,$D8,$FF,$08 ; FFF7 0F 07 9D 02 05 D8 FF 08  ........
        db   $C4                             ; FFFF C4                       .
Bank0F_End:
