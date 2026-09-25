; PRG bank $12: ROM file $048010-$04C00F
; CPU window $8000-$BFFF
; Disassembled by project-local da65 using generated code/data ranges.

base $8000
Bank12_Start:
; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------
Bank12_BattleSetupDirectory:
        db   $64,$80,$57,$81,$65,$81,$B2,$84 ; 8000 64 80 57 81 65 81 B2 84  d.W.e...
        db   $AB,$80,$B6,$86,$CA,$85,$CA,$85 ; 8008 AB 80 B6 86 CA 85 CA 85  ........
        db   $72,$9C,$1A,$81,$05,$AE,$53,$A5 ; 8010 72 9C 1A 81 05 AE 53 A5  r.....S.
        db   $00,$00,$1D,$AA,$53,$AC,$22,$9C ; 8018 00 00 1D AA 53 AC 22 9C  ....S.".
        db   $29,$9D,$8C,$AD,$A5,$A4,$E7,$85 ; 8020 29 9D 8C AD A5 A4 E7 85  ).......
        db   $0C,$93,$AD,$92,$EF,$92,$AD,$8E ; 8028 0C 93 AD 92 EF 92 AD 8E  ........
        db   $1F,$BD,$77,$86,$A4,$86,$36,$89 ; 8030 1F BD 77 86 A4 86 36 89  ..w...6.
        db   $5C,$89,$3E,$BA,$02,$8A,$0A,$8A ; 8038 5C 89 3E BA 02 8A 0A 8A  \.>.....
        db   $94,$BA,$06,$BB,$FD,$9B,$07,$86 ; 8040 94 BA 06 BB FD 9B 07 86  ........
        db   $DF,$85,$D4,$BB,$0D,$AE,$3C,$BC ; 8048 DF 85 D4 BB 0D AE 3C BC  ......<.
        db   $C4,$BC,$73,$AF,$00,$00,$B0,$88 ; 8050 C4 BC 73 AF 00 00 B0 88  ..s.....
        db   $DE,$B6,$EC,$90,$04,$A3,$C9,$BD ; 8058 DE B6 EC 90 04 A3 C9 BD  ........
        db   $4E,$BE,$CD,$BE                 ; 8060 4E BE CD BE              N...
; ----------------------------------------------------------------------------
Bank12_BattleSetupServices:
        lda     $6BDE                           ; 8064 AD DE 6B                 ..k
        ora     #$80                            ; 8067 09 80                    ..
        sta     $6BDE                           ; 8069 8D DE 6B                 ..k
        jsr     BattleSetupServices_Entry_810E  ; 806C 20 0E 81                  ..
        jsr     BattleSetupServices_Entry_80B4  ; 806F 20 B4 80                  ..
        brk                                     ; 8072 00                       .
        db   $30,$B3                         ; 8073 30 B3                    0.
; ----------------------------------------------------------------------------
        lda     #$00                            ; 8075 A9 00                    ..
        sta     $72E4                           ; 8077 8D E4 72                 ..r
        sta     $72E5                           ; 807A 8D E5 72                 ..r
        sta     $72E6                           ; 807D 8D E6 72                 ..r
        sta     $72E7                           ; 8080 8D E7 72                 ..r
        sta     $7201                           ; 8083 8D 01 72                 ..r
        sta     $7202                           ; 8086 8D 02 72                 ..r
        sta     $7203                           ; 8089 8D 03 72                 ..r
        sta     $7204                           ; 808C 8D 04 72                 ..r
        sta     $7205                           ; 808F 8D 05 72                 ..r
        sta     $6E7E                           ; 8092 8D 7E 6E                 .~n
        lda     #$FF                            ; 8095 A9 FF                    ..
        sta     $7200                           ; 8097 8D 00 72                 ..r
        sta     $72E8                           ; 809A 8D E8 72                 ..r
        jsr     BattleSetupServices_Entry_811A  ; 809D 20 1A 81                  ..
        ldx     #$05                            ; 80A0 A2 05                    ..
        lda     #$00                            ; 80A2 A9 00                    ..
BattleSetupServices_Branch_80A4:
        sta     $720A,x                         ; 80A4 9D 0A 72                 ..r
        dex                                     ; 80A7 CA                       .
        bpl     BattleSetupServices_Branch_80A4 ; 80A8 10 FA                    ..
        rts                                     ; 80AA 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_80AB:
        lda     $72E7                           ; 80AB AD E7 72                 ..r
        and     #$9B                            ; 80AE 29 9B                    ).
        sta     $72E7                           ; 80B0 8D E7 72                 ..r
        rts                                     ; 80B3 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_80B4:
        lda     #$00                            ; 80B4 A9 00                    ..
        sta     $96                             ; 80B6 85 96                    ..
        ldx     #$6F                            ; 80B8 A2 6F                    .o
BattleSetupServices_Branch_80BA:
        sta     $7274,x                         ; 80BA 9D 74 72                 .tr
        dex                                     ; 80BD CA                       .
        bpl     BattleSetupServices_Branch_80BA ; 80BE 10 FA                    ..
BattleSetupServices_Branch_80C0:
        ldx     $96                             ; 80C0 A6 96                    ..
        brk                                     ; 80C2 00                       .
        db   $12,$53                         ; 80C3 12 53                    .S
; ----------------------------------------------------------------------------
        ldx     $6E0C                           ; 80C5 AE 0C 6E                 ..n
        lda     SavePartyCharacter1,x           ; 80C8 BD 6A 61                 .ja
        ora     #$80                            ; 80CB 09 80                    ..
        ldx     $96                             ; 80CD A6 96                    ..
        sta     $72EA,x                         ; 80CF 9D EA 72                 ..r
        jsr     BattleSetupServices_Entry_8148  ; 80D2 20 48 81                  H.
        sta     $7210,x                         ; 80D5 9D 10 72                 ..r
        ldx     $96                             ; 80D8 A6 96                    ..
        brk                                     ; 80DA 00                       .
        db   $17,$33                         ; 80DB 17 33                    .3
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_8148  ; 80DD 20 48 81                  H.
        sta     $7211,x                         ; 80E0 9D 11 72                 ..r
        tya                                     ; 80E3 98                       .
        sta     $7212,x                         ; 80E4 9D 12 72                 ..r
        ldx     $96                             ; 80E7 A6 96                    ..
        brk                                     ; 80E9 00                       .
        db   $1B,$33                         ; 80EA 1B 33                    .3
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_8148  ; 80EC 20 48 81                  H.
        sta     $7213,x                         ; 80EF 9D 13 72                 ..r
        tya                                     ; 80F2 98                       .
        sta     $7214,x                         ; 80F3 9D 14 72                 ..r
        lda     #$00                            ; 80F6 A9 00                    ..
        sta     $7215,x                         ; 80F8 9D 15 72                 ..r
        sta     $7216,x                         ; 80FB 9D 16 72                 ..r
        sta     $7217,x                         ; 80FE 9D 17 72                 ..r
        sta     $7218,x                         ; 8101 9D 18 72                 ..r
        inc     $96                             ; 8104 E6 96                    ..
        brk                                     ; 8106 00                       .
        db   $62,$33                         ; 8107 62 33                    b3
; ----------------------------------------------------------------------------
        cmp     $96                             ; 8109 C5 96                    ..
        bne     BattleSetupServices_Branch_80C0 ; 810B D0 B3                    ..
        rts                                     ; 810D 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_810E:
        ldx     #$03                            ; 810E A2 03                    ..
BattleSetupServices_Branch_8110:
        lda     $6E45,x                         ; 8110 BD 45 6E                 .En
        sta     $7206,x                         ; 8113 9D 06 72                 ..r
        dex                                     ; 8116 CA                       .
        bpl     BattleSetupServices_Branch_8110 ; 8117 10 F7                    ..
        rts                                     ; 8119 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_811A:
        lda     #$00                            ; 811A A9 00                    ..
        sta     $00                           ; 811C 85 00                    ..
        ldx     #$03                            ; 811E A2 03                    ..
BattleSetupServices_Branch_8120:
        lda     $6E45,x                         ; 8120 BD 45 6E                 .En
        cmp     #$FF                            ; 8123 C9 FF                    ..
        beq     BattleSetupServices_Branch_813C ; 8125 F0 15                    ..
        ldy     #$03                            ; 8127 A0 03                    ..
BattleSetupServices_Branch_8129:
        lda     $6E45,y                         ; 8129 B9 45 6E                 .En
        cmp     #$FF                            ; 812C C9 FF                    ..
        beq     BattleSetupServices_Branch_8139 ; 812E F0 09                    ..
        cmp     $6E45,x                         ; 8130 DD 45 6E                 .En
        beq     BattleSetupServices_Branch_8139 ; 8133 F0 04                    ..
        lda     #$40                            ; 8135 A9 40                    .@
        sta     $00                           ; 8137 85 00                    ..
BattleSetupServices_Branch_8139:
        dey                                     ; 8139 88                       .
        bpl     BattleSetupServices_Branch_8129 ; 813A 10 ED                    ..
BattleSetupServices_Branch_813C:
        dex                                     ; 813C CA                       .
        bpl     BattleSetupServices_Branch_8120 ; 813D 10 E1                    ..
        lda     $00                           ; 813F A5 00                    ..
        ora     $72E4                           ; 8141 0D E4 72                 ..r
        sta     $72E4                           ; 8144 8D E4 72                 ..r
        rts                                     ; 8147 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8148:
        lda     $96                             ; 8148 A5 96                    ..
        asl     a                               ; 814A 0A                       .
        sta     $00                           ; 814B 85 00                    ..
        asl     a                               ; 814D 0A                       .
        asl     a                               ; 814E 0A                       .
        adc     $00                           ; 814F 65 00                    e.
        tax                                     ; 8151 AA                       .
        lda     $72                             ; 8152 A5 72                    .r
        ldy     $73                             ; 8154 A4 73                    .s
        rts                                     ; 8156 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8157:
        pha                                     ; 8157 48                       H
        txa                                     ; 8158 8A                       .
        pha                                     ; 8159 48                       H
        tya                                     ; 815A 98                       .
        pha                                     ; 815B 48                       H
        jsr     BattleSetupServices_Entry_8177  ; 815C 20 77 81                  w.
        pla                                     ; 815F 68                       h
        tay                                     ; 8160 A8                       .
        pla                                     ; 8161 68                       h
        tax                                     ; 8162 AA                       .
        pla                                     ; 8163 68                       h
        rts                                     ; 8164 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8165:
        sta     $00                           ; 8165 85 00                    ..
        pha                                     ; 8167 48                       H
        txa                                     ; 8168 8A                       .
        pha                                     ; 8169 48                       H
        tya                                     ; 816A 98                       .
        pha                                     ; 816B 48                       H
        lda     $00                           ; 816C A5 00                    ..
        jsr     BattleSetupServices_Entry_817D  ; 816E 20 7D 81                  }.
        pla                                     ; 8171 68                       h
        tay                                     ; 8172 A8                       .
        pla                                     ; 8173 68                       h
        tax                                     ; 8174 AA                       .
        pla                                     ; 8175 68                       h
        rts                                     ; 8176 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8177:
        jsr     BattleSetupServices_Entry_8199  ; 8177 20 99 81                  ..
        jmp     BattleSetupServices_Branch_8180 ; 817A 4C 80 81                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_817D:
        jsr     BattleSetupServices_Entry_81B6  ; 817D 20 B6 81                  ..
BattleSetupServices_Branch_8180:
        jsr     BattleSetupServices_Entry_81BD  ; 8180 20 BD 81                  ..
        jsr     BattleSetupServices_Entry_81DA  ; 8183 20 DA 81                  ..
        jsr     BattleSetupServices_Entry_82B9  ; 8186 20 B9 82                  ..
        jsr     BattleSetupServices_Entry_85E7  ; 8189 20 E7 85                  ..
        jsr     BattleSetupServices_Entry_826A  ; 818C 20 6A 82                  j.
        jsr     BattleSetupServices_Entry_82B0  ; 818F 20 B0 82                  ..
        jsr     BattleSetupServices_Entry_82C3  ; 8192 20 C3 82                  ..
        jsr     BattleSetupServices_Entry_82E9  ; 8195 20 E9 82                  ..
        rts                                     ; 8198 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8199:
        tsx                                     ; 8199 BA                       .
        inc     $010B,x                         ; 819A FE 0B 01                 ...
        bne     BattleSetupServices_Branch_81A2 ; 819D D0 03                    ..
        inc     $010C,x                         ; 819F FE 0C 01                 ...
BattleSetupServices_Branch_81A2:
        lda     $010B,x                         ; 81A2 BD 0B 01                 ...
        sta     $00                           ; 81A5 85 00                    ..
        lda     $010C,x                         ; 81A7 BD 0C 01                 ...
        sta     $01                             ; 81AA 85 01                    ..
        ldx     #$00                            ; 81AC A2 00                    ..
        lda     $0517                           ; 81AE AD 17 05                 ...
        ldy     #$00                            ; 81B1 A0 00                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; 81B3 20 EA C3                  ..
BattleSetupServices_Entry_81B6:
        sta     $8D                             ; 81B6 85 8D                    ..
        lda     $76                             ; 81B8 A5 76                    .v
        sta     $8C                             ; 81BA 85 8C                    ..
        rts                                     ; 81BC 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_81BD:
        lda     $8C                             ; 81BD A5 8C                    ..
        and     #$03                            ; 81BF 29 03                    ).
        cmp     #$02                            ; 81C1 C9 02                    ..
        bcs     BattleSetupServices_Branch_81CC ; 81C3 B0 07                    ..
        sta     $8A                             ; 81C5 85 8A                    ..
        lda     $8D                             ; 81C7 A5 8D                    ..
        sta     $8B                             ; 81C9 85 8B                    ..
        rts                                     ; 81CB 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_81CC:
        lda     $8D                             ; 81CC A5 8D                    ..
        jsr     BattleSetupServices_Entry_82FC  ; 81CE 20 FC 82                  ..
        sta     $8A                             ; 81D1 85 8A                    ..
        stx     $8B                             ; 81D3 86 8B                    ..
        bcs     BattleSetupServices_Branch_81D9 ; 81D5 B0 02                    ..
        pla                                     ; 81D7 68                       h
        pla                                     ; 81D8 68                       h
BattleSetupServices_Branch_81D9:
        rts                                     ; 81D9 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_81DA:
        lda     $72E9                           ; 81DA AD E9 72                 ..r
        and     #$C0                            ; 81DD 29 C0                    ).
        beq     BattleSetupServices_Branch_8220 ; 81DF F0 3F                    .?
        cmp     #$40                            ; 81E1 C9 40                    .@
        beq     BattleSetupServices_Branch_8221 ; 81E3 F0 3C                    .<
        ldy     #$07                            ; 81E5 A0 07                    ..
BattleSetupServices_Branch_81E7:
        lda     $8252,y                         ; 81E7 B9 52 82                 .R.
        and     #$03                            ; 81EA 29 03                    ).
        cmp     $8A                             ; 81EC C5 8A                    ..
        bne     BattleSetupServices_Branch_81F7 ; 81EE D0 07                    ..
        lda     $825A,y                         ; 81F0 B9 5A 82                 .Z.
        cmp     $8B                             ; 81F3 C5 8B                    ..
        beq     BattleSetupServices_Branch_81FB ; 81F5 F0 04                    ..
BattleSetupServices_Branch_81F7:
        dey                                     ; 81F7 88                       .
        bpl     BattleSetupServices_Branch_81E7 ; 81F8 10 ED                    ..
        rts                                     ; 81FA 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_81FB:
        lda     $8252,y                         ; 81FB B9 52 82                 .R.
        bpl     BattleSetupServices_Branch_8206 ; 81FE 10 06                    ..
        brk                                     ; 8200 00                       .
        db   $06,$1F                         ; 8201 06 1F                    ..
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_8209 ; 8203 4C 09 82                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8206:
        brk                                     ; 8206 00                       .
        db   $07,$1F                         ; 8207 07 1F                    ..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8209:
        jsr     BattleSetupServices_Entry_8235  ; 8209 20 35 82                  5.
        bcc     BattleSetupServices_Branch_8220 ; 820C 90 12                    ..
        lda     $8252,y                         ; 820E B9 52 82                 .R.
        and     #$03                            ; 8211 29 03                    ).
        sta     $8A                             ; 8213 85 8A                    ..
        lda     $8262,y                         ; 8215 B9 62 82                 .b.
        sta     $8B                             ; 8218 85 8B                    ..
        cmp     #$6C                            ; 821A C9 6C                    .l
        bne     BattleSetupServices_Branch_8220 ; 821C D0 02                    ..
        dec     $8A                             ; 821E C6 8A                    ..
BattleSetupServices_Branch_8220:
        rts                                     ; 8220 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8221:
        lda     $8B                             ; 8221 A5 8B                    ..
        cmp     #$1B                            ; 8223 C9 1B                    ..
        bne     BattleSetupServices_Branch_8234 ; 8225 D0 0D                    ..
        brk                                     ; 8227 00                       .
        db   $07,$1F                         ; 8228 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_8234 ; 822A B0 08                    ..
        lda     $8A                             ; 822C A5 8A                    ..
        bne     BattleSetupServices_Branch_8234 ; 822E D0 04                    ..
        lda     #$6B                            ; 8230 A9 6B                    .k
        sta     $8B                             ; 8232 85 8B                    ..
BattleSetupServices_Branch_8234:
        rts                                     ; 8234 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8235:
        bcc     BattleSetupServices_Branch_8251 ; 8235 90 1A                    ..
        lda     $7E                             ; 8237 A5 7E                    .~
        pha                                     ; 8239 48                       H
        lda     $7F                             ; 823A A5 7F                    ..
        pha                                     ; 823C 48                       H
        brk                                     ; 823D 00                       .
        db   $2D,$A3                         ; 823E 2D A3                    -.
; ----------------------------------------------------------------------------
L8242 = $+ 2
        lda     $6E7F                           ; 8240 AD 7F 6E                 ..n
        and     #$03                            ; 8243 29 03                    ).
        cmp     $7E                             ; 8245 C5 7E                    .~
        sec                                     ; 8247 38                       8
        beq     BattleSetupServices_Branch_824B ; 8248 F0 01                    ..
        clc                                     ; 824A 18                       .
BattleSetupServices_Branch_824B:
        pla                                     ; 824B 68                       h
        sta     $7F                             ; 824C 85 7F                    ..
        pla                                     ; 824E 68                       h
        sta     $7E                             ; 824F 85 7E                    .~
BattleSetupServices_Branch_8251:
        rts                                     ; 8251 60                       `
; ----------------------------------------------------------------------------
        db   $00,$00,$80,$01,$01,$01,$01,$01 ; 8252 00 00 80 01 01 01 01 01  ........
        db   $08,$16,$4E,$65,$67,$68,$6F,$78 ; 825A 08 16 4E 65 67 68 6F 78  ..Neghox
        db   $6B,$16,$4D,$66,$6C,$69,$70,$79 ; 8262 6B 16 4D 66 6C 69 70 79  k.Mflipy
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_826A:
        lda     $8C                             ; 826A A5 8C                    ..
        and     #$1C                            ; 826C 29 1C                    ).
        beq     BattleSetupServices_Branch_8292 ; 826E F0 22                    ."
        cmp     #$04                            ; 8270 C9 04                    ..
        beq     BattleSetupServices_Branch_827C ; 8272 F0 08                    ..
        cmp     #$08                            ; 8274 C9 08                    ..
        beq     BattleSetupServices_Branch_8296 ; 8276 F0 1E                    ..
        cmp     #$0C                            ; 8278 C9 0C                    ..
        beq     BattleSetupServices_Branch_829E ; 827A F0 22                    ."
BattleSetupServices_Branch_827C:
        lda     $735F                           ; 827C AD 5F 73                 ._s
        asl     a                               ; 827F 0A                       .
        jsr     BattleSetupServices_Entry_829F  ; 8280 20 9F 82                  ..
        bcc     BattleSetupServices_Branch_828B ; 8283 90 06                    ..
        lda     $7360                           ; 8285 AD 60 73                 .`s
        sta     $735F                           ; 8288 8D 5F 73                 ._s
BattleSetupServices_Branch_828B:
        lda     $735F                           ; 828B AD 5F 73                 ._s
BattleSetupServices_Branch_828E:
        brk                                     ; 828E 00                       .
        db   $06,$6F                         ; 828F 06 6F                    .o
; ----------------------------------------------------------------------------
        rts                                     ; 8291 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8292:
        lda     #$00                            ; 8292 A9 00                    ..
        beq     BattleSetupServices_Branch_828E ; 8294 F0 F8                    ..
BattleSetupServices_Branch_8296:
        lda     TextOutputY                     ; 8296 AD 52 05                 .R.
        jsr     BattleSetupServices_Entry_829F  ; 8299 20 9F 82                  ..
        bcs     BattleSetupServices_Branch_827C ; 829C B0 DE                    ..
BattleSetupServices_Branch_829E:
        rts                                     ; 829E 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_829F:
        pha                                     ; 829F 48                       H
        lda     $8B                             ; 82A0 A5 8B                    ..
        ldx     $8A                             ; 82A2 A6 8A                    ..
        brk                                     ; 82A4 00                       .
        db   $08,$6F                         ; 82A5 08 6F                    .o
; ----------------------------------------------------------------------------
        asl     $00                           ; 82A7 06 00                    ..
        pla                                     ; 82A9 68                       h
        clc                                     ; 82AA 18                       .
        adc     $00                           ; 82AB 65 00                    e.
        cmp     #$0A                            ; 82AD C9 0A                    ..
        rts                                     ; 82AF 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_82B0:
        bit     $8C                             ; 82B0 24 8C                    $.
        bvc     BattleSetupServices_Branch_829E ; 82B2 50 EA                    P.
        ldx     #$03                            ; 82B4 A2 03                    ..
        jmp     UpperFixedEngine_Entry_C90C     ; 82B6 4C 0C C9                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_82B9:
        lda     $8C                             ; 82B9 A5 8C                    ..
        and     #$20                            ; 82BB 29 20                    )
        beq     BattleSetupServices_Branch_82C2 ; 82BD F0 03                    ..
        jsr     BattleSetupServices_Entry_8370  ; 82BF 20 70 83                  p.
BattleSetupServices_Branch_82C2:
        rts                                     ; 82C2 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_82C3:
        lda     $0553                           ; 82C3 AD 53 05                 .S.
        ora     #$80                            ; 82C6 09 80                    ..
        sta     $0553                           ; 82C8 8D 53 05                 .S.
        ldx     $8A                             ; 82CB A6 8A                    ..
        lda     $8B                             ; 82CD A5 8B                    ..
        brk                                     ; 82CF 00                       .
        db   $04,$6F                         ; 82D0 04 6F                    .o
; ----------------------------------------------------------------------------
        lda     $8C                             ; 82D2 A5 8C                    ..
        and     #$0C                            ; 82D4 29 0C                    ).
        bne     BattleSetupServices_Branch_82E8 ; 82D6 D0 10                    ..
        lda     TextOutputY                     ; 82D8 AD 52 05                 .R.
        sta     $735F                           ; 82DB 8D 5F 73                 ._s
        tax                                     ; 82DE AA                       .
        lda     $8C                             ; 82DF A5 8C                    ..
        and     #$10                            ; 82E1 29 10                    ).
        bne     BattleSetupServices_Branch_82E8 ; 82E3 D0 03                    ..
        stx     $7360                           ; 82E5 8E 60 73                 .`s
BattleSetupServices_Branch_82E8:
        rts                                     ; 82E8 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_82E9:
        lda     $050C                           ; 82E9 AD 0C 05                 ...
        sta     $6E5C                           ; 82EC 8D 5C 6E                 .\n
        lda     #$00                            ; 82EF A9 00                    ..
        sta     $6E5D                           ; 82F1 8D 5D 6E                 .]n
        lda     $8C                             ; 82F4 A5 8C                    ..
        bpl     BattleSetupServices_Branch_82FB ; 82F6 10 03                    ..
        jsr     BattleSetupServices_Entry_85CA  ; 82F8 20 CA 85                  ..
BattleSetupServices_Branch_82FB:
        rts                                     ; 82FB 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_82FC:
        sta     $00                           ; 82FC 85 00                    ..
        lda     Bank12_BattleSetupDataPointers  ; 82FE AD 8D 84                 ...
        sta     $02                           ; 8301 85 02                    ..
        lda     $848E                           ; 8303 AD 8E 84                 ...
        sta     $03                             ; 8306 85 03                    ..
        lda     #$00                            ; 8308 A9 00                    ..
        sta     $04                             ; 830A 85 04                    ..
        brk                                     ; 830C 00                       .
        db   $03,$1F                         ; 830D 03 1F                    ..
; ----------------------------------------------------------------------------
        sta     $01                             ; 830F 85 01                    ..
        beq     BattleSetupServices_Branch_8335 ; 8311 F0 22                    ."
BattleSetupServices_Branch_8313:
        ldy     #$00                            ; 8313 A0 00                    ..
        lda     ($02),y                       ; 8315 B1 02                    ..
        ldy     #$05                            ; 8317 A0 05                    ..
        ldx     #$01                            ; 8319 A2 01                    ..
BattleSetupServices_Branch_831B:
        lsr     a                               ; 831B 4A                       J
        bcc     BattleSetupServices_Branch_831F ; 831C 90 01                    ..
        inx                                     ; 831E E8                       .
BattleSetupServices_Branch_831F:
        dey                                     ; 831F 88                       .
        bne     BattleSetupServices_Branch_831B ; 8320 D0 F9                    ..
        lda     $04                             ; 8322 A5 04                    ..
        cmp     #$3C                            ; 8324 C9 3C                    .<
        bcs     BattleSetupServices_Branch_8329 ; 8326 B0 01                    ..
        dex                                     ; 8328 CA                       .
BattleSetupServices_Branch_8329:
        txa                                     ; 8329 8A                       .
        ldx     #$02                            ; 832A A2 02                    ..
        jsr     AddByteToPointer                ; 832C 20 13 C8                  ..
        inc     $04                             ; 832F E6 04                    ..
        dec     $01                             ; 8331 C6 01                    ..
        bne     BattleSetupServices_Branch_8313 ; 8333 D0 DE                    ..
BattleSetupServices_Branch_8335:
        ldy     #$00                            ; 8335 A0 00                    ..
        lda     ($02),y                       ; 8337 B1 02                    ..
        pha                                     ; 8339 48                       H
        ldx     $00                           ; 833A A6 00                    ..
BattleSetupServices_Branch_833C:
        lsr     a                               ; 833C 4A                       J
        bcc     BattleSetupServices_Branch_8340 ; 833D 90 01                    ..
        iny                                     ; 833F C8                       .
BattleSetupServices_Branch_8340:
        dex                                     ; 8340 CA                       .
        bpl     BattleSetupServices_Branch_833C ; 8341 10 F9                    ..
        pla                                     ; 8343 68                       h
        bcc     BattleSetupServices_Branch_8368 ; 8344 90 22                    ."
        brk                                     ; 8346 00                       .
        db   $03,$1F                         ; 8347 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$3C                            ; 8349 C9 3C                    .<
        bcs     BattleSetupServices_Branch_8352 ; 834B B0 05                    ..
        lda     $00                           ; 834D A5 00                    ..
        beq     BattleSetupServices_Branch_836A ; 834F F0 19                    ..
        dey                                     ; 8351 88                       .
BattleSetupServices_Branch_8352:
        lda     ($02),y                       ; 8352 B1 02                    ..
        tax                                     ; 8354 AA                       .
        ldy     #$00                            ; 8355 A0 00                    ..
        lda     ($02),y                       ; 8357 B1 02                    ..
        lsr     a                               ; 8359 4A                       J
        lsr     a                               ; 835A 4A                       J
        lsr     a                               ; 835B 4A                       J
        lsr     a                               ; 835C 4A                       J
        lsr     a                               ; 835D 4A                       J
BattleSetupServices_Branch_835E:
        lsr     a                               ; 835E 4A                       J
        dec     $00                           ; 835F C6 00                    ..
        bpl     BattleSetupServices_Branch_835E ; 8361 10 FB                    ..
        rol     a                               ; 8363 2A                       *
        and     #$01                            ; 8364 29 01                    ).
        sec                                     ; 8366 38                       8
        rts                                     ; 8367 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8368:
        clc                                     ; 8368 18                       .
        rts                                     ; 8369 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_836A:
        lda     #$01                            ; 836A A9 01                    ..
        ldx     #$5E                            ; 836C A2 5E                    .^
        sec                                     ; 836E 38                       8
        rts                                     ; 836F 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8370:
        lda     $8A                             ; 8370 A5 8A                    ..
        and     #$01                            ; 8372 29 01                    ).
        asl     a                               ; 8374 0A                       .
        tax                                     ; 8375 AA                       .
        lda     $848F,x                         ; 8376 BD 8F 84                 ...
        sta     $00                           ; 8379 85 00                    ..
        lda     $8490,x                         ; 837B BD 90 84                 ...
        sta     $01                             ; 837E 85 01                    ..
        lda     $8B                             ; 8380 A5 8B                    ..
        ldx     #$00                            ; 8382 A2 00                    ..
        jsr     AddByteToPointer                ; 8384 20 13 C8                  ..
        ldx     #$00                            ; 8387 A2 00                    ..
        lda     ($00,x)                       ; 8389 A1 00                    ..
        pha                                     ; 838B 48                       H
        and     #$07                            ; 838C 29 07                    ).
        beq     BattleSetupServices_Branch_8395 ; 838E F0 05                    ..
        jsr     BattleSetupServices_Entry_83D3  ; 8390 20 D3 83                  ..
        sta     $F9                             ; 8393 85 F9                    ..
BattleSetupServices_Branch_8395:
        pla                                     ; 8395 68                       h
        pha                                     ; 8396 48                       H
        lsr     a                               ; 8397 4A                       J
        lsr     a                               ; 8398 4A                       J
        lsr     a                               ; 8399 4A                       J
        and     #$07                            ; 839A 29 07                    ).
        beq     BattleSetupServices_Branch_83A3 ; 839C F0 05                    ..
        jsr     BattleSetupServices_Entry_83D3  ; 839E 20 D3 83                  ..
        sta     $FA                             ; 83A1 85 FA                    ..
BattleSetupServices_Branch_83A3:
        pla                                     ; 83A3 68                       h
        and     #$C0                            ; 83A4 29 C0                    ).
        beq     BattleSetupServices_Branch_83B4 ; 83A6 F0 0C                    ..
        ldx     #$00                            ; 83A8 A2 00                    ..
        stx     $FF                             ; 83AA 86 FF                    ..
        cmp     #$40                            ; 83AC C9 40                    .@
        beq     BattleSetupServices_Branch_83B5 ; 83AE F0 05                    ..
        cmp     #$80                            ; 83B0 C9 80                    ..
        beq     BattleSetupServices_Branch_83BE ; 83B2 F0 0A                    ..
BattleSetupServices_Branch_83B4:
        rts                                     ; 83B4 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_83B5:
        lda     $7361                           ; 83B5 AD 61 73                 .as
        ldx     $7362                           ; 83B8 AE 62 73                 .bs
        jmp     BattleSetupServices_Branch_83CE ; 83BB 4C CE 83                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_83BE:
        lda     $7363                           ; 83BE AD 63 73                 .cs
        bmi     BattleSetupServices_Branch_83CA ; 83C1 30 07                    0.
        lda     $72                             ; 83C3 A5 72                    .r
        ldx     $73                             ; 83C5 A6 73                    .s
        jmp     BattleSetupServices_Branch_83CE ; 83C7 4C CE 83                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_83CA:
        lda     $7E                             ; 83CA A5 7E                    .~
        ldx     $7F                             ; 83CC A6 7F                    ..
BattleSetupServices_Branch_83CE:
        sta     $FD                             ; 83CE 85 FD                    ..
        stx     $FE                             ; 83D0 86 FE                    ..
        rts                                     ; 83D2 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_83D3:
        asl     a                               ; 83D3 0A                       .
        tax                                     ; 83D4 AA                       .
        lda     $8491,x                         ; 83D5 BD 91 84                 ...
        sta     $02                           ; 83D8 85 02                    ..
        lda     $8492,x                         ; 83DA BD 92 84                 ...
        sta     $03                             ; 83DD 85 03                    ..
        jmp     ($0002)                         ; 83DF 6C 02 00                 l..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_83E2:
        jsr     BattleSetupServices_Entry_83E8  ; 83E2 20 E8 83                  ..
        jmp     BattleSetupServices_Branch_83F1 ; 83E5 4C F1 83                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_83E8:
        brk                                     ; 83E8 00                       .
        db   $01,$1F                         ; 83E9 01 1F                    ..
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_8408 ; 83EB 4C 08 84                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_83EE:
        jsr     BattleSetupServices_Entry_8405  ; 83EE 20 05 84                  ..
BattleSetupServices_Branch_83F1:
        lda     $02                           ; 83F1 A5 02                    ..
        bpl     BattleSetupServices_Branch_8404 ; 83F3 10 0F                    ..
        and     #$87                            ; 83F5 29 87                    ).
        sta     $02                           ; 83F7 85 02                    ..
        and     #$07                            ; 83F9 29 07                    ).
        tax                                     ; 83FB AA                       .
        jsr     BattleSetupServices_Entry_842C  ; 83FC 20 2C 84                  ,.
        asl     a                               ; 83FF 0A                       .
        asl     a                               ; 8400 0A                       .
        asl     a                               ; 8401 0A                       .
        ora     $02                           ; 8402 05 02                    ..
BattleSetupServices_Branch_8404:
        rts                                     ; 8404 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8405:
        lda     $7363                           ; 8405 AD 63 73                 .cs
BattleSetupServices_Branch_8408:
        pha                                     ; 8408 48                       H
        pla                                     ; 8409 68                       h
        bmi     BattleSetupServices_Branch_841F ; 840A 30 13                    0.
        tax                                     ; 840C AA                       .
        lda     $72                             ; 840D A5 72                    .r
        pha                                     ; 840F 48                       H
        lda     $73                             ; 8410 A5 73                    .s
        pha                                     ; 8412 48                       H
        txa                                     ; 8413 8A                       .
        brk                                     ; 8414 00                       .
        db   $67,$73                         ; 8415 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; 8417 AA                       .
        pla                                     ; 8418 68                       h
        sta     $73                             ; 8419 85 73                    .s
        pla                                     ; 841B 68                       h
        sta     $72                             ; 841C 85 72                    .r
        txa                                     ; 841E 8A                       .
BattleSetupServices_Branch_841F:
        ora     #$40                            ; 841F 09 40                    .@
        sta     $02                           ; 8421 85 02                    ..
        rts                                     ; 8423 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8424:
        lda     $7355                           ; 8424 AD 55 73                 .Us
        rts                                     ; 8427 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8428:
        brk                                     ; 8428 00                       .
        db   $03,$1F                         ; 8429 03 1F                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 842B 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_842C:
        lda     $7E                             ; 842C A5 7E                    .~
        pha                                     ; 842E 48                       H
        lda     $7F                             ; 842F A5 7F                    ..
        pha                                     ; 8431 48                       H
        brk                                     ; 8432 00                       .
        db   $2D,$A3                         ; 8433 2D A3                    -.
; ----------------------------------------------------------------------------
        tay                                     ; 8435 A8                       .
        lda     $6E45,y                         ; 8436 B9 45 6E                 .En
        sta     $03                             ; 8439 85 03                    ..
        sty     $01                             ; 843B 84 01                    ..
        txa                                     ; 843D 8A                       .
        pha                                     ; 843E 48                       H
        ldy     #$03                            ; 843F A0 03                    ..
BattleSetupServices_Branch_8441:
        cpy     $01                             ; 8441 C4 01                    ..
        beq     BattleSetupServices_Branch_845C ; 8443 F0 17                    ..
        ldx     #$FF                            ; 8445 A2 FF                    ..
        tya                                     ; 8447 98                       .
        brk                                     ; 8448 00                       .
        db   $2D,$B3                         ; 8449 2D B3                    -.
; ----------------------------------------------------------------------------
        pha                                     ; 844B 48                       H
        brk                                     ; 844C 00                       .
        db   $29,$C3,$0F                     ; 844D 29 C3 0F                 )..
; ----------------------------------------------------------------------------
        pla                                     ; 8450 68                       h
        and     $7E                             ; 8451 25 7E                    %~
        beq     BattleSetupServices_Branch_845C ; 8453 F0 07                    ..
        lda     $6E45,y                         ; 8455 B9 45 6E                 .En
        cmp     $03                             ; 8458 C5 03                    ..
        beq     BattleSetupServices_Branch_847A ; 845A F0 1E                    ..
BattleSetupServices_Branch_845C:
        dey                                     ; 845C 88                       .
        bpl     BattleSetupServices_Branch_8441 ; 845D 10 E2                    ..
        lda     $01                             ; 845F A5 01                    ..
        ldx     #$FF                            ; 8461 A2 FF                    ..
        brk                                     ; 8463 00                       .
        db   $2D,$B3                         ; 8464 2D B3                    -.
; ----------------------------------------------------------------------------
        pha                                     ; 8466 48                       H
        brk                                     ; 8467 00                       .
        db   $29,$C3,$0F                     ; 8468 29 C3 0F                 )..
; ----------------------------------------------------------------------------
        pla                                     ; 846B 68                       h
        and     $7E                             ; 846C 25 7E                    %~
        ldy     #$07                            ; 846E A0 07                    ..
BattleSetupServices_Branch_8470:
        lsr     a                               ; 8470 4A                       J
        bcs     BattleSetupServices_Branch_8478 ; 8471 B0 05                    ..
        dey                                     ; 8473 88                       .
        bpl     BattleSetupServices_Branch_8470 ; 8474 10 FA                    ..
        bmi     BattleSetupServices_Branch_8488 ; 8476 30 10                    0.
BattleSetupServices_Branch_8478:
        beq     BattleSetupServices_Branch_8488 ; 8478 F0 0E                    ..
BattleSetupServices_Branch_847A:
        pla                                     ; 847A 68                       h
        tax                                     ; 847B AA                       .
        brk                                     ; 847C 00                       .
        db   $2E,$B3                         ; 847D 2E B3                    ..
; ----------------------------------------------------------------------------
        tax                                     ; 847F AA                       .
BattleSetupServices_Branch_8480:
        pla                                     ; 8480 68                       h
        sta     $7F                             ; 8481 85 7F                    ..
        pla                                     ; 8483 68                       h
        sta     $7E                             ; 8484 85 7E                    .~
        txa                                     ; 8486 8A                       .
        rts                                     ; 8487 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8488:
        pla                                     ; 8488 68                       h
        ldx     #$08                            ; 8489 A2 08                    ..
        bne     BattleSetupServices_Branch_8480 ; 848B D0 F3                    ..
Bank12_BattleSetupDataPointers:
        db   $BC                             ; 848D BC                       .
        db   $8B                             ; 848E 8B                       .
        db   $36                             ; 848F 36                       6
        db   $8A                             ; 8490 8A                       .
        db   $C1                             ; 8491 C1                       .
        db   $8A                             ; 8492 8A                       .
Bank12_BattleSetupHandlerPointers:
        db   $E2,$83,$EE,$83,$E8,$83,$05,$84 ; 8493 E2 83 EE 83 E8 83 05 84  ........
        db   $24,$84,$28,$84,$24,$84,$61,$73 ; 849B 24 84 28 84 24 84 61 73  $.(.$.as
        db   $72,$00,$7E,$00,$61,$73         ; 84A3 72 00 7E 00 61 73        r.~.as
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_84A9:
        brk                                     ; 84A9 00                       .
        db   $17,$5F                         ; 84AA 17 5F                    ._
; ----------------------------------------------------------------------------
        pla                                     ; 84AC 68                       h
        pla                                     ; 84AD 68                       h
        pla                                     ; 84AE 68                       h
        pla                                     ; 84AF 68                       h
        pla                                     ; 84B0 68                       h
        rts                                     ; 84B1 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_84B2:
        lda     $6E45                           ; 84B2 AD 45 6E                 .En
        cmp     #$AD                            ; 84B5 C9 AD                    ..
        beq     BattleSetupServices_Branch_84A9 ; 84B7 F0 F0                    ..
        brk                                     ; 84B9 00                       .
        db   $07,$6F,$3D                     ; 84BA 07 6F 3D                 .o=
; ----------------------------------------------------------------------------
        brk                                     ; 84BD 00                       .
        db   $05,$6F                         ; 84BE 05 6F                    .o
; ----------------------------------------------------------------------------
        lda     #$00                            ; 84C0 A9 00                    ..
        sta     $96                             ; 84C2 85 96                    ..
        sta     $735C                           ; 84C4 8D 5C 73                 .\s
BattleSetupServices_Branch_84C7:
        ldx     $96                             ; 84C7 A6 96                    ..
        lda     $6E45,x                         ; 84C9 BD 45 6E                 .En
        cmp     #$FF                            ; 84CC C9 FF                    ..
        beq     BattleSetupServices_Branch_84DC ; 84CE F0 0C                    ..
        jsr     BattleSetupServices_Entry_85AB  ; 84D0 20 AB 85                  ..
        txa                                     ; 84D3 8A                       .
        ora     #$C0                            ; 84D4 09 C0                    ..
        sta     $F9                             ; 84D6 85 F9                    ..
        brk                                     ; 84D8 00                       .
        db   $CC,$D3,$05                     ; 84D9 CC D3 05                 ...
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_84DC:
        inc     $96                             ; 84DC E6 96                    ..
        lda     $96                             ; 84DE A5 96                    ..
        cmp     #$04                            ; 84E0 C9 04                    ..
        bne     BattleSetupServices_Branch_84C7 ; 84E2 D0 E3                    ..
        lda     #$C0                            ; 84E4 A9 C0                    ..
        sta     $F9                             ; 84E6 85 F9                    ..
        lda     $6E44                           ; 84E8 AD 44 6E                 .Dn
        and     #$03                            ; 84EB 29 03                    ).
        beq     BattleSetupServices_Branch_8513 ; 84ED F0 24                    .$
        cmp     #$01                            ; 84EF C9 01                    ..
        beq     BattleSetupServices_Branch_84FB ; 84F1 F0 08                    ..
        cmp     #$02                            ; 84F3 C9 02                    ..
        bne     BattleSetupServices_Branch_8513 ; 84F5 D0 1C                    ..
        ldy     #$DF                            ; 84F7 A0 DF                    ..
        bne     BattleSetupServices_Branch_84FD ; 84F9 D0 02                    ..
BattleSetupServices_Branch_84FB:
        ldy     #$DB                            ; 84FB A0 DB                    ..
BattleSetupServices_Branch_84FD:
        brk                                     ; 84FD 00                       .
        db   $1B,$0F                         ; 84FE 1B 0F                    ..
; ----------------------------------------------------------------------------
        and     #$01                            ; 8500 29 01                    ).
        asl     a                               ; 8502 0A                       .
        sta     $00                           ; 8503 85 00                    ..
        tya                                     ; 8505 98                       .
        adc     $00                           ; 8506 65 00                    e.
        tay                                     ; 8508 A8                       .
        bit     $72E4                           ; 8509 2C E4 72                 ,.r
        bvs     BattleSetupServices_Branch_850F ; 850C 70 01                    p.
        iny                                     ; 850E C8                       .
BattleSetupServices_Branch_850F:
        tya                                     ; 850F 98                       .
        brk                                     ; 8510 00                       .
        db   $C1,$E3                         ; 8511 C1 E3                    ..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8513:
        brk                                     ; 8513 00                       .
        db   $13,$2F                         ; 8514 13 2F                    ./
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_8536  ; 8516 20 36 85                  6.
        brk                                     ; 8519 00                       .
        db   $10,$1F                         ; 851A 10 1F                    ..
; ----------------------------------------------------------------------------
        lda     $6E45                           ; 851C AD 45 6E                 .En
        cmp     #$BA                            ; 851F C9 BA                    ..
        beq     BattleSetupServices_Branch_8524 ; 8521 F0 01                    ..
        rts                                     ; 8523 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8524:
        lda     #$FF                            ; 8524 A9 FF                    ..
        sta     $C7                             ; 8526 85 C7                    ..
        brk                                     ; 8528 00                       .
        db   $0E,$4F                         ; 8529 0E 4F                    .O
; ----------------------------------------------------------------------------
        brk                                     ; 852B 00                       .
        db   $30,$B3                         ; 852C 30 B3                    0.
; ----------------------------------------------------------------------------
        ldx     #$00                            ; 852E A2 00                    ..
        brk                                     ; 8530 00                       .
        db   $00,$B3                         ; 8531 00 B3                    ..
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_92CD ; 8533 4C CD 92                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8536:
        brk                                     ; 8536 00                       .
        db   $07,$6F,$3D                     ; 8537 07 6F 3D                 .o=
; ----------------------------------------------------------------------------
        lda     #$00                            ; 853A A9 00                    ..
        brk                                     ; 853C 00                       .
        db   $06,$6F                         ; 853D 06 6F                    .o
; ----------------------------------------------------------------------------
        ldx     #$00                            ; 853F A2 00                    ..
        stx     $8E                             ; 8541 86 8E                    ..
BattleSetupServices_Branch_8543:
        txa                                     ; 8543 8A                       .
        pha                                     ; 8544 48                       H
        brk                                     ; 8545 00                       .
        db   $29,$C3,$0F                     ; 8546 29 C3 0F                 )..
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_85A3 ; 8549 90 58                    .X
        stx     $F9                             ; 854B 86 F9                    ..
        jsr     BattleSetupServices_Entry_842C  ; 854D 20 2C 84                  ,.
        asl     a                               ; 8550 0A                       .
        asl     a                               ; 8551 0A                       .
        asl     a                               ; 8552 0A                       .
        ora     #$80                            ; 8553 09 80                    ..
        ora     $F9                             ; 8555 05 F9                    ..
        sta     $F9                             ; 8557 85 F9                    ..
        and     #$07                            ; 8559 29 07                    ).
        tax                                     ; 855B AA                       .
        brk                                     ; 855C 00                       .
        db   $27,$A3                         ; 855D 27 A3                    '.
; ----------------------------------------------------------------------------
        and     #$07                            ; 855F 29 07                    ).
        cmp     #$07                            ; 8561 C9 07                    ..
        beq     BattleSetupServices_Branch_85A3 ; 8563 F0 3E                    .>
        tay                                     ; 8565 A8                       .
        lda     $85BC,y                         ; 8566 B9 BC 85                 ...
        sta     $00                           ; 8569 85 00                    ..
        brk                                     ; 856B 00                       .
        db   $1B,$0F                         ; 856C 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     $00                           ; 856E C5 00                    ..
        beq     BattleSetupServices_Branch_8574 ; 8570 F0 02                    ..
        bcs     BattleSetupServices_Branch_85A3 ; 8572 B0 2F                    ./
BattleSetupServices_Branch_8574:
        ldx     $7B                             ; 8574 A6 7B                    .{
        brk                                     ; 8576 00                       .
        db   $26,$A3                         ; 8577 26 A3                    &.
; ----------------------------------------------------------------------------
        and     #$03                            ; 8579 29 03                    ).
        tay                                     ; 857B A8                       .
        lda     $85C6,y                         ; 857C B9 C6 85                 ...
        brk                                     ; 857F 00                       .
        db   $2A,$B3                         ; 8580 2A B3                    *.
; ----------------------------------------------------------------------------
        cpy     #$03                            ; 8582 C0 03                    ..
        beq     BattleSetupServices_Branch_85A3 ; 8584 F0 1D                    ..
        tya                                     ; 8586 98                       .
        clc                                     ; 8587 18                       .
        adc     #$1F                            ; 8588 69 1F                    i.
        tax                                     ; 858A AA                       .
        lda     $85C3,y                         ; 858B B9 C3 85                 ...
        asl     a                               ; 858E 0A                       .
        adc     TextOutputY                     ; 858F 6D 52 05                 mR.
        cmp     #$0A                            ; 8592 C9 0A                    ..
        txa                                     ; 8594 8A                       .
        bcc     BattleSetupServices_Branch_859E ; 8595 90 07                    ..
        pha                                     ; 8597 48                       H
        lda     #$00                            ; 8598 A9 00                    ..
        brk                                     ; 859A 00                       .
        db   $06,$6F                         ; 859B 06 6F                    .o
; ----------------------------------------------------------------------------
        pla                                     ; 859D 68                       h
BattleSetupServices_Branch_859E:
        brk                                     ; 859E 00                       .
        db   $EC,$E3                         ; 859F EC E3                    ..
; ----------------------------------------------------------------------------
        inc     $8E                             ; 85A1 E6 8E                    ..
BattleSetupServices_Branch_85A3:
        pla                                     ; 85A3 68                       h
        tax                                     ; 85A4 AA                       .
        inx                                     ; 85A5 E8                       .
        cpx     #$08                            ; 85A6 E0 08                    ..
        bcc     BattleSetupServices_Branch_8543 ; 85A8 90 99                    ..
        rts                                     ; 85AA 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_85AB:
        pha                                     ; 85AB 48                       H
        txa                                     ; 85AC 8A                       .
        ldx     #$FF                            ; 85AD A2 FF                    ..
        brk                                     ; 85AF 00                       .
        db   $2D,$B3                         ; 85B0 2D B3                    -.
; ----------------------------------------------------------------------------
        ldx     #$FF                            ; 85B2 A2 FF                    ..
        beq     $85BA                           ; 85B4 F0 04                    ..
BattleSetupServices_Branch_85B6:
        lsr     a                               ; 85B6 4A                       J
        inx                                     ; 85B7 E8                       .
        bcc     BattleSetupServices_Branch_85B6 ; 85B8 90 FC                    ..
        pla                                     ; 85BA 68                       h
        rts                                     ; 85BB 60                       `
; ----------------------------------------------------------------------------
        db   $FF,$7F,$1F,$0F,$07,$03,$00     ; 85BC FF 7F 1F 0F 07 03 00     .......
        db   $01,$01,$02                     ; 85C3 01 01 02                 ...
        db   $00,$0D,$02,$06                 ; 85C6 00 0D 02 06              ....
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_85CA:
        lda     $62EE                           ; 85CA AD EE 62                 ..b
        cmp     #$07                            ; 85CD C9 07                    ..
        beq     BattleSetupServices_Branch_861B ; 85CF F0 4A                    .J
BattleSetupServices_Branch_85D1:
        jsr     BattleSetupServices_Entry_860D  ; 85D1 20 0D 86                  ..
        sta     $6E5D                           ; 85D4 8D 5D 6E                 .]n
        clc                                     ; 85D7 18                       .
        adc     $050C                           ; 85D8 6D 0C 05                 m..
        sta     $6E5C                           ; 85DB 8D 5C 6E                 .\n
        rts                                     ; 85DE 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_85DF:
        lda     $62EE                           ; 85DF AD EE 62                 ..b
        cmp     #$07                            ; 85E2 C9 07                    ..
        bne     BattleSetupServices_Branch_85D1 ; 85E4 D0 EB                    ..
        rts                                     ; 85E6 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_85E7:
        txa                                     ; 85E7 8A                       .
        pha                                     ; 85E8 48                       H
        lda     $62EE                           ; 85E9 AD EE 62                 ..b
        cmp     #$07                            ; 85EC C9 07                    ..
        beq     BattleSetupServices_Branch_8604 ; 85EE F0 14                    ..
        sec                                     ; 85F0 38                       8
        lda     $6E5C                           ; 85F1 AD 5C 6E                 .\n
        sbc     $050C                           ; 85F4 ED 0C 05                 ...
        cmp     $6E5D                           ; 85F7 CD 5D 6E                 .]n
        beq     BattleSetupServices_Branch_85FE ; 85FA F0 02                    ..
        bcs     BattleSetupServices_Branch_8604 ; 85FC B0 06                    ..
BattleSetupServices_Branch_85FE:
        tax                                     ; 85FE AA                       .
        beq     BattleSetupServices_Branch_8604 ; 85FF F0 03                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 8601 20 0C C9                  ..
BattleSetupServices_Branch_8604:
        pla                                     ; 8604 68                       h
        tax                                     ; 8605 AA                       .
        rts                                     ; 8606 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8607:
        jsr     BattleSetupServices_Entry_85E7  ; 8607 20 E7 85                  ..
        jmp     BattleSetupServices_Entry_85DF  ; 860A 4C DF 85                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_860D:
        ldx     $62EE                           ; 860D AE EE 62                 ..b
        lda     $8614,x                         ; 8610 BD 14 86                 ...
        rts                                     ; 8613 60                       `
; ----------------------------------------------------------------------------
        db   $0F,$15,$1B,$21,$28,$2E,$36     ; 8614 0F 15 1B 21 28 2E 36     ...!(.6
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_861B:
        lda     #$00                            ; 861B A9 00                    ..
        sta     $02                           ; 861D 85 02                    ..
BattleSetupServices_Branch_861F:
        jsr     UpperFixedEngine_Entry_C8EC     ; 861F 20 EC C8                  ..
        lda     #$80                            ; 8622 A9 80                    ..
        jsr     BattleSetupServices_Entry_8637  ; 8624 20 37 86                  7.
        jsr     BattleSetupServices_Entry_8644  ; 8627 20 44 86                  D.
        bne     BattleSetupServices_Branch_8636 ; 862A D0 0A                    ..
        lda     #$00                            ; 862C A9 00                    ..
        jsr     BattleSetupServices_Entry_8637  ; 862E 20 37 86                  7.
        jsr     BattleSetupServices_Entry_8644  ; 8631 20 44 86                  D.
        beq     BattleSetupServices_Branch_861F ; 8634 F0 E9                    ..
BattleSetupServices_Branch_8636:
        rts                                     ; 8636 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8637:
        ldx     #$1B                            ; 8637 A2 1B                    ..
        stx     $00                           ; 8639 86 00                    ..
        dex                                     ; 863B CA                       .
        stx     $01                             ; 863C 86 01                    ..
        jsr     UpperFixedEngine_Entry_C65A     ; 863E 20 5A C6                  Z.
        jmp     UpperFixedEngine_Entry_C626     ; 8641 4C 26 C6                 L&.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8644:
        ldx     #$0F                            ; 8644 A2 0F                    ..
BattleSetupServices_Branch_8646:
        txa                                     ; 8646 8A                       .
        pha                                     ; 8647 48                       H
        jsr     WaitForNmi                      ; 8648 20 74 FF                  t.
        jsr     UpperFixedEngine_Entry_C8EC     ; 864B 20 EC C8                  ..
        lda     $7384                           ; 864E AD 84 73                 ..s
        bne     BattleSetupServices_Branch_865A ; 8651 D0 07                    ..
        jsr     BattleSetupServices_Entry_8671  ; 8653 20 71 86                  q.
        bne     BattleSetupServices_Branch_866D ; 8656 D0 15                    ..
        beq     BattleSetupServices_Branch_865F ; 8658 F0 05                    ..
BattleSetupServices_Branch_865A:
        jsr     BattleSetupServices_Entry_8671  ; 865A 20 71 86                  q.
        inc     $02                           ; 865D E6 02                    ..
BattleSetupServices_Branch_865F:
        pla                                     ; 865F 68                       h
        tax                                     ; 8660 AA                       .
        dex                                     ; 8661 CA                       .
        bne     BattleSetupServices_Branch_8646 ; 8662 D0 E2                    ..
        lda     $02                           ; 8664 A5 02                    ..
        cmp     #$10                            ; 8666 C9 10                    ..
        bcs     BattleSetupServices_Branch_866E ; 8668 B0 04                    ..
        lda     #$00                            ; 866A A9 00                    ..
        rts                                     ; 866C 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_866D:
        pla                                     ; 866D 68                       h
BattleSetupServices_Branch_866E:
        lda     #$FF                            ; 866E A9 FF                    ..
        rts                                     ; 8670 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8671:
        lda     ButtonsPressed                  ; 8671 A5 14                    ..
        sta     $7384                           ; 8673 8D 84 73                 ..s
        rts                                     ; 8676 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8677:
        ldx     $6E7E                           ; 8677 AE 7E 6E                 .~n
        cpx     #$07                            ; 867A E0 07                    ..
        beq     BattleSetupServices_Branch_8689 ; 867C F0 0B                    ..
        cpx     #$04                            ; 867E E0 04                    ..
        bcs     BattleSetupServices_Branch_8688 ; 8680 B0 06                    ..
        lda     $86A0,x                         ; 8682 BD A0 86                 ...
        brk                                     ; 8685 00                       .
        db   $E8,$E3                         ; 8686 E8 E3                    ..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8688:
        rts                                     ; 8688 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8689:
        jsr     BattleSetupServices_Entry_85E7  ; 8689 20 E7 85                  ..
        brk                                     ; 868C 00                       .
        db   $8E,$FB                         ; 868D 8E FB                    ..
; ----------------------------------------------------------------------------
        ldy     #$10                            ; 868F A0 10                    ..
        brk                                     ; 8691 00                       .
        db   $03,$4F                         ; 8692 03 4F                    .O
; ----------------------------------------------------------------------------
        brk                                     ; 8694 00                       .
        db   $E0,$D3,$89                     ; 8695 E0 D3 89                 ...
; ----------------------------------------------------------------------------
        brk                                     ; 8698 00                       .
        db   $07,$1F                         ; 8699 07 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 869B 00                       .
        db   $2A,$C3,$06                     ; 869C 2A C3 06                 *..
; ----------------------------------------------------------------------------
        clc                                     ; 869F 18                       .
        rts                                     ; 86A0 60                       `
; ----------------------------------------------------------------------------
        db   $86,$86,$87                     ; 86A1 86 86 87                 ...
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_86A4:
        lda     $6E45                           ; 86A4 AD 45 6E                 .En
        cmp     #$AE                            ; 86A7 C9 AE                    ..
        bne     BattleSetupServices_Branch_86B4 ; 86A9 D0 09                    ..
        lda     $6E7E                           ; 86AB AD 7E 6E                 .~n
        cmp     #$08                            ; 86AE C9 08                    ..
        bcs     BattleSetupServices_Branch_86B4 ; 86B0 B0 02                    ..
        sec                                     ; 86B2 38                       8
        rts                                     ; 86B3 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_86B4:
        clc                                     ; 86B4 18                       .
        rts                                     ; 86B5 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_86B6:
        brk                                     ; 86B6 00                       .
        db   $10,$1F                         ; 86B7 10 1F                    ..
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_811A  ; 86B9 20 1A 81                  ..
        lda     $0553                           ; 86BC AD 53 05                 .S.
        and     #$7F                            ; 86BF 29 7F                    ).
        sta     $0553                           ; 86C1 8D 53 05                 .S.
        lda     $72E7                           ; 86C4 AD E7 72                 ..r
        and     #$60                            ; 86C7 29 60                    )`
        cmp     #$20                            ; 86C9 C9 20                    .
        beq     BattleSetupServices_Branch_86D6 ; 86CB F0 09                    ..
        cmp     #$40                            ; 86CD C9 40                    .@
        beq     BattleSetupServices_Branch_86D9 ; 86CF F0 08                    ..
        brk                                     ; 86D1 00                       .
        db   $09,$9F                         ; 86D2 09 9F                    ..
; ----------------------------------------------------------------------------
        clc                                     ; 86D4 18                       .
        rts                                     ; 86D5 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_86D6:
        jmp     BattleSetupServices_Branch_87AB ; 86D6 4C AB 87                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_86D9:
        brk                                     ; 86D9 00                       .
        db   $0E,$FB                         ; 86DA 0E FB                    ..
; ----------------------------------------------------------------------------
        lda     #$00                            ; 86DC A9 00                    ..
        sta     $6E                             ; 86DE 85 6E                    .n
        lda     #$08                            ; 86E0 A9 08                    ..
        brk                                     ; 86E2 00                       .
        db   $2D,$0F                         ; 86E3 2D 0F                    -.
; ----------------------------------------------------------------------------
        sta     $F9                             ; 86E5 85 F9                    ..
        brk                                     ; 86E7 00                       .
        db   $07,$6F,$3D                     ; 86E8 07 6F 3D                 .o=
; ----------------------------------------------------------------------------
        brk                                     ; 86EB 00                       .
        db   $4F,$33                         ; 86EC 4F 33                    O3
; ----------------------------------------------------------------------------
        cmp     #$04                            ; 86EE C9 04                    ..
        bcs     BattleSetupServices_Branch_870F ; 86F0 B0 1D                    ..
        tax                                     ; 86F2 AA                       .
        lda     $8741,x                         ; 86F3 BD 41 87                 .A.
        sta     $00                           ; 86F6 85 00                    ..
        brk                                     ; 86F8 00                       .
        db   $62,$33                         ; 86F9 62 33                    b3
; ----------------------------------------------------------------------------
        sta     $01                             ; 86FB 85 01                    ..
        ldx     #$00                            ; 86FD A2 00                    ..
BattleSetupServices_Branch_86FF:
        brk                                     ; 86FF 00                       .
        db   $2B,$53                         ; 8700 2B 53                    +S
; ----------------------------------------------------------------------------
        cmp     $00                           ; 8702 C5 00                    ..
        beq     BattleSetupServices_Branch_870D ; 8704 F0 07                    ..
        inx                                     ; 8706 E8                       .
        cpx     $01                             ; 8707 E4 01                    ..
        bne     BattleSetupServices_Branch_86FF ; 8709 D0 F4                    ..
        ldx     #$00                            ; 870B A2 00                    ..
BattleSetupServices_Branch_870D:
        stx     $F9                             ; 870D 86 F9                    ..
BattleSetupServices_Branch_870F:
        lda     $72E9                           ; 870F AD E9 72                 ..r
        and     #$C0                            ; 8712 29 C0                    ).
        cmp     #$40                            ; 8714 C9 40                    .@
        bne     BattleSetupServices_Branch_871E ; 8716 D0 06                    ..
        brk                                     ; 8718 00                       .
        db   $6B,$0B                         ; 8719 6B 0B                    k.
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_872F ; 871B 4C 2F 87                 L/.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_871E:
        brk                                     ; 871E 00                       .
        db   $62,$23,$08                     ; 871F 62 23 08                 b#.
; ----------------------------------------------------------------------------
        cmp     #$01                            ; 8722 C9 01                    ..
        bne     BattleSetupServices_Branch_872C ; 8724 D0 06                    ..
        brk                                     ; 8726 00                       .
        db   $1B,$0B                         ; 8727 1B 0B                    ..
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_872F ; 8729 4C 2F 87                 L/.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_872C:
        brk                                     ; 872C 00                       .
        db   $BF,$1B                         ; 872D BF 1B                    ..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_872F:
        jsr     UpperFixedEngine_Entry_C8CC     ; 872F 20 CC C8                  ..
        jsr     UpperFixedEngine_Entry_C5C5     ; 8732 20 C5 C5                  ..
        lda     $1F                             ; 8735 A5 1F                    ..
        and     #$F7                            ; 8737 29 F7                    ).
        sta     $1F                             ; 8739 85 1F                    ..
        ldx     #$FF                            ; 873B A2 FF                    ..
        txs                                     ; 873D 9A                       .
        jmp     UpperFixedEngine_Branch_C977    ; 873E 4C 77 C9                 Lw.
; ----------------------------------------------------------------------------
        db   $06,$07,$05,$03                 ; 8741 06 07 05 03              ....
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8745:
        lda     $6E7F                           ; 8745 AD 7F 6E                 ..n
        and     #$03                            ; 8748 29 03                    ).
        sta     $F9                             ; 874A 85 F9                    ..
        tax                                     ; 874C AA                       .
        jsr     BattleSetupServices_Entry_842C  ; 874D 20 2C 84                  ,.
        asl     a                               ; 8750 0A                       .
        asl     a                               ; 8751 0A                       .
        asl     a                               ; 8752 0A                       .
        ora     #$80                            ; 8753 09 80                    ..
        ora     $F9                             ; 8755 05 F9                    ..
        sta     $F9                             ; 8757 85 F9                    ..
        lda     $6E7F                           ; 8759 AD 7F 6E                 ..n
        and     #$C0                            ; 875C 29 C0                    ).
        cmp     #$40                            ; 875E C9 40                    .@
        bne     BattleSetupServices_Branch_8772 ; 8760 D0 10                    ..
        jsr     BattleSetupServices_Entry_8783  ; 8762 20 83 87                  ..
        brk                                     ; 8765 00                       .
        db   $07,$6F,$5F                     ; 8766 07 6F 5F                 .o_
; ----------------------------------------------------------------------------
        brk                                     ; 8769 00                       .
        db   $8A,$0B                         ; 876A 8A 0B                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 876C 00                       .
        db   $07,$9F                         ; 876D 07 9F                    ..
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_877D ; 876F 4C 7D 87                 L}.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8772:
        cmp     #$80                            ; 8772 C9 80                    ..
        bne     BattleSetupServices_Branch_877D ; 8774 D0 07                    ..
        brk                                     ; 8776 00                       .
        db   $07,$6F,$5F                     ; 8777 07 6F 5F                 .o_
; ----------------------------------------------------------------------------
        brk                                     ; 877A 00                       .
        db   $6B,$0B                         ; 877B 6B 0B                    k.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_877D:
        brk                                     ; 877D 00                       .
        db   $09,$9F                         ; 877E 09 9F                    ..
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Entry_D214     ; 8780 4C 14 D2                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8783:
        brk                                     ; 8783 00                       .
        db   $19,$8F                         ; 8784 19 8F                    ..
; ----------------------------------------------------------------------------
        lda     $02                           ; 8786 A5 02                    ..
        bne     BattleSetupServices_Branch_87A7 ; 8788 D0 1D                    ..
        sec                                     ; 878A 38                       8
        lda     $00                           ; 878B A5 00                    ..
        sbc     #$10                            ; 878D E9 10                    ..
        lda     $01                             ; 878F A5 01                    ..
        sbc     #$27                            ; 8791 E9 27                    .'
        bcs     BattleSetupServices_Branch_87A7 ; 8793 B0 12                    ..
        lda     $00                           ; 8795 A5 00                    ..
        sbc     #$F3                            ; 8797 E9 F3                    ..
        lda     $01                             ; 8799 A5 01                    ..
        sbc     #$01                            ; 879B E9 01                    ..
        bcs     BattleSetupServices_Branch_87A3 ; 879D B0 04                    ..
        brk                                     ; 879F 00                       .
        db   $2E,$FB                         ; 87A0 2E FB                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 87A2 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_87A3:
        brk                                     ; 87A3 00                       .
        db   $2F,$FB                         ; 87A4 2F FB                    /.
; ----------------------------------------------------------------------------
        rts                                     ; 87A6 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_87A7:
        brk                                     ; 87A7 00                       .
        db   $30,$FB                         ; 87A8 30 FB                    0.
; ----------------------------------------------------------------------------
        rts                                     ; 87AA 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_87AB:
        lda     $72E9                           ; 87AB AD E9 72                 ..r
        bmi     BattleSetupServices_Branch_8745 ; 87AE 30 95                    0.
        brk                                     ; 87B0 00                       .
        db   $07,$6F,$5F                     ; 87B1 07 6F 5F                 .o_
; ----------------------------------------------------------------------------
        brk                                     ; 87B4 00                       .
        db   $11,$FB                         ; 87B5 11 FB                    ..
; ----------------------------------------------------------------------------
        lda     $72E4                           ; 87B7 AD E4 72                 ..r
        and     #$30                            ; 87BA 29 30                    )0
        beq     BattleSetupServices_Branch_87D6 ; 87BC F0 18                    ..
        cmp     #$20                            ; 87BE C9 20                    .
        beq     BattleSetupServices_Branch_87D6 ; 87C0 F0 14                    ..
        bit     $72E4                           ; 87C2 2C E4 72                 ,.r
        bvs     BattleSetupServices_Branch_87D0 ; 87C5 70 09                    p.
        jsr     BattleSetupServices_Entry_889C  ; 87C7 20 9C 88                  ..
        brk                                     ; 87CA 00                       .
        db   $08,$0B                         ; 87CB 08 0B                    ..
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_87E7 ; 87CD 4C E7 87                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_87D0:
        brk                                     ; 87D0 00                       .
        db   $09,$0B                         ; 87D1 09 0B                    ..
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_87E7 ; 87D3 4C E7 87                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_87D6:
        bit     $72E4                           ; 87D6 2C E4 72                 ,.r
        bvs     BattleSetupServices_Branch_87E4 ; 87D9 70 09                    p.
        jsr     BattleSetupServices_Entry_889C  ; 87DB 20 9C 88                  ..
        brk                                     ; 87DE 00                       .
        db   $0A,$0B                         ; 87DF 0A 0B                    ..
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_87E7 ; 87E1 4C E7 87                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_87E4:
        brk                                     ; 87E4 00                       .
        db   $0B,$0B                         ; 87E5 0B 0B                    ..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_87E7:
        jsr     BattleSetupServices_Entry_888E  ; 87E7 20 8E 88                  ..
        lda     $72E5                           ; 87EA AD E5 72                 ..r
        lsr     a                               ; 87ED 4A                       J
        bcc     BattleSetupServices_Branch_87F9 ; 87EE 90 09                    ..
        asl     $7203                           ; 87F0 0E 03 72                 ..r
        rol     $7204                           ; 87F3 2E 04 72                 ..r
        rol     $7205                           ; 87F6 2E 05 72                 ..r
BattleSetupServices_Branch_87F9:
        lda     $7203                           ; 87F9 AD 03 72                 ..r
        sta     $FD                             ; 87FC 85 FD                    ..
        ora     $7204                           ; 87FE 0D 04 72                 ..r
        ora     $7205                           ; 8801 0D 05 72                 ..r
        beq     BattleSetupServices_Branch_8847 ; 8804 F0 41                    .A
        lda     $7204                           ; 8806 AD 04 72                 ..r
        sta     $FE                             ; 8809 85 FE                    ..
        lda     $7205                           ; 880B AD 05 72                 ..r
        sta     $FF                             ; 880E 85 FF                    ..
        brk                                     ; 8810 00                       .
        db   $62,$23,$09                     ; 8811 62 23 09                 b#.
; ----------------------------------------------------------------------------
        pha                                     ; 8814 48                       H
        cmp     #$01                            ; 8815 C9 01                    ..
        bne     BattleSetupServices_Branch_882A ; 8817 D0 11                    ..
        lda     #$00                            ; 8819 A9 00                    ..
        sta     $6E                             ; 881B 85 6E                    .n
        lda     #$09                            ; 881D A9 09                    ..
        brk                                     ; 881F 00                       .
        db   $2D,$0F                         ; 8820 2D 0F                    -.
; ----------------------------------------------------------------------------
        sta     $F9                             ; 8822 85 F9                    ..
        brk                                     ; 8824 00                       .
        db   $0C,$0B                         ; 8825 0C 0B                    ..
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_882D ; 8827 4C 2D 88                 L-.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_882A:
        brk                                     ; 882A 00                       .
        db   $0D,$0B                         ; 882B 0D 0B                    ..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_882D:
        lda     $FD                             ; 882D A5 FD                    ..
        sta     $6F                             ; 882F 85 6F                    .o
        lda     $FE                             ; 8831 A5 FE                    ..
        sta     $70                             ; 8833 85 70                    .p
        lda     $FF                             ; 8835 A5 FF                    ..
        sta     $71                             ; 8837 85 71                    .q
        pla                                     ; 8839 68                       h
        sta     $00                           ; 883A 85 00                    ..
        ldx     #$00                            ; 883C A2 00                    ..
BattleSetupServices_Branch_883E:
        brk                                     ; 883E 00                       .
        db   $27,$43,$09                     ; 883F 27 43 09                 'C.
; ----------------------------------------------------------------------------
        inx                                     ; 8842 E8                       .
        cpx     $00                           ; 8843 E4 00                    ..
        bne     BattleSetupServices_Branch_883E ; 8845 D0 F7                    ..
BattleSetupServices_Branch_8847:
        ldx     $7200                           ; 8847 AE 00 72                 ..r
        inx                                     ; 884A E8                       .
        beq     BattleSetupServices_Branch_8857 ; 884B F0 0A                    ..
        lda     $72E5                           ; 884D AD E5 72                 ..r
        and     #$02                            ; 8850 29 02                    ).
        bne     BattleSetupServices_Branch_8857 ; 8852 D0 03                    ..
        jsr     BattleSetupServices_Entry_91DD  ; 8854 20 DD 91                  ..
BattleSetupServices_Branch_8857:
        lda     $72E5                           ; 8857 AD E5 72                 ..r
        lsr     a                               ; 885A 4A                       J
        bcc     BattleSetupServices_Branch_8863 ; 885B 90 06                    ..
        asl     $7201                           ; 885D 0E 01 72                 ..r
        rol     $7202                           ; 8860 2E 02 72                 ..r
BattleSetupServices_Branch_8863:
        lda     $7201                           ; 8863 AD 01 72                 ..r
        sta     $6F                             ; 8866 85 6F                    .o
        ora     $7202                           ; 8868 0D 02 72                 ..r
        beq     BattleSetupServices_Branch_8888 ; 886B F0 1B                    ..
        lda     $7202                           ; 886D AD 02 72                 ..r
        sta     $70                             ; 8870 85 70                    .p
        lda     #$00                            ; 8872 A9 00                    ..
        sta     $71                             ; 8874 85 71                    .q
        brk                                     ; 8876 00                       .
        db   $4B,$33                         ; 8877 4B 33                    K3
; ----------------------------------------------------------------------------
        lda     $6F                             ; 8879 A5 6F                    .o
        sta     $FD                             ; 887B 85 FD                    ..
        lda     $70                             ; 887D A5 70                    .p
        sta     $FE                             ; 887F 85 FE                    ..
        lda     $71                             ; 8881 A5 71                    .q
        sta     $FF                             ; 8883 85 FF                    ..
        brk                                     ; 8885 00                       .
        db   $C3,$1B                         ; 8886 C3 1B                    ..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8888:
        brk                                     ; 8888 00                       .
        db   $08,$2F                         ; 8889 08 2F                    ./
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Entry_D218     ; 888B 4C 18 D2                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_888E:
        brk                                     ; 888E 00                       .
        db   $07,$9F                         ; 888F 07 9F                    ..
; ----------------------------------------------------------------------------
        lda     $6E45                           ; 8891 AD 45 6E                 .En
        cmp     #$AE                            ; 8894 C9 AE                    ..
        beq     BattleSetupServices_Branch_889B ; 8896 F0 03                    ..
        brk                                     ; 8898 00                       .
        db   $09,$9F                         ; 8899 09 9F                    ..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_889B:
        rts                                     ; 889B 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_889C:
        ldx     #$FF                            ; 889C A2 FF                    ..
        brk                                     ; 889E 00                       .
        db   $29,$B3                         ; 889F 29 B3                    ).
; ----------------------------------------------------------------------------
        tax                                     ; 88A1 AA                       .
        beq     BattleSetupServices_Branch_88AA ; 88A2 F0 06                    ..
        ldx     #$FF                            ; 88A4 A2 FF                    ..
BattleSetupServices_Branch_88A6:
        lsr     a                               ; 88A6 4A                       J
        inx                                     ; 88A7 E8                       .
        bcc     BattleSetupServices_Branch_88A6 ; 88A8 90 FC                    ..
BattleSetupServices_Branch_88AA:
        txa                                     ; 88AA 8A                       .
        ora     #$C0                            ; 88AB 09 C0                    ..
        sta     $F9                             ; 88AD 85 F9                    ..
        rts                                     ; 88AF 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_88B0:
        lda     $72E9                           ; 88B0 AD E9 72                 ..r
        bpl     BattleSetupServices_Branch_88E5 ; 88B3 10 30                    .0
        lda     $0553                           ; 88B5 AD 53 05                 .S.
        and     #$7F                            ; 88B8 29 7F                    ).
        sta     $0553                           ; 88BA 8D 53 05                 .S.
        lda     $6E81                           ; 88BD AD 81 6E                 ..n
        cmp     #$0A                            ; 88C0 C9 0A                    ..
        bcc     BattleSetupServices_Branch_88D3 ; 88C2 90 0F                    ..
        jsr     BattleSetupServices_Entry_892B  ; 88C4 20 2B 89                  +.
        brk                                     ; 88C7 00                       .
        db   $82,$0B                         ; 88C8 82 0B                    ..
; ----------------------------------------------------------------------------
        lda     $6E7F                           ; 88CA AD 7F 6E                 ..n
        and     #$3F                            ; 88CD 29 3F                    )?
        sta     $6E7F                           ; 88CF 8D 7F 6E                 ..n
        rts                                     ; 88D2 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_88D3:
        ldx     #$06                            ; 88D3 A2 06                    ..
BattleSetupServices_Branch_88D5:
        txa                                     ; 88D5 8A                       .
        pha                                     ; 88D6 48                       H
        jsr     UpperFixedEngine_Entry_C8EC     ; 88D7 20 EC C8                  ..
        pla                                     ; 88DA 68                       h
        tax                                     ; 88DB AA                       .
        lda     ButtonsPressed                  ; 88DC A5 14                    ..
        and     #$02                            ; 88DE 29 02                    ).
        bne     BattleSetupServices_Branch_88E6 ; 88E0 D0 04                    ..
        dex                                     ; 88E2 CA                       .
        bpl     BattleSetupServices_Branch_88D5 ; 88E3 10 F0                    ..
BattleSetupServices_Branch_88E5:
        rts                                     ; 88E5 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_88E6:
        ldx     #$FF                            ; 88E6 A2 FF                    ..
        brk                                     ; 88E8 00                       .
        db   $29,$C3,$0E                     ; 88E9 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        ldx     $6E7F                           ; 88EC AE 7F 6E                 ..n
        brk                                     ; 88EF 00                       .
        db   $29,$0F                         ; 88F0 29 0F                    ).
; ----------------------------------------------------------------------------
        and     $7E                             ; 88F2 25 7E                    %~
        beq     BattleSetupServices_Branch_8912 ; 88F4 F0 1C                    ..
        brk                                     ; 88F6 00                       .
        db   $07,$6F,$3D                     ; 88F7 07 6F 3D                 .o=
; ----------------------------------------------------------------------------
        brk                                     ; 88FA 00                       .
        db   $7E,$0B                         ; 88FB 7E 0B                    ~.
; ----------------------------------------------------------------------------
        brk                                     ; 88FD 00                       .
        db   $07,$6F,$6E                     ; 88FE 07 6F 6E                 .on
; ----------------------------------------------------------------------------
        bne     BattleSetupServices_Branch_8925 ; 8901 D0 22                    ."
        jsr     BattleSetupServices_Entry_892B  ; 8903 20 2B 89                  +.
        brk                                     ; 8906 00                       .
        db   $7F,$0B                         ; 8907 7F 0B                    ..
; ----------------------------------------------------------------------------
        lda     $6E7F                           ; 8909 AD 7F 6E                 ..n
        ora     #$C0                            ; 890C 09 C0                    ..
        sta     $6E7F                           ; 890E 8D 7F 6E                 ..n
        rts                                     ; 8911 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8912:
        brk                                     ; 8912 00                       .
        db   $81,$0B                         ; 8913 81 0B                    ..
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_892B  ; 8915 20 2B 89                  +.
        lda     $6E7F                           ; 8918 AD 7F 6E                 ..n
        ora     #$80                            ; 891B 09 80                    ..
        sta     $6E7F                           ; 891D 8D 7F 6E                 ..n
BattleSetupServices_Branch_8920:
        ldx     #$64                            ; 8920 A2 64                    .d
        jmp     UpperFixedEngine_Entry_C90C     ; 8922 4C 0C C9                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8925:
        brk                                     ; 8925 00                       .
        db   $80,$0B                         ; 8926 80 0B                    ..
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_8920 ; 8928 4C 20 89                 L .
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_892B:
        lda     $72E7                           ; 892B AD E7 72                 ..r
        and     #$9F                            ; 892E 29 9F                    ).
        ora     #$20                            ; 8930 09 20                    .
        sta     $72E7                           ; 8932 8D E7 72                 ..r
        rts                                     ; 8935 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8936:
        lda     $1F                             ; 8936 A5 1F                    ..
        ora     #$08                            ; 8938 09 08                    ..
        sta     $1F                             ; 893A 85 1F                    ..
        jsr     BattleSetupServices_Entry_8A02  ; 893C 20 02 8A                  ..
        ldx     #$01                            ; 893F A2 01                    ..
        stx     $29                             ; 8941 86 29                    .)
BattleSetupServices_Branch_8943:
        jsr     BattleSetupServices_Entry_8990  ; 8943 20 90 89                  ..
        jsr     BattleSetupServices_Entry_89C0  ; 8946 20 C0 89                  ..
        jsr     BattleSetupServices_Entry_8A22  ; 8949 20 22 8A                  ".
        inc     $29                             ; 894C E6 29                    .)
        lda     $29                             ; 894E A5 29                    .)
        cmp     #$F0                            ; 8950 C9 F0                    ..
        bcc     BattleSetupServices_Branch_8943 ; 8952 90 EF                    ..
        lda     $0508                           ; 8954 AD 08 05                 ...
        sta     $7600                           ; 8957 8D 00 76                 ..v
        bcs     BattleSetupServices_Branch_897D ; 895A B0 21                    .!
BattleSetupServices_Entry_895C:
        lda     $1F                             ; 895C A5 1F                    ..
        ora     #$08                            ; 895E 09 08                    ..
        sta     $1F                             ; 8960 85 1F                    ..
        jsr     BattleSetupServices_Entry_8A02  ; 8962 20 02 8A                  ..
        lda     #$F0                            ; 8965 A9 F0                    ..
        sta     $29                             ; 8967 85 29                    .)
BattleSetupServices_Branch_8969:
        jsr     BattleSetupServices_Entry_8990  ; 8969 20 90 89                  ..
        jsr     BattleSetupServices_Entry_89E9  ; 896C 20 E9 89                  ..
        jsr     BattleSetupServices_Entry_8A22  ; 896F 20 22 8A                  ".
        dec     $29                             ; 8972 C6 29                    .)
        bne     BattleSetupServices_Branch_8969 ; 8974 D0 F3                    ..
        lda     #$00                            ; 8976 A9 00                    ..
        ldx     #$F0                            ; 8978 A2 F0                    ..
        jsr     BattleSetupServices_Entry_8A1A  ; 897A 20 1A 8A                  ..
BattleSetupServices_Branch_897D:
        lda     #$00                            ; 897D A9 00                    ..
        sta     $0508                           ; 897F 8D 08 05                 ...
        jsr     BattleSetupServices_Entry_8A0A  ; 8982 20 0A 8A                  ..
        lda     $1F                             ; 8985 A5 1F                    ..
        and     #$F7                            ; 8987 29 F7                    ).
        sta     $1F                             ; 8989 85 1F                    ..
        ldx     #$32                            ; 898B A2 32                    .2
        jmp     UpperFixedEngine_Entry_C90C     ; 898D 4C 0C C9                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8990:
        lda     #$00                            ; 8990 A9 00                    ..
        sta     $01                             ; 8992 85 01                    ..
        lda     $29                             ; 8994 A5 29                    .)
        sta     $00                           ; 8996 85 00                    ..
        ldx     #$00                            ; 8998 A2 00                    ..
        jsr     MultiplyPointerWord             ; 899A 20 27 C8                  '.
        lda     #$08                            ; 899D A9 08                    ..
        jsr     UpperFixedEngine_Entry_C851     ; 899F 20 51 C8                  Q.
        lda     $0508                           ; 89A2 AD 08 05                 ...
        clc                                     ; 89A5 18                       .
        adc     $00                           ; 89A6 65 00                    e.
        sta     $0508                           ; 89A8 8D 08 05                 ...
        ldx     #$00                            ; 89AB A2 00                    ..
BattleSetupServices_Branch_89AD:
        sec                                     ; 89AD 38                       8
        lda     $0203,x                         ; 89AE BD 03 02                 ...
        sta     $7600,x                         ; 89B1 9D 00 76                 ..v
        sbc     $00                           ; 89B4 E5 00                    ..
        sta     $0203,x                         ; 89B6 9D 03 02                 ...
        inx                                     ; 89B9 E8                       .
        inx                                     ; 89BA E8                       .
        inx                                     ; 89BB E8                       .
        inx                                     ; 89BC E8                       .
        bne     BattleSetupServices_Branch_89AD ; 89BD D0 EE                    ..
        rts                                     ; 89BF 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_89C0:
        lda     #$F0                            ; 89C0 A9 F0                    ..
        sec                                     ; 89C2 38                       8
        sbc     $29                             ; 89C3 E5 29                    .)
        cmp     #$1F                            ; 89C5 C9 1F                    ..
        beq     BattleSetupServices_Branch_89D9 ; 89C7 F0 10                    ..
        cmp     #$15                            ; 89C9 C9 15                    ..
        beq     BattleSetupServices_Branch_89DD ; 89CB F0 10                    ..
        cmp     #$0B                            ; 89CD C9 0B                    ..
        beq     BattleSetupServices_Branch_89E1 ; 89CF F0 10                    ..
        cmp     #$01                            ; 89D1 C9 01                    ..
        bne     BattleSetupServices_Branch_89FF ; 89D3 D0 2A                    .*
BattleSetupServices_Branch_89D5:
        lda     #$40                            ; 89D5 A9 40                    .@
        bne     BattleSetupServices_Entry_8A1A  ; 89D7 D0 41                    .A
BattleSetupServices_Branch_89D9:
        lda     #$10                            ; 89D9 A9 10                    ..
        bne     BattleSetupServices_Entry_8A1A  ; 89DB D0 3D                    .=
BattleSetupServices_Branch_89DD:
        lda     #$20                            ; 89DD A9 20                    .
        bne     BattleSetupServices_Entry_8A1A  ; 89DF D0 39                    .9
BattleSetupServices_Branch_89E1:
        lda     #$30                            ; 89E1 A9 30                    .0
        bne     BattleSetupServices_Entry_8A1A  ; 89E3 D0 35                    .5
BattleSetupServices_Branch_89E5:
        lda     #$00                            ; 89E5 A9 00                    ..
        beq     BattleSetupServices_Entry_8A1A  ; 89E7 F0 31                    .1
BattleSetupServices_Entry_89E9:
        lda     $29                             ; 89E9 A5 29                    .)
        cmp     #$F0                            ; 89EB C9 F0                    ..
        beq     BattleSetupServices_Branch_89D5 ; 89ED F0 E6                    ..
        cmp     #$E6                            ; 89EF C9 E6                    ..
        beq     BattleSetupServices_Branch_89E1 ; 89F1 F0 EE                    ..
        cmp     #$DC                            ; 89F3 C9 DC                    ..
        beq     BattleSetupServices_Branch_89DD ; 89F5 F0 E6                    ..
        cmp     #$D2                            ; 89F7 C9 D2                    ..
        beq     BattleSetupServices_Branch_89D9 ; 89F9 F0 DE                    ..
        cmp     #$C8                            ; 89FB C9 C8                    ..
        beq     BattleSetupServices_Branch_89E5 ; 89FD F0 E6                    ..
BattleSetupServices_Branch_89FF:
        jmp     WaitForNmi                      ; 89FF 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8A02:
        lda     #$0F                            ; 8A02 A9 0F                    ..
        sta     $0500                           ; 8A04 8D 00 05                 ...
        jmp     WriteMmc1Control                ; 8A07 4C 18 C1                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8A0A:
        lda     $0505                           ; 8A0A AD 05 05                 ...
        and     #$FD                            ; 8A0D 29 FD                    ).
        sta     $0505                           ; 8A0F 8D 05 05                 ...
        lda     #$0E                            ; 8A12 A9 0E                    ..
        sta     $0500                           ; 8A14 8D 00 05                 ...
        jmp     WriteMmc1Control                ; 8A17 4C 18 C1                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8A1A:
        sta     $16                             ; 8A1A 85 16                    ..
        jsr     UpperFixedEngine_Entry_C5DE     ; 8A1C 20 DE C5                  ..
        jmp     WaitForNmi                      ; 8A1F 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_8A22:
        ldx     #$00                            ; 8A22 A2 00                    ..
BattleSetupServices_Branch_8A24:
        lda     $7600,x                         ; 8A24 BD 00 76                 ..v
        sta     $0203,x                         ; 8A27 9D 03 02                 ...
        inx                                     ; 8A2A E8                       .
        inx                                     ; 8A2B E8                       .
        inx                                     ; 8A2C E8                       .
        inx                                     ; 8A2D E8                       .
        bne     BattleSetupServices_Branch_8A24 ; 8A2E D0 F4                    ..
        lda     #$00                            ; 8A30 A9 00                    ..
        sta     $0508                           ; 8A32 8D 08 05                 ...
        rts                                     ; 8A35 60                       `
; ----------------------------------------------------------------------------
Bank12_BattleSetupSelectorMapA:
        db   $00,$00,$2B,$03,$00,$02,$02,$02 ; 8A36 00 00 2B 03 00 02 02 02  ..+.....
        db   $02,$00,$02,$00,$00,$00,$02,$00 ; 8A3E 02 00 02 00 00 00 02 00  ........
        db   $00,$01,$01,$01,$01,$01,$42,$42 ; 8A46 00 01 01 01 01 01 42 42  ......BB
        db   $02,$02,$00,$02,$02,$01,$00,$00 ; 8A4E 02 02 00 02 02 01 00 00  ........
        db   $00,$00,$01,$01,$01,$01,$01,$01 ; 8A56 00 00 01 01 01 01 01 01  ........
        db   $11,$03,$18,$03,$18,$29,$01,$02 ; 8A5E 11 03 18 03 18 29 01 02  .....)..
        db   $01,$00,$01,$01,$01,$01,$01,$02 ; 8A66 01 00 01 01 01 01 01 02  ........
        db   $01,$01,$01,$01,$03,$01,$82,$01 ; 8A6E 01 01 01 01 03 01 82 01  ........
        db   $11,$03,$01,$01,$01,$01,$02,$02 ; 8A76 11 03 01 01 01 01 02 02  ........
        db   $01,$02,$02,$01,$01,$00,$00,$02 ; 8A7E 01 02 02 01 01 00 00 02  ........
        db   $00,$00,$00,$00,$00,$00,$04,$02 ; 8A86 00 00 00 00 00 00 04 02  ........
        db   $00,$02,$02,$00,$00,$00,$00,$00 ; 8A8E 00 02 02 00 00 00 00 00  ........
        db   $00,$02,$02,$02,$02,$00,$00,$00 ; 8A96 00 02 02 02 02 00 00 00  ........
        db   $01,$01,$00,$02,$02,$04,$02,$00 ; 8A9E 01 01 00 02 02 04 02 00  ........
        db   $03,$03,$03,$00,$02,$00,$00,$03 ; 8AA6 03 03 03 00 02 00 00 03  ........
        db   $00,$00,$00,$00,$01,$01,$00,$00 ; 8AAE 00 00 00 00 01 01 00 00  ........
        db   $00,$00,$00,$02,$02,$00,$00,$00 ; 8AB6 00 00 00 02 02 00 00 00  ........
        db   $00,$00,$00                     ; 8ABE 00 00 00                 ...
Bank12_BattleSetupSelectorMapB:
        db   $01,$01,$01,$01,$01,$01,$01,$02 ; 8AC1 01 01 01 01 01 01 01 02  ........
        db   $01,$02,$01,$02,$01,$11,$01,$00 ; 8AC9 01 02 01 02 01 11 01 00  ........
        db   $2B,$03,$03,$03,$2B,$03,$00,$40 ; 8AD1 2B 03 03 03 2B 03 00 40  +...+..@
        db   $23,$23,$03,$03,$13,$03,$03,$03 ; 8AD9 23 23 03 03 13 03 03 03  ##......
        db   $02,$40,$02,$03,$03,$03,$02,$2B ; 8AE1 02 40 02 03 03 03 02 2B  .@.....+
        db   $1A,$03,$03,$03,$03,$03,$13,$03 ; 8AE9 1A 03 03 03 03 03 13 03  ........
        db   $13,$02,$01,$02,$03,$00,$03,$03 ; 8AF1 13 02 01 02 03 00 03 03  ........
        db   $03,$03,$03,$03,$2B,$01,$01,$01 ; 8AF9 03 03 03 03 2B 01 01 01  ....+...
        db   $11,$01,$01,$00,$03,$03,$13,$11 ; 8B01 11 01 01 00 03 03 13 11  ........
        db   $03,$03,$23,$00,$04,$03,$02,$01 ; 8B09 03 03 23 00 04 03 02 01  ..#.....
        db   $03,$02,$03,$02,$01,$00,$00,$00 ; 8B11 03 02 03 02 01 00 00 00  ........
        db   $03,$02,$02,$03,$02,$00,$31,$33 ; 8B19 03 02 02 03 02 00 31 33  ......13
        db   $00,$03,$06,$03,$31,$02,$02,$02 ; 8B21 00 03 06 03 31 02 02 02  ....1...
        db   $82,$82,$82,$02,$02,$00,$02,$02 ; 8B29 82 82 82 02 02 00 02 02  ........
        db   $02,$02,$11,$02,$02,$21,$00,$04 ; 8B31 02 02 11 02 02 21 00 04  .....!..
        db   $82,$82,$01,$03,$02,$02,$82,$03 ; 8B39 82 82 01 03 02 02 82 03  ........
        db   $02,$02,$02,$84,$03,$02,$00,$03 ; 8B41 02 02 02 84 03 02 00 03  ........
        db   $00,$00,$00,$02,$00,$03,$03,$00 ; 8B49 00 00 00 02 00 03 03 00  ........
        db   $00,$00,$02,$00,$00,$00,$04,$00 ; 8B51 00 00 02 00 00 00 04 00  ........
        db   $00,$00,$02,$03,$03,$03,$2B,$2B ; 8B59 00 00 02 03 03 03 2B 2B  ......++
        db   $2B,$29,$02,$02,$29,$02,$02,$2B ; 8B61 2B 29 02 02 29 02 02 2B  +)..)..+
        db   $2B,$05,$11,$2B,$83,$00,$2B,$2B ; 8B69 2B 05 11 2B 83 00 2B 2B  +..+..++
        db   $2B,$02,$00,$83,$83,$83,$83,$83 ; 8B71 2B 02 00 83 83 83 83 83  +.......
        db   $2B,$02,$10,$03,$00,$01,$01,$00 ; 8B79 2B 02 10 03 00 01 01 00  +.......
        db   $02,$04,$04,$00,$00,$00,$00,$00 ; 8B81 02 04 04 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 8B89 00 00 00 00 00 00 00 00  ........
        db   $02,$02,$00,$00,$00,$00,$00,$00 ; 8B91 02 02 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 8B99 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$04,$02,$02 ; 8BA1 00 00 00 00 00 04 02 02  ........
        db   $00,$01,$29,$00,$04,$03,$03,$02 ; 8BA9 00 01 29 00 04 03 03 02  ..).....
        db   $02,$01,$11,$01,$01,$01,$01,$01 ; 8BB1 02 01 11 01 01 01 01 01  ........
        db   $01,$00,$01                     ; 8BB9 01 00 01                 ...
Bank12_BattleSetupRecords:
        db   $09,$18,$09,$18,$09,$18,$09,$18 ; 8BBC 09 18 09 18 09 18 09 18  ........
        db   $09,$18,$09,$18,$09,$18,$09,$18 ; 8BC4 09 18 09 18 09 18 09 18  ........
        db   $09,$18,$09,$18,$09,$18,$09,$18 ; 8BCC 09 18 09 18 09 18 09 18  ........
        db   $09,$18,$09,$18,$09,$18,$09,$18 ; 8BD4 09 18 09 18 09 18 09 18  ........
        db   $09,$18,$09,$18,$09,$18,$4F,$67 ; 8BDC 09 18 09 18 09 18 4F 67  ......Og
        db   $1B,$19,$4F,$67,$1B,$19,$1F,$16 ; 8BE4 1B 19 4F 67 1B 19 1F 16  ..Og....
        db   $17,$18,$1C,$4B,$6E,$18,$CF,$65 ; 8BEC 17 18 1C 4B 6E 18 CF 65  ...Kn..e
        db   $66,$18,$CF,$65,$66,$18,$CF,$6F ; 8BF4 66 18 CF 65 66 18 CF 6F  f..ef..o
        db   $70,$18,$CF,$71,$71,$18,$DF,$73 ; 8BFC 70 18 CF 71 71 18 DF 73  p..qq..s
        db   $73,$18,$57,$CF,$78,$79,$18,$C7 ; 8C04 73 18 57 CF 78 79 18 C7  s.W.xy..
        db   $7D,$7D,$C7,$7C,$7C,$CF,$68,$69 ; 8C0C 7D 7D C7 7C 7C CF 68 69  }}.||.hi
        db   $18,$CF,$68,$69,$18,$43,$6A,$43 ; 8C14 18 CF 68 69 18 43 6A 43  ..hi.CjC
        db   $6A,$43,$7E,$43,$7F,$C7,$80,$80 ; 8C1C 6A 43 7E 43 7F C7 80 80  jC~C....
        db   $C7,$7A,$7B,$CF,$75,$74,$58,$85 ; 8C24 C7 7A 7B CF 75 74 58 85  .z{.utX.
        db   $77,$C7,$6B,$6B,$C7,$6B,$6B,$C7 ; 8C2C 77 C7 6B 6B C7 6B 6B C7  w.kk.kk.
        db   $6B,$6B,$C7,$6B,$6B,$C7,$6B,$6B ; 8C34 6B 6B C7 6B 6B C7 6B 6B  kk.kk.kk
        db   $C7,$81,$81,$C7,$82,$82,$4B,$6C ; 8C3C C7 81 81 C7 82 82 4B 6C  ......Kl
        db   $59,$4B,$6C,$59,$C7,$6C,$6B,$03 ; 8C44 59 4B 6C 59 C7 6C 6B 03  YKlY.lk.
        db   $1A,$01,$01,$01,$01,$01,$01,$01 ; 8C4C 1A 01 01 01 01 01 01 01  ........
        db   $01,$01,$33,$21,$0C,$01,$34,$01 ; 8C54 01 01 33 21 0C 01 34 01  ..3!..4.
        db   $35,$03,$36,$37,$01,$2E,$01,$2E ; 8C5C 35 03 36 37 01 2E 01 2E  5.67....
        db   $11,$4C,$4D,$11,$4C,$4E,$11,$4C ; 8C64 11 4C 4D 11 4C 4E 11 4C  .LM.LN.L
        db   $4E,$CF,$4C,$65,$66,$18,$85,$4C ; 8C6C 4E CF 4C 65 66 18 85 4C  N.Lef..L
        db   $09,$C7,$4C,$0B,$0B,$03,$3D,$3E ; 8C74 09 C7 4C 0B 0B 03 3D 3E  ..L...=>
        db   $03,$3D,$3E,$03,$3D,$3E,$5E,$67 ; 8C7C 03 3D 3E 03 3D 3E 5E 67  .=>.=>^g
        db   $1B,$19,$7A,$21,$00,$21,$01,$21 ; 8C84 1B 19 7A 21 00 21 01 21  ..z!.!.!
        db   $02,$21,$03,$21,$04,$21,$05,$EF ; 8C8C 02 21 03 21 04 21 05 EF  .!.!.!..
        db   $06,$65,$66,$5A,$EF,$08,$08,$09 ; 8C94 06 65 66 5A EF 08 08 09  .efZ....
        db   $5A,$EF,$0A,$0B,$0B,$5A,$0F,$45 ; 8C9C 5A EF 0A 0B 0B 5A 0F 45  Z....Z.E
        db   $47,$47,$46,$01,$48,$02,$1D,$0B ; 8CA4 47 47 46 01 48 02 1D 0B  GGF.H...
        db   $30,$05,$31,$03,$2E,$2F,$0B,$30 ; 8CAC 30 05 31 03 2E 2F 0B 30  0.1../.0
        db   $05,$31,$0B,$30,$05,$31,$0B,$30 ; 8CB4 05 31 0B 30 05 31 0B 30  .1.0.1.0
        db   $05,$31,$0B,$30,$05,$31,$0B,$30 ; 8CBC 05 31 0B 30 05 31 0B 30  .1.0.1.0
        db   $05,$31,$0B,$30,$05,$31,$0B,$30 ; 8CC4 05 31 0B 30 05 31 0B 30  .1.0.1.0
        db   $05,$31,$0B,$30,$05,$31,$0B,$30 ; 8CCC 05 31 0B 30 05 31 0B 30  .1.0.1.0
        db   $05,$31,$0B,$30,$05,$31,$0B,$30 ; 8CD4 05 31 0B 30 05 31 0B 30  .1.0.1.0
        db   $05,$31,$01,$3C,$01,$7C,$01,$7D ; 8CDC 05 31 01 3C 01 7C 01 7D  .1.<.|.}
        db   $01,$38,$01,$39,$01,$3A,$01,$3B ; 8CE4 01 38 01 39 01 3A 01 3B  .8.9.:.;
        db   $09,$42,$18,$1F,$44,$16,$17,$18 ; 8CEC 09 42 18 1F 44 16 17 18  .B..D...
        db   $1C,$01,$3F,$E7,$F1,$6B,$6B,$CE ; 8CF4 1C 01 3F E7 F1 6B 6B CE  ..?..kk.
        db   $6C,$F2,$59,$21,$F3,$FF,$F4,$65 ; 8CFC 6C F2 59 21 F3 FF F4 65  l.Y!...e
        db   $66,$18,$53,$39,$F5,$18,$51,$21 ; 8D04 66 18 53 39 F5 18 51 21  f.S9..Q!
        db   $F6,$E7,$F7,$6B,$6B,$EF,$F8,$6F ; 8D0C F6 E7 F7 6B 6B EF F8 6F  ...kk..o
        db   $70,$18,$2F,$44,$47,$47,$46,$03 ; 8D14 70 18 2F 44 47 47 46 03  p./DGGF.
        db   $3D,$3E,$EF,$45,$65,$66,$18,$21 ; 8D1C 3D 3E EF 45 65 66 18 21  =>.Eef.!
        db   $48,$EF,$4D,$4E,$4E,$61,$21,$50 ; 8D24 48 EF 4D 4E 4E 61 21 50  H.MNNa!P
        db   $00,$27,$9E,$1A,$1A,$01,$22,$00 ; 8D2C 00 27 9E 1A 1A 01 22 00  .'....".
        db   $21,$EA,$39,$A1,$18,$51,$39,$A1 ; 8D34 21 EA 39 A1 18 51 39 A1  !.9..Q9.
        db   $18,$52,$FF,$A1,$65,$66,$18,$53 ; 8D3C 18 52 FF A1 65 66 18 53  .R..ef.S
        db   $39,$A1,$18,$5D,$39,$A1,$18,$5C ; 8D44 39 A1 18 5D 39 A1 18 5C  9..]9..\
        db   $FF,$A1,$6F,$70,$18,$53,$39,$A1 ; 8D4C FF A1 6F 70 18 53 39 A1  ..op.S9.
        db   $18,$54,$FF,$A1,$68,$69,$18,$55 ; 8D54 18 54 FF A1 68 69 18 55  .T..hi.U
        db   $E7,$A1,$6B,$6B,$29,$A1,$18,$EF ; 8D5C E7 A1 6B 6B 29 A1 18 EF  ..kk)...
        db   $A1,$E7,$E7,$18,$29,$A1,$18,$EF ; 8D64 A1 E7 E7 18 29 A1 18 EF  ....)...
        db   $A4,$6B,$6B,$18,$EF,$A4,$A5,$A5 ; 8D6C A4 6B 6B 18 EF A4 A5 A5  .kk.....
        db   $18,$EF,$A4,$7C,$7C,$18,$E7,$A4 ; 8D74 18 EF A4 7C 7C 18 E7 A4  ...||...
        db   $7D,$7D,$21,$9F,$E7,$9E,$6B,$6B ; 8D7C 7D 7D 21 9F E7 9E 6B 6B  }}!...kk
        db   $29,$A7,$18,$63,$A8,$A9,$CE,$6C ; 8D84 29 A7 18 63 A8 A9 CE 6C  )..c...l
        db   $AA,$59,$E7,$9E,$81,$81,$E7,$AB ; 8D8C AA 59 E7 9E 81 81 E7 AB  .Y......
        db   $AC,$AD,$63,$9E,$AC,$E7,$AE,$6B ; 8D94 AC AD 63 9E AC E7 AE 6B  ..c....k
        db   $6B,$FF,$A4,$6E,$6E,$18,$73,$EF ; 8D9C 6B FF A4 6E 6E 18 73 EF  k..nn.s.
        db   $A4,$6F,$70,$18,$7B,$B0,$B1,$18 ; 8DA4 A4 6F 70 18 7B B0 B1 18  .op.{...
        db   $5F,$21,$A7,$E7,$A4,$6B,$6B,$63 ; 8DAC 5F 21 A7 E7 A4 6B 6B 63  _!...kkc
        db   $9E,$B3,$63,$9E,$B4,$63,$9E,$B5 ; 8DB4 9E B3 63 9E B4 63 9E B5  ..c..c..
        db   $63,$9E,$B6,$63,$9E,$B7,$E7,$B8 ; 8DBC 63 9E B6 63 9E B7 E7 B8  c..c....
        db   $BA,$B9,$E7,$9E,$A6,$A6,$EF,$52 ; 8DC4 BA B9 E7 9E A6 A6 EF 52  .......R
        db   $53,$53,$18,$11,$30,$4D,$EF,$58 ; 8DCC 53 53 18 11 30 4D EF 58  SS..0M.X
        db   $59,$59,$63,$EF,$5B,$5C,$5C,$64 ; 8DD4 59 59 63 EF 5B 5C 5C 64  YYc.[\\d
        db   $21,$0C,$03,$1D,$04,$63,$0E,$0F ; 8DDC 21 0C 03 1D 04 63 0E 0F  !....c..
        db   $00,$00,$00,$E7,$1F,$20,$22,$63 ; 8DE4 00 00 00 E7 1F 20 22 63  ..... "c
        db   $23,$24,$C6,$6B,$6B,$63,$25,$26 ; 8DEC 23 24 C6 6B 6B 63 25 26  #$.kkc%&
        db   $00,$63,$29,$2A,$21,$2B,$21,$2C ; 8DF4 00 63 29 2A 21 2B 21 2C  .c)*!+!,
        db   $01,$28,$C6,$2E,$2F,$21,$2D,$C6 ; 8DFC 01 28 C6 2E 2F 21 2D C6  .(../!-.
        db   $30,$31,$63,$32,$33,$C6,$34,$35 ; 8E04 30 31 63 32 33 C6 34 35  01c23.45
        db   $63,$4F,$6A,$21,$36,$42,$37,$63 ; 8E0C 63 4F 6A 21 36 42 37 63  cOj!6B7c
        db   $3B,$3C,$21,$38,$63,$39,$3A,$E7 ; 8E14 3B 3C 21 38 63 39 3A E7  ;<!8c9:.
        db   $15,$16,$17,$C6,$18,$19,$00,$63 ; 8E1C 15 16 17 C6 18 19 00 63  .......c
        db   $1A,$1B,$00,$63,$1D,$1E,$21,$3D ; 8E24 1A 1B 00 63 1D 1E 21 3D  ...c..!=
        db   $21,$3E,$00,$03,$30,$31,$23,$3F ; 8E2C 21 3E 00 03 30 31 23 3F  !>..01#?
        db   $1A,$21,$42,$43,$4C,$43,$02,$1D ; 8E34 1A 21 42 43 4C 43 02 1D  .!BCLC..
        db   $3F,$54,$16,$17,$18,$1C,$06,$1C ; 8E3C 3F 54 16 17 18 1C 06 1C  ?T......
        db   $1C,$C6,$6B,$6B,$42,$87,$42,$88 ; 8E44 1C C6 6B 6B 42 87 42 88  ..kkB.B.
        db   $42,$8A,$42,$8B,$C6,$8C,$8D,$00 ; 8E4C 42 8A 42 8B C6 8C 8D 00  B.B.....
        db   $C6,$92,$92,$84,$77,$42,$93,$00 ; 8E54 C6 92 92 84 77 42 93 00  ....wB..
        db   $00,$C6,$9A,$9A,$42,$9B,$42,$6A ; 8E5C 00 C6 9A 9A 42 9B 42 6A  ....B.Bj
        db   $C6,$71,$71,$42,$7E,$42,$9C,$C6 ; 8E64 C6 71 71 42 7E 42 9C C6  .qqB~B..
        db   $6C,$6B,$42,$85,$42,$EF,$C6,$6B ; 8E6C 6C 6B 42 85 42 EF C6 6B  lkB.B..k
        db   $6B,$C6,$6B,$6B,$C6,$73,$73,$C6 ; 8E74 6B C6 6B 6B C6 73 73 C6  k.kk.ss.
        db   $73,$73,$C6,$65,$66,$C6,$65,$66 ; 8E7C 73 73 C6 65 66 C6 65 66  ss.ef.ef
        db   $00,$00,$C6,$F0,$F0,$C6,$F0,$F0 ; 8E84 00 00 C6 F0 F0 C6 F0 F0  ........
        db   $42,$8B,$42,$8B,$01,$32,$DE,$6F ; 8E8C 42 8B 42 8B 01 32 DE 6F  B.B..2.o
        db   $70,$18,$75,$5A,$6E,$18,$73,$0A ; 8E94 70 18 75 5A 6E 18 73 0A  p.uZn.s.
        db   $05,$31,$10,$76,$D6,$80,$80,$74 ; 8E9C 05 31 10 76 D6 80 80 74  .1.v...t
        db   $DE,$71,$71,$18,$78,$D6,$6B,$6B ; 8EA4 DE 71 71 18 78 D6 6B 6B  .qq.x.kk
        db   $79                             ; 8EAC 79                       y
; ----------------------------------------------------------------------------
InitializeChapterSaveState:
        lda     #$00                            ; 8EAD A9 00                    ..
        sta     SaveGameStateFlags              ; 8EAF 8D 8E 61                 ..a
        ldx     #$48                            ; 8EB2 A2 48                    .H
BattleSetupServices_Branch_8EB4:
        sta     SaveWorkArea,x                  ; 8EB4 9D 0E 61                 ..a
        dex                                     ; 8EB7 CA                       .
        bne     BattleSetupServices_Branch_8EB4 ; 8EB8 D0 FA                    ..
        lda     #$00                            ; 8EBA A9 00                    ..
        sta     $615B                           ; 8EBC 8D 5B 61                 .[a
        lda     SaveCurrentChapterMinus1        ; 8EBF AD 5A 61                 .Za
        cmp     #$06                            ; 8EC2 C9 06                    ..
        bne     BattleSetupServices_Branch_8EE6 ; 8EC4 D0 20                    .
        ldx     #$00                            ; 8EC6 A2 00                    ..
        ldy     #$00                            ; 8EC8 A0 00                    ..
BattleSetupServices_Branch_8ECA:
        lda     $9142,x                         ; 8ECA BD 42 91                 .B.
        sta     SavePartyCharacter1,y           ; 8ECD 99 6A 61                 .ja
        inx                                     ; 8ED0 E8                       .
        iny                                     ; 8ED1 C8                       .
        cpy     #$04                            ; 8ED2 C0 04                    ..
        bne     BattleSetupServices_Branch_8ECA ; 8ED4 D0 F4                    ..
        ldy     #$08                            ; 8ED6 A0 08                    ..
BattleSetupServices_Branch_8ED8:
        lda     $9142,x                         ; 8ED8 BD 42 91                 .B.
        sta     SavePartyCharacter1,y           ; 8EDB 99 6A 61                 .ja
        inx                                     ; 8EDE E8                       .
        iny                                     ; 8EDF C8                       .
        cpy     #$0E                            ; 8EE0 C0 0E                    ..
        bne     BattleSetupServices_Branch_8ED8 ; 8EE2 D0 F4                    ..
        beq     BattleSetupServices_Branch_8EFC ; 8EE4 F0 16                    ..
BattleSetupServices_Branch_8EE6:
        ldy     #$00                            ; 8EE6 A0 00                    ..
        ldx     SaveCurrentChapterMinus1        ; 8EE8 AE 5A 61                 .Za
        lda     $913D,x                         ; 8EEB BD 3D 91                 .=.
        sta     SavePartyCharacter1             ; 8EEE 8D 6A 61                 .ja
        iny                                     ; 8EF1 C8                       .
        lda     #$00                            ; 8EF2 A9 00                    ..
BattleSetupServices_Branch_8EF4:
        sta     SavePartyCharacter1,y           ; 8EF4 99 6A 61                 .ja
        iny                                     ; 8EF7 C8                       .
        cpy     #$0E                            ; 8EF8 C0 0E                    ..
        bne     BattleSetupServices_Branch_8EF4 ; 8EFA D0 F8                    ..
BattleSetupServices_Branch_8EFC:
        ldx     #$00                            ; 8EFC A2 00                    ..
BattleSetupServices_Branch_8EFE:
        txa                                     ; 8EFE 8A                       .
        pha                                     ; 8EFF 48                       H
        lda     SaveCurrentChapterMinus1        ; 8F00 AD 5A 61                 .Za
        cmp     #$06                            ; 8F03 C9 06                    ..
        bcs     BattleSetupServices_Branch_8F12 ; 8F05 B0 0B                    ..
        lda     $9135,x                         ; 8F07 BD 35 91                 .5.
        cmp     SaveCurrentChapterMinus1        ; 8F0A CD 5A 61                 .Za
        beq     BattleSetupServices_Branch_8F12 ; 8F0D F0 03                    ..
        jmp     BattleSetupServices_Branch_9011 ; 8F0F 4C 11 90                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8F12:
        stx     $06                             ; 8F12 86 06                    ..
        txa                                     ; 8F14 8A                       .
        asl     a                               ; 8F15 0A                       .
        asl     a                               ; 8F16 0A                       .
        adc     $06                             ; 8F17 65 06                    e.
        adc     $06                             ; 8F19 65 06                    e.
        sta     $07                             ; 8F1B 85 07                    ..
        lda     $06                             ; 8F1D A5 06                    ..
        sta     $79                             ; 8F1F 85 79                    .y
        lda     #$00                            ; 8F21 A9 00                    ..
        sta     $7A                             ; 8F23 85 7A                    .z
        lda     #$1E                            ; 8F25 A9 1E                    ..
        ldx     #$79                            ; 8F27 A2 79                    .y
        jsr     MultiplyPointerWord             ; 8F29 20 27 C8                  '.
        lda     $9162                           ; 8F2C AD 62 91                 .b.
        ldy     $9163                           ; 8F2F AC 63 91                 .c.
        jsr     AddWordToPointer                ; 8F32 20 1D C8                  ..
        lda     #$00                            ; 8F35 A9 00                    ..
        sta     $03                             ; 8F37 85 03                    ..
BattleSetupServices_Branch_8F39:
        asl     a                               ; 8F39 0A                       .
        tax                                     ; 8F3A AA                       .
        lda     #$00                            ; 8F3B A9 00                    ..
        sta     $02                           ; 8F3D 85 02                    ..
        lda     $9150,x                         ; 8F3F BD 50 91                 .P.
        sta     $04                             ; 8F42 85 04                    ..
        lda     $9151,x                         ; 8F44 BD 51 91                 .Q.
        sta     $05                             ; 8F47 85 05                    ..
        lda     #$05                            ; 8F49 A9 05                    ..
        tax                                     ; 8F4B AA                       .
        clc                                     ; 8F4C 18                       .
        adc     $07                             ; 8F4D 65 07                    e.
        tay                                     ; 8F4F A8                       .
        dey                                     ; 8F50 88                       .
BattleSetupServices_Branch_8F51:
        lda     ($04),y                         ; 8F51 B1 04                    ..
        asl     a                               ; 8F53 0A                       .
        rol     $02                           ; 8F54 26 02                    &.
        dey                                     ; 8F56 88                       .
        dex                                     ; 8F57 CA                       .
        bne     BattleSetupServices_Branch_8F51 ; 8F58 D0 F7                    ..
        ldx     $03                             ; 8F5A A6 03                    ..
        ldy     $915C,x                         ; 8F5C BC 5C 91                 .\.
        lda     $02                           ; 8F5F A5 02                    ..
        sta     ($79),y                         ; 8F61 91 79                    .y
        inc     $03                             ; 8F63 E6 03                    ..
        lda     $03                             ; 8F65 A5 03                    ..
        cmp     #$06                            ; 8F67 C9 06                    ..
        bne     BattleSetupServices_Branch_8F39 ; 8F69 D0 CE                    ..
        ldy     $06                             ; 8F6B A4 06                    ..
        lda     $A289,y                         ; 8F6D B9 89 A2                 ...
        ldy     #$0C                            ; 8F70 A0 0C                    ..
        sta     ($79),y                         ; 8F72 91 79                    .y
        ldy     #$01                            ; 8F74 A0 01                    ..
        sta     ($79),y                         ; 8F76 91 79                    .y
        lda     #$00                            ; 8F78 A9 00                    ..
        ldy     #$0D                            ; 8F7A A0 0D                    ..
        sta     ($79),y                         ; 8F7C 91 79                    .y
        ldy     #$02                            ; 8F7E A0 02                    ..
        sta     ($79),y                         ; 8F80 91 79                    .y
        ldy     #$0E                            ; 8F82 A0 0E                    ..
        lda     $06                             ; 8F84 A5 06                    ..
        cmp     #$06                            ; 8F86 C9 06                    ..
        bcc     BattleSetupServices_Branch_8F8E ; 8F88 90 04                    ..
        lda     #$00                            ; 8F8A A9 00                    ..
        sta     ($79),y                         ; 8F8C 91 79                    .y
BattleSetupServices_Branch_8F8E:
        lda     ($79),y                         ; 8F8E B1 79                    .y
        ldy     #$03                            ; 8F90 A0 03                    ..
        sta     ($79),y                         ; 8F92 91 79                    .y
        lda     #$00                            ; 8F94 A9 00                    ..
        iny                                     ; 8F96 C8                       .
        sta     ($79),y                         ; 8F97 91 79                    .y
        lda     #$01                            ; 8F99 A9 01                    ..
        ldy     #$05                            ; 8F9B A0 05                    ..
        sta     ($79),y                         ; 8F9D 91 79                    .y
        lda     #$80                            ; 8F9F A9 80                    ..
        ldy     #$00                            ; 8FA1 A0 00                    ..
        sta     ($79),y                         ; 8FA3 91 79                    .y
        lda     $06                             ; 8FA5 A5 06                    ..
        cmp     #$05                            ; 8FA7 C9 05                    ..
        bcs     BattleSetupServices_Branch_8FFE ; 8FA9 B0 53                    .S
        asl     a                               ; 8FAB 0A                       .
        tax                                     ; 8FAC AA                       .
        lda     $9164,x                         ; 8FAD BD 64 91                 .d.
        sta     $04                             ; 8FB0 85 04                    ..
        lda     $9165,x                         ; 8FB2 BD 65 91                 .e.
        sta     $05                             ; 8FB5 85 05                    ..
        lda     $916E,x                         ; 8FB7 BD 6E 91                 .n.
        sta     $08                             ; 8FBA 85 08                    ..
        lda     $916F,x                         ; 8FBC BD 6F 91                 .o.
        sta     $09                             ; 8FBF 85 09                    ..
        lda     #$00                            ; 8FC1 A9 00                    ..
        sta     $00                           ; 8FC3 85 00                    ..
        sta     $01                             ; 8FC5 85 01                    ..
BattleSetupServices_Branch_8FC7:
        ldy     $00                           ; 8FC7 A4 00                    ..
        lda     ($04),y                         ; 8FC9 B1 04                    ..
        ldx     #$00                            ; 8FCB A2 00                    ..
BattleSetupServices_Branch_8FCD:
        lsr     a                               ; 8FCD 4A                       J
        pha                                     ; 8FCE 48                       H
        bcc     BattleSetupServices_Branch_8FF0 ; 8FCF 90 1F                    ..
        ldy     $01                             ; 8FD1 A4 01                    ..
        inc     $01                             ; 8FD3 E6 01                    ..
        lda     ($08),y                         ; 8FD5 B1 08                    ..
        cmp     #$01                            ; 8FD7 C9 01                    ..
        bne     BattleSetupServices_Branch_8FF0 ; 8FD9 D0 15                    ..
        txa                                     ; 8FDB 8A                       .
        asl     a                               ; 8FDC 0A                       .
        asl     a                               ; 8FDD 0A                       .
        asl     a                               ; 8FDE 0A                       .
        asl     a                               ; 8FDF 0A                       .
        asl     a                               ; 8FE0 0A                       .
        asl     a                               ; 8FE1 0A                       .
        ora     $00                           ; 8FE2 05 00                    ..
        rol     a                               ; 8FE4 2A                       *
        rol     a                               ; 8FE5 2A                       *
        rol     a                               ; 8FE6 2A                       *
        sta     $77                             ; 8FE7 85 77                    .w
        lda     $06                             ; 8FE9 A5 06                    ..
        sta     $72                             ; 8FEB 85 72                    .r
        brk                                     ; 8FED 00                       .
        db   $38,$0F                         ; 8FEE 38 0F                    8.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_8FF0:
        pla                                     ; 8FF0 68                       h
        inx                                     ; 8FF1 E8                       .
        cpx     #$08                            ; 8FF2 E0 08                    ..
        bne     BattleSetupServices_Branch_8FCD ; 8FF4 D0 D7                    ..
        inc     $00                           ; 8FF6 E6 00                    ..
        lda     $00                           ; 8FF8 A5 00                    ..
        cmp     #$08                            ; 8FFA C9 08                    ..
        bne     BattleSetupServices_Branch_8FC7 ; 8FFC D0 C9                    ..
BattleSetupServices_Branch_8FFE:
        lda     $06                             ; 8FFE A5 06                    ..
        asl     a                               ; 9000 0A                       .
        asl     a                               ; 9001 0A                       .
        asl     a                               ; 9002 0A                       .
        tax                                     ; 9003 AA                       .
        ldy     #$13                            ; 9004 A0 13                    ..
BattleSetupServices_Branch_9006:
        lda     $9191,x                         ; 9006 BD 91 91                 ...
        sta     ($79),y                         ; 9009 91 79                    .y
        iny                                     ; 900B C8                       .
        inx                                     ; 900C E8                       .
        cpy     #$1B                            ; 900D C0 1B                    ..
        bne     BattleSetupServices_Branch_9006 ; 900F D0 F5                    ..
BattleSetupServices_Branch_9011:
        pla                                     ; 9011 68                       h
        tax                                     ; 9012 AA                       .
        inx                                     ; 9013 E8                       .
        cpx     #$08                            ; 9014 E0 08                    ..
        beq     BattleSetupServices_Branch_901B ; 9016 F0 03                    ..
        jmp     BattleSetupServices_Branch_8EFE ; 9018 4C FE 8E                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_901B:
        lda     #$00                            ; 901B A9 00                    ..
        sta     $6158                           ; 901D 8D 58 61                 .Xa
        sta     $6159                           ; 9020 8D 59 61                 .Ya
        ldx     SaveCurrentChapterMinus1        ; 9023 AE 5A 61                 .Za
        lda     $91D8,x                         ; 9026 BD D8 91                 ...
        sta     SaveTotalGold                   ; 9029 8D 57 61                 .Wa
        lda     SaveCurrentChapterMinus1        ; 902C AD 5A 61                 .Za
        asl     a                               ; 902F 0A                       .
        asl     a                               ; 9030 0A                       .
        adc     SaveCurrentChapterMinus1        ; 9031 6D 5A 61                 mZa
        tax                                     ; 9034 AA                       .
        ldy     #$00                            ; 9035 A0 00                    ..
BattleSetupServices_Branch_9037:
        lda     $9178,x                         ; 9037 BD 78 91                 .x.
        sta     $6165,y                         ; 903A 99 65 61                 .ea
        inx                                     ; 903D E8                       .
        iny                                     ; 903E C8                       .
        cpy     #$05                            ; 903F C0 05                    ..
        bne     BattleSetupServices_Branch_9037 ; 9041 D0 F4                    ..
        lda     SaveCurrentChapterMinus1        ; 9043 AD 5A 61                 .Za
        cmp     #$03                            ; 9046 C9 03                    ..
        bne     BattleSetupServices_Branch_905E ; 9048 D0 14                    ..
        lda     #$00                            ; 904A A9 00                    ..
        sta     $07C6                           ; 904C 8D C6 07                 ...
        sta     $07C7                           ; 904F 8D C7 07                 ...
        sta     $07C8                           ; 9052 8D C8 07                 ...
        sta     $62E7                           ; 9055 8D E7 62                 ..b
        sta     $62E8                           ; 9058 8D E8 62                 ..b
        sta     $62E9                           ; 905B 8D E9 62                 ..b
BattleSetupServices_Branch_905E:
        lda     SaveCurrentChapterMinus1        ; 905E AD 5A 61                 .Za
        cmp     #$05                            ; 9061 C9 05                    ..
        bcc     BattleSetupServices_Branch_908C ; 9063 90 27                    .'
        lda     #$04                            ; 9065 A9 04                    ..
        sta     SaveCurrentChapterMinus1        ; 9067 8D 5A 61                 .Za
        lda     #$20                            ; 906A A9 20                    .
        sta     SaveGameStateFlags              ; 906C 8D 8E 61                 ..a
        lda     #$FF                            ; 906F A9 FF                    ..
        ldx     #$03                            ; 9071 A2 03                    ..
        sta     $6001,x                         ; 9073 9D 01 60                 ..`
        sta     $6002,x                         ; 9076 9D 02 60                 ..`
        ldx     #$01                            ; 9079 A2 01                    ..
        sta     $6001,x                         ; 907B 9D 01 60                 ..`
        sta     $6002,x                         ; 907E 9D 02 60                 ..`
        ldx     #$1B                            ; 9081 A2 1B                    ..
        sta     $6001,x                         ; 9083 9D 01 60                 ..`
        sta     $6002,x                         ; 9086 9D 02 60                 ..`
        sta     $6003,x                         ; 9089 9D 03 60                 ..`
BattleSetupServices_Branch_908C:
        lda     #$00                            ; 908C A9 00                    ..
BattleSetupServices_Branch_908E:
        pha                                     ; 908E 48                       H
        sta     $79                             ; 908F 85 79                    .y
        lda     #$00                            ; 9091 A9 00                    ..
        sta     $7A                             ; 9093 85 7A                    .z
        lda     #$1E                            ; 9095 A9 1E                    ..
        ldx     #$79                            ; 9097 A2 79                    .y
        jsr     MultiplyPointerWord             ; 9099 20 27 C8                  '.
        lda     $9162                           ; 909C AD 62 91                 .b.
        ldy     $9163                           ; 909F AC 63 91                 .c.
        jsr     AddWordToPointer                ; 90A2 20 1D C8                  ..
        ldy     #$13                            ; 90A5 A0 13                    ..
BattleSetupServices_Branch_90A7:
        lda     ($79),y                         ; 90A7 B1 79                    .y
        cmp     #$6B                            ; 90A9 C9 6B                    .k
        bne     BattleSetupServices_Branch_90B1 ; 90AB D0 04                    ..
        lda     #$FF                            ; 90AD A9 FF                    ..
        sta     ($79),y                         ; 90AF 91 79                    .y
BattleSetupServices_Branch_90B1:
        lda     ($79),y                         ; 90B1 B1 79                    .y
        cmp     #$6C                            ; 90B3 C9 6C                    .l
        bne     BattleSetupServices_Branch_90BB ; 90B5 D0 04                    ..
        lda     #$FF                            ; 90B7 A9 FF                    ..
        sta     ($79),y                         ; 90B9 91 79                    .y
BattleSetupServices_Branch_90BB:
        lda     ($79),y                         ; 90BB B1 79                    .y
        cmp     #$5D                            ; 90BD C9 5D                    .]
        bne     BattleSetupServices_Branch_90C5 ; 90BF D0 04                    ..
        lda     #$FF                            ; 90C1 A9 FF                    ..
        sta     ($79),y                         ; 90C3 91 79                    .y
BattleSetupServices_Branch_90C5:
        lda     ($79),y                         ; 90C5 B1 79                    .y
        cmp     #$FF                            ; 90C7 C9 FF                    ..
        bne     BattleSetupServices_Branch_90DB ; 90C9 D0 10                    ..
        iny                                     ; 90CB C8                       .
        cpy     #$1B                            ; 90CC C0 1B                    ..
        beq     BattleSetupServices_Branch_90DC ; 90CE F0 0C                    ..
        lda     ($79),y                         ; 90D0 B1 79                    .y
        pha                                     ; 90D2 48                       H
        lda     #$FF                            ; 90D3 A9 FF                    ..
        sta     ($79),y                         ; 90D5 91 79                    .y
        pla                                     ; 90D7 68                       h
        dey                                     ; 90D8 88                       .
        sta     ($79),y                         ; 90D9 91 79                    .y
BattleSetupServices_Branch_90DB:
        iny                                     ; 90DB C8                       .
BattleSetupServices_Branch_90DC:
        cpy     #$1B                            ; 90DC C0 1B                    ..
        bne     BattleSetupServices_Branch_90A7 ; 90DE D0 C7                    ..
        pla                                     ; 90E0 68                       h
        clc                                     ; 90E1 18                       .
        adc     #$01                            ; 90E2 69 01                    i.
        cmp     #$08                            ; 90E4 C9 08                    ..
        bne     BattleSetupServices_Branch_908E ; 90E6 D0 A6                    ..
        brk                                     ; 90E8 00                       .
        db   $05,$5F                         ; 90E9 05 5F                    ._
; ----------------------------------------------------------------------------
        rts                                     ; 90EB 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_90EC:
        lda     SaveCurrentChapterMinus1        ; 90EC AD 5A 61                 .Za
        cmp     #$01                            ; 90EF C9 01                    ..
        bne     BattleSetupServices_Branch_9134 ; 90F1 D0 41                    .A
        lda     #$71                            ; 90F3 A9 71                    .q
        brk                                     ; 90F5 00                       .
        db   $66,$73                         ; 90F6 66 73                    fs
; ----------------------------------------------------------------------------
        lda     $73                             ; 90F8 A5 73                    .s
        sta     $00                           ; 90FA 85 00                    ..
        lda     $72                             ; 90FC A5 72                    .r
        tax                                     ; 90FE AA                       .
        brk                                     ; 90FF 00                       .
        db   $2B,$73                         ; 9100 2B 73                    +s
; ----------------------------------------------------------------------------
        cmp     #$07                            ; 9102 C9 07                    ..
        beq     BattleSetupServices_Branch_9134 ; 9104 F0 2E                    ..
        lda     $00                           ; 9106 A5 00                    ..
        brk                                     ; 9108 00                       .
        db   $30,$73                         ; 9109 30 73                    0s
; ----------------------------------------------------------------------------
        stx     $01                             ; 910B 86 01                    ..
        lda     #$07                            ; 910D A9 07                    ..
        brk                                     ; 910F 00                       .
        db   $63,$73                         ; 9110 63 73                    cs
; ----------------------------------------------------------------------------
        tax                                     ; 9112 AA                       .
        stx     $02                           ; 9113 86 02                    ..
        brk                                     ; 9115 00                       .
        db   $2D,$73                         ; 9116 2D 73                    -s
; ----------------------------------------------------------------------------
        cmp     #$08                            ; 9118 C9 08                    ..
        bne     BattleSetupServices_Branch_912D ; 911A D0 11                    ..
        lda     #$07                            ; 911C A9 07                    ..
        brk                                     ; 911E 00                       .
        db   $2C,$73                         ; 911F 2C 73                    ,s
; ----------------------------------------------------------------------------
        pha                                     ; 9121 48                       H
        lda     #$07                            ; 9122 A9 07                    ..
        brk                                     ; 9124 00                       .
        db   $30,$73                         ; 9125 30 73                    0s
; ----------------------------------------------------------------------------
        ldx     $01                             ; 9127 A6 01                    ..
        pla                                     ; 9129 68                       h
        brk                                     ; 912A 00                       .
        db   $2E,$73                         ; 912B 2E 73                    .s
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_912D:
        ldx     $02                           ; 912D A6 02                    ..
        lda     #$71                            ; 912F A9 71                    .q
        brk                                     ; 9131 00                       .
        db   $2E,$73                         ; 9132 2E 73                    .s
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9134:
        rts                                     ; 9134 60                       `
; ----------------------------------------------------------------------------
        db   $04,$01,$03,$03,$01,$02,$00,$01 ; 9135 04 01 03 03 01 02 00 01  ........
        db   $86,$87,$85,$83,$80             ; 913D 86 87 85 83 80           .....
        db   $80,$81,$82,$83,$84,$85,$86,$87 ; 9142 80 81 82 83 84 85 86 87  ........
        db   $00,$00,$00,$00,$00,$00         ; 914A 00 00 00 00 00 00        ......
        db   $3B                             ; 9150 3B                       ;
        db   $A2,$4B,$A1,$7B,$A1,$AB,$A1,$DB ; 9151 A2 4B A1 7B A1 AB A1 DB  .K.{....
        db   $A1,$0B,$A2                     ; 9159 A1 0B A2                 ...
        db   $0E,$06,$07,$08,$09,$0A         ; 915C 0E 06 07 08 09 0A        ......
        db   $01                             ; 9162 01                       .
        db   $60                             ; 9163 60                       `
        db   $91                             ; 9164 91                       .
        db   $A2,$C1,$A2,$AD,$A2,$D6,$A2,$ED ; 9165 A2 C1 A2 AD A2 D6 A2 ED  ........
        db   $A2                             ; 916D A2                       .
        db   $99                             ; 916E 99                       .
        db   $A2,$C9,$A2,$B5,$A2,$DE,$A2,$F5 ; 916F A2 C9 A2 B5 A2 DE A2 F5  ........
        db   $A2                             ; 9177 A2                       .
        db   $01,$00,$00,$00,$00,$04,$00,$00 ; 9178 01 00 00 00 00 04 00 00  ........
        db   $00,$00,$40,$00,$00,$00,$00,$00 ; 9180 00 00 40 00 00 00 00 00  ..@.....
        db   $02,$00,$00,$00,$01,$00,$00,$00 ; 9188 02 00 00 00 01 00 00 00  ........
        db   $00                             ; 9190 00                       .
        db   $82,$A4,$C6,$74,$FF,$FF,$FF,$FF ; 9191 82 A4 C6 74 FF FF FF FF  ...t....
        db   $A5,$81,$FF,$FF,$FF,$FF,$FF,$FF ; 9199 A5 81 FF FF FF FF FF FF  ........
        db   $82,$AB,$FF,$FF,$FF,$FF,$FF,$FF ; 91A1 82 AB FF FF FF FF FF FF  ........
        db   $AC,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; 91A9 AC FF FF FF FF FF FF FF  ........
        db   $80,$A4,$FF,$FF,$FF,$FF,$FF,$FF ; 91B1 80 A4 FF FF FF FF FF FF  ........
        db   $A4,$74,$FF,$FF,$FF,$FF,$FF,$FF ; 91B9 A4 74 FF FF FF FF FF FF  .t......
        db   $82,$A6,$FF,$FF,$FF,$FF,$FF,$FF ; 91C1 82 A6 FF FF FF FF FF FF  ........
        db   $AB,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; 91C9 AB FF FF FF FF FF FF FF  ........
        db   $40,$10,$10,$40,$20,$80,$40     ; 91D1 40 10 10 40 20 80 40     @..@ .@
        db   $32,$64,$00,$64,$00             ; 91D8 32 64 00 64 00           2d.d.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_91DD:
        lda     SaveCurrentChapterMinus1        ; 91DD AD 5A 61                 .Za
        cmp     #$02                            ; 91E0 C9 02                    ..
        bne     BattleSetupServices_Branch_9216 ; 91E2 D0 32                    .2
        lda     #$10                            ; 91E4 A9 10                    ..
        brk                                     ; 91E6 00                       .
        db   $17,$0F                         ; 91E7 17 0F                    ..
; ----------------------------------------------------------------------------
        tax                                     ; 91E9 AA                       .
        ldy     #$10                            ; 91EA A0 10                    ..
BattleSetupServices_Branch_91EC:
        lda     $928D,x                         ; 91EC BD 8D 92                 ...
        bne     BattleSetupServices_Branch_91FB ; 91EF D0 0A                    ..
        lda     #$05                            ; 91F1 A9 05                    ..
        brk                                     ; 91F3 00                       .
        db   $63,$73                         ; 91F4 63 73                    cs
; ----------------------------------------------------------------------------
        sta     $6E                             ; 91F6 85 6E                    .n
        brk                                     ; 91F8 00                       .
        db   $0F,$33                         ; 91F9 0F 33                    .3
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_91FB:
        sta     $01                             ; 91FB 85 01                    ..
        jsr     UpperFixedEngine_Entry_C891     ; 91FD 20 91 C8                  ..
        cmp     $01                             ; 9200 C5 01                    ..
        bcs     BattleSetupServices_Branch_920B ; 9202 B0 07                    ..
        lda     $929D,x                         ; 9204 BD 9D 92                 ...
        sta     $C4                             ; 9207 85 C4                    ..
        bne     BattleSetupServices_Branch_9245 ; 9209 D0 3A                    .:
BattleSetupServices_Branch_920B:
        inx                                     ; 920B E8                       .
        cpx     #$10                            ; 920C E0 10                    ..
        bcc     BattleSetupServices_Branch_9212 ; 920E 90 02                    ..
        ldx     #$00                            ; 9210 A2 00                    ..
BattleSetupServices_Branch_9212:
        dey                                     ; 9212 88                       .
        bne     BattleSetupServices_Branch_91EC ; 9213 D0 D7                    ..
        rts                                     ; 9215 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9216:
        ldx     $7200                           ; 9216 AE 00 72                 ..r
        brk                                     ; 9219 00                       .
        db   $1C,$B3                         ; 921A 1C B3                    ..
; ----------------------------------------------------------------------------
        cmp     #$7F                            ; 921C C9 7F                    ..
        sta     $C4                             ; 921E 85 C4                    ..
        beq     BattleSetupServices_Branch_9284 ; 9220 F0 62                    .b
        brk                                     ; 9222 00                       .
        db   $10,$0F                         ; 9223 10 0F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_922C ; 9225 90 05                    ..
        brk                                     ; 9227 00                       .
        db   $66,$73                         ; 9228 66 73                    fs
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_9284 ; 922A B0 58                    .X
BattleSetupServices_Branch_922C:
        brk                                     ; 922C 00                       .
        db   $25,$B3                         ; 922D 25 B3                    %.
; ----------------------------------------------------------------------------
        beq     BattleSetupServices_Branch_9245 ; 922F F0 14                    ..
        tax                                     ; 9231 AA                       .
        jsr     UpperFixedEngine_Entry_C891     ; 9232 20 91 C8                  ..
        cmp     $9285,x                         ; 9235 DD 85 92                 ...
        bcs     BattleSetupServices_Branch_9284 ; 9238 B0 4A                    .J
        cpx     #$07                            ; 923A E0 07                    ..
        bne     BattleSetupServices_Branch_9245 ; 923C D0 07                    ..
        jsr     UpperFixedEngine_Entry_C891     ; 923E 20 91 C8                  ..
        cmp     #$10                            ; 9241 C9 10                    ..
        bcs     BattleSetupServices_Branch_9284 ; 9243 B0 3F                    .?
BattleSetupServices_Branch_9245:
        ldx     $7200                           ; 9245 AE 00 72                 ..r
        brk                                     ; 9248 00                       .
        db   $2D,$B3                         ; 9249 2D B3                    -.
; ----------------------------------------------------------------------------
        tax                                     ; 924B AA                       .
        lda     $6E45,x                         ; 924C BD 45 6E                 .En
        sta     $F9                             ; 924F 85 F9                    ..
        ldx     #$03                            ; 9251 A2 03                    ..
BattleSetupServices_Branch_9253:
        lda     $6E45,x                         ; 9253 BD 45 6E                 .En
        cmp     #$FF                            ; 9256 C9 FF                    ..
        beq     BattleSetupServices_Branch_925E ; 9258 F0 04                    ..
        cmp     $F9                             ; 925A C5 F9                    ..
        bne     BattleSetupServices_Branch_926E ; 925C D0 10                    ..
BattleSetupServices_Branch_925E:
        dex                                     ; 925E CA                       .
        bpl     BattleSetupServices_Branch_9253 ; 925F 10 F2                    ..
        lda     $7200                           ; 9261 AD 00 72                 ..r
        ora     #$C0                            ; 9264 09 C0                    ..
        sta     $F9                             ; 9266 85 F9                    ..
        brk                                     ; 9268 00                       .
        db   $C7,$1B                         ; 9269 C7 1B                    ..
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_9271 ; 926B 4C 71 92                 Lq.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_926E:
        brk                                     ; 926E 00                       .
        db   $C8,$1B                         ; 926F C8 1B                    ..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9271:
        lda     #$00                            ; 9271 A9 00                    ..
        sta     $6E                             ; 9273 85 6E                    .n
        lda     #$03                            ; 9275 A9 03                    ..
        brk                                     ; 9277 00                       .
        db   $2D,$0F                         ; 9278 2D 0F                    -.
; ----------------------------------------------------------------------------
        sta     $F9                             ; 927A 85 F9                    ..
        brk                                     ; 927C 00                       .
        db   $C9,$1B                         ; 927D C9 1B                    ..
; ----------------------------------------------------------------------------
        lda     $C4                             ; 927F A5 C4                    ..
        brk                                     ; 9281 00                       .
        db   $12,$EF                         ; 9282 12 EF                    ..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9284:
        rts                                     ; 9284 60                       `
; ----------------------------------------------------------------------------
        db   $FF,$20,$10,$08,$04,$02,$01,$01 ; 9285 FF 20 10 08 04 02 01 01  . ......
        db   $10,$04,$02,$02,$00,$04,$04,$02 ; 928D 10 04 02 02 00 04 04 02  ........
        db   $00,$04,$04,$04,$04,$04,$02,$04 ; 9295 00 04 04 04 04 04 02 04  ........
        db   $01,$02,$04,$05,$06,$25,$26,$27 ; 929D 01 02 04 05 06 25 26 27  .....%&'
        db   $28,$3D,$3E,$46,$47,$53,$54,$56 ; 92A5 28 3D 3E 46 47 53 54 56  (=>FGSTV
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_92AD:
        brk                                     ; 92AD 00                       .
        db   $12,$1F                         ; 92AE 12 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_92EE ; 92B0 90 3C                    .<
        brk                                     ; 92B2 00                       .
        db   $E0,$D3,$85                     ; 92B3 E0 D3 85                 ...
; ----------------------------------------------------------------------------
        ldx     #$00                            ; 92B6 A2 00                    ..
BattleSetupServices_Branch_92B8:
        brk                                     ; 92B8 00                       .
        db   $29,$C3,$0A                     ; 92B9 29 C3 0A                 )..
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_92C3 ; 92BC 90 05                    ..
        inx                                     ; 92BE E8                       .
        cpx     #$04                            ; 92BF E0 04                    ..
        bcc     BattleSetupServices_Branch_92B8 ; 92C1 90 F5                    ..
BattleSetupServices_Branch_92C3:
        brk                                     ; 92C3 00                       .
        db   $00,$B3                         ; 92C4 00 B3                    ..
; ----------------------------------------------------------------------------
        pha                                     ; 92C6 48                       H
        stx     $C7                             ; 92C7 86 C7                    ..
        brk                                     ; 92C9 00                       .
        db   $0E,$4F                         ; 92CA 0E 4F                    .O
; ----------------------------------------------------------------------------
        pla                                     ; 92CC 68                       h
BattleSetupServices_Branch_92CD:
        pha                                     ; 92CD 48                       H
        ldx     #$03                            ; 92CE A2 03                    ..
BattleSetupServices_Branch_92D0:
        brk                                     ; 92D0 00                       .
        db   $2A,$C3,$0A                     ; 92D1 2A C3 0A                 *..
; ----------------------------------------------------------------------------
        dex                                     ; 92D4 CA                       .
        bpl     BattleSetupServices_Branch_92D0 ; 92D5 10 F9                    ..
        jsr     UpperFixedEngine_Entry_C891     ; 92D7 20 91 C8                  ..
        and     #$03                            ; 92DA 29 03                    ).
        tax                                     ; 92DC AA                       .
        brk                                     ; 92DD 00                       .
        db   $2B,$C3,$0A                     ; 92DE 2B C3 0A                 +..
; ----------------------------------------------------------------------------
        lda     #$FF                            ; 92E1 A9 FF                    ..
        sta     $7D                             ; 92E3 85 7D                    .}
        brk                                     ; 92E5 00                       .
        db   $03,$B3                         ; 92E6 03 B3                    ..
; ----------------------------------------------------------------------------
        inc     $7D                             ; 92E8 E6 7D                    .}
        pla                                     ; 92EA 68                       h
        brk                                     ; 92EB 00                       .
        db   $02,$B3                         ; 92EC 02 B3                    ..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_92EE:
        rts                                     ; 92EE 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_92EF:
        ldx     #$00                            ; 92EF A2 00                    ..
BattleSetupServices_Branch_92F1:
        txa                                     ; 92F1 8A                       .
        pha                                     ; 92F2 48                       H
        brk                                     ; 92F3 00                       .
        db   $29,$C3,$0A                     ; 92F4 29 C3 0A                 )..
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_92FE ; 92F7 90 05                    ..
        stx     $C7                             ; 92F9 86 C7                    ..
        brk                                     ; 92FB 00                       .
        db   $17,$4F                         ; 92FC 17 4F                    .O
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_92FE:
        stx     $72                             ; 92FE 86 72                    .r
        pla                                     ; 9300 68                       h
        tax                                     ; 9301 AA                       .
        inx                                     ; 9302 E8                       .
        cpx     #$04                            ; 9303 E0 04                    ..
        bcc     BattleSetupServices_Branch_92F1 ; 9305 90 EA                    ..
        lda     $72                             ; 9307 A5 72                    .r
        sta     $C7                             ; 9309 85 C7                    ..
        rts                                     ; 930B 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_930C:
        brk                                     ; 930C 00                       .
        db   $62,$23,$08                     ; 930D 62 23 08                 b#.
; ----------------------------------------------------------------------------
        bne     BattleSetupServices_Branch_9325 ; 9310 D0 13                    ..
        brk                                     ; 9312 00                       .
        db   $62,$33                         ; 9313 62 33                    b3
; ----------------------------------------------------------------------------
        cmp     #$01                            ; 9315 C9 01                    ..
        beq     BattleSetupServices_Branch_931F ; 9317 F0 06                    ..
        brk                                     ; 9319 00                       .
        db   $D1,$2B                         ; 931A D1 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_9418 ; 931C 4C 18 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_931F:
        brk                                     ; 931F 00                       .
        db   $AA,$2B                         ; 9320 AA 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_9418 ; 9322 4C 18 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9325:
        brk                                     ; 9325 00                       .
        db   $07,$6F,$12                     ; 9326 07 6F 12                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 9329 C9 FF                    ..
        bne     BattleSetupServices_Branch_933F ; 932B D0 12                    ..
        jmp     BattleSetupServices_Branch_941B ; 932D 4C 1B 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9330:
        brk                                     ; 9330 00                       .
        db   $07,$6F,$43                     ; 9331 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        lda     $6278                           ; 9334 AD 78 62                 .xb
        sta     $F9                             ; 9337 85 F9                    ..
        brk                                     ; 9339 00                       .
        db   $AA,$2B                         ; 933A AA 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_9418 ; 933C 4C 18 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_933F:
        sta     $6278                           ; 933F 8D 78 62                 .xb
        tax                                     ; 9342 AA                       .
        brk                                     ; 9343 00                       .
        db   $2B,$73                         ; 9344 2B 73                    +s
; ----------------------------------------------------------------------------
        sta     $627A                           ; 9346 8D 7A 62                 .zb
        cmp     #$08                            ; 9349 C9 08                    ..
        bcs     BattleSetupServices_Branch_9330 ; 934B B0 E3                    ..
        brk                                     ; 934D 00                       .
        db   $2D,$73                         ; 934E 2D 73                    -s
; ----------------------------------------------------------------------------
        beq     BattleSetupServices_Branch_9330 ; 9350 F0 DE                    ..
        ldx     $F8                             ; 9352 A6 F8                    ..
        brk                                     ; 9354 00                       .
        db   $01,$6F,$13                     ; 9355 01 6F 13                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 9358 C9 FF                    ..
        bne     BattleSetupServices_Branch_935F ; 935A D0 03                    ..
        jmp     BattleSetupServices_Branch_941B ; 935C 4C 1B 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_935F:
        sta     $6279                           ; 935F 8D 79 62                 .yb
BattleSetupServices_Branch_9362:
        ldx     $6278                           ; 9362 AE 78 62                 .xb
        brk                                     ; 9365 00                       .
        db   $01,$6F,$14                     ; 9366 01 6F 14                 .o.
; ----------------------------------------------------------------------------
        tay                                     ; 9369 A8                       .
        bne     BattleSetupServices_Branch_936F ; 936A D0 03                    ..
        jmp     BattleSetupServices_Branch_9720 ; 936C 4C 20 97                 L .
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_936F:
        lda     $627A                           ; 936F AD 7A 62                 .zb
        cmp     #$05                            ; 9372 C9 05                    ..
        bne     BattleSetupServices_Branch_937F ; 9374 D0 09                    ..
        dey                                     ; 9376 88                       .
        bne     BattleSetupServices_Branch_937F ; 9377 D0 06                    ..
        jsr     BattleSetupServices_Entry_955E  ; 9379 20 5E 95                  ^.
        jmp     BattleSetupServices_Branch_9418 ; 937C 4C 18 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_937F:
        dey                                     ; 937F 88                       .
        bne     BattleSetupServices_Branch_93A5 ; 9380 D0 23                    .#
        jsr     BattleSetupServices_Entry_974A  ; 9382 20 4A 97                  J.
        bcs     BattleSetupServices_Branch_93CD ; 9385 B0 46                    .F
        brk                                     ; 9387 00                       .
        db   $62,$23,$08                     ; 9388 62 23 08                 b#.
; ----------------------------------------------------------------------------
        cmp     #$01                            ; 938B C9 01                    ..
        beq     BattleSetupServices_Branch_93FD ; 938D F0 6E                    .n
        brk                                     ; 938F 00                       .
        db   $07,$6F,$15                     ; 9390 07 6F 15                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 9393 C9 FF                    ..
        beq     BattleSetupServices_Branch_9362 ; 9395 F0 CB                    ..
        sta     $627A                           ; 9397 8D 7A 62                 .zb
        tax                                     ; 939A AA                       .
        brk                                     ; 939B 00                       .
        db   $2B,$73                         ; 939C 2B 73                    +s
; ----------------------------------------------------------------------------
        cmp     #$08                            ; 939E C9 08                    ..
        bcs     BattleSetupServices_Branch_93EE ; 93A0 B0 4C                    .L
        jmp     BattleSetupServices_Branch_942D ; 93A2 4C 2D 94                 L-.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_93A5:
        dey                                     ; 93A5 88                       .
        bne     BattleSetupServices_Branch_941B ; 93A6 D0 73                    .s
        brk                                     ; 93A8 00                       .
        db   $62,$33                         ; 93A9 62 33                    b3
; ----------------------------------------------------------------------------
        cmp     #$01                            ; 93AB C9 01                    ..
        bne     BattleSetupServices_Branch_93B6 ; 93AD D0 07                    ..
        lda     #$06                            ; 93AF A9 06                    ..
        brk                                     ; 93B1 00                       .
        db   $46,$73                         ; 93B2 46 73                    Fs
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_941E ; 93B4 B0 68                    .h
BattleSetupServices_Branch_93B6:
        brk                                     ; 93B6 00                       .
        db   $07,$6F,$50                     ; 93B7 07 6F 50                 .oP
; ----------------------------------------------------------------------------
        lda     $6279                           ; 93BA AD 79 62                 .yb
        ldx     $6278                           ; 93BD AE 78 62                 .xb
        brk                                     ; 93C0 00                       .
        db   $2C,$73                         ; 93C1 2C 73                    ,s
; ----------------------------------------------------------------------------
        sta     $F9                             ; 93C3 85 F9                    ..
        brk                                     ; 93C5 00                       .
        db   $0E,$0F                         ; 93C6 0E 0F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_93D0 ; 93C8 90 06                    ..
        brk                                     ; 93CA 00                       .
        db   $D2,$2B                         ; 93CB D2 2B                    .+
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_93CD:
        jmp     BattleSetupServices_Branch_9418 ; 93CD 4C 18 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_93D0:
        brk                                     ; 93D0 00                       .
        db   $0C,$0F                         ; 93D1 0C 0F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_93DF ; 93D3 90 0A                    ..
        lda     $73                             ; 93D5 A5 73                    .s
        bpl     BattleSetupServices_Branch_93DF ; 93D7 10 06                    ..
        jsr     BattleSetupServices_Entry_9767  ; 93D9 20 67 97                  g.
        jmp     BattleSetupServices_Branch_9418 ; 93DC 4C 18 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_93DF:
        brk                                     ; 93DF 00                       .
        db   $BE,$2B                         ; 93E0 BE 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; 93E2 00                       .
        db   $07,$6F,$48                     ; 93E3 07 6F 48                 .oH
; ----------------------------------------------------------------------------
        bne     BattleSetupServices_Branch_93EB ; 93E6 D0 03                    ..
        jmp     BattleSetupServices_Branch_94F6 ; 93E8 4C F6 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_93EB:
        jmp     BattleSetupServices_Branch_9362 ; 93EB 4C 62 93                 Lb.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_93EE:
        brk                                     ; 93EE 00                       .
        db   $07,$6F,$43                     ; 93EF 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        lda     $627A                           ; 93F2 AD 7A 62                 .zb
        sta     $F9                             ; 93F5 85 F9                    ..
        brk                                     ; 93F7 00                       .
        db   $A9,$2B                         ; 93F8 A9 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_9418 ; 93FA 4C 18 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_93FD:
        lda     #$06                            ; 93FD A9 06                    ..
        brk                                     ; 93FF 00                       .
        db   $46,$73                         ; 9400 46 73                    Fs
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_941E ; 9402 B0 1A                    ..
        jsr     BattleSetupServices_Entry_952A  ; 9404 20 2A 95                  *.
        lda     $73                             ; 9407 A5 73                    .s
        brk                                     ; 9409 00                       .
        db   $2E,$73                         ; 940A 2E 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; 940C 00                       .
        db   $07,$6F,$43                     ; 940D 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        lda     $6278                           ; 9410 AD 78 62                 .xb
        sta     $F9                             ; 9413 85 F9                    ..
        brk                                     ; 9415 00                       .
        db   $BB,$2B                         ; 9416 BB 2B                    .+
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9418:
        jsr     UpperFixedEngine_Entry_C8CC     ; 9418 20 CC C8                  ..
BattleSetupServices_Branch_941B:
        jmp     UpperFixedEngine_Entry_D1F3     ; 941B 4C F3 D1                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_941E:
        brk                                     ; 941E 00                       .
        db   $07,$6F,$43                     ; 941F 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        lda     $6278                           ; 9422 AD 78 62                 .xb
        sta     $F9                             ; 9425 85 F9                    ..
        brk                                     ; 9427 00                       .
        db   $CB,$3B                         ; 9428 CB 3B                    .;
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_9418 ; 942A 4C 18 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_942D:
        cpx     $6278                           ; 942D EC 78 62                 .xb
        beq     BattleSetupServices_Branch_9445 ; 9430 F0 13                    ..
        brk                                     ; 9432 00                       .
        db   $2D,$73                         ; 9433 2D 73                    -s
; ----------------------------------------------------------------------------
        cmp     #$08                            ; 9435 C9 08                    ..
        bcc     BattleSetupServices_Branch_9445 ; 9437 90 0C                    ..
        stx     $F9                             ; 9439 86 F9                    ..
        brk                                     ; 943B 00                       .
        db   $07,$6F,$43                     ; 943C 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; 943F 00                       .
        db   $9B,$2B                         ; 9440 9B 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_9418 ; 9442 4C 18 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9445:
        jsr     BattleSetupServices_Entry_952A  ; 9445 20 2A 95                  *.
        bcc     BattleSetupServices_Branch_9418 ; 9448 90 CE                    ..
        ldx     $627A                           ; 944A AE 7A 62                 .zb
        cpx     $6278                           ; 944D EC 78 62                 .xb
        bne     BattleSetupServices_Branch_9454 ; 9450 D0 02                    ..
        lda     $73                             ; 9452 A5 73                    .s
BattleSetupServices_Branch_9454:
        brk                                     ; 9454 00                       .
        db   $2E,$73                         ; 9455 2E 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; 9457 00                       .
        db   $07,$6F,$43                     ; 9458 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_9461  ; 945B 20 61 94                  a.
        jmp     BattleSetupServices_Branch_9418 ; 945E 4C 18 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9461:
        jsr     BattleSetupServices_Entry_953E  ; 9461 20 3E 95                  >.
        sta     $F9                             ; 9464 85 F9                    ..
        ldx     $6278                           ; 9466 AE 78 62                 .xb
        lda     #$07                            ; 9469 A9 07                    ..
        brk                                     ; 946B 00                       .
        db   $46,$73                         ; 946C 46 73                    Fs
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_94CB ; 946E 90 5B                    .[
        lda     #$06                            ; 9470 A9 06                    ..
        brk                                     ; 9472 00                       .
        db   $46,$73                         ; 9473 46 73                    Fs
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_94A0 ; 9475 B0 29                    .)
        stx     $F9                             ; 9477 86 F9                    ..
        ldx     $627A                           ; 9479 AE 7A 62                 .zb
        cpx     $F9                             ; 947C E4 F9                    ..
        beq     BattleSetupServices_Branch_949C ; 947E F0 1C                    ..
        stx     $FB                             ; 9480 86 FB                    ..
        lda     #$07                            ; 9482 A9 07                    ..
        brk                                     ; 9484 00                       .
        db   $46,$73                         ; 9485 46 73                    Fs
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_9498 ; 9487 90 0F                    ..
        lda     #$06                            ; 9489 A9 06                    ..
        brk                                     ; 948B 00                       .
        db   $46,$73                         ; 948C 46 73                    Fs
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_9494 ; 948E B0 04                    ..
        brk                                     ; 9490 00                       .
        db   $B2,$2B                         ; 9491 B2 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 9493 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9494:
        brk                                     ; 9494 00                       .
        db   $B3,$2B                         ; 9495 B3 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 9497 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9498:
        brk                                     ; 9498 00                       .
        db   $B4,$2B                         ; 9499 B4 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 949B 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_949C:
        brk                                     ; 949C 00                       .
        db   $BB,$2B                         ; 949D BB 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 949F 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_94A0:
        stx     $FB                             ; 94A0 86 FB                    ..
        ldx     $627A                           ; 94A2 AE 7A 62                 .zb
        stx     $FC                             ; 94A5 86 FC                    ..
        cpx     $FB                             ; 94A7 E4 FB                    ..
        beq     BattleSetupServices_Branch_94C7 ; 94A9 F0 1C                    ..
        lda     #$07                            ; 94AB A9 07                    ..
        brk                                     ; 94AD 00                       .
        db   $46,$73                         ; 94AE 46 73                    Fs
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_94C3 ; 94B0 90 11                    ..
        lda     #$06                            ; 94B2 A9 06                    ..
        brk                                     ; 94B4 00                       .
        db   $46,$73                         ; 94B5 46 73                    Fs
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_94BF ; 94B7 B0 06                    ..
        stx     $F9                             ; 94B9 86 F9                    ..
        brk                                     ; 94BB 00                       .
        db   $B5,$2B                         ; 94BC B5 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 94BE 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_94BF:
        brk                                     ; 94BF 00                       .
        db   $B6,$2B                         ; 94C0 B6 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 94C2 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_94C3:
        brk                                     ; 94C3 00                       .
        db   $B7,$2B                         ; 94C4 B7 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 94C6 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_94C7:
        brk                                     ; 94C7 00                       .
        db   $BC,$2B                         ; 94C8 BC 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 94CA 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_94CB:
        stx     $FB                             ; 94CB 86 FB                    ..
        ldx     $627A                           ; 94CD AE 7A 62                 .zb
        stx     $FC                             ; 94D0 86 FC                    ..
        cpx     $FB                             ; 94D2 E4 FB                    ..
        beq     BattleSetupServices_Branch_94F2 ; 94D4 F0 1C                    ..
        lda     #$07                            ; 94D6 A9 07                    ..
        brk                                     ; 94D8 00                       .
        db   $46,$73                         ; 94D9 46 73                    Fs
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_94EE ; 94DB 90 11                    ..
        lda     #$06                            ; 94DD A9 06                    ..
        brk                                     ; 94DF 00                       .
        db   $46,$73                         ; 94E0 46 73                    Fs
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_94EA ; 94E2 B0 06                    ..
        stx     $F9                             ; 94E4 86 F9                    ..
        brk                                     ; 94E6 00                       .
        db   $B8,$2B                         ; 94E7 B8 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 94E9 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_94EA:
        brk                                     ; 94EA 00                       .
        db   $B9,$2B                         ; 94EB B9 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 94ED 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_94EE:
        brk                                     ; 94EE 00                       .
        db   $BA,$2B                         ; 94EF BA 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 94F1 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_94F2:
        brk                                     ; 94F2 00                       .
        db   $BD,$2B                         ; 94F3 BD 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 94F5 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_94F6:
        jsr     BattleSetupServices_Entry_952A  ; 94F6 20 2A 95                  *.
        bcc     BattleSetupServices_Branch_9501 ; 94F9 90 06                    ..
        jsr     BattleSetupServices_Entry_9507  ; 94FB 20 07 95                  ..
        jmp     BattleSetupServices_Branch_9418 ; 94FE 4C 18 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9501:
        brk                                     ; 9501 00                       .
        db   $D2,$2B                         ; 9502 D2 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_9418 ; 9504 4C 18 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9507:
        jsr     BattleSetupServices_Entry_953E  ; 9507 20 3E 95                  >.
        sta     $F9                             ; 950A 85 F9                    ..
        stx     $FB                             ; 950C 86 FB                    ..
        lda     #$07                            ; 950E A9 07                    ..
        brk                                     ; 9510 00                       .
        db   $46,$73                         ; 9511 46 73                    Fs
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_9526 ; 9513 90 11                    ..
        lda     #$06                            ; 9515 A9 06                    ..
        brk                                     ; 9517 00                       .
        db   $46,$73                         ; 9518 46 73                    Fs
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_9522 ; 951A B0 06                    ..
        stx     $F9                             ; 951C 86 F9                    ..
        brk                                     ; 951E 00                       .
        db   $AF,$2B                         ; 951F AF 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 9521 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9522:
        brk                                     ; 9522 00                       .
        db   $B0,$2B                         ; 9523 B0 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 9525 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9526:
        brk                                     ; 9526 00                       .
        db   $B1,$2B                         ; 9527 B1 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 9529 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_952A:
        ldx     $6278                           ; 952A AE 78 62                 .xb
        lda     $6279                           ; 952D AD 79 62                 .yb
        tay                                     ; 9530 A8                       .
        brk                                     ; 9531 00                       .
        db   $2C,$73                         ; 9532 2C 73                    ,s
; ----------------------------------------------------------------------------
        sta     $6279                           ; 9534 8D 79 62                 .yb
        sta     $FA                             ; 9537 85 FA                    ..
        tya                                     ; 9539 98                       .
        brk                                     ; 953A 00                       .
        db   $30,$73                         ; 953B 30 73                    0s
; ----------------------------------------------------------------------------
        rts                                     ; 953D 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_953E:
        lda     #$00                            ; 953E A9 00                    ..
        sta     $6E                             ; 9540 85 6E                    .n
        lda     #$01                            ; 9542 A9 01                    ..
        brk                                     ; 9544 00                       .
        db   $2D,$0F                         ; 9545 2D 0F                    -.
; ----------------------------------------------------------------------------
        rts                                     ; 9547 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9548:
        lda     #$00                            ; 9548 A9 00                    ..
        sta     $6E                             ; 954A 85 6E                    .n
        lda     #$08                            ; 954C A9 08                    ..
        brk                                     ; 954E 00                       .
        db   $2D,$0F                         ; 954F 2D 0F                    -.
; ----------------------------------------------------------------------------
        lda     $72                             ; 9551 A5 72                    .r
        sta     $6E                             ; 9553 85 6E                    .n
        rts                                     ; 9555 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9556:
        brk                                     ; 9556 00                       .
        db   $AE,$2B                         ; 9557 AE 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 9559 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_955A:
        brk                                     ; 955A 00                       .
        db   $AC,$2B                         ; 955B AC 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 955D 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_955E:
        brk                                     ; 955E 00                       .
        db   $07,$6F,$43                     ; 955F 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        ldx     $6278                           ; 9562 AE 78 62                 .xb
        stx     $F9                             ; 9565 86 F9                    ..
        lda     #$07                            ; 9567 A9 07                    ..
        brk                                     ; 9569 00                       .
        db   $46,$73                         ; 956A 46 73                    Fs
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_9556 ; 956C 90 E8                    ..
        lda     #$06                            ; 956E A9 06                    ..
        brk                                     ; 9570 00                       .
        db   $46,$73                         ; 9571 46 73                    Fs
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_955A ; 9573 B0 E5                    ..
        lda     $6279                           ; 9575 AD 79 62                 .yb
        brk                                     ; 9578 00                       .
        db   $2C,$73                         ; 9579 2C 73                    ,s
; ----------------------------------------------------------------------------
        sta     $6279                           ; 957B 8D 79 62                 .yb
        sta     $FA                             ; 957E 85 FA                    ..
        brk                                     ; 9580 00                       .
        db   $D3,$2B                         ; 9581 D3 2B                    .+
; ----------------------------------------------------------------------------
        lda     $6279                           ; 9583 AD 79 62                 .yb
        brk                                     ; 9586 00                       .
        db   $12,$0F                         ; 9587 12 0F                    ..
; ----------------------------------------------------------------------------
        sta     $627A                           ; 9589 8D 7A 62                 .zb
        and     #$10                            ; 958C 29 10                    ).
        beq     BattleSetupServices_Branch_95BD ; 958E F0 2D                    .-
        lda     $6279                           ; 9590 AD 79 62                 .yb
        brk                                     ; 9593 00                       .
        db   $0B,$0F                         ; 9594 0B 0F                    ..
; ----------------------------------------------------------------------------
        txa                                     ; 9596 8A                       .
        beq     BattleSetupServices_Branch_95BA ; 9597 F0 21                    .!
        dex                                     ; 9599 CA                       .
        beq     BattleSetupServices_Branch_95B4 ; 959A F0 18                    ..
        dex                                     ; 959C CA                       .
        beq     BattleSetupServices_Branch_95AE ; 959D F0 0F                    ..
        dex                                     ; 959F CA                       .
        beq     BattleSetupServices_Branch_95A8 ; 95A0 F0 06                    ..
        brk                                     ; 95A2 00                       .
        db   $D8,$2B                         ; 95A3 D8 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_95BD ; 95A5 4C BD 95                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_95A8:
        brk                                     ; 95A8 00                       .
        db   $D7,$2B                         ; 95A9 D7 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_95BD ; 95AB 4C BD 95                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_95AE:
        brk                                     ; 95AE 00                       .
        db   $D6,$2B                         ; 95AF D6 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_95BD ; 95B1 4C BD 95                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_95B4:
        brk                                     ; 95B4 00                       .
        db   $D5,$2B                         ; 95B5 D5 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_95BD ; 95B7 4C BD 95                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_95BA:
        brk                                     ; 95BA 00                       .
        db   $D4,$2B                         ; 95BB D4 2B                    .+
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_95BD:
        lda     $627A                           ; 95BD AD 7A 62                 .zb
        and     #$08                            ; 95C0 29 08                    ).
        beq     BattleSetupServices_Branch_95C7 ; 95C2 F0 03                    ..
        jsr     BattleSetupServices_Entry_9788  ; 95C4 20 88 97                  ..
BattleSetupServices_Branch_95C7:
        lda     $627A                           ; 95C7 AD 7A 62                 .zb
        and     #$04                            ; 95CA 29 04                    ).
        beq     BattleSetupServices_Branch_95DF ; 95CC F0 11                    ..
        lda     $6279                           ; 95CE AD 79 62                 .yb
        brk                                     ; 95D1 00                       .
        db   $0D,$0F                         ; 95D2 0D 0F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_95DC ; 95D4 90 06                    ..
        brk                                     ; 95D6 00                       .
        db   $DE,$2B                         ; 95D7 DE 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_95DF ; 95D9 4C DF 95                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_95DC:
        brk                                     ; 95DC 00                       .
        db   $DF,$2B                         ; 95DD DF 2B                    .+
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_95DF:
        lda     $627A                           ; 95DF AD 7A 62                 .zb
        and     #$02                            ; 95E2 29 02                    ).
        beq     BattleSetupServices_Branch_95E9 ; 95E4 F0 03                    ..
        jsr     BattleSetupServices_Entry_964F  ; 95E6 20 4F 96                  O.
BattleSetupServices_Branch_95E9:
        lda     $627A                           ; 95E9 AD 7A 62                 .zb
        and     #$01                            ; 95EC 29 01                    ).
        beq     BattleSetupServices_Branch_9618 ; 95EE F0 28                    .(
        lda     $6279                           ; 95F0 AD 79 62                 .yb
        brk                                     ; 95F3 00                       .
        db   $0F,$0F                         ; 95F4 0F 0F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_9601 ; 95F6 90 09                    ..
        brk                                     ; 95F8 00                       .
        db   $DA,$2B                         ; 95F9 DA 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; 95FB 00                       .
        db   $DB,$2B                         ; 95FC DB 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_9618 ; 95FE 4C 18 96                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9601:
        lda     $6279                           ; 9601 AD 79 62                 .yb
        sta     $00                           ; 9604 85 00                    ..
        brk                                     ; 9606 00                       .
        db   $02,$5F                         ; 9607 02 5F                    ._
; ----------------------------------------------------------------------------
        lda     $00                           ; 9609 A5 00                    ..
        sta     $FD                             ; 960B 85 FD                    ..
        lda     $01                             ; 960D A5 01                    ..
        sta     $FE                             ; 960F 85 FE                    ..
        lda     $02                           ; 9611 A5 02                    ..
        sta     $FF                             ; 9613 85 FF                    ..
        brk                                     ; 9615 00                       .
        db   $D9,$2B                         ; 9616 D9 2B                    .+
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9618:
        rts                                     ; 9618 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9619:
        lda     $6279                           ; 9619 AD 79 62                 .yb
        cmp     #$0C                            ; 961C C9 0C                    ..
        beq     BattleSetupServices_Branch_9638 ; 961E F0 18                    ..
        cmp     #$29                            ; 9620 C9 29                    .)
        beq     BattleSetupServices_Branch_9638 ; 9622 F0 14                    ..
        cmp     #$03                            ; 9624 C9 03                    ..
        bne     BattleSetupServices_Branch_9636 ; 9626 D0 0E                    ..
        lda     #$07                            ; 9628 A9 07                    ..
        sta     $6F                             ; 962A 85 6F                    .o
        brk                                     ; 962C 00                       .
        db   $63,$33                         ; 962D 63 33                    c3
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_9636 ; 962F B0 05                    ..
        brk                                     ; 9631 00                       .
        db   $E5,$2B                         ; 9632 E5 2B                    .+
; ----------------------------------------------------------------------------
        sec                                     ; 9634 38                       8
        rts                                     ; 9635 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9636:
        clc                                     ; 9636 18                       .
        rts                                     ; 9637 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9638:
        brk                                     ; 9638 00                       .
        db   $EF,$2B                         ; 9639 EF 2B                    .+
; ----------------------------------------------------------------------------
        sec                                     ; 963B 38                       8
        rts                                     ; 963C 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_963D:
        ldx     #$05                            ; 963D A2 05                    ..
        lda     $6279                           ; 963F AD 79 62                 .yb
        brk                                     ; 9642 00                       .
        db   $0A,$0F                         ; 9643 0A 0F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_964B ; 9645 B0 04                    ..
        brk                                     ; 9647 00                       .
        db   $C2,$3B                         ; 9648 C2 3B                    .;
; ----------------------------------------------------------------------------
        rts                                     ; 964A 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_964B:
        brk                                     ; 964B 00                       .
        db   $C3,$3B                         ; 964C C3 3B                    .;
; ----------------------------------------------------------------------------
        rts                                     ; 964E 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_964F:
        lda     SaveCurrentChapterMinus1        ; 964F AD 5A 61                 .Za
        cmp     #$02                            ; 9652 C9 02                    ..
        beq     BattleSetupServices_Branch_965E ; 9654 F0 08                    ..
        jsr     BattleSetupServices_Entry_9619  ; 9656 20 19 96                  ..
        bcs     BattleSetupServices_Branch_9690 ; 9659 B0 35                    .5
        jsr     BattleSetupServices_Entry_9662  ; 965B 20 62 96                  b.
BattleSetupServices_Branch_965E:
        jsr     BattleSetupServices_Entry_963D  ; 965E 20 3D 96                  =.
        rts                                     ; 9661 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9662:
        lda     #$00                            ; 9662 A9 00                    ..
        sta     $00                           ; 9664 85 00                    ..
        sta     $01                             ; 9666 85 01                    ..
        ldx     #$07                            ; 9668 A2 07                    ..
BattleSetupServices_Branch_966A:
        stx     $6F                             ; 966A 86 6F                    .o
        cpx     #$05                            ; 966C E0 05                    ..
        clc                                     ; 966E 18                       .
        beq     BattleSetupServices_Branch_9680 ; 966F F0 0F                    ..
        brk                                     ; 9671 00                       .
        db   $63,$33                         ; 9672 63 33                    c3
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_9680 ; 9674 90 0A                    ..
        lda     $6279                           ; 9676 AD 79 62                 .yb
        brk                                     ; 9679 00                       .
        db   $0A,$0F                         ; 967A 0A 0F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_9680 ; 967C 90 02                    ..
        inc     $01                             ; 967E E6 01                    ..
BattleSetupServices_Branch_9680:
        ror     $00                           ; 9680 66 00                    f.
        dex                                     ; 9682 CA                       .
        bpl     BattleSetupServices_Branch_966A ; 9683 10 E5                    ..
        lda     $01                             ; 9685 A5 01                    ..
        beq     BattleSetupServices_Branch_9690 ; 9687 F0 07                    ..
        cmp     #$07                            ; 9689 C9 07                    ..
        bne     BattleSetupServices_Branch_9691 ; 968B D0 04                    ..
        brk                                     ; 968D 00                       .
        db   $E0,$2B                         ; 968E E0 2B                    .+
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9690:
        rts                                     ; 9690 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9691:
        pha                                     ; 9691 48                       H
        lda     $00                           ; 9692 A5 00                    ..
        pha                                     ; 9694 48                       H
        brk                                     ; 9695 00                       .
        db   $E1,$2B                         ; 9696 E1 2B                    .+
; ----------------------------------------------------------------------------
        pla                                     ; 9698 68                       h
        sta     $00                           ; 9699 85 00                    ..
        pla                                     ; 969B 68                       h
        sta     $01                             ; 969C 85 01                    ..
        brk                                     ; 969E 00                       .
        db   $62,$33                         ; 969F 62 33                    b3
; ----------------------------------------------------------------------------
        sta     $02                           ; 96A1 85 02                    ..
        lda     #$00                            ; 96A3 A9 00                    ..
        sta     $6E                             ; 96A5 85 6E                    .n
        sta     $04                             ; 96A7 85 04                    ..
        sta     $03                             ; 96A9 85 03                    ..
BattleSetupServices_Branch_96AB:
        lda     $01                             ; 96AB A5 01                    ..
        cmp     #$04                            ; 96AD C9 04                    ..
        bcc     BattleSetupServices_Branch_96B3 ; 96AF 90 02                    ..
        inc     $03                             ; 96B1 E6 03                    ..
BattleSetupServices_Branch_96B3:
        ldx     #$00                            ; 96B3 A2 00                    ..
BattleSetupServices_Branch_96B5:
        brk                                     ; 96B5 00                       .
        db   $2B,$33                         ; 96B6 2B 33                    +3
; ----------------------------------------------------------------------------
        cmp     #$08                            ; 96B8 C9 08                    ..
        bcs     BattleSetupServices_Branch_9701 ; 96BA B0 45                    .E
        tay                                     ; 96BC A8                       .
        lda     #$00                            ; 96BD A9 00                    ..
        sec                                     ; 96BF 38                       8
BattleSetupServices_Branch_96C0:
        ror     a                               ; 96C0 6A                       j
        dey                                     ; 96C1 88                       .
        bpl     BattleSetupServices_Branch_96C0 ; 96C2 10 FC                    ..
        and     $00                           ; 96C4 25 00                    %.
        beq     BattleSetupServices_Branch_9701 ; 96C6 F0 39                    .9
        lda     $6E                             ; 96C8 A5 6E                    .n
        sta     $F9,x                           ; 96CA 95 F9                    ..
        inx                                     ; 96CC E8                       .
        inc     $04                             ; 96CD E6 04                    ..
        dec     $01                             ; 96CF C6 01                    ..
        beq     BattleSetupServices_Branch_9707 ; 96D1 F0 34                    .4
        lda     $04                             ; 96D3 A5 04                    ..
        cmp     #$02                            ; 96D5 C9 02                    ..
        bne     BattleSetupServices_Branch_9701 ; 96D7 D0 28                    .(
        lda     $03                             ; 96D9 A5 03                    ..
        beq     BattleSetupServices_Branch_9701 ; 96DB F0 24                    .$
        lda     $02                           ; 96DD A5 02                    ..
        pha                                     ; 96DF 48                       H
        lda     $01                             ; 96E0 A5 01                    ..
        pha                                     ; 96E2 48                       H
        lda     $00                           ; 96E3 A5 00                    ..
        pha                                     ; 96E5 48                       H
        lda     $6E                             ; 96E6 A5 6E                    .n
        pha                                     ; 96E8 48                       H
        brk                                     ; 96E9 00                       .
        db   $D7,$4B                         ; 96EA D7 4B                    .K
; ----------------------------------------------------------------------------
        pla                                     ; 96EC 68                       h
        sta     $6E                             ; 96ED 85 6E                    .n
        pla                                     ; 96EF 68                       h
        sta     $00                           ; 96F0 85 00                    ..
        pla                                     ; 96F2 68                       h
        sta     $01                             ; 96F3 85 01                    ..
        pla                                     ; 96F5 68                       h
        sta     $02                           ; 96F6 85 02                    ..
        lda     #$00                            ; 96F8 A9 00                    ..
        sta     $03                             ; 96FA 85 03                    ..
        inc     $6E                             ; 96FC E6 6E                    .n
        jmp     BattleSetupServices_Branch_96AB ; 96FE 4C AB 96                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9701:
        inc     $6E                             ; 9701 E6 6E                    .n
        dec     $02                           ; 9703 C6 02                    ..
        bne     BattleSetupServices_Branch_96B5 ; 9705 D0 AE                    ..
BattleSetupServices_Branch_9707:
        lda     $04                             ; 9707 A5 04                    ..
        and     #$03                            ; 9709 29 03                    ).
        tax                                     ; 970B AA                       .
        beq     BattleSetupServices_Branch_971C ; 970C F0 0E                    ..
        dex                                     ; 970E CA                       .
        beq     BattleSetupServices_Branch_971C ; 970F F0 0B                    ..
        dex                                     ; 9711 CA                       .
        beq     BattleSetupServices_Branch_9718 ; 9712 F0 04                    ..
        brk                                     ; 9714 00                       .
        db   $E4,$2B                         ; 9715 E4 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 9717 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9718:
        brk                                     ; 9718 00                       .
        db   $E3,$2B                         ; 9719 E3 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 971B 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_971C:
        brk                                     ; 971C 00                       .
        db   $E2,$2B                         ; 971D E2 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; 971F 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9720:
        ldx     $6278                           ; 9720 AE 78 62                 .xb
        stx     $F9                             ; 9723 86 F9                    ..
        lda     #$07                            ; 9725 A9 07                    ..
        brk                                     ; 9727 00                       .
        db   $46,$73                         ; 9728 46 73                    Fs
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_9736 ; 972A 90 0A                    ..
        lda     #$06                            ; 972C A9 06                    ..
        brk                                     ; 972E 00                       .
        db   $46,$73                         ; 972F 46 73                    Fs
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_9740 ; 9731 B0 0D                    ..
        jmp     BattleSetupServices_Branch_AE36 ; 9733 4C 36 AE                 L6.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9736:
        brk                                     ; 9736 00                       .
        db   $07,$6F,$43                     ; 9737 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; 973A 00                       .
        db   $AD,$2B                         ; 973B AD 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_9418 ; 973D 4C 18 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9740:
        brk                                     ; 9740 00                       .
        db   $07,$6F,$43                     ; 9741 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; 9744 00                       .
        db   $AB,$2B                         ; 9745 AB 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_9418 ; 9747 4C 18 94                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_974A:
        ldx     $6278                           ; 974A AE 78 62                 .xb
        lda     $6279                           ; 974D AD 79 62                 .yb
        brk                                     ; 9750 00                       .
        db   $2C,$73                         ; 9751 2C 73                    ,s
; ----------------------------------------------------------------------------
        lda     $73                             ; 9753 A5 73                    .s
        bpl     BattleSetupServices_Branch_9765 ; 9755 10 0E                    ..
        brk                                     ; 9757 00                       .
        db   $0C,$0F                         ; 9758 0C 0F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_9765 ; 975A 90 09                    ..
        brk                                     ; 975C 00                       .
        db   $07,$6F,$43                     ; 975D 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_9767  ; 9760 20 67 97                  g.
        sec                                     ; 9763 38                       8
        rts                                     ; 9764 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9765:
        clc                                     ; 9765 18                       .
        rts                                     ; 9766 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9767:
        brk                                     ; 9767 00                       .
        db   $12,$FB                         ; 9768 12 FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 976A 00                       .
        db   $DC,$2B                         ; 976B DC 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; 976D 00                       .
        db   $07,$9F                         ; 976E 07 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9770 00                       .
        db   $09,$9F                         ; 9771 09 9F                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 9773 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9774:
        lda     #$21                            ; 9774 A9 21                    .!
        sta     $24                             ; 9776 85 24                    .$
        lda     #$10                            ; 9778 A9 10                    ..
        sta     $23                             ; 977A 85 23                    .#
        ldx     #$00                            ; 977C A2 00                    ..
        jsr     UpperFixedEngine_Entry_C3CE     ; 977E 20 CE C3                  ..
        ldy     $6279                           ; 9781 AC 79 62                 .yb
        jsr     UpperFixedEngine_Entry_C3EA     ; 9784 20 EA C3                  ..
        rts                                     ; 9787 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9788:
        jsr     BattleSetupServices_Entry_9774  ; 9788 20 74 97                  t.
        tax                                     ; 978B AA                       .
        beq     BattleSetupServices_Branch_97A8 ; 978C F0 1A                    ..
        dex                                     ; 978E CA                       .
        beq     BattleSetupServices_Branch_979A ; 978F F0 09                    ..
        dex                                     ; 9791 CA                       .
        beq     BattleSetupServices_Branch_97A1 ; 9792 F0 0D                    ..
        ldx     #$04                            ; 9794 A2 04                    ..
        brk                                     ; 9796 00                       .
        db   $04,$6F                         ; 9797 04 6F                    .o
; ----------------------------------------------------------------------------
        rts                                     ; 9799 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_979A:
        brk                                     ; 979A 00                       .
        db   $94,$4B                         ; 979B 94 4B                    .K
; ----------------------------------------------------------------------------
        brk                                     ; 979D 00                       .
        db   $91,$4B                         ; 979E 91 4B                    .K
; ----------------------------------------------------------------------------
        rts                                     ; 97A0 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_97A1:
        brk                                     ; 97A1 00                       .
        db   $A3,$4B                         ; 97A2 A3 4B                    .K
; ----------------------------------------------------------------------------
        brk                                     ; 97A4 00                       .
        db   $A5,$4B                         ; 97A5 A5 4B                    .K
; ----------------------------------------------------------------------------
        rts                                     ; 97A7 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_97A8:
        rts                                     ; 97A8 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_97A9:
        jsr     UpperFixedEngine_Entry_D1F3     ; 97A9 20 F3 D1                  ..
        brk                                     ; 97AC 00                       .
        db   $2A,$FB                         ; 97AD 2A FB                    *.
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_9AF7  ; 97AF 20 F7 9A                  ..
        jsr     BattleSetupServices_Entry_97BC  ; 97B2 20 BC 97                  ..
        brk                                     ; 97B5 00                       .
        db   $07,$9F                         ; 97B6 07 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 97B8 00                       .
        db   $09,$9F                         ; 97B9 09 9F                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 97BB 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_97BC:
        lda     PlayerLocalX                    ; 97BC A5 44                    .D
        sec                                     ; 97BE 38                       8
        sbc     #$0B                            ; 97BF E9 0B                    ..
        sta     $07                             ; 97C1 85 07                    ..
        lda     PlayerLocalY                    ; 97C3 A5 45                    .E
        sec                                     ; 97C5 38                       8
        sbc     #$0B                            ; 97C6 E9 0B                    ..
        sta     $08                             ; 97C8 85 08                    ..
        jsr     BattleSetupServices_Entry_985A  ; 97CA 20 5A 98                  Z.
        jsr     BattleSetupServices_Entry_9887  ; 97CD 20 87 98                  ..
        ldx     #$06                            ; 97D0 A2 06                    ..
        jsr     BattleSetupServices_Entry_98F6  ; 97D2 20 F6 98                  ..
        jsr     UpperFixedEngine_Entry_C5C5     ; 97D5 20 C5 C5                  ..
        lda     #$3C                            ; 97D8 A9 3C                    .<
        jsr     UpperFixedEngine_Entry_C78C     ; 97DA 20 8C C7                  ..
        lda     #$F7                            ; 97DD A9 F7                    ..
        sta     $0200,y                         ; 97DF 99 00 02                 ...
        sta     $0203,y                         ; 97E2 99 03 02                 ...
        ldx     #$06                            ; 97E5 A2 06                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 97E7 20 0C C9                  ..
        jsr     BattleSetupServices_Entry_991A  ; 97EA 20 1A 99                  ..
        jsr     UpperFixedEngine_Entry_C5BF     ; 97ED 20 BF C5                  ..
        lda     #$03                            ; 97F0 A9 03                    ..
        sta     $05                             ; 97F2 85 05                    ..
        ldx     #$00                            ; 97F4 A2 00                    ..
        jsr     BattleSetupServices_Entry_993E  ; 97F6 20 3E 99                  >.
        jsr     UpperFixedEngine_Entry_C626     ; 97F9 20 26 C6                  &.
        ldx     #$06                            ; 97FC A2 06                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 97FE 20 0C C9                  ..
        jsr     BattleSetupServices_Entry_98AD  ; 9801 20 AD 98                  ..
        ldx     #$01                            ; 9804 A2 01                    ..
        stx     $05                             ; 9806 86 05                    ..
        inx                                     ; 9808 E8                       .
        inx                                     ; 9809 E8                       .
        stx     $06                             ; 980A 86 06                    ..
BattleSetupServices_Branch_980C:
        jsr     BattleSetupServices_Entry_993E  ; 980C 20 3E 99                  >.
        lda     $06                             ; 980F A5 06                    ..
        cmp     #$08                            ; 9811 C9 08                    ..
        bne     BattleSetupServices_Branch_981E ; 9813 D0 09                    ..
        jsr     UpperFixedEngine_Entry_C626     ; 9815 20 26 C6                  &.
        jsr     WaitForNmi                      ; 9818 20 74 FF                  t.
        jsr     BattleSetupServices_Entry_982F  ; 981B 20 2F 98                  /.
BattleSetupServices_Branch_981E:
        jsr     UpperFixedEngine_Entry_C626     ; 981E 20 26 C6                  &.
        ldx     #$05                            ; 9821 A2 05                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 9823 20 0C C9                  ..
        inc     $06                             ; 9826 E6 06                    ..
        ldx     $06                             ; 9828 A6 06                    ..
        cpx     #$09                            ; 982A E0 09                    ..
        bne     BattleSetupServices_Branch_980C ; 982C D0 DE                    ..
        rts                                     ; 982E 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_982F:
        lda     $08                             ; 982F A5 08                    ..
        bne     BattleSetupServices_Branch_9844 ; 9831 D0 11                    ..
        sta     $01                             ; 9833 85 01                    ..
        lda     #$1E                            ; 9835 A9 1E                    ..
        sta     $00                           ; 9837 85 00                    ..
BattleSetupServices_Branch_9839:
        lda     $05                             ; 9839 A5 05                    ..
        jsr     UpperFixedEngine_Entry_C727     ; 983B 20 27 C7                  '.
        dec     $00                           ; 983E C6 00                    ..
        dec     $00                           ; 9840 C6 00                    ..
        bpl     BattleSetupServices_Branch_9839 ; 9842 10 F5                    ..
BattleSetupServices_Branch_9844:
        lda     $07                             ; 9844 A5 07                    ..
        bne     BattleSetupServices_Branch_9859 ; 9846 D0 11                    ..
        sta     $00                           ; 9848 85 00                    ..
        lda     #$1C                            ; 984A A9 1C                    ..
        sta     $01                             ; 984C 85 01                    ..
BattleSetupServices_Branch_984E:
        lda     $05                             ; 984E A5 05                    ..
        jsr     UpperFixedEngine_Entry_C727     ; 9850 20 27 C7                  '.
        dec     $01                             ; 9853 C6 01                    ..
        dec     $01                             ; 9855 C6 01                    ..
        bpl     BattleSetupServices_Branch_984E ; 9857 10 F5                    ..
BattleSetupServices_Branch_9859:
        rts                                     ; 9859 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_985A:
        lda     #$0F                            ; 985A A9 0F                    ..
        ldx     #$03                            ; 985C A2 03                    ..
BattleSetupServices_Branch_985E:
        sta     $0602,x                         ; 985E 9D 02 06                 ...
        dex                                     ; 9861 CA                       .
        bne     BattleSetupServices_Branch_985E ; 9862 D0 FA                    ..
        jsr     UpperFixedEngine_Entry_C5B9     ; 9864 20 B9 C5                  ..
        jsr     WaitForNmi                      ; 9867 20 74 FF                  t.
        rts                                     ; 986A 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_986B:
        ldx     #$1F                            ; 986B A2 1F                    ..
        stx     $00                           ; 986D 86 00                    ..
BattleSetupServices_Branch_986F:
        ldx     #$1E                            ; 986F A2 1E                    ..
        stx     $01                             ; 9871 86 01                    ..
BattleSetupServices_Branch_9873:
        lda     #$02                            ; 9873 A9 02                    ..
        jsr     UpperFixedEngine_Entry_C727     ; 9875 20 27 C7                  '.
        dec     $01                             ; 9878 C6 01                    ..
        bpl     BattleSetupServices_Branch_9873 ; 987A 10 F7                    ..
        jsr     UpperFixedEngine_Entry_C626     ; 987C 20 26 C6                  &.
        jsr     WaitForNmi                      ; 987F 20 74 FF                  t.
        dec     $00                           ; 9882 C6 00                    ..
        bpl     BattleSetupServices_Branch_986F ; 9884 10 E9                    ..
        rts                                     ; 9886 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9887:
        lda     #$02                            ; 9887 A9 02                    ..
        sta     $05                             ; 9889 85 05                    ..
        ldx     #$09                            ; 988B A2 09                    ..
        stx     $06                             ; 988D 86 06                    ..
        jsr     BattleSetupServices_Entry_982F  ; 988F 20 2F 98                  /.
        jsr     UpperFixedEngine_Entry_C626     ; 9892 20 26 C6                  &.
        jsr     BattleSetupServices_Entry_9B26  ; 9895 20 26 9B                  &.
BattleSetupServices_Branch_9898:
        dec     $06                             ; 9898 C6 06                    ..
        beq     BattleSetupServices_Branch_98AC ; 989A F0 10                    ..
        ldx     $06                             ; 989C A6 06                    ..
        jsr     BattleSetupServices_Entry_993E  ; 989E 20 3E 99                  >.
        jsr     UpperFixedEngine_Entry_C626     ; 98A1 20 26 C6                  &.
        ldx     #$05                            ; 98A4 A2 05                    ..
        jsr     BattleSetupServices_Entry_9B1C  ; 98A6 20 1C 9B                  ..
        jmp     BattleSetupServices_Branch_9898 ; 98A9 4C 98 98                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_98AC:
        rts                                     ; 98AC 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_98AD:
        ldy     #$00                            ; 98AD A0 00                    ..
BattleSetupServices_Branch_98AF:
        sty     $0A                             ; 98AF 84 0A                    ..
        lda     $98EA,y                         ; 98B1 B9 EA 98                 ...
        sta     $05                             ; 98B4 85 05                    ..
        ldx     $98DE,y                         ; 98B6 BE DE 98                 ...
        jsr     BattleSetupServices_Entry_993E  ; 98B9 20 3E 99                  >.
        jsr     UpperFixedEngine_Entry_C626     ; 98BC 20 26 C6                  &.
        jsr     WaitForNmi                      ; 98BF 20 74 FF                  t.
        ldy     $0A                             ; 98C2 A4 0A                    ..
        ldx     $98D2,y                         ; 98C4 BE D2 98                 ...
        jsr     BattleSetupServices_Entry_98F6  ; 98C7 20 F6 98                  ..
        ldy     $0A                             ; 98CA A4 0A                    ..
        iny                                     ; 98CC C8                       .
        cpy     #$0C                            ; 98CD C0 0C                    ..
        bne     BattleSetupServices_Branch_98AF ; 98CF D0 DE                    ..
        rts                                     ; 98D1 60                       `
; ----------------------------------------------------------------------------
        db   $00,$03,$00,$06,$00,$03,$03,$03 ; 98D2 00 03 00 06 00 03 03 03  ........
        db   $00,$06,$00,$03                 ; 98DA 00 06 00 03              ....
        db   $01,$02,$02,$01,$01,$02,$03,$03 ; 98DE 01 02 02 01 01 02 03 03  ........
        db   $02,$01,$01,$02                 ; 98E6 02 01 01 02              ....
        db   $01,$01,$02,$02,$01,$01,$01,$02 ; 98EA 01 01 02 02 01 01 01 02  ........
        db   $02,$02,$01,$01                 ; 98F2 02 02 01 01              ....
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_98F6:
        ldy     #$02                            ; 98F6 A0 02                    ..
BattleSetupServices_Branch_98F8:
        lda     $9911,x                         ; 98F8 BD 11 99                 ...
        sta     $0606,y                         ; 98FB 99 06 06                 ...
        inx                                     ; 98FE E8                       .
        dey                                     ; 98FF 88                       .
        bpl     BattleSetupServices_Branch_98F8 ; 9900 10 F6                    ..
        lda     $990E,x                         ; 9902 BD 0E 99                 ...
        sta     $0602                           ; 9905 8D 02 06                 ...
        jsr     UpperFixedEngine_Entry_C5B9     ; 9908 20 B9 C5                  ..
        ldx     #$06                            ; 990B A2 06                    ..
L990E = $+ 1
        jsr     UpperFixedEngine_Entry_C90C     ; 990D 20 0C C9                  ..
        rts                                     ; 9910 60                       `
; ----------------------------------------------------------------------------
        db   $05,$28,$17,$15,$38,$27,$04,$18 ; 9911 05 28 17 15 38 27 04 18  .(..8'..
        db   $07                             ; 9919 07                       .
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_991A:
        ldy     #$18                            ; 991A A0 18                    ..
BattleSetupServices_Branch_991C:
        lda     $9925,y                         ; 991C B9 25 99                 .%.
        sta     $05FC,y                         ; 991F 99 FC 05                 ...
        dey                                     ; 9922 88                       .
        bne     BattleSetupServices_Branch_991C ; 9923 D0 F7                    ..
        rts                                     ; 9925 60                       `
; ----------------------------------------------------------------------------
        db   $30,$12,$21,$00,$10,$15,$0F,$0F ; 9926 30 12 21 00 10 15 0F 0F  0.!.....
        db   $0F,$07,$18,$04,$30,$12,$19,$30 ; 992E 0F 07 18 04 30 12 19 30  ....0..0
        db   $17,$26,$30,$24,$13,$30,$26,$04 ; 9936 17 26 30 24 13 30 26 04  .&0$.0&.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_993E:
        lda     $99B6,x                         ; 993E BD B6 99                 ...
        sta     $02                           ; 9941 85 02                    ..
        txa                                     ; 9943 8A                       .
        asl     a                               ; 9944 0A                       .
        tay                                     ; 9945 A8                       .
        lda     $99A4,y                         ; 9946 B9 A4 99                 ...
        sta     $03                             ; 9949 85 03                    ..
        lda     $99A5,y                         ; 994B B9 A5 99                 ...
        sta     $04                             ; 994E 85 04                    ..
        lda     #$1E                            ; 9950 A9 1E                    ..
        sta     $09                             ; 9952 85 09                    ..
BattleSetupServices_Branch_9954:
        ldy     $02                           ; 9954 A4 02                    ..
        lda     ($03),y                         ; 9956 B1 03                    ..
        lsr     a                               ; 9958 4A                       J
        lsr     a                               ; 9959 4A                       J
        lsr     a                               ; 995A 4A                       J
        lsr     a                               ; 995B 4A                       J
        clc                                     ; 995C 18                       .
        adc     #$03                            ; 995D 69 03                    i.
        ldx     $07                             ; 995F A6 07                    ..
        cmp     $99A0,x                         ; 9961 DD A0 99                 ...
        bcc     BattleSetupServices_Branch_9968 ; 9964 90 02                    ..
        and     #$0F                            ; 9966 29 0F                    ).
BattleSetupServices_Branch_9968:
        sec                                     ; 9968 38                       8
        sbc     $07                             ; 9969 E5 07                    ..
        asl     a                               ; 996B 0A                       .
        and     #$3E                            ; 996C 29 3E                    )>
        sta     $00                           ; 996E 85 00                    ..
        ora     $07                             ; 9970 05 07                    ..
        beq     BattleSetupServices_Branch_999B ; 9972 F0 27                    .'
        lda     ($03),y                         ; 9974 B1 03                    ..
        and     #$0F                            ; 9976 29 0F                    ).
        sec                                     ; 9978 38                       8
        sbc     $08                             ; 9979 E5 08                    ..
        asl     a                               ; 997B 0A                       .
        and     #$1E                            ; 997C 29 1E                    ).
        sta     $01                             ; 997E 85 01                    ..
        cmp     #$1E                            ; 9980 C9 1E                    ..
        beq     BattleSetupServices_Branch_999B ; 9982 F0 17                    ..
        ora     $08                             ; 9984 05 08                    ..
        beq     BattleSetupServices_Branch_999B ; 9986 F0 13                    ..
        lda     $05                             ; 9988 A5 05                    ..
        jsr     UpperFixedEngine_Entry_C727     ; 998A 20 27 C7                  '.
        dec     $09                             ; 998D C6 09                    ..
        bne     BattleSetupServices_Branch_999B ; 998F D0 0A                    ..
        jsr     UpperFixedEngine_Entry_C626     ; 9991 20 26 C6                  &.
        jsr     WaitForNmi                      ; 9994 20 74 FF                  t.
        lda     #$1E                            ; 9997 A9 1E                    ..
        sta     $09                             ; 9999 85 09                    ..
BattleSetupServices_Branch_999B:
        dec     $02                           ; 999B C6 02                    ..
        bne     BattleSetupServices_Branch_9954 ; 999D D0 B5                    ..
        rts                                     ; 999F 60                       `
; ----------------------------------------------------------------------------
        db   $10,$11,$12,$13                 ; 99A0 10 11 12 13              ....
        db   $BE                             ; 99A4 BE                       .
        db   $99,$C2,$99,$CE,$99,$DE,$99,$FA ; 99A5 99 C2 99 CE 99 DE 99 FA  ........
        db   $99,$16,$9A,$42,$9A,$76,$9A,$B2 ; 99AD 99 16 9A 42 9A 76 9A B2  ...B.v..
        db   $9A                             ; 99B5 9A                       .
        db   $04,$0C,$10,$1C,$1C,$2C,$34,$3C ; 99B6 04 0C 10 1C 1C 2C 34 3C  .....,4<
        db   $44,$68,$78,$79,$69,$57,$67,$77 ; 99BE 44 68 78 79 69 57 67 77  DhxyiWgw
        db   $87,$88,$89,$8A,$7A,$6A,$5A,$59 ; 99C6 87 88 89 8A 7A 6A 5A 59  ....zjZY
        db   $58,$56,$66,$76,$86,$97,$98,$99 ; 99CE 58 56 66 76 86 97 98 99  XVfv....
        db   $9A,$8B,$7B,$6B,$5B,$4A,$49,$48 ; 99D6 9A 8B 7B 6B 5B 4A 49 48  ..{k[JIH
        db   $47,$45,$55,$65,$75,$85,$95,$96 ; 99DE 47 45 55 65 75 85 95 96  GEUeu...
        db   $A6,$A7,$A8,$A9,$AA,$AB,$9B,$9C ; 99E6 A6 A7 A8 A9 AA AB 9B 9C  ........
        db   $8C,$7C,$6C,$5C,$4C,$4B,$3B,$3A ; 99EE 8C 7C 6C 5C 4C 4B 3B 3A  .|l\LK;:
        db   $39,$38,$37,$36,$46,$44,$54,$64 ; 99F6 39 38 37 36 46 44 54 64  9876FDTd
        db   $74,$84,$94,$A5,$B6,$B7,$B8,$B9 ; 99FE 74 84 94 A5 B6 B7 B8 B9  t.......
        db   $BA,$BB,$AC,$9D,$8D,$7D,$6D,$5D ; 9A06 BA BB AC 9D 8D 7D 6D 5D  .....}m]
        db   $4D,$3C,$2B,$2A,$29,$28,$27,$26 ; 9A0E 4D 3C 2B 2A 29 28 27 26  M<+*)('&
        db   $35,$33,$43,$53,$63,$73,$83,$93 ; 9A16 35 33 43 53 63 73 83 93  53CScs..
        db   $A3,$A4,$B4,$B5,$C5,$C6,$C7,$C8 ; 9A1E A3 A4 B4 B5 C5 C6 C7 C8  ........
        db   $C9,$CA,$CB,$CC,$BC,$BD,$AD,$AE ; 9A26 C9 CA CB CC BC BD AD AE  ........
        db   $9E,$8E,$7E,$6E,$5E,$4E,$3E,$3D ; 9A2E 9E 8E 7E 6E 5E 4E 3E 3D  ..~n^N>=
        db   $2D,$2C,$1C,$1B,$1A,$19,$18,$17 ; 9A36 2D 2C 1C 1B 1A 19 18 17  -,......
        db   $16,$15,$25,$24,$34,$22,$32,$42 ; 9A3E 16 15 25 24 34 22 32 42  ..%$4"2B
        db   $52,$62,$72,$82,$92,$A2,$B2,$B3 ; 9A46 52 62 72 82 92 A2 B2 B3  Rbr.....
        db   $C3,$C4,$D4,$D5,$D6,$D7,$D8,$D9 ; 9A4E C3 C4 D4 D5 D6 D7 D8 D9  ........
        db   $DA,$DB,$DC,$DD,$CD,$CE,$BE,$BF ; 9A56 DA DB DC DD CD CE BE BF  ........
        db   $AF,$9F,$8F,$7F,$6F,$5F,$4F,$3F ; 9A5E AF 9F 8F 7F 6F 5F 4F 3F  ....o_O?
        db   $2F,$2E,$1E,$1D,$0D,$0C,$0B,$0A ; 9A66 2F 2E 1E 1D 0D 0C 0B 0A  /.......
        db   $09,$08,$07,$06,$05,$04,$14,$13 ; 9A6E 09 08 07 06 05 04 14 13  ........
        db   $23,$11,$21,$31,$41,$51,$61,$71 ; 9A76 23 11 21 31 41 51 61 71  #.!1AQaq
        db   $81,$91,$A1,$B1,$C1,$C2,$D2,$D3 ; 9A7E 81 91 A1 B1 C1 C2 D2 D3  ........
        db   $E3,$E4,$E5,$E6,$E7,$E8,$E9,$EA ; 9A86 E3 E4 E5 E6 E7 E8 E9 EA  ........
        db   $EB,$EC,$ED,$EE,$DE,$DF,$CF,$C0 ; 9A8E EB EC ED EE DE DF CF C0  ........
        db   $B0,$A0,$90,$80,$70,$60,$50,$40 ; 9A96 B0 A0 90 80 70 60 50 40  ....p`P@
        db   $30,$20,$10,$1F,$0F,$0E,$FE,$FD ; 9A9E 30 20 10 1F 0F 0E FE FD  0 ......
        db   $FC,$FB,$FA,$F9,$F8,$F7,$F6,$F5 ; 9AA6 FC FB FA F9 F8 F7 F6 F5  ........
        db   $F4,$F3,$03,$02,$12,$00,$10,$20 ; 9AAE F4 F3 03 02 12 00 10 20  .......
        db   $30,$40,$50,$60,$70,$80,$90,$A0 ; 9AB6 30 40 50 60 70 80 90 A0  0@P`p...
        db   $B0,$C0,$D0,$D1,$E1,$E2,$F2,$F3 ; 9ABE B0 C0 D0 D1 E1 E2 F2 F3  ........
        db   $F4,$F5,$F6,$F7,$F8,$F9,$FA,$FB ; 9AC6 F4 F5 F6 F7 F8 F9 FA FB  ........
        db   $FC,$FD,$FE,$FF,$EF,$E0,$D0,$D1 ; 9ACE FC FD FE FF EF E0 D0 D1  ........
        db   $C1,$B1,$A1,$91,$81,$71,$61,$51 ; 9AD6 C1 B1 A1 91 81 71 61 51  .....qaQ
        db   $41,$31,$21,$11,$01,$00,$F0,$FF ; 9ADE 41 31 21 11 01 00 F0 FF  A1!.....
        db   $EF,$EE,$ED,$EC,$EB,$EA,$E9,$E8 ; 9AE6 EF EE ED EC EB EA E9 E8  ........
        db   $E7,$E6,$E5,$E4,$E3,$E2,$F2,$F1 ; 9AEE E7 E6 E5 E4 E3 E2 F2 F1  ........
        db   $01                             ; 9AF6 01                       .
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9AF7:
        jsr     BattleSetupServices_Entry_9B41  ; 9AF7 20 41 9B                  A.
        jsr     BattleSetupServices_Entry_9B88  ; 9AFA 20 88 9B                  ..
BattleSetupServices_Branch_9AFD:
        ldx     $02                           ; 9AFD A6 02                    ..
        lda     $9BDD,x                         ; 9AFF BD DD 9B                 ...
        beq     BattleSetupServices_Branch_9B1B ; 9B02 F0 17                    ..
        jsr     BattleSetupServices_Entry_9BB3  ; 9B04 20 B3 9B                  ..
        jsr     WaitForNmi                      ; 9B07 20 74 FF                  t.
        ldx     #$03                            ; 9B0A A2 03                    ..
        jsr     BattleSetupServices_Entry_9B1C  ; 9B0C 20 1C 9B                  ..
        bit     $03                             ; 9B0F 24 03                    $.
        bmi     BattleSetupServices_Branch_9B17 ; 9B11 30 04                    0.
        inc     $02                           ; 9B13 E6 02                    ..
        bne     BattleSetupServices_Branch_9AFD ; 9B15 D0 E6                    ..
BattleSetupServices_Branch_9B17:
        dec     $02                           ; 9B17 C6 02                    ..
        bne     BattleSetupServices_Branch_9AFD ; 9B19 D0 E2                    ..
BattleSetupServices_Branch_9B1B:
        rts                                     ; 9B1B 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9B1C:
        stx     $0A                             ; 9B1C 86 0A                    ..
BattleSetupServices_Branch_9B1E:
        jsr     BattleSetupServices_Entry_9B26  ; 9B1E 20 26 9B                  &.
        dec     $0A                             ; 9B21 C6 0A                    ..
        bne     BattleSetupServices_Branch_9B1E ; 9B23 D0 F9                    ..
        rts                                     ; 9B25 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9B26:
        lda     #$3C                            ; 9B26 A9 3C                    .<
        jsr     UpperFixedEngine_Entry_C78C     ; 9B28 20 8C C7                  ..
        tya                                     ; 9B2B 98                       .
        tax                                     ; 9B2C AA                       .
        inc     $0201,x                         ; 9B2D FE 01 02                 ...
        dec     $0F                             ; 9B30 C6 0F                    ..
        bne     BattleSetupServices_Branch_9B3D ; 9B32 D0 09                    ..
        lda     #$04                            ; 9B34 A9 04                    ..
        sta     $0F                             ; 9B36 85 0F                    ..
        lda     $0E                             ; 9B38 A5 0E                    ..
        sta     $0201,x                         ; 9B3A 9D 01 02                 ...
BattleSetupServices_Branch_9B3D:
        jsr     WaitForNmi                      ; 9B3D 20 74 FF                  t.
        rts                                     ; 9B40 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9B41:
        ldx     #$00                            ; 9B41 A2 00                    ..
        stx     $00                           ; 9B43 86 00                    ..
        stx     $01                             ; 9B45 86 01                    ..
        stx     $03                             ; 9B47 86 03                    ..
        lda     #$04                            ; 9B49 A9 04                    ..
        sta     $0F                             ; 9B4B 85 0F                    ..
        lda     PlayerLocalX                    ; 9B4D A5 44                    .D
        ldy     PlayerLocalY                    ; 9B4F A4 45                    .E
        cpy     #$0B                            ; 9B51 C0 0B                    ..
        beq     BattleSetupServices_Branch_9B63 ; 9B53 F0 0E                    ..
        inx                                     ; 9B55 E8                       .
        inx                                     ; 9B56 E8                       .
        cpy     #$0C                            ; 9B57 C0 0C                    ..
        beq     BattleSetupServices_Branch_9B63 ; 9B59 F0 08                    ..
        inx                                     ; 9B5B E8                       .
        inx                                     ; 9B5C E8                       .
        cpy     #$0D                            ; 9B5D C0 0D                    ..
        beq     BattleSetupServices_Branch_9B63 ; 9B5F F0 02                    ..
        inx                                     ; 9B61 E8                       .
        inx                                     ; 9B62 E8                       .
BattleSetupServices_Branch_9B63:
        cmp     #$0D                            ; 9B63 C9 0D                    ..
        bcc     BattleSetupServices_Branch_9B68 ; 9B65 90 01                    ..
        inx                                     ; 9B67 E8                       .
BattleSetupServices_Branch_9B68:
        txa                                     ; 9B68 8A                       .
        lda     $9B80,x                         ; 9B69 BD 80 9B                 ...
        ldy     #$04                            ; 9B6C A0 04                    ..
        lsr     a                               ; 9B6E 4A                       J
        bcc     BattleSetupServices_Branch_9B73 ; 9B6F 90 02                    ..
        sty     $00                           ; 9B71 84 00                    ..
BattleSetupServices_Branch_9B73:
        lsr     a                               ; 9B73 4A                       J
        bcc     BattleSetupServices_Branch_9B78 ; 9B74 90 02                    ..
        sty     $01                             ; 9B76 84 01                    ..
BattleSetupServices_Branch_9B78:
        lsr     a                               ; 9B78 4A                       J
        bcc     BattleSetupServices_Branch_9B7D ; 9B79 90 02                    ..
        ror     $03                             ; 9B7B 66 03                    f.
BattleSetupServices_Branch_9B7D:
        sta     $02                           ; 9B7D 85 02                    ..
        rts                                     ; 9B7F 60                       `
; ----------------------------------------------------------------------------
        db   $66,$67,$B6,$B7,$70,$71,$08,$09 ; 9B80 66 67 B6 B7 70 71 08 09  fg..pq..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9B88:
        ldx     #$07                            ; 9B88 A2 07                    ..
        lda     $6FE6,x                         ; 9B8A BD E6 6F                 ..o
        jsr     UpperFixedEngine_Entry_D864     ; 9B8D 20 64 D8                  d.
        ldy     #$00                            ; 9B90 A0 00                    ..
        lda     ($4F),y                         ; 9B92 B1 4F                    .O
        sta     $0E                             ; 9B94 85 0E                    ..
        pha                                     ; 9B96 48                       H
        iny                                     ; 9B97 C8                       .
        lda     ($4F),y                         ; 9B98 B1 4F                    .O
        pha                                     ; 9B9A 48                       H
        lda     #$3C                            ; 9B9B A9 3C                    .<
        jsr     UpperFixedEngine_Entry_C78C     ; 9B9D 20 8C C7                  ..
        lda     #$84                            ; 9BA0 A9 84                    ..
        sta     $0203,y                         ; 9BA2 99 03 02                 ...
        lda     #$6D                            ; 9BA5 A9 6D                    .m
        sta     $0200,y                         ; 9BA7 99 00 02                 ...
        pla                                     ; 9BAA 68                       h
        sta     $0202,y                         ; 9BAB 99 02 02                 ...
        pla                                     ; 9BAE 68                       h
        sta     $0201,y                         ; 9BAF 99 01 02                 ...
        rts                                     ; 9BB2 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9BB3:
        pha                                     ; 9BB3 48                       H
        pha                                     ; 9BB4 48                       H
        lda     #$3C                            ; 9BB5 A9 3C                    .<
        jsr     UpperFixedEngine_Entry_C78C     ; 9BB7 20 8C C7                  ..
        pla                                     ; 9BBA 68                       h
        and     #$0F                            ; 9BBB 29 0F                    ).
        eor     $01                             ; 9BBD 45 01                    E.
        tax                                     ; 9BBF AA                       .
        lda     $9BF5,x                         ; 9BC0 BD F5 9B                 ...
        clc                                     ; 9BC3 18                       .
        adc     $0200,y                         ; 9BC4 79 00 02                 y..
        sta     $0200,y                         ; 9BC7 99 00 02                 ...
        pla                                     ; 9BCA 68                       h
        lsr     a                               ; 9BCB 4A                       J
        lsr     a                               ; 9BCC 4A                       J
        lsr     a                               ; 9BCD 4A                       J
        lsr     a                               ; 9BCE 4A                       J
        eor     $00                           ; 9BCF 45 00                    E.
        tax                                     ; 9BD1 AA                       .
        lda     $9BF5,x                         ; 9BD2 BD F5 9B                 ...
        clc                                     ; 9BD5 18                       .
        adc     $0203,y                         ; 9BD6 79 03 02                 y..
        sta     $0203,y                         ; 9BD9 99 03 02                 ...
        rts                                     ; 9BDC 60                       `
; ----------------------------------------------------------------------------
        db   $00,$67,$57,$57,$47,$17,$17,$27 ; 9BDD 00 67 57 57 47 17 17 27  .gWWG..'
        db   $26,$24,$21,$11,$13,$00,$27,$27 ; 9BE5 26 24 21 11 13 00 27 27  &$!...''
        db   $37,$36,$35,$24,$21,$22,$23,$00 ; 9BED 37 36 35 24 21 22 23 00  765$!"#.
        db   $00,$01,$02,$04,$00,$FF,$FE,$FC ; 9BF5 00 01 02 04 00 FF FE FC  ........
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9BFD:
        brk                                     ; 9BFD 00                       .
        db   $62,$23,$08                     ; 9BFE 62 23 08                 b#.
; ----------------------------------------------------------------------------
        sta     $6E3C                           ; 9C01 8D 3C 6E                 .<n
        lda     #$00                            ; 9C04 A9 00                    ..
        sta     $6E                             ; 9C06 85 6E                    .n
BattleSetupServices_Branch_9C08:
        brk                                     ; 9C08 00                       .
        db   $2B,$23,$08                     ; 9C09 2B 23 08                 +#.
; ----------------------------------------------------------------------------
        sta     $09                             ; 9C0C 85 09                    ..
        bne     BattleSetupServices_Branch_9C17 ; 9C0E D0 07                    ..
        bit     SaveGameStateFlags              ; 9C10 2C 8E 61                 ,.a
        bvc     BattleSetupServices_Branch_9C17 ; 9C13 50 02                    P.
        lda     #$08                            ; 9C15 A9 08                    ..
BattleSetupServices_Branch_9C17:
        jsr     BattleSetupServices_Entry_9D41  ; 9C17 20 41 9D                  A.
        inc     $6E                             ; 9C1A E6 6E                    .n
        dec     $6E3C                           ; 9C1C CE 3C 6E                 .<n
        bne     BattleSetupServices_Branch_9C08 ; 9C1F D0 E7                    ..
        rts                                     ; 9C21 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9C22:
        brk                                     ; 9C22 00                       .
        db   $0F,$43,$08                     ; 9C23 0F 43 08                 .C.
; ----------------------------------------------------------------------------
        cmp     #$63                            ; 9C26 C9 63                    .c
        beq     BattleSetupServices_Branch_9C4F ; 9C28 F0 25                    .%
        brk                                     ; 9C2A 00                       .
        db   $2B,$23,$08                     ; 9C2B 2B 23 08                 +#.
; ----------------------------------------------------------------------------
        sta     $00                           ; 9C2E 85 00                    ..
        asl     a                               ; 9C30 0A                       .
        adc     $00                           ; 9C31 65 00                    e.
        tay                                     ; 9C33 A8                       .
        brk                                     ; 9C34 00                       .
        db   $25,$43,$08                     ; 9C35 25 43 08                 %C.
; ----------------------------------------------------------------------------
        lda     $6E19,y                         ; 9C38 B9 19 6E                 ..n
        sec                                     ; 9C3B 38                       8
        sbc     $72                             ; 9C3C E5 72                    .r
        sta     $00                           ; 9C3E 85 00                    ..
        lda     $6E1A,y                         ; 9C40 B9 1A 6E                 ..n
        sbc     $73                             ; 9C43 E5 73                    .s
        sta     $01                             ; 9C45 85 01                    ..
        lda     $6E1B,y                         ; 9C47 B9 1B 6E                 ..n
        sbc     $74                             ; 9C4A E5 74                    .t
        sta     $02                           ; 9C4C 85 02                    ..
        clc                                     ; 9C4E 18                       .
BattleSetupServices_Branch_9C4F:
        rts                                     ; 9C4F 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9C50:
        brk                                     ; 9C50 00                       .
        db   $62,$23,$08                     ; 9C51 62 23 08                 b#.
; ----------------------------------------------------------------------------
        beq     BattleSetupServices_Branch_9C71 ; 9C54 F0 1B                    ..
        sta     $6E3C                           ; 9C56 8D 3C 6E                 .<n
        lda     #$00                            ; 9C59 A9 00                    ..
        sta     $6E                             ; 9C5B 85 6E                    .n
BattleSetupServices_Branch_9C5D:
        brk                                     ; 9C5D 00                       .
        db   $0F,$23,$08                     ; 9C5E 0F 23 08                 .#.
; ----------------------------------------------------------------------------
        cmp     #$63                            ; 9C61 C9 63                    .c
        beq     BattleSetupServices_Branch_9C6A ; 9C63 F0 05                    ..
        sta     $0A                             ; 9C65 85 0A                    ..
        jsr     BattleSetupServices_Entry_9D29  ; 9C67 20 29 9D                  ).
BattleSetupServices_Branch_9C6A:
        inc     $6E                             ; 9C6A E6 6E                    .n
        dec     $6E3C                           ; 9C6C CE 3C 6E                 .<n
        bne     BattleSetupServices_Branch_9C5D ; 9C6F D0 EC                    ..
BattleSetupServices_Branch_9C71:
        rts                                     ; 9C71 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9C72:
        lda     #$00                            ; 9C72 A9 00                    ..
        sta     $6E03                           ; 9C74 8D 03 6E                 ..n
        lda     $6BDE                           ; 9C77 AD DE 6B                 ..k
        bpl     BattleSetupServices_Branch_9C7F ; 9C7A 10 03                    ..
        jsr     BattleSetupServices_Entry_9D29  ; 9C7C 20 29 9D                  ).
BattleSetupServices_Branch_9C7F:
        brk                                     ; 9C7F 00                       .
        db   $62,$23,$09                     ; 9C80 62 23 09                 b#.
; ----------------------------------------------------------------------------
        beq     BattleSetupServices_Branch_9CC8 ; 9C83 F0 43                    .C
        sta     $6E3C                           ; 9C85 8D 3C 6E                 .<n
        lda     #$00                            ; 9C88 A9 00                    ..
        sta     $6E                             ; 9C8A 85 6E                    .n
BattleSetupServices_Branch_9C8C:
        brk                                     ; 9C8C 00                       .
        db   $0F,$23,$09                     ; 9C8D 0F 23 09                 .#.
; ----------------------------------------------------------------------------
        cmp     #$63                            ; 9C90 C9 63                    .c
        beq     BattleSetupServices_Branch_9CC1 ; 9C92 F0 2D                    .-
        sta     $0A                             ; 9C94 85 0A                    ..
        inc     $0A                             ; 9C96 E6 0A                    ..
        brk                                     ; 9C98 00                       .
        db   $2B,$23,$09                     ; 9C99 2B 23 09                 +#.
; ----------------------------------------------------------------------------
        sta     $09                             ; 9C9C 85 09                    ..
        brk                                     ; 9C9E 00                       .
        db   $25,$23,$09                     ; 9C9F 25 23 09                 %#.
; ----------------------------------------------------------------------------
        lda     $09                             ; 9CA2 A5 09                    ..
        asl     a                               ; 9CA4 0A                       .
        adc     $09                             ; 9CA5 65 09                    e.
        tax                                     ; 9CA7 AA                       .
        lda     $74                             ; 9CA8 A5 74                    .t
        cmp     $6E1B,x                         ; 9CAA DD 1B 6E                 ..n
        bcc     BattleSetupServices_Branch_9CC1 ; 9CAD 90 12                    ..
        bne     BattleSetupServices_Entry_9CE5  ; 9CAF D0 34                    .4
        lda     $73                             ; 9CB1 A5 73                    .s
        cmp     $6E1A,x                         ; 9CB3 DD 1A 6E                 ..n
        bcc     BattleSetupServices_Branch_9CC1 ; 9CB6 90 09                    ..
        bne     BattleSetupServices_Entry_9CE5  ; 9CB8 D0 2B                    .+
        lda     $72                             ; 9CBA A5 72                    .r
        cmp     $6E19,x                         ; 9CBC DD 19 6E                 ..n
        bcs     BattleSetupServices_Entry_9CE5  ; 9CBF B0 24                    .$
BattleSetupServices_Branch_9CC1:
        inc     $6E                             ; 9CC1 E6 6E                    .n
        dec     $6E3C                           ; 9CC3 CE 3C 6E                 .<n
        bne     BattleSetupServices_Branch_9C8C ; 9CC6 D0 C4                    ..
BattleSetupServices_Branch_9CC8:
        brk                                     ; 9CC8 00                       .
        db   $64,$33                         ; 9CC9 64 33                    d3
; ----------------------------------------------------------------------------
        lda     $75                             ; 9CCB A5 75                    .u
        sta     $62D5                           ; 9CCD 8D D5 62                 ..b
        lda     $6BDE                           ; 9CD0 AD DE 6B                 ..k
        bmi     BattleSetupServices_Branch_9CE3 ; 9CD3 30 0E                    0.
        jsr     UpperFixedEngine_Entry_C8E1     ; 9CD5 20 E1 C8                  ..
        lda     $6E03                           ; 9CD8 AD 03 6E                 ..n
        beq     BattleSetupServices_Branch_9CE3 ; 9CDB F0 06                    ..
        brk                                     ; 9CDD 00                       .
        db   $07,$6F,$FF                     ; 9CDE 07 6F FF                 .o.
; ----------------------------------------------------------------------------
        sec                                     ; 9CE1 38                       8
        rts                                     ; 9CE2 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9CE3:
        clc                                     ; 9CE3 18                       .
        rts                                     ; 9CE4 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9CE5:
        lda     $6BDE                           ; 9CE5 AD DE 6B                 ..k
        bmi     BattleSetupServices_Branch_9D0B ; 9CE8 30 21                    0!
        lda     $6E03                           ; 9CEA AD 03 6E                 ..n
        bne     BattleSetupServices_Branch_9D0B ; 9CED D0 1C                    ..
        lda     $6E                             ; 9CEF A5 6E                    .n
        pha                                     ; 9CF1 48                       H
        lda     $6F                             ; 9CF2 A5 6F                    .o
        pha                                     ; 9CF4 48                       H
        lda     $0A                             ; 9CF5 A5 0A                    ..
        pha                                     ; 9CF7 48                       H
        lda     $09                             ; 9CF8 A5 09                    ..
        pha                                     ; 9CFA 48                       H
        brk                                     ; 9CFB 00                       .
        db   $07,$6F,$43                     ; 9CFC 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        pla                                     ; 9CFF 68                       h
        sta     $09                             ; 9D00 85 09                    ..
        pla                                     ; 9D02 68                       h
        sta     $0A                             ; 9D03 85 0A                    ..
        pla                                     ; 9D05 68                       h
        sta     $6F                             ; 9D06 85 6F                    .o
        pla                                     ; 9D08 68                       h
        sta     $6E                             ; 9D09 85 6E                    .n
BattleSetupServices_Branch_9D0B:
        brk                                     ; 9D0B 00                       .
        db   $2B,$23,$09                     ; 9D0C 2B 23 09                 +#.
; ----------------------------------------------------------------------------
        sta     $09                             ; 9D0F 85 09                    ..
        brk                                     ; 9D11 00                       .
        db   $6C,$23,$09                     ; 9D12 6C 23 09                 l#.
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_9D6D  ; 9D15 20 6D 9D                  m.
        ldy     $6E0C                           ; 9D18 AC 0C 6E                 ..n
        lda     SavePartyCharacter1,y           ; 9D1B B9 6A 61                 .ja
        and     #$7F                            ; 9D1E 29 7F                    ).
        jsr     BattleSetupServices_Entry_9D41  ; 9D20 20 41 9D                  A.
        inc     $6E03                           ; 9D23 EE 03 6E                 ..n
        jmp     BattleSetupServices_Branch_9C8C ; 9D26 4C 8C 9C                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9D29:
        ldx     #$07                            ; 9D29 A2 07                    ..
BattleSetupServices_Branch_9D2B:
        txa                                     ; 9D2B 8A                       .
        pha                                     ; 9D2C 48                       H
        sta     $09                             ; 9D2D 85 09                    ..
        bne     BattleSetupServices_Branch_9D38 ; 9D2F D0 07                    ..
        bit     SaveGameStateFlags              ; 9D31 2C 8E 61                 ,.a
        bvc     BattleSetupServices_Branch_9D38 ; 9D34 50 02                    P.
        lda     #$08                            ; 9D36 A9 08                    ..
BattleSetupServices_Branch_9D38:
        jsr     BattleSetupServices_Entry_9D41  ; 9D38 20 41 9D                  A.
        pla                                     ; 9D3B 68                       h
        tax                                     ; 9D3C AA                       .
        dex                                     ; 9D3D CA                       .
        bpl     BattleSetupServices_Branch_9D2B ; 9D3E 10 EB                    ..
        rts                                     ; 9D40 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9D41:
        brk                                     ; 9D41 00                       .
        db   $11,$3F                         ; 9D42 11 3F                    .?
; ----------------------------------------------------------------------------
        ldy     #$05                            ; 9D44 A0 05                    ..
        lda     ($79),y                         ; 9D46 B1 79                    .y
        cmp     #$63                            ; 9D48 C9 63                    .c
        beq     BattleSetupServices_Branch_9D6C ; 9D4A F0 20                    .
        sta     $0A                             ; 9D4C 85 0A                    ..
        inc     $0A                             ; 9D4E E6 0A                    ..
        lda     #$00                            ; 9D50 A9 00                    ..
        sta     $0B                             ; 9D52 85 0B                    ..
        jsr     BattleSetupServices_Entry_9F7C  ; 9D54 20 7C 9F                  |.
        lda     $09                             ; 9D57 A5 09                    ..
        asl     a                               ; 9D59 0A                       .
        adc     $09                             ; 9D5A 65 09                    e.
        tax                                     ; 9D5C AA                       .
        lda     $00                           ; 9D5D A5 00                    ..
        sta     $6E19,x                         ; 9D5F 9D 19 6E                 ..n
        lda     $01                             ; 9D62 A5 01                    ..
        sta     $6E1A,x                         ; 9D64 9D 1A 6E                 ..n
        lda     $02                           ; 9D67 A5 02                    ..
        sta     $6E1B,x                         ; 9D69 9D 1B 6E                 ..n
BattleSetupServices_Branch_9D6C:
        rts                                     ; 9D6C 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9D6D:
        brk                                     ; 9D6D 00                       .
        db   $01,$FB                         ; 9D6E 01 FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9D70 00                       .
        db   $07,$9F                         ; 9D71 07 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9D73 00                       .
        db   $09,$9F                         ; 9D74 09 9F                    ..
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_9D7A  ; 9D76 20 7A 9D                  z.
        rts                                     ; 9D79 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9D7A:
        jsr     BattleSetupServices_Entry_9D83  ; 9D7A 20 83 9D                  ..
        jsr     BattleSetupServices_Entry_9DA6  ; 9D7D 20 A6 9D                  ..
        jmp     BattleSetupServices_Branch_9E76 ; 9D80 4C 76 9E                 Lv.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9D83:
        brk                                     ; 9D83 00                       .
        db   $2E,$0F                         ; 9D84 2E 0F                    ..
; ----------------------------------------------------------------------------
        lda     $72                             ; 9D86 A5 72                    .r
        sta     $F9                             ; 9D88 85 F9                    ..
        ldx     #$00                            ; 9D8A A2 00                    ..
        jsr     BattleSetupServices_Entry_9E40  ; 9D8C 20 40 9E                  @.
        lda     $09                             ; 9D8F A5 09                    ..
        pha                                     ; 9D91 48                       H
        lda     $0A                             ; 9D92 A5 0A                    ..
        pha                                     ; 9D94 48                       H
        lda     $6E                             ; 9D95 A5 6E                    .n
        pha                                     ; 9D97 48                       H
        brk                                     ; 9D98 00                       .
        db   $07,$6F,$2B                     ; 9D99 07 6F 2B                 .o+
; ----------------------------------------------------------------------------
        pla                                     ; 9D9C 68                       h
        sta     $6E                             ; 9D9D 85 6E                    .n
        pla                                     ; 9D9F 68                       h
        sta     $0A                             ; 9DA0 85 0A                    ..
        pla                                     ; 9DA2 68                       h
        sta     $09                             ; 9DA3 85 09                    ..
        rts                                     ; 9DA5 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9DA6:
        ldx     #$01                            ; 9DA6 A2 01                    ..
        stx     $6E3D                           ; 9DA8 8E 3D 6E                 .=n
        dex                                     ; 9DAB CA                       .
        stx     $6E3E                           ; 9DAC 8E 3E 6E                 .>n
BattleSetupServices_Branch_9DAF:
        lda     $6E3D                           ; 9DAF AD 3D 6E                 .=n
        cmp     #$07                            ; 9DB2 C9 07                    ..
        bne     BattleSetupServices_Branch_9DBC ; 9DB4 D0 06                    ..
        ldx     $09                             ; 9DB6 A6 09                    ..
        cpx     #$05                            ; 9DB8 E0 05                    ..
        bcs     BattleSetupServices_Branch_9E2F ; 9DBA B0 73                    .s
BattleSetupServices_Branch_9DBC:
        sta     $0B                             ; 9DBC 85 0B                    ..
        jsr     BattleSetupServices_Entry_9F7C  ; 9DBE 20 7C 9F                  |.
        lda     $6E3E                           ; 9DC1 AD 3E 6E                 .>n
        asl     a                               ; 9DC4 0A                       .
        tax                                     ; 9DC5 AA                       .
        lda     $9E68,x                         ; 9DC6 BD 68 9E                 .h.
        brk                                     ; 9DC9 00                       .
        db   $09,$03                         ; 9DCA 09 03                    ..
; ----------------------------------------------------------------------------
        lda     $0A                             ; 9DCC A5 0A                    ..
        lsr     a                               ; 9DCE 4A                       J
        clc                                     ; 9DCF 18                       .
        adc     #$0A                            ; 9DD0 69 0A                    i.
        adc     $00                           ; 9DD2 65 00                    e.
        sta     $00                           ; 9DD4 85 00                    ..
        bcc     BattleSetupServices_Branch_9DDA ; 9DD6 90 02                    ..
        inc     $01                             ; 9DD8 E6 01                    ..
BattleSetupServices_Branch_9DDA:
        lda     $73                             ; 9DDA A5 73                    .s
        cmp     $01                             ; 9DDC C5 01                    ..
        bcc     BattleSetupServices_Branch_9DEE ; 9DDE 90 0E                    ..
        lda     $72                             ; 9DE0 A5 72                    .r
        cmp     $00                           ; 9DE2 C5 00                    ..
        bcc     BattleSetupServices_Branch_9DEE ; 9DE4 90 08                    ..
        lda     #$02                            ; 9DE6 A9 02                    ..
        brk                                     ; 9DE8 00                       .
        db   $17,$0F                         ; 9DE9 17 0F                    ..
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_9E0A ; 9DEB 4C 0A 9E                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9DEE:
        lda     $0B                             ; 9DEE A5 0B                    ..
        cmp     #$06                            ; 9DF0 C9 06                    ..
        bne     BattleSetupServices_Branch_9DF9 ; 9DF2 D0 05                    ..
        lda     $6E09                           ; 9DF4 AD 09 6E                 ..n
        sta     $04                             ; 9DF7 85 04                    ..
BattleSetupServices_Branch_9DF9:
        brk                                     ; 9DF9 00                       .
        db   $1A,$0F                         ; 9DFA 1A 0F                    ..
; ----------------------------------------------------------------------------
        ldx     #$04                            ; 9DFC A2 04                    ..
        lda     $8A                             ; 9DFE A5 8A                    ..
        jsr     MultiplyPointerWord             ; 9E00 20 27 C8                  '.
        lda     #$79                            ; 9E03 A9 79                    .y
        jsr     UpperFixedEngine_Entry_C851     ; 9E05 20 51 C8                  Q.
        lda     $04                             ; 9E08 A5 04                    ..
BattleSetupServices_Branch_9E0A:
        ldx     $0B                             ; 9E0A A6 0B                    ..
        cpx     #$03                            ; 9E0C E0 03                    ..
        bne     BattleSetupServices_Branch_9E16 ; 9E0E D0 06                    ..
        tax                                     ; 9E10 AA                       .
        asl     a                               ; 9E11 0A                       .
        sta     $6E09                           ; 9E12 8D 09 6E                 ..n
        txa                                     ; 9E15 8A                       .
BattleSetupServices_Branch_9E16:
        pha                                     ; 9E16 48                       H
        pla                                     ; 9E17 68                       h
        sta     $6F                             ; 9E18 85 6F                    .o
        beq     BattleSetupServices_Branch_9E2F ; 9E1A F0 13                    ..
        sta     $FD                             ; 9E1C 85 FD                    ..
        lda     $6E3E                           ; 9E1E AD 3E 6E                 .>n
        asl     a                               ; 9E21 0A                       .
        tax                                     ; 9E22 AA                       .
        lda     $9E69,x                         ; 9E23 BD 69 9E                 .i.
        brk                                     ; 9E26 00                       .
        db   $09,$03                         ; 9E27 09 03                    ..
; ----------------------------------------------------------------------------
        ldx     $6E3D                           ; 9E29 AE 3D 6E                 .=n
        jsr     BattleSetupServices_Entry_9E40  ; 9E2C 20 40 9E                  @.
BattleSetupServices_Branch_9E2F:
        inc     $6E3D                           ; 9E2F EE 3D 6E                 .=n
        inc     $6E3E                           ; 9E32 EE 3E 6E                 .>n
        lda     $6E3E                           ; 9E35 AD 3E 6E                 .>n
        cmp     #$07                            ; 9E38 C9 07                    ..
        beq     BattleSetupServices_Branch_9E3F ; 9E3A F0 03                    ..
        jmp     BattleSetupServices_Branch_9DAF ; 9E3C 4C AF 9D                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9E3F:
        rts                                     ; 9E3F 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9E40:
        lda     $09                             ; 9E40 A5 09                    ..
        pha                                     ; 9E42 48                       H
        lda     $0A                             ; 9E43 A5 0A                    ..
        pha                                     ; 9E45 48                       H
        lda     $6E                             ; 9E46 A5 6E                    .n
        pha                                     ; 9E48 48                       H
        lda     $6F                             ; 9E49 A5 6F                    .o
        pha                                     ; 9E4B 48                       H
        lda     #$00                            ; 9E4C A9 00                    ..
        sta     $FE                             ; 9E4E 85 FE                    ..
        sta     $FF                             ; 9E50 85 FF                    ..
        txa                                     ; 9E52 8A                       .
        clc                                     ; 9E53 18                       .
        adc     #$D2                            ; 9E54 69 D2                    i.
        ldx     #$01                            ; 9E56 A2 01                    ..
        brk                                     ; 9E58 00                       .
        db   $04,$6F                         ; 9E59 04 6F                    .o
; ----------------------------------------------------------------------------
        pla                                     ; 9E5B 68                       h
        sta     $6F                             ; 9E5C 85 6F                    .o
        pla                                     ; 9E5E 68                       h
        sta     $6E                             ; 9E5F 85 6E                    .n
        pla                                     ; 9E61 68                       h
        sta     $0A                             ; 9E62 85 0A                    ..
        pla                                     ; 9E64 68                       h
        sta     $09                             ; 9E65 85 09                    ..
        rts                                     ; 9E67 60                       `
; ----------------------------------------------------------------------------
        db   $10                             ; 9E68 10                       .
        db   $11,$70,$13,$1F,$20,$21,$22,$23 ; 9E69 11 70 13 1F 20 21 22 23  .p.. !"#
        db   $24,$01,$03,$08,$0A             ; 9E71 24 01 03 08 0A           $....
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9E76:
        lda     $09                             ; 9E76 A5 09                    ..
        cmp     #$05                            ; 9E78 C9 05                    ..
        bcs     BattleSetupServices_Branch_9E85 ; 9E7A B0 09                    ..
        jsr     BattleSetupServices_Entry_9F4C  ; 9E7C 20 4C 9F                  L.
        jsr     BattleSetupServices_Entry_9F33  ; 9E7F 20 33 9F                  3.
        jsr     BattleSetupServices_Entry_9E86  ; 9E82 20 86 9E                  ..
BattleSetupServices_Branch_9E85:
        rts                                     ; 9E85 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9E86:
        lda     #$00                            ; 9E86 A9 00                    ..
        sta     $7B                             ; 9E88 85 7B                    .{
        sta     $8C                             ; 9E8A 85 8C                    ..
        sta     $8D                             ; 9E8C 85 8D                    ..
BattleSetupServices_Branch_9E8E:
        lda     #$00                            ; 9E8E A9 00                    ..
        sta     $8A                             ; 9E90 85 8A                    ..
        ldy     $8D                             ; 9E92 A4 8D                    ..
        lda     ($00),y                       ; 9E94 B1 00                    ..
        sta     $8B                             ; 9E96 85 8B                    ..
BattleSetupServices_Branch_9E98:
        lsr     $8B                             ; 9E98 46 8B                    F.
        bcc     BattleSetupServices_Branch_9EAF ; 9E9A 90 13                    ..
        lda     $8C                             ; 9E9C A5 8C                    ..
        sta     $70                             ; 9E9E 85 70                    .p
        lda     $09                             ; 9EA0 A5 09                    ..
        sta     $6F                             ; 9EA2 85 6F                    .o
        brk                                     ; 9EA4 00                       .
        db   $6D,$23,$09                     ; 9EA5 6D 23 09                 m#.
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_9EAD ; 9EA8 B0 03                    ..
        jsr     BattleSetupServices_Entry_9EC5  ; 9EAA 20 C5 9E                  ..
BattleSetupServices_Branch_9EAD:
        inc     $7B                             ; 9EAD E6 7B                    .{
BattleSetupServices_Branch_9EAF:
        inc     $8C                             ; 9EAF E6 8C                    ..
        lda     $8C                             ; 9EB1 A5 8C                    ..
        cmp     #$40                            ; 9EB3 C9 40                    .@
        beq     BattleSetupServices_Branch_9EC4 ; 9EB5 F0 0D                    ..
        inc     $8A                             ; 9EB7 E6 8A                    ..
        lda     $8A                             ; 9EB9 A5 8A                    ..
        cmp     #$08                            ; 9EBB C9 08                    ..
        bne     BattleSetupServices_Branch_9E98 ; 9EBD D0 D9                    ..
        inc     $8D                             ; 9EBF E6 8D                    ..
        jmp     BattleSetupServices_Branch_9E8E ; 9EC1 4C 8E 9E                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9EC4:
        rts                                     ; 9EC4 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9EC5:
        ldy     $7B                             ; 9EC5 A4 7B                    .{
        lda     ($02),y                       ; 9EC7 B1 02                    ..
        and     #$7F                            ; 9EC9 29 7F                    ).
        cmp     $0A                             ; 9ECB C5 0A                    ..
        beq     BattleSetupServices_Branch_9ED1 ; 9ECD F0 02                    ..
        bcs     BattleSetupServices_Branch_9EF2 ; 9ECF B0 21                    .!
BattleSetupServices_Branch_9ED1:
        lda     ($02),y                       ; 9ED1 B1 02                    ..
        bpl     BattleSetupServices_Branch_9EF9 ; 9ED3 10 24                    .$
        and     #$7F                            ; 9ED5 29 7F                    ).
        clc                                     ; 9ED7 18                       .
        adc     $6DFF                           ; 9ED8 6D FF 6D                 m.m
        cmp     $0A                             ; 9EDB C5 0A                    ..
        beq     BattleSetupServices_Branch_9EF9 ; 9EDD F0 1A                    ..
        bcc     BattleSetupServices_Branch_9EF9 ; 9EDF 90 18                    ..
        lda     ($02),y                       ; 9EE1 B1 02                    ..
        and     #$7F                            ; 9EE3 29 7F                    ).
        sec                                     ; 9EE5 38                       8
        sbc     #$01                            ; 9EE6 E9 01                    ..
        clc                                     ; 9EE8 18                       .
        adc     $6DFF                           ; 9EE9 6D FF 6D                 m.m
        cmp     $0A                             ; 9EEC C5 0A                    ..
        beq     BattleSetupServices_Branch_9EF3 ; 9EEE F0 03                    ..
        bcc     BattleSetupServices_Branch_9EF3 ; 9EF0 90 01                    ..
BattleSetupServices_Branch_9EF2:
        rts                                     ; 9EF2 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9EF3:
        jsr     UpperFixedEngine_Entry_C891     ; 9EF3 20 91 C8                  ..
        tay                                     ; 9EF6 A8                       .
        bmi     BattleSetupServices_Branch_9EF2 ; 9EF7 30 F9                    0.
BattleSetupServices_Branch_9EF9:
        lda     $8C                             ; 9EF9 A5 8C                    ..
        sta     $70                             ; 9EFB 85 70                    .p
        sta     $F9                             ; 9EFD 85 F9                    ..
        brk                                     ; 9EFF 00                       .
        db   $6E,$23,$09                     ; 9F00 6E 23 09                 n#.
; ----------------------------------------------------------------------------
        ldx     #$08                            ; 9F03 A2 08                    ..
        lda     $7B                             ; 9F05 A5 7B                    .{
        pha                                     ; 9F07 48                       H
        lda     $00                           ; 9F08 A5 00                    ..
        pha                                     ; 9F0A 48                       H
        lda     $01                             ; 9F0B A5 01                    ..
        pha                                     ; 9F0D 48                       H
        lda     $02                           ; 9F0E A5 02                    ..
        pha                                     ; 9F10 48                       H
        lda     $03                             ; 9F11 A5 03                    ..
        pha                                     ; 9F13 48                       H
        lda     $09                             ; 9F14 A5 09                    ..
        pha                                     ; 9F16 48                       H
        lda     $0A                             ; 9F17 A5 0A                    ..
        pha                                     ; 9F19 48                       H
        jsr     BattleSetupServices_Entry_9E40  ; 9F1A 20 40 9E                  @.
        pla                                     ; 9F1D 68                       h
        sta     $0A                             ; 9F1E 85 0A                    ..
        pla                                     ; 9F20 68                       h
        sta     $09                             ; 9F21 85 09                    ..
        pla                                     ; 9F23 68                       h
        sta     $03                             ; 9F24 85 03                    ..
        pla                                     ; 9F26 68                       h
        sta     $02                           ; 9F27 85 02                    ..
        pla                                     ; 9F29 68                       h
        sta     $01                             ; 9F2A 85 01                    ..
        pla                                     ; 9F2C 68                       h
        sta     $00                           ; 9F2D 85 00                    ..
        pla                                     ; 9F2F 68                       h
        sta     $7B                             ; 9F30 85 7B                    .{
        rts                                     ; 9F32 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9F33:
        lda     $09                             ; 9F33 A5 09                    ..
        asl     a                               ; 9F35 0A                       .
        tax                                     ; 9F36 AA                       .
        lda     $A10B,x                         ; 9F37 BD 0B A1                 ...
        sta     $00                           ; 9F3A 85 00                    ..
        lda     $A10C,x                         ; 9F3C BD 0C A1                 ...
        sta     $01                             ; 9F3F 85 01                    ..
        lda     $A117,x                         ; 9F41 BD 17 A1                 ...
        sta     $02                           ; 9F44 85 02                    ..
        lda     $A118,x                         ; 9F46 BD 18 A1                 ...
        sta     $03                             ; 9F49 85 03                    ..
        rts                                     ; 9F4B 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9F4C:
        lda     #$00                            ; 9F4C A9 00                    ..
        sta     $6DFF                           ; 9F4E 8D FF 6D                 ..m
        lda     #$04                            ; 9F51 A9 04                    ..
        sta     $0B                             ; 9F53 85 0B                    ..
        jsr     BattleSetupServices_Entry_9F7C  ; 9F55 20 7C 9F                  |.
        brk                                     ; 9F58 00                       .
        db   $21,$23,$09                     ; 9F59 21 23 09                 !#.
; ----------------------------------------------------------------------------
        lda     $00                           ; 9F5C A5 00                    ..
        cmp     $72                             ; 9F5E C5 72                    .r
        beq     BattleSetupServices_Branch_9F70 ; 9F60 F0 0E                    ..
        bcc     BattleSetupServices_Branch_9F74 ; 9F62 90 10                    ..
        lda     $72                             ; 9F64 A5 72                    .r
        clc                                     ; 9F66 18                       .
        adc     #$0F                            ; 9F67 69 0F                    i.
        cmp     $00                           ; 9F69 C5 00                    ..
        bcs     BattleSetupServices_Branch_9F70 ; 9F6B B0 03                    ..
        inc     $6DFF                           ; 9F6D EE FF 6D                 ..m
BattleSetupServices_Branch_9F70:
        inc     $6DFF                           ; 9F70 EE FF 6D                 ..m
        rts                                     ; 9F73 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9F74:
        clc                                     ; 9F74 18                       .
        adc     #$0A                            ; 9F75 69 0A                    i.
        cmp     $72                             ; 9F77 C5 72                    .r
        bcs     BattleSetupServices_Branch_9F70 ; 9F79 B0 F5                    ..
        rts                                     ; 9F7B 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9F7C:
        lda     $0B                             ; 9F7C A5 0B                    ..
        cmp     #$06                            ; 9F7E C9 06                    ..
        beq     BattleSetupServices_Branch_9F88 ; 9F80 F0 06                    ..
BattleSetupServices_Entry_9F82:
        jsr     BattleSetupServices_Entry_9F9C  ; 9F82 20 9C 9F                  ..
        jmp     BattleSetupServices_Branch_9FB9 ; 9F85 4C B9 9F                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9F88:
        pha                                     ; 9F88 48                       H
        lda     #$03                            ; 9F89 A9 03                    ..
        sta     $0B                             ; 9F8B 85 0B                    ..
        jsr     BattleSetupServices_Entry_9F82  ; 9F8D 20 82 9F                  ..
        asl     $00                           ; 9F90 06 00                    ..
        rol     $01                             ; 9F92 26 01                    &.
        asl     $04                             ; 9F94 06 04                    ..
        rol     $05                             ; 9F96 26 05                    &.
        pla                                     ; 9F98 68                       h
        sta     $0B                             ; 9F99 85 0B                    ..
        rts                                     ; 9F9B 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_9F9C:
        asl     a                               ; 9F9C 0A                       .
        tax                                     ; 9F9D AA                       .
        lda     $A0FB,x                         ; 9F9E BD FB A0                 ...
        sta     $0C                             ; 9FA1 85 0C                    ..
        lda     $A0FC,x                         ; 9FA3 BD FC A0                 ...
        sta     $0D                             ; 9FA6 85 0D                    ..
        lda     $09                             ; 9FA8 A5 09                    ..
        jsr     BattleSetupServices_Entry_A06E  ; 9FAA 20 6E A0                  n.
        clc                                     ; 9FAD 18                       .
        adc     $0C                             ; 9FAE 65 0C                    e.
        sta     $0C                             ; 9FB0 85 0C                    ..
        lda     #$00                            ; 9FB2 A9 00                    ..
        adc     $0D                             ; 9FB4 65 0D                    e.
        sta     $0D                             ; 9FB6 85 0D                    ..
        rts                                     ; 9FB8 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9FB9:
        jsr     BattleSetupServices_Entry_A038  ; 9FB9 20 38 A0                  8.
        lda     #$00                            ; 9FBC A9 00                    ..
        sta     $6E3B                           ; 9FBE 8D 3B 6E                 .;n
        sta     $0E                             ; 9FC1 85 0E                    ..
        inc     $0E                             ; 9FC3 E6 0E                    ..
        inc     $0E                             ; 9FC5 E6 0E                    ..
        tax                                     ; 9FC7 AA                       .
BattleSetupServices_Branch_9FC8:
        sta     $00,x                         ; 9FC8 95 00                    ..
        inx                                     ; 9FCA E8                       .
        cpx     #$08                            ; 9FCB E0 08                    ..
        bne     BattleSetupServices_Branch_9FC8 ; 9FCD D0 F9                    ..
        lda     $7B                             ; 9FCF A5 7B                    .{
        sta     $00                           ; 9FD1 85 00                    ..
        sta     $04                             ; 9FD3 85 04                    ..
        lda     $0B                             ; 9FD5 A5 0B                    ..
        beq     BattleSetupServices_Branch_9FE1 ; 9FD7 F0 08                    ..
        lda     $6E39                           ; 9FD9 AD 39 6E                 .9n
        sta     $04                             ; 9FDC 85 04                    ..
        jmp     BattleSetupServices_Branch_9FE9 ; 9FDE 4C E9 9F                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_9FE1:
        lda     $0A                             ; 9FE1 A5 0A                    ..
        cmp     #$02                            ; 9FE3 C9 02                    ..
        beq     BattleSetupServices_Branch_A037 ; 9FE5 F0 50                    .P
        inc     $0E                             ; 9FE7 E6 0E                    ..
BattleSetupServices_Branch_9FE9:
        lda     $0B                             ; 9FE9 A5 0B                    ..
        beq     BattleSetupServices_Branch_9FFA ; 9FEB F0 0D                    ..
        lda     $6E39                           ; 9FED AD 39 6E                 .9n
        sta     $04                             ; 9FF0 85 04                    ..
        lda     #$00                            ; 9FF2 A9 00                    ..
        sta     $05                             ; 9FF4 85 05                    ..
        sta     $06                             ; 9FF6 85 06                    ..
        sta     $07                             ; 9FF8 85 07                    ..
BattleSetupServices_Branch_9FFA:
        ldy     $6E3B                           ; 9FFA AC 3B 6E                 .;n
        lda     ($0C),y                         ; 9FFD B1 0C                    ..
        ldx     $6E3B                           ; 9FFF AE 3B 6E                 .;n
        bne     BattleSetupServices_Branch_A006 ; A002 D0 02                    ..
        and     #$1F                            ; A004 29 1F                    ).
BattleSetupServices_Branch_A006:
        and     #$7F                            ; A006 29 7F                    ).
        cmp     $0E                             ; A008 C5 0E                    ..
        bcs     BattleSetupServices_Branch_A01C ; A00A B0 10                    ..
        lda     $6E3B                           ; A00C AD 3B 6E                 .;n
        cmp     #$05                            ; A00F C9 05                    ..
        beq     BattleSetupServices_Branch_A01C ; A011 F0 09                    ..
        inc     $6E3A                           ; A013 EE 3A 6E                 .:n
        inc     $6E3B                           ; A016 EE 3B 6E                 .;n
        jmp     BattleSetupServices_Branch_9FFA ; A019 4C FA 9F                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A01C:
        ldx     $6E3A                           ; A01C AE 3A 6E                 .:n
        lda     $A259,x                         ; A01F BD 59 A2                 .Y.
        ldx     #$04                            ; A022 A2 04                    ..
        jsr     BattleSetupServices_Entry_A07D  ; A024 20 7D A0                  }.
        ldy     #$00                            ; A027 A0 00                    ..
        jsr     BattleSetupServices_Entry_A0DF  ; A029 20 DF A0                  ..
        lda     $0E                             ; A02C A5 0E                    ..
        cmp     $0A                             ; A02E C5 0A                    ..
        beq     BattleSetupServices_Branch_A037 ; A030 F0 05                    ..
        inc     $0E                             ; A032 E6 0E                    ..
        jmp     BattleSetupServices_Branch_9FE9 ; A034 4C E9 9F                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A037:
        rts                                     ; A037 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A038:
        ldy     #$00                            ; A038 A0 00                    ..
        lda     ($0C),y                         ; A03A B1 0C                    ..
        pha                                     ; A03C 48                       H
BattleSetupServices_Branch_A03D:
        lda     ($0C),y                         ; A03D B1 0C                    ..
        asl     a                               ; A03F 0A                       .
        ror     $7B                             ; A040 66 7B                    f{
        iny                                     ; A042 C8                       .
        cpy     #$05                            ; A043 C0 05                    ..
        bne     BattleSetupServices_Branch_A03D ; A045 D0 F6                    ..
        lsr     $7B                             ; A047 46 7B                    F{
        lsr     $7B                             ; A049 46 7B                    F{
        lsr     $7B                             ; A04B 46 7B                    F{
        lda     $0B                             ; A04D A5 0B                    ..
        beq     BattleSetupServices_Branch_A056 ; A04F F0 05                    ..
        lda     ($0C),y                         ; A051 B1 0C                    ..
        sta     $6E39                           ; A053 8D 39 6E                 .9n
BattleSetupServices_Branch_A056:
        pla                                     ; A056 68                       h
        and     #$60                            ; A057 29 60                    )`
        lsr     a                               ; A059 4A                       J
        lsr     a                               ; A05A 4A                       J
        lsr     a                               ; A05B 4A                       J
        sta     $6E3A                           ; A05C 8D 3A 6E                 .:n
        lsr     a                               ; A05F 4A                       J
        adc     $6E3A                           ; A060 6D 3A 6E                 m:n
        ldx     $0B                             ; A063 A6 0B                    ..
        beq     BattleSetupServices_Branch_A06A ; A065 F0 03                    ..
        clc                                     ; A067 18                       .
        adc     #$18                            ; A068 69 18                    i.
BattleSetupServices_Branch_A06A:
        sta     $6E3A                           ; A06A 8D 3A 6E                 .:n
        rts                                     ; A06D 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A06E:
        sta     $0F                             ; A06E 85 0F                    ..
        asl     a                               ; A070 0A                       .
        asl     a                               ; A071 0A                       .
        clc                                     ; A072 18                       .
        adc     $0F                             ; A073 65 0F                    e.
        ldx     $0B                             ; A075 A6 0B                    ..
        beq     BattleSetupServices_Branch_A07C ; A077 F0 03                    ..
        clc                                     ; A079 18                       .
        adc     $0F                             ; A07A 65 0F                    e.
BattleSetupServices_Branch_A07C:
        rts                                     ; A07C 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A07D:
        sta     $0F                             ; A07D 85 0F                    ..
        lda     #$00                            ; A07F A9 00                    ..
        sta     $8A                             ; A081 85 8A                    ..
        sta     $8B                             ; A083 85 8B                    ..
        sta     $8C                             ; A085 85 8C                    ..
        sta     $8D                             ; A087 85 8D                    ..
BattleSetupServices_Branch_A089:
        lsr     $0F                             ; A089 46 0F                    F.
        bcc     BattleSetupServices_Branch_A0A4 ; A08B 90 17                    ..
        lda     $00,x                         ; A08D B5 00                    ..
        clc                                     ; A08F 18                       .
        adc     $8A                             ; A090 65 8A                    e.
        sta     $8A                             ; A092 85 8A                    ..
        lda     $01,x                           ; A094 B5 01                    ..
        adc     $8B                             ; A096 65 8B                    e.
        sta     $8B                             ; A098 85 8B                    ..
        lda     $02,x                         ; A09A B5 02                    ..
        adc     $8C                             ; A09C 65 8C                    e.
        sta     $8C                             ; A09E 85 8C                    ..
        bcc     BattleSetupServices_Branch_A0A4 ; A0A0 90 02                    ..
        inc     $8D                             ; A0A2 E6 8D                    ..
BattleSetupServices_Branch_A0A4:
        asl     $00,x                         ; A0A4 16 00                    ..
        rol     $01,x                           ; A0A6 36 01                    6.
        rol     $02,x                         ; A0A8 36 02                    6.
        lda     $0F                             ; A0AA A5 0F                    ..
        bne     BattleSetupServices_Branch_A089 ; A0AC D0 DB                    ..
        lda     $0B                             ; A0AE A5 0B                    ..
        beq     BattleSetupServices_Branch_A0C5 ; A0B0 F0 13                    ..
        clc                                     ; A0B2 18                       .
        lda     #$08                            ; A0B3 A9 08                    ..
        adc     $8A                             ; A0B5 65 8A                    e.
        sta     $8A                             ; A0B7 85 8A                    ..
        bcc     BattleSetupServices_Branch_A0C5 ; A0B9 90 0A                    ..
        inc     $8B                             ; A0BB E6 8B                    ..
        bne     BattleSetupServices_Branch_A0C5 ; A0BD D0 06                    ..
        inc     $8C                             ; A0BF E6 8C                    ..
        bne     BattleSetupServices_Branch_A0C5 ; A0C1 D0 02                    ..
        inc     $8D                             ; A0C3 E6 8D                    ..
BattleSetupServices_Branch_A0C5:
        ldy     #$04                            ; A0C5 A0 04                    ..
BattleSetupServices_Branch_A0C7:
        lsr     $8D                             ; A0C7 46 8D                    F.
        ror     $8C                             ; A0C9 66 8C                    f.
        ror     $8B                             ; A0CB 66 8B                    f.
        ror     $8A                             ; A0CD 66 8A                    f.
        dey                                     ; A0CF 88                       .
        bne     BattleSetupServices_Branch_A0C7 ; A0D0 D0 F5                    ..
        lda     $8A                             ; A0D2 A5 8A                    ..
        sta     $00,x                         ; A0D4 95 00                    ..
        lda     $8B                             ; A0D6 A5 8B                    ..
        sta     $01,x                           ; A0D8 95 01                    ..
        lda     $8C                             ; A0DA A5 8C                    ..
        sta     $02,x                         ; A0DC 95 02                    ..
        rts                                     ; A0DE 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A0DF:
        pha                                     ; A0DF 48                       H
        lda     $0000,y                         ; A0E0 B9 00 00                 ...
        clc                                     ; A0E3 18                       .
        adc     $00,x                         ; A0E4 75 00                    u.
        sta     $0000,y                         ; A0E6 99 00 00                 ...
        lda     $01,y                           ; A0E9 B9 01 00                 ...
        adc     $01,x                           ; A0EC 75 01                    u.
        sta     $01,y                           ; A0EE 99 01 00                 ...
        lda     $0002,y                         ; A0F1 B9 02 00                 ...
        adc     $02,x                         ; A0F4 75 02                    u.
        sta     $0002,y                         ; A0F6 99 02 00                 ...
        pla                                     ; A0F9 68                       h
        rts                                     ; A0FA 60                       `
; ----------------------------------------------------------------------------
        db   $23                             ; A0FB 23                       #
        db   $A1,$4B,$A1,$7B,$A1,$AB,$A1,$DB ; A0FC A1 4B A1 7B A1 AB A1 DB  .K.{....
        db   $A1,$0B,$A2,$AB,$A1,$3B,$A2     ; A104 A1 0B A2 AB A1 3B A2     .....;.
        db   $91                             ; A10B 91                       .
        db   $A2,$C1,$A2,$AD,$A2,$D6,$A2,$ED ; A10C A2 C1 A2 AD A2 D6 A2 ED  ........
        db   $A2,$04,$A3                     ; A114 A2 04 A3                 ...
        db   $99                             ; A117 99                       .
        db   $A2,$C9,$A2,$B5,$A2,$DE,$A2,$F5 ; A118 A2 C9 A2 B5 A2 DE A2 F5  ........
        db   $A2,$04,$A3,$85,$8B,$0F,$2B,$E3 ; A120 A2 04 A3 85 8B 0F 2B E3  ......+.
        db   $24,$8C,$11,$2C,$E3,$04,$0C,$92 ; A128 24 8C 11 2C E3 04 0C 92  $..,....
        db   $2B,$E3,$84,$8C,$91,$AD,$63,$A4 ; A130 2B E3 84 8C 91 AD 63 A4  +.....c.
        db   $8C,$11,$2D,$E3,$04,$8C,$13,$AC ; A138 8C 11 2D E3 04 8C 13 AC  ..-.....
        db   $63,$04,$0C,$94,$AA,$63,$24,$0C ; A140 63 04 0C 94 AA 63 24 0C  c....c$.
        db   $11,$2C,$E3,$80,$93,$BC,$63,$63 ; A148 11 2C E3 80 93 BC 63 63  .,....cc
        db   $03,$A0,$93,$3C,$63,$63,$02,$00 ; A150 03 A0 93 3C 63 63 02 00  ...<cc..
        db   $26,$B2,$34,$63,$02,$85,$AD,$32 ; A158 26 B2 34 63 02 85 AD 32  &.4c...2
        db   $63,$63,$01,$A5,$AD,$32,$63,$63 ; A160 63 63 01 A5 AD 32 63 63  cc...2cc
        db   $01,$07,$1E,$9E,$1E,$63,$03,$80 ; A168 01 07 1E 9E 1E 63 03 80  .....c..
        db   $8A,$99,$29,$63,$03,$07,$0F,$E3 ; A170 8A 99 29 63 03 07 0F E3  ..)c....
        db   $E3,$63,$04,$83,$23,$AF,$2F,$63 ; A178 E3 63 04 83 23 AF 2F 63  .c..#./c
        db   $02,$84,$0F,$9E,$63,$63,$02,$20 ; A180 02 84 0F 9E 63 63 02 20  ....cc.
        db   $1C,$B2,$38,$63,$02,$8F,$1F,$9F ; A188 1C B2 38 63 02 8F 1F 9F  ..8c....
        db   $32,$63,$03,$8A,$1F,$9F,$32,$63 ; A190 32 63 03 8A 1F 9F 32 63  2c....2c
        db   $03,$80,$3C,$BC,$3C,$63,$02,$00 ; A198 03 80 3C BC 3C 63 02 00  ..<.<c..
        db   $63,$E3,$63,$63,$01,$8A,$90,$99 ; A1A0 63 E3 63 63 01 8A 90 99  c.cc....
        db   $2D,$63,$04,$06,$25,$AD,$AD,$63 ; A1A8 2D 63 04 06 25 AD AD 63  -c..%..c
        db   $04,$82,$0A,$19,$AD,$63,$02,$80 ; A1B0 04 82 0A 19 AD 63 02 80  .....c..
        db   $2F,$37,$B7,$63,$02,$04,$0A,$B2 ; A1B8 2F 37 B7 63 02 04 0A B2  /7.c....
        db   $B7,$63,$02,$84,$8A,$B2,$37,$63 ; A1C0 B7 63 02 84 8A B2 37 63  .c....7c
        db   $02,$00,$A5,$4B,$E3,$63,$03,$85 ; A1C8 02 00 A5 4B E3 63 03 85  ...K.c..
        db   $0F,$9D,$A8,$63,$04,$03,$0C,$32 ; A1D0 0F 9D A8 63 04 03 0C 32  ...c...2
        db   $B2,$63,$03,$0F,$B2,$B2,$32,$63 ; A1D8 B2 63 03 0F B2 B2 32 63  .c....2c
        db   $02,$80,$B2,$C6,$63,$63,$02,$00 ; A1E0 02 80 B2 C6 63 63 02 00  ....cc..
        db   $99,$E3,$63,$63,$02,$08,$14,$98 ; A1E8 99 E3 63 63 02 08 14 98  ..cc....
        db   $19,$63,$04,$08,$14,$18,$99,$63 ; A1F0 19 63 04 08 14 18 99 63  .c.....c
        db   $04,$80,$0E,$8E,$50,$63,$01,$A5 ; A1F8 04 80 0E 8E 50 63 01 A5  ....Pc..
        db   $23,$63,$63,$63,$01,$23,$46,$C6 ; A200 23 63 63 63 01 23 46 C6  #ccc.#F.
        db   $46,$63,$01,$2B,$32,$E3,$63,$63 ; A208 46 63 01 2B 32 E3 63 63  Fc.+2.cc
        db   $03,$04,$A1,$2F,$2F,$63,$03,$20 ; A210 03 04 A1 2F 2F 63 03 20  ...//c.
        db   $A8,$E3,$63,$63,$03,$03,$8C,$B1 ; A218 A8 E3 63 63 03 03 8C B1  ..cc....
        db   $63,$63,$03,$03,$8C,$31,$63,$63 ; A220 63 63 03 03 8C 31 63 63  cc...1cc
        db   $03,$96,$B2,$3C,$3C,$63,$02,$00 ; A228 03 96 B2 3C 3C 63 02 00  ...<<c..
        db   $9E,$63,$63,$63,$01,$85,$0A,$28 ; A230 9E 63 63 63 01 85 0A 28  .ccc...(
        db   $32,$63,$03,$C0,$0F,$B3,$63,$63 ; A238 32 63 03 C0 0F B3 63 63  2c....cc
        db   $03,$C0,$B2,$80,$63,$63,$04,$E0 ; A240 03 C0 B2 80 63 63 04 E0  ....cc..
        db   $B2,$80,$63,$63,$04,$E0,$13,$63 ; A248 B2 80 63 63 04 E0 13 63  ..cc...c
        db   $E3,$63,$04,$40,$88,$0A,$E3,$63 ; A250 E3 63 04 40 88 0A E3 63  .c.@...c
        db   $05                             ; A258 05                       .
        db   $20,$18,$14,$12,$10,$10,$1E,$18 ; A259 20 18 14 12 10 10 1E 18   .......
        db   $14,$12,$10,$10,$00,$00,$00,$00 ; A261 14 12 10 10 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; A269 00 00 00 00 00 00 00 00  ........
        db   $08,$10,$18,$20,$08,$08,$00,$10 ; A271 08 10 18 20 08 08 00 10  ... ....
        db   $08,$10,$20,$20,$10,$10,$20,$10 ; A279 08 10 20 20 10 10 20 10  ..  .. .
        db   $00,$00,$10,$10,$20,$08,$00,$00 ; A281 00 00 10 10 20 08 00 00  .... ...
        db   $19,$12,$12,$10,$10,$14,$1B,$10 ; A289 19 12 12 10 10 14 1B 10  ........
        db   $89,$00,$47,$21,$C0,$AC,$39,$08 ; A291 89 00 47 21 C0 AC 39 08  ..G!..9.
        db   $03,$89,$17,$19,$22,$A5,$01,$0F ; A299 03 89 17 19 22 A5 01 0F  ...."...
        db   $93,$15,$9E,$05,$1B,$A0,$11,$1C ; A2A1 93 15 9E 05 1B A0 11 1C  ........
        db   $07,$A7,$8D,$8B,$00,$E0,$80,$01 ; A2A9 07 A7 8D 8B 00 E0 80 01  ........
        db   $10,$4E                         ; A2B1 10 4E                    .N
; ----------------------------------------------------------------------------
        ora     $00                           ; A2B3 05 00                    ..
        php                                     ; A2B5 08                       .
        db   $17,$A0,$05,$10,$1D,$01,$0D,$1A ; A2B6 17 A0 05 10 1D 01 0D 1A  ........
        db   $0A,$14,$A3,$00,$00,$18,$06,$06 ; A2BE 0A 14 A3 00 00 18 06 06  ........
        db   $1E,$03,$04,$92,$98,$0C,$86,$04 ; A2C6 1E 03 04 92 98 0C 86 04  ........
        db   $8E,$01,$10,$1B,$9E,$15,$A1,$08 ; A2CE 8E 01 10 1B 9E 15 A1 08  ........
        db   $FF,$01,$00,$90,$00,$01,$A8,$00 ; A2D6 FF 01 00 90 00 01 A8 00  ........
        db   $01,$13,$A1,$07,$0E,$9B,$0B,$97 ; A2DE 01 13 A1 07 0E 9B 0B 97  ........
        db   $A4,$90,$03,$9E,$08,$89,$15,$00 ; A2E6 A4 90 03 9E 08 89 15 00  ........
        db   $1E,$00,$D8,$29,$00,$68,$01,$01 ; A2EE 1E 00 D8 29 00 68 01 01  ...).h..
        db   $0B,$9B,$20,$9E,$99,$88,$03,$95 ; A2F6 0B 9B 20 9E 99 88 03 95  .. .....
        db   $8E,$13,$09,$87,$97,$91         ; A2FE 8E 13 09 87 97 91        ......
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A304:
        lda     $1F                             ; A304 A5 1F                    ..
        ora     #$08                            ; A306 09 08                    ..
        sta     $1F                             ; A308 85 1F                    ..
        jsr     BattleSetupServices_Entry_A475  ; A30A 20 75 A4                  u.
        brk                                     ; A30D 00                       .
        db   $92,$FB                         ; A30E 92 FB                    ..
; ----------------------------------------------------------------------------
        lda     #$00                            ; A310 A9 00                    ..
        sta     $8A                             ; A312 85 8A                    ..
        lda     $6E44                           ; A314 AD 44 6E                 .Dn
        bmi     BattleSetupServices_Branch_A31E ; A317 30 05                    0.
        brk                                     ; A319 00                       .
        db   $2B,$EF                         ; A31A 2B EF                    +.
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_A322 ; A31C B0 04                    ..
BattleSetupServices_Branch_A31E:
        lda     #$64                            ; A31E A9 64                    .d
        sta     $8A                             ; A320 85 8A                    ..
BattleSetupServices_Branch_A322:
        brk                                     ; A322 00                       .
        db   $1E,$2F                         ; A323 1E 2F                    ./
; ----------------------------------------------------------------------------
        ldx     #$00                            ; A325 A2 00                    ..
BattleSetupServices_Branch_A327:
        txa                                     ; A327 8A                       .
        pha                                     ; A328 48                       H
        jsr     BattleSetupServices_Entry_A3A0  ; A329 20 A0 A3                  ..
        jsr     WaitForNmi                      ; A32C 20 74 FF                  t.
        pla                                     ; A32F 68                       h
        tax                                     ; A330 AA                       .
        inx                                     ; A331 E8                       .
        lda     $0505                           ; A332 AD 05 05                 ...
        and     #$02                            ; A335 29 02                    ).
        beq     BattleSetupServices_Branch_A327 ; A337 F0 EE                    ..
        lda     $0509                           ; A339 AD 09 05                 ...
        cmp     $8A                             ; A33C C5 8A                    ..
        bne     BattleSetupServices_Branch_A327 ; A33E D0 E7                    ..
        lda     $8A                             ; A340 A5 8A                    ..
        cmp     #$00                            ; A342 C9 00                    ..
        bne     BattleSetupServices_Branch_A357 ; A344 D0 11                    ..
        jsr     BattleSetupServices_Entry_A489  ; A346 20 89 A4                  ..
        jsr     UpperFixedEngine_Entry_C5C5     ; A349 20 C5 C5                  ..
        lda     #$FF                            ; A34C A9 FF                    ..
        sta     $05FC                           ; A34E 8D FC 05                 ...
        jsr     UpperFixedEngine_Entry_C5B9     ; A351 20 B9 C5                  ..
        jmp     BattleSetupServices_Branch_A391 ; A354 4C 91 A3                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A357:
        lda     $6E44                           ; A357 AD 44 6E                 .Dn
        bmi     BattleSetupServices_Branch_A365 ; A35A 30 09                    0.
        brk                                     ; A35C 00                       .
        db   $95,$FB                         ; A35D 95 FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A35F 00                       .
        db   $02,$4F                         ; A360 02 4F                    .O
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_A372 ; A362 4C 72 A3                 Lr.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A365:
        brk                                     ; A365 00                       .
        db   $9C,$FB                         ; A366 9C FB                    ..
; ----------------------------------------------------------------------------
        ldy     #$10                            ; A368 A0 10                    ..
        brk                                     ; A36A 00                       .
        db   $03,$4F                         ; A36B 03 4F                    .O
; ----------------------------------------------------------------------------
        ldx     #$14                            ; A36D A2 14                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A36F 20 0C C9                  ..
BattleSetupServices_Branch_A372:
        ldx     #$00                            ; A372 A2 00                    ..
BattleSetupServices_Branch_A374:
        txa                                     ; A374 8A                       .
        pha                                     ; A375 48                       H
        jsr     BattleSetupServices_Entry_A42B  ; A376 20 2B A4                  +.
        jsr     WaitForNmi                      ; A379 20 74 FF                  t.
        pla                                     ; A37C 68                       h
        tax                                     ; A37D AA                       .
        inx                                     ; A37E E8                       .
        lda     $0505                           ; A37F AD 05 05                 ...
        and     #$02                            ; A382 29 02                    ).
        bne     BattleSetupServices_Branch_A374 ; A384 D0 EE                    ..
        brk                                     ; A386 00                       .
        db   $98,$FB                         ; A387 98 FB                    ..
; ----------------------------------------------------------------------------
        lda     #$00                            ; A389 A9 00                    ..
        sta     $0509                           ; A38B 8D 09 05                 ...
        jmp     BattleSetupServices_Branch_A394 ; A38E 4C 94 A3                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A391:
        jsr     UpperFixedEngine_Entry_C54E     ; A391 20 4E C5                  N.
BattleSetupServices_Branch_A394:
        brk                                     ; A394 00                       .
        db   $1F,$2F                         ; A395 1F 2F                    ./
; ----------------------------------------------------------------------------
        lda     $1F                             ; A397 A5 1F                    ..
        and     #$F7                            ; A399 29 F7                    ).
        sta     $1F                             ; A39B 85 1F                    ..
        jmp     WaitForNmi                      ; A39D 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A3A0:
        jsr     BattleSetupServices_Entry_A410  ; A3A0 20 10 A4                  ..
        lda     $0509                           ; A3A3 AD 09 05                 ...
        jsr     BattleSetupServices_Entry_A3DD  ; A3A6 20 DD A3                  ..
        sta     $0509                           ; A3A9 8D 09 05                 ...
        ldx     #$00                            ; A3AC A2 00                    ..
BattleSetupServices_Branch_A3AE:
        lda     $0200,x                         ; A3AE BD 00 02                 ...
        cmp     #$F7                            ; A3B1 C9 F7                    ..
        beq     BattleSetupServices_Branch_A3C2 ; A3B3 F0 0D                    ..
        bcs     BattleSetupServices_Branch_A3C0 ; A3B5 B0 09                    ..
        clc                                     ; A3B7 18                       .
        adc     $00                           ; A3B8 65 00                    e.
        bcs     BattleSetupServices_Branch_A3C0 ; A3BA B0 04                    ..
        cmp     #$F7                            ; A3BC C9 F7                    ..
        bcc     BattleSetupServices_Branch_A3C2 ; A3BE 90 02                    ..
BattleSetupServices_Branch_A3C0:
        lda     #$F7                            ; A3C0 A9 F7                    ..
BattleSetupServices_Branch_A3C2:
        sta     $0200,x                         ; A3C2 9D 00 02                 ...
        clc                                     ; A3C5 18                       .
        lda     $7600,x                         ; A3C6 BD 00 76                 ..v
        adc     $00                           ; A3C9 65 00                    e.
        sta     $7600,x                         ; A3CB 9D 00 76                 ..v
        lda     $7601,x                         ; A3CE BD 01 76                 ..v
        adc     #$00                            ; A3D1 69 00                    i.
        sta     $7601,x                         ; A3D3 9D 01 76                 ..v
        inx                                     ; A3D6 E8                       .
        inx                                     ; A3D7 E8                       .
        inx                                     ; A3D8 E8                       .
        inx                                     ; A3D9 E8                       .
        bne     BattleSetupServices_Branch_A3AE ; A3DA D0 D2                    ..
        rts                                     ; A3DC 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A3DD:
        sta     $01                             ; A3DD 85 01                    ..
        lda     $0505                           ; A3DF AD 05 05                 ...
        and     #$02                            ; A3E2 29 02                    ).
        beq     BattleSetupServices_Branch_A3FE ; A3E4 F0 18                    ..
        lda     $01                             ; A3E6 A5 01                    ..
        sec                                     ; A3E8 38                       8
        sbc     $00                           ; A3E9 E5 00                    ..
        bcc     BattleSetupServices_Branch_A3F3 ; A3EB 90 06                    ..
        cmp     $8A                             ; A3ED C5 8A                    ..
        beq     BattleSetupServices_Branch_A3F3 ; A3EF F0 02                    ..
        bcs     BattleSetupServices_Branch_A3FD ; A3F1 B0 0A                    ..
BattleSetupServices_Branch_A3F3:
        sec                                     ; A3F3 38                       8
        lda     $0509                           ; A3F4 AD 09 05                 ...
        sbc     $8A                             ; A3F7 E5 8A                    ..
        sta     $00                           ; A3F9 85 00                    ..
        lda     $8A                             ; A3FB A5 8A                    ..
BattleSetupServices_Branch_A3FD:
        rts                                     ; A3FD 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A3FE:
        lda     $00                           ; A3FE A5 00                    ..
        beq     BattleSetupServices_Branch_A3FD ; A400 F0 FB                    ..
        lda     $0505                           ; A402 AD 05 05                 ...
        ora     #$02                            ; A405 09 02                    ..
        sta     $0505                           ; A407 8D 05 05                 ...
        lda     #$EF                            ; A40A A9 EF                    ..
        sta     $0509                           ; A40C 8D 09 05                 ...
        rts                                     ; A40F 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A410:
        sta     $00                           ; A410 85 00                    ..
        lda     #$00                            ; A412 A9 00                    ..
        sta     $01                             ; A414 85 01                    ..
        lda     $00                           ; A416 A5 00                    ..
        ldx     #$00                            ; A418 A2 00                    ..
        jsr     MultiplyPointerWord             ; A41A 20 27 C8                  '.
        lda     #$C4                            ; A41D A9 C4                    ..
        jsr     UpperFixedEngine_Entry_C851     ; A41F 20 51 C8                  Q.
        lda     $01                             ; A422 A5 01                    ..
        beq     BattleSetupServices_Branch_A42A ; A424 F0 04                    ..
        lda     #$F8                            ; A426 A9 F8                    ..
        sta     $00                           ; A428 85 00                    ..
BattleSetupServices_Branch_A42A:
        rts                                     ; A42A 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A42B:
        jsr     BattleSetupServices_Entry_A410  ; A42B 20 10 A4                  ..
        lda     $0509                           ; A42E AD 09 05                 ...
        clc                                     ; A431 18                       .
        adc     $00                           ; A432 65 00                    e.
        bcs     BattleSetupServices_Branch_A43A ; A434 B0 04                    ..
        cmp     #$F0                            ; A436 C9 F0                    ..
        bcc     BattleSetupServices_Branch_A44C ; A438 90 12                    ..
BattleSetupServices_Branch_A43A:
        lda     $0505                           ; A43A AD 05 05                 ...
        and     #$FD                            ; A43D 29 FD                    ).
        sta     $0505                           ; A43F 8D 05 05                 ...
        sec                                     ; A442 38                       8
        lda     #$F0                            ; A443 A9 F0                    ..
        sbc     $0509                           ; A445 ED 09 05                 ...
        sta     $00                           ; A448 85 00                    ..
        lda     #$00                            ; A44A A9 00                    ..
BattleSetupServices_Branch_A44C:
        sta     $0509                           ; A44C 8D 09 05                 ...
        ldx     #$00                            ; A44F A2 00                    ..
BattleSetupServices_Branch_A451:
        sec                                     ; A451 38                       8
        lda     $7600,x                         ; A452 BD 00 76                 ..v
        sbc     $00                           ; A455 E5 00                    ..
        sta     $7600,x                         ; A457 9D 00 76                 ..v
        lda     $7601,x                         ; A45A BD 01 76                 ..v
        sbc     #$00                            ; A45D E9 00                    ..
        sta     $7601,x                         ; A45F 9D 01 76                 ..v
        bne     BattleSetupServices_Branch_A46E ; A462 D0 0A                    ..
        lda     $7600,x                         ; A464 BD 00 76                 ..v
        cmp     #$F7                            ; A467 C9 F7                    ..
        bcs     BattleSetupServices_Branch_A46E ; A469 B0 03                    ..
        sta     $0200,x                         ; A46B 9D 00 02                 ...
BattleSetupServices_Branch_A46E:
        inx                                     ; A46E E8                       .
        inx                                     ; A46F E8                       .
        inx                                     ; A470 E8                       .
        inx                                     ; A471 E8                       .
        bne     BattleSetupServices_Branch_A451 ; A472 D0 DD                    ..
        rts                                     ; A474 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A475:
        ldx     #$00                            ; A475 A2 00                    ..
BattleSetupServices_Branch_A477:
        lda     #$00                            ; A477 A9 00                    ..
        sta     $7601,x                         ; A479 9D 01 76                 ..v
        lda     $0200,x                         ; A47C BD 00 02                 ...
        sta     $7600,x                         ; A47F 9D 00 76                 ..v
        inx                                     ; A482 E8                       .
        inx                                     ; A483 E8                       .
        inx                                     ; A484 E8                       .
        inx                                     ; A485 E8                       .
        bne     BattleSetupServices_Branch_A477 ; A486 D0 EF                    ..
        rts                                     ; A488 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A489:
        ldx     #$03                            ; A489 A2 03                    ..
BattleSetupServices_Branch_A48B:
        txa                                     ; A48B 8A                       .
        pha                                     ; A48C 48                       H
        lda     $A4A1,x                         ; A48D BD A1 A4                 ...
        sta     $05FC                           ; A490 8D FC 05                 ...
        jsr     UpperFixedEngine_Entry_C5B9     ; A493 20 B9 C5                  ..
        ldx     #$03                            ; A496 A2 03                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A498 20 0C C9                  ..
        pla                                     ; A49B 68                       h
        tax                                     ; A49C AA                       .
        dex                                     ; A49D CA                       .
        bpl     BattleSetupServices_Branch_A48B ; A49E 10 EB                    ..
        rts                                     ; A4A0 60                       `
; ----------------------------------------------------------------------------
        db   $31,$21,$11,$01                 ; A4A1 31 21 11 01              1!..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A4A5:
        asl     a                               ; A4A5 0A                       .
        tay                                     ; A4A6 A8                       .
        lda     Bank12_BattleSetupOperationPointers,y; A4A7 B9 41 A5            .A.
        sta     $00                           ; A4AA 85 00                    ..
        lda     $A542,y                         ; A4AC B9 42 A5                 .B.
        sta     $01                             ; A4AF 85 01                    ..
        jmp     ($0000)                         ; A4B1 6C 00 00                 l..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A4B4:
        jsr     BattleSetupServices_Entry_A520  ; A4B4 20 20 A5                   .
        jsr     BattleSetupServices_Entry_A52A  ; A4B7 20 2A A5                  *.
BattleSetupServices_Branch_A4BA:
        jsr     BattleSetupServices_Entry_A525  ; A4BA 20 25 A5                  %.
        jmp     BattleSetupServices_Entry_A53A  ; A4BD 4C 3A A5                 L:.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A4C0:
        jsr     BattleSetupServices_Entry_A52F  ; A4C0 20 2F A5                  /.
        bcs     BattleSetupServices_Branch_A4C8 ; A4C3 B0 03                    ..
        jsr     BattleSetupServices_Entry_A4B4  ; A4C5 20 B4 A4                  ..
BattleSetupServices_Branch_A4C8:
        rts                                     ; A4C8 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A4C9:
        jmp     BattleSetupServices_Branch_A4BA ; A4C9 4C BA A4                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A4CC:
        jsr     BattleSetupServices_Entry_A52F  ; A4CC 20 2F A5                  /.
        bcs     BattleSetupServices_Branch_A4D4 ; A4CF B0 03                    ..
        jsr     BattleSetupServices_Entry_A53A  ; A4D1 20 3A A5                  :.
BattleSetupServices_Branch_A4D4:
        rts                                     ; A4D4 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A4D5:
        jsr     BattleSetupServices_Entry_A51B  ; A4D5 20 1B A5                  ..
        ldx     #$00                            ; A4D8 A2 00                    ..
BattleSetupServices_Branch_A4DA:
        jsr     BattleSetupServices_Entry_A4B4  ; A4DA 20 B4 A4                  ..
        inx                                     ; A4DD E8                       .
        dey                                     ; A4DE 88                       .
        bne     BattleSetupServices_Branch_A4DA ; A4DF D0 F9                    ..
        rts                                     ; A4E1 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A4E2:
        jsr     BattleSetupServices_Entry_A51B  ; A4E2 20 1B A5                  ..
        ldx     #$00                            ; A4E5 A2 00                    ..
BattleSetupServices_Branch_A4E7:
        jsr     BattleSetupServices_Entry_A4C0  ; A4E7 20 C0 A4                  ..
        inx                                     ; A4EA E8                       .
        dey                                     ; A4EB 88                       .
        bne     BattleSetupServices_Branch_A4E7 ; A4EC D0 F9                    ..
        rts                                     ; A4EE 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A4EF:
        jsr     BattleSetupServices_Entry_A51B  ; A4EF 20 1B A5                  ..
        ldx     #$00                            ; A4F2 A2 00                    ..
BattleSetupServices_Branch_A4F4:
        jsr     BattleSetupServices_Entry_A4C9  ; A4F4 20 C9 A4                  ..
        inx                                     ; A4F7 E8                       .
        dey                                     ; A4F8 88                       .
        bne     BattleSetupServices_Branch_A4F4 ; A4F9 D0 F9                    ..
        rts                                     ; A4FB 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A4FC:
        jsr     BattleSetupServices_Entry_A51B  ; A4FC 20 1B A5                  ..
        ldx     #$00                            ; A4FF A2 00                    ..
BattleSetupServices_Branch_A501:
        jsr     BattleSetupServices_Entry_A4CC  ; A501 20 CC A4                  ..
        inx                                     ; A504 E8                       .
        dey                                     ; A505 88                       .
        bne     BattleSetupServices_Branch_A501 ; A506 D0 F9                    ..
        rts                                     ; A508 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A509:
        jsr     BattleSetupServices_Entry_A51B  ; A509 20 1B A5                  ..
        ldx     #$00                            ; A50C A2 00                    ..
BattleSetupServices_Branch_A50E:
        jsr     BattleSetupServices_Entry_A52F  ; A50E 20 2F A5                  /.
        bcs     BattleSetupServices_Branch_A516 ; A511 B0 03                    ..
        jsr     BattleSetupServices_Entry_A52A  ; A513 20 2A A5                  *.
BattleSetupServices_Branch_A516:
        inx                                     ; A516 E8                       .
        dey                                     ; A517 88                       .
        bne     BattleSetupServices_Branch_A50E ; A518 D0 F4                    ..
        rts                                     ; A51A 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A51B:
        brk                                     ; A51B 00                       .
        db   $62,$33                         ; A51C 62 33                    b3
; ----------------------------------------------------------------------------
        tay                                     ; A51E A8                       .
        rts                                     ; A51F 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A520:
        brk                                     ; A520 00                       .
        db   $45,$93,$06                     ; A521 45 93 06                 E..
; ----------------------------------------------------------------------------
        rts                                     ; A524 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A525:
        brk                                     ; A525 00                       .
        db   $44,$93,$07                     ; A526 44 93 07                 D..
; ----------------------------------------------------------------------------
        rts                                     ; A529 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A52A:
        brk                                     ; A52A 00                       .
        db   $45,$93,$05                     ; A52B 45 93 05                 E..
; ----------------------------------------------------------------------------
        rts                                     ; A52E 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A52F:
        brk                                     ; A52F 00                       .
        db   $42,$53                         ; A530 42 53                    BS
; ----------------------------------------------------------------------------
        cmp     #$01                            ; A532 C9 01                    ..
        beq     BattleSetupServices_Branch_A538 ; A534 F0 02                    ..
        clc                                     ; A536 18                       .
        rts                                     ; A537 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A538:
        sec                                     ; A538 38                       8
        rts                                     ; A539 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A53A:
        brk                                     ; A53A 00                       .
        db   $05,$53                         ; A53B 05 53                    .S
; ----------------------------------------------------------------------------
        brk                                     ; A53D 00                       .
        db   $0E,$53                         ; A53E 0E 53                    .S
; ----------------------------------------------------------------------------
        rts                                     ; A540 60                       `
; ----------------------------------------------------------------------------
Bank12_BattleSetupOperationPointers:
        db   $B4                             ; A541 B4                       .
        db   $A4,$C0,$A4,$C9,$A4,$CC,$A4,$D5 ; A542 A4 C0 A4 C9 A4 CC A4 D5  ........
        db   $A4,$E2,$A4,$EF,$A4,$FC,$A4,$09 ; A54A A4 E2 A4 EF A4 FC A4 09  ........
        db   $A5                             ; A552 A5                       .
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A553:
        brk                                     ; A553 00                       .
        db   $07,$6F,$04                     ; A554 07 6F 04                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; A557 C9 FF                    ..
        beq     BattleSetupServices_Branch_A58E ; A559 F0 33                    .3
        sta     $0590                           ; A55B 8D 90 05                 ...
        sta     $F9                             ; A55E 85 F9                    ..
        jsr     BattleSetupServices_Entry_A5B7  ; A560 20 B7 A5                  ..
        bcs     BattleSetupServices_Branch_A58E ; A563 B0 29                    .)
        lda     $0590                           ; A565 AD 90 05                 ...
        jsr     BattleSetupServices_Entry_A5B2  ; A568 20 B2 A5                  ..
        cmp     #$01                            ; A56B C9 01                    ..
        beq     BattleSetupServices_Branch_A59B ; A56D F0 2C                    .,
        cmp     #$02                            ; A56F C9 02                    ..
        beq     BattleSetupServices_Branch_A5A5 ; A571 F0 32                    .2
        ldx     $0590                           ; A573 AE 90 05                 ...
        brk                                     ; A576 00                       .
        db   $01,$6F,$05                     ; A577 01 6F 05                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; A57A C9 FF                    ..
        beq     BattleSetupServices_Branch_A58E ; A57C F0 10                    ..
        jsr     BattleSetupServices_Entry_A5DA  ; A57E 20 DA A5                  ..
        jsr     BattleSetupServices_Entry_A5E4  ; A581 20 E4 A5                  ..
        bcs     BattleSetupServices_Branch_A58E ; A584 B0 08                    ..
        jsr     BattleSetupServices_Entry_A5FE  ; A586 20 FE A5                  ..
        bcs     BattleSetupServices_Branch_A58E ; A589 B0 03                    ..
        jsr     BattleSetupServices_Entry_A61E  ; A58B 20 1E A6                  ..
BattleSetupServices_Branch_A58E:
        brk                                     ; A58E 00                       .
        db   $07,$6F,$FF                     ; A58F 07 6F FF                 .o.
; ----------------------------------------------------------------------------
        lda     #$00                            ; A592 A9 00                    ..
        sta     $0539                           ; A594 8D 39 05                 .9.
        brk                                     ; A597 00                       .
        db   $45,$EF                         ; A598 45 EF                    E.
; ----------------------------------------------------------------------------
        rts                                     ; A59A 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A59B:
        brk                                     ; A59B 00                       .
        db   $07,$6F,$43                     ; A59C 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; A59F 00                       .
        db   $CF,$2B                         ; A5A0 CF 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_A5AC ; A5A2 4C AC A5                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A5A5:
        brk                                     ; A5A5 00                       .
        db   $07,$6F,$43                     ; A5A6 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; A5A9 00                       .
        db   $D0,$2B                         ; A5AA D0 2B                    .+
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A5AC:
        jsr     UpperFixedEngine_Entry_C8E1     ; A5AC 20 E1 C8                  ..
        jmp     BattleSetupServices_Branch_A58E ; A5AF 4C 8E A5                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A5B2:
        tax                                     ; A5B2 AA                       .
        brk                                     ; A5B3 00                       .
        db   $42,$53                         ; A5B4 42 53                    BS
; ----------------------------------------------------------------------------
        rts                                     ; A5B6 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A5B7:
        tax                                     ; A5B7 AA                       .
        brk                                     ; A5B8 00                       .
        db   $3E,$53                         ; A5B9 3E 53                    >S
; ----------------------------------------------------------------------------
        beq     BattleSetupServices_Branch_A5C4 ; A5BB F0 07                    ..
        brk                                     ; A5BD 00                       .
        db   $3D,$33                         ; A5BE 3D 33                    =3
; ----------------------------------------------------------------------------
        beq     BattleSetupServices_Branch_A5CE ; A5C0 F0 0C                    ..
        clc                                     ; A5C2 18                       .
        rts                                     ; A5C3 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A5C4:
        brk                                     ; A5C4 00                       .
        db   $07,$6F,$43                     ; A5C5 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; A5C8 00                       .
        db   $C0,$2B                         ; A5C9 C0 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_A5D5 ; A5CB 4C D5 A5                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A5CE:
        brk                                     ; A5CE 00                       .
        db   $07,$6F,$43                     ; A5CF 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; A5D2 00                       .
        db   $C1,$2B                         ; A5D3 C1 2B                    .+
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A5D5:
        jsr     UpperFixedEngine_Entry_C8E1     ; A5D5 20 E1 C8                  ..
        sec                                     ; A5D8 38                       8
        rts                                     ; A5D9 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A5DA:
        ldx     $0590                           ; A5DA AE 90 05                 ...
        brk                                     ; A5DD 00                       .
        db   $40,$73                         ; A5DE 40 73                    @s
; ----------------------------------------------------------------------------
        sta     $0592                           ; A5E0 8D 92 05                 ...
        rts                                     ; A5E3 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A5E4:
        lda     $0592                           ; A5E4 AD 92 05                 ...
        brk                                     ; A5E7 00                       .
        db   $0A,$3F                         ; A5E8 0A 3F                    .?
; ----------------------------------------------------------------------------
        ldx     $0590                           ; A5EA AE 90 05                 ...
        brk                                     ; A5ED 00                       .
        db   $0C,$73                         ; A5EE 0C 73                    .s
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_A5F4 ; A5F0 90 02                    ..
        clc                                     ; A5F2 18                       .
        rts                                     ; A5F3 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A5F4:
        brk                                     ; A5F4 00                       .
        db   $07,$6F,$43                     ; A5F5 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; A5F8 00                       .
        db   $C2,$2B                         ; A5F9 C2 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_A5D5 ; A5FB 4C D5 A5                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A5FE:
        lda     $0592                           ; A5FE AD 92 05                 ...
        brk                                     ; A601 00                       .
        db   $0D,$3F                         ; A602 0D 3F                    .?
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_A611 ; A604 90 0B                    ..
        brk                                     ; A606 00                       .
        db   $07,$6F,$4E                     ; A607 07 6F 4E                 .oN
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; A60A C9 FF                    ..
        beq     BattleSetupServices_Branch_A613 ; A60C F0 05                    ..
        sta     $0591                           ; A60E 8D 91 05                 ...
BattleSetupServices_Branch_A611:
        clc                                     ; A611 18                       .
        rts                                     ; A612 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A613:
        sec                                     ; A613 38                       8
        rts                                     ; A614 60                       `
; ----------------------------------------------------------------------------
        db   $AA,$00,$42,$53,$60             ; A615 AA 00 42 53 60           ..BS`
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A61A:
        brk                                     ; A61A 00                       .
        db   $8E,$FB                         ; A61B 8E FB                    ..
; ----------------------------------------------------------------------------
        rts                                     ; A61D 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A61E:
        lda     $0592                           ; A61E AD 92 05                 ...
        cmp     #$33                            ; A621 C9 33                    .3
        beq     BattleSetupServices_Branch_A628 ; A623 F0 03                    ..
        jsr     BattleSetupServices_Entry_A957  ; A625 20 57 A9                  W.
BattleSetupServices_Branch_A628:
        lda     $0592                           ; A628 AD 92 05                 ...
        ldx     #$FF                            ; A62B A2 FF                    ..
BattleSetupServices_Branch_A62D:
        inx                                     ; A62D E8                       .
        cmp     Bank12_BattleSetupEventIds,x    ; A62E DD 0D AA                 ...
        bne     BattleSetupServices_Branch_A62D ; A631 D0 FA                    ..
        txa                                     ; A633 8A                       .
        asl     a                               ; A634 0A                       .
        tax                                     ; A635 AA                       .
        lda     Bank12_BattleSetupEventPointers,x; A636 BD ED A9                ...
        sta     $00                           ; A639 85 00                    ..
        lda     $A9EE,x                         ; A63B BD EE A9                 ...
        sta     $01                             ; A63E 85 01                    ..
        lda     $0591                           ; A640 AD 91 05                 ...
        jmp     ($0000)                         ; A643 6C 00 00                 l..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A646:
        jsr     BattleSetupServices_Entry_A93B  ; A646 20 3B A9                  ;.
        ldx     $41                             ; A649 A6 41                    .A
        bpl     BattleSetupServices_Branch_A66B ; A64B 10 1E                    ..
        ldx     CurrentMapNumber                ; A64D A6 63                    .c
        cpx     #$00                            ; A64F E0 00                    ..
        beq     BattleSetupServices_Branch_A674 ; A651 F0 21                    .!
        cpx     #$37                            ; A653 E0 37                    .7
        beq     BattleSetupServices_Branch_A674 ; A655 F0 1D                    ..
        cpx     #$48                            ; A657 E0 48                    .H
        beq     BattleSetupServices_Branch_A674 ; A659 F0 19                    ..
        cpx     #$2D                            ; A65B E0 2D                    .-
        bne     BattleSetupServices_Branch_A66B ; A65D D0 0C                    ..
        ldy     #$04                            ; A65F A0 04                    ..
BattleSetupServices_Branch_A661:
        lda     $A9E8,y                         ; A661 B9 E8 A9                 ...
        cmp     CurrentSubmapNumber             ; A664 C5 64                    .d
        beq     BattleSetupServices_Branch_A674 ; A666 F0 0C                    ..
        dey                                     ; A668 88                       .
        bpl     BattleSetupServices_Branch_A661 ; A669 10 F6                    ..
BattleSetupServices_Branch_A66B:
        brk                                     ; A66B 00                       .
        db   $28,$EF                         ; A66C 28 EF                    (.
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_A673 ; A66E B0 03                    ..
        jsr     BattleSetupServices_Entry_A852  ; A670 20 52 A8                  R.
BattleSetupServices_Branch_A673:
        rts                                     ; A673 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A674:
        ldx     #$00                            ; A674 A2 00                    ..
BattleSetupServices_Branch_A676:
        lda     $A688,x                         ; A676 BD 88 A6                 ...
        sta     $0554,x                         ; A679 9D 54 05                 .T.
        inx                                     ; A67C E8                       .
        cpx     #$08                            ; A67D E0 08                    ..
        bne     BattleSetupServices_Branch_A676 ; A67F D0 F5                    ..
        brk                                     ; A681 00                       .
        db   $F4,$3B                         ; A682 F4 3B                    .;
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Entry_C8E1     ; A684 4C E1 C8                 L..
; ----------------------------------------------------------------------------
        db   $60                             ; A687 60                       `
        db   $33,$1F,$1E,$1D,$13,$0E,$0F,$40 ; A688 33 1F 1E 1D 13 0E 0F 40  3......@
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A690:
        brk                                     ; A690 00                       .
        db   $07,$6F,$16                     ; A691 07 6F 16                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; A694 C9 FF                    ..
        beq     BattleSetupServices_Branch_A6CD ; A696 F0 35                    .5
        pha                                     ; A698 48                       H
        jsr     BattleSetupServices_Entry_A93B  ; A699 20 3B A9                  ;.
        brk                                     ; A69C 00                       .
        db   $07,$6F,$43                     ; A69D 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_A61A  ; A6A0 20 1A A6                  ..
        ldy     #$10                            ; A6A3 A0 10                    ..
        brk                                     ; A6A5 00                       .
        db   $03,$4F                         ; A6A6 03 4F                    .O
; ----------------------------------------------------------------------------
        lda     $0590                           ; A6A8 AD 90 05                 ...
        sta     $F9                             ; A6AB 85 F9                    ..
        lda     $0592                           ; A6AD AD 92 05                 ...
        sta     $FA                             ; A6B0 85 FA                    ..
        brk                                     ; A6B2 00                       .
        db   $C3,$2B                         ; A6B3 C3 2B                    .+
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_B5EF  ; A6B5 20 EF B5                  ..
        pla                                     ; A6B8 68                       h
        jsr     BattleSetupServices_Entry_A974  ; A6B9 20 74 A9                  t.
        bcs     BattleSetupServices_Branch_A6CE ; A6BC B0 10                    ..
        brk                                     ; A6BE 00                       .
        db   $24,$EF                         ; A6BF 24 EF                    $.
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_A6CD ; A6C1 B0 0A                    ..
        brk                                     ; A6C3 00                       .
        db   $07,$6F,$43                     ; A6C4 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; A6C7 00                       .
        db   $C4,$2B                         ; A6C8 C4 2B                    .+
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C8E1     ; A6CA 20 E1 C8                  ..
BattleSetupServices_Branch_A6CD:
        rts                                     ; A6CD 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A6CE:
        ldx     #$00                            ; A6CE A2 00                    ..
BattleSetupServices_Branch_A6D0:
        lda     $A6E1,x                         ; A6D0 BD E1 A6                 ...
        sta     $0554,x                         ; A6D3 9D 54 05                 .T.
        inx                                     ; A6D6 E8                       .
        cpx     #$07                            ; A6D7 E0 07                    ..
        bne     BattleSetupServices_Branch_A6D0 ; A6D9 D0 F5                    ..
        brk                                     ; A6DB 00                       .
        db   $F4,$3B                         ; A6DC F4 3B                    .;
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A6DE:
        jmp     UpperFixedEngine_Entry_C8E1     ; A6DE 4C E1 C8                 L..
; ----------------------------------------------------------------------------
        db   $36,$0F,$1E,$1F,$1C,$18,$40     ; A6E1 36 0F 1E 1F 1C 18 40     6.....@
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A6E8:
        jsr     BattleSetupServices_Entry_A93B  ; A6E8 20 3B A9                  ;.
        lda     #$FF                            ; A6EB A9 FF                    ..
        sta     $6E41                           ; A6ED 8D 41 6E                 .An
        bne     BattleSetupServices_Branch_A6DE ; A6F0 D0 EC                    ..
BattleSetupServices_Entry_A6F2:
        jsr     BattleSetupServices_Entry_A93B  ; A6F2 20 3B A9                  ;.
        brk                                     ; A6F5 00                       .
        db   $40,$EF                         ; A6F6 40 EF                    @.
; ----------------------------------------------------------------------------
        ldx     #$C5                            ; A6F8 A2 C5                    ..
        bcs     BattleSetupServices_Branch_A70B ; A6FA B0 0F                    ..
        ldx     #$C9                            ; A6FC A2 C9                    ..
        tay                                     ; A6FE A8                       .
        beq     BattleSetupServices_Branch_A70B ; A6FF F0 0A                    ..
        dex                                     ; A701 CA                       .
        dey                                     ; A702 88                       .
        beq     BattleSetupServices_Branch_A70B ; A703 F0 06                    ..
        dex                                     ; A705 CA                       .
        dey                                     ; A706 88                       .
        beq     BattleSetupServices_Branch_A70B ; A707 F0 02                    ..
        dex                                     ; A709 CA                       .
        dey                                     ; A70A 88                       .
BattleSetupServices_Branch_A70B:
        txa                                     ; A70B 8A                       .
        ldx     #$02                            ; A70C A2 02                    ..
        brk                                     ; A70E 00                       .
        db   $04,$6F                         ; A70F 04 6F                    .o
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A711:
        jmp     UpperFixedEngine_Entry_C8E1     ; A711 4C E1 C8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A714:
        jsr     BattleSetupServices_Entry_A93B  ; A714 20 3B A9                  ;.
        lda     #$60                            ; A717 A9 60                    .`
        ora     $627F                           ; A719 0D 7F 62                 ..b
        sta     $627F                           ; A71C 8D 7F 62                 ..b
        bne     BattleSetupServices_Branch_A711 ; A71F D0 F0                    ..
BattleSetupServices_Entry_A721:
        lda     CurrentTilesetCandidate         ; A721 A5 65                    .e
        cmp     #$03                            ; A723 C9 03                    ..
        beq     BattleSetupServices_Branch_A753 ; A725 F0 2C                    .,
        lda     $62A1                           ; A727 AD A1 62                 ..b
        and     #$20                            ; A72A 29 20                    )
        bne     BattleSetupServices_Branch_A753 ; A72C D0 25                    .%
        lda     $6288                           ; A72E AD 88 62                 ..b
        bmi     BattleSetupServices_Branch_A753 ; A731 30 20                    0
        lda     $41                             ; A733 A5 41                    .A
        bpl     BattleSetupServices_Branch_A751 ; A735 10 1A                    ..
        lda     CurrentMapNumber                ; A737 A5 63                    .c
        cmp     #$0D                            ; A739 C9 0D                    ..
        beq     BattleSetupServices_Branch_A753 ; A73B F0 16                    ..
        cmp     #$09                            ; A73D C9 09                    ..
        beq     BattleSetupServices_Branch_A753 ; A73F F0 12                    ..
        cmp     #$0B                            ; A741 C9 0B                    ..
        beq     BattleSetupServices_Branch_A753 ; A743 F0 0E                    ..
        cmp     #$46                            ; A745 C9 46                    .F
        beq     BattleSetupServices_Branch_A753 ; A747 F0 0A                    ..
        cmp     #$3E                            ; A749 C9 3E                    .>
        beq     BattleSetupServices_Branch_A753 ; A74B F0 06                    ..
        cmp     #$08                            ; A74D C9 08                    ..
        beq     BattleSetupServices_Branch_A753 ; A74F F0 02                    ..
BattleSetupServices_Branch_A751:
        clc                                     ; A751 18                       .
        rts                                     ; A752 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A753:
        sec                                     ; A753 38                       8
        rts                                     ; A754 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A755:
        jsr     BattleSetupServices_Entry_A93B  ; A755 20 3B A9                  ;.
        jsr     BattleSetupServices_Entry_A974  ; A758 20 74 A9                  t.
        bcs     BattleSetupServices_Branch_A777 ; A75B B0 1A                    ..
        jsr     BattleSetupServices_Entry_A721  ; A75D 20 21 A7                  !.
        bcs     BattleSetupServices_Branch_A777 ; A760 B0 15                    ..
        lda     $41                             ; A762 A5 41                    .A
        bpl     BattleSetupServices_Entry_A773  ; A764 10 0D                    ..
        lda     $07BA                           ; A766 AD BA 07                 ...
        and     #$7F                            ; A769 29 7F                    ).
        cmp     #$04                            ; A76B C9 04                    ..
        beq     BattleSetupServices_Branch_A77D ; A76D F0 0E                    ..
        cmp     #$05                            ; A76F C9 05                    ..
        beq     BattleSetupServices_Branch_A77D ; A771 F0 0A                    ..
BattleSetupServices_Entry_A773:
        brk                                     ; A773 00                       .
        db   $0F,$BF                         ; A774 0F BF                    ..
; ----------------------------------------------------------------------------
        rts                                     ; A776 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A777:
        brk                                     ; A777 00                       .
        db   $C5,$2B                         ; A778 C5 2B                    .+
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Entry_C8E1     ; A77A 4C E1 C8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A77D:
        brk                                     ; A77D 00                       .
        db   $4B,$0B                         ; A77E 4B 0B                    K.
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Entry_C8E1     ; A780 4C E1 C8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A783:
        jsr     BattleSetupServices_Entry_A93B  ; A783 20 3B A9                  ;.
        brk                                     ; A786 00                       .
        db   $35,$EF                         ; A787 35 EF                    5.
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_A777 ; A789 90 EC                    ..
        rts                                     ; A78B 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A78C:
        jsr     BattleSetupServices_Entry_A93B  ; A78C 20 3B A9                  ;.
        jsr     BattleSetupServices_Entry_A5B2  ; A78F 20 B2 A5                  ..
        cmp     #$01                            ; A792 C9 01                    ..
        bne     BattleSetupServices_Branch_A79A ; A794 D0 04                    ..
        brk                                     ; A796 00                       .
        db   $C5,$2B                         ; A797 C5 2B                    .+
; ----------------------------------------------------------------------------
        rts                                     ; A799 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A79A:
        jsr     BattleSetupServices_Entry_A94A  ; A79A 20 4A A9                  J.
        ldy     #$00                            ; A79D A0 00                    ..
BattleSetupServices_Branch_A79F:
        jsr     BattleSetupServices_Entry_A950  ; A79F 20 50 A9                  P.
        pha                                     ; A7A2 48                       H
        iny                                     ; A7A3 C8                       .
        jsr     BattleSetupServices_Entry_A950  ; A7A4 20 50 A9                  P.
        brk                                     ; A7A7 00                       .
        db   $17,$0F                         ; A7A8 17 0F                    ..
; ----------------------------------------------------------------------------
        sta     $00                           ; A7AA 85 00                    ..
        pla                                     ; A7AC 68                       h
        clc                                     ; A7AD 18                       .
        adc     $00                           ; A7AE 65 00                    e.
        ldx     $0591                           ; A7B0 AE 91 05                 ...
        ldy     #$00                            ; A7B3 A0 00                    ..
        sty     $70                             ; A7B5 84 70                    .p
        brk                                     ; A7B7 00                       .
        db   $02,$73                         ; A7B8 02 73                    .s
; ----------------------------------------------------------------------------
        lda     $0591                           ; A7BA AD 91 05                 ...
BattleSetupServices_Branch_A7BD:
        sta     $F9                             ; A7BD 85 F9                    ..
        brk                                     ; A7BF 00                       .
        db   $CA,$2B                         ; A7C0 CA 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; A7C2 00                       .
        db   $27,$0F                         ; A7C3 27 0F                    '.
; ----------------------------------------------------------------------------
        ldx     #$14                            ; A7C5 A2 14                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A7C7 20 0C C9                  ..
        brk                                     ; A7CA 00                       .
        db   $07,$6F,$10                     ; A7CB 07 6F 10                 .o.
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Entry_C8E1     ; A7CE 4C E1 C8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A7D1:
        jsr     BattleSetupServices_Entry_A93B  ; A7D1 20 3B A9                  ;.
        jsr     BattleSetupServices_Entry_A5B2  ; A7D4 20 B2 A5                  ..
        cmp     #$01                            ; A7D7 C9 01                    ..
        beq     BattleSetupServices_Entry_A852  ; A7D9 F0 77                    .w
        jsr     BattleSetupServices_Entry_A94A  ; A7DB 20 4A A9                  J.
        ldy     #$02                            ; A7DE A0 02                    ..
        jmp     BattleSetupServices_Branch_A79F ; A7E0 4C 9F A7                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A7E3:
        jsr     BattleSetupServices_Entry_A93B  ; A7E3 20 3B A9                  ;.
        jsr     BattleSetupServices_Entry_A5B2  ; A7E6 20 B2 A5                  ..
        cmp     #$01                            ; A7E9 C9 01                    ..
        beq     BattleSetupServices_Entry_A852  ; A7EB F0 65                    .e
        ldx     $0591                           ; A7ED AE 91 05                 ...
        brk                                     ; A7F0 00                       .
        db   $05,$53                         ; A7F1 05 53                    .S
; ----------------------------------------------------------------------------
        lda     $0591                           ; A7F3 AD 91 05                 ...
        jmp     BattleSetupServices_Branch_A7BD ; A7F6 4C BD A7                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A7F9:
        jsr     BattleSetupServices_Entry_A93B  ; A7F9 20 3B A9                  ;.
        brk                                     ; A7FC 00                       .
        db   $62,$33                         ; A7FD 62 33                    b3
; ----------------------------------------------------------------------------
        sta     $02                           ; A7FF 85 02                    ..
        lda     #$00                            ; A801 A9 00                    ..
        sta     $6E                             ; A803 85 6E                    .n
BattleSetupServices_Branch_A805:
        lda     $6E                             ; A805 A5 6E                    .n
        jsr     BattleSetupServices_Entry_A5B2  ; A807 20 B2 A5                  ..
        cmp     #$01                            ; A80A C9 01                    ..
        beq     BattleSetupServices_Branch_A829 ; A80C F0 1B                    ..
        jsr     BattleSetupServices_Entry_A94A  ; A80E 20 4A A9                  J.
        ldy     #$02                            ; A811 A0 02                    ..
        jsr     BattleSetupServices_Entry_A950  ; A813 20 50 A9                  P.
        pha                                     ; A816 48                       H
        iny                                     ; A817 C8                       .
        jsr     BattleSetupServices_Entry_A950  ; A818 20 50 A9                  P.
        brk                                     ; A81B 00                       .
        db   $17,$0F                         ; A81C 17 0F                    ..
; ----------------------------------------------------------------------------
        sta     $03                             ; A81E 85 03                    ..
        pla                                     ; A820 68                       h
        clc                                     ; A821 18                       .
        adc     $03                             ; A822 65 03                    e.
        ldx     $6E                             ; A824 A6 6E                    .n
        brk                                     ; A826 00                       .
        db   $02,$73                         ; A827 02 73                    .s
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A829:
        lda     $6E                             ; A829 A5 6E                    .n
        pha                                     ; A82B 48                       H
        lda     $02                           ; A82C A5 02                    ..
        pha                                     ; A82E 48                       H
        brk                                     ; A82F 00                       .
        db   $27,$0F                         ; A830 27 0F                    '.
; ----------------------------------------------------------------------------
        pla                                     ; A832 68                       h
        sta     $02                           ; A833 85 02                    ..
        pla                                     ; A835 68                       h
        sta     $6E                             ; A836 85 6E                    .n
        inc     $6E                             ; A838 E6 6E                    .n
        dec     $02                           ; A83A C6 02                    ..
        bne     BattleSetupServices_Branch_A805 ; A83C D0 C7                    ..
        lda     $0590                           ; A83E AD 90 05                 ...
        sta     $F9                             ; A841 85 F9                    ..
        brk                                     ; A843 00                       .
        db   $F6,$2B                         ; A844 F6 2B                    .+
; ----------------------------------------------------------------------------
        ldx     #$1E                            ; A846 A2 1E                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A848 20 0C C9                  ..
        brk                                     ; A84B 00                       .
        db   $07,$6F,$10                     ; A84C 07 6F 10                 .o.
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Entry_C8E1     ; A84F 4C E1 C8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A852:
        brk                                     ; A852 00                       .
        db   $C5,$2B                         ; A853 C5 2B                    .+
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Entry_C8E1     ; A855 4C E1 C8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A858:
        jsr     BattleSetupServices_Entry_A93B  ; A858 20 3B A9                  ;.
        brk                                     ; A85B 00                       .
        db   $62,$33                         ; A85C 62 33                    b3
; ----------------------------------------------------------------------------
        sta     $00                           ; A85E 85 00                    ..
        brk                                     ; A860 00                       .
        db   $62,$23,$02                     ; A861 62 23 02                 b#.
; ----------------------------------------------------------------------------
        cmp     $00                           ; A864 C5 00                    ..
        beq     BattleSetupServices_Entry_A852  ; A866 F0 EA                    ..
        lda     $00                           ; A868 A5 00                    ..
        sec                                     ; A86A 38                       8
        sbc     $72                             ; A86B E5 72                    .r
        sta     $01                             ; A86D 85 01                    ..
        ldx     #$00                            ; A86F A2 00                    ..
BattleSetupServices_Branch_A871:
        brk                                     ; A871 00                       .
        db   $45,$93,$06                     ; A872 45 93 06                 E..
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_A8AF ; A875 90 38                    .8
        lda     $00                           ; A877 A5 00                    ..
        pha                                     ; A879 48                       H
        lda     $01                             ; A87A A5 01                    ..
        pha                                     ; A87C 48                       H
        txa                                     ; A87D 8A                       .
        pha                                     ; A87E 48                       H
        tya                                     ; A87F 98                       .
        pha                                     ; A880 48                       H
        stx     $F9                             ; A881 86 F9                    ..
        brk                                     ; A883 00                       .
        db   $27,$EF                         ; A884 27 EF                    '.
; ----------------------------------------------------------------------------
        brk                                     ; A886 00                       .
        db   $CB,$2B                         ; A887 CB 2B                    .+
; ----------------------------------------------------------------------------
        pla                                     ; A889 68                       h
        tay                                     ; A88A A8                       .
        pla                                     ; A88B 68                       h
        tax                                     ; A88C AA                       .
        pla                                     ; A88D 68                       h
        sta     $01                             ; A88E 85 01                    ..
        pla                                     ; A890 68                       h
        sta     $00                           ; A891 85 00                    ..
        iny                                     ; A893 C8                       .
        cpy     $01                             ; A894 C4 01                    ..
        beq     BattleSetupServices_Branch_A8AF ; A896 F0 17                    ..
        lda     $01                             ; A898 A5 01                    ..
        pha                                     ; A89A 48                       H
        lda     $00                           ; A89B A5 00                    ..
        pha                                     ; A89D 48                       H
        tya                                     ; A89E 98                       .
        pha                                     ; A89F 48                       H
        txa                                     ; A8A0 8A                       .
        pha                                     ; A8A1 48                       H
        brk                                     ; A8A2 00                       .
        db   $EB,$2B                         ; A8A3 EB 2B                    .+
; ----------------------------------------------------------------------------
        pla                                     ; A8A5 68                       h
        tax                                     ; A8A6 AA                       .
        pla                                     ; A8A7 68                       h
        tya                                     ; A8A8 98                       .
        pla                                     ; A8A9 68                       h
        sta     $00                           ; A8AA 85 00                    ..
        pla                                     ; A8AC 68                       h
        sta     $01                             ; A8AD 85 01                    ..
BattleSetupServices_Branch_A8AF:
        inx                                     ; A8AF E8                       .
        dec     $00                           ; A8B0 C6 00                    ..
        bne     BattleSetupServices_Branch_A871 ; A8B2 D0 BD                    ..
        jmp     UpperFixedEngine_Entry_C8E1     ; A8B4 4C E1 C8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A8B7:
        jsr     BattleSetupServices_Entry_A93B  ; A8B7 20 3B A9                  ;.
        jsr     BattleSetupServices_Entry_A5B2  ; A8BA 20 B2 A5                  ..
        cmp     #$07                            ; A8BD C9 07                    ..
        bne     BattleSetupServices_Entry_A852  ; A8BF D0 91                    ..
        ldx     $0591                           ; A8C1 AE 91 05                 ...
        stx     $F9                             ; A8C4 86 F9                    ..
        brk                                     ; A8C6 00                       .
        db   $45,$93,$05                     ; A8C7 45 93 05                 E..
; ----------------------------------------------------------------------------
        brk                                     ; A8CA 00                       .
        db   $CC,$2B                         ; A8CB CC 2B                    .+
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Entry_C8E1     ; A8CD 4C E1 C8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A8D0:
        jsr     BattleSetupServices_Entry_A93B  ; A8D0 20 3B A9                  ;.
        jsr     BattleSetupServices_Entry_A5B2  ; A8D3 20 B2 A5                  ..
        cmp     #$01                            ; A8D6 C9 01                    ..
        beq     BattleSetupServices_Branch_A8DD ; A8D8 F0 03                    ..
        jmp     BattleSetupServices_Entry_A852  ; A8DA 4C 52 A8                 LR.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A8DD:
        jsr     UpperFixedEngine_Entry_C891     ; A8DD 20 91 C8                  ..
        tax                                     ; A8E0 AA                       .
        bmi     BattleSetupServices_Branch_A8FB ; A8E1 30 18                    0.
        lda     $0591                           ; A8E3 AD 91 05                 ...
        sta     $F9                             ; A8E6 85 F9                    ..
        brk                                     ; A8E8 00                       .
        db   $CE,$2B                         ; A8E9 CE 2B                    .+
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Entry_C8E1     ; A8EB 4C E1 C8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A8EE:
        jsr     BattleSetupServices_Entry_A93B  ; A8EE 20 3B A9                  ;.
        jsr     BattleSetupServices_Entry_A5B2  ; A8F1 20 B2 A5                  ..
        cmp     #$01                            ; A8F4 C9 01                    ..
        beq     BattleSetupServices_Branch_A8FB ; A8F6 F0 03                    ..
        jmp     BattleSetupServices_Entry_A852  ; A8F8 4C 52 A8                 LR.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A8FB:
        ldx     $0591                           ; A8FB AE 91 05                 ...
        stx     $F9                             ; A8FE 86 F9                    ..
        lda     #$07                            ; A900 A9 07                    ..
        brk                                     ; A902 00                       .
        db   $44,$73                         ; A903 44 73                    Ds
; ----------------------------------------------------------------------------
        brk                                     ; A905 00                       .
        db   $6A,$33                         ; A906 6A 33                    j3
; ----------------------------------------------------------------------------
        bne     BattleSetupServices_Branch_A91C ; A908 D0 12                    ..
        lda     $6E                             ; A90A A5 6E                    .n
        pha                                     ; A90C 48                       H
        tax                                     ; A90D AA                       .
        brk                                     ; A90E 00                       .
        db   $23,$EF                         ; A90F 23 EF                    #.
; ----------------------------------------------------------------------------
        brk                                     ; A911 00                       .
        db   $0D,$87                         ; A912 0D 87                    ..
; ----------------------------------------------------------------------------
        pla                                     ; A914 68                       h
        tay                                     ; A915 A8                       .
        brk                                     ; A916 00                       .
        db   $26,$EF                         ; A917 26 EF                    &.
; ----------------------------------------------------------------------------
        brk                                     ; A919 00                       .
        db   $27,$EF                         ; A91A 27 EF                    '.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A91C:
        brk                                     ; A91C 00                       .
        db   $CD,$2B                         ; A91D CD 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; A91F 00                       .
        db   $45,$EF                         ; A920 45 EF                    E.
; ----------------------------------------------------------------------------
        ldx     $0591                           ; A922 AE 91 05                 ...
        lda     $0592                           ; A925 AD 92 05                 ...
        cmp     #$30                            ; A928 C9 30                    .0
        beq     BattleSetupServices_Branch_A932 ; A92A F0 06                    ..
        brk                                     ; A92C 00                       .
        db   $05,$53                         ; A92D 05 53                    .S
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_A935 ; A92F 4C 35 A9                 L5.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A932:
        brk                                     ; A932 00                       .
        db   $06,$53                         ; A933 06 53                    .S
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A935:
        brk                                     ; A935 00                       .
        db   $27,$0F                         ; A936 27 0F                    '.
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Entry_C8E1     ; A938 4C E1 C8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A93B:
        pha                                     ; A93B 48                       H
        lda     $0592                           ; A93C AD 92 05                 ...
        brk                                     ; A93F 00                       .
        db   $0A,$3F                         ; A940 0A 3F                    .?
; ----------------------------------------------------------------------------
        ldx     $0590                           ; A942 AE 90 05                 ...
        brk                                     ; A945 00                       .
        db   $0B,$73                         ; A946 0B 73                    .s
; ----------------------------------------------------------------------------
        pla                                     ; A948 68                       h
        rts                                     ; A949 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A94A:
        ldx     #$00                            ; A94A A2 00                    ..
        brk                                     ; A94C 00                       .
        db   $8F,$3F                         ; A94D 8F 3F                    .?
; ----------------------------------------------------------------------------
        rts                                     ; A94F 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A950:
        ldx     #$00                            ; A950 A2 00                    ..
        lda     #$13                            ; A952 A9 13                    ..
        jmp     UpperFixedEngine_Entry_C3EA     ; A954 4C EA C3                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A957:
        brk                                     ; A957 00                       .
        db   $07,$6F,$43                     ; A958 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_A61A  ; A95B 20 1A A6                  ..
        ldy     #$10                            ; A95E A0 10                    ..
        brk                                     ; A960 00                       .
        db   $03,$4F                         ; A961 03 4F                    .O
; ----------------------------------------------------------------------------
        lda     $0590                           ; A963 AD 90 05                 ...
        sta     $F9                             ; A966 85 F9                    ..
        lda     $0592                           ; A968 AD 92 05                 ...
        sta     $FA                             ; A96B 85 FA                    ..
        brk                                     ; A96D 00                       .
        db   $C3,$2B                         ; A96E C3 2B                    .+
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_B5EF  ; A970 20 EF B5                  ..
        rts                                     ; A973 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_A974:
        pha                                     ; A974 48                       H
        brk                                     ; A975 00                       .
        db   $26,$EB,$20                     ; A976 26 EB 20                 &.
; ----------------------------------------------------------------------------
        bne     BattleSetupServices_Branch_A9C5 ; A979 D0 4A                    .J
        ldx     $41                             ; A97B A6 41                    .A
        bpl     BattleSetupServices_Branch_A9C2 ; A97D 10 43                    .C
        ldx     CurrentMapNumber                ; A97F A6 63                    .c
        cpx     #$04                            ; A981 E0 04                    ..
        bne     BattleSetupServices_Branch_A994 ; A983 D0 0F                    ..
        ldx     SaveCurrentChapterMinus1        ; A985 AE 5A 61                 .Za
        cpx     #$01                            ; A988 E0 01                    ..
        bne     BattleSetupServices_Branch_A9C2 ; A98A D0 36                    .6
        brk                                     ; A98C 00                       .
        db   $09,$EB,$40                     ; A98D 09 EB 40                 ..@
; ----------------------------------------------------------------------------
        beq     BattleSetupServices_Branch_A9C2 ; A990 F0 30                    .0
        bne     BattleSetupServices_Branch_A9C5 ; A992 D0 31                    .1
BattleSetupServices_Branch_A994:
        cpx     #$29                            ; A994 E0 29                    .)
        beq     BattleSetupServices_Branch_A9C5 ; A996 F0 2D                    .-
        cpx     #$44                            ; A998 E0 44                    .D
        beq     BattleSetupServices_Branch_A9C5 ; A99A F0 29                    .)
        cpx     #$27                            ; A99C E0 27                    .'
        beq     BattleSetupServices_Branch_A9C5 ; A99E F0 25                    .%
        cpx     #$28                            ; A9A0 E0 28                    .(
        beq     BattleSetupServices_Branch_A9C5 ; A9A2 F0 21                    .!
        cpx     #$18                            ; A9A4 E0 18                    ..
        bne     BattleSetupServices_Branch_A9B0 ; A9A6 D0 08                    ..
        ldx     CurrentSubmapNumber             ; A9A8 A6 64                    .d
        cpx     #$00                            ; A9AA E0 00                    ..
        beq     BattleSetupServices_Branch_A9C5 ; A9AC F0 17                    ..
        bne     BattleSetupServices_Branch_A9C2 ; A9AE D0 12                    ..
BattleSetupServices_Branch_A9B0:
        cpx     #$48                            ; A9B0 E0 48                    .H
        beq     BattleSetupServices_Branch_A9C5 ; A9B2 F0 11                    ..
        cpx     #$03                            ; A9B4 E0 03                    ..
        beq     BattleSetupServices_Branch_A9C8 ; A9B6 F0 10                    ..
        cpx     #$00                            ; A9B8 E0 00                    ..
        bne     BattleSetupServices_Branch_A9C2 ; A9BA D0 06                    ..
        brk                                     ; A9BC 00                       .
        db   $17,$EB,$02                     ; A9BD 17 EB 02                 ...
; ----------------------------------------------------------------------------
        beq     BattleSetupServices_Branch_A9C5 ; A9C0 F0 03                    ..
BattleSetupServices_Branch_A9C2:
        pla                                     ; A9C2 68                       h
        clc                                     ; A9C3 18                       .
        rts                                     ; A9C4 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A9C5:
        pla                                     ; A9C5 68                       h
        sec                                     ; A9C6 38                       8
        rts                                     ; A9C7 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_A9C8:
        ldy     CurrentSubmapNumber             ; A9C8 A4 64                    .d
        cpy     #$01                            ; A9CA C0 01                    ..
        bne     BattleSetupServices_Branch_A9C2 ; A9CC D0 F4                    ..
        ldx     PlayerLocalX                    ; A9CE A6 44                    .D
        cpx     #$01                            ; A9D0 E0 01                    ..
        bcc     BattleSetupServices_Branch_A9C2 ; A9D2 90 EE                    ..
        ldx     PlayerLocalY                    ; A9D4 A6 45                    .E
        cpx     #$0F                            ; A9D6 E0 0F                    ..
        bcc     BattleSetupServices_Branch_A9C2 ; A9D8 90 E8                    ..
        ldx     #$0D                            ; A9DA A2 0D                    ..
        cpx     PlayerLocalX                    ; A9DC E4 44                    .D
        bcc     BattleSetupServices_Branch_A9C2 ; A9DE 90 E2                    ..
        ldx     #$17                            ; A9E0 A2 17                    ..
        cpx     PlayerLocalY                    ; A9E2 E4 45                    .E
        bcs     BattleSetupServices_Branch_A9C5 ; A9E4 B0 DF                    ..
        bcc     BattleSetupServices_Branch_A9C2 ; A9E6 90 DA                    ..
        php                                     ; A9E8 08                       .
        ora     $06                             ; A9E9 05 06                    ..
        db   $07,$09                         ; A9EB 07 09                    ..
Bank12_BattleSetupEventPointers:
        db   $46                             ; A9ED 46                       F
        db   $A6,$90,$A6,$E8,$A6,$F2,$A6,$14 ; A9EE A6 90 A6 E8 A6 F2 A6 14  ........
        db   $A7,$55,$A7,$83,$A7,$8C,$A7,$D1 ; A9F6 A7 55 A7 83 A7 8C A7 D1  .U......
        db   $A7,$E3,$A7,$F9,$A7,$58,$A8,$B7 ; A9FE A7 E3 A7 F9 A7 58 A8 B7  .....X..
        db   $A8,$D0,$A8,$EE,$A8,$14,$A7     ; AA06 A8 D0 A8 EE A8 14 A7     .......
Bank12_BattleSetupEventIds:
        db   $35,$33,$3B,$36,$37,$38,$39,$29 ; AA0D 35 33 3B 36 37 38 39 29  53;6789)
        db   $2A,$2B,$2C,$2E,$3A,$30,$31,$37 ; AA15 2A 2B 2C 2E 3A 30 31 37  *+,.:017
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AA1D:
        lda     #$80                            ; AA1D A9 80                    ..
        sta     $6BDE                           ; AA1F 8D DE 6B                 ..k
        jsr     UpperFixedEngine_Entry_C54E     ; AA22 20 4E C5                  N.
        jsr     UpperFixedEngine_Entry_C58F     ; AA25 20 8F C5                  ..
        jsr     UpperFixedEngine_Entry_C5BF     ; AA28 20 BF C5                  ..
        jsr     BattleSetupServices_Entry_AA41  ; AA2B 20 41 AA                  A.
        jsr     BattleSetupServices_Entry_AA5B  ; AA2E 20 5B AA                  [.
        brk                                     ; AA31 00                       .
        db   $1F,$FB                         ; AA32 1F FB                    ..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_AA34:
        brk                                     ; AA34 00                       .
        db   $07,$6F,$53                     ; AA35 07 6F 53                 .oS
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_AAB7  ; AA38 20 B7 AA                  ..
        jsr     BattleSetupServices_Entry_AD4A  ; AA3B 20 4A AD                  J.
        jmp     BattleSetupServices_Branch_AA34 ; AA3E 4C 34 AA                 L4.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AA41:
        jsr     BattleSetupServices_Entry_AC73  ; AA41 20 73 AC                  s.
        bcs     BattleSetupServices_Branch_AA5A ; AA44 B0 14                    ..
        jsr     BattleSetupServices_Entry_AC8C  ; AA46 20 8C AC                  ..
        lda     #$00                            ; AA49 A9 00                    ..
        sta     $8A                             ; AA4B 85 8A                    ..
        jsr     BattleSetupServices_Entry_AC01  ; AA4D 20 01 AC                  ..
        inc     $8A                             ; AA50 E6 8A                    ..
        jsr     BattleSetupServices_Entry_AC01  ; AA52 20 01 AC                  ..
        inc     $8A                             ; AA55 E6 8A                    ..
        jmp     BattleSetupServices_Entry_AC01  ; AA57 4C 01 AC                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_AA5A:
        rts                                     ; AA5A 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AA5B:
        lda     #$00                            ; AA5B A9 00                    ..
        sta     $6BDB                           ; AA5D 8D DB 6B                 ..k
        lda     #$02                            ; AA60 A9 02                    ..
        sta     $8A                             ; AA62 85 8A                    ..
BattleSetupServices_Branch_AA64:
        lda     #$D6                            ; AA64 A9 D6                    ..
        jsr     BattleSetupServices_Entry_AA7F  ; AA66 20 7F AA                  ..
        jsr     BattleSetupServices_Entry_ACBD  ; AA69 20 BD AC                  ..
        beq     BattleSetupServices_Branch_AA7A ; AA6C F0 0C                    ..
        pha                                     ; AA6E 48                       H
        lda     #$00                            ; AA6F A9 00                    ..
        jsr     BattleSetupServices_Entry_AA7F  ; AA71 20 7F AA                  ..
        pla                                     ; AA74 68                       h
        bpl     BattleSetupServices_Branch_AA7A ; AA75 10 03                    ..
        jsr     BattleSetupServices_Entry_AA85  ; AA77 20 85 AA                  ..
BattleSetupServices_Branch_AA7A:
        dec     $8A                             ; AA7A C6 8A                    ..
        bpl     BattleSetupServices_Branch_AA64 ; AA7C 10 E6                    ..
        rts                                     ; AA7E 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AA7F:
        ldx     $8A                             ; AA7F A6 8A                    ..
        sta     $6BEC,x                         ; AA81 9D EC 6B                 ..k
        rts                                     ; AA84 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AA85:
        jsr     BattleSetupServices_Entry_AC05  ; AA85 20 05 AC                  ..
        brk                                     ; AA88 00                       .
        db   $12,$FB                         ; AA89 12 FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AA8B 00                       .
        db   $07,$9F                         ; AA8C 07 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AA8E 00                       .
        db   $1F,$FB                         ; AA8F 1F FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AA91 00                       .
        db   $07,$6F,$43                     ; AA92 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        lda     #$00                            ; AA95 A9 00                    ..
        sta     $6BDE                           ; AA97 8D DE 6B                 ..k
        lda     $0553                           ; AA9A AD 53 05                 .S.
        and     #$7F                            ; AA9D 29 7F                    ).
        sta     $0553                           ; AA9F 8D 53 05                 .S.
        ldx     $8A                             ; AAA2 A6 8A                    ..
        stx     $FD                             ; AAA4 86 FD                    ..
        lda     #$00                            ; AAA6 A9 00                    ..
        sta     $FE                             ; AAA8 85 FE                    ..
        sta     $FF                             ; AAAA 85 FF                    ..
        inc     $FD                             ; AAAC E6 FD                    ..
        brk                                     ; AAAE 00                       .
        db   $CC,$1B                         ; AAAF CC 1B                    ..
; ----------------------------------------------------------------------------
        lda     #$80                            ; AAB1 A9 80                    ..
        sta     $6BDE                           ; AAB3 8D DE 6B                 ..k
BattleSetupServices_Branch_AAB6:
        rts                                     ; AAB6 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AAB7:
        cmp     #$05                            ; AAB7 C9 05                    ..
        bcs     BattleSetupServices_Branch_AAB6 ; AAB9 B0 FB                    ..
        asl     a                               ; AABB 0A                       .
        tax                                     ; AABC AA                       .
        lda     $AACA,x                         ; AABD BD CA AA                 ...
        sta     $00                           ; AAC0 85 00                    ..
        lda     $AACB,x                         ; AAC2 BD CB AA                 ...
        sta     $01                             ; AAC5 85 01                    ..
        jmp     ($0000)                         ; AAC7 6C 00 00                 l..
; ----------------------------------------------------------------------------
        db   $D4                             ; AACA D4                       .
        db   $AA,$10,$AB,$36,$AB,$C1,$AB,$E9 ; AACB AA 10 AB 36 AB C1 AB E9  ...6....
        db   $AB                             ; AAD3 AB                       .
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AAD4:
        jsr     BattleSetupServices_Entry_AAF0  ; AAD4 20 F0 AA                  ..
        bcs     BattleSetupServices_Branch_AAEF ; AAD7 B0 16                    ..
        jsr     BattleSetupServices_Entry_AC22  ; AAD9 20 22 AC                  ".
BattleSetupServices_Branch_AADC:
        brk                                     ; AADC 00                       .
        db   $10,$2F                         ; AADD 10 2F                    ./
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; AADF 20 C5 C5                  ..
        jsr     UpperFixedEngine_Entry_C54E     ; AAE2 20 4E C5                  N.
        brk                                     ; AAE5 00                       .
        db   $04,$9F                         ; AAE6 04 9F                    ..
; ----------------------------------------------------------------------------
        lda     #$00                            ; AAE8 A9 00                    ..
        sta     $6BEB                           ; AAEA 8D EB 6B                 ..k
        pla                                     ; AAED 68                       h
        pla                                     ; AAEE 68                       h
BattleSetupServices_Branch_AAEF:
        rts                                     ; AAEF 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AAF0:
        brk                                     ; AAF0 00                       .
        db   $07,$6F,$55                     ; AAF1 07 6F 55                 .oU
; ----------------------------------------------------------------------------
        sta     $8A                             ; AAF4 85 8A                    ..
        cmp     #$03                            ; AAF6 C9 03                    ..
        rts                                     ; AAF8 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AAF9:
        lda     $00                           ; AAF9 A5 00                    ..
        pha                                     ; AAFB 48                       H
        lda     $01                             ; AAFC A5 01                    ..
        pha                                     ; AAFE 48                       H
        brk                                     ; AAFF 00                       .
        db   $07,$6F,$54                     ; AB00 07 6F 54                 .oT
; ----------------------------------------------------------------------------
        sta     $8A                             ; AB03 85 8A                    ..
        pla                                     ; AB05 68                       h
        sta     $01                             ; AB06 85 01                    ..
        pla                                     ; AB08 68                       h
        sta     $00                           ; AB09 85 00                    ..
        lda     $8A                             ; AB0B A5 8A                    ..
        cmp     #$03                            ; AB0D C9 03                    ..
        rts                                     ; AB0F 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AB10:
        jsr     BattleSetupServices_Entry_AAF0  ; AB10 20 F0 AA                  ..
        bcs     BattleSetupServices_Branch_AB35 ; AB13 B0 20                    .
        tax                                     ; AB15 AA                       .
        brk                                     ; AB16 00                       .
        db   $01,$6F,$56                     ; AB17 01 6F 56                 .oV
; ----------------------------------------------------------------------------
        cmp     #$08                            ; AB1A C9 08                    ..
        bcs     BattleSetupServices_Branch_AB35 ; AB1C B0 17                    ..
BattleSetupServices_Entry_AB1E:
        pha                                     ; AB1E 48                       H
        jsr     BattleSetupServices_Entry_AD15  ; AB1F 20 15 AD                  ..
        lda     $AD82                           ; AB22 AD 82 AD                 ...
        ldy     $AD83                           ; AB25 AC 83 AD                 ...
        ldx     #$00                            ; AB28 A2 00                    ..
        jsr     AddWordToPointer                ; AB2A 20 1D C8                  ..
        pla                                     ; AB2D 68                       h
        ldy     #$00                            ; AB2E A0 00                    ..
        sta     ($00),y                       ; AB30 91 00                    ..
        jsr     BattleSetupServices_Entry_ACDF  ; AB32 20 DF AC                  ..
BattleSetupServices_Branch_AB35:
        rts                                     ; AB35 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AB36:
        jsr     BattleSetupServices_Entry_AAF9  ; AB36 20 F9 AA                  ..
        bcs     BattleSetupServices_Branch_AB35 ; AB39 B0 FA                    ..
        jsr     BattleSetupServices_Entry_AD3F  ; AB3B 20 3F AD                  ?.
        jsr     BattleSetupServices_Entry_AD15  ; AB3E 20 15 AD                  ..
BattleSetupServices_Branch_AB41:
        ldy     #$00                            ; AB41 A0 00                    ..
        tya                                     ; AB43 98                       .
        sta     ($00),y                       ; AB44 91 00                    ..
        jsr     BattleSetupServices_Entry_AD03  ; AB46 20 03 AD                  ..
        bne     BattleSetupServices_Branch_AB41 ; AB49 D0 F6                    ..
        brk                                     ; AB4B 00                       .
        db   $07,$6F,$58                     ; AB4C 07 6F 58                 .oX
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_AD15  ; AB4F 20 15 AD                  ..
        lda     $AD84                           ; AB52 AD 84 AD                 ...
        ldy     $AD85                           ; AB55 AC 85 AD                 ...
        ldx     #$00                            ; AB58 A2 00                    ..
        jsr     AddWordToPointer                ; AB5A 20 1D C8                  ..
        lda     $00                           ; AB5D A5 00                    ..
        sta     $07B5                           ; AB5F 8D B5 07                 ...
        lda     $01                             ; AB62 A5 01                    ..
        sta     $07B6                           ; AB64 8D B6 07                 ...
        brk                                     ; AB67 00                       .
        db   $07,$6F,$57                     ; AB68 07 6F 57                 .oW
; ----------------------------------------------------------------------------
        brk                                     ; AB6B 00                       .
        db   $07,$6F,$59                     ; AB6C 07 6F 59                 .oY
; ----------------------------------------------------------------------------
        cmp     #$02                            ; AB6F C9 02                    ..
        bcs     BattleSetupServices_Branch_ABBE ; AB71 B0 4B                    .K
        pha                                     ; AB73 48                       H
        jsr     BattleSetupServices_Entry_AD15  ; AB74 20 15 AD                  ..
        lda     $AD86                           ; AB77 AD 86 AD                 ...
        ldy     $AD87                           ; AB7A AC 87 AD                 ...
        ldx     #$00                            ; AB7D A2 00                    ..
        jsr     AddWordToPointer                ; AB7F 20 1D C8                  ..
        pla                                     ; AB82 68                       h
        ldy     #$00                            ; AB83 A0 00                    ..
        sta     ($00),y                       ; AB85 91 00                    ..
        ldx     $8A                             ; AB87 A6 8A                    ..
        brk                                     ; AB89 00                       .
        db   $01,$6F,$56                     ; AB8A 01 6F 56                 .oV
; ----------------------------------------------------------------------------
        cmp     #$08                            ; AB8D C9 08                    ..
        bcs     BattleSetupServices_Branch_ABBE ; AB8F B0 2D                    .-
        jsr     BattleSetupServices_Entry_AB1E  ; AB91 20 1E AB                  ..
        jsr     BattleSetupServices_Entry_ACDF  ; AB94 20 DF AC                  ..
        lda     $8A                             ; AB97 A5 8A                    ..
        sta     $6BDC                           ; AB99 8D DC 6B                 ..k
        jsr     BattleSetupServices_Entry_AC22  ; AB9C 20 22 AC                  ".
        lda     #$42                            ; AB9F A9 42                    .B
        sta     $6285                           ; ABA1 8D 85 62                 ..b
        ldx     #$08                            ; ABA4 A2 08                    ..
BattleSetupServices_Branch_ABA6:
        txa                                     ; ABA6 8A                       .
        pha                                     ; ABA7 48                       H
        brk                                     ; ABA8 00                       .
        db   $11,$3F                         ; ABA9 11 3F                    .?
; ----------------------------------------------------------------------------
        ldy     #$05                            ; ABAB A0 05                    ..
        lda     #$01                            ; ABAD A9 01                    ..
        sta     ($79),y                         ; ABAF 91 79                    .y
        pla                                     ; ABB1 68                       h
        dex                                     ; ABB2 CA                       .
        bpl     BattleSetupServices_Branch_ABA6 ; ABB3 10 F1                    ..
        brk                                     ; ABB5 00                       .
        db   $05,$5F                         ; ABB6 05 5F                    ._
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_AC53  ; ABB8 20 53 AC                  S.
        jmp     BattleSetupServices_Branch_AADC ; ABBB 4C DC AA                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_ABBE:
        jmp     BattleSetupServices_Branch_AC10 ; ABBE 4C 10 AC                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_ABC1:
        jsr     BattleSetupServices_Entry_AAF0  ; ABC1 20 F0 AA                  ..
        bcs     BattleSetupServices_Branch_ABE8 ; ABC4 B0 22                    ."
        jsr     BattleSetupServices_Entry_AD15  ; ABC6 20 15 AD                  ..
        jsr     BattleSetupServices_Entry_AAF9  ; ABC9 20 F9 AA                  ..
        bcs     BattleSetupServices_Branch_ABE8 ; ABCC B0 1A                    ..
        jsr     BattleSetupServices_Entry_AD1A  ; ABCE 20 1A AD                  ..
        jsr     BattleSetupServices_Entry_AD3F  ; ABD1 20 3F AD                  ?.
BattleSetupServices_Branch_ABD4:
        ldy     #$00                            ; ABD4 A0 00                    ..
        lda     ($00),y                       ; ABD6 B1 00                    ..
        sta     ($04),y                         ; ABD8 91 04                    ..
        inc     $04                             ; ABDA E6 04                    ..
        bne     BattleSetupServices_Branch_ABE0 ; ABDC D0 02                    ..
        inc     $05                             ; ABDE E6 05                    ..
BattleSetupServices_Branch_ABE0:
        jsr     BattleSetupServices_Entry_AD03  ; ABE0 20 03 AD                  ..
        bne     BattleSetupServices_Branch_ABD4 ; ABE3 D0 EF                    ..
        jsr     BattleSetupServices_Entry_AA5B  ; ABE5 20 5B AA                  [.
BattleSetupServices_Branch_ABE8:
        rts                                     ; ABE8 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_ABE9:
        jsr     BattleSetupServices_Entry_AAF0  ; ABE9 20 F0 AA                  ..
        bcs     BattleSetupServices_Branch_AC00 ; ABEC B0 12                    ..
        ldx     $8A                             ; ABEE A6 8A                    ..
        brk                                     ; ABF0 00                       .
        db   $01,$6F,$5A                     ; ABF1 01 6F 5A                 .oZ
; ----------------------------------------------------------------------------
        brk                                     ; ABF4 00                       .
        db   $07,$6F,$48                     ; ABF5 07 6F 48                 .oH
; ----------------------------------------------------------------------------
        bne     BattleSetupServices_Branch_AC00 ; ABF8 D0 06                    ..
        jsr     BattleSetupServices_Entry_AC09  ; ABFA 20 09 AC                  ..
        jsr     BattleSetupServices_Entry_AA5B  ; ABFD 20 5B AA                  [.
BattleSetupServices_Branch_AC00:
        rts                                     ; AC00 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AC01:
        lda     #$10                            ; AC01 A9 10                    ..
        bne     BattleSetupServices_Branch_AC0B ; AC03 D0 06                    ..
BattleSetupServices_Entry_AC05:
        lda     #$40                            ; AC05 A9 40                    .@
        bne     BattleSetupServices_Branch_AC0B ; AC07 D0 02                    ..
BattleSetupServices_Entry_AC09:
        lda     #$20                            ; AC09 A9 20                    .
BattleSetupServices_Branch_AC0B:
        ldx     $8A                             ; AC0B A6 8A                    ..
        sta     $6BD9,x                         ; AC0D 9D D9 6B                 ..k
BattleSetupServices_Branch_AC10:
        jsr     BattleSetupServices_Entry_AD15  ; AC10 20 15 AD                  ..
        jsr     BattleSetupServices_Entry_AD3F  ; AC13 20 3F AD                  ?.
BattleSetupServices_Branch_AC16:
        ldy     #$00                            ; AC16 A0 00                    ..
        lda     #$4B                            ; AC18 A9 4B                    .K
        sta     ($00),y                       ; AC1A 91 00                    ..
        jsr     BattleSetupServices_Entry_AD03  ; AC1C 20 03 AD                  ..
        bne     BattleSetupServices_Branch_AC16 ; AC1F D0 F5                    ..
        rts                                     ; AC21 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AC22:
        jsr     BattleSetupServices_Entry_AD15  ; AC22 20 15 AD                  ..
        lda     $AD8A                           ; AC25 AD 8A AD                 ...
        sta     $04                             ; AC28 85 04                    ..
        lda     $AD8B                           ; AC2A AD 8B AD                 ...
        sta     $05                             ; AC2D 85 05                    ..
        jsr     BattleSetupServices_Entry_AD34  ; AC2F 20 34 AD                  4.
        ldx     #$00                            ; AC32 A2 00                    ..
        lda     #$02                            ; AC34 A9 02                    ..
        jsr     AddByteToPointer                ; AC36 20 13 C8                  ..
BattleSetupServices_Entry_AC39:
        jsr     BattleSetupServices_Entry_AD34  ; AC39 20 34 AD                  4.
BattleSetupServices_Branch_AC3C:
        ldy     #$00                            ; AC3C A0 00                    ..
        lda     ($00),y                       ; AC3E B1 00                    ..
        sta     ($04),y                         ; AC40 91 04                    ..
        inc     $04                             ; AC42 E6 04                    ..
        bne     BattleSetupServices_Branch_AC48 ; AC44 D0 02                    ..
        inc     $05                             ; AC46 E6 05                    ..
BattleSetupServices_Branch_AC48:
        jsr     BattleSetupServices_Entry_AD03  ; AC48 20 03 AD                  ..
        bne     BattleSetupServices_Branch_AC3C ; AC4B D0 EF                    ..
        lda     $8A                             ; AC4D A5 8A                    ..
        sta     $6BDC                           ; AC4F 8D DC 6B                 ..k
        rts                                     ; AC52 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AC53:
        lda     $6BDC                           ; AC53 AD DC 6B                 ..k
        sta     $8A                             ; AC56 85 8A                    ..
        jsr     BattleSetupServices_Entry_AD1A  ; AC58 20 1A AD                  ..
        lda     $AD8A                           ; AC5B AD 8A AD                 ...
        sta     $00                           ; AC5E 85 00                    ..
        lda     $AD8B                           ; AC60 AD 8B AD                 ...
        sta     $01                             ; AC63 85 01                    ..
        ldx     #$04                            ; AC65 A2 04                    ..
        lda     #$02                            ; AC67 A9 02                    ..
        jsr     AddByteToPointer                ; AC69 20 13 C8                  ..
        jsr     BattleSetupServices_Entry_AC39  ; AC6C 20 39 AC                  9.
        jsr     BattleSetupServices_Entry_ACDF  ; AC6F 20 DF AC                  ..
        rts                                     ; AC72 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AC73:
        ldx     #$0C                            ; AC73 A2 0C                    ..
BattleSetupServices_Branch_AC75:
        lda     $AD71,x                         ; AC75 BD 71 AD                 .q.
        cmp     $6BBF,x                         ; AC78 DD BF 6B                 ..k
        beq     BattleSetupServices_Branch_AC82 ; AC7B F0 05                    ..
        cmp     $6BCC,x                         ; AC7D DD CC 6B                 ..k
        bne     BattleSetupServices_Branch_AC8A ; AC80 D0 08                    ..
BattleSetupServices_Branch_AC82:
        dex                                     ; AC82 CA                       .
        bpl     BattleSetupServices_Branch_AC75 ; AC83 10 F0                    ..
        jsr     BattleSetupServices_Entry_AC8C  ; AC85 20 8C AC                  ..
        sec                                     ; AC88 38                       8
        rts                                     ; AC89 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_AC8A:
        clc                                     ; AC8A 18                       .
        rts                                     ; AC8B 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AC8C:
        ldx     #$0C                            ; AC8C A2 0C                    ..
BattleSetupServices_Branch_AC8E:
        lda     $AD71,x                         ; AC8E BD 71 AD                 .q.
        sta     $6BBF,x                         ; AC91 9D BF 6B                 ..k
        sta     $6BCC,x                         ; AC94 9D CC 6B                 ..k
        dex                                     ; AC97 CA                       .
        bpl     BattleSetupServices_Branch_AC8E ; AC98 10 F4                    ..
        rts                                     ; AC9A 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AC9B:
        jsr     BattleSetupServices_Entry_AD15  ; AC9B 20 15 AD                  ..
        lda     #$02                            ; AC9E A9 02                    ..
        ldx     #$00                            ; ACA0 A2 00                    ..
        jsr     AddByteToPointer                ; ACA2 20 13 C8                  ..
        jsr     BattleSetupServices_Entry_AD34  ; ACA5 20 34 AD                  4.
        lda     #$3A                            ; ACA8 A9 3A                    .:
        sta     $12                             ; ACAA 85 12                    ..
        sta     $13                             ; ACAC 85 13                    ..
BattleSetupServices_Branch_ACAE:
        ldy     #$00                            ; ACAE A0 00                    ..
        lda     ($00),y                       ; ACB0 B1 00                    ..
        sta     $16                             ; ACB2 85 16                    ..
        jsr     UpperFixedEngine_Entry_C8AD     ; ACB4 20 AD C8                  ..
        jsr     BattleSetupServices_Entry_AD03  ; ACB7 20 03 AD                  ..
        bne     BattleSetupServices_Branch_ACAE ; ACBA D0 F2                    ..
        rts                                     ; ACBC 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_ACBD:
        jsr     BattleSetupServices_Entry_ACF1  ; ACBD 20 F1 AC                  ..
        bcc     BattleSetupServices_Branch_ACD9 ; ACC0 90 17                    ..
        jsr     BattleSetupServices_Entry_AC9B  ; ACC2 20 9B AC                  ..
        jsr     BattleSetupServices_Entry_AD15  ; ACC5 20 15 AD                  ..
        sec                                     ; ACC8 38                       8
        ldy     #$00                            ; ACC9 A0 00                    ..
        lda     $12                             ; ACCB A5 12                    ..
        sbc     ($00),y                       ; ACCD F1 00                    ..
        iny                                     ; ACCF C8                       .
        lda     $13                             ; ACD0 A5 13                    ..
        sbc     ($00),y                       ; ACD2 F1 00                    ..
        bne     BattleSetupServices_Branch_ACDC ; ACD4 D0 06                    ..
        lda     #$00                            ; ACD6 A9 00                    ..
        rts                                     ; ACD8 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_ACD9:
        lda     #$01                            ; ACD9 A9 01                    ..
        rts                                     ; ACDB 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_ACDC:
        lda     #$80                            ; ACDC A9 80                    ..
        rts                                     ; ACDE 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_ACDF:
        jsr     BattleSetupServices_Entry_AC9B  ; ACDF 20 9B AC                  ..
        jsr     BattleSetupServices_Entry_AD15  ; ACE2 20 15 AD                  ..
        ldy     #$00                            ; ACE5 A0 00                    ..
        lda     $12                             ; ACE7 A5 12                    ..
        sta     ($00),y                       ; ACE9 91 00                    ..
        iny                                     ; ACEB C8                       .
        lda     $13                             ; ACEC A5 13                    ..
        sta     ($00),y                       ; ACEE 91 00                    ..
        rts                                     ; ACF0 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_ACF1:
        jsr     BattleSetupServices_Entry_AD15  ; ACF1 20 15 AD                  ..
        ldy     #$04                            ; ACF4 A0 04                    ..
BattleSetupServices_Branch_ACF6:
        lda     ($00),y                       ; ACF6 B1 00                    ..
        cmp     #$4B                            ; ACF8 C9 4B                    .K
        bne     BattleSetupServices_Branch_AD01 ; ACFA D0 05                    ..
        dey                                     ; ACFC 88                       .
        bpl     BattleSetupServices_Branch_ACF6 ; ACFD 10 F7                    ..
        clc                                     ; ACFF 18                       .
        rts                                     ; AD00 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_AD01:
        sec                                     ; AD01 38                       8
        rts                                     ; AD02 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AD03:
        inc     $00                           ; AD03 E6 00                    ..
        bne     BattleSetupServices_Branch_AD09 ; AD05 D0 02                    ..
        inc     $01                             ; AD07 E6 01                    ..
BattleSetupServices_Branch_AD09:
        ldx     #$02                            ; AD09 A2 02                    ..
        lda     #$01                            ; AD0B A9 01                    ..
        jsr     UpperFixedEngine_Entry_C7FB     ; AD0D 20 FB C7                  ..
        lda     $02                           ; AD10 A5 02                    ..
        ora     $03                             ; AD12 05 03                    ..
        rts                                     ; AD14 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AD15:
        ldx     #$00                            ; AD15 A2 00                    ..
        jmp     BattleSetupServices_Branch_AD1C ; AD17 4C 1C AD                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AD1A:
        ldx     #$04                            ; AD1A A2 04                    ..
BattleSetupServices_Branch_AD1C:
        lda     $AD80                           ; AD1C AD 80 AD                 ...
        sta     $00,x                         ; AD1F 95 00                    ..
        lda     $AD81                           ; AD21 AD 81 AD                 ...
        sta     $01,x                           ; AD24 95 01                    ..
        lda     $8A                             ; AD26 A5 8A                    ..
        jsr     MultiplyPointerWord             ; AD28 20 27 C8                  '.
        lda     $AD88                           ; AD2B AD 88 AD                 ...
        ldy     $AD89                           ; AD2E AC 89 AD                 ...
        jmp     AddWordToPointer                ; AD31 4C 1D C8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AD34:
        lda     $AD7E                           ; AD34 AD 7E AD                 .~.
        sta     $02                           ; AD37 85 02                    ..
        lda     $AD7F                           ; AD39 AD 7F AD                 ...
        sta     $03                             ; AD3C 85 03                    ..
        rts                                     ; AD3E 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AD3F:
        lda     $AD80                           ; AD3F AD 80 AD                 ...
        sta     $02                           ; AD42 85 02                    ..
        lda     $AD81                           ; AD44 AD 81 AD                 ...
        sta     $03                             ; AD47 85 03                    ..
        rts                                     ; AD49 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AD4A:
        ldx     #$6F                            ; AD4A A2 6F                    .o
        lda     #$00                            ; AD4C A9 00                    ..
BattleSetupServices_Branch_AD4E:
        sta     $0480,x                         ; AD4E 9D 80 04                 ...
        dex                                     ; AD51 CA                       .
        bpl     BattleSetupServices_Branch_AD4E ; AD52 10 FA                    ..
        lda     #$1D                            ; AD54 A9 1D                    ..
        sta     $04F3                           ; AD56 8D F3 04                 ...
        lda     #$D1                            ; AD59 A9 D1                    ..
        sta     $8B                             ; AD5B 85 8B                    ..
BattleSetupServices_Branch_AD5D:
        lda     $8B                             ; AD5D A5 8B                    ..
        sta     $04F2                           ; AD5F 8D F2 04                 ...
        brk                                     ; AD62 00                       .
        db   $12,$DF                         ; AD63 12 DF                    ..
; ----------------------------------------------------------------------------
        sec                                     ; AD65 38                       8
        lda     $8B                             ; AD66 A5 8B                    ..
        sbc     #$10                            ; AD68 E9 10                    ..
        sta     $8B                             ; AD6A 85 8B                    ..
        and     #$F0                            ; AD6C 29 F0                    ).
        bne     BattleSetupServices_Branch_AD5D ; AD6E D0 ED                    ..
        rts                                     ; AD70 60                       `
; ----------------------------------------------------------------------------
        db   $4D,$41,$4E,$41,$42,$55,$20,$59 ; AD71 4D 41 4E 41 42 55 20 59  MANABU Y
        db   $41,$4D,$41,$4E,$41             ; AD79 41 4D 41 4E 41           AMANA
        db   $EE                             ; AD7E EE                       .
        db   $02                             ; AD7F 02                       .
        db   $F0                             ; AD80 F0                       .
        db   $02                             ; AD81 02                       .
        db   $EF                             ; AD82 EF                       .
        db   $02                             ; AD83 02                       .
        db   $5E                             ; AD84 5E                       ^
        db   $01                             ; AD85 01                       .
        db   $5D                             ; AD86 5D                       ]
        db   $01                             ; AD87 01                       .
        db   $EF                             ; AD88 EF                       .
        db   $62                             ; AD89 62                       b
        db   $01                             ; AD8A 01                       .
        db   $60                             ; AD8B 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AD8C:
        ldx     SaveCurrentChapterMinus1        ; AD8C AE 5A 61                 .Za
        lda     $AE31,x                         ; AD8F BD 31 AE                 .1.
        sta     $00                           ; AD92 85 00                    ..
        brk                                     ; AD94 00                       .
        db   $62,$23,$4B                     ; AD95 62 23 4B                 b#K
; ----------------------------------------------------------------------------
        bne     BattleSetupServices_Branch_ADBB ; AD98 D0 21                    .!
        jsr     BattleSetupServices_Entry_AE0F  ; AD9A 20 0F AE                  ..
        bcs     BattleSetupServices_Branch_ADA9 ; AD9D B0 0A                    ..
        lda     SaveCurrentChapterMinus1        ; AD9F AD 5A 61                 .Za
        cmp     #$04                            ; ADA2 C9 04                    ..
        bcc     BattleSetupServices_Branch_ADA9 ; ADA4 90 03                    ..
        jsr     BattleSetupServices_Entry_AE23  ; ADA6 20 23 AE                  #.
BattleSetupServices_Branch_ADA9:
        brk                                     ; ADA9 00                       .
        db   $44,$93,$07                     ; ADAA 44 93 07                 D..
; ----------------------------------------------------------------------------
        brk                                     ; ADAD 00                       .
        db   $45,$93,$06                     ; ADAE 45 93 06                 E..
; ----------------------------------------------------------------------------
        brk                                     ; ADB1 00                       .
        db   $45,$93,$05                     ; ADB2 45 93 05                 E..
; ----------------------------------------------------------------------------
        brk                                     ; ADB5 00                       .
        db   $05,$53                         ; ADB6 05 53                    .S
; ----------------------------------------------------------------------------
        brk                                     ; ADB8 00                       .
        db   $0E,$53                         ; ADB9 0E 53                    .S
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_ADBB:
        ldy     SaveCurrentChapterMinus1        ; ADBB AC 5A 61                 .Za
        cpy     #$01                            ; ADBE C0 01                    ..
        beq     BattleSetupServices_Branch_ADCE ; ADC0 F0 0C                    ..
        cpy     #$02                            ; ADC2 C0 02                    ..
        bne     BattleSetupServices_Branch_ADD5 ; ADC4 D0 0F                    ..
        brk                                     ; ADC6 00                       .
        db   $66,$93,$6B                     ; ADC7 66 93 6B                 f.k
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_ADD5 ; ADCA 90 09                    ..
        bcs     BattleSetupServices_Branch_ADDE ; ADCC B0 10                    ..
BattleSetupServices_Branch_ADCE:
        lda     $6285                           ; ADCE AD 85 62                 ..b
        and     #$20                            ; ADD1 29 20                    )
        bne     BattleSetupServices_Branch_ADDF ; ADD3 D0 0A                    ..
BattleSetupServices_Branch_ADD5:
        lsr     $6159                           ; ADD5 4E 59 61                 NYa
        ror     $6158                           ; ADD8 6E 58 61                 nXa
        ror     SaveTotalGold                   ; ADDB 6E 57 61                 nWa
BattleSetupServices_Branch_ADDE:
        rts                                     ; ADDE 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_ADDF:
        lda     #$07                            ; ADDF A9 07                    ..
        sta     $00                           ; ADE1 85 00                    ..
        jsr     BattleSetupServices_Entry_AE0F  ; ADE3 20 0F AE                  ..
        bcc     BattleSetupServices_Branch_AE04 ; ADE6 90 1C                    ..
        brk                                     ; ADE8 00                       .
        db   $44,$93,$07                     ; ADE9 44 93 07                 D..
; ----------------------------------------------------------------------------
        brk                                     ; ADEC 00                       .
        db   $45,$93,$06                     ; ADED 45 93 06                 E..
; ----------------------------------------------------------------------------
        brk                                     ; ADF0 00                       .
        db   $45,$93,$05                     ; ADF1 45 93 05                 E..
; ----------------------------------------------------------------------------
        ldy     #$FF                            ; ADF4 A0 FF                    ..
        sty     $70                             ; ADF6 84 70                    .p
        tya                                     ; ADF8 98                       .
        brk                                     ; ADF9 00                       .
        db   $04,$73                         ; ADFA 04 73                    .s
; ----------------------------------------------------------------------------
        iny                                     ; ADFC C8                       .
        sty     $70                             ; ADFD 84 70                    .p
        iny                                     ; ADFF C8                       .
        tya                                     ; AE00 98                       .
        brk                                     ; AE01 00                       .
        db   $02,$73                         ; AE02 02 73                    .s
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_AE04:
        rts                                     ; AE04 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AE05:
        sta     $00                           ; AE05 85 00                    ..
        brk                                     ; AE07 00                       .
        db   $62,$33                         ; AE08 62 33                    b3
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AE13 ; AE0A 4C 13 AE                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AE0D:
        sta     $00                           ; AE0D 85 00                    ..
BattleSetupServices_Entry_AE0F:
        brk                                     ; AE0F 00                       .
        db   $62,$23,$40                     ; AE10 62 23 40                 b#@
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_AE13:
        sta     $01                             ; AE13 85 01                    ..
        ldx     #$00                            ; AE15 A2 00                    ..
BattleSetupServices_Branch_AE17:
        brk                                     ; AE17 00                       .
        db   $2B,$53                         ; AE18 2B 53                    +S
; ----------------------------------------------------------------------------
        cmp     $00                           ; AE1A C5 00                    ..
        beq     BattleSetupServices_Branch_AE2F ; AE1C F0 11                    ..
        inx                                     ; AE1E E8                       .
        cpx     $01                             ; AE1F E4 01                    ..
        bcc     BattleSetupServices_Branch_AE17 ; AE21 90 F4                    ..
BattleSetupServices_Entry_AE23:
        ldx     #$00                            ; AE23 A2 00                    ..
        stx     $6E                             ; AE25 86 6E                    .n
        lda     #$08                            ; AE27 A9 08                    ..
        brk                                     ; AE29 00                       .
        db   $2D,$0F                         ; AE2A 2D 0F                    -.
; ----------------------------------------------------------------------------
        tax                                     ; AE2C AA                       .
        clc                                     ; AE2D 18                       .
        rts                                     ; AE2E 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_AE2F:
        sec                                     ; AE2F 38                       8
        rts                                     ; AE30 60                       `
; ----------------------------------------------------------------------------
        db   $06,$07,$05,$03,$00             ; AE31 06 07 05 03 00           .....
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_AE36:
        lda     $6279                           ; AE36 AD 79 62                 .yb
        sta     $6F                             ; AE39 85 6F                    .o
        lda     #$00                            ; AE3B A9 00                    ..
        sta     $FD                             ; AE3D 85 FD                    ..
        sta     $FE                             ; AE3F 85 FE                    ..
        sta     $FF                             ; AE41 85 FF                    ..
        lda     #$2C                            ; AE43 A9 2C                    .,
        jsr     BattleSetupServices_Entry_B526  ; AE45 20 26 B5                  &.
        sta     $00                           ; AE48 85 00                    ..
        brk                                     ; AE4A 00                       .
        db   $35,$0F                         ; AE4B 35 0F                    5.
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_AE91 ; AE4D 90 42                    .B
        lda     $00                           ; AE4F A5 00                    ..
        cmp     #$55                            ; AE51 C9 55                    .U
        beq     BattleSetupServices_Branch_AE60 ; AE53 F0 0B                    ..
        cmp     #$5E                            ; AE55 C9 5E                    .^
        beq     BattleSetupServices_Branch_AE60 ; AE57 F0 07                    ..
        pha                                     ; AE59 48                       H
        jsr     BattleSetupServices_Entry_B547  ; AE5A 20 47 B5                  G.
        pla                                     ; AE5D 68                       h
        bcs     BattleSetupServices_Branch_AE8E ; AE5E B0 2E                    ..
BattleSetupServices_Branch_AE60:
        pha                                     ; AE60 48                       H
        cmp     #$56                            ; AE61 C9 56                    .V
        beq     BattleSetupServices_Branch_AE83 ; AE63 F0 1E                    ..
        cmp     #$7B                            ; AE65 C9 7B                    .{
        beq     BattleSetupServices_Branch_AE83 ; AE67 F0 1A                    ..
        cmp     #$5C                            ; AE69 C9 5C                    .\
        beq     BattleSetupServices_Branch_AE83 ; AE6B F0 16                    ..
        lda     $6E                             ; AE6D A5 6E                    .n
        pha                                     ; AE6F 48                       H
        lda     $6F                             ; AE70 A5 6F                    .o
        pha                                     ; AE72 48                       H
        lda     $F6                             ; AE73 A5 F6                    ..
        pha                                     ; AE75 48                       H
        brk                                     ; AE76 00                       .
        db   $07,$6F,$50                     ; AE77 07 6F 50                 .oP
; ----------------------------------------------------------------------------
        pla                                     ; AE7A 68                       h
        sta     $F6                             ; AE7B 85 F6                    ..
        pla                                     ; AE7D 68                       h
        sta     $6F                             ; AE7E 85 6F                    .o
        pla                                     ; AE80 68                       h
        sta     $6E                             ; AE81 85 6E                    .n
BattleSetupServices_Branch_AE83:
        pla                                     ; AE83 68                       h
        sta     $00                           ; AE84 85 00                    ..
        jsr     BattleSetupServices_Entry_AF0F  ; AE86 20 0F AF                  ..
        bcc     BattleSetupServices_Branch_AE8E ; AE89 90 03                    ..
        jsr     BattleSetupServices_Entry_AF04  ; AE8B 20 04 AF                  ..
BattleSetupServices_Branch_AE8E:
        jmp     UpperFixedEngine_Entry_D1F3     ; AE8E 4C F3 D1                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_AE91:
        lda     $00                           ; AE91 A5 00                    ..
        pha                                     ; AE93 48                       H
        brk                                     ; AE94 00                       .
        db   $07,$6F,$50                     ; AE95 07 6F 50                 .oP
; ----------------------------------------------------------------------------
        pla                                     ; AE98 68                       h
        cmp     #$0B                            ; AE99 C9 0B                    ..
        beq     BattleSetupServices_Branch_AEF0 ; AE9B F0 53                    .S
        cmp     #$50                            ; AE9D C9 50                    .P
        bcc     BattleSetupServices_Branch_AEA5 ; AE9F 90 04                    ..
        cmp     #$53                            ; AEA1 C9 53                    .S
        bcc     BattleSetupServices_Branch_AEBB ; AEA3 90 16                    ..
BattleSetupServices_Branch_AEA5:
        sta     $FA                             ; AEA5 85 FA                    ..
        lda     $6278                           ; AEA7 AD 78 62                 .xb
        sta     $F9                             ; AEAA 85 F9                    ..
        brk                                     ; AEAC 00                       .
        db   $9E,$1B                         ; AEAD 9E 1B                    ..
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_B5EF  ; AEAF 20 EF B5                  ..
        brk                                     ; AEB2 00                       .
        db   $C5,$2B                         ; AEB3 C5 2B                    .+
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C8E1     ; AEB5 20 E1 C8                  ..
        jmp     BattleSetupServices_Branch_AE8E ; AEB8 4C 8E AE                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_AEBB:
        sta     $FA                             ; AEBB 85 FA                    ..
        lda     $6279                           ; AEBD AD 79 62                 .yb
        sta     $6F                             ; AEC0 85 6F                    .o
        lda     #$2C                            ; AEC2 A9 2C                    .,
        jsr     BattleSetupServices_Entry_B526  ; AEC4 20 26 B5                  &.
        lda     $73                             ; AEC7 A5 73                    .s
        bmi     BattleSetupServices_Branch_AED8 ; AEC9 30 0D                    0.
        lda     #$32                            ; AECB A9 32                    .2
        jsr     BattleSetupServices_Entry_B526  ; AECD 20 26 B5                  &.
        bpl     BattleSetupServices_Branch_AEDE ; AED0 10 0C                    ..
        ldx     #$01                            ; AED2 A2 01                    ..
        lda     #$9F                            ; AED4 A9 9F                    ..
        bne     BattleSetupServices_Branch_AEE6 ; AED6 D0 0E                    ..
BattleSetupServices_Branch_AED8:
        ldx     #$01                            ; AED8 A2 01                    ..
        lda     #$A0                            ; AEDA A9 A0                    ..
        bne     BattleSetupServices_Branch_AEE6 ; AEDC D0 08                    ..
BattleSetupServices_Branch_AEDE:
        lda     $FA                             ; AEDE A5 FA                    ..
        sta     $F9                             ; AEE0 85 F9                    ..
        ldx     #$02                            ; AEE2 A2 02                    ..
        lda     #$EA                            ; AEE4 A9 EA                    ..
BattleSetupServices_Branch_AEE6:
        brk                                     ; AEE6 00                       .
        db   $04,$6F                         ; AEE7 04 6F                    .o
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C8E1     ; AEE9 20 E1 C8                  ..
        clc                                     ; AEEC 18                       .
        jmp     BattleSetupServices_Branch_AE8E ; AEED 4C 8E AE                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_AEF0:
        lda     $6278                           ; AEF0 AD 78 62                 .xb
        sta     $F9                             ; AEF3 85 F9                    ..
        brk                                     ; AEF5 00                       .
        db   $E6,$2B                         ; AEF6 E6 2B                    .+
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_B5EF  ; AEF8 20 EF B5                  ..
        brk                                     ; AEFB 00                       .
        db   $C5,$2B                         ; AEFC C5 2B                    .+
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C8E1     ; AEFE 20 E1 C8                  ..
        jmp     BattleSetupServices_Branch_AE8E ; AF01 4C 8E AE                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AF04:
        lda     $6279                           ; AF04 AD 79 62                 .yb
        sta     $6F                             ; AF07 85 6F                    .o
        lda     #$30                            ; AF09 A9 30                    .0
        jsr     BattleSetupServices_Entry_B526  ; AF0B 20 26 B5                  &.
BattleSetupServices_Branch_AF0E:
        rts                                     ; AF0E 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AF0F:
        ldx     #$FF                            ; AF0F A2 FF                    ..
BattleSetupServices_Branch_AF11:
        inx                                     ; AF11 E8                       .
        lda     $B6BC,x                         ; AF12 BD BC B6                 ...
        cmp     #$FF                            ; AF15 C9 FF                    ..
        beq     BattleSetupServices_Branch_AF0E ; AF17 F0 F5                    ..
        cmp     $00                           ; AF19 C5 00                    ..
        bne     BattleSetupServices_Branch_AF11 ; AF1B D0 F4                    ..
        txa                                     ; AF1D 8A                       .
        sta     $6DF9                           ; AF1E 8D F9 6D                 ..m
        asl     a                               ; AF21 0A                       .
        tax                                     ; AF22 AA                       .
        lda     $B67A,x                         ; AF23 BD 7A B6                 .z.
        sta     $00                           ; AF26 85 00                    ..
        lda     $B67B,x                         ; AF28 BD 7B B6                 .{.
        sta     $01                             ; AF2B 85 01                    ..
        jmp     ($0000)                         ; AF2D 6C 00 00                 l..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AF30:
        jsr     BattleSetupServices_Entry_B571  ; AF30 20 71 B5                  q.
        jmp     BattleSetupServices_Branch_AF39 ; AF33 4C 39 AF                 L9.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AF36:
        jsr     BattleSetupServices_Entry_B571  ; AF36 20 71 B5                  q.
BattleSetupServices_Branch_AF39:
        jsr     BattleSetupServices_Entry_B5EF  ; AF39 20 EF B5                  ..
        lda     #$01                            ; AF3C A9 01                    ..
        jsr     BattleSetupServices_Entry_B533  ; AF3E 20 33 B5                  3.
        bcs     BattleSetupServices_Branch_AF6D ; AF41 B0 2A                    .*
        jsr     BattleSetupServices_Entry_AF5A  ; AF43 20 5A AF                  Z.
        jsr     BattleSetupServices_Entry_B56D  ; AF46 20 6D B5                  m.
BattleSetupServices_Branch_AF49:
        brk                                     ; AF49 00                       .
        db   $27,$0F                         ; AF4A 27 0F                    '.
; ----------------------------------------------------------------------------
        ldx     #$14                            ; AF4C A2 14                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; AF4E 20 0C C9                  ..
        brk                                     ; AF51 00                       .
        db   $07,$6F,$10                     ; AF52 07 6F 10                 .o.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_AF55:
        jsr     UpperFixedEngine_Entry_C8E1     ; AF55 20 E1 C8                  ..
        sec                                     ; AF58 38                       8
        rts                                     ; AF59 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AF5A:
        lda     #$0B                            ; AF5A A9 0B                    ..
        jsr     BattleSetupServices_Entry_B521  ; AF5C 20 21 B5                  !.
        adc     #$1E                            ; AF5F 69 1E                    i.
        sta     $6F                             ; AF61 85 6F                    .o
        lda     #$00                            ; AF63 A9 00                    ..
        sta     $70                             ; AF65 85 70                    .p
        lda     #$02                            ; AF67 A9 02                    ..
        jsr     BattleSetupServices_Entry_B52C  ; AF69 20 2C B5                  ,.
        rts                                     ; AF6C 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_AF6D:
        jsr     BattleSetupServices_Entry_B569  ; AF6D 20 69 B5                  i.
        jmp     BattleSetupServices_Branch_AF55 ; AF70 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AF73:
        ldx     #$00                            ; AF73 A2 00                    ..
        stx     $627A                           ; AF75 8E 7A 62                 .zb
        lda     $72                             ; AF78 A5 72                    .r
        sta     $6279                           ; AF7A 8D 79 62                 .yb
        jsr     BattleSetupServices_Entry_AF5A  ; AF7D 20 5A AF                  Z.
        lda     $6279                           ; AF80 AD 79 62                 .yb
        sta     $6F                             ; AF83 85 6F                    .o
        brk                                     ; AF85 00                       .
        db   $30,$33                         ; AF86 30 33                    03
; ----------------------------------------------------------------------------
        rts                                     ; AF88 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AF89:
        jsr     BattleSetupServices_Entry_B571  ; AF89 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B5EF  ; AF8C 20 EF B5                  ..
        lda     #$05                            ; AF8F A9 05                    ..
        sta     $6F                             ; AF91 85 6F                    .o
        lda     #$45                            ; AF93 A9 45                    .E
        jsr     BattleSetupServices_Entry_B52C  ; AF95 20 2C B5                  ,.
        bcc     BattleSetupServices_Branch_AF6D ; AF98 90 D3                    ..
        jsr     BattleSetupServices_Entry_B56D  ; AF9A 20 6D B5                  m.
        jmp     BattleSetupServices_Branch_AF55 ; AF9D 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AFA0:
        ldx     $F6                             ; AFA0 A6 F6                    ..
        brk                                     ; AFA2 00                       .
        db   $07,$6F,$16                     ; AFA3 07 6F 16                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; AFA6 C9 FF                    ..
        beq     BattleSetupServices_Branch_AFCE ; AFA8 F0 24                    .$
        pha                                     ; AFAA 48                       H
        brk                                     ; AFAB 00                       .
        db   $07,$6F,$50                     ; AFAC 07 6F 50                 .oP
; ----------------------------------------------------------------------------
        stx     $F6                             ; AFAF 86 F6                    ..
        jsr     BattleSetupServices_Entry_B571  ; AFB1 20 71 B5                  q.
        ldx     #$0C                            ; AFB4 A2 0C                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; AFB6 20 0C C9                  ..
        pla                                     ; AFB9 68                       h
        jsr     BattleSetupServices_Entry_A974  ; AFBA 20 74 A9                  t.
        bcs     BattleSetupServices_Branch_AFD7 ; AFBD B0 18                    ..
        brk                                     ; AFBF 00                       .
        db   $24,$EF                         ; AFC0 24 EF                    $.
; ----------------------------------------------------------------------------
        bcs     BattleSetupServices_Branch_AFD0 ; AFC2 B0 0C                    ..
        brk                                     ; AFC4 00                       .
        db   $07,$6F,$50                     ; AFC5 07 6F 50                 .oP
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_B56D  ; AFC8 20 6D B5                  m.
BattleSetupServices_Branch_AFCB:
        jsr     UpperFixedEngine_Entry_C8E1     ; AFCB 20 E1 C8                  ..
BattleSetupServices_Branch_AFCE:
        clc                                     ; AFCE 18                       .
        rts                                     ; AFCF 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_AFD0:
        lda     #$00                            ; AFD0 A9 00                    ..
        sta     $0539                           ; AFD2 8D 39 05                 .9.
        sec                                     ; AFD5 38                       8
        rts                                     ; AFD6 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_AFD7:
        ldx     #$00                            ; AFD7 A2 00                    ..
BattleSetupServices_Branch_AFD9:
        lda     $AFEA,x                         ; AFD9 BD EA AF                 ...
        sta     $0554,x                         ; AFDC 9D 54 05                 .T.
        inx                                     ; AFDF E8                       .
        cpx     #$0F                            ; AFE0 E0 0F                    ..
        bne     BattleSetupServices_Branch_AFD9 ; AFE2 D0 F5                    ..
        brk                                     ; AFE4 00                       .
        db   $F4,$3B                         ; AFE5 F4 3B                    .;
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AFCB ; AFE7 4C CB AF                 L..
; ----------------------------------------------------------------------------
        db   $3B,$13,$18,$11,$00,$19,$10,$00 ; AFEA 3B 13 18 11 00 19 10 00  ;.......
        db   $3B,$23,$20,$0F,$1C,$18,$40     ; AFF2 3B 23 20 0F 1C 18 40     ;# ...@
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_AFF9:
        lda     #$11                            ; AFF9 A9 11                    ..
        bne     BattleSetupServices_Branch_B003 ; AFFB D0 06                    ..
BattleSetupServices_Entry_AFFD:
        lda     #$13                            ; AFFD A9 13                    ..
        bne     BattleSetupServices_Branch_B003 ; AFFF D0 02                    ..
BattleSetupServices_Entry_B001:
        lda     #$24                            ; B001 A9 24                    .$
BattleSetupServices_Branch_B003:
        pha                                     ; B003 48                       H
        jsr     BattleSetupServices_Entry_B571  ; B004 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B021  ; B007 20 21 B0                  !.
        jsr     BattleSetupServices_Entry_B5EF  ; B00A 20 EF B5                  ..
        pla                                     ; B00D 68                       h
        jsr     BattleSetupServices_Entry_B52C  ; B00E 20 2C B5                  ,.
        beq     BattleSetupServices_Branch_B01B ; B011 F0 08                    ..
        sta     $FD                             ; B013 85 FD                    ..
        jsr     BattleSetupServices_Entry_B56D  ; B015 20 6D B5                  m.
        jmp     BattleSetupServices_Branch_AF55 ; B018 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B01B:
        brk                                     ; B01B 00                       .
        db   $C5,$2B                         ; B01C C5 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AF55 ; B01E 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B021:
        lda     #$03                            ; B021 A9 03                    ..
        jsr     BattleSetupServices_Entry_B521  ; B023 20 21 B5                  !.
        adc     #$01                            ; B026 69 01                    i.
        sta     $6F                             ; B028 85 6F                    .o
        lda     #$00                            ; B02A A9 00                    ..
        sta     $70                             ; B02C 85 70                    .p
        sta     $FE                             ; B02E 85 FE                    ..
        sta     $FF                             ; B030 85 FF                    ..
        rts                                     ; B032 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B033:
        jsr     BattleSetupServices_Entry_B571  ; B033 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B5EF  ; B036 20 EF B5                  ..
        lda     #$03                            ; B039 A9 03                    ..
        jsr     BattleSetupServices_Entry_B521  ; B03B 20 21 B5                  !.
        adc     #$04                            ; B03E 69 04                    i.
        sta     $6F                             ; B040 85 6F                    .o
        lda     #$00                            ; B042 A9 00                    ..
        sta     $70                             ; B044 85 70                    .p
        lda     #$03                            ; B046 A9 03                    ..
BattleSetupServices_Branch_B048:
        jsr     BattleSetupServices_Entry_B52C  ; B048 20 2C B5                  ,.
        beq     BattleSetupServices_Branch_B05B ; B04B F0 0E                    ..
        sta     $FD                             ; B04D 85 FD                    ..
        lda     #$00                            ; B04F A9 00                    ..
        sta     $FE                             ; B051 85 FE                    ..
        sta     $FF                             ; B053 85 FF                    ..
        jsr     BattleSetupServices_Entry_B56D  ; B055 20 6D B5                  m.
        jmp     BattleSetupServices_Branch_AF55 ; B058 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B05B:
        brk                                     ; B05B 00                       .
        db   $C5,$2B                         ; B05C C5 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AF55 ; B05E 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B061:
        jsr     BattleSetupServices_Entry_B571  ; B061 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B5EF  ; B064 20 EF B5                  ..
        lda     #$03                            ; B067 A9 03                    ..
        jsr     BattleSetupServices_Entry_B521  ; B069 20 21 B5                  !.
        adc     #$03                            ; B06C 69 03                    i.
        sta     $6F                             ; B06E 85 6F                    .o
        lda     #$0A                            ; B070 A9 0A                    ..
        bne     BattleSetupServices_Branch_B048 ; B072 D0 D4                    ..
BattleSetupServices_Entry_B074:
        jsr     BattleSetupServices_Entry_B571  ; B074 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B5EF  ; B077 20 EF B5                  ..
        lda     #$06                            ; B07A A9 06                    ..
        sta     $6F                             ; B07C 85 6F                    .o
        lda     #$45                            ; B07E A9 45                    .E
        jsr     BattleSetupServices_Entry_B52C  ; B080 20 2C B5                  ,.
        bcc     BattleSetupServices_Branch_B08E ; B083 90 09                    ..
        jsr     BattleSetupServices_Entry_B56D  ; B085 20 6D B5                  m.
        brk                                     ; B088 00                       .
        db   $27,$EF                         ; B089 27 EF                    '.
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AF55 ; B08B 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B08E:
        brk                                     ; B08E 00                       .
        db   $C5,$2B                         ; B08F C5 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AF55 ; B091 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B094:
        jsr     BattleSetupServices_Entry_B571  ; B094 20 71 B5                  q.
        lda     #$0B                            ; B097 A9 0B                    ..
        jsr     BattleSetupServices_Entry_B521  ; B099 20 21 B5                  !.
        adc     #$14                            ; B09C 69 14                    i.
        sta     $6F                             ; B09E 85 6F                    .o
        lda     #$00                            ; B0A0 A9 00                    ..
        sta     $70                             ; B0A2 85 70                    .p
        sta     $FE                             ; B0A4 85 FE                    ..
        sta     $FF                             ; B0A6 85 FF                    ..
        lda     #$09                            ; B0A8 A9 09                    ..
        jsr     BattleSetupServices_Entry_B52C  ; B0AA 20 2C B5                  ,.
        sta     $FD                             ; B0AD 85 FD                    ..
        beq     BattleSetupServices_Branch_B0B7 ; B0AF F0 06                    ..
        jsr     BattleSetupServices_Entry_B56D  ; B0B1 20 6D B5                  m.
        jmp     BattleSetupServices_Branch_B0BA ; B0B4 4C BA B0                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B0B7:
        jsr     BattleSetupServices_Entry_B569  ; B0B7 20 69 B5                  i.
BattleSetupServices_Branch_B0BA:
        lda     #$08                            ; B0BA A9 08                    ..
        jsr     BattleSetupServices_Entry_B521  ; B0BC 20 21 B5                  !.
        bne     BattleSetupServices_Branch_B0CA ; B0BF D0 09                    ..
        brk                                     ; B0C1 00                       .
        db   $83,$2B                         ; B0C2 83 2B                    .+
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_B565  ; B0C4 20 65 B5                  e.
        jmp     BattleSetupServices_Branch_AF55 ; B0C7 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B0CA:
        jmp     BattleSetupServices_Branch_AFCB ; B0CA 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B0CD:
        jsr     BattleSetupServices_Entry_B571  ; B0CD 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B5EF  ; B0D0 20 EF B5                  ..
        lda     #$01                            ; B0D3 A9 01                    ..
        jsr     BattleSetupServices_Entry_B533  ; B0D5 20 33 B5                  3.
        bcs     BattleSetupServices_Branch_B101 ; B0D8 B0 27                    .'
        lda     #$06                            ; B0DA A9 06                    ..
        jsr     BattleSetupServices_Entry_B521  ; B0DC 20 21 B5                  !.
        adc     #$0A                            ; B0DF 69 0A                    i.
        sta     $6F                             ; B0E1 85 6F                    .o
        lda     #$00                            ; B0E3 A9 00                    ..
        sta     $70                             ; B0E5 85 70                    .p
        sta     $FE                             ; B0E7 85 FE                    ..
        sta     $FF                             ; B0E9 85 FF                    ..
        lda     #$09                            ; B0EB A9 09                    ..
        jsr     BattleSetupServices_Entry_B52C  ; B0ED 20 2C B5                  ,.
        sta     $FD                             ; B0F0 85 FD                    ..
        tax                                     ; B0F2 AA                       .
        beq     BattleSetupServices_Branch_B0FB ; B0F3 F0 06                    ..
        jsr     BattleSetupServices_Entry_B56D  ; B0F5 20 6D B5                  m.
        jmp     BattleSetupServices_Branch_AF55 ; B0F8 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B0FB:
        jsr     BattleSetupServices_Entry_B569  ; B0FB 20 69 B5                  i.
        jmp     BattleSetupServices_Branch_AF55 ; B0FE 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B101:
        jsr     BattleSetupServices_Entry_B565  ; B101 20 65 B5                  e.
        jmp     BattleSetupServices_Branch_AF55 ; B104 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B107:
        jsr     BattleSetupServices_Entry_B571  ; B107 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B5EF  ; B10A 20 EF B5                  ..
        lda     #$07                            ; B10D A9 07                    ..
        sta     $6F                             ; B10F 85 6F                    .o
        lda     #$44                            ; B111 A9 44                    .D
        jsr     BattleSetupServices_Entry_B52C  ; B113 20 2C B5                  ,.
        bcc     BattleSetupServices_Branch_B144 ; B116 90 2C                    .,
        lda     #$05                            ; B118 A9 05                    ..
        jsr     BattleSetupServices_Entry_B52C  ; B11A 20 2C B5                  ,.
        jsr     BattleSetupServices_Entry_B56D  ; B11D 20 6D B5                  m.
        brk                                     ; B120 00                       .
        db   $27,$0F                         ; B121 27 0F                    '.
; ----------------------------------------------------------------------------
        ldx     $627A                           ; B123 AE 7A 62                 .zb
        brk                                     ; B126 00                       .
        db   $6A,$73                         ; B127 6A 73                    js
; ----------------------------------------------------------------------------
        bne     BattleSetupServices_Branch_B13E ; B129 D0 13                    ..
        lda     $627A                           ; B12B AD 7A 62                 .zb
        pha                                     ; B12E 48                       H
        tax                                     ; B12F AA                       .
        brk                                     ; B130 00                       .
        db   $23,$EF                         ; B131 23 EF                    #.
; ----------------------------------------------------------------------------
        brk                                     ; B133 00                       .
        db   $0D,$87                         ; B134 0D 87                    ..
; ----------------------------------------------------------------------------
        pla                                     ; B136 68                       h
        tay                                     ; B137 A8                       .
        brk                                     ; B138 00                       .
        db   $26,$EF                         ; B139 26 EF                    &.
; ----------------------------------------------------------------------------
        brk                                     ; B13B 00                       .
        db   $27,$EF                         ; B13C 27 EF                    '.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B13E:
        brk                                     ; B13E 00                       .
        db   $45,$EF                         ; B13F 45 EF                    E.
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AF55 ; B141 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B144:
        jsr     BattleSetupServices_Entry_B569  ; B144 20 69 B5                  i.
        jmp     BattleSetupServices_Branch_AF55 ; B147 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B14A:
        jsr     BattleSetupServices_Entry_B571  ; B14A 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B5EF  ; B14D 20 EF B5                  ..
        lda     #$00                            ; B150 A9 00                    ..
        sta     $0539                           ; B152 8D 39 05                 .9.
        jsr     BattleSetupServices_Entry_B56D  ; B155 20 6D B5                  m.
        jsr     BattleSetupServices_Entry_B5EF  ; B158 20 EF B5                  ..
        lda     #$FF                            ; B15B A9 FF                    ..
        brk                                     ; B15D 00                       .
        db   $24,$EF                         ; B15E 24 EF                    $.
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_B171 ; B160 90 0F                    ..
        lda     #$FE                            ; B162 A9 FE                    ..
        brk                                     ; B164 00                       .
        db   $24,$EF                         ; B165 24 EF                    $.
; ----------------------------------------------------------------------------
        lda     $627B                           ; B167 AD 7B 62                 .{b
        and     #$FB                            ; B16A 29 FB                    ).
        sta     $627B                           ; B16C 8D 7B 62                 .{b
        clc                                     ; B16F 18                       .
        rts                                     ; B170 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B171:
        brk                                     ; B171 00                       .
        db   $07,$6F,$50                     ; B172 07 6F 50                 .oP
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_B569  ; B175 20 69 B5                  i.
        jmp     BattleSetupServices_Branch_AFCB ; B178 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B17B:
        jsr     BattleSetupServices_Entry_B571  ; B17B 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B5EF  ; B17E 20 EF B5                  ..
        brk                                     ; B181 00                       .
        db   $62,$23,$01                     ; B182 62 23 01                 b#.
; ----------------------------------------------------------------------------
        sta     $00                           ; B185 85 00                    ..
        lda     #$00                            ; B187 A9 00                    ..
        sta     $6E                             ; B189 85 6E                    .n
BattleSetupServices_Branch_B18B:
        brk                                     ; B18B 00                       .
        db   $05,$23,$01                     ; B18C 05 23 01                 .#.
; ----------------------------------------------------------------------------
        inc     $6E                             ; B18F E6 6E                    .n
        dec     $00                           ; B191 C6 00                    ..
        bne     BattleSetupServices_Branch_B18B ; B193 D0 F6                    ..
        jsr     BattleSetupServices_Entry_B56D  ; B195 20 6D B5                  m.
        jmp     BattleSetupServices_Branch_AF49 ; B198 4C 49 AF                 LI.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B19B:
        jsr     BattleSetupServices_Entry_B571  ; B19B 20 71 B5                  q.
        brk                                     ; B19E 00                       .
        db   $AA,$FB                         ; B19F AA FB                    ..
; ----------------------------------------------------------------------------
        ldx     #$78                            ; B1A1 A2 78                    .x
        jsr     UpperFixedEngine_Entry_C90C     ; B1A3 20 0C C9                  ..
        lda     $41                             ; B1A6 A5 41                    .A
        asl     a                               ; B1A8 0A                       .
        bcc     BattleSetupServices_Branch_B1D3 ; B1A9 90 28                    .(
        lda     $627D                           ; B1AB AD 7D 62                 .}b
        lsr     a                               ; B1AE 4A                       J
        bcs     BattleSetupServices_Branch_B1D3 ; B1AF B0 22                    ."
        lda     CurrentMapNumber                ; B1B1 A5 63                    .c
        cmp     #$00                            ; B1B3 C9 00                    ..
        bne     BattleSetupServices_Branch_B1D3 ; B1B5 D0 1C                    ..
        lda     CurrentSubmapNumber             ; B1B7 A5 64                    .d
        cmp     #$01                            ; B1B9 C9 01                    ..
        bne     BattleSetupServices_Branch_B1D3 ; B1BB D0 16                    ..
        ldx     #$00                            ; B1BD A2 00                    ..
BattleSetupServices_Branch_B1BF:
        lda     $B1E6,x                         ; B1BF BD E6 B1                 ...
        cmp     PlayerLocalX                    ; B1C2 C5 44                    .D
        bne     BattleSetupServices_Branch_B1CD ; B1C4 D0 07                    ..
        lda     $B1E7,x                         ; B1C6 BD E7 B1                 ...
        cmp     PlayerLocalY                    ; B1C9 C5 45                    .E
        beq     BattleSetupServices_Branch_B1D9 ; B1CB F0 0C                    ..
BattleSetupServices_Branch_B1CD:
        inx                                     ; B1CD E8                       .
        inx                                     ; B1CE E8                       .
        cpx     #$10                            ; B1CF E0 10                    ..
        bne     BattleSetupServices_Branch_B1BF ; B1D1 D0 EC                    ..
BattleSetupServices_Branch_B1D3:
        brk                                     ; B1D3 00                       .
        db   $4B,$0B                         ; B1D4 4B 0B                    K.
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AFCB ; B1D6 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B1D9:
        lda     $627D                           ; B1D9 AD 7D 62                 .}b
        ora     #$01                            ; B1DC 09 01                    ..
        sta     $627D                           ; B1DE 8D 7D 62                 .}b
        jsr     UpperFixedEngine_Entry_D218     ; B1E1 20 18 D2                  ..
        clc                                     ; B1E4 18                       .
        rts                                     ; B1E5 60                       `
; ----------------------------------------------------------------------------
        db   $17                             ; B1E6 17                       .
        db   $1D,$18,$1D,$19,$1D,$17,$1E,$17 ; B1E7 1D 18 1D 19 1D 17 1E 17  ........
        db   $1F,$17,$20,$17,$21,$17,$22     ; B1EF 1F 17 20 17 21 17 22     .. .!."
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B1F6:
        lda     #$7F                            ; B1F6 A9 7F                    ..
        sta     $6E41                           ; B1F8 8D 41 6E                 .An
        jsr     BattleSetupServices_Entry_B571  ; B1FB 20 71 B5                  q.
        jmp     BattleSetupServices_Branch_AF55 ; B1FE 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B201:
        lda     $6283                           ; B201 AD 83 62                 ..b
        and     #$0C                            ; B204 29 0C                    ).
        cmp     #$0C                            ; B206 C9 0C                    ..
        bne     BattleSetupServices_Branch_B264 ; B208 D0 5A                    .Z
        lda     CurrentMapNumber                ; B20A A5 63                    .c
        cmp     #$01                            ; B20C C9 01                    ..
        bne     BattleSetupServices_Branch_B264 ; B20E D0 54                    .T
        lda     SaveTimeOfDay                   ; B210 AD ED 62                 ..b
        cmp     #$78                            ; B213 C9 78                    .x
        bcs     BattleSetupServices_Branch_B243 ; B215 B0 2C                    .,
        lda     PlayerLocalX                    ; B217 A5 44                    .D
        cmp     #$09                            ; B219 C9 09                    ..
        bne     BattleSetupServices_Branch_B264 ; B21B D0 47                    .G
        lda     PlayerLocalY                    ; B21D A5 45                    .E
        cmp     #$08                            ; B21F C9 08                    ..
        bne     BattleSetupServices_Branch_B264 ; B221 D0 41                    .A
        lda     CurrentSubmapNumber             ; B223 A5 64                    .d
        cmp     #$01                            ; B225 C9 01                    ..
        bne     BattleSetupServices_Branch_B264 ; B227 D0 3B                    .;
        jsr     BattleSetupServices_Entry_B569  ; B229 20 69 B5                  i.
        lda     $6283                           ; B22C AD 83 62                 ..b
        ora     #$02                            ; B22F 09 02                    ..
        and     #$F7                            ; B231 29 F7                    ).
        sta     $6283                           ; B233 8D 83 62                 ..b
        brk                                     ; B236 00                       .
        db   $00,$CB,$02                     ; B237 00 CB 02                 ...
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_B5EF  ; B23A 20 EF B5                  ..
        brk                                     ; B23D 00                       .
        db   $5F,$3B                         ; B23E 5F 3B                    _;
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AF55 ; B240 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B243:
        lda     CurrentSubmapNumber             ; B243 A5 64                    .d
        cmp     #$02                            ; B245 C9 02                    ..
        bne     BattleSetupServices_Branch_B264 ; B247 D0 1B                    ..
        lda     PlayerLocalX                    ; B249 A5 44                    .D
        sec                                     ; B24B 38                       8
        sbc     #$02                            ; B24C E9 02                    ..
        cmp     #$02                            ; B24E C9 02                    ..
        bcs     BattleSetupServices_Branch_B264 ; B250 B0 12                    ..
        lda     PlayerLocalY                    ; B252 A5 45                    .E
        sec                                     ; B254 38                       8
        sbc     #$03                            ; B255 E9 03                    ..
        cmp     #$03                            ; B257 C9 03                    ..
        bcs     BattleSetupServices_Branch_B264 ; B259 B0 09                    ..
        jsr     BattleSetupServices_Entry_B5EF  ; B25B 20 EF B5                  ..
        brk                                     ; B25E 00                       .
        db   $2A,$4B                         ; B25F 2A 4B                    *K
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AFCB ; B261 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B264:
        jsr     BattleSetupServices_Entry_B571  ; B264 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B5EF  ; B267 20 EF B5                  ..
        jsr     BattleSetupServices_Entry_B56D  ; B26A 20 6D B5                  m.
        jmp     BattleSetupServices_Branch_AFCB ; B26D 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B270:
        brk                                     ; B270 00                       .
        db   $62,$23,$40                     ; B271 62 23 40                 b#@
; ----------------------------------------------------------------------------
        beq     BattleSetupServices_Branch_B299 ; B274 F0 23                    .#
        lda     $6279                           ; B276 AD 79 62                 .yb
        ldx     $6278                           ; B279 AE 78 62                 .xb
        brk                                     ; B27C 00                       .
        db   $2C,$73                         ; B27D 2C 73                    ,s
; ----------------------------------------------------------------------------
        sta     $6279                           ; B27F 8D 79 62                 .yb
        lda     $6278                           ; B282 AD 78 62                 .xb
        sta     $F9                             ; B285 85 F9                    ..
        lda     $6279                           ; B287 AD 79 62                 .yb
        sta     $FA                             ; B28A 85 FA                    ..
        brk                                     ; B28C 00                       .
        db   $9E,$1B                         ; B28D 9E 1B                    ..
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_B5EF  ; B28F 20 EF B5                  ..
        brk                                     ; B292 00                       .
        db   $36,$EF                         ; B293 36 EF                    6.
; ----------------------------------------------------------------------------
        bcc     BattleSetupServices_Branch_B299 ; B295 90 02                    ..
        clc                                     ; B297 18                       .
        rts                                     ; B298 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B299:
        brk                                     ; B299 00                       .
        db   $C5,$2B                         ; B29A C5 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AFCB ; B29C 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B29F:
        jsr     BattleSetupServices_Entry_B571  ; B29F 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B5EF  ; B2A2 20 EF B5                  ..
        brk                                     ; B2A5 00                       .
        db   $41,$EF                         ; B2A6 41 EF                    A.
; ----------------------------------------------------------------------------
        clc                                     ; B2A8 18                       .
        rts                                     ; B2A9 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B2AA:
        lda     $41                             ; B2AA A5 41                    .A
        bpl     BattleSetupServices_Branch_B2C6 ; B2AC 10 18                    ..
        lda     CurrentMapNumber                ; B2AE A5 63                    .c
        cmp     #$0D                            ; B2B0 C9 0D                    ..
        bne     BattleSetupServices_Branch_B2C6 ; B2B2 D0 12                    ..
        lda     CurrentSubmapNumber             ; B2B4 A5 64                    .d
        cmp     #$01                            ; B2B6 C9 01                    ..
        bne     BattleSetupServices_Branch_B2C6 ; B2B8 D0 0C                    ..
        lda     PlayerLocalX                    ; B2BA A5 44                    .D
        cmp     #$11                            ; B2BC C9 11                    ..
        bne     BattleSetupServices_Branch_B2C6 ; B2BE D0 06                    ..
        lda     PlayerLocalY                    ; B2C0 A5 45                    .E
        cmp     #$06                            ; B2C2 C9 06                    ..
        beq     BattleSetupServices_Branch_B2DB ; B2C4 F0 15                    ..
BattleSetupServices_Branch_B2C6:
        brk                                     ; B2C6 00                       .
        db   $07,$6F,$50                     ; B2C7 07 6F 50                 .oP
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_B571  ; B2CA 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B5EF  ; B2CD 20 EF B5                  ..
        brk                                     ; B2D0 00                       .
        db   $C5,$2B                         ; B2D1 C5 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AFCB ; B2D3 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B2D6:
        jsr     UpperFixedEngine_Entry_D218     ; B2D6 20 18 D2                  ..
        clc                                     ; B2D9 18                       .
        rts                                     ; B2DA 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B2DB:
        lda     $6278                           ; B2DB AD 78 62                 .xb
        sta     $F9                             ; B2DE 85 F9                    ..
        tax                                     ; B2E0 AA                       .
        brk                                     ; B2E1 00                       .
        db   $2B,$73                         ; B2E2 2B 73                    +s
; ----------------------------------------------------------------------------
        sta     $6278                           ; B2E4 8D 78 62                 .xb
        lda     $6278                           ; B2E7 AD 78 62                 .xb
        pha                                     ; B2EA 48                       H
        lda     $6279                           ; B2EB AD 79 62                 .yb
        pha                                     ; B2EE 48                       H
        brk                                     ; B2EF 00                       .
        db   $42,$EF                         ; B2F0 42 EF                    B.
; ----------------------------------------------------------------------------
        pla                                     ; B2F2 68                       h
        sta     $6279                           ; B2F3 8D 79 62                 .yb
        pla                                     ; B2F6 68                       h
        brk                                     ; B2F7 00                       .
        db   $63,$73                         ; B2F8 63 73                    cs
; ----------------------------------------------------------------------------
        sta     $6278                           ; B2FA 8D 78 62                 .xb
        sec                                     ; B2FD 38                       8
        rts                                     ; B2FE 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B2FF:
        jsr     BattleSetupServices_Entry_B571  ; B2FF 20 71 B5                  q.
        lda     CurrentMapNumber                ; B302 A5 63                    .c
        cmp     #$05                            ; B304 C9 05                    ..
        bne     BattleSetupServices_Branch_B328 ; B306 D0 20                    .
        lda     CurrentSubmapNumber             ; B308 A5 64                    .d
        cmp     #$01                            ; B30A C9 01                    ..
        bne     BattleSetupServices_Branch_B328 ; B30C D0 1A                    ..
        lda     PlayerLocalX                    ; B30E A5 44                    .D
        cmp     #$11                            ; B310 C9 11                    ..
        bne     BattleSetupServices_Branch_B328 ; B312 D0 14                    ..
        lda     PlayerLocalY                    ; B314 A5 45                    .E
        cmp     #$08                            ; B316 C9 08                    ..
        bne     BattleSetupServices_Branch_B328 ; B318 D0 0E                    ..
        jsr     BattleSetupServices_Entry_B56D  ; B31A 20 6D B5                  m.
        lda     $6283                           ; B31D AD 83 62                 ..b
        ora     #$01                            ; B320 09 01                    ..
        sta     $6283                           ; B322 8D 83 62                 ..b
        jmp     BattleSetupServices_Branch_AF55 ; B325 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B328:
        jsr     BattleSetupServices_Entry_B569  ; B328 20 69 B5                  i.
        jmp     BattleSetupServices_Branch_AFCB ; B32B 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B32E:
        jsr     BattleSetupServices_Entry_B571  ; B32E 20 71 B5                  q.
        lda     CurrentMapNumber                ; B331 A5 63                    .c
        cmp     #$04                            ; B333 C9 04                    ..
        bne     BattleSetupServices_Branch_B362 ; B335 D0 2B                    .+
        lda     CurrentSubmapNumber             ; B337 A5 64                    .d
        cmp     #$06                            ; B339 C9 06                    ..
        bne     BattleSetupServices_Branch_B362 ; B33B D0 25                    .%
        lda     PlayerLocalX                    ; B33D A5 44                    .D
        cmp     #$0F                            ; B33F C9 0F                    ..
        bne     BattleSetupServices_Branch_B362 ; B341 D0 1F                    ..
        lda     PlayerLocalY                    ; B343 A5 45                    .E
        cmp     #$0B                            ; B345 C9 0B                    ..
        bne     BattleSetupServices_Branch_B362 ; B347 D0 19                    ..
        jsr     BattleSetupServices_Entry_B56D  ; B349 20 6D B5                  m.
        ldx     $6278                           ; B34C AE 78 62                 .xb
        lda     $6279                           ; B34F AD 79 62                 .yb
        brk                                     ; B352 00                       .
        db   $30,$73                         ; B353 30 73                    0s
; ----------------------------------------------------------------------------
        ldx     $6278                           ; B355 AE 78 62                 .xb
        lda     #$78                            ; B358 A9 78                    .x
        brk                                     ; B35A 00                       .
        db   $2E,$73                         ; B35B 2E 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; B35D 00                       .
        db   $14,$5F                         ; B35E 14 5F                    ._
; ----------------------------------------------------------------------------
        clc                                     ; B360 18                       .
        rts                                     ; B361 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B362:
        jsr     BattleSetupServices_Entry_B569  ; B362 20 69 B5                  i.
        jmp     BattleSetupServices_Branch_AFCB ; B365 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B368:
        lda     CurrentMapNumber                ; B368 A5 63                    .c
        cmp     #$42                            ; B36A C9 42                    .B
        bne     BattleSetupServices_Branch_B3AF ; B36C D0 41                    .A
        lda     CurrentSubmapNumber             ; B36E A5 64                    .d
        cmp     #$00                            ; B370 C9 00                    ..
        bne     BattleSetupServices_Branch_B3AF ; B372 D0 3B                    .;
        lda     PlayerLocalX                    ; B374 A5 44                    .D
        cmp     #$0B                            ; B376 C9 0B                    ..
        bcc     BattleSetupServices_Branch_B3AF ; B378 90 35                    .5
        lda     PlayerLocalY                    ; B37A A5 45                    .E
        cmp     #$0B                            ; B37C C9 0B                    ..
        bcc     BattleSetupServices_Branch_B3AF ; B37E 90 2F                    ./
        lda     #$0E                            ; B380 A9 0E                    ..
        cmp     PlayerLocalX                    ; B382 C5 44                    .D
        bcc     BattleSetupServices_Branch_B3AF ; B384 90 29                    .)
        lda     #$0E                            ; B386 A9 0E                    ..
        cmp     PlayerLocalY                    ; B388 C5 45                    .E
        bcc     BattleSetupServices_Branch_B3AF ; B38A 90 23                    .#
        brk                                     ; B38C 00                       .
        db   $44,$EF                         ; B38D 44 EF                    D.
; ----------------------------------------------------------------------------
        cmp     #$32                            ; B38F C9 32                    .2
        bne     BattleSetupServices_Branch_B3AF ; B391 D0 1C                    ..
        lda     $6278                           ; B393 AD 78 62                 .xb
        sta     $F9                             ; B396 85 F9                    ..
        jsr     BattleSetupServices_Entry_B571  ; B398 20 71 B5                  q.
        brk                                     ; B39B 00                       .
        db   $18,$CB,$10                     ; B39C 18 CB 10                 ...
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D218     ; B39F 20 18 D2                  ..
        jsr     BattleSetupServices_Entry_97A9  ; B3A2 20 A9 97                  ..
        brk                                     ; B3A5 00                       .
        db   $07,$6F,$50                     ; B3A6 07 6F 50                 .oP
; ----------------------------------------------------------------------------
        brk                                     ; B3A9 00                       .
        db   $FF,$3B                         ; B3AA FF 3B                    .;
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AF55 ; B3AC 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B3AF:
        jsr     BattleSetupServices_Entry_B56D  ; B3AF 20 6D B5                  m.
        jsr     BattleSetupServices_Entry_B5EF  ; B3B2 20 EF B5                  ..
        jsr     BattleSetupServices_Entry_B569  ; B3B5 20 69 B5                  i.
        jmp     BattleSetupServices_Branch_AFCB ; B3B8 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B3BB:
        lda     $41                             ; B3BB A5 41                    .A
        bpl     BattleSetupServices_Branch_B3FC ; B3BD 10 3D                    .=
        lda     CurrentMapNumber                ; B3BF A5 63                    .c
        cmp     #$1B                            ; B3C1 C9 1B                    ..
        bne     BattleSetupServices_Branch_B3FC ; B3C3 D0 37                    .7
        lda     CurrentSubmapNumber             ; B3C5 A5 64                    .d
        cmp     #$00                            ; B3C7 C9 00                    ..
        bne     BattleSetupServices_Branch_B3FC ; B3C9 D0 31                    .1
        lda     PlayerLocalX                    ; B3CB A5 44                    .D
        cmp     #$09                            ; B3CD C9 09                    ..
        bcc     BattleSetupServices_Branch_B3FC ; B3CF 90 2B                    .+
        lda     PlayerLocalY                    ; B3D1 A5 45                    .E
        cmp     #$08                            ; B3D3 C9 08                    ..
        bcc     BattleSetupServices_Branch_B3FC ; B3D5 90 25                    .%
        lda     #$10                            ; B3D7 A9 10                    ..
        cmp     PlayerLocalX                    ; B3D9 C5 44                    .D
        bcc     BattleSetupServices_Branch_B3FC ; B3DB 90 1F                    ..
        lda     #$0D                            ; B3DD A9 0D                    ..
        cmp     PlayerLocalY                    ; B3DF C5 45                    .E
        bcc     BattleSetupServices_Branch_B3FC ; B3E1 90 19                    ..
        lda     $7928                           ; B3E3 AD 28 79                 .(y
        cmp     #$16                            ; B3E6 C9 16                    ..
        beq     BattleSetupServices_Branch_B405 ; B3E8 F0 1B                    ..
        jsr     BattleSetupServices_Entry_B40E  ; B3EA 20 0E B4                  ..
        ldx     #$10                            ; B3ED A2 10                    ..
        ldy     #$08                            ; B3EF A0 08                    ..
        lda     #$16                            ; B3F1 A9 16                    ..
        brk                                     ; B3F3 00                       .
        db   $09,$EF                         ; B3F4 09 EF                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B3F6 00                       .
        db   $52,$4B                         ; B3F7 52 4B                    RK
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_B2D6 ; B3F9 4C D6 B2                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B3FC:
        jsr     BattleSetupServices_Entry_B40E  ; B3FC 20 0E B4                  ..
        jsr     BattleSetupServices_Entry_B571  ; B3FF 20 71 B5                  q.
        jmp     BattleSetupServices_Branch_AFCB ; B402 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B405:
        jsr     BattleSetupServices_Entry_B40E  ; B405 20 0E B4                  ..
        brk                                     ; B408 00                       .
        db   $C5,$2B                         ; B409 C5 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AFCB ; B40B 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B40E:
        brk                                     ; B40E 00                       .
        db   $07,$6F,$FF                     ; B40F 07 6F FF                 .o.
; ----------------------------------------------------------------------------
        brk                                     ; B412 00                       .
        db   $07,$6F,$50                     ; B413 07 6F 50                 .oP
; ----------------------------------------------------------------------------
        lda     $6278                           ; B416 AD 78 62                 .xb
        sta     $F9                             ; B419 85 F9                    ..
        brk                                     ; B41B 00                       .
        db   $53,$4B                         ; B41C 53 4B                    SK
; ----------------------------------------------------------------------------
        jsr     BattleSetupServices_Entry_B5EF  ; B41E 20 EF B5                  ..
        brk                                     ; B421 00                       .
        db   $29,$FB                         ; B422 29 FB                    ).
; ----------------------------------------------------------------------------
        brk                                     ; B424 00                       .
        db   $07,$9F                         ; B425 07 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B427 00                       .
        db   $09,$9F                         ; B428 09 9F                    ..
; ----------------------------------------------------------------------------
        rts                                     ; B42A 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B42B:
        jsr     BattleSetupServices_Entry_B571  ; B42B 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B5EF  ; B42E 20 EF B5                  ..
        jsr     BattleSetupServices_Entry_A974  ; B431 20 74 A9                  t.
        bcs     BattleSetupServices_Branch_B458 ; B434 B0 22                    ."
        jsr     BattleSetupServices_Entry_A721  ; B436 20 21 A7                  !.
        bcs     BattleSetupServices_Branch_B458 ; B439 B0 1D                    ..
        lda     $41                             ; B43B A5 41                    .A
        bpl     BattleSetupServices_Branch_B44C ; B43D 10 0D                    ..
        lda     $07BA                           ; B43F AD BA 07                 ...
        and     #$7F                            ; B442 29 7F                    ).
        cmp     #$04                            ; B444 C9 04                    ..
        beq     BattleSetupServices_Branch_B45E ; B446 F0 16                    ..
        cmp     #$05                            ; B448 C9 05                    ..
        beq     BattleSetupServices_Branch_B45E ; B44A F0 12                    ..
BattleSetupServices_Branch_B44C:
        lda     SaveTimeOfDay                   ; B44C AD ED 62                 ..b
        cmp     #$78                            ; B44F C9 78                    .x
        bcs     BattleSetupServices_Branch_B458 ; B451 B0 05                    ..
        jsr     BattleSetupServices_Entry_A773  ; B453 20 73 A7                  s.
        clc                                     ; B456 18                       .
        rts                                     ; B457 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B458:
        brk                                     ; B458 00                       .
        db   $C5,$2B                         ; B459 C5 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AFCB ; B45B 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B45E:
        brk                                     ; B45E 00                       .
        db   $4B,$0B                         ; B45F 4B 0B                    K.
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AFCB ; B461 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B464:
        jsr     BattleSetupServices_Entry_B571  ; B464 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B5EF  ; B467 20 EF B5                  ..
        lda     $62A1                           ; B46A AD A1 62                 ..b
        bmi     BattleSetupServices_Branch_B48E ; B46D 30 1F                    0.
        lda     $41                             ; B46F A5 41                    .A
        bmi     BattleSetupServices_Branch_B488 ; B471 30 15                    0.
        lda     PlayerWorldX                    ; B473 A5 42                    .B
        cmp     #$C2                            ; B475 C9 C2                    ..
        bne     BattleSetupServices_Branch_B488 ; B477 D0 0F                    ..
        lda     PlayerWorldY                    ; B479 A5 43                    .C
        cmp     #$2F                            ; B47B C9 2F                    ./
        bne     BattleSetupServices_Branch_B488 ; B47D D0 09                    ..
        brk                                     ; B47F 00                       .
        db   $07,$6F,$FF                     ; B480 07 6F FF                 .o.
; ----------------------------------------------------------------------------
        brk                                     ; B483 00                       .
        db   $05,$BF                         ; B484 05 BF                    ..
; ----------------------------------------------------------------------------
        clc                                     ; B486 18                       .
        rts                                     ; B487 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B488:
        jsr     BattleSetupServices_Entry_B56D  ; B488 20 6D B5                  m.
        jmp     BattleSetupServices_Branch_AFCB ; B48B 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B48E:
        brk                                     ; B48E 00                       .
        db   $C5,$2B                         ; B48F C5 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AFCB ; B491 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B494:
        jsr     BattleSetupServices_Entry_B571  ; B494 20 71 B5                  q.
        bit     $62A1                           ; B497 2C A1 62                 ,.b
        bvs     BattleSetupServices_Branch_B48E ; B49A 70 F2                    p.
        lda     $41                             ; B49C A5 41                    .A
        bpl     BattleSetupServices_Branch_B488 ; B49E 10 E8                    ..
        lda     CurrentMapNumber                ; B4A0 A5 63                    .c
        cmp     #$34                            ; B4A2 C9 34                    .4
        bne     BattleSetupServices_Branch_B488 ; B4A4 D0 E2                    ..
        lda     CurrentSubmapNumber             ; B4A6 A5 64                    .d
        cmp     #$00                            ; B4A8 C9 00                    ..
        bne     BattleSetupServices_Branch_B488 ; B4AA D0 DC                    ..
        ldx     #$0F                            ; B4AC A2 0F                    ..
        cpx     PlayerLocalX                    ; B4AE E4 44                    .D
        bne     BattleSetupServices_Branch_B488 ; B4B0 D0 D6                    ..
        ldy     #$09                            ; B4B2 A0 09                    ..
        cpy     PlayerLocalY                    ; B4B4 C4 45                    .E
        bne     BattleSetupServices_Branch_B488 ; B4B6 D0 D0                    ..
        brk                                     ; B4B8 00                       .
        db   $07,$6F,$FF                     ; B4B9 07 6F FF                 .o.
; ----------------------------------------------------------------------------
        brk                                     ; B4BC 00                       .
        db   $07,$BF                         ; B4BD 07 BF                    ..
; ----------------------------------------------------------------------------
        clc                                     ; B4BF 18                       .
        rts                                     ; B4C0 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B4C1:
        jsr     BattleSetupServices_Entry_B571  ; B4C1 20 71 B5                  q.
        lda     $41                             ; B4C4 A5 41                    .A
        bpl     BattleSetupServices_Branch_B4CE ; B4C6 10 06                    ..
        lda     CurrentMapNumber                ; B4C8 A5 63                    .c
        cmp     #$36                            ; B4CA C9 36                    .6
        beq     BattleSetupServices_Branch_B4D6 ; B4CC F0 08                    ..
BattleSetupServices_Branch_B4CE:
        jsr     BattleSetupServices_Entry_B5EF  ; B4CE 20 EF B5                  ..
        brk                                     ; B4D1 00                       .
        db   $01,$DF                         ; B4D2 01 DF                    ..
; ----------------------------------------------------------------------------
        clc                                     ; B4D4 18                       .
        rts                                     ; B4D5 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B4D6:
        brk                                     ; B4D6 00                       .
        db   $C5,$2B                         ; B4D7 C5 2B                    .+
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AFCB ; B4D9 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B4DC:
        jsr     BattleSetupServices_Entry_B571  ; B4DC 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B5EF  ; B4DF 20 EF B5                  ..
        brk                                     ; B4E2 00                       .
        db   $5F,$0B                         ; B4E3 5F 0B                    _.
; ----------------------------------------------------------------------------
        lda     #$32                            ; B4E5 A9 32                    .2
        sta     $6BEB                           ; B4E7 8D EB 6B                 ..k
        jmp     BattleSetupServices_Branch_AF55 ; B4EA 4C 55 AF                 LU.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B4ED:
        jsr     BattleSetupServices_Entry_B571  ; B4ED 20 71 B5                  q.
        jsr     BattleSetupServices_Entry_B5EF  ; B4F0 20 EF B5                  ..
        lda     $41                             ; B4F3 A5 41                    .A
        bmi     BattleSetupServices_Branch_B518 ; B4F5 30 21                    0!
        lda     $62A1                           ; B4F7 AD A1 62                 ..b
        and     #$20                            ; B4FA 29 20                    )
        bne     BattleSetupServices_Branch_B512 ; B4FC D0 14                    ..
        brk                                     ; B4FE 00                       .
        db   $34,$FB                         ; B4FF 34 FB                    4.
; ----------------------------------------------------------------------------
        brk                                     ; B501 00                       .
        db   $07,$9F                         ; B502 07 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B504 00                       .
        db   $09,$9F                         ; B505 09 9F                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; B507 20 C5 C5                  ..
        brk                                     ; B50A 00                       .
        db   $6F,$33                         ; B50B 6F 33                    o3
; ----------------------------------------------------------------------------
        brk                                     ; B50D 00                       .
        db   $3E,$EF                         ; B50E 3E EF                    >.
; ----------------------------------------------------------------------------
        clc                                     ; B510 18                       .
        rts                                     ; B511 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B512:
        jsr     BattleSetupServices_Entry_B56D  ; B512 20 6D B5                  m.
        jmp     BattleSetupServices_Branch_AFCB ; B515 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B518:
        jsr     BattleSetupServices_Entry_B5EF  ; B518 20 EF B5                  ..
        brk                                     ; B51B 00                       .
        db   $4B,$0B                         ; B51C 4B 0B                    K.
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_AFCB ; B51E 4C CB AF                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B521:
        brk                                     ; B521 00                       .
        db   $17,$0F                         ; B522 17 0F                    ..
; ----------------------------------------------------------------------------
        clc                                     ; B524 18                       .
        rts                                     ; B525 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B526:
        ldx     $6278                           ; B526 AE 78 62                 .xb
        jmp     BattleSetupServices_Branch_B52F ; B529 4C 2F B5                 L/.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B52C:
        ldx     $627A                           ; B52C AE 7A 62                 .zb
BattleSetupServices_Branch_B52F:
        brk                                     ; B52F 00                       .
        db   $00,$13                         ; B530 00 13                    ..
; ----------------------------------------------------------------------------
        rts                                     ; B532 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B533:
        pha                                     ; B533 48                       H
        lda     #$42                            ; B534 A9 42                    .B
        jsr     BattleSetupServices_Entry_B52C  ; B536 20 2C B5                  ,.
        pla                                     ; B539 68                       h
        cmp     $72                             ; B53A C5 72                    .r
        beq     BattleSetupServices_Branch_B55A ; B53C F0 1C                    ..
        clc                                     ; B53E 18                       .
        rts                                     ; B53F 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B540:
        ldx     $627A                           ; B540 AE 7A 62                 .zb
        brk                                     ; B543 00                       .
        db   $02,$73                         ; B544 02 73                    .s
; ----------------------------------------------------------------------------
        rts                                     ; B546 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B547:
        brk                                     ; B547 00                       .
        db   $14,$0F                         ; B548 14 0F                    ..
; ----------------------------------------------------------------------------
        lda     $6278                           ; B54A AD 78 62                 .xb
        bcc     BattleSetupServices_Branch_B555 ; B54D 90 06                    ..
        brk                                     ; B54F 00                       .
        db   $07,$6F,$4E                     ; B550 07 6F 4E                 .oN
; ----------------------------------------------------------------------------
        bmi     BattleSetupServices_Branch_B55A ; B553 30 05                    0.
BattleSetupServices_Branch_B555:
        sta     $627A                           ; B555 8D 7A 62                 .zb
        clc                                     ; B558 18                       .
        rts                                     ; B559 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B55A:
        sec                                     ; B55A 38                       8
        rts                                     ; B55B 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B55C:
        ldx     $627A                           ; B55C AE 7A 62                 .zb
        brk                                     ; B55F 00                       .
        db   $2B,$73                         ; B560 2B 73                    +s
; ----------------------------------------------------------------------------
        cmp     #$08                            ; B562 C9 08                    ..
        rts                                     ; B564 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B565:
        lda     #$03                            ; B565 A9 03                    ..
        bne     BattleSetupServices_Branch_B573 ; B567 D0 0A                    ..
BattleSetupServices_Entry_B569:
        lda     #$02                            ; B569 A9 02                    ..
        bne     BattleSetupServices_Branch_B573 ; B56B D0 06                    ..
BattleSetupServices_Entry_B56D:
        lda     #$01                            ; B56D A9 01                    ..
        bne     BattleSetupServices_Branch_B573 ; B56F D0 02                    ..
BattleSetupServices_Entry_B571:
        lda     #$00                            ; B571 A9 00                    ..
BattleSetupServices_Branch_B573:
        pha                                     ; B573 48                       H
        ldx     #$00                            ; B574 A2 00                    ..
        ldy     #$00                            ; B576 A0 00                    ..
        sty     $6DFA                           ; B578 8C FA 6D                 ..m
BattleSetupServices_Branch_B57B:
        cpx     $6DF9                           ; B57B EC F9 6D                 ..m
        beq     BattleSetupServices_Branch_B594 ; B57E F0 14                    ..
        lda     $B5F4,y                         ; B580 B9 F4 B5                 ...
        and     #$30                            ; B583 29 30                    )0
        lsr     a                               ; B585 4A                       J
        lsr     a                               ; B586 4A                       J
        lsr     a                               ; B587 4A                       J
        adc     #$02                            ; B588 69 02                    i.
        adc     $6DFA                           ; B58A 6D FA 6D                 m.m
        sta     $6DFA                           ; B58D 8D FA 6D                 ..m
        tay                                     ; B590 A8                       .
        inx                                     ; B591 E8                       .
        bne     BattleSetupServices_Branch_B57B ; B592 D0 E7                    ..
BattleSetupServices_Branch_B594:
        pla                                     ; B594 68                       h
        asl     a                               ; B595 0A                       .
        clc                                     ; B596 18                       .
        adc     $6DFA                           ; B597 6D FA 6D                 m.m
        tay                                     ; B59A A8                       .
        lda     $B5F4,y                         ; B59B B9 F4 B5                 ...
        sta     $6DFB                           ; B59E 8D FB 6D                 ..m
        asl     a                               ; B5A1 0A                       .
        rol     a                               ; B5A2 2A                       *
        rol     a                               ; B5A3 2A                       *
        and     #$03                            ; B5A4 29 03                    ).
        pha                                     ; B5A6 48                       H
        lda     $6DFB                           ; B5A7 AD FB 6D                 ..m
        and     #$07                            ; B5AA 29 07                    ).
        beq     BattleSetupServices_Branch_B5E5 ; B5AC F0 37                    .7
        lsr     a                               ; B5AE 4A                       J
        beq     BattleSetupServices_Branch_B5CE ; B5AF F0 1D                    ..
        bcs     BattleSetupServices_Branch_B5C1 ; B5B1 B0 0E                    ..
        lsr     a                               ; B5B3 4A                       J
        bcs     BattleSetupServices_Branch_B5E0 ; B5B4 B0 2A                    .*
        lda     $627A                           ; B5B6 AD 7A 62                 .zb
        sta     $FA                             ; B5B9 85 FA                    ..
        lda     $6278                           ; B5BB AD 78 62                 .xb
        jmp     BattleSetupServices_Branch_B5E3 ; B5BE 4C E3 B5                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B5C1:
        lda     $6279                           ; B5C1 AD 79 62                 .yb
        sta     $6F                             ; B5C4 85 6F                    .o
        lda     #$2C                            ; B5C6 A9 2C                    .,
        jsr     BattleSetupServices_Entry_B526  ; B5C8 20 26 B5                  &.
        jmp     BattleSetupServices_Branch_B5E3 ; B5CB 4C E3 B5                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B5CE:
        lda     $6279                           ; B5CE AD 79 62                 .yb
        sta     $6F                             ; B5D1 85 6F                    .o
        lda     #$2C                            ; B5D3 A9 2C                    .,
        jsr     BattleSetupServices_Entry_B526  ; B5D5 20 26 B5                  &.
        sta     $FA                             ; B5D8 85 FA                    ..
        lda     $6278                           ; B5DA AD 78 62                 .xb
        jmp     BattleSetupServices_Branch_B5E3 ; B5DD 4C E3 B5                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B5E0:
        lda     $627A                           ; B5E0 AD 7A 62                 .zb
BattleSetupServices_Branch_B5E3:
        sta     $F9                             ; B5E3 85 F9                    ..
BattleSetupServices_Branch_B5E5:
        pla                                     ; B5E5 68                       h
        tax                                     ; B5E6 AA                       .
        iny                                     ; B5E7 C8                       .
        lda     $B5F4,y                         ; B5E8 B9 F4 B5                 ...
        brk                                     ; B5EB 00                       .
        db   $04,$6F                         ; B5EC 04 6F                    .o
; ----------------------------------------------------------------------------
        rts                                     ; B5EE 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B5EF:
        ldx     #$14                            ; B5EF A2 14                    ..
        jmp     UpperFixedEngine_Entry_C90C     ; B5F1 4C 0C C9                 L..
; ----------------------------------------------------------------------------
        db   $61,$9E,$82,$CA,$80,$C5,$61,$9E ; B5F4 61 9E 82 CA 80 C5 61 9E  a.....a.
        db   $82,$CC,$80,$C5,$51,$A8,$43,$A9 ; B5FC 82 CC 80 C5 51 A8 43 A9  ....Q.C.
        db   $51,$9E,$42,$B3,$51,$9E,$42,$B4 ; B604 51 9E 42 B3 51 9E 42 B4  Q.B.Q.B.
        db   $51,$9E,$42,$B5,$51,$9E,$42,$B6 ; B60C 51 9E 42 B5 51 9E 42 B6  Q.B.Q.B.
        db   $51,$9E,$42,$B7,$51,$9E,$82,$CB ; B614 51 9E 42 B7 51 9E 82 CB  Q.B.Q...
        db   $71,$AB,$42,$AC,$80,$F2,$40,$AD ; B61C 71 AB 42 AC 80 F2 40 AD  q.B...@.
        db   $71,$9E,$42,$AC,$80,$F2,$80,$C5 ; B624 71 9E 42 AC 80 F2 80 C5  q.B.....
        db   $64,$AA,$82,$CD,$80,$C5,$A1,$E8 ; B62C 64 AA 82 CD 80 C5 A1 E8  d.......
        db   $80,$E9,$80,$C4,$51,$AE,$81,$F6 ; B634 80 E9 80 C4 51 AE 81 F6  ....Q...
        db   $61,$9E,$80,$C5,$81,$E7,$E0,$A2 ; B63C 61 9E 80 C5 81 E7 E0 A2  a.......
        db   $C0,$A4,$C0,$A3,$E0,$49,$C0,$A0 ; B644 C0 A4 C0 A3 E0 49 C0 A0  .....I..
        db   $C0,$4C,$F1,$E9,$41,$9E,$80,$C5 ; B64C C0 4C F1 E9 41 9E 80 C5  .L..A...
        db   $C0,$FF,$51,$9E,$80,$C5,$00,$4B ; B654 C0 FF 51 9E 80 C5 00 4B  ..Q....K
        db   $41,$9E,$41,$9E,$41,$A7,$61,$9E ; B65C 41 9E 41 9E 41 A7 61 9E  A.A.A.a.
        db   $82,$CA,$80,$C5,$41,$9E,$51,$9E ; B664 82 CA 80 C5 41 9E 51 9E  ....A.Q.
        db   $00,$4B,$51,$9E,$00,$4B,$41,$9E ; B66C 00 4B 51 9E 00 4B 41 9E  .KQ..KA.
        db   $51,$9E,$80,$C5,$41,$9E         ; B674 51 9E 80 C5 41 9E        Q...A.
        db   $36                             ; B67A 36                       6
        db   $AF,$89,$AF,$A0,$AF,$F9,$AF,$FD ; B67B AF 89 AF A0 AF F9 AF FD  ........
        db   $AF,$01,$B0,$33,$B0,$61,$B0,$74 ; B683 AF 01 B0 33 B0 61 B0 74  ...3.a.t
        db   $B0,$94,$B0,$CD,$B0,$07,$B1,$4A ; B68B B0 94 B0 CD B0 07 B1 4A  .......J
        db   $B1,$7B,$B1,$01,$B2,$FF,$B2,$2E ; B693 B1 7B B1 01 B2 FF B2 2E  .{......
        db   $B3,$68,$B3,$AA,$B2,$BB,$B3,$9F ; B69B B3 68 B3 AA B2 BB B3 9F  .h......
        db   $B2,$9B,$B1,$F6,$B1,$30,$AF,$2B ; B6A3 B2 9B B1 F6 B1 30 AF 2B  .....0.+
        db   $B4,$64,$B4,$94,$B4,$DC,$B4,$ED ; B6AB B4 64 B4 94 B4 DC B4 ED  .d......
        db   $B4,$C1,$B4,$70,$B2,$70,$B2,$70 ; B6B3 B4 C1 B4 70 B2 70 B2 70  ...p.p.p
        db   $B2                             ; B6BB B2                       .
        db   $53,$54,$56,$61,$62,$63,$64,$65 ; B6BC 53 54 56 61 62 63 64 65  STVabcde
        db   $58,$59,$5A,$57,$6C,$5B,$75,$78 ; B6C4 58 59 5A 57 6C 5B 75 78  XYZWl[ux
        db   $77,$7C,$7B,$5C,$68,$70,$55,$74 ; B6CC 77 7C 7B 5C 68 70 55 74  w|{\hpUt
        db   $67,$1E,$6A,$5E,$52,$6E,$71,$72 ; B6D4 67 1E 6A 5E 52 6E 71 72  g.j^Rnqr
        db   $73,$FF                         ; B6DC 73 FF                    s.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B6DE:
        lda     #$00                            ; B6DE A9 00                    ..
        sta     $29                             ; B6E0 85 29                    .)
        lda     PlayerWorldX                    ; B6E2 A5 42                    .B
        cmp     $6191                           ; B6E4 CD 91 61                 ..a
        bne     BattleSetupServices_Branch_B6F2 ; B6E7 D0 09                    ..
        lda     PlayerWorldY                    ; B6E9 A5 43                    .C
        cmp     $6192                           ; B6EB CD 92 61                 ..a
        bne     BattleSetupServices_Branch_B6F2 ; B6EE D0 02                    ..
        inc     $29                             ; B6F0 E6 29                    .)
BattleSetupServices_Branch_B6F2:
        lda     CurrentMapNumber                ; B6F2 A5 63                    .c
        cmp     #$1C                            ; B6F4 C9 1C                    ..
        bne     BattleSetupServices_Branch_B6FB ; B6F6 D0 03                    ..
        jmp     BattleSetupServices_Branch_B888 ; B6F8 4C 88 B8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B6FB:
        cmp     #$3E                            ; B6FB C9 3E                    .>
        bne     BattleSetupServices_Branch_B702 ; B6FD D0 03                    ..
        jmp     BattleSetupServices_Branch_B8A6 ; B6FF 4C A6 B8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B702:
        cmp     #$46                            ; B702 C9 46                    .F
        bne     BattleSetupServices_Branch_B709 ; B704 D0 03                    ..
        jmp     BattleSetupServices_Branch_B8CE ; B706 4C CE B8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B709:
        cmp     #$3F                            ; B709 C9 3F                    .?
        bne     BattleSetupServices_Branch_B710 ; B70B D0 03                    ..
        jmp     BattleSetupServices_Branch_B90C ; B70D 4C 0C B9                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B710:
        cmp     #$41                            ; B710 C9 41                    .A
        bne     BattleSetupServices_Branch_B717 ; B712 D0 03                    ..
        jmp     BattleSetupServices_Branch_B95C ; B714 4C 5C B9                 L\.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B717:
        cmp     #$36                            ; B717 C9 36                    .6
        bne     BattleSetupServices_Branch_B71E ; B719 D0 03                    ..
        jmp     BattleSetupServices_Branch_B8EE ; B71B 4C EE B8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B71E:
        lda     $B970                           ; B71E AD 70 B9                 .p.
        sta     $00                           ; B721 85 00                    ..
        lda     $B971                           ; B723 AD 71 B9                 .q.
        sta     $01                             ; B726 85 01                    ..
BattleSetupServices_Branch_B728:
        ldy     #$00                            ; B728 A0 00                    ..
        lda     ($00),y                       ; B72A B1 00                    ..
        cmp     #$FF                            ; B72C C9 FF                    ..
        beq     BattleSetupServices_Branch_B742 ; B72E F0 12                    ..
        cmp     CurrentMapNumber                ; B730 C5 63                    .c
        beq     BattleSetupServices_Branch_B73F ; B732 F0 0B                    ..
        iny                                     ; B734 C8                       .
        lda     ($00),y                       ; B735 B1 00                    ..
        bmi     BattleSetupServices_Branch_B73C ; B737 30 03                    0.
        jmp     BattleSetupServices_Branch_B7DE ; B739 4C DE B7                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B73C:
        jmp     BattleSetupServices_Branch_B7EF ; B73C 4C EF B7                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B73F:
        jmp     BattleSetupServices_Branch_B7BC ; B73F 4C BC B7                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B742:
        lda     CurrentMapNumber                ; B742 A5 63                    .c
        cmp     #$48                            ; B744 C9 48                    .H
        bne     BattleSetupServices_Branch_B757 ; B746 D0 0F                    ..
        lda     $6285                           ; B748 AD 85 62                 ..b
        and     #$04                            ; B74B 29 04                    ).
        beq     BattleSetupServices_Branch_B757 ; B74D F0 08                    ..
        lda     #$90                            ; B74F A9 90                    ..
        sta     PlayerWorldX                    ; B751 85 42                    .B
        lda     #$D9                            ; B753 A9 D9                    ..
        sta     PlayerWorldY                    ; B755 85 43                    .C
BattleSetupServices_Branch_B757:
        lda     $3D                             ; B757 A5 3D                    .=
        and     #$03                            ; B759 29 03                    ).
        bne     BattleSetupServices_Branch_B77F ; B75B D0 22                    ."
        lda     $07BA                           ; B75D AD BA 07                 ...
        beq     BattleSetupServices_Branch_B76A ; B760 F0 08                    ..
        cmp     #$05                            ; B762 C9 05                    ..
        beq     BattleSetupServices_Branch_B76A ; B764 F0 04                    ..
        cmp     #$04                            ; B766 C9 04                    ..
        bne     BattleSetupServices_Branch_B773 ; B768 D0 09                    ..
BattleSetupServices_Branch_B76A:
        lda     $29                             ; B76A A5 29                    .)
        beq     BattleSetupServices_Branch_B771 ; B76C F0 03                    ..
        dec     $6192                           ; B76E CE 92 61                 ..a
BattleSetupServices_Branch_B771:
        dec     PlayerWorldY                    ; B771 C6 43                    .C
BattleSetupServices_Branch_B773:
        lda     $29                             ; B773 A5 29                    .)
        beq     BattleSetupServices_Branch_B77A ; B775 F0 03                    ..
        dec     $6192                           ; B777 CE 92 61                 ..a
BattleSetupServices_Branch_B77A:
        dec     PlayerWorldY                    ; B77A C6 43                    .C
        jmp     BattleSetupServices_Branch_B7B6 ; B77C 4C B6 B7                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B77F:
        cmp     #$01                            ; B77F C9 01                    ..
        bne     BattleSetupServices_Branch_B79D ; B781 D0 1A                    ..
        lda     $07BA                           ; B783 AD BA 07                 ...
        bne     BattleSetupServices_Branch_B791 ; B786 D0 09                    ..
        lda     $29                             ; B788 A5 29                    .)
        beq     BattleSetupServices_Branch_B78F ; B78A F0 03                    ..
        inc     $6191                           ; B78C EE 91 61                 ..a
BattleSetupServices_Branch_B78F:
        inc     PlayerWorldX                    ; B78F E6 42                    .B
BattleSetupServices_Branch_B791:
        lda     $29                             ; B791 A5 29                    .)
        beq     BattleSetupServices_Branch_B798 ; B793 F0 03                    ..
        inc     $6191                           ; B795 EE 91 61                 ..a
BattleSetupServices_Branch_B798:
        inc     PlayerWorldX                    ; B798 E6 42                    .B
        jmp     BattleSetupServices_Branch_B7B6 ; B79A 4C B6 B7                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B79D:
        cmp     #$02                            ; B79D C9 02                    ..
        bne     BattleSetupServices_Branch_B7AD ; B79F D0 0C                    ..
BattleSetupServices_Branch_B7A1:
        lda     $29                             ; B7A1 A5 29                    .)
        beq     BattleSetupServices_Branch_B7A8 ; B7A3 F0 03                    ..
        inc     $6192                           ; B7A5 EE 92 61                 ..a
BattleSetupServices_Branch_B7A8:
        inc     PlayerWorldY                    ; B7A8 E6 43                    .C
        jmp     BattleSetupServices_Branch_B7B6 ; B7AA 4C B6 B7                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B7AD:
        lda     $29                             ; B7AD A5 29                    .)
        beq     BattleSetupServices_Branch_B7B4 ; B7AF F0 03                    ..
        dec     $6191                           ; B7B1 CE 91 61                 ..a
BattleSetupServices_Branch_B7B4:
        dec     PlayerWorldX                    ; B7B4 C6 42                    .B
BattleSetupServices_Branch_B7B6:
        lda     $3D                             ; B7B6 A5 3D                    .=
        and     #$03                            ; B7B8 29 03                    ).
        clc                                     ; B7BA 18                       .
        rts                                     ; B7BB 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B7BC:
        iny                                     ; B7BC C8                       .
        lda     ($00),y                       ; B7BD B1 00                    ..
        bmi     BattleSetupServices_Branch_B7E9 ; B7BF 30 28                    0(
        cmp     CurrentSubmapNumber             ; B7C1 C5 64                    .d
        bne     BattleSetupServices_Branch_B7DE ; B7C3 D0 19                    ..
        iny                                     ; B7C5 C8                       .
        lda     ($00),y                       ; B7C6 B1 00                    ..
        bmi     BattleSetupServices_Branch_B83C ; B7C8 30 72                    0r
BattleSetupServices_Branch_B7CA:
        sta     CurrentSubmapNumber             ; B7CA 85 64                    .d
        iny                                     ; B7CC C8                       .
        lda     ($00),y                       ; B7CD B1 00                    ..
        and     #$3F                            ; B7CF 29 3F                    )?
        sta     PlayerLocalX                    ; B7D1 85 44                    .D
        iny                                     ; B7D3 C8                       .
        lda     ($00),y                       ; B7D4 B1 00                    ..
        sta     PlayerLocalY                    ; B7D6 85 45                    .E
        lda     $3D                             ; B7D8 A5 3D                    .=
        and     #$03                            ; B7DA 29 03                    ).
        sec                                     ; B7DC 38                       8
        rts                                     ; B7DD 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B7DE:
        iny                                     ; B7DE C8                       .
        lda     ($00),y                       ; B7DF B1 00                    ..
        bmi     BattleSetupServices_Branch_B7E5 ; B7E1 30 02                    0.
        iny                                     ; B7E3 C8                       .
        iny                                     ; B7E4 C8                       .
BattleSetupServices_Branch_B7E5:
        iny                                     ; B7E5 C8                       .
        jmp     BattleSetupServices_Branch_B879 ; B7E6 4C 79 B8                 Ly.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B7E9:
        and     #$7F                            ; B7E9 29 7F                    ).
        cmp     CurrentSubmapNumber             ; B7EB C5 64                    .d
        beq     BattleSetupServices_Branch_B807 ; B7ED F0 18                    ..
BattleSetupServices_Branch_B7EF:
        iny                                     ; B7EF C8                       .
BattleSetupServices_Branch_B7F0:
        lda     ($00),y                       ; B7F0 B1 00                    ..
        pha                                     ; B7F2 48                       H
        bpl     BattleSetupServices_Branch_B7F6 ; B7F3 10 01                    ..
        iny                                     ; B7F5 C8                       .
BattleSetupServices_Branch_B7F6:
        iny                                     ; B7F6 C8                       .
        iny                                     ; B7F7 C8                       .
        lda     ($00),y                       ; B7F8 B1 00                    ..
        bmi     BattleSetupServices_Branch_B7FE ; B7FA 30 02                    0.
        iny                                     ; B7FC C8                       .
        iny                                     ; B7FD C8                       .
BattleSetupServices_Branch_B7FE:
        iny                                     ; B7FE C8                       .
        pla                                     ; B7FF 68                       h
        asl     a                               ; B800 0A                       .
        asl     a                               ; B801 0A                       .
        bcs     BattleSetupServices_Branch_B7F0 ; B802 B0 EC                    ..
        jmp     BattleSetupServices_Branch_B879 ; B804 4C 79 B8                 Ly.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B807:
        iny                                     ; B807 C8                       .
        lda     ($00),y                       ; B808 B1 00                    ..
        bpl     BattleSetupServices_Branch_B846 ; B80A 10 3A                    .:
        and     #$3F                            ; B80C 29 3F                    )?
        sta     $04                             ; B80E 85 04                    ..
        iny                                     ; B810 C8                       .
        lda     ($00),y                       ; B811 B1 00                    ..
        and     #$3F                            ; B813 29 3F                    )?
        sta     $05                             ; B815 85 05                    ..
        iny                                     ; B817 C8                       .
        lda     ($00),y                       ; B818 B1 00                    ..
        sta     $06                             ; B81A 85 06                    ..
        jsr     BattleSetupServices_Entry_B856  ; B81C 20 56 B8                  V.
        bcc     BattleSetupServices_Branch_B829 ; B81F 90 08                    ..
BattleSetupServices_Branch_B821:
        iny                                     ; B821 C8                       .
        lda     ($00),y                       ; B822 B1 00                    ..
        bpl     BattleSetupServices_Branch_B7CA ; B824 10 A4                    ..
        bmi     BattleSetupServices_Branch_B83C ; B826 30 14                    0.
        dey                                     ; B828 88                       .
BattleSetupServices_Branch_B829:
        dey                                     ; B829 88                       .
BattleSetupServices_Branch_B82A:
        dey                                     ; B82A 88                       .
BattleSetupServices_Branch_B82B:
        lda     ($00),y                       ; B82B B1 00                    ..
        bpl     BattleSetupServices_Branch_B830 ; B82D 10 01                    ..
        iny                                     ; B82F C8                       .
BattleSetupServices_Branch_B830:
        iny                                     ; B830 C8                       .
        iny                                     ; B831 C8                       .
        lda     ($00),y                       ; B832 B1 00                    ..
        bmi     BattleSetupServices_Branch_B838 ; B834 30 02                    0.
        iny                                     ; B836 C8                       .
        iny                                     ; B837 C8                       .
BattleSetupServices_Branch_B838:
        iny                                     ; B838 C8                       .
        jmp     BattleSetupServices_Branch_B879 ; B839 4C 79 B8                 Ly.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B83C:
        and     #$7F                            ; B83C 29 7F                    ).
        sta     CurrentSubmapNumber             ; B83E 85 64                    .d
        lda     $3D                             ; B840 A5 3D                    .=
        and     #$03                            ; B842 29 03                    ).
        sec                                     ; B844 38                       8
        rts                                     ; B845 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B846:
        and     #$3F                            ; B846 29 3F                    )?
        cmp     PlayerLocalX                    ; B848 C5 44                    .D
        bne     BattleSetupServices_Branch_B82B ; B84A D0 DF                    ..
        iny                                     ; B84C C8                       .
        lda     ($00),y                       ; B84D B1 00                    ..
        cmp     PlayerLocalY                    ; B84F C5 45                    .E
        bne     BattleSetupServices_Branch_B82A ; B851 D0 D7                    ..
        jmp     BattleSetupServices_Branch_B821 ; B853 4C 21 B8                 L!.
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_B856:
        lda     PlayerLocalX                    ; B856 A5 44                    .D
        cmp     $04                             ; B858 C5 04                    ..
        bcc     BattleSetupServices_Branch_B878 ; B85A 90 1C                    ..
        lda     PlayerLocalY                    ; B85C A5 45                    .E
        cmp     $05                             ; B85E C5 05                    ..
        bcc     BattleSetupServices_Branch_B878 ; B860 90 16                    ..
        lda     $06                             ; B862 A5 06                    ..
        and     #$0F                            ; B864 29 0F                    ).
        clc                                     ; B866 18                       .
        adc     $04                             ; B867 65 04                    e.
        cmp     PlayerLocalX                    ; B869 C5 44                    .D
        bcc     BattleSetupServices_Branch_B878 ; B86B 90 0B                    ..
        lda     $06                             ; B86D A5 06                    ..
        lsr     a                               ; B86F 4A                       J
        lsr     a                               ; B870 4A                       J
        lsr     a                               ; B871 4A                       J
        lsr     a                               ; B872 4A                       J
        clc                                     ; B873 18                       .
        adc     $05                             ; B874 65 05                    e.
        cmp     PlayerLocalY                    ; B876 C5 45                    .E
BattleSetupServices_Branch_B878:
        rts                                     ; B878 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B879:
        tya                                     ; B879 98                       .
        clc                                     ; B87A 18                       .
        adc     $00                           ; B87B 65 00                    e.
        sta     $00                           ; B87D 85 00                    ..
        lda     #$00                            ; B87F A9 00                    ..
        adc     $01                             ; B881 65 01                    e.
        sta     $01                             ; B883 85 01                    ..
        jmp     BattleSetupServices_Branch_B728 ; B885 4C 28 B7                 L(.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B888:
        lda     #$33                            ; B888 A9 33                    .3
        sta     CurrentMapNumber                ; B88A 85 63                    .c
        lda     #$00                            ; B88C A9 00                    ..
        sta     CurrentSubmapNumber             ; B88E 85 64                    .d
        lda     #$17                            ; B890 A9 17                    ..
        sta     PlayerLocalX                    ; B892 85 44                    .D
        lda     #$03                            ; B894 A9 03                    ..
        sta     PlayerLocalY                    ; B896 85 45                    .E
        lda     #$05                            ; B898 A9 05                    ..
        sta     $07BA                           ; B89A 8D BA 07                 ...
        lda     #$00                            ; B89D A9 00                    ..
        sta     $6E05                           ; B89F 8D 05 6E                 ..n
        lda     $3D                             ; B8A2 A5 3D                    .=
        sec                                     ; B8A4 38                       8
        rts                                     ; B8A5 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B8A6:
        lda     $3D                             ; B8A6 A5 3D                    .=
        and     #$03                            ; B8A8 29 03                    ).
        asl     a                               ; B8AA 0A                       .
        tax                                     ; B8AB AA                       .
        lda     $B8C6,x                         ; B8AC BD C6 B8                 ...
        sta     PlayerWorldX                    ; B8AF 85 42                    .B
        sta     $6191                           ; B8B1 8D 91 61                 ..a
        lda     $B8C7,x                         ; B8B4 BD C7 B8                 ...
        sta     PlayerWorldY                    ; B8B7 85 43                    .C
        sta     $6192                           ; B8B9 8D 92 61                 ..a
BattleSetupServices_Branch_B8BC:
        lda     #$01                            ; B8BC A9 01                    ..
        sta     CurrentTilesetCandidate         ; B8BE 85 65                    .e
        lda     $3D                             ; B8C0 A5 3D                    .=
        and     #$03                            ; B8C2 29 03                    ).
        clc                                     ; B8C4 18                       .
        rts                                     ; B8C5 60                       `
; ----------------------------------------------------------------------------
        db   $11                             ; B8C6 11                       .
        db   $0D,$16,$10,$12,$13,$0D,$10     ; B8C7 0D 16 10 12 13 0D 10     .......
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B8CE:
        lda     PlayerLocalX                    ; B8CE A5 44                    .D
        cmp     #$23                            ; B8D0 C9 23                    .#
        bne     BattleSetupServices_Branch_B8A6 ; B8D2 D0 D2                    ..
        lda     PlayerLocalY                    ; B8D4 A5 45                    .E
        cmp     #$1D                            ; B8D6 C9 1D                    ..
        bne     BattleSetupServices_Branch_B8A6 ; B8D8 D0 CC                    ..
        lda     #$13                            ; B8DA A9 13                    ..
        sta     PlayerWorldX                    ; B8DC 85 42                    .B
        sta     $6191                           ; B8DE 8D 91 61                 ..a
        lda     #$11                            ; B8E1 A9 11                    ..
        sta     PlayerWorldY                    ; B8E3 85 43                    .C
        sta     $6192                           ; B8E5 8D 92 61                 ..a
        brk                                     ; B8E8 00                       .
        db   $6F,$33                         ; B8E9 6F 33                    o3
; ----------------------------------------------------------------------------
        jmp     BattleSetupServices_Branch_B8BC ; B8EB 4C BC B8                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B8EE:
        lda     CurrentSubmapNumber             ; B8EE A5 64                    .d
        cmp     #$01                            ; B8F0 C9 01                    ..
        bne     BattleSetupServices_Branch_B909 ; B8F2 D0 15                    ..
        lda     #$03                            ; B8F4 A9 03                    ..
        sta     CurrentSubmapNumber             ; B8F6 85 64                    .d
        lda     #$08                            ; B8F8 A9 08                    ..
        sta     PlayerLocalX                    ; B8FA 85 44                    .D
        lda     #$0F                            ; B8FC A9 0F                    ..
        sta     PlayerLocalY                    ; B8FE 85 45                    .E
        lda     #$80                            ; B900 A9 80                    ..
        ora     $62AA                           ; B902 0D AA 62                 ..b
        sta     $62AA                           ; B905 8D AA 62                 ..b
        rts                                     ; B908 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B909:
        jmp     BattleSetupServices_Branch_B71E ; B909 4C 1E B7                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B90C:
        lda     CurrentSubmapNumber             ; B90C A5 64                    .d
        cmp     #$01                            ; B90E C9 01                    ..
        beq     BattleSetupServices_Branch_B915 ; B910 F0 03                    ..
BattleSetupServices_Branch_B912:
        jmp     BattleSetupServices_Branch_B742 ; B912 4C 42 B7                 LB.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B915:
        lda     PlayerLocalX                    ; B915 A5 44                    .D
        cmp     #$0B                            ; B917 C9 0B                    ..
        bcc     BattleSetupServices_Branch_B921 ; B919 90 06                    ..
        lda     PlayerLocalY                    ; B91B A5 45                    .E
        cmp     #$06                            ; B91D C9 06                    ..
        bcc     BattleSetupServices_Branch_B936 ; B91F 90 15                    ..
BattleSetupServices_Branch_B921:
        lda     PlayerLocalX                    ; B921 A5 44                    .D
        cmp     #$03                            ; B923 C9 03                    ..
        bcc     BattleSetupServices_Branch_B92D ; B925 90 06                    ..
        lda     PlayerLocalY                    ; B927 A5 45                    .E
        cmp     #$07                            ; B929 C9 07                    ..
        bcc     BattleSetupServices_Branch_B946 ; B92B 90 19                    ..
BattleSetupServices_Branch_B92D:
        lda     PlayerLocalY                    ; B92D A5 45                    .E
        cmp     #$11                            ; B92F C9 11                    ..
LB932 = $+ 1
        bcc     BattleSetupServices_Branch_B951 ; B931 90 1E                    ..
        jmp     BattleSetupServices_Branch_B912 ; B933 4C 12 B9                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B936:
        lda     #$0A                            ; B936 A9 0A                    ..
        sta     PlayerLocalX                    ; B938 85 44                    .D
        lda     #$06                            ; B93A A9 06                    ..
        sta     PlayerLocalY                    ; B93C 85 45                    .E
BattleSetupServices_Branch_B93E:
        lda     #$02                            ; B93E A9 02                    ..
        sta     CurrentSubmapNumber             ; B940 85 64                    .d
        lda     $3D                             ; B942 A5 3D                    .=
        sec                                     ; B944 38                       8
        rts                                     ; B945 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B946:
        lda     #$05                            ; B946 A9 05                    ..
        sta     PlayerLocalX                    ; B948 85 44                    .D
        lda     #$06                            ; B94A A9 06                    ..
        sta     PlayerLocalY                    ; B94C 85 45                    .E
        jmp     BattleSetupServices_Branch_B93E ; B94E 4C 3E B9                 L>.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B951:
        lda     #$06                            ; B951 A9 06                    ..
        sta     PlayerLocalX                    ; B953 85 44                    .D
        lda     #$0A                            ; B955 A9 0A                    ..
        sta     PlayerLocalY                    ; B957 85 45                    .E
        jmp     BattleSetupServices_Branch_B93E ; B959 4C 3E B9                 L>.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_B95C:
        lda     SaveCurrentChapterMinus1        ; B95C AD 5A 61                 .Za
        bne     BattleSetupServices_Branch_B963 ; B95F D0 02                    ..
        inc     PlayerWorldY                    ; B961 E6 43                    .C
BattleSetupServices_Branch_B963:
        lda     $29                             ; B963 A5 29                    .)
        beq     BattleSetupServices_Branch_B96A ; B965 F0 03                    ..
        inc     $6192                           ; B967 EE 92 61                 ..a
BattleSetupServices_Branch_B96A:
        inc     PlayerWorldY                    ; B96A E6 43                    .C
        clc                                     ; B96C 18                       .
        jmp     BattleSetupServices_Branch_B7A1 ; B96D 4C A1 B7                 L..
; ----------------------------------------------------------------------------
        db   $72                             ; B970 72                       r
; ----------------------------------------------------------------------------
        lda     $8242,y                         ; B971 B9 42 82                 .B.
        txa                                     ; B974 8A                       .
        bpl     $B932                           ; B975 10 BB                    ..
        db   $03,$0F,$12,$42,$82,$98,$12,$64 ; B977 03 0F 12 42 82 98 12 64  ...B...d
        db   $03,$1A,$0F,$33,$00,$02,$05,$07 ; B97F 03 1A 0F 33 00 02 05 07  ...3....
        db   $2F,$81,$12,$1B,$02,$04,$18,$2F ; B987 2F 81 12 1B 02 04 18 2F  /....../
        db   $81,$14,$1A,$02,$06,$17,$36,$02 ; B98F 81 14 1A 02 06 17 36 02  ......6.
        db   $03,$88,$0F,$36,$84,$83,$24,$22 ; B997 03 88 0F 36 84 83 24 22  ...6..$"
        db   $05,$83,$0C,$36,$84,$8B,$24,$22 ; B99F 05 83 0C 36 84 8B 24 22  ...6..$"
        db   $05,$8C,$0C,$03,$81,$11,$10,$00 ; B9A7 05 8C 0C 03 81 11 10 00  ........
        db   $93,$10,$3B,$00,$01,$1B,$1A,$3B ; B9AF 93 10 3B 00 01 1B 1A 3B  ..;....;
        db   $01,$02,$18,$22,$3B,$01,$02,$18 ; B9B7 01 02 18 22 3B 01 02 18  ...";...
        db   $22,$35,$01,$83,$35,$07,$06,$07 ; B9BF 22 35 01 83 35 07 06 07  "5..5...
        db   $07,$35,$06,$05,$84,$05,$3F,$01 ; B9C7 07 35 06 05 84 05 3F 01  .5....?.
        db   $82,$01,$02,$01,$56,$03,$01,$01 ; B9CF 82 01 02 01 56 03 01 01  ....V...
        db   $00,$D1,$02,$45,$04,$01,$08,$09 ; B9D7 00 D1 02 45 04 01 08 09  ...E....
        db   $04,$0D,$00,$A7,$19,$04,$09,$00 ; B9DF 04 0D 00 A7 19 04 09 00  ........
        db   $29,$15,$47,$80,$05,$05,$00,$11 ; B9E7 29 15 47 80 05 05 00 11  ).G.....
        db   $05,$47,$80,$11,$02,$00,$1D,$02 ; B9EF 05 47 80 11 02 00 1D 02  .G......
        db   $48,$89,$0A,$08,$07,$04,$0F,$48 ; B9F7 48 89 0A 08 07 04 0F 48  H......H
        db   $89,$0E,$08,$07,$16,$0F,$48,$89 ; B9FF 89 0E 08 07 16 0F 48 89  ......H.
        db   $09,$08,$07,$04,$0F,$48,$89,$0F ; BA07 09 08 07 04 0F 48 89 0F  .....H..
        db   $08,$07,$16,$0F,$48,$88,$09,$0D ; BA0F 08 07 16 0F 48 88 09 0D  ....H...
        db   $09,$09,$08,$48,$88,$0A,$0D,$09 ; BA17 09 09 08 48 88 0A 0D 09  ...H....
        db   $0A,$08,$48,$88,$0E,$0D,$09,$0E ; BA1F 0A 08 48 88 0E 0D 09 0E  ..H.....
        db   $08,$48,$88,$0F,$0D,$09,$0F,$08 ; BA27 08 48 88 0F 0D 09 0F 08  .H......
        db   $37,$81,$03,$05,$02,$09,$0A,$37 ; BA2F 37 81 03 05 02 09 0A 37  7......7
        db   $81,$04,$05,$02,$0A,$0A,$FF     ; BA37 81 04 05 02 0A 0A FF     .......
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_BA3E:
        lda     $03E3                           ; BA3E AD E3 03                 ...
        sta     $00                           ; BA41 85 00                    ..
        lda     $03DD                           ; BA43 AD DD 03                 ...
        beq     BattleSetupServices_Branch_BA76 ; BA46 F0 2E                    ..
        cmp     #$08                            ; BA48 C9 08                    ..
        bne     BattleSetupServices_Branch_BA62 ; BA4A D0 16                    ..
        ldy     #$07                            ; BA4C A0 07                    ..
        lda     $07B5                           ; BA4E AD B5 07                 ...
        sta     $00                           ; BA51 85 00                    ..
        lda     $07B6                           ; BA53 AD B6 07                 ...
        sta     $01                             ; BA56 85 01                    ..
BattleSetupServices_Branch_BA58:
        lda     $03E3,y                         ; BA58 B9 E3 03                 ...
        sta     ($00),y                       ; BA5B 91 00                    ..
        dey                                     ; BA5D 88                       .
        bpl     BattleSetupServices_Branch_BA58 ; BA5E 10 F8                    ..
        clc                                     ; BA60 18                       .
        rts                                     ; BA61 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BA62:
        lsr     a                               ; BA62 4A                       J
        bcc     BattleSetupServices_Branch_BA68 ; BA63 90 03                    ..
        jmp     BattleSetupServices_Branch_BA76 ; BA65 4C 76 BA                 Lv.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BA68:
        bcs     BattleSetupServices_Branch_BA93 ; BA68 B0 29                    .)
        lda     $03DD                           ; BA6A AD DD 03                 ...
        cmp     #$02                            ; BA6D C9 02                    ..
        bne     BattleSetupServices_Branch_BA76 ; BA6F D0 05                    ..
        sec                                     ; BA71 38                       8
        lda     $01                             ; BA72 A5 01                    ..
        bne     BattleSetupServices_Branch_BA93 ; BA74 D0 1D                    ..
BattleSetupServices_Branch_BA76:
        lda     $07B5                           ; BA76 AD B5 07                 ...
        sta     $02                           ; BA79 85 02                    ..
        lda     $07B6                           ; BA7B AD B6 07                 ...
        sta     $03                             ; BA7E 85 03                    ..
        ldy     #$00                            ; BA80 A0 00                    ..
        lda     $00                           ; BA82 A5 00                    ..
        sta     ($02),y                       ; BA84 91 02                    ..
        lda     $03DD                           ; BA86 AD DD 03                 ...
        cmp     #$03                            ; BA89 C9 03                    ..
        bcc     BattleSetupServices_Branch_BA93 ; BA8B 90 06                    ..
        lda     $01                             ; BA8D A5 01                    ..
        iny                                     ; BA8F C8                       .
        sta     ($02),y                       ; BA90 91 02                    ..
        clc                                     ; BA92 18                       .
BattleSetupServices_Branch_BA93:
        rts                                     ; BA93 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_BA94:
        lda     $03C9                           ; BA94 AD C9 03                 ...
        and     #$F0                            ; BA97 29 F0                    ).
        lsr     a                               ; BA99 4A                       J
        lsr     a                               ; BA9A 4A                       J
        lsr     a                               ; BA9B 4A                       J
        sta     $01                             ; BA9C 85 01                    ..
        lda     $03C8                           ; BA9E AD C8 03                 ...
        and     #$0F                            ; BAA1 29 0F                    ).
        asl     a                               ; BAA3 0A                       .
        sta     $00                           ; BAA4 85 00                    ..
        inc     $00                           ; BAA6 E6 00                    ..
        ldx     $03DD                           ; BAA8 AE DD 03                 ...
        bne     BattleSetupServices_Branch_BAC0 ; BAAB D0 13                    ..
        inc     $01                             ; BAAD E6 01                    ..
        inc     $01                             ; BAAF E6 01                    ..
        lda     $08                             ; BAB1 A5 08                    ..
        clc                                     ; BAB3 18                       .
        adc     $00                           ; BAB4 65 00                    e.
        sta     $00                           ; BAB6 85 00                    ..
        inc     $00                           ; BAB8 E6 00                    ..
        lda     $03E4                           ; BABA AD E4 03                 ...
        jmp     UpperFixedEngine_Entry_C65A     ; BABD 4C 5A C6                 LZ.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BAC0:
        lda     $00                           ; BAC0 A5 00                    ..
        clc                                     ; BAC2 18                       .
        adc     $07B3                           ; BAC3 6D B3 07                 m..
        sta     $00                           ; BAC6 85 00                    ..
        ldy     $BB01,x                         ; BAC8 BC 01 BB                 ...
        lda     $03DD                           ; BACB AD DD 03                 ...
        cmp     #$08                            ; BACE C9 08                    ..
        bne     BattleSetupServices_Branch_BAF3 ; BAD0 D0 21                    .!
        dec     $01                             ; BAD2 C6 01                    ..
        ldy     #$00                            ; BAD4 A0 00                    ..
BattleSetupServices_Branch_BAD6:
        lda     #$65                            ; BAD6 A9 65                    .e
        cpy     $02                           ; BAD8 C4 02                    ..
        bne     BattleSetupServices_Branch_BADE ; BADA D0 02                    ..
        lda     #$85                            ; BADC A9 85                    ..
BattleSetupServices_Branch_BADE:
        jsr     UpperFixedEngine_Entry_C65A     ; BADE 20 5A C6                  Z.
        dec     $01                             ; BAE1 C6 01                    ..
        lda     $03E3,y                         ; BAE3 B9 E3 03                 ...
        jsr     UpperFixedEngine_Entry_C65A     ; BAE6 20 5A C6                  Z.
        inc     $01                             ; BAE9 E6 01                    ..
        inc     $00                           ; BAEB E6 00                    ..
        iny                                     ; BAED C8                       .
        cpy     #$08                            ; BAEE C0 08                    ..
        bne     BattleSetupServices_Branch_BAD6 ; BAF0 D0 E4                    ..
        rts                                     ; BAF2 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BAF3:
        lda     $03E3,y                         ; BAF3 B9 E3 03                 ...
        jsr     UpperFixedEngine_Entry_C65A     ; BAF6 20 5A C6                  Z.
        inc     $00                           ; BAF9 E6 00                    ..
        iny                                     ; BAFB C8                       .
        cpy     #$05                            ; BAFC C0 05                    ..
        bne     BattleSetupServices_Branch_BAF3 ; BAFE D0 F3                    ..
        rts                                     ; BB00 60                       `
; ----------------------------------------------------------------------------
        db   $00,$03,$02,$01,$00             ; BB01 00 03 02 01 00           .....
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_BB06:
        sta     $03DA                           ; BB06 8D DA 03                 ...
        lda     $07B4                           ; BB09 AD B4 07                 ...
        and     #$09                            ; BB0C 29 09                    ).
        beq     BattleSetupServices_Branch_BB25 ; BB0E F0 15                    ..
        lda     $F8                             ; BB10 A5 F8                    ..
        sta     $03D1                           ; BB12 8D D1 03                 ...
        lda     #$1F                            ; BB15 A9 1F                    ..
        sta     TextCursorPosition              ; BB17 8D CF 03                 ...
        lda     $07B4                           ; BB1A AD B4 07                 ...
        and     #$F6                            ; BB1D 29 F6                    ).
        ora     #$40                            ; BB1F 09 40                    .@
        sta     $07B4                           ; BB21 8D B4 07                 ...
        rts                                     ; BB24 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BB25:
        lda     $F8                             ; BB25 A5 F8                    ..
        cmp     #$F0                            ; BB27 C9 F0                    ..
        bcc     BattleSetupServices_Entry_BB62  ; BB29 90 37                    .7
        cmp     #$FE                            ; BB2B C9 FE                    ..
        bne     BattleSetupServices_Branch_BB3A ; BB2D D0 0B                    ..
        lda     #$00                            ; BB2F A9 00                    ..
        sta     $03D1                           ; BB31 8D D1 03                 ...
        lda     #$1F                            ; BB34 A9 1F                    ..
        sta     TextCursorPosition              ; BB36 8D CF 03                 ...
        rts                                     ; BB39 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BB3A:
        clc                                     ; BB3A 18                       .
        sbc     #$F0                            ; BB3B E9 F0                    ..
        sta     $F8                             ; BB3D 85 F8                    ..
        jsr     BattleSetupServices_Entry_BB62  ; BB3F 20 62 BB                  b.
        lda     TextCursorPosition              ; BB42 AD CF 03                 ...
        and     #$0F                            ; BB45 29 0F                    ).
        bne     BattleSetupServices_Branch_BB61 ; BB47 D0 18                    ..
        lda     $03D5                           ; BB49 AD D5 03                 ...
        and     #$0F                            ; BB4C 29 0F                    ).
        sta     $03DA                           ; BB4E 8D DA 03                 ...
        ora     TextCursorPosition              ; BB51 0D CF 03                 ...
        sta     TextCursorPosition              ; BB54 8D CF 03                 ...
        lda     $03D1                           ; BB57 AD D1 03                 ...
        sec                                     ; BB5A 38                       8
        sbc     $03DA                           ; BB5B ED DA 03                 ...
        sta     $03D1                           ; BB5E 8D D1 03                 ...
BattleSetupServices_Branch_BB61:
        rts                                     ; BB61 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_BB62:
        ldy     $03DA                           ; BB62 AC DA 03                 ...
        lda     #$00                            ; BB65 A9 00                    ..
        sta     $03D1                           ; BB67 8D D1 03                 ...
        lda     $F8                             ; BB6A A5 F8                    ..
        cpy     #$01                            ; BB6C C0 01                    ..
        beq     BattleSetupServices_Branch_BB7B ; BB6E F0 0B                    ..
        lsr     a                               ; BB70 4A                       J
        cpy     #$02                            ; BB71 C0 02                    ..
        beq     BattleSetupServices_Branch_BB7B ; BB73 F0 06                    ..
        lsr     a                               ; BB75 4A                       J
        cpy     #$04                            ; BB76 C0 04                    ..
        beq     BattleSetupServices_Branch_BB7B ; BB78 F0 01                    ..
        lsr     a                               ; BB7A 4A                       J
BattleSetupServices_Branch_BB7B:
        sta     $03DA                           ; BB7B 8D DA 03                 ...
        lda     BattleSetupServices_Branch_BBCB,y; BB7E B9 CB BB                ...
        and     $F8                             ; BB81 25 F8                    %.
        clc                                     ; BB83 18                       .
        adc     #$01                            ; BB84 69 01                    i.
        asl     a                               ; BB86 0A                       .
        asl     a                               ; BB87 0A                       .
        asl     a                               ; BB88 0A                       .
        asl     a                               ; BB89 0A                       .
        sta     TextCursorPosition              ; BB8A 8D CF 03                 ...
        ldx     $03DA                           ; BB8D AE DA 03                 ...
        lda     $03D5                           ; BB90 AD D5 03                 ...
        and     #$0F                            ; BB93 29 0F                    ).
        tay                                     ; BB95 A8                       .
        beq     BattleSetupServices_Branch_BBB5 ; BB96 F0 1D                    ..
        lda     $03DA                           ; BB98 AD DA 03                 ...
        sty     $03DA                           ; BB9B 8C DA 03                 ...
BattleSetupServices_Branch_BB9E:
        cmp     $03DA                           ; BB9E CD DA 03                 ...
        bcc     BattleSetupServices_Branch_BBAA ; BBA1 90 07                    ..
        sec                                     ; BBA3 38                       8
        sbc     $03DA                           ; BBA4 ED DA 03                 ...
        jmp     BattleSetupServices_Branch_BB9E ; BBA7 4C 9E BB                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BBAA:
        sta     $03DA                           ; BBAA 8D DA 03                 ...
        txa                                     ; BBAD 8A                       .
        sec                                     ; BBAE 38                       8
        sbc     $03DA                           ; BBAF ED DA 03                 ...
        sta     $03D1                           ; BBB2 8D D1 03                 ...
BattleSetupServices_Branch_BBB5:
        lda     $03DA                           ; BBB5 AD DA 03                 ...
        ora     TextCursorPosition              ; BBB8 0D CF 03                 ...
        sta     TextCursorPosition              ; BBBB 8D CF 03                 ...
        lda     $03CE                           ; BBBE AD CE 03                 ...
        cmp     #$0B                            ; BBC1 C9 0B                    ..
        bne     BattleSetupServices_Branch_BBCB ; BBC3 D0 06                    ..
        inc     TextCursorPosition              ; BBC5 EE CF 03                 ...
        inc     TextCursorPosition              ; BBC8 EE CF 03                 ...
BattleSetupServices_Branch_BBCB:
        rts                                     ; BBCB 60                       `
; ----------------------------------------------------------------------------
        db   $00,$01,$00,$03,$00,$00,$00,$07 ; BBCC 00 01 00 03 00 00 00 07  ........
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_BBD4:
        cpy     #$02                            ; BBD4 C0 02                    ..
        bne     BattleSetupServices_Branch_BBE0 ; BBD6 D0 08                    ..
        cpx     #$03                            ; BBD8 E0 03                    ..
        bcc     BattleSetupServices_Branch_BBE0 ; BBDA 90 04                    ..
        lda     $62EE                           ; BBDC AD EE 62                 ..b
        rts                                     ; BBDF 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BBE0:
        lda     $BC30                           ; BBE0 AD 30 BC                 .0.
        sta     $00                           ; BBE3 85 00                    ..
        lda     $BC31                           ; BBE5 AD 31 BC                 .1.
        sta     $01                             ; BBE8 85 01                    ..
        txa                                     ; BBEA 8A                       .
        ldx     #$00                            ; BBEB A2 00                    ..
        jsr     MultiplyPointerWord             ; BBED 20 27 C8                  '.
        sty     $05                             ; BBF0 84 05                    ..
        cpy     #$01                            ; BBF2 C0 01                    ..
        bne     BattleSetupServices_Branch_BC10 ; BBF4 D0 1A                    ..
        lda     $BC3A                           ; BBF6 AD 3A BC                 .:.
        sta     $02                           ; BBF9 85 02                    ..
        lda     $BC3B                           ; BBFB AD 3B BC                 .;.
        sta     $03                             ; BBFE 85 03                    ..
        ldx     #$02                            ; BC00 A2 02                    ..
        lda     $04                             ; BC02 A5 04                    ..
        jsr     MultiplyPointerWord             ; BC04 20 27 C8                  '.
        ldx     #$00                            ; BC07 A2 00                    ..
        lda     $02                           ; BC09 A5 02                    ..
        ldy     $03                             ; BC0B A4 03                    ..
        jsr     AddWordToPointer                ; BC0D 20 1D C8                  ..
BattleSetupServices_Branch_BC10:
        lda     $05                             ; BC10 A5 05                    ..
        asl     a                               ; BC12 0A                       .
        tay                                     ; BC13 A8                       .
        lda     $BC32,y                         ; BC14 B9 32 BC                 .2.
        pha                                     ; BC17 48                       H
        lda     $BC33,y                         ; BC18 B9 33 BC                 .3.
        tay                                     ; BC1B A8                       .
        pla                                     ; BC1C 68                       h
        jsr     AddWordToPointer                ; BC1D 20 1D C8                  ..
        lda     $BC2E                           ; BC20 AD 2E BC                 ...
        ldy     $BC2F                           ; BC23 AC 2F BC                 ./.
        jsr     AddWordToPointer                ; BC26 20 1D C8                  ..
        ldy     #$00                            ; BC29 A0 00                    ..
        lda     ($00),y                       ; BC2B B1 00                    ..
        rts                                     ; BC2D 60                       `
; ----------------------------------------------------------------------------
        db   $EF                             ; BC2E EF                       .
        db   $62                             ; BC2F 62                       b
        db   $F0                             ; BC30 F0                       .
        db   $02                             ; BC31 02                       .
        db   $5E                             ; BC32 5E                       ^
        db   $01,$07,$00,$EF,$02,$5B,$01     ; BC33 01 07 00 EF 02 5B 01     .....[.
        db   $1E                             ; BC3A 1E                       .
        db   $00                             ; BC3B 00                       .
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_BC3C:
        asl     $03CC                           ; BC3C 0E CC 03                 ...
        lsr     $03CC                           ; BC3F 4E CC 03                 N..
BattleSetupServices_Branch_BC42:
        jsr     UpperFixedEngine_Entry_C8EC     ; BC42 20 EC C8                  ..
        lda     $F5                             ; BC45 A5 F5                    ..
        and     #$02                            ; BC47 29 02                    ).
        beq     BattleSetupServices_Branch_BC53 ; BC49 F0 08                    ..
        lda     ButtonsPressed                  ; BC4B A5 14                    ..
        and     #$04                            ; BC4D 29 04                    ).
        beq     BattleSetupServices_Branch_BC53 ; BC4F F0 02                    ..
        sec                                     ; BC51 38                       8
        rts                                     ; BC52 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BC53:
        lda     $03CC                           ; BC53 AD CC 03                 ...
        and     #$0F                            ; BC56 29 0F                    ).
        sta     $03DA                           ; BC58 8D DA 03                 ...
        beq     BattleSetupServices_Branch_BC8F ; BC5B F0 32                    .2
        lda     $07B4                           ; BC5D AD B4 07                 ...
        ora     #$20                            ; BC60 09 20                    .
        sta     $07B4                           ; BC62 8D B4 07                 ...
        lda     $03DA                           ; BC65 AD DA 03                 ...
        cmp     #$01                            ; BC68 C9 01                    ..
        beq     BattleSetupServices_Branch_BC76 ; BC6A F0 0A                    ..
        cmp     #$02                            ; BC6C C9 02                    ..
        beq     BattleSetupServices_Branch_BC76 ; BC6E F0 06                    ..
        lda     ButtonsPressed                  ; BC70 A5 14                    ..
        and     #$03                            ; BC72 29 03                    ).
        bne     BattleSetupServices_Branch_BCB3 ; BC74 D0 3D                    .=
BattleSetupServices_Branch_BC76:
        lda     #$08                            ; BC76 A9 08                    ..
        sec                                     ; BC78 38                       8
        sbc     $03DA                           ; BC79 ED DA 03                 ...
        tay                                     ; BC7C A8                       .
        lda     $BD17,y                         ; BC7D B9 17 BD                 ...
        and     ButtonsPressed                  ; BC80 25 14                    %.
        beq     BattleSetupServices_Branch_BC8F ; BC82 F0 0B                    ..
        jsr     WaitForNmi                      ; BC84 20 74 FF                  t.
        jsr     BattleSetupServices_Entry_BCEF  ; BC87 20 EF BC                  ..
        bcc     BattleSetupServices_Branch_BC42 ; BC8A 90 B6                    ..
        jmp     BattleSetupServices_Branch_BCB6 ; BC8C 4C B6 BC                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BC8F:
        lda     $07B4                           ; BC8F AD B4 07                 ...
        and     #$DF                            ; BC92 29 DF                    ).
        sta     $07B4                           ; BC94 8D B4 07                 ...
        jsr     BattleSetupServices_Entry_BCDB  ; BC97 20 DB BC                  ..
BattleSetupServices_Branch_BC9A:
        jsr     UpperFixedEngine_Entry_C8EC     ; BC9A 20 EC C8                  ..
        lda     ButtonsPressed                  ; BC9D A5 14                    ..
        and     #$F3                            ; BC9F 29 F3                    ).
        bne     BattleSetupServices_Branch_BCB3 ; BCA1 D0 10                    ..
        lda     #$00                            ; BCA3 A9 00                    ..
        sta     $03CC                           ; BCA5 8D CC 03                 ...
        jsr     WaitForNmi                      ; BCA8 20 74 FF                  t.
        jsr     BattleSetupServices_Entry_BCEF  ; BCAB 20 EF BC                  ..
        bcc     BattleSetupServices_Branch_BC9A ; BCAE 90 EA                    ..
        jmp     BattleSetupServices_Branch_BCB6 ; BCB0 4C B6 BC                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BCB3:
        jsr     BattleSetupServices_Entry_BCC4  ; BCB3 20 C4 BC                  ..
BattleSetupServices_Branch_BCB6:
        lda     $03CC                           ; BCB6 AD CC 03                 ...
        and     #$0F                            ; BCB9 29 0F                    ).
        cmp     #$01                            ; BCBB C9 01                    ..
        bne     BattleSetupServices_Branch_BCC2 ; BCBD D0 03                    ..
        brk                                     ; BCBF 00                       .
        db   $85,$FB                         ; BCC0 85 FB                    ..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BCC2:
        clc                                     ; BCC2 18                       .
        rts                                     ; BCC3 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_BCC4:
        ldy     #$00                            ; BCC4 A0 00                    ..
BattleSetupServices_Branch_BCC6:
        lsr     a                               ; BCC6 4A                       J
        iny                                     ; BCC7 C8                       .
        bcc     BattleSetupServices_Branch_BCC6 ; BCC8 90 FC                    ..
        lda     #$00                            ; BCCA A9 00                    ..
        sta     $03CC                           ; BCCC 8D CC 03                 ...
        tya                                     ; BCCF 98                       .
        ora     $03CC                           ; BCD0 0D CC 03                 ...
        sta     $03CC                           ; BCD3 8D CC 03                 ...
        jsr     BattleSetupServices_Entry_BCDB  ; BCD6 20 DB BC                  ..
        clc                                     ; BCD9 18                       .
        rts                                     ; BCDA 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_BCDB:
        ldx     #$0C                            ; BCDB A2 0C                    ..
        lda     $07B4                           ; BCDD AD B4 07                 ...
        and     #$20                            ; BCE0 29 20                    )
        beq     BattleSetupServices_Branch_BCE6 ; BCE2 F0 02                    ..
        ldx     #$06                            ; BCE4 A2 06                    ..
BattleSetupServices_Branch_BCE6:
        txa                                     ; BCE6 8A                       .
        clc                                     ; BCE7 18                       .
        adc     $050C                           ; BCE8 6D 0C 05                 m..
        sta     $03CD                           ; BCEB 8D CD 03                 ...
        rts                                     ; BCEE 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_BCEF:
        lda     $03CD                           ; BCEF AD CD 03                 ...
        cmp     $050C                           ; BCF2 CD 0C 05                 ...
        bmi     BattleSetupServices_Branch_BD12 ; BCF5 30 1B                    0.
        lda     $03E2                           ; BCF7 AD E2 03                 ...
        cmp     $050C                           ; BCFA CD 0C 05                 ...
        clc                                     ; BCFD 18                       .
        bpl     BattleSetupServices_Branch_BD16 ; BCFE 10 16                    ..
        lda     $050C                           ; BD00 AD 0C 05                 ...
        clc                                     ; BD03 18                       .
        adc     #$0F                            ; BD04 69 0F                    i.
        sta     $03E2                           ; BD06 8D E2 03                 ...
        asl     $03CC                           ; BD09 0E CC 03                 ...
        sec                                     ; BD0C 38                       8
        ror     $03CC                           ; BD0D 6E CC 03                 n..
        sec                                     ; BD10 38                       8
        rts                                     ; BD11 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BD12:
        jsr     BattleSetupServices_Entry_BCDB  ; BD12 20 DB BC                  ..
        sec                                     ; BD15 38                       8
BattleSetupServices_Branch_BD16:
        rts                                     ; BD16 60                       `
; ----------------------------------------------------------------------------
        db   $80,$40,$20,$10,$08,$04,$02,$01 ; BD17 80 40 20 10 08 04 02 01  .@ .....
; ----------------------------------------------------------------------------
BattleSetupServices_Entry_BD1F:
        lda     $07B2                           ; BD1F AD B2 07                 ...
        sta     $02                           ; BD22 85 02                    ..
        lda     $07B3                           ; BD24 AD B3 07                 ...
        sta     $03                             ; BD27 85 03                    ..
        lda     $09                             ; BD29 A5 09                    ..
        sta     $04                             ; BD2B 85 04                    ..
        ldy     #$01                            ; BD2D A0 01                    ..
BattleSetupServices_Branch_BD2F:
        dec     $04                             ; BD2F C6 04                    ..
        bmi     BattleSetupServices_Branch_BD40 ; BD31 30 0D                    0.
BattleSetupServices_Branch_BD33:
        iny                                     ; BD33 C8                       .
        lda     ($02),y                       ; BD34 B1 02                    ..
        cmp     #$9F                            ; BD36 C9 9F                    ..
        beq     BattleSetupServices_Branch_BDAB ; BD38 F0 71                    .q
        cmp     #$9E                            ; BD3A C9 9E                    ..
        bne     BattleSetupServices_Branch_BD33 ; BD3C D0 F5                    ..
        beq     BattleSetupServices_Branch_BD2F ; BD3E F0 EF                    ..
BattleSetupServices_Branch_BD40:
        lda     $08                             ; BD40 A5 08                    ..
        sta     $04                             ; BD42 85 04                    ..
        lda     #$00                            ; BD44 A9 00                    ..
        sta     $07                             ; BD46 85 07                    ..
BattleSetupServices_Branch_BD48:
        lda     $04                             ; BD48 A5 04                    ..
        bmi     BattleSetupServices_Branch_BDAB ; BD4A 30 5F                    0_
        iny                                     ; BD4C C8                       .
        lda     ($02),y                       ; BD4D B1 02                    ..
        bmi     BattleSetupServices_Branch_BD5F ; BD4F 30 0E                    0.
        ldx     $07                             ; BD51 A6 07                    ..
        beq     BattleSetupServices_Branch_BD5A ; BD53 F0 05                    ..
        dec     $07                             ; BD55 C6 07                    ..
        jmp     BattleSetupServices_Branch_BD48 ; BD57 4C 48 BD                 LH.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BD5A:
        dec     $04                             ; BD5A C6 04                    ..
        jmp     BattleSetupServices_Branch_BD48 ; BD5C 4C 48 BD                 LH.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BD5F:
        cmp     #$9F                            ; BD5F C9 9F                    ..
        beq     BattleSetupServices_Branch_BDAB ; BD61 F0 48                    .H
        cmp     #$9E                            ; BD63 C9 9E                    ..
        beq     BattleSetupServices_Branch_BDAB ; BD65 F0 44                    .D
        and     #$F8                            ; BD67 29 F8                    ).
        cmp     #$90                            ; BD69 C9 90                    ..
        bne     BattleSetupServices_Branch_BD7D ; BD6B D0 10                    ..
        lda     ($02),y                       ; BD6D B1 02                    ..
        and     #$07                            ; BD6F 29 07                    ).
        sta     $05                             ; BD71 85 05                    ..
        lda     $04                             ; BD73 A5 04                    ..
        clc                                     ; BD75 18                       .
        sbc     $05                             ; BD76 E5 05                    ..
        sta     $04                             ; BD78 85 04                    ..
        jmp     BattleSetupServices_Branch_BD48 ; BD7A 4C 48 BD                 LH.
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BD7D:
        lda     ($02),y                       ; BD7D B1 02                    ..
        and     #$C0                            ; BD7F 29 C0                    ).
        cmp     #$C0                            ; BD81 C9 C0                    ..
        bne     BattleSetupServices_Branch_BDA7 ; BD83 D0 22                    ."
        sty     $06                             ; BD85 84 06                    ..
        lda     ($02),y                       ; BD87 B1 02                    ..
        pha                                     ; BD89 48                       H
        iny                                     ; BD8A C8                       .
        and     #$30                            ; BD8B 29 30                    )0
        bne     BattleSetupServices_Branch_BD90 ; BD8D D0 01                    ..
        iny                                     ; BD8F C8                       .
BattleSetupServices_Branch_BD90:
        pla                                     ; BD90 68                       h
        and     #$0F                            ; BD91 29 0F                    ).
        tax                                     ; BD93 AA                       .
        lda     $BDBD,x                         ; BD94 BD BD BD                 ...
        sta     $05                             ; BD97 85 05                    ..
        lda     $04                             ; BD99 A5 04                    ..
        sec                                     ; BD9B 38                       8
        sbc     $05                             ; BD9C E5 05                    ..
        sta     $04                             ; BD9E 85 04                    ..
        bpl     BattleSetupServices_Branch_BD48 ; BDA0 10 A6                    ..
        ldy     $06                             ; BDA2 A4 06                    ..
        jmp     BattleSetupServices_Branch_BDAB ; BDA4 4C AB BD                 L..
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BDA7:
        dec     $04                             ; BDA7 C6 04                    ..
        bpl     BattleSetupServices_Branch_BD48 ; BDA9 10 9D                    ..
BattleSetupServices_Branch_BDAB:
        lda     ($02),y                       ; BDAB B1 02                    ..
        and     #$E0                            ; BDAD 29 E0                    ).
        cmp     #$A0                            ; BDAF C9 A0                    ..
        bne     BattleSetupServices_Branch_BDB9 ; BDB1 D0 06                    ..
        lda     ($02),y                       ; BDB3 B1 02                    ..
        and     #$1F                            ; BDB5 29 1F                    ).
        sec                                     ; BDB7 38                       8
        rts                                     ; BDB8 60                       `
; ----------------------------------------------------------------------------
BattleSetupServices_Branch_BDB9:
        lda     ($02),y                       ; BDB9 B1 02                    ..
        clc                                     ; BDBB 18                       .
        rts                                     ; BDBC 60                       `
; ----------------------------------------------------------------------------
        db   $09,$03,$03,$05,$05,$00,$00,$00 ; BDBD 09 03 03 05 05 00 00 00  ........
        db   $04,$05,$09,$09,$6C,$EE,$F0,$E1 ; BDC5 04 05 09 09 6C EE F0 E1  ....l...
        db   $76,$ED,$FF,$5E,$86,$00,$16,$19 ; BDCD 76 ED FF 5E 86 00 16 19  v..^....
        db   $1C,$6A,$60,$95,$18,$EE,$C0,$C0 ; BDD5 1C 6A 60 95 18 EE C0 C0  .j`.....
        db   $16,$1D,$19,$BA,$00,$28,$4A,$2B ; BDDD 16 1D 19 BA 00 28 4A 2B  .....(J+
        db   $20,$4A,$B7,$16,$26,$66,$98,$16 ; BDE5 20 4A B7 16 26 66 98 16   J..&f..
        db   $27,$28,$2D,$6D,$04,$29,$22,$68 ; BDED 27 28 2D 6D 04 29 22 68  '(-m.)"h
        db   $BC,$00,$80,$84,$02,$25,$21,$34 ; BDF5 BC 00 80 84 02 25 21 34  .....%!4
        db   $24,$20,$FB,$02,$F9,$E7,$FB,$F4 ; BDFD 24 20 FB 02 F9 E7 FB F4  $ ......
        db   $64,$8C,$03,$1A,$FA,$10,$F9,$FE ; BE05 64 8C 03 1A FA 10 F9 FE  d.......
        db   $1E,$BE,$FE,$1E,$BE,$65,$8C,$03 ; BE0D 1E BE FE 1E BE 65 8C 03  .....e..
        db   $1B,$FA,$0F,$F9,$FB,$00,$FE,$CA ; BE15 1B FA 0F F9 FB 00 FE CA  ........
        db   $BD,$EE,$F0,$64,$8C,$03,$1A,$FA ; BE1D BD EE F0 64 8C 03 1A FA  ...d....
        db   $08,$F9,$1A,$1B,$FA,$08,$FB,$64 ; BE25 08 F9 1A 1B FA 08 FB 64  .......d
        db   $8C,$08,$67,$86,$04,$1D,$FA,$0C ; BE2D 8C 08 67 86 04 1D FA 0C  ..g.....
        db   $F6,$6A,$8C,$08,$71,$06,$BB,$04 ; BE35 F6 6A 8C 08 71 06 BB 04  .j..q...
        db   $EE,$F0,$5E,$8C,$08,$EE,$C0,$71 ; BE3D EE F0 5E 8C 08 EE C0 71  ..^....q
        db   $06,$BB,$04,$F9,$EC,$FD,$FE,$CA ; BE45 06 BB 04 F9 EC FD FE CA  ........
        db   $BD,$E1,$76,$ED,$FF,$EE,$F0,$5A ; BE4D BD E1 76 ED FF EE F0 5A  ..v....Z
        db   $86,$00,$12,$15,$18,$66,$60,$95 ; BE55 86 00 12 15 18 66 60 95  .....f`.
        db   $18,$EE,$C0,$F7,$26,$19,$15,$F8 ; BE5D 18 EE C0 F7 26 19 15 F8  ....&...
        db   $6B,$CE,$00,$73,$06,$24,$1C,$EE ; BE65 6B CE 00 73 06 24 1C EE  k..s.$..
        db   $80,$63,$8C,$06,$1C,$18,$1C,$16 ; BE6D 80 63 8C 06 1C 18 1C 16  .c......
        db   $1B,$16,$1B,$EE,$80,$63,$8C,$06 ; BE75 1B 16 1B EE 80 63 8C 06  .....c..
        db   $1C,$18,$1C,$19,$1D,$19,$1D,$19 ; BE7D 1C 18 1C 19 1D 19 1D 19  ........
        db   $19,$49,$19,$19,$19,$EE,$C0,$F7 ; BE85 19 49 19 19 19 EE C0 F7  .I......
        db   $ED,$00,$EE,$F0,$31,$21,$1D,$30 ; BE8D ED 00 EE F0 31 21 1D 30  ....1!.0
        db   $20,$1C,$ED,$FF,$F8,$FB,$02,$F9 ; BE95 20 1C ED FF F8 FB 02 F9   .......
        db   $DA,$FB,$00,$5F,$8C,$03,$13,$FA ; BE9D DA FB 00 5F 8C 03 13 FA  ..._....
        db   $10,$F9,$FE,$B6,$BE,$FE,$B6,$BE ; BEA5 10 F9 FE B6 BE FE B6 BE  ........
        db   $AB,$03,$14,$FA,$0F,$FA,$FE,$4E ; BEAD AB 03 14 FA 0F FA FE 4E  .......N
        db   $BE,$5F,$8C,$03,$13,$FA,$08,$F9 ; BEB5 BE 5F 8C 03 13 FA 08 F9  ._......
        db   $15,$14,$FA,$08,$FB,$17,$16,$FA ; BEBD 15 14 FA 08 FB 17 16 FA  ........
        db   $0C,$FB,$1D,$1C,$FA,$04,$FB,$FD ; BEC5 0C FB 1D 1C FA 04 FB FD  ........
        db   $F0,$01,$63                     ; BECD F0 01 63                 ..c
; ----------------------------------------------------------------------------
        stx     $04                             ; BED0 86 04                    ..
        db   $1B,$1E,$21,$6F,$98,$14,$63,$B0 ; BED2 1B 1E 21 6F 98 14 63 B0  ..!o..c.
        db   $28,$18,$F7,$2F,$22,$1E,$F8,$74 ; BEDA 28 18 F7 2F 22 1E F8 74  (../"..t
        db   $B0,$2C,$1D,$21,$1E,$6C,$B0,$28 ; BEE2 B0 2C 1D 21 1E 6C B0 28  .,.!.l.(
        db   $22,$6E,$8C,$0A,$23,$49,$23,$23 ; BEEA 22 6E 8C 0A 23 49 23 23  "n..#I##
        db   $23,$85,$84,$02,$2A,$26,$39,$29 ; BEF2 23 85 84 02 2A 26 39 29  #...*&9)
        db   $25,$FB,$02,$F9,$E8,$FB,$0C,$F0 ; BEFA 25 FB 02 F9 E8 FB 0C F0  %.......
        db   $10,$FB,$0B,$FE,$57,$BF,$94,$18 ; BF02 10 FB 0B FE 57 BF 94 18  ....W...
        db   $F9,$F5,$FB,$0C,$65,$86,$50,$20 ; BF0A F9 F5 FB 0C 65 86 50 20  ....e.P
        db   $70,$54,$6F,$06,$2D,$66,$54,$6B ; BF12 70 54 6F 06 2D 66 54 6B  pTo.-fTk
        db   $06,$1F,$75,$54,$7B,$06,$23,$16 ; BF1A 06 1F 75 54 7B 06 23 16  ..uT{.#.
        db   $29,$67,$48,$79,$BC,$38,$79,$8C ; BF22 29 67 48 79 BC 38 79 8C  )gHy.8y.
        db   $0A,$79,$88,$06,$2E,$2E,$CA,$00 ; BF2A 0A 79 88 06 2E 2E CA 00  .y......
        db   $26,$1B,$70,$AA,$26,$6F,$06,$7A ; BF32 26 1B 70 AA 26 6F 06 7A  &.p.&o.z
        db   $2A,$6C,$06,$77,$2A,$76,$06,$69 ; BF3A 2A 6C 06 77 2A 76 06 69  *l.w*v.i
        db   $2A,$68,$06,$73,$C8,$00,$F9,$C4 ; BF42 2A 68 06 73 C8 00 F9 C4  *h.s....
        db   $FE,$57,$BF,$94,$18,$FE,$57,$BF ; BF4A FE 57 BF 94 18 FE 57 BF  .W....W.
        db   $FB,$00,$FE,$CD,$BE,$70,$E0,$00 ; BF52 FB 00 FE CD BE 70 E0 00  .....p..
        db   $95,$30,$64,$04,$1E,$BB,$03,$2A ; BF5A 95 30 64 04 1E BB 03 2A  .0d....*
        db   $C7,$02,$36,$FD,$94,$00         ; BF62 C7 02 36 FD 94 00        ..6...
Bank12_BattleSetupPadding:
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF68 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF70 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF78 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF80 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF88 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF90 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF98 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFA0 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFA8 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFB0 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFB8 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFC0 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFC8 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFD0 FF FF FF FF FF FF FF FF  ........
        db   $78,$EE,$DF,$BF,$4C,$8E,$FF,$80 ; BFD8 78 EE DF BF 4C 8E FF 80  x...L...
        db   $20,$44,$52,$41,$47,$4F,$4E,$20 ; BFE0 20 44 52 41 47 4F 4E 20   DRAGON
        db   $51,$55,$45,$53,$54,$20,$49,$56 ; BFE8 51 55 45 53 54 20 49 56  QUEST IV
        db   $00,$00,$00,$00,$48,$04,$01,$0E ; BFF0 00 00 00 00 48 04 01 0E  ....H...
        db   $07,$9E,$D8,$BF,$D8,$BF,$D8,$BF ; BFF8 07 9E D8 BF D8 BF D8 BF  ........
Bank12_End:
