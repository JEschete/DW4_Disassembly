; PRG bank $13: ROM file $04C010-$05000F
; CPU window $8000-$BFFF
; Disassembled by project-local da65 using generated code/data ranges.

base $8000
Bank13_Start:
; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------
Bank13_BattlePresentationDirectory:
        db   $38,$80,$73,$B5,$6B,$B6,$2E,$B7 ; 8000 38 80 73 B5 6B B6 2E B7  8.s.k...
        db   $32,$B7,$E4,$B5,$18,$B7,$89,$B4 ; 8008 32 B7 E4 B5 18 B7 89 B4  2.......
        db   $53,$B5,$0B,$B9,$15,$B9,$66,$B0 ; 8010 53 B5 0B B9 15 B9 66 B0  S.....f.
        db   $30,$B9,$37,$B9,$49,$B9,$E3,$B7 ; 8018 30 B9 37 B9 49 B9 E3 B7  0.7.I...
        db   $66,$83,$B6,$89,$F4,$83,$97,$A7 ; 8020 66 83 B6 89 F4 83 97 A7  f.......
        db   $62,$B4,$CB,$BB,$EA,$BC,$E3,$BD ; 8028 62 B4 CB BB EA BC E3 BD  b.......
        db   $81,$BE,$A8,$BE,$21,$BF,$65,$BF ; 8030 81 BE A8 BE 21 BF 65 BF  ....!.e.
; ----------------------------------------------------------------------------
Bank13_BattlePresentationServices:
        jsr     BattlePresentation_Entry_8088   ; 8038 20 88 80                  ..
        jsr     BattlePresentation_Entry_80A1   ; 803B 20 A1 80                  ..
        bcc     BattlePresentation_Branch_8049  ; 803E 90 09                    ..
        jsr     BattlePresentation_Entry_804A   ; 8040 20 4A 80                  J.
        jsr     BattlePresentation_Entry_9212   ; 8043 20 12 92                  ..
        jsr     BattlePresentation_Entry_805B   ; 8046 20 5B 80                  [.
BattlePresentation_Branch_8049:
        rts                                     ; 8049 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_804A:
        jsr     BattlePresentation_Entry_8051   ; 804A 20 51 80                  Q.
        jsr     BattlePresentation_Entry_845A   ; 804D 20 5A 84                  Z.
        rts                                     ; 8050 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8051:
        ldx     #$FF                            ; 8051 A2 FF                    ..
        brk                                     ; 8053 00                       .
        db   $29,$C3,$0E                     ; 8054 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        sta     $7577                           ; 8057 8D 77 75                 .wu
        rts                                     ; 805A 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_805B:
        lda     $6E80                           ; 805B AD 80 6E                 ..n
        cmp     #$04                            ; 805E C9 04                    ..
        beq     BattlePresentation_Branch_8075  ; 8060 F0 13                    ..
        lda     $75E8                           ; 8062 AD E8 75                 ..u
        asl     a                               ; 8065 0A                       .
        tax                                     ; 8066 AA                       .
        lda     Bank13_BattleStateHandlerPointers,x; 8067 BD 78 80              .x.
        sta     $00                           ; 806A 85 00                    ..
        lda     $8079,x                         ; 806C BD 79 80                 .y.
        sta     $01                             ; 806F 85 01                    ..
        jmp     ($0000)                         ; 8071 6C 00 00                 l..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8074:
        rts                                     ; 8074 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_8075:
        jmp     BattlePresentation_Branch_A8C6  ; 8075 4C C6 A8                 L..
; ----------------------------------------------------------------------------
Bank13_BattleStateHandlerPointers:
        db   $74                             ; 8078 74                       t
        db   $80,$F0,$AF,$97,$AF,$10,$AF,$48 ; 8079 80 F0 AF 97 AF 10 AF 48  .......H
        db   $AF,$49,$B0,$49,$B0,$49,$B0     ; 8081 AF 49 B0 49 B0 49 B0     .I.I.I.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8088:
        lda     $615B                           ; 8088 AD 5B 61                 .[a
        sta     $6E80                           ; 808B 8D 80 6E                 ..n
        beq     BattlePresentation_Branch_8094  ; 808E F0 04                    ..
        cmp     #$02                            ; 8090 C9 02                    ..
        bne     BattlePresentation_Branch_809E  ; 8092 D0 0A                    ..
BattlePresentation_Branch_8094:
        lda     $6E44                           ; 8094 AD 44 6E                 .Dn
        bpl     BattlePresentation_Branch_809E  ; 8097 10 05                    ..
        lda     #$06                            ; 8099 A9 06                    ..
        sta     $6E80                           ; 809B 8D 80 6E                 ..n
BattlePresentation_Branch_809E:
        rts                                     ; 809E 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_809F:
        clc                                     ; 809F 18                       .
        rts                                     ; 80A0 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_80A1:
        ldx     $96                             ; 80A1 A6 96                    ..
        lda     BattleSlotDescriptors,x         ; 80A3 BD F4 72                 ..r
        and     #$70                            ; 80A6 29 70                    )p
        cmp     #$10                            ; 80A8 C9 10                    ..
        bne     BattlePresentation_Branch_809F  ; 80AA D0 F3                    ..
        brk                                     ; 80AC 00                       .
        db   $06,$1F                         ; 80AD 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattlePresentation_Branch_809F  ; 80AF B0 EE                    ..
        brk                                     ; 80B1 00                       .
        db   $46,$93,$07                     ; 80B2 46 93 07                 F..
; ----------------------------------------------------------------------------
        bcc     BattlePresentation_Branch_809F  ; 80B5 90 E8                    ..
        brk                                     ; 80B7 00                       .
        db   $46,$93,$06                     ; 80B8 46 93 06                 F..
; ----------------------------------------------------------------------------
        bcs     BattlePresentation_Branch_809F  ; 80BB B0 E2                    ..
        brk                                     ; 80BD 00                       .
        db   $46,$93,$10                     ; 80BE 46 93 10                 F..
; ----------------------------------------------------------------------------
        bcs     BattlePresentation_Branch_809F  ; 80C1 B0 DC                    ..
        brk                                     ; 80C3 00                       .
        db   $46,$93,$11                     ; 80C4 46 93 11                 F..
; ----------------------------------------------------------------------------
        bcs     BattlePresentation_Branch_809F  ; 80C7 B0 D6                    ..
        brk                                     ; 80C9 00                       .
        db   $46,$93,$23                     ; 80CA 46 93 23                 F.#
; ----------------------------------------------------------------------------
        bcs     BattlePresentation_Branch_809F  ; 80CD B0 D0                    ..
        brk                                     ; 80CF 00                       .
        db   $46,$93,$24                     ; 80D0 46 93 24                 F.$
; ----------------------------------------------------------------------------
        bcs     BattlePresentation_Branch_809F  ; 80D3 B0 CA                    ..
        brk                                     ; 80D5 00                       .
        db   $46,$93,$25                     ; 80D6 46 93 25                 F.%
; ----------------------------------------------------------------------------
        bcs     BattlePresentation_Branch_809F  ; 80D9 B0 C4                    ..
        brk                                     ; 80DB 00                       .
        db   $46,$93,$12                     ; 80DC 46 93 12                 F..
; ----------------------------------------------------------------------------
        bcs     BattlePresentation_Branch_809F  ; 80DF B0 BE                    ..
        brk                                     ; 80E1 00                       .
        db   $2B,$53                         ; 80E2 2B 53                    +S
; ----------------------------------------------------------------------------
        cmp     #$08                            ; 80E4 C9 08                    ..
        bcs     BattlePresentation_Branch_809F  ; 80E6 B0 B7                    ..
        sta     $75E8                           ; 80E8 8D E8 75                 ..u
        brk                                     ; 80EB 00                       .
        db   $07,$73                         ; 80EC 07 73                    .s
; ----------------------------------------------------------------------------
        sta     $75DC                           ; 80EE 8D DC 75                 ..u
        lda     $73                             ; 80F1 A5 73                    .s
        beq     BattlePresentation_Branch_80FA  ; 80F3 F0 05                    ..
        lda     #$FF                            ; 80F5 A9 FF                    ..
        sta     $75DC                           ; 80F7 8D DC 75                 ..u
BattlePresentation_Branch_80FA:
        ldx     #$00                            ; 80FA A2 00                    ..
        stx     $75D4                           ; 80FC 8E D4 75                 ..u
        stx     $75D5                           ; 80FF 8E D5 75                 ..u
        stx     $75D7                           ; 8102 8E D7 75                 ..u
        stx     $75D8                           ; 8105 8E D8 75                 ..u
        stx     $75D9                           ; 8108 8E D9 75                 ..u
        stx     $75DA                           ; 810B 8E DA 75                 ..u
        stx     $75E6                           ; 810E 8E E6 75                 ..u
        stx     $75E7                           ; 8111 8E E7 75                 ..u
        dex                                     ; 8114 CA                       .
        stx     $75DB                           ; 8115 8E DB 75                 ..u
        brk                                     ; 8118 00                       .
        db   $06,$1F                         ; 8119 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattlePresentation_Branch_809F  ; 811B B0 82                    ..
        jsr     BattlePresentation_Entry_AE11   ; 811D 20 11 AE                  ..
        brk                                     ; 8120 00                       .
        db   $62,$23,$41                     ; 8121 62 23 41                 b#A
; ----------------------------------------------------------------------------
        sta     $92                             ; 8124 85 92                    ..
        ldx     #$80                            ; 8126 A2 80                    ..
        brk                                     ; 8128 00                       .
        db   $29,$C3,$0E                     ; 8129 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        sta     $75E9                           ; 812C 8D E9 75                 ..u
        lda     #$00                            ; 812F A9 00                    ..
        ldx     #$03                            ; 8131 A2 03                    ..
BattlePresentation_Branch_8133:
        sta     $7591,x                         ; 8133 9D 91 75                 ..u
        sta     $7595,x                         ; 8136 9D 95 75                 ..u
        dex                                     ; 8139 CA                       .
        bpl     BattlePresentation_Branch_8133  ; 813A 10 F7                    ..
        brk                                     ; 813C 00                       .
        db   $62,$23,$40                     ; 813D 62 23 40                 b#@
; ----------------------------------------------------------------------------
        sta     $8A                             ; 8140 85 8A                    ..
        ldx     #$00                            ; 8142 A2 00                    ..
BattlePresentation_Branch_8144:
        brk                                     ; 8144 00                       .
        db   $46,$93,$07                     ; 8145 46 93 07                 F..
; ----------------------------------------------------------------------------
        bcc     BattlePresentation_Branch_816F  ; 8148 90 25                    .%
        lda     #$10                            ; 814A A9 10                    ..
        sta     $7591,x                         ; 814C 9D 91 75                 ..u
        sta     $7595,x                         ; 814F 9D 95 75                 ..u
        brk                                     ; 8152 00                       .
        db   $46,$93,$16                     ; 8153 46 93 16                 F..
; ----------------------------------------------------------------------------
        bcs     BattlePresentation_Branch_815E  ; 8156 B0 06                    ..
        brk                                     ; 8158 00                       .
        db   $46,$93,$17                     ; 8159 46 93 17                 F..
; ----------------------------------------------------------------------------
        bcc     BattlePresentation_Branch_8163  ; 815C 90 05                    ..
BattlePresentation_Branch_815E:
        lda     #$00                            ; 815E A9 00                    ..
        sta     $7595,x                         ; 8160 9D 95 75                 ..u
BattlePresentation_Branch_8163:
        brk                                     ; 8163 00                       .
        db   $46,$93,$19                     ; 8164 46 93 19                 F..
; ----------------------------------------------------------------------------
        bcc     BattlePresentation_Branch_816F  ; 8167 90 06                    ..
        lsr     $7591,x                         ; 8169 5E 91 75                 ^.u
        lsr     $7595,x                         ; 816C 5E 95 75                 ^.u
BattlePresentation_Branch_816F:
        inx                                     ; 816F E8                       .
        cpx     $8A                             ; 8170 E4 8A                    ..
        bcc     BattlePresentation_Branch_8144  ; 8172 90 D0                    ..
        sec                                     ; 8174 38                       8
        rts                                     ; 8175 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8176:
        asl     $00,x                         ; 8176 16 00                    ..
        rol     $01,x                           ; 8178 36 01                    6.
        asl     $00,x                         ; 817A 16 00                    ..
        rol     $01,x                           ; 817C 36 01                    6.
        asl     $00,x                         ; 817E 16 00                    ..
        rol     $01,x                           ; 8180 36 01                    6.
        asl     $00,x                         ; 8182 16 00                    ..
        rol     $01,x                           ; 8184 36 01                    6.
        rts                                     ; 8186 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8187:
        lsr     $01,x                           ; 8187 56 01                    V.
        ror     $00,x                         ; 8189 76 00                    v.
        lsr     $01,x                           ; 818B 56 01                    V.
        ror     $00,x                         ; 818D 76 00                    v.
        lsr     $01,x                           ; 818F 56 01                    V.
        ror     $00,x                         ; 8191 76 00                    v.
        lsr     $01,x                           ; 8193 56 01                    V.
        ror     $00,x                         ; 8195 76 00                    v.
        rts                                     ; 8197 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8198:
        ldx     #$94                            ; 8198 A2 94                    ..
BattlePresentation_Entry_819A:
        cmp     #$00                            ; 819A C9 00                    ..
        beq     BattlePresentation_Branch_81BE  ; 819C F0 20                    .
        cmp     #$10                            ; 819E C9 10                    ..
        beq     BattlePresentation_Branch_81BD  ; 81A0 F0 1B                    ..
        jsr     BattlePresentation_Entry_8330   ; 81A2 20 30 83                  0.
BattlePresentation_Entry_81A5:
        lsr     $19                             ; 81A5 46 19                    F.
        ror     $01,x                           ; 81A7 76 01                    v.
        ror     $00,x                         ; 81A9 76 00                    v.
        lsr     $19                             ; 81AB 46 19                    F.
        ror     $01,x                           ; 81AD 76 01                    v.
        ror     $00,x                         ; 81AF 76 00                    v.
        lsr     $19                             ; 81B1 46 19                    F.
        ror     $01,x                           ; 81B3 76 01                    v.
        ror     $00,x                         ; 81B5 76 00                    v.
        lsr     $19                             ; 81B7 46 19                    F.
        ror     $01,x                           ; 81B9 76 01                    v.
        ror     $00,x                         ; 81BB 76 00                    v.
BattlePresentation_Branch_81BD:
        rts                                     ; 81BD 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_81BE:
        lda     #$00                            ; 81BE A9 00                    ..
        sta     $00,x                         ; 81C0 95 00                    ..
        sta     $01,x                           ; 81C2 95 01                    ..
        rts                                     ; 81C4 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_81C5:
        jsr     BattlePresentation_Entry_8231   ; 81C5 20 31 82                  1.
        cmp     #$01                            ; 81C8 C9 01                    ..
        beq     BattlePresentation_Branch_81DF  ; 81CA F0 13                    ..
        cmp     #$02                            ; 81CC C9 02                    ..
        beq     BattlePresentation_Branch_81DB  ; 81CE F0 0B                    ..
        cmp     #$04                            ; 81D0 C9 04                    ..
        beq     BattlePresentation_Branch_81D7  ; 81D2 F0 03                    ..
        jmp     MultiplyPointerWord             ; 81D4 4C 27 C8                 L'.
; ----------------------------------------------------------------------------
BattlePresentation_Branch_81D7:
        asl     $94                             ; 81D7 06 94                    ..
        rol     $95                             ; 81D9 26 95                    &.
BattlePresentation_Branch_81DB:
        asl     $94                             ; 81DB 06 94                    ..
        rol     $95                             ; 81DD 26 95                    &.
BattlePresentation_Branch_81DF:
        rts                                     ; 81DF 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_81E0:
        jsr     BattlePresentation_Entry_8231   ; 81E0 20 31 82                  1.
        cmp     #$01                            ; 81E3 C9 01                    ..
        beq     BattlePresentation_Branch_81FA  ; 81E5 F0 13                    ..
        cmp     #$02                            ; 81E7 C9 02                    ..
        beq     BattlePresentation_Branch_81F6  ; 81E9 F0 0B                    ..
        cmp     #$04                            ; 81EB C9 04                    ..
        beq     BattlePresentation_Branch_81F2  ; 81ED F0 03                    ..
        jmp     UpperFixedEngine_Entry_C851     ; 81EF 4C 51 C8                 LQ.
; ----------------------------------------------------------------------------
BattlePresentation_Branch_81F2:
        lsr     $95                             ; 81F2 46 95                    F.
        ror     $94                             ; 81F4 66 94                    f.
BattlePresentation_Branch_81F6:
        lsr     $95                             ; 81F6 46 95                    F.
        ror     $94                             ; 81F8 66 94                    f.
BattlePresentation_Branch_81FA:
        rts                                     ; 81FA 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_81FB:
        jsr     BattlePresentation_Entry_8233   ; 81FB 20 33 82                  3.
        cmp     #$01                            ; 81FE C9 01                    ..
        beq     BattlePresentation_Branch_8215  ; 8200 F0 13                    ..
        cmp     #$02                            ; 8202 C9 02                    ..
        beq     BattlePresentation_Branch_8211  ; 8204 F0 0B                    ..
        cmp     #$04                            ; 8206 C9 04                    ..
        beq     BattlePresentation_Branch_820D  ; 8208 F0 03                    ..
        jmp     MultiplyPointerWord             ; 820A 4C 27 C8                 L'.
; ----------------------------------------------------------------------------
BattlePresentation_Branch_820D:
        asl     $00,x                         ; 820D 16 00                    ..
        rol     $01,x                           ; 820F 36 01                    6.
BattlePresentation_Branch_8211:
        asl     $00,x                         ; 8211 16 00                    ..
        rol     $01,x                           ; 8213 36 01                    6.
BattlePresentation_Branch_8215:
        rts                                     ; 8215 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8216:
        jsr     BattlePresentation_Entry_8233   ; 8216 20 33 82                  3.
        cmp     #$01                            ; 8219 C9 01                    ..
        beq     BattlePresentation_Branch_8230  ; 821B F0 13                    ..
        cmp     #$02                            ; 821D C9 02                    ..
        beq     BattlePresentation_Branch_822C  ; 821F F0 0B                    ..
        cmp     #$04                            ; 8221 C9 04                    ..
        beq     BattlePresentation_Branch_8228  ; 8223 F0 03                    ..
        jmp     UpperFixedEngine_Entry_C851     ; 8225 4C 51 C8                 LQ.
; ----------------------------------------------------------------------------
BattlePresentation_Branch_8228:
        lsr     $01,x                           ; 8228 56 01                    V.
        ror     $00,x                         ; 822A 76 00                    v.
BattlePresentation_Branch_822C:
        lsr     $01,x                           ; 822C 56 01                    V.
        ror     $00,x                         ; 822E 76 00                    v.
BattlePresentation_Branch_8230:
        rts                                     ; 8230 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8231:
        ldx     #$94                            ; 8231 A2 94                    ..
BattlePresentation_Entry_8233:
        lda     $92                             ; 8233 A5 92                    ..
        rts                                     ; 8235 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8236:
        lda     $759A                           ; 8236 AD 9A 75                 ..u
        ldx     #$94                            ; 8239 A2 94                    ..
        cmp     #$FF                            ; 823B C9 FF                    ..
        beq     BattlePresentation_Branch_824A  ; 823D F0 0B                    ..
        jsr     BattlePresentation_Entry_8330   ; 823F 20 30 83                  0.
        lda     $95                             ; 8242 A5 95                    ..
        sta     $94                             ; 8244 85 94                    ..
        lda     $19                             ; 8246 A5 19                    ..
        sta     $95                             ; 8248 85 95                    ..
BattlePresentation_Branch_824A:
        rts                                     ; 824A 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_824B:
        jsr     BattlePresentation_Entry_8236   ; 824B 20 36 82                  6.
        lda     $94                             ; 824E A5 94                    ..
        clc                                     ; 8250 18                       .
        adc     $75AD                           ; 8251 6D AD 75                 m.u
        sta     $75AD                           ; 8254 8D AD 75                 ..u
        lda     $95                             ; 8257 A5 95                    ..
        adc     $75AE                           ; 8259 6D AE 75                 m.u
        sta     $75AE                           ; 825C 8D AE 75                 ..u
        rts                                     ; 825F 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_8260:
        jsr     BattlePresentation_Entry_8236   ; 8260 20 36 82                  6.
        lda     $94                             ; 8263 A5 94                    ..
        clc                                     ; 8265 18                       .
        adc     $75AF                           ; 8266 6D AF 75                 m.u
        sta     $75AF                           ; 8269 8D AF 75                 ..u
        lda     $95                             ; 826C A5 95                    ..
        adc     $75B0                           ; 826E 6D B0 75                 m.u
        sta     $75B0                           ; 8271 8D B0 75                 ..u
        rts                                     ; 8274 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8275:
        jsr     BattlePresentation_Entry_8236   ; 8275 20 36 82                  6.
        lda     $94                             ; 8278 A5 94                    ..
        clc                                     ; 827A 18                       .
        adc     $75B5                           ; 827B 6D B5 75                 m.u
        sta     $75B5                           ; 827E 8D B5 75                 ..u
        lda     $95                             ; 8281 A5 95                    ..
        adc     $75B6                           ; 8283 6D B6 75                 m.u
        sta     $75B6                           ; 8286 8D B6 75                 ..u
        rts                                     ; 8289 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_828A:
        jsr     BattlePresentation_Entry_8236   ; 828A 20 36 82                  6.
        lda     $94                             ; 828D A5 94                    ..
        clc                                     ; 828F 18                       .
        adc     $75B7                           ; 8290 6D B7 75                 m.u
        sta     $75B7                           ; 8293 8D B7 75                 ..u
        lda     $95                             ; 8296 A5 95                    ..
        adc     $75B8                           ; 8298 6D B8 75                 m.u
        sta     $75B8                           ; 829B 8D B8 75                 ..u
        rts                                     ; 829E 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_829F:
        jsr     BattlePresentation_Entry_8236   ; 829F 20 36 82                  6.
        lda     $94                             ; 82A2 A5 94                    ..
        clc                                     ; 82A4 18                       .
        adc     $75B9                           ; 82A5 6D B9 75                 m.u
        sta     $75B9                           ; 82A8 8D B9 75                 ..u
        lda     $95                             ; 82AB A5 95                    ..
        adc     $75BA                           ; 82AD 6D BA 75                 m.u
        sta     $75BA                           ; 82B0 8D BA 75                 ..u
        rts                                     ; 82B3 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_82B4:
        jsr     BattlePresentation_Entry_8236   ; 82B4 20 36 82                  6.
        lda     $94                             ; 82B7 A5 94                    ..
        clc                                     ; 82B9 18                       .
        adc     $75BB                           ; 82BA 6D BB 75                 m.u
        sta     $75BB                           ; 82BD 8D BB 75                 ..u
        lda     $95                             ; 82C0 A5 95                    ..
        adc     $75BC                           ; 82C2 6D BC 75                 m.u
        sta     $75BC                           ; 82C5 8D BC 75                 ..u
        rts                                     ; 82C8 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_82C9:
        jsr     BattlePresentation_Entry_8236   ; 82C9 20 36 82                  6.
        lda     $94                             ; 82CC A5 94                    ..
        clc                                     ; 82CE 18                       .
        adc     $75B1                           ; 82CF 6D B1 75                 m.u
        sta     $75B1                           ; 82D2 8D B1 75                 ..u
        lda     $95                             ; 82D5 A5 95                    ..
        adc     $75B2                           ; 82D7 6D B2 75                 m.u
        sta     $75B2                           ; 82DA 8D B2 75                 ..u
        rts                                     ; 82DD 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_82DE:
        jsr     BattlePresentation_Entry_8236   ; 82DE 20 36 82                  6.
        lda     $94                             ; 82E1 A5 94                    ..
        clc                                     ; 82E3 18                       .
        adc     $75B3                           ; 82E4 6D B3 75                 m.u
        sta     $75B3                           ; 82E7 8D B3 75                 ..u
        lda     $95                             ; 82EA A5 95                    ..
        adc     $75B4                           ; 82EC 6D B4 75                 m.u
        sta     $75B4                           ; 82EF 8D B4 75                 ..u
        rts                                     ; 82F2 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_82F3:
        jsr     BattlePresentation_Entry_8236   ; 82F3 20 36 82                  6.
        lda     $94                             ; 82F6 A5 94                    ..
        clc                                     ; 82F8 18                       .
        adc     $75BD                           ; 82F9 6D BD 75                 m.u
        sta     $75BD                           ; 82FC 8D BD 75                 ..u
        lda     $95                             ; 82FF A5 95                    ..
        adc     $75BE                           ; 8301 6D BE 75                 m.u
        sta     $75BE                           ; 8304 8D BE 75                 ..u
        rts                                     ; 8307 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8308:
        jsr     BattlePresentation_Entry_8236   ; 8308 20 36 82                  6.
        lda     $94                             ; 830B A5 94                    ..
        clc                                     ; 830D 18                       .
        adc     $75BF                           ; 830E 6D BF 75                 m.u
        sta     $75BF                           ; 8311 8D BF 75                 ..u
        lda     $95                             ; 8314 A5 95                    ..
        adc     $75C0                           ; 8316 6D C0 75                 m.u
        sta     $75C0                           ; 8319 8D C0 75                 ..u
        rts                                     ; 831C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_831D:
        lda     $82                             ; 831D A5 82                    ..
        asl     a                               ; 831F 0A                       .
        sta     $0A                             ; 8320 85 0A                    ..
        tya                                     ; 8322 98                       .
        adc     $0A                             ; 8323 65 0A                    e.
        tay                                     ; 8325 A8                       .
        lda     $94                             ; 8326 A5 94                    ..
        sta     ($88),y                       ; 8328 91 88                    ..
        iny                                     ; 832A C8                       .
        lda     $95                             ; 832B A5 95                    ..
        sta     ($88),y                       ; 832D 91 88                    ..
        rts                                     ; 832F 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8330:
        sta     $16                             ; 8330 85 16                    ..
        lda     #$00                            ; 8332 A9 00                    ..
        sta     $17                             ; 8334 85 17                    ..
        sta     $18                             ; 8336 85 18                    ..
        sta     $19                             ; 8338 85 19                    ..
        sta     $1A                             ; 833A 85 1A                    ..
BattlePresentation_Branch_833C:
        lsr     $16                             ; 833C 46 16                    F.
        bcc     BattlePresentation_Branch_8353  ; 833E 90 13                    ..
        lda     $00,x                         ; 8340 B5 00                    ..
        clc                                     ; 8342 18                       .
        adc     $17                             ; 8343 65 17                    e.
        sta     $17                             ; 8345 85 17                    ..
        lda     $01,x                           ; 8347 B5 01                    ..
        adc     $18                             ; 8349 65 18                    e.
        sta     $18                             ; 834B 85 18                    ..
        lda     $19                             ; 834D A5 19                    ..
        adc     $1A                             ; 834F 65 1A                    e.
        sta     $19                             ; 8351 85 19                    ..
BattlePresentation_Branch_8353:
        asl     $00,x                         ; 8353 16 00                    ..
        rol     $01,x                           ; 8355 36 01                    6.
        rol     $1A                             ; 8357 26 1A                    &.
        lda     $16                             ; 8359 A5 16                    ..
        bne     BattlePresentation_Branch_833C  ; 835B D0 DF                    ..
        lda     $17                             ; 835D A5 17                    ..
        sta     $00,x                         ; 835F 95 00                    ..
        lda     $18                             ; 8361 A5 18                    ..
        sta     $01,x                           ; 8363 95 01                    ..
        rts                                     ; 8365 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8366:
        sta     $16                             ; 8366 85 16                    ..
        lda     #$00                            ; 8368 A9 00                    ..
        sta     $17                             ; 836A 85 17                    ..
        sta     $18                             ; 836C 85 18                    ..
        sta     $19                             ; 836E 85 19                    ..
        sta     $1A                             ; 8370 85 1A                    ..
        sta     $1B                             ; 8372 85 1B                    ..
BattlePresentation_Branch_8374:
        lsr     $16                             ; 8374 46 16                    F.
        bcc     BattlePresentation_Branch_8391  ; 8376 90 19                    ..
        lda     $00,x                         ; 8378 B5 00                    ..
        clc                                     ; 837A 18                       .
        adc     $17                             ; 837B 65 17                    e.
        sta     $17                             ; 837D 85 17                    ..
        lda     $01,x                           ; 837F B5 01                    ..
        adc     $18                             ; 8381 65 18                    e.
        sta     $18                             ; 8383 85 18                    ..
        lda     $02,x                         ; 8385 B5 02                    ..
        adc     $19                             ; 8387 65 19                    e.
        sta     $19                             ; 8389 85 19                    ..
        lda     $1A                             ; 838B A5 1A                    ..
        adc     $1B                             ; 838D 65 1B                    e.
        sta     $1A                             ; 838F 85 1A                    ..
BattlePresentation_Branch_8391:
        asl     $00,x                         ; 8391 16 00                    ..
        rol     $01,x                           ; 8393 36 01                    6.
        rol     $02,x                         ; 8395 36 02                    6.
        rol     $1B                             ; 8397 26 1B                    &.
        lda     $16                             ; 8399 A5 16                    ..
        bne     BattlePresentation_Branch_8374  ; 839B D0 D7                    ..
        lda     $17                             ; 839D A5 17                    ..
        sta     $00,x                         ; 839F 95 00                    ..
        lda     $18                             ; 83A1 A5 18                    ..
        sta     $01,x                           ; 83A3 95 01                    ..
        lda     $19                             ; 83A5 A5 19                    ..
        sta     $02,x                         ; 83A7 95 02                    ..
        rts                                     ; 83A9 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_83AA:
        lda     $0000,y                         ; 83AA B9 00 00                 ...
        sta     $6E14                           ; 83AD 8D 14 6E                 ..n
        lda     $01,y                           ; 83B0 B9 01 00                 ...
        sta     $6E15                           ; 83B3 8D 15 6E                 ..n
        tya                                     ; 83B6 98                       .
        pha                                     ; 83B7 48                       H
        ldy     #$10                            ; 83B8 A0 10                    ..
        lda     #$00                            ; 83BA A9 00                    ..
        sta     $6E16                           ; 83BC 8D 16 6E                 ..n
        sta     $6E11                           ; 83BF 8D 11 6E                 ..n
        sta     $6E12                           ; 83C2 8D 12 6E                 ..n
BattlePresentation_Branch_83C5:
        asl     $00,x                         ; 83C5 16 00                    ..
        rol     $01,x                           ; 83C7 36 01                    6.
        rol     $6E11                           ; 83C9 2E 11 6E                 ..n
        rol     $6E12                           ; 83CC 2E 12 6E                 ..n
        inc     $00,x                         ; 83CF F6 00                    ..
        lda     $6E11                           ; 83D1 AD 11 6E                 ..n
        sec                                     ; 83D4 38                       8
        sbc     $6E14                           ; 83D5 ED 14 6E                 ..n
        pha                                     ; 83D8 48                       H
        lda     $6E12                           ; 83D9 AD 12 6E                 ..n
        sbc     $6E15                           ; 83DC ED 15 6E                 ..n
        bcs     BattlePresentation_Branch_83E7  ; 83DF B0 06                    ..
        pla                                     ; 83E1 68                       h
        dec     $00,x                         ; 83E2 D6 00                    ..
        jmp     BattlePresentation_Branch_83EE  ; 83E4 4C EE 83                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_83E7:
        sta     $6E12                           ; 83E7 8D 12 6E                 ..n
        pla                                     ; 83EA 68                       h
        sta     $6E11                           ; 83EB 8D 11 6E                 ..n
BattlePresentation_Branch_83EE:
        dey                                     ; 83EE 88                       .
        bne     BattlePresentation_Branch_83C5  ; 83EF D0 D4                    ..
        pla                                     ; 83F1 68                       h
        tay                                     ; 83F2 A8                       .
        rts                                     ; 83F3 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_83F4:
        lda     #$00                            ; 83F4 A9 00                    ..
BattlePresentation_Branch_83F6:
        sta     $6E16                           ; 83F6 8D 16 6E                 ..n
        lda     $0000,y                         ; 83F9 B9 00 00                 ...
        sta     $6E14                           ; 83FC 8D 14 6E                 ..n
        lda     $01,y                           ; 83FF B9 01 00                 ...
        sta     $6E15                           ; 8402 8D 15 6E                 ..n
        tya                                     ; 8405 98                       .
        pha                                     ; 8406 48                       H
        ldy     #$18                            ; 8407 A0 18                    ..
        lda     #$00                            ; 8409 A9 00                    ..
        sta     $6E11                           ; 840B 8D 11 6E                 ..n
        sta     $6E12                           ; 840E 8D 12 6E                 ..n
        sta     $6E13                           ; 8411 8D 13 6E                 ..n
BattlePresentation_Branch_8414:
        asl     $00,x                         ; 8414 16 00                    ..
        rol     $01,x                           ; 8416 36 01                    6.
        rol     $02,x                         ; 8418 36 02                    6.
        rol     $6E11                           ; 841A 2E 11 6E                 ..n
        rol     $6E12                           ; 841D 2E 12 6E                 ..n
        rol     $6E13                           ; 8420 2E 13 6E                 ..n
        inc     $00,x                         ; 8423 F6 00                    ..
        lda     $6E11                           ; 8425 AD 11 6E                 ..n
        sec                                     ; 8428 38                       8
        sbc     $6E14                           ; 8429 ED 14 6E                 ..n
        pha                                     ; 842C 48                       H
        lda     $6E12                           ; 842D AD 12 6E                 ..n
        sbc     $6E15                           ; 8430 ED 15 6E                 ..n
        pha                                     ; 8433 48                       H
        lda     $6E13                           ; 8434 AD 13 6E                 ..n
        sbc     $6E16                           ; 8437 ED 16 6E                 ..n
        bcs     BattlePresentation_Branch_8443  ; 843A B0 07                    ..
        pla                                     ; 843C 68                       h
        pla                                     ; 843D 68                       h
        dec     $00,x                         ; 843E D6 00                    ..
        jmp     BattlePresentation_Branch_844E  ; 8440 4C 4E 84                 LN.
; ----------------------------------------------------------------------------
BattlePresentation_Branch_8443:
        sta     $6E13                           ; 8443 8D 13 6E                 ..n
        pla                                     ; 8446 68                       h
        sta     $6E12                           ; 8447 8D 12 6E                 ..n
        pla                                     ; 844A 68                       h
        sta     $6E11                           ; 844B 8D 11 6E                 ..n
BattlePresentation_Branch_844E:
        dey                                     ; 844E 88                       .
        bne     BattlePresentation_Branch_8414  ; 844F D0 C3                    ..
        pla                                     ; 8451 68                       h
        tay                                     ; 8452 A8                       .
        rts                                     ; 8453 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8454:
        lda     $0002,y                         ; 8454 B9 02 00                 ...
        jmp     BattlePresentation_Branch_83F6  ; 8457 4C F6 83                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_845A:
        brk                                     ; 845A 00                       .
        db   $12,$8F                         ; 845B 12 8F                    ..
; ----------------------------------------------------------------------------
        jsr     BattlePresentation_Entry_8488   ; 845D 20 88 84                  ..
        ldx     #$FF                            ; 8460 A2 FF                    ..
        brk                                     ; 8462 00                       .
        db   $29,$C3,$0E                     ; 8463 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        sta     $7578                           ; 8466 8D 78 75                 .xu
        brk                                     ; 8469 00                       .
        db   $29,$C3,$0F                     ; 846A 29 C3 0F                 )..
; ----------------------------------------------------------------------------
        and     $7578                           ; 846D 2D 78 75                 -xu
        sta     $7578                           ; 8470 8D 78 75                 .xu
        jsr     BattlePresentation_Entry_8517   ; 8473 20 17 85                  ..
        lda     #$00                            ; 8476 A9 00                    ..
        sta     $93                             ; 8478 85 93                    ..
BattlePresentation_Branch_847A:
        jsr     BattlePresentation_Entry_84A8   ; 847A 20 A8 84                  ..
        inc     $93                             ; 847D E6 93                    ..
        lda     $93                             ; 847F A5 93                    ..
        cmp     #$08                            ; 8481 C9 08                    ..
        bcc     BattlePresentation_Branch_847A  ; 8483 90 F5                    ..
        jmp     BattlePresentation_Branch_8F26  ; 8485 4C 26 8F                 L&.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8488:
        ldx     #$39                            ; 8488 A2 39                    .9
        lda     #$00                            ; 848A A9 00                    ..
BattlePresentation_Branch_848C:
        sta     $7600,x                         ; 848C 9D 00 76                 ..v
        sta     $763A,x                         ; 848F 9D 3A 76                 .:v
        sta     $7674,x                         ; 8492 9D 74 76                 .tv
        sta     $76AE,x                         ; 8495 9D AE 76                 ..v
        sta     $76E8,x                         ; 8498 9D E8 76                 ..v
        sta     $7722,x                         ; 849B 9D 22 77                 ."w
        sta     $775C,x                         ; 849E 9D 5C 77                 .\w
        sta     $7796,x                         ; 84A1 9D 96 77                 ..w
        dex                                     ; 84A4 CA                       .
        bpl     BattlePresentation_Branch_848C  ; 84A5 10 E5                    ..
        rts                                     ; 84A7 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_84A8:
        jsr     BattlePresentation_Entry_850C   ; 84A8 20 0C 85                  ..
        ldx     $93                             ; 84AB A6 93                    ..
        brk                                     ; 84AD 00                       .
        db   $29,$C3,$0C                     ; 84AE 29 C3 0C                 )..
; ----------------------------------------------------------------------------
        bcs     BattlePresentation_Branch_84E3  ; 84B1 B0 30                    .0
        ldx     #$05                            ; 84B3 A2 05                    ..
BattlePresentation_Branch_84B5:
        lda     $93                             ; 84B5 A5 93                    ..
        asl     a                               ; 84B7 0A                       .
        sta     $00                           ; 84B8 85 00                    ..
        asl     a                               ; 84BA 0A                       .
        adc     $00                           ; 84BB 65 00                    e.
        sta     $00                           ; 84BD 85 00                    ..
        txa                                     ; 84BF 8A                       .
        adc     $00                           ; 84C0 65 00                    e.
        tay                                     ; 84C2 A8                       .
        lda     BattleActionWeights,y           ; 84C3 B9 C2 6D                 ..m
        beq     BattlePresentation_Branch_84DD  ; 84C6 F0 15                    ..
        sta     $759A                           ; 84C8 8D 9A 75                 ..u
        lda     BattleActionIds,y               ; 84CB B9 8C 6D                 ..m
        cmp     #$FF                            ; 84CE C9 FF                    ..
        beq     BattlePresentation_Branch_84DD  ; 84D0 F0 0B                    ..
        sta     $7599                           ; 84D2 8D 99 75                 ..u
        tay                                     ; 84D5 A8                       .
        txa                                     ; 84D6 8A                       .
        pha                                     ; 84D7 48                       H
        jsr     BattlePresentation_Entry_84E9   ; 84D8 20 E9 84                  ..
        pla                                     ; 84DB 68                       h
        tax                                     ; 84DC AA                       .
BattlePresentation_Branch_84DD:
        dex                                     ; 84DD CA                       .
        bpl     BattlePresentation_Branch_84B5  ; 84DE 10 D5                    ..
        jmp     BattlePresentation_Branch_8D3C  ; 84E0 4C 3C 8D                 L<.
; ----------------------------------------------------------------------------
BattlePresentation_Branch_84E3:
        jsr     BattlePresentation_Entry_859B   ; 84E3 20 9B 85                  ..
        jmp     BattlePresentation_Branch_8D3C  ; 84E6 4C 3C 8D                 L<.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_84E9:
        lda     Bank13_BattleActionHandlerBasePointer; 84E9 AD 99 85            ...
        sta     $00                           ; 84EC 85 00                    ..
        lda     $859A                           ; 84EE AD 9A 85                 ...
        sta     $01                             ; 84F1 85 01                    ..
        ldx     #$00                            ; 84F3 A2 00                    ..
        tya                                     ; 84F5 98                       .
        pha                                     ; 84F6 48                       H
        jsr     AddByteToPointer                ; 84F7 20 13 C8                  ..
        pla                                     ; 84FA 68                       h
        jsr     AddByteToPointer                ; 84FB 20 13 C8                  ..
        ldy     #$00                            ; 84FE A0 00                    ..
        lda     ($00),y                       ; 8500 B1 00                    ..
        sta     $02                           ; 8502 85 02                    ..
        iny                                     ; 8504 C8                       .
        lda     ($00),y                       ; 8505 B1 00                    ..
        sta     $03                             ; 8507 85 03                    ..
        jmp     ($0002)                         ; 8509 6C 02 00                 l..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_850C:
        lda     #$00                            ; 850C A9 00                    ..
        ldx     #$2D                            ; 850E A2 2D                    .-
BattlePresentation_Branch_8510:
        sta     $75A3,x                         ; 8510 9D A3 75                 ..u
        dex                                     ; 8513 CA                       .
        bpl     BattlePresentation_Branch_8510  ; 8514 10 FA                    ..
        rts                                     ; 8516 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8517:
        ldx     #$07                            ; 8517 A2 07                    ..
        lda     #$10                            ; 8519 A9 10                    ..
BattlePresentation_Branch_851B:
        sta     $7579,x                         ; 851B 9D 79 75                 .yu
        sta     $7581,x                         ; 851E 9D 81 75                 ..u
        sta     $7589,x                         ; 8521 9D 89 75                 ..u
        dex                                     ; 8524 CA                       .
        bpl     BattlePresentation_Branch_851B  ; 8525 10 F4                    ..
        lda     $7578                           ; 8527 AD 78 75                 .xu
        sta     $00                           ; 852A 85 00                    ..
        ldx     #$00                            ; 852C A2 00                    ..
BattlePresentation_Branch_852E:
        lsr     $00                           ; 852E 46 00                    F.
        bcc     BattlePresentation_Branch_8586  ; 8530 90 54                    .T
        lda     #$20                            ; 8532 A9 20                    .
        jsr     BattlePresentation_Entry_85F2   ; 8534 20 F2 85                  ..
        bne     BattlePresentation_Branch_857F  ; 8537 D0 46                    .F
        lda     #$04                            ; 8539 A9 04                    ..
        jsr     BattlePresentation_Entry_85EE   ; 853B 20 EE 85                  ..
        bne     BattlePresentation_Branch_857F  ; 853E D0 3F                    .?
        lda     #$02                            ; 8540 A9 02                    ..
        jsr     BattlePresentation_Entry_85F6   ; 8542 20 F6 85                  ..
        bne     BattlePresentation_Branch_857F  ; 8545 D0 38                    .8
        lda     #$01                            ; 8547 A9 01                    ..
        jsr     BattlePresentation_Entry_85EE   ; 8549 20 EE 85                  ..
        jsr     BattlePresentation_Entry_858D   ; 854C 20 8D 85                  ..
        lda     #$08                            ; 854F A9 08                    ..
        jsr     BattlePresentation_Entry_85F2   ; 8551 20 F2 85                  ..
        jsr     BattlePresentation_Entry_8593   ; 8554 20 93 85                  ..
        lda     #$08                            ; 8557 A9 08                    ..
        jsr     BattlePresentation_Entry_85EE   ; 8559 20 EE 85                  ..
        beq     BattlePresentation_Branch_8563  ; 855C F0 05                    ..
        lda     #$00                            ; 855E A9 00                    ..
        sta     $7581,x                         ; 8560 9D 81 75                 ..u
BattlePresentation_Branch_8563:
        lda     #$10                            ; 8563 A9 10                    ..
        jsr     BattlePresentation_Entry_85EE   ; 8565 20 EE 85                  ..
        beq     BattlePresentation_Branch_856F  ; 8568 F0 05                    ..
        lda     #$06                            ; 856A A9 06                    ..
        sta     $7589,x                         ; 856C 9D 89 75                 ..u
BattlePresentation_Branch_856F:
        lda     #$20                            ; 856F A9 20                    .
        jsr     BattlePresentation_Entry_85EE   ; 8571 20 EE 85                  ..
        beq     BattlePresentation_Branch_8579  ; 8574 F0 03                    ..
        asl     $7589,x                         ; 8576 1E 89 75                 ..u
BattlePresentation_Branch_8579:
        inx                                     ; 8579 E8                       .
        cpx     #$08                            ; 857A E0 08                    ..
        bcc     BattlePresentation_Branch_852E  ; 857C 90 B0                    ..
        rts                                     ; 857E 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_857F:
        lda     #$01                            ; 857F A9 01                    ..
        sta     $7579,x                         ; 8581 9D 79 75                 .yu
        bne     BattlePresentation_Branch_8579  ; 8584 D0 F3                    ..
BattlePresentation_Branch_8586:
        lda     #$00                            ; 8586 A9 00                    ..
        sta     $7579,x                         ; 8588 9D 79 75                 .yu
        beq     BattlePresentation_Branch_8579  ; 858B F0 EC                    ..
BattlePresentation_Entry_858D:
        beq     BattlePresentation_Branch_8592  ; 858D F0 03                    ..
        lsr     $7579,x                         ; 858F 5E 79 75                 ^yu
BattlePresentation_Branch_8592:
        rts                                     ; 8592 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8593:
        beq     BattlePresentation_Branch_8592  ; 8593 F0 FD                    ..
        asl     $7579,x                         ; 8595 1E 79 75                 .yu
        rts                                     ; 8598 60                       `
; ----------------------------------------------------------------------------
Bank13_BattleActionHandlerBasePointer:
        db   $8B                             ; 8599 8B                       .
        db   $8B                             ; 859A 8B                       .
; ----------------------------------------------------------------------------
BattlePresentation_Entry_859B:
        lda     #$FF                            ; 859B A9 FF                    ..
        sta     $759A                           ; 859D 8D 9A 75                 ..u
        ldx     $93                             ; 85A0 A6 93                    ..
        jsr     BattlePresentation_Entry_899C   ; 85A2 20 9C 89                  ..
        ldy     #$05                            ; 85A5 A0 05                    ..
        lda     ($86),y                       ; 85A7 B1 86                    ..
        and     #$08                            ; 85A9 29 08                    ).
        bne     BattlePresentation_Branch_85E5  ; 85AB D0 38                    .8
        ldy     #$09                            ; 85AD A0 09                    ..
        lda     ($86),y                       ; 85AF B1 86                    ..
        and     #$0F                            ; 85B1 29 0F                    ).
        jsr     BattlePresentation_Entry_8AAB   ; 85B3 20 AB 8A                  ..
        cmp     #$09                            ; 85B6 C9 09                    ..
        bcs     BattlePresentation_Branch_85E8  ; 85B8 B0 2E                    ..
        pha                                     ; 85BA 48                       H
        and     #$07                            ; 85BB 29 07                    ).
        cmp     #$05                            ; 85BD C9 05                    ..
        pla                                     ; 85BF 68                       h
        bcs     BattlePresentation_Branch_85E5  ; 85C0 B0 23                    .#
        pha                                     ; 85C2 48                       H
        jsr     BattlePresentation_Entry_89B6   ; 85C3 20 B6 89                  ..
        ldy     #$05                            ; 85C6 A0 05                    ..
        lda     ($79),y                         ; 85C8 B1 79                    .y
        cmp     #$32                            ; 85CA C9 32                    .2
        bcc     BattlePresentation_Branch_85D0  ; 85CC 90 02                    ..
        lda     #$32                            ; 85CE A9 32                    .2
BattlePresentation_Branch_85D0:
        sta     $94                             ; 85D0 85 94                    ..
        lda     #$00                            ; 85D2 A9 00                    ..
        sta     $95                             ; 85D4 85 95                    ..
        pla                                     ; 85D6 68                       h
        and     #$07                            ; 85D7 29 07                    ).
        tax                                     ; 85D9 AA                       .
        lda     $85E9,x                         ; 85DA BD E9 85                 ...
        ldx     #$94                            ; 85DD A2 94                    ..
        jsr     MultiplyPointerWord             ; 85DF 20 27 C8                  '.
        jsr     BattlePresentation_Entry_8C76   ; 85E2 20 76 8C                  v.
BattlePresentation_Branch_85E5:
        jmp     BattlePresentation_Entry_B392   ; 85E5 4C 92 B3                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_85E8:
        rts                                     ; 85E8 60                       `
; ----------------------------------------------------------------------------
        db   $05,$03,$03,$04,$04             ; 85E9 05 03 03 04 04           .....
; ----------------------------------------------------------------------------
BattlePresentation_Entry_85EE:
        ldy     #$05                            ; 85EE A0 05                    ..
        bne     BattlePresentation_Branch_85F8  ; 85F0 D0 06                    ..
BattlePresentation_Entry_85F2:
        ldy     #$06                            ; 85F2 A0 06                    ..
        bne     BattlePresentation_Branch_85F8  ; 85F4 D0 02                    ..
BattlePresentation_Entry_85F6:
        ldy     #$07                            ; 85F6 A0 07                    ..
BattlePresentation_Branch_85F8:
        sta     $76                             ; 85F8 85 76                    .v
        jsr     BattlePresentation_Entry_899C   ; 85FA 20 9C 89                  ..
        lda     ($86),y                       ; 85FD B1 86                    ..
        and     $76                             ; 85FF 25 76                    %v
        rts                                     ; 8601 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8602:
        ldy     #$0D                            ; 8602 A0 0D                    ..
        ldx     $81                             ; 8604 A6 81                    ..
        jsr     BattlePresentation_Entry_899C   ; 8606 20 9C 89                  ..
        lda     ($86),y                       ; 8609 B1 86                    ..
        and     #$03                            ; 860B 29 03                    ).
        cmp     $8D                             ; 860D C5 8D                    ..
        rts                                     ; 860F 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8610:
        jsr     BattlePresentation_Entry_8A6B   ; 8610 20 6B 8A                  k.
        bcc     BattlePresentation_Branch_864B  ; 8613 90 36                    .6
        ldy     #$01                            ; 8615 A0 01                    ..
        ldx     #$00                            ; 8617 A2 00                    ..
        jmp     BattlePresentation_Entry_8641   ; 8619 4C 41 86                 LA.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_861C:
        jsr     BattlePresentation_Entry_8A6B   ; 861C 20 6B 8A                  k.
        bcc     BattlePresentation_Branch_864B  ; 861F 90 2A                    .*
        cmp     #$09                            ; 8621 C9 09                    ..
        bcc     BattlePresentation_Branch_863D  ; 8623 90 18                    ..
        lda     $79                             ; 8625 A5 79                    .y
        pha                                     ; 8627 48                       H
        lda     $7A                             ; 8628 A5 7A                    .z
        pha                                     ; 862A 48                       H
        jsr     BattlePresentation_Entry_86BB   ; 862B 20 BB 86                  ..
        sta     $02                           ; 862E 85 02                    ..
        lda     $7364                           ; 8630 AD 64 73                 .ds
        sta     $03                             ; 8633 85 03                    ..
        pla                                     ; 8635 68                       h
        sta     $7A                             ; 8636 85 7A                    .z
        pla                                     ; 8638 68                       h
        sta     $79                             ; 8639 85 79                    .y
        sec                                     ; 863B 38                       8
        rts                                     ; 863C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_863D:
        ldy     #$0C                            ; 863D A0 0C                    ..
        ldx     #$02                            ; 863F A2 02                    ..
BattlePresentation_Entry_8641:
        lda     ($79),y                         ; 8641 B1 79                    .y
        sta     $00,x                         ; 8643 95 00                    ..
        iny                                     ; 8645 C8                       .
        lda     ($79),y                         ; 8646 B1 79                    .y
        sta     $01,x                           ; 8648 95 01                    ..
        sec                                     ; 864A 38                       8
BattlePresentation_Branch_864B:
        rts                                     ; 864B 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_864C:
        lda     #$00                            ; 864C A9 00                    ..
        sta     $00                           ; 864E 85 00                    ..
        sta     $01                             ; 8650 85 01                    ..
        jsr     BattlePresentation_Entry_8A32   ; 8652 20 32 8A                  2.
        ldy     #$03                            ; 8655 A0 03                    ..
BattlePresentation_Branch_8657:
        tya                                     ; 8657 98                       .
        pha                                     ; 8658 48                       H
        lda     SavePartyCharacter1,x           ; 8659 BD 6A 61                 .ja
        bpl     BattlePresentation_Branch_8673  ; 865C 10 15                    ..
        and     #$0F                            ; 865E 29 0F                    ).
        jsr     BattlePresentation_Entry_89B6   ; 8660 20 B6 89                  ..
        ldy     #$01                            ; 8663 A0 01                    ..
        clc                                     ; 8665 18                       .
        lda     ($79),y                         ; 8666 B1 79                    .y
        adc     $00                           ; 8668 65 00                    e.
        sta     $00                           ; 866A 85 00                    ..
        iny                                     ; 866C C8                       .
        lda     ($79),y                         ; 866D B1 79                    .y
        adc     $01                             ; 866F 65 01                    e.
        sta     $01                             ; 8671 85 01                    ..
BattlePresentation_Branch_8673:
        pla                                     ; 8673 68                       h
        tay                                     ; 8674 A8                       .
        inx                                     ; 8675 E8                       .
        dey                                     ; 8676 88                       .
        bpl     BattlePresentation_Branch_8657  ; 8677 10 DE                    ..
        rts                                     ; 8679 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_867A:
        lda     #$00                            ; 867A A9 00                    ..
        sta     $02                           ; 867C 85 02                    ..
        sta     $03                             ; 867E 85 03                    ..
        jsr     BattlePresentation_Entry_8A32   ; 8680 20 32 8A                  2.
        ldy     #$03                            ; 8683 A0 03                    ..
BattlePresentation_Branch_8685:
        tya                                     ; 8685 98                       .
        pha                                     ; 8686 48                       H
        lda     SavePartyCharacter1,x           ; 8687 BD 6A 61                 .ja
        bpl     BattlePresentation_Branch_86B4  ; 868A 10 28                    .(
        and     #$0F                            ; 868C 29 0F                    ).
        pha                                     ; 868E 48                       H
        jsr     BattlePresentation_Entry_89B6   ; 868F 20 B6 89                  ..
        pla                                     ; 8692 68                       h
        cmp     #$09                            ; 8693 C9 09                    ..
        bcc     BattlePresentation_Branch_869D  ; 8695 90 06                    ..
        jsr     BattlePresentation_Entry_86BB   ; 8697 20 BB 86                  ..
        jmp     BattlePresentation_Branch_86A8  ; 869A 4C A8 86                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_869D:
        ldy     #$0D                            ; 869D A0 0D                    ..
        lda     ($79),y                         ; 869F B1 79                    .y
        and     #$03                            ; 86A1 29 03                    ).
        sta     $7364                           ; 86A3 8D 64 73                 .ds
        lda     ($79),y                         ; 86A6 B1 79                    .y
BattlePresentation_Branch_86A8:
        clc                                     ; 86A8 18                       .
        adc     $02                           ; 86A9 65 02                    e.
        sta     $02                           ; 86AB 85 02                    ..
        lda     $7364                           ; 86AD AD 64 73                 .ds
        adc     $03                             ; 86B0 65 03                    e.
        sta     $03                             ; 86B2 85 03                    ..
BattlePresentation_Branch_86B4:
        pla                                     ; 86B4 68                       h
        tay                                     ; 86B5 A8                       .
        inx                                     ; 86B6 E8                       .
        dey                                     ; 86B7 88                       .
        bpl     BattlePresentation_Branch_8685  ; 86B8 10 CB                    ..
        rts                                     ; 86BA 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_86BB:
        ldy     #$05                            ; 86BB A0 05                    ..
        lda     ($79),y                         ; 86BD B1 79                    .y
        ldy     #$0F                            ; 86BF A0 0F                    ..
        ldx     #$04                            ; 86C1 A2 04                    ..
        brk                                     ; 86C3 00                       .
        db   $13,$8F                         ; 86C4 13 8F                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 86C6 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_86C7:
        jsr     BattlePresentation_Entry_899C   ; 86C7 20 9C 89                  ..
        ldy     #$0A                            ; 86CA A0 0A                    ..
        lda     ($86),y                       ; 86CC B1 86                    ..
        sta     $00                           ; 86CE 85 00                    ..
        iny                                     ; 86D0 C8                       .
        lda     ($86),y                       ; 86D1 B1 86                    ..
        sta     $01                             ; 86D3 85 01                    ..
        rts                                     ; 86D5 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_86D6:
        lda     $82                             ; 86D6 A5 82                    ..
        jsr     BattlePresentation_Entry_8A6B   ; 86D8 20 6B 8A                  k.
        bcc     BattlePresentation_Branch_86E4  ; 86DB 90 07                    ..
        ldx     #$00                            ; 86DD A2 00                    ..
        ldy     #$03                            ; 86DF A0 03                    ..
        jmp     BattlePresentation_Entry_8641   ; 86E1 4C 41 86                 LA.
; ----------------------------------------------------------------------------
BattlePresentation_Branch_86E4:
        rts                                     ; 86E4 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_86E5:
        lda     #$00                            ; 86E5 A9 00                    ..
        sta     $00                           ; 86E7 85 00                    ..
        sta     $01                             ; 86E9 85 01                    ..
        jsr     BattlePresentation_Entry_8A32   ; 86EB 20 32 8A                  2.
        ldy     #$03                            ; 86EE A0 03                    ..
BattlePresentation_Branch_86F0:
        tya                                     ; 86F0 98                       .
        pha                                     ; 86F1 48                       H
        lda     SavePartyCharacter1,x           ; 86F2 BD 6A 61                 .ja
        bpl     BattlePresentation_Branch_8712  ; 86F5 10 1B                    ..
        and     #$0F                            ; 86F7 29 0F                    ).
        jsr     BattlePresentation_Entry_89B6   ; 86F9 20 B6 89                  ..
        ldy     #$00                            ; 86FC A0 00                    ..
        lda     ($79),y                         ; 86FE B1 79                    .y
        bpl     BattlePresentation_Branch_8712  ; 8700 10 10                    ..
        ldy     #$03                            ; 8702 A0 03                    ..
        clc                                     ; 8704 18                       .
        lda     ($79),y                         ; 8705 B1 79                    .y
        adc     $00                           ; 8707 65 00                    e.
        sta     $00                           ; 8709 85 00                    ..
        iny                                     ; 870B C8                       .
        lda     ($79),y                         ; 870C B1 79                    .y
        adc     $01                             ; 870E 65 01                    e.
        sta     $01                             ; 8710 85 01                    ..
BattlePresentation_Branch_8712:
        pla                                     ; 8712 68                       h
        tay                                     ; 8713 A8                       .
        inx                                     ; 8714 E8                       .
        dey                                     ; 8715 88                       .
        bpl     BattlePresentation_Branch_86F0  ; 8716 10 D8                    ..
        rts                                     ; 8718 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8719:
        lda     $82                             ; 8719 A5 82                    ..
        jsr     BattlePresentation_Entry_8A6B   ; 871B 20 6B 8A                  k.
        bcc     BattlePresentation_Branch_8736  ; 871E 90 16                    ..
BattlePresentation_Entry_8720:
        jsr     BattlePresentation_Entry_89F5   ; 8720 20 F5 89                  ..
        ldx     #$0C                            ; 8723 A2 0C                    ..
        ldy     #$01                            ; 8725 A0 01                    ..
        jsr     BattlePresentation_Entry_8641   ; 8727 20 41 86                  A.
        ldy     #$05                            ; 872A A0 05                    ..
        lda     ($79),y                         ; 872C B1 79                    .y
        and     #$20                            ; 872E 29 20                    )
        beq     BattlePresentation_Branch_8736  ; 8730 F0 04                    ..
        asl     $0C                             ; 8732 06 0C                    ..
        rol     $0D                             ; 8734 26 0D                    &.
BattlePresentation_Branch_8736:
        rts                                     ; 8736 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8737:
        lda     #$D4                            ; 8737 A9 D4                    ..
        bne     BattlePresentation_Branch_873D  ; 8739 D0 02                    ..
BattlePresentation_Entry_873B:
        lda     #$14                            ; 873B A9 14                    ..
BattlePresentation_Branch_873D:
        sta     $0B                             ; 873D 85 0B                    ..
        lda     #$00                            ; 873F A9 00                    ..
        sta     $0C                             ; 8741 85 0C                    ..
        sta     $0D                             ; 8743 85 0D                    ..
        jsr     BattlePresentation_Entry_8A32   ; 8745 20 32 8A                  2.
        ldy     #$03                            ; 8748 A0 03                    ..
BattlePresentation_Branch_874A:
        tya                                     ; 874A 98                       .
        pha                                     ; 874B 48                       H
        txa                                     ; 874C 8A                       .
        pha                                     ; 874D 48                       H
        lda     SavePartyCharacter1,x           ; 874E BD 6A 61                 .ja
        bpl     BattlePresentation_Branch_877C  ; 8751 10 29                    .)
        and     #$0F                            ; 8753 29 0F                    ).
        jsr     BattlePresentation_Entry_8A48   ; 8755 20 48 8A                  H.
        bne     BattlePresentation_Branch_877C  ; 8758 D0 22                    ."
        lda     $00                           ; 875A A5 00                    ..
        jsr     BattlePresentation_Entry_89F5   ; 875C 20 F5 89                  ..
        ldy     #$05                            ; 875F A0 05                    ..
        lda     ($79),y                         ; 8761 B1 79                    .y
        and     $0B                             ; 8763 25 0B                    %.
        bne     BattlePresentation_Branch_877C  ; 8765 D0 15                    ..
        jsr     BattlePresentation_Entry_8A5D   ; 8767 20 5D 8A                  ].
        bne     BattlePresentation_Branch_877C  ; 876A D0 10                    ..
        ldy     #$01                            ; 876C A0 01                    ..
        clc                                     ; 876E 18                       .
        lda     ($79),y                         ; 876F B1 79                    .y
        adc     $0C                             ; 8771 65 0C                    e.
        sta     $0C                             ; 8773 85 0C                    ..
        iny                                     ; 8775 C8                       .
        lda     ($79),y                         ; 8776 B1 79                    .y
        adc     $0D                             ; 8778 65 0D                    e.
        sta     $0D                             ; 877A 85 0D                    ..
BattlePresentation_Branch_877C:
        pla                                     ; 877C 68                       h
        tax                                     ; 877D AA                       .
        pla                                     ; 877E 68                       h
        tay                                     ; 877F A8                       .
        dey                                     ; 8780 88                       .
        bpl     BattlePresentation_Branch_874A  ; 8781 10 C7                    ..
        rts                                     ; 8783 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8784:
        lda     #$00                            ; 8784 A9 00                    ..
        beq     BattlePresentation_Branch_878A  ; 8786 F0 02                    ..
BattlePresentation_Entry_8788:
        lda     #$C0                            ; 8788 A9 C0                    ..
BattlePresentation_Branch_878A:
        sta     $01                             ; 878A 85 01                    ..
        txa                                     ; 878C 8A                       .
        jsr     BattlePresentation_Entry_8A6B   ; 878D 20 6B 8A                  k.
        bcc     BattlePresentation_Branch_87B8  ; 8790 90 26                    .&
        sta     $00                           ; 8792 85 00                    ..
        lda     #$00                            ; 8794 A9 00                    ..
        sta     $0E                             ; 8796 85 0E                    ..
        sta     $0F                             ; 8798 85 0F                    ..
        ldy     #$00                            ; 879A A0 00                    ..
        lda     ($79),y                         ; 879C B1 79                    .y
        bpl     BattlePresentation_Branch_87B8  ; 879E 10 18                    ..
        lda     $00                           ; 87A0 A5 00                    ..
        jsr     BattlePresentation_Entry_89F5   ; 87A2 20 F5 89                  ..
        ldy     #$05                            ; 87A5 A0 05                    ..
        lda     $01                             ; 87A7 A5 01                    ..
        and     ($79),y                         ; 87A9 31 79                    1y
        bne     BattlePresentation_Branch_87B8  ; 87AB D0 0B                    ..
        ldy     #$03                            ; 87AD A0 03                    ..
        lda     ($79),y                         ; 87AF B1 79                    .y
        sta     $0E                             ; 87B1 85 0E                    ..
        iny                                     ; 87B3 C8                       .
        lda     ($79),y                         ; 87B4 B1 79                    .y
        sta     $0F                             ; 87B6 85 0F                    ..
BattlePresentation_Branch_87B8:
        rts                                     ; 87B8 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_87B9:
        ldx     #$00                            ; 87B9 A2 00                    ..
        stx     $94                             ; 87BB 86 94                    ..
        stx     $95                             ; 87BD 86 95                    ..
BattlePresentation_Branch_87BF:
        txa                                     ; 87BF 8A                       .
        pha                                     ; 87C0 48                       H
        jsr     BattlePresentation_Entry_8788   ; 87C1 20 88 87                  ..
        clc                                     ; 87C4 18                       .
        lda     $0E                             ; 87C5 A5 0E                    ..
        adc     $94                             ; 87C7 65 94                    e.
        sta     $94                             ; 87C9 85 94                    ..
        lda     $0F                             ; 87CB A5 0F                    ..
        adc     $95                             ; 87CD 65 95                    e.
        sta     $95                             ; 87CF 85 95                    ..
        pla                                     ; 87D1 68                       h
        tax                                     ; 87D2 AA                       .
        inx                                     ; 87D3 E8                       .
        cpx     #$04                            ; 87D4 E0 04                    ..
        bcc     BattlePresentation_Branch_87BF  ; 87D6 90 E7                    ..
        rts                                     ; 87D8 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_87D9:
        lda     #$00                            ; 87D9 A9 00                    ..
        sta     $0E                             ; 87DB 85 0E                    ..
        sta     $0F                             ; 87DD 85 0F                    ..
        ldx     #$07                            ; 87DF A2 07                    ..
BattlePresentation_Branch_87E1:
        txa                                     ; 87E1 8A                       .
        pha                                     ; 87E2 48                       H
        jsr     BattlePresentation_Entry_899C   ; 87E3 20 9C 89                  ..
        ldy     #$06                            ; 87E6 A0 06                    ..
        lda     ($86),y                       ; 87E8 B1 86                    ..
        and     #$C0                            ; 87EA 29 C0                    ).
        cmp     #$C0                            ; 87EC C9 C0                    ..
        bne     BattlePresentation_Branch_8800  ; 87EE D0 10                    ..
        clc                                     ; 87F0 18                       .
        ldy     #$03                            ; 87F1 A0 03                    ..
        lda     ($86),y                       ; 87F3 B1 86                    ..
        adc     $0E                             ; 87F5 65 0E                    e.
        sta     $0E                             ; 87F7 85 0E                    ..
        iny                                     ; 87F9 C8                       .
        lda     ($86),y                       ; 87FA B1 86                    ..
        adc     $0F                             ; 87FC 65 0F                    e.
        sta     $0F                             ; 87FE 85 0F                    ..
BattlePresentation_Branch_8800:
        pla                                     ; 8800 68                       h
        tax                                     ; 8801 AA                       .
        dex                                     ; 8802 CA                       .
        bpl     BattlePresentation_Branch_87E1  ; 8803 10 DC                    ..
        rts                                     ; 8805 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8806:
        txa                                     ; 8806 8A                       .
        jsr     BattlePresentation_Entry_899C   ; 8807 20 9C 89                  ..
        ldy     #$03                            ; 880A A0 03                    ..
        ldx     #$0C                            ; 880C A2 0C                    ..
        jmp     BattlePresentation_Entry_8819   ; 880E 4C 19 88                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8811:
        txa                                     ; 8811 8A                       .
        jsr     BattlePresentation_Entry_899C   ; 8812 20 9C 89                  ..
        ldy     #$03                            ; 8815 A0 03                    ..
        ldx     #$0E                            ; 8817 A2 0E                    ..
BattlePresentation_Entry_8819:
        lda     ($86),y                       ; 8819 B1 86                    ..
        sta     $00,x                         ; 881B 95 00                    ..
        iny                                     ; 881D C8                       .
        lda     ($86),y                       ; 881E B1 86                    ..
        sta     $01,x                           ; 8820 95 01                    ..
        rts                                     ; 8822 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8823:
        lsr     $0F                             ; 8823 46 0F                    F.
        ror     $0E                             ; 8825 66 0E                    f.
        sec                                     ; 8827 38                       8
        lda     $0C                             ; 8828 A5 0C                    ..
        sbc     $0E                             ; 882A E5 0E                    ..
        sta     $94                             ; 882C 85 94                    ..
        lda     $0D                             ; 882E A5 0D                    ..
        sbc     $0F                             ; 8830 E5 0F                    ..
        sta     $95                             ; 8832 85 95                    ..
        bcs     BattlePresentation_Branch_883D  ; 8834 B0 07                    ..
        lda     #$00                            ; 8836 A9 00                    ..
        sta     $94                             ; 8838 85 94                    ..
        sta     $95                             ; 883A 85 95                    ..
        rts                                     ; 883C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_883D:
        lsr     $95                             ; 883D 46 95                    F.
        ror     $94                             ; 883F 66 94                    f.
        rts                                     ; 8841 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8842:
        jsr     BattlePresentation_Entry_8866   ; 8842 20 66 88                  f.
        bcc     BattlePresentation_Branch_8855  ; 8845 90 0E                    ..
        jsr     BattlePresentation_Entry_89F5   ; 8847 20 F5 89                  ..
        ldx     #$0C                            ; 884A A2 0C                    ..
        ldy     #$00                            ; 884C A0 00                    ..
        jsr     BattlePresentation_Entry_8641   ; 884E 20 41 86                  A.
        lda     #$00                            ; 8851 A9 00                    ..
        sta     $0D                             ; 8853 85 0D                    ..
BattlePresentation_Branch_8855:
        rts                                     ; 8855 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8856:
        txa                                     ; 8856 8A                       .
        jsr     BattlePresentation_Entry_899C   ; 8857 20 9C 89                  ..
        ldy     #$00                            ; 885A A0 00                    ..
        ldx     #$0E                            ; 885C A2 0E                    ..
        jsr     BattlePresentation_Entry_8819   ; 885E 20 19 88                  ..
        lda     #$00                            ; 8861 A9 00                    ..
        sta     $0F                             ; 8863 85 0F                    ..
        rts                                     ; 8865 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8866:
        lda     $82                             ; 8866 A5 82                    ..
        jmp     BattlePresentation_Entry_8A76   ; 8868 4C 76 8A                 Lv.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_886B:
        lda     #$0C                            ; 886B A9 0C                    ..
        sta     $07                             ; 886D 85 07                    ..
        lda     #$80                            ; 886F A9 80                    ..
        sta     $08                             ; 8871 85 08                    ..
        bne     BattlePresentation_Branch_8881  ; 8873 D0 0C                    ..
BattlePresentation_Entry_8875:
        lda     #$CC                            ; 8875 A9 CC                    ..
        bne     BattlePresentation_Branch_887B  ; 8877 D0 02                    ..
BattlePresentation_Entry_8879:
        lda     #$0C                            ; 8879 A9 0C                    ..
BattlePresentation_Branch_887B:
        sta     $07                             ; 887B 85 07                    ..
        lda     #$00                            ; 887D A9 00                    ..
        sta     $08                             ; 887F 85 08                    ..
BattlePresentation_Branch_8881:
        asl     a                               ; 8881 0A                       .
        sta     $94                             ; 8882 85 94                    ..
        sta     $95                             ; 8884 85 95                    ..
        lda     $72E4                           ; 8886 AD E4 72                 ..r
        bmi     BattlePresentation_Branch_88BF  ; 8889 30 34                    04
        jsr     BattlePresentation_Entry_8A32   ; 888B 20 32 8A                  2.
        ldy     #$03                            ; 888E A0 03                    ..
BattlePresentation_Branch_8890:
        tya                                     ; 8890 98                       .
        pha                                     ; 8891 48                       H
        lda     SavePartyCharacter1,x           ; 8892 BD 6A 61                 .ja
        bpl     BattlePresentation_Branch_88B9  ; 8895 10 22                    ."
        and     #$0F                            ; 8897 29 0F                    ).
        cmp     #$05                            ; 8899 C9 05                    ..
        bcs     BattlePresentation_Branch_88B9  ; 889B B0 1C                    ..
        sta     $00                           ; 889D 85 00                    ..
        jsr     BattlePresentation_Entry_8A48   ; 889F 20 48 8A                  H.
        bne     BattlePresentation_Branch_88B9  ; 88A2 D0 15                    ..
        lda     $00                           ; 88A4 A5 00                    ..
        jsr     BattlePresentation_Entry_89F5   ; 88A6 20 F5 89                  ..
        ldy     #$05                            ; 88A9 A0 05                    ..
        lda     ($79),y                         ; 88AB B1 79                    .y
        and     $07                             ; 88AD 25 07                    %.
        bne     BattlePresentation_Branch_88B9  ; 88AF D0 08                    ..
        jsr     BattlePresentation_Entry_8A5D   ; 88B1 20 5D 8A                  ].
        bne     BattlePresentation_Branch_88B9  ; 88B4 D0 03                    ..
        jsr     BattlePresentation_Entry_88C0   ; 88B6 20 C0 88                  ..
BattlePresentation_Branch_88B9:
        pla                                     ; 88B9 68                       h
        tay                                     ; 88BA A8                       .
        inx                                     ; 88BB E8                       .
        dey                                     ; 88BC 88                       .
        bpl     BattlePresentation_Branch_8890  ; 88BD 10 D1                    ..
BattlePresentation_Branch_88BF:
        rts                                     ; 88BF 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_88C0:
        txa                                     ; 88C0 8A                       .
        pha                                     ; 88C1 48                       H
        lda     $00                           ; 88C2 A5 00                    ..
        jsr     BattlePresentation_Entry_89B6   ; 88C4 20 B6 89                  ..
        ldy     #$03                            ; 88C7 A0 03                    ..
        lda     ($79),y                         ; 88C9 B1 79                    .y
        sta     $02                           ; 88CB 85 02                    ..
        iny                                     ; 88CD C8                       .
        lda     ($79),y                         ; 88CE B1 79                    .y
        beq     BattlePresentation_Branch_88D6  ; 88D0 F0 04                    ..
        lda     #$FF                            ; 88D2 A9 FF                    ..
        sta     $02                           ; 88D4 85 02                    ..
BattlePresentation_Branch_88D6:
        ldy     #$1B                            ; 88D6 A0 1B                    ..
        lda     ($79),y                         ; 88D8 B1 79                    .y
        sta     $04                             ; 88DA 85 04                    ..
        iny                                     ; 88DC C8                       .
        lda     ($79),y                         ; 88DD B1 79                    .y
        sta     $05                             ; 88DF 85 05                    ..
        iny                                     ; 88E1 C8                       .
        lda     ($79),y                         ; 88E2 B1 79                    .y
        sta     $06                             ; 88E4 85 06                    ..
        ldy     #$12                            ; 88E6 A0 12                    ..
        lda     $00                           ; 88E8 A5 00                    ..
        beq     BattlePresentation_Branch_88EE  ; 88EA F0 02                    ..
        ldy     #$0C                            ; 88EC A0 0C                    ..
BattlePresentation_Branch_88EE:
        sty     $01                             ; 88EE 84 01                    ..
        ldx     $00                           ; 88F0 A6 00                    ..
        lda     $892B,x                         ; 88F2 BD 2B 89                 .+.
        tax                                     ; 88F5 AA                       .
BattlePresentation_Branch_88F6:
        lsr     $06                             ; 88F6 46 06                    F.
        ror     $05                             ; 88F8 66 05                    f.
        ror     $04                             ; 88FA 66 04                    f.
        bcc     BattlePresentation_Branch_8923  ; 88FC 90 25                    .%
        lda     $B328,x                         ; 88FE BD 28 B3                 .(.
        tay                                     ; 8901 A8                       .
        lda     Bank13_BattlePresentationStateLookup,y; 8902 B9 67 B9           .g.
        and     #$1F                            ; 8905 29 1F                    ).
        cmp     $02                           ; 8907 C5 02                    ..
        beq     BattlePresentation_Branch_890D  ; 8909 F0 02                    ..
        bcs     BattlePresentation_Branch_8923  ; 890B B0 16                    ..
BattlePresentation_Branch_890D:
        lda     $08                             ; 890D A5 08                    ..
        bpl     BattlePresentation_Branch_8917  ; 890F 10 06                    ..
        tya                                     ; 8911 98                       .
        jsr     BattlePresentation_Entry_B930   ; 8912 20 30 B9                  0.
        bcc     BattlePresentation_Branch_8923  ; 8915 90 0C                    ..
BattlePresentation_Branch_8917:
        lda     Bank13_BattlePresentationValuesA,y; 8917 B9 EF 8A               ...
        clc                                     ; 891A 18                       .
        adc     $94                             ; 891B 65 94                    e.
        sta     $94                             ; 891D 85 94                    ..
        bcc     BattlePresentation_Branch_8923  ; 891F 90 02                    ..
        inc     $95                             ; 8921 E6 95                    ..
BattlePresentation_Branch_8923:
        inx                                     ; 8923 E8                       .
        dec     $01                             ; 8924 C6 01                    ..
        bne     BattlePresentation_Branch_88F6  ; 8926 D0 CE                    ..
        pla                                     ; 8928 68                       h
        tax                                     ; 8929 AA                       .
        rts                                     ; 892A 60                       `
; ----------------------------------------------------------------------------
        db   $00,$12,$1E,$2A,$36             ; 892B 00 12 1E 2A 36           ...*6
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8930:
        lda     #$C4                            ; 8930 A9 C4                    ..
        bne     BattlePresentation_Branch_8936  ; 8932 D0 02                    ..
BattlePresentation_Entry_8934:
        lda     #$04                            ; 8934 A9 04                    ..
BattlePresentation_Branch_8936:
        sta     $01                             ; 8936 85 01                    ..
        lda     #$00                            ; 8938 A9 00                    ..
        sta     $94                             ; 893A 85 94                    ..
        sta     $95                             ; 893C 85 95                    ..
        jsr     BattlePresentation_Entry_8A32   ; 893E 20 32 8A                  2.
        ldy     #$03                            ; 8941 A0 03                    ..
BattlePresentation_Branch_8943:
        tya                                     ; 8943 98                       .
        pha                                     ; 8944 48                       H
        lda     SavePartyCharacter1,x           ; 8945 BD 6A 61                 .ja
        bpl     BattlePresentation_Branch_8971  ; 8948 10 27                    .'
        and     #$0F                            ; 894A 29 0F                    ).
        cmp     #$08                            ; 894C C9 08                    ..
        bcs     BattlePresentation_Branch_8971  ; 894E B0 21                    .!
        jsr     BattlePresentation_Entry_8A48   ; 8950 20 48 8A                  H.
        bne     BattlePresentation_Branch_8971  ; 8953 D0 1C                    ..
        lda     $00                           ; 8955 A5 00                    ..
        jsr     BattlePresentation_Entry_89F5   ; 8957 20 F5 89                  ..
        ldy     #$05                            ; 895A A0 05                    ..
        lda     ($79),y                         ; 895C B1 79                    .y
        and     $01                             ; 895E 25 01                    %.
        bne     BattlePresentation_Branch_8971  ; 8960 D0 0F                    ..
        iny                                     ; 8962 C8                       .
        lda     ($79),y                         ; 8963 B1 79                    .y
        and     #$20                            ; 8965 29 20                    )
        bne     BattlePresentation_Branch_8971  ; 8967 D0 08                    ..
        jsr     BattlePresentation_Entry_8A5D   ; 8969 20 5D 8A                  ].
        bne     BattlePresentation_Branch_8971  ; 896C D0 03                    ..
        jsr     BattlePresentation_Entry_8977   ; 896E 20 77 89                  w.
BattlePresentation_Branch_8971:
        pla                                     ; 8971 68                       h
        tay                                     ; 8972 A8                       .
        dey                                     ; 8973 88                       .
        bpl     BattlePresentation_Branch_8943  ; 8974 10 CD                    ..
        rts                                     ; 8976 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8977:
        txa                                     ; 8977 8A                       .
        pha                                     ; 8978 48                       H
        lda     $00                           ; 8979 A5 00                    ..
        jsr     BattlePresentation_Entry_89B6   ; 897B 20 B6 89                  ..
        ldy     #$13                            ; 897E A0 13                    ..
BattlePresentation_Branch_8980:
        lda     ($79),y                         ; 8980 B1 79                    .y
        and     #$7F                            ; 8982 29 7F                    ).
        cmp     #$67                            ; 8984 C9 67                    .g
        bcs     BattlePresentation_Branch_8994  ; 8986 B0 0C                    ..
        tax                                     ; 8988 AA                       .
        lda     Bank13_BattlePresentationValuesB,x; 8989 BD 24 8B               .$.
        adc     $94                             ; 898C 65 94                    e.
        sta     $94                             ; 898E 85 94                    ..
        bcc     BattlePresentation_Branch_8994  ; 8990 90 02                    ..
        inc     $95                             ; 8992 E6 95                    ..
BattlePresentation_Branch_8994:
        iny                                     ; 8994 C8                       .
        cpy     #$1B                            ; 8995 C0 1B                    ..
        bcc     BattlePresentation_Branch_8980  ; 8997 90 E7                    ..
        pla                                     ; 8999 68                       h
        tax                                     ; 899A AA                       .
        rts                                     ; 899B 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_899C:
        txa                                     ; 899C 8A                       .
        asl     a                               ; 899D 0A                       .
        sta     $86                           ; 899E 85 86                    ..
        asl     a                               ; 89A0 0A                       .
        asl     a                               ; 89A1 0A                       .
        asl     a                               ; 89A2 0A                       .
        sec                                     ; 89A3 38                       8
        sbc     $86                           ; 89A4 E5 86                    ..
        clc                                     ; 89A6 18                       .
        adc     Bank13_BattleCharacterRecordBase; 89A7 6D B4 89                 m..
        sta     $86                           ; 89AA 85 86                    ..
        lda     $89B5                           ; 89AC AD B5 89                 ...
        adc     #$00                            ; 89AF 69 00                    i.
        sta     $87                             ; 89B1 85 87                    ..
        rts                                     ; 89B3 60                       `
; ----------------------------------------------------------------------------
Bank13_BattleCharacterRecordBase:
        db   $74                             ; 89B4 74                       t
        db   $72                             ; 89B5 72                       r
; ----------------------------------------------------------------------------
BattlePresentation_Entry_89B6:
        sta     $79                             ; 89B6 85 79                    .y
        txa                                     ; 89B8 8A                       .
        pha                                     ; 89B9 48                       H
        lda     $79                             ; 89BA A5 79                    .y
        asl     a                               ; 89BC 0A                       .
        tax                                     ; 89BD AA                       .
        lda     Bank13_BattleCharacterRecordPointers,x; 89BE BD CB 89           ...
        sta     $79                             ; 89C1 85 79                    .y
        lda     $89CC,x                         ; 89C3 BD CC 89                 ...
        sta     $7A                             ; 89C6 85 7A                    .z
        pla                                     ; 89C8 68                       h
        tax                                     ; 89C9 AA                       .
        rts                                     ; 89CA 60                       `
; ----------------------------------------------------------------------------
Bank13_BattleCharacterRecordPointers:
        db   $01                             ; 89CB 01                       .
        db   $60,$1F,$60,$3D,$60,$5B,$60,$79 ; 89CC 60 1F 60 3D 60 5B 60 79  `.`=`[`y
        db   $60,$97,$60,$B5,$60,$D3,$60,$F1 ; 89D4 60 97 60 B5 60 D3 60 F1  `.`.`.`.
        db   $60,$0F,$61,$15,$61,$1B,$61,$21 ; 89DC 60 0F 61 15 61 1B 61 21  `.a.a.a!
        db   $61,$27,$61,$2D,$61,$33,$61,$39 ; 89E4 61 27 61 2D 61 33 61 39  a'a-a3a9
        db   $61,$3F,$61,$45,$61,$4B,$61,$51 ; 89EC 61 3F 61 45 61 4B 61 51  a?aEaKaQ
        db   $61                             ; 89F4 61                       a
; ----------------------------------------------------------------------------
BattlePresentation_Entry_89F5:
        sta     $7A                             ; 89F5 85 7A                    .z
        txa                                     ; 89F7 8A                       .
        pha                                     ; 89F8 48                       H
        ldx     #$09                            ; 89F9 A2 09                    ..
BattlePresentation_Branch_89FB:
        lda     $72EA,x                         ; 89FB BD EA 72                 ..r
        bpl     BattlePresentation_Branch_8A06  ; 89FE 10 06                    ..
        and     #$1F                            ; 8A00 29 1F                    ).
        cmp     $7A                             ; 8A02 C5 7A                    .z
        beq     BattlePresentation_Branch_8A0D  ; 8A04 F0 07                    ..
BattlePresentation_Branch_8A06:
        dex                                     ; 8A06 CA                       .
        bpl     BattlePresentation_Branch_89FB  ; 8A07 10 F2                    ..
        clc                                     ; 8A09 18                       .
        pla                                     ; 8A0A 68                       h
        tax                                     ; 8A0B AA                       .
        rts                                     ; 8A0C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_8A0D:
        txa                                     ; 8A0D 8A                       .
        asl     a                               ; 8A0E 0A                       .
        tax                                     ; 8A0F AA                       .
        lda     Bank13_BattleSlotRecordPointers,x; 8A10 BD 1E 8A                ...
        sta     $79                             ; 8A13 85 79                    .y
        lda     $8A1F,x                         ; 8A15 BD 1F 8A                 ...
        sta     $7A                             ; 8A18 85 7A                    .z
        pla                                     ; 8A1A 68                       h
        tax                                     ; 8A1B AA                       .
        sec                                     ; 8A1C 38                       8
        rts                                     ; 8A1D 60                       `
; ----------------------------------------------------------------------------
Bank13_BattleSlotRecordPointers:
        db   $10                             ; 8A1E 10                       .
        db   $72,$1A,$72,$24,$72,$2E,$72,$38 ; 8A1F 72 1A 72 24 72 2E 72 38  r.r$r.r8
        db   $72,$42,$72,$4C,$72,$56,$72,$60 ; 8A27 72 42 72 4C 72 56 72 60  rBrLrVr`
        db   $72,$6A,$72                     ; 8A2F 72 6A 72                 rjr
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8A32:
        ldy     #$00                            ; 8A32 A0 00                    ..
        lda     SaveGameStateFlags              ; 8A34 AD 8E 61                 ..a
        bpl     BattlePresentation_Branch_8A3B  ; 8A37 10 02                    ..
        ldy     #$04                            ; 8A39 A0 04                    ..
BattlePresentation_Branch_8A3B:
        bit     SaveGameStateFlags              ; 8A3B 2C 8E 61                 ,.a
        bvc     BattlePresentation_Branch_8A45  ; 8A3E 50 05                    P.
        tya                                     ; 8A40 98                       .
        clc                                     ; 8A41 18                       .
        adc     #$1C                            ; 8A42 69 1C                    i.
        tay                                     ; 8A44 A8                       .
BattlePresentation_Branch_8A45:
        tya                                     ; 8A45 98                       .
        tax                                     ; 8A46 AA                       .
        rts                                     ; 8A47 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8A48:
        sta     $00                           ; 8A48 85 00                    ..
        jsr     BattlePresentation_Entry_89B6   ; 8A4A 20 B6 89                  ..
        ldy     #$00                            ; 8A4D A0 00                    ..
        lda     ($79),y                         ; 8A4F B1 79                    .y
        and     #$C0                            ; 8A51 29 C0                    ).
        cmp     #$80                            ; 8A53 C9 80                    ..
        rts                                     ; 8A55 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8A56:
        ldy     #$05                            ; 8A56 A0 05                    ..
        lda     ($79),y                         ; 8A58 B1 79                    .y
        and     #$C4                            ; 8A5A 29 C4                    ).
        rts                                     ; 8A5C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8A5D:
        ldy     #$06                            ; 8A5D A0 06                    ..
        lda     ($79),y                         ; 8A5F B1 79                    .y
        and     #$01                            ; 8A61 29 01                    ).
        bne     BattlePresentation_Branch_8A6A  ; 8A63 D0 05                    ..
        iny                                     ; 8A65 C8                       .
        lda     ($79),y                         ; 8A66 B1 79                    .y
        and     #$40                            ; 8A68 29 40                    )@
BattlePresentation_Branch_8A6A:
        rts                                     ; 8A6A 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8A6B:
        jsr     BattlePresentation_Entry_8A76   ; 8A6B 20 76 8A                  v.
        php                                     ; 8A6E 08                       .
        pha                                     ; 8A6F 48                       H
        jsr     BattlePresentation_Entry_89B6   ; 8A70 20 B6 89                  ..
        pla                                     ; 8A73 68                       h
        plp                                     ; 8A74 28                       (
        rts                                     ; 8A75 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8A76:
        sta     $7364                           ; 8A76 8D 64 73                 .ds
        jsr     BattlePresentation_Entry_8A32   ; 8A79 20 32 8A                  2.
        ldy     #$00                            ; 8A7C A0 00                    ..
BattlePresentation_Branch_8A7E:
        lda     SavePartyCharacter1,x           ; 8A7E BD 6A 61                 .ja
        bpl     BattlePresentation_Branch_8A88  ; 8A81 10 05                    ..
        dec     $7364                           ; 8A83 CE 64 73                 .ds
        bmi     BattlePresentation_Branch_8A90  ; 8A86 30 08                    0.
BattlePresentation_Branch_8A88:
        inx                                     ; 8A88 E8                       .
        iny                                     ; 8A89 C8                       .
        cpy     #$04                            ; 8A8A C0 04                    ..
        bcc     BattlePresentation_Branch_8A7E  ; 8A8C 90 F0                    ..
        clc                                     ; 8A8E 18                       .
        rts                                     ; 8A8F 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_8A90:
        and     #$1F                            ; 8A90 29 1F                    ).
        sec                                     ; 8A92 38                       8
        rts                                     ; 8A93 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8A94:
        jsr     BattlePresentation_Entry_8AAB   ; 8A94 20 AB 8A                  ..
        bcc     BattlePresentation_Branch_8AA9  ; 8A97 90 10                    ..
        sta     $7365                           ; 8A99 8D 65 73                 .es
        jsr     BattlePresentation_Entry_8A32   ; 8A9C 20 32 8A                  2.
        ldy     #$00                            ; 8A9F A0 00                    ..
        jsr     BattlePresentation_Entry_8AD3   ; 8AA1 20 D3 8A                  ..
        bcc     BattlePresentation_Branch_8AA9  ; 8AA4 90 03                    ..
        tya                                     ; 8AA6 98                       .
        sec                                     ; 8AA7 38                       8
        rts                                     ; 8AA8 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_8AA9:
        clc                                     ; 8AA9 18                       .
        rts                                     ; 8AAA 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8AAB:
        tax                                     ; 8AAB AA                       .
        lda     $72EA,x                         ; 8AAC BD EA 72                 ..r
        bpl     BattlePresentation_Branch_8AA9  ; 8AAF 10 F8                    ..
        and     #$1F                            ; 8AB1 29 1F                    ).
        sec                                     ; 8AB3 38                       8
        rts                                     ; 8AB4 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8AB5:
        jsr     BattlePresentation_Entry_8866   ; 8AB5 20 66 88                  f.
        bcc     BattlePresentation_Branch_8ACE  ; 8AB8 90 14                    ..
BattlePresentation_Entry_8ABA:
        sta     $7364                           ; 8ABA 8D 64 73                 .ds
        ldx     #$09                            ; 8ABD A2 09                    ..
BattlePresentation_Branch_8ABF:
        lda     $72EA,x                         ; 8ABF BD EA 72                 ..r
        bpl     BattlePresentation_Branch_8ACB  ; 8AC2 10 07                    ..
        and     #$7F                            ; 8AC4 29 7F                    ).
        cmp     $7364                           ; 8AC6 CD 64 73                 .ds
        beq     BattlePresentation_Branch_8AD0  ; 8AC9 F0 05                    ..
BattlePresentation_Branch_8ACB:
        dex                                     ; 8ACB CA                       .
        bpl     BattlePresentation_Branch_8ABF  ; 8ACC 10 F1                    ..
BattlePresentation_Branch_8ACE:
        clc                                     ; 8ACE 18                       .
        rts                                     ; 8ACF 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_8AD0:
        sec                                     ; 8AD0 38                       8
        txa                                     ; 8AD1 8A                       .
        rts                                     ; 8AD2 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8AD3:
        lda     #$03                            ; 8AD3 A9 03                    ..
        sta     $7364                           ; 8AD5 8D 64 73                 .ds
BattlePresentation_Branch_8AD8:
        lda     SavePartyCharacter1,x           ; 8AD8 BD 6A 61                 .ja
        bpl     BattlePresentation_Branch_8AE5  ; 8ADB 10 08                    ..
        and     #$1F                            ; 8ADD 29 1F                    ).
        cmp     $7365                           ; 8ADF CD 65 73                 .es
        beq     BattlePresentation_Branch_8AED  ; 8AE2 F0 09                    ..
        iny                                     ; 8AE4 C8                       .
BattlePresentation_Branch_8AE5:
        inx                                     ; 8AE5 E8                       .
        dec     $7364                           ; 8AE6 CE 64 73                 .ds
        bpl     BattlePresentation_Branch_8AD8  ; 8AE9 10 ED                    ..
        clc                                     ; 8AEB 18                       .
        rts                                     ; 8AEC 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_8AED:
        sec                                     ; 8AED 38                       8
        rts                                     ; 8AEE 60                       `
; ----------------------------------------------------------------------------
Bank13_BattlePresentationValuesA:
        db   $01,$01,$01,$01,$01,$01,$01,$01 ; 8AEF 01 01 01 01 01 01 01 01  ........
        db   $01,$01,$01,$01,$01,$01,$01,$01 ; 8AF7 01 01 01 01 01 01 01 01  ........
        db   $01,$01,$01,$01,$01,$01,$01,$01 ; 8AFF 01 01 01 01 01 01 01 01  ........
        db   $01,$01,$01,$01,$01,$01,$01,$01 ; 8B07 01 01 01 01 01 01 01 01  ........
        db   $01,$01,$01,$01,$01,$01,$01,$01 ; 8B0F 01 01 01 01 01 01 01 01  ........
        db   $01,$01,$01,$01,$01,$01,$01,$01 ; 8B17 01 01 01 01 01 01 01 01  ........
        db   $01,$01,$01,$01,$01             ; 8B1F 01 01 01 01 01           .....
Bank13_BattlePresentationValuesB:
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 8B24 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$01,$00,$00,$00,$00 ; 8B2C 00 00 00 01 00 00 00 00  ........
        db   $00,$02,$00,$00,$00,$00,$00,$03 ; 8B34 00 02 00 00 00 00 00 03  ........
        db   $04,$00,$05,$06,$00,$07,$08,$09 ; 8B3C 04 00 05 06 00 07 08 09  ........
        db   $0A,$0B,$0C,$0D,$00,$00,$00,$00 ; 8B44 0A 0B 0C 0D 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 8B4C 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 8B54 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 8B5C 00 00 00 00 00 00 00 00  ........
        db   $0E,$00,$0F,$00,$10,$11,$00,$00 ; 8B64 0E 00 0F 00 10 11 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 8B6C 00 00 00 00 00 00 00 00  ........
        db   $12,$13,$00,$14,$15,$16,$17,$18 ; 8B74 12 13 00 14 15 16 17 18  ........
        db   $19,$1A,$1B,$1C,$1D,$1E,$1F,$20 ; 8B7C 19 1A 1B 1C 1D 1E 1F 20  .......
        db   $21,$22,$23,$24,$25,$26,$27     ; 8B84 21 22 23 24 25 26 27     !"#$%&'
Bank13_BattleActionHandlerPointers:
        db   $5A,$8C,$5A,$8C,$5A,$8C,$60,$8C ; 8B8B 5A 8C 5A 8C 5A 8C 60 8C  Z.Z.Z.`.
        db   $60,$8C,$60,$8C,$60,$8C,$5A,$8C ; 8B93 60 8C 60 8C 60 8C 5A 8C  `.`.`.Z.
        db   $60,$8C,$60,$8C,$60,$8C,$60,$8C ; 8B9B 60 8C 60 8C 60 8C 60 8C  `.`.`.`.
        db   $60,$8C,$80,$8C,$8E,$8C,$59,$8C ; 8BA3 60 8C 80 8C 8E 8C 59 8C  `.....Y.
        db   $75,$B1,$95,$B1,$5F,$B1,$6A,$B1 ; 8BAB 75 B1 95 B1 5F B1 6A B1  u..._.j.
        db   $B8,$B1,$61,$B4,$42,$B4,$4B,$B4 ; 8BB3 B8 B1 61 B4 42 B4 4B B4  ..a.B.K.
        db   $A3,$B2,$59,$8C,$4C,$B2,$57,$B2 ; 8BBB A3 B2 59 8C 4C B2 57 B2  ..Y.L.W.
        db   $59,$8C,$59,$8C,$59,$8C,$D8,$8C ; 8BC3 59 8C 59 8C 59 8C D8 8C  Y.Y.Y...
        db   $D8,$8C,$D8,$8C,$D8,$8C,$D8,$8C ; 8BCB D8 8C D8 8C D8 8C D8 8C  ........
        db   $D8,$8C,$D8,$8C,$D8,$8C,$D8,$8C ; 8BD3 D8 8C D8 8C D8 8C D8 8C  ........
        db   $D8,$8C,$D8,$8C,$59,$8C,$59,$8C ; 8BDB D8 8C D8 8C 59 8C 59 8C  ....Y.Y.
        db   $59,$8C,$59,$8C,$59,$8C,$59,$8C ; 8BE3 59 8C 59 8C 59 8C 59 8C  Y.Y.Y.Y.
        db   $59,$8C,$59,$8C,$92,$B3,$B2,$B3 ; 8BEB 59 8C 59 8C 92 B3 B2 B3  Y.Y.....
        db   $CA,$B3,$FB,$B3,$21,$B4,$24,$B4 ; 8BF3 CA B3 FB B3 21 B4 24 B4  ....!.$.
        db   $AB,$B2,$AB,$B2,$AB,$B2,$62,$B2 ; 8BFB AB B2 AB B2 AB B2 62 B2  ......b.
        db   $69,$8C,$69,$8C,$69,$8C,$69,$8C ; 8C03 69 8C 69 8C 69 8C 69 8C  i.i.i.i.
        db   $69,$8C,$69,$8C,$EE,$B1,$61,$B4 ; 8C0B 69 8C 69 8C EE B1 61 B4  i.i...a.
        db   $29,$B2,$09,$B2,$3B,$B2,$59,$8C ; 8C13 29 B2 09 B2 3B B2 59 8C  )...;.Y.
        db   $61,$B4,$61,$B4,$61,$B4,$61,$B4 ; 8C1B 61 B4 61 B4 61 B4 61 B4  a.a.a.a.
        db   $61,$B4,$61,$B4,$61,$B4,$61,$B4 ; 8C23 61 B4 61 B4 61 B4 61 B4  a.a.a.a.
        db   $61,$B4,$61,$B4,$61,$B4,$61,$B4 ; 8C2B 61 B4 61 B4 61 B4 61 B4  a.a.a.a.
        db   $61,$B4,$61,$B4,$61,$B4,$61,$B4 ; 8C33 61 B4 61 B4 61 B4 61 B4  a.a.a.a.
        db   $61,$B4,$61,$B4,$61,$B4,$61,$B4 ; 8C3B 61 B4 61 B4 61 B4 61 B4  a.a.a.a.
        db   $72,$8C,$94,$8C,$61,$B4,$01,$8D ; 8C43 72 8C 94 8C 61 B4 01 8D  r...a...
        db   $01,$8D,$59,$8C,$7D,$B2,$7C,$8C ; 8C4B 01 8D 59 8C 7D B2 7C 8C  ..Y.}.|.
        db   $92,$B3,$01,$8D,$98,$B2         ; 8C53 92 B3 01 8D 98 B2        ......
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8C59:
        rts                                     ; 8C59 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8C5A:
        jsr     BattlePresentation_Entry_8CBC   ; 8C5A 20 BC 8C                  ..
        jmp     BattlePresentation_Branch_824B  ; 8C5D 4C 4B 82                 LK.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8C60:
        jsr     BattlePresentation_Entry_8CBC   ; 8C60 20 BC 8C                  ..
        jsr     BattlePresentation_Entry_81C5   ; 8C63 20 C5 81                  ..
        jmp     BattlePresentation_Branch_824B  ; 8C66 4C 4B 82                 LK.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8C69:
        jsr     BattlePresentation_Entry_8CBC   ; 8C69 20 BC 8C                  ..
BattlePresentation_Branch_8C6C:
        jsr     BattlePresentation_Entry_81C5   ; 8C6C 20 C5 81                  ..
        jmp     BattlePresentation_Branch_8260  ; 8C6F 4C 60 82                 L`.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8C72:
        lda     #$14                            ; 8C72 A9 14                    ..
        sta     $94                             ; 8C74 85 94                    ..
BattlePresentation_Entry_8C76:
        lda     #$00                            ; 8C76 A9 00                    ..
        sta     $95                             ; 8C78 85 95                    ..
        beq     BattlePresentation_Branch_8C6C  ; 8C7A F0 F0                    ..
BattlePresentation_Entry_8C7C:
        lda     #$1C                            ; 8C7C A9 1C                    ..
        bne     BattlePresentation_Entry_8C76   ; 8C7E D0 F6                    ..
BattlePresentation_Entry_8C80:
        jsr     BattlePresentation_Entry_8CA5   ; 8C80 20 A5 8C                  ..
        jsr     BattlePresentation_Entry_81E0   ; 8C83 20 E0 81                  ..
BattlePresentation_Branch_8C86:
        lda     #$06                            ; 8C86 A9 06                    ..
        jsr     BattlePresentation_Entry_8198   ; 8C88 20 98 81                  ..
        jmp     BattlePresentation_Branch_824B  ; 8C8B 4C 4B 82                 LK.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8C8E:
        jsr     BattlePresentation_Entry_8CA5   ; 8C8E 20 A5 8C                  ..
        jmp     BattlePresentation_Branch_8C86  ; 8C91 4C 86 8C                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8C94:
        jsr     BattlePresentation_Entry_864C   ; 8C94 20 4C 86                  L.
        lda     $00                           ; 8C97 A5 00                    ..
        sta     $94                             ; 8C99 85 94                    ..
        lda     $01                             ; 8C9B A5 01                    ..
        sta     $95                             ; 8C9D 85 95                    ..
        jsr     BattlePresentation_Entry_81E0   ; 8C9F 20 E0 81                  ..
        jmp     BattlePresentation_Branch_8260  ; 8CA2 4C 60 82                 L`.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8CA5:
        jsr     BattlePresentation_Entry_864C   ; 8CA5 20 4C 86                  L.
        jsr     BattlePresentation_Entry_867A   ; 8CA8 20 7A 86                  z.
        clc                                     ; 8CAB 18                       .
        lda     $00                           ; 8CAC A5 00                    ..
        adc     $02                           ; 8CAE 65 02                    e.
        sta     $94                             ; 8CB0 85 94                    ..
        lda     $01                             ; 8CB2 A5 01                    ..
        adc     $03                             ; 8CB4 65 03                    e.
        lsr     a                               ; 8CB6 4A                       J
        sta     $95                             ; 8CB7 85 95                    ..
        ror     $94                             ; 8CB9 66 94                    f.
        rts                                     ; 8CBB 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8CBC:
        lda     #$00                            ; 8CBC A9 00                    ..
        sta     $95                             ; 8CBE 85 95                    ..
        lda     $7599                           ; 8CC0 AD 99 75                 ..u
        asl     a                               ; 8CC3 0A                       .
        tax                                     ; 8CC4 AA                       .
        cpx     #$78                            ; 8CC5 E0 78                    .x
        bcs     BattlePresentation_Branch_8CCF  ; 8CC7 B0 06                    ..
        lda     $B7BD,x                         ; 8CC9 BD BD B7                 ...
        sta     $94                             ; 8CCC 85 94                    ..
        rts                                     ; 8CCE 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_8CCF:
        sbc     #$78                            ; 8CCF E9 78                    .x
        tax                                     ; 8CD1 AA                       .
        lda     $B7D7,x                         ; 8CD2 BD D7 B7                 ...
L8CD6 = $+ 1
        sta     $94                             ; 8CD5 85 94                    ..
        rts                                     ; 8CD7 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8CD8:
        ldx     $7599                           ; 8CD8 AE 99 75                 ..u
        lda     $8D0B,x                         ; 8CDB BD 0B 8D                 ...
        beq     BattlePresentation_Branch_8D00  ; 8CDE F0 20                    .
        sta     $00                           ; 8CE0 85 00                    ..
        lda     $75AB                           ; 8CE2 AD AB 75                 ..u
        ora     $00                           ; 8CE5 05 00                    ..
        sta     $75AB                           ; 8CE7 8D AB 75                 ..u
        lda     $00                           ; 8CEA A5 00                    ..
        ldy     #$FF                            ; 8CEC A0 FF                    ..
BattlePresentation_Branch_8CEE:
        iny                                     ; 8CEE C8                       .
        lsr     a                               ; 8CEF 4A                       J
        bcc     BattlePresentation_Branch_8CEE  ; 8CF0 90 FC                    ..
        clc                                     ; 8CF2 18                       .
        lda     $759A                           ; 8CF3 AD 9A 75                 ..u
        adc     $75C1,y                         ; 8CF6 79 C1 75                 y.u
        bcc     BattlePresentation_Branch_8CFD  ; 8CF9 90 02                    ..
        lda     #$FF                            ; 8CFB A9 FF                    ..
BattlePresentation_Branch_8CFD:
        sta     $75C1,y                         ; 8CFD 99 C1 75                 ..u
BattlePresentation_Branch_8D00:
        rts                                     ; 8D00 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8D01:
        ldx     $7599                           ; 8D01 AE 99 75                 ..u
        lda     $8CD6,x                         ; 8D04 BD D6 8C                 ...
        beq     BattlePresentation_Branch_8D29  ; 8D07 F0 20                    .
        sta     $00                           ; 8D09 85 00                    ..
        lda     $75AC                           ; 8D0B AD AC 75                 ..u
        ora     $00                           ; 8D0E 05 00                    ..
        sta     $75AC                           ; 8D10 8D AC 75                 ..u
        lda     $00                           ; 8D13 A5 00                    ..
        ldy     #$FF                            ; 8D15 A0 FF                    ..
BattlePresentation_Branch_8D17:
        iny                                     ; 8D17 C8                       .
        lsr     a                               ; 8D18 4A                       J
        bcc     BattlePresentation_Branch_8D17  ; 8D19 90 FC                    ..
        clc                                     ; 8D1B 18                       .
        lda     $759A                           ; 8D1C AD 9A 75                 ..u
        adc     $75C9,y                         ; 8D1F 79 C9 75                 y.u
        bcc     BattlePresentation_Branch_8D26  ; 8D22 90 02                    ..
        lda     #$FF                            ; 8D24 A9 FF                    ..
BattlePresentation_Branch_8D26:
        sta     $75C9,y                         ; 8D26 99 C9 75                 ..u
BattlePresentation_Branch_8D29:
        rts                                     ; 8D29 60                       `
; ----------------------------------------------------------------------------
        db   $08,$10,$80,$01,$01,$01,$02,$02 ; 8D2A 08 10 80 01 01 01 02 02  ........
        db   $02,$20,$40,$02,$10,$00,$00,$00 ; 8D32 02 20 40 02 10 00 00 00  . @.....
        db   $00,$01                         ; 8D3A 00 01                    ..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_8D3C:
        jsr     BattlePresentation_Entry_8D91   ; 8D3C 20 91 8D                  ..
        lda     #$00                            ; 8D3F A9 00                    ..
        sta     $77D0                           ; 8D41 8D D0 77                 ..w
        sta     $77D1                           ; 8D44 8D D1 77                 ..w
        lda     $93                             ; 8D47 A5 93                    ..
        sta     $81                             ; 8D49 85 81                    ..
        jsr     BattlePresentation_Entry_8D69   ; 8D4B 20 69 8D                  i.
        beq     BattlePresentation_Branch_8D68  ; 8D4E F0 18                    ..
        jsr     BattlePresentation_Entry_8D77   ; 8D50 20 77 8D                  w.
        jsr     BattlePresentation_Entry_8DE7   ; 8D53 20 E7 8D                  ..
        jsr     BattlePresentation_Entry_8E0B   ; 8D56 20 0B 8E                  ..
        jsr     BattlePresentation_Entry_8E42   ; 8D59 20 42 8E                  B.
        jsr     BattlePresentation_Entry_8E5F   ; 8D5C 20 5F 8E                  _.
        jsr     BattlePresentation_Entry_8E9E   ; 8D5F 20 9E 8E                  ..
        jsr     BattlePresentation_Entry_8ECE   ; 8D62 20 CE 8E                  ..
        jsr     BattlePresentation_Entry_8F16   ; 8D65 20 16 8F                  ..
BattlePresentation_Branch_8D68:
        rts                                     ; 8D68 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8D69:
        ldx     $81                             ; 8D69 A6 81                    ..
        lda     $FF5E,x                         ; 8D6B BD 5E FF                 .^.
        and     $7578                           ; 8D6E 2D 78 75                 -xu
        beq     BattlePresentation_Branch_8D76  ; 8D71 F0 03                    ..
        lda     $7579,x                         ; 8D73 BD 79 75                 .yu
BattlePresentation_Branch_8D76:
        rts                                     ; 8D76 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8D77:
        lda     #$3A                            ; 8D77 A9 3A                    .:
        sta     $88                           ; 8D79 85 88                    ..
        lda     #$00                            ; 8D7B A9 00                    ..
        sta     $89                             ; 8D7D 85 89                    ..
        lda     $81                             ; 8D7F A5 81                    ..
        ldx     #$88                            ; 8D81 A2 88                    ..
        jsr     MultiplyPointerWord             ; 8D83 20 27 C8                  '.
        lda     Bank13_BattleRecordBasePointer  ; 8D86 AD 8F 8D                 ...
        ldy     $8D90                           ; 8D89 AC 90 8D                 ...
        jmp     AddWordToPointer                ; 8D8C 4C 1D C8                 L..
; ----------------------------------------------------------------------------
Bank13_BattleRecordBasePointer:
        db   $00                             ; 8D8F 00                       .
        db   $76                             ; 8D90 76                       v
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8D91:
        lda     #$00                            ; 8D91 A9 00                    ..
        sta     $77D0                           ; 8D93 8D D0 77                 ..w
        ldy     #$00                            ; 8D96 A0 00                    ..
BattlePresentation_Branch_8D98:
        lda     $7591,y                         ; 8D98 B9 91 75                 ..u
        pha                                     ; 8D9B 48                       H
        tya                                     ; 8D9C 98                       .
        asl     a                               ; 8D9D 0A                       .
        tax                                     ; 8D9E AA                       .
        lda     $75A3,x                         ; 8D9F BD A3 75                 ..u
        sta     $94                             ; 8DA2 85 94                    ..
        lda     $75A4,x                         ; 8DA4 BD A4 75                 ..u
        sta     $95                             ; 8DA7 85 95                    ..
        pla                                     ; 8DA9 68                       h
        jsr     BattlePresentation_Entry_8198   ; 8DAA 20 98 81                  ..
        lda     $94                             ; 8DAD A5 94                    ..
        ora     $95                             ; 8DAF 05 95                    ..
        beq     BattlePresentation_Branch_8DC4  ; 8DB1 F0 11                    ..
        lda     $92                             ; 8DB3 A5 92                    ..
        asl     a                               ; 8DB5 0A                       .
        asl     a                               ; 8DB6 0A                       .
        adc     $77D0                           ; 8DB7 6D D0 77                 m.w
        tax                                     ; 8DBA AA                       .
        lda     $8DD3,x                         ; 8DBB BD D3 8D                 ...
        jsr     BattlePresentation_Entry_8198   ; 8DBE 20 98 81                  ..
        inc     $77D0                           ; 8DC1 EE D0 77                 ..w
BattlePresentation_Branch_8DC4:
        tya                                     ; 8DC4 98                       .
        asl     a                               ; 8DC5 0A                       .
        tax                                     ; 8DC6 AA                       .
        lda     $94                             ; 8DC7 A5 94                    ..
        sta     $75A3,x                         ; 8DC9 9D A3 75                 ..u
        lda     $95                             ; 8DCC A5 95                    ..
        sta     $75A4,x                         ; 8DCE 9D A4 75                 ..u
        iny                                     ; 8DD1 C8                       .
L8DD3 = $+ 1
        cpy     #$04                            ; 8DD2 C0 04                    ..
        bcc     BattlePresentation_Branch_8D98  ; 8DD4 90 C2                    ..
        rts                                     ; 8DD6 60                       `
; ----------------------------------------------------------------------------
        db   $10,$00,$00,$00,$09,$07,$00,$00 ; 8DD7 10 00 00 00 09 07 00 00  ........
        db   $07,$05,$04,$00,$07,$05,$03,$01 ; 8DDF 07 05 04 00 07 05 03 01  ........
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8DE7:
        lda     #$03                            ; 8DE7 A9 03                    ..
        sta     $82                             ; 8DE9 85 82                    ..
BattlePresentation_Branch_8DEB:
        lda     $82                             ; 8DEB A5 82                    ..
        asl     a                               ; 8DED 0A                       .
        tay                                     ; 8DEE A8                       .
        lda     $75A3,y                         ; 8DEF B9 A3 75                 ..u
        sta     $94                             ; 8DF2 85 94                    ..
        lda     $75A4,y                         ; 8DF4 B9 A4 75                 ..u
        sta     $95                             ; 8DF7 85 95                    ..
        ldx     $81                             ; 8DF9 A6 81                    ..
        lda     $7589,x                         ; 8DFB BD 89 75                 ..u
        jsr     BattlePresentation_Entry_8198   ; 8DFE 20 98 81                  ..
        ldy     #$00                            ; 8E01 A0 00                    ..
        jsr     BattlePresentation_Entry_831D   ; 8E03 20 1D 83                  ..
        dec     $82                             ; 8E06 C6 82                    ..
        bpl     BattlePresentation_Branch_8DEB  ; 8E08 10 E1                    ..
        rts                                     ; 8E0A 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8E0B:
        lda     $75AD                           ; 8E0B AD AD 75                 ..u
        sta     $00                           ; 8E0E 85 00                    ..
        lda     $75AE                           ; 8E10 AD AE 75                 ..u
        sta     $01                             ; 8E13 85 01                    ..
        ldx     $81                             ; 8E15 A6 81                    ..
        lda     $7581,x                         ; 8E17 BD 81 75                 ..u
        beq     BattlePresentation_Branch_8E41  ; 8E1A F0 25                    .%
        ldx     #$00                            ; 8E1C A2 00                    ..
        jsr     BattlePresentation_Entry_819A   ; 8E1E 20 9A 81                  ..
        jsr     BattlePresentation_Entry_8216   ; 8E21 20 16 82                  ..
        lda     #$03                            ; 8E24 A9 03                    ..
        sta     $82                             ; 8E26 85 82                    ..
BattlePresentation_Branch_8E28:
        lda     $00                           ; 8E28 A5 00                    ..
        sta     $94                             ; 8E2A 85 94                    ..
        lda     $01                             ; 8E2C A5 01                    ..
        sta     $95                             ; 8E2E 85 95                    ..
        ldx     $82                             ; 8E30 A6 82                    ..
        lda     $7595,x                         ; 8E32 BD 95 75                 ..u
        jsr     BattlePresentation_Entry_8198   ; 8E35 20 98 81                  ..
        ldy     #$08                            ; 8E38 A0 08                    ..
        jsr     BattlePresentation_Entry_831D   ; 8E3A 20 1D 83                  ..
        dec     $82                             ; 8E3D C6 82                    ..
        bpl     BattlePresentation_Branch_8E28  ; 8E3F 10 E7                    ..
BattlePresentation_Branch_8E41:
        rts                                     ; 8E41 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8E42:
        lda     $75AF                           ; 8E42 AD AF 75                 ..u
        sta     $94                             ; 8E45 85 94                    ..
        lda     $75B0                           ; 8E47 AD B0 75                 ..u
        sta     $95                             ; 8E4A 85 95                    ..
        ldx     $81                             ; 8E4C A6 81                    ..
        jsr     BattlePresentation_Entry_81E0   ; 8E4E 20 E0 81                  ..
        lda     #$03                            ; 8E51 A9 03                    ..
        sta     $82                             ; 8E53 85 82                    ..
BattlePresentation_Branch_8E55:
        ldy     #$10                            ; 8E55 A0 10                    ..
        jsr     BattlePresentation_Entry_831D   ; 8E57 20 1D 83                  ..
        dec     $82                             ; 8E5A C6 82                    ..
        bpl     BattlePresentation_Branch_8E55  ; 8E5C 10 F7                    ..
        rts                                     ; 8E5E 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8E5F:
        lda     $75B1                           ; 8E5F AD B1 75                 ..u
        ldx     $75B2                           ; 8E62 AE B2 75                 ..u
        ldy     #$18                            ; 8E65 A0 18                    ..
        jsr     BattlePresentation_Entry_8E88   ; 8E67 20 88 8E                  ..
        lda     $75B5                           ; 8E6A AD B5 75                 ..u
        ldx     $75B6                           ; 8E6D AE B6 75                 ..u
        ldy     #$1C                            ; 8E70 A0 1C                    ..
        jsr     BattlePresentation_Entry_8E88   ; 8E72 20 88 8E                  ..
        lda     $75B9                           ; 8E75 AD B9 75                 ..u
        ldx     $75BA                           ; 8E78 AE BA 75                 ..u
        ldy     #$20                            ; 8E7B A0 20                    .
        jsr     BattlePresentation_Entry_8E88   ; 8E7D 20 88 8E                  ..
        lda     $75BD                           ; 8E80 AD BD 75                 ..u
        ldx     $75BE                           ; 8E83 AE BE 75                 ..u
        ldy     #$36                            ; 8E86 A0 36                    .6
BattlePresentation_Entry_8E88:
        sta     $94                             ; 8E88 85 94                    ..
        stx     $95                             ; 8E8A 86 95                    ..
        ldx     $81                             ; 8E8C A6 81                    ..
        lda     $7581,x                         ; 8E8E BD 81 75                 ..u
        jsr     BattlePresentation_Entry_8198   ; 8E91 20 98 81                  ..
        lda     $94                             ; 8E94 A5 94                    ..
        sta     ($88),y                       ; 8E96 91 88                    ..
        iny                                     ; 8E98 C8                       .
        lda     $95                             ; 8E99 A5 95                    ..
        sta     ($88),y                       ; 8E9B 91 88                    ..
        rts                                     ; 8E9D 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8E9E:
        lda     $75B3                           ; 8E9E AD B3 75                 ..u
        ldx     $75B4                           ; 8EA1 AE B4 75                 ..u
        ldy     #$1A                            ; 8EA4 A0 1A                    ..
        jsr     BattlePresentation_Entry_8EC7   ; 8EA6 20 C7 8E                  ..
        lda     $75B7                           ; 8EA9 AD B7 75                 ..u
        ldx     $75B8                           ; 8EAC AE B8 75                 ..u
        ldy     #$1E                            ; 8EAF A0 1E                    ..
        jsr     BattlePresentation_Entry_8EC7   ; 8EB1 20 C7 8E                  ..
        lda     $75BB                           ; 8EB4 AD BB 75                 ..u
        ldx     $75BC                           ; 8EB7 AE BC 75                 ..u
        ldy     #$22                            ; 8EBA A0 22                    ."
        jsr     BattlePresentation_Entry_8EC7   ; 8EBC 20 C7 8E                  ..
        lda     $75BF                           ; 8EBF AD BF 75                 ..u
        ldx     $75C0                           ; 8EC2 AE C0 75                 ..u
        ldy     #$38                            ; 8EC5 A0 38                    .8
BattlePresentation_Entry_8EC7:
        sta     ($88),y                       ; 8EC7 91 88                    ..
        iny                                     ; 8EC9 C8                       .
        txa                                     ; 8ECA 8A                       .
        sta     ($88),y                       ; 8ECB 91 88                    ..
        rts                                     ; 8ECD 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8ECE:
        ldx     #$07                            ; 8ECE A2 07                    ..
        ldy     #$2C                            ; 8ED0 A0 2C                    .,
BattlePresentation_Branch_8ED2:
        lda     $75C1,x                         ; 8ED2 BD C1 75                 ..u
        sta     ($88),y                       ; 8ED5 91 88                    ..
        dey                                     ; 8ED7 88                       .
        dex                                     ; 8ED8 CA                       .
        bpl     BattlePresentation_Branch_8ED2  ; 8ED9 10 F7                    ..
        ldx     #$07                            ; 8EDB A2 07                    ..
        ldy     #$35                            ; 8EDD A0 35                    .5
BattlePresentation_Branch_8EDF:
        lda     $75C9,x                         ; 8EDF BD C9 75                 ..u
        sta     ($88),y                       ; 8EE2 91 88                    ..
        dey                                     ; 8EE4 88                       .
        dex                                     ; 8EE5 CA                       .
        bpl     BattlePresentation_Branch_8EDF  ; 8EE6 10 F7                    ..
        ldy     #$24                            ; 8EE8 A0 24                    .$
        lda     $75AB                           ; 8EEA AD AB 75                 ..u
        sta     ($88),y                       ; 8EED 91 88                    ..
        ldy     #$2D                            ; 8EEF A0 2D                    .-
        lda     $75AC                           ; 8EF1 AD AC 75                 ..u
        sta     ($88),y                       ; 8EF4 91 88                    ..
        ldx     $81                             ; 8EF6 A6 81                    ..
        lda     $7581,x                         ; 8EF8 BD 81 75                 ..u
        sta     $00                           ; 8EFB 85 00                    ..
        ldy     #$25                            ; 8EFD A0 25                    .%
BattlePresentation_Branch_8EFF:
        lda     ($88),y                       ; 8EFF B1 88                    ..
        sta     $94                             ; 8F01 85 94                    ..
        lda     #$00                            ; 8F03 A9 00                    ..
        sta     $95                             ; 8F05 85 95                    ..
        lda     $00                           ; 8F07 A5 00                    ..
        jsr     BattlePresentation_Entry_8198   ; 8F09 20 98 81                  ..
        lda     $94                             ; 8F0C A5 94                    ..
        sta     ($88),y                       ; 8F0E 91 88                    ..
        iny                                     ; 8F10 C8                       .
        cpy     #$2D                            ; 8F11 C0 2D                    .-
        bcc     BattlePresentation_Branch_8EFF  ; 8F13 90 EA                    ..
        rts                                     ; 8F15 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8F16:
        ldy     #$38                            ; 8F16 A0 38                    .8
        lda     ($88),y                       ; 8F18 B1 88                    ..
        adc     #$10                            ; 8F1A 69 10                    i.
        sta     ($88),y                       ; 8F1C 91 88                    ..
        iny                                     ; 8F1E C8                       .
        lda     ($88),y                       ; 8F1F B1 88                    ..
        adc     #$00                            ; 8F21 69 00                    i.
        sta     ($88),y                       ; 8F23 91 88                    ..
        rts                                     ; 8F25 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_8F26:
        lda     #$07                            ; 8F26 A9 07                    ..
        sta     $81                             ; 8F28 85 81                    ..
BattlePresentation_Branch_8F2A:
        jsr     BattlePresentation_Entry_8D77   ; 8F2A 20 77 8D                  w.
        ldx     #$06                            ; 8F2D A2 06                    ..
BattlePresentation_Branch_8F2F:
        lda     Bank13_BattleFieldOffsets,x     ; 8F2F BD EC 90                 ...
        jsr     BattlePresentation_Entry_90D0   ; 8F32 20 D0 90                  ..
        dex                                     ; 8F35 CA                       .
        bpl     BattlePresentation_Branch_8F2F  ; 8F36 10 F7                    ..
        ldx     #$0A                            ; 8F38 A2 0A                    ..
BattlePresentation_Branch_8F3A:
        lda     $90F4,x                         ; 8F3A BD F4 90                 ...
        jsr     BattlePresentation_Entry_90D4   ; 8F3D 20 D4 90                  ..
        dex                                     ; 8F40 CA                       .
        bpl     BattlePresentation_Branch_8F3A  ; 8F41 10 F7                    ..
        jsr     BattlePresentation_Entry_90B6   ; 8F43 20 B6 90                  ..
        dec     $81                             ; 8F46 C6 81                    ..
        bpl     BattlePresentation_Branch_8F2A  ; 8F48 10 E0                    ..
        jsr     BattlePresentation_Entry_A4E8   ; 8F4A 20 E8 A4                  ..
        jsr     BattlePresentation_Entry_9021   ; 8F4D 20 21 90                  !.
        lda     #$07                            ; 8F50 A9 07                    ..
        sta     $81                             ; 8F52 85 81                    ..
BattlePresentation_Branch_8F54:
        jsr     BattlePresentation_Entry_8D77   ; 8F54 20 77 8D                  w.
        jsr     BattlePresentation_Entry_9067   ; 8F57 20 67 90                  g.
        ldy     #$24                            ; 8F5A A0 24                    .$
        jsr     BattlePresentation_Entry_8F73   ; 8F5C 20 73 8F                  s.
        ldy     #$36                            ; 8F5F A0 36                    .6
        jsr     BattlePresentation_Entry_9012   ; 8F61 20 12 90                  ..
        ldy     #$2D                            ; 8F64 A0 2D                    .-
        jsr     BattlePresentation_Entry_8F73   ; 8F66 20 73 8F                  s.
        ldy     #$38                            ; 8F69 A0 38                    .8
        jsr     BattlePresentation_Entry_9012   ; 8F6B 20 12 90                  ..
        dec     $81                             ; 8F6E C6 81                    ..
        bpl     BattlePresentation_Branch_8F54  ; 8F70 10 E2                    ..
        rts                                     ; 8F72 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8F73:
        lda     #$00                            ; 8F73 A9 00                    ..
        sta     $94                             ; 8F75 85 94                    ..
        sta     $95                             ; 8F77 85 95                    ..
        lda     ($88),y                       ; 8F79 B1 88                    ..
        sta     $0F                             ; 8F7B 85 0F                    ..
        ldx     #$00                            ; 8F7D A2 00                    ..
BattlePresentation_Branch_8F7F:
        txa                                     ; 8F7F 8A                       .
        pha                                     ; 8F80 48                       H
        sta     $759A                           ; 8F81 8D 9A 75                 ..u
        lsr     $0F                             ; 8F84 46 0F                    F.
        bcc     BattlePresentation_Branch_8F8B  ; 8F86 90 03                    ..
        jsr     BattlePresentation_Entry_8F93   ; 8F88 20 93 8F                  ..
BattlePresentation_Branch_8F8B:
        pla                                     ; 8F8B 68                       h
        tax                                     ; 8F8C AA                       .
        inx                                     ; 8F8D E8                       .
        cpx     #$08                            ; 8F8E E0 08                    ..
        bcc     BattlePresentation_Branch_8F7F  ; 8F90 90 ED                    ..
        rts                                     ; 8F92 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8F93:
        asl     a                               ; 8F93 0A                       .
        tax                                     ; 8F94 AA                       .
        lda     $9100,x                         ; 8F95 BD 00 91                 ...
        sta     $00                           ; 8F98 85 00                    ..
        lda     $9101,x                         ; 8F9A BD 01 91                 ...
        sta     $01                             ; 8F9D 85 01                    ..
        jmp     ($0000)                         ; 8F9F 6C 00 00                 l..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8FA2:
        lda     $759F                           ; 8FA2 AD 9F 75                 ..u
        ldx     $75A0                           ; 8FA5 AE A0 75                 ..u
BattlePresentation_Branch_8FA8:
        jsr     BattlePresentation_Entry_8FEF   ; 8FA8 20 EF 8F                  ..
        lsr     $01                             ; 8FAB 46 01                    F.
        ror     $00                           ; 8FAD 66 00                    f.
        jmp     BattlePresentation_Branch_8FF4  ; 8FAF 4C F4 8F                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8FB2:
        lda     $75A1                           ; 8FB2 AD A1 75                 ..u
        ldx     $75A2                           ; 8FB5 AE A2 75                 ..u
        jmp     BattlePresentation_Branch_8FA8  ; 8FB8 4C A8 8F                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8FBB:
        lda     $75A1                           ; 8FBB AD A1 75                 ..u
        ldx     $75A2                           ; 8FBE AE A2 75                 ..u
BattlePresentation_Branch_8FC1:
        jsr     BattlePresentation_Entry_8FEF   ; 8FC1 20 EF 8F                  ..
        jmp     BattlePresentation_Branch_8FF4  ; 8FC4 4C F4 8F                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8FC7:
        lda     $759B                           ; 8FC7 AD 9B 75                 ..u
        ldx     $759C                           ; 8FCA AE 9C 75                 ..u
        jsr     BattlePresentation_Entry_8FEF   ; 8FCD 20 EF 8F                  ..
        jmp     BattlePresentation_Branch_8FA8  ; 8FD0 4C A8 8F                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8FD3:
        lda     $759B                           ; 8FD3 AD 9B 75                 ..u
        ldx     $759C                           ; 8FD6 AE 9C 75                 ..u
        jmp     BattlePresentation_Branch_8FC1  ; 8FD9 4C C1 8F                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8FDC:
        lda     $759D                           ; 8FDC AD 9D 75                 ..u
        ldx     $759E                           ; 8FDF AE 9E 75                 ..u
        jsr     BattlePresentation_Entry_8FEF   ; 8FE2 20 EF 8F                  ..
        lda     #$0C                            ; 8FE5 A9 0C                    ..
        ldx     #$00                            ; 8FE7 A2 00                    ..
        jsr     BattlePresentation_Entry_819A   ; 8FE9 20 9A 81                  ..
        jmp     BattlePresentation_Branch_8FF4  ; 8FEC 4C F4 8F                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_8FEF:
        sta     $00                           ; 8FEF 85 00                    ..
        stx     $01                             ; 8FF1 86 01                    ..
        rts                                     ; 8FF3 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_8FF4:
        tya                                     ; 8FF4 98                       .
        pha                                     ; 8FF5 48                       H
        sec                                     ; 8FF6 38                       8
        adc     $759A                           ; 8FF7 6D 9A 75                 m.u
        tay                                     ; 8FFA A8                       .
        lda     ($88),y                       ; 8FFB B1 88                    ..
        ldx     #$00                            ; 8FFD A2 00                    ..
        jsr     BattlePresentation_Entry_8330   ; 8FFF 20 30 83                  0.
        clc                                     ; 9002 18                       .
        lda     $01                             ; 9003 A5 01                    ..
        adc     $94                             ; 9005 65 94                    e.
        sta     $94                             ; 9007 85 94                    ..
        lda     $19                             ; 9009 A5 19                    ..
        adc     $95                             ; 900B 65 95                    e.
        sta     $95                             ; 900D 85 95                    ..
        pla                                     ; 900F 68                       h
        tay                                     ; 9010 A8                       .
        rts                                     ; 9011 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9012:
        clc                                     ; 9012 18                       .
        lda     ($88),y                       ; 9013 B1 88                    ..
        adc     $94                             ; 9015 65 94                    e.
        sta     ($88),y                       ; 9017 91 88                    ..
        iny                                     ; 9019 C8                       .
        lda     ($88),y                       ; 901A B1 88                    ..
        adc     $95                             ; 901C 65 95                    e.
        sta     ($88),y                       ; 901E 91 88                    ..
        rts                                     ; 9020 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9021:
        lda     #$00                            ; 9021 A9 00                    ..
        sta     $00                           ; 9023 85 00                    ..
        sta     $01                             ; 9025 85 01                    ..
        sta     $02                           ; 9027 85 02                    ..
        lda     #$07                            ; 9029 A9 07                    ..
        sta     $81                             ; 902B 85 81                    ..
        lda     $7577                           ; 902D AD 77 75                 .wu
        sta     $03                             ; 9030 85 03                    ..
BattlePresentation_Branch_9032:
        lsr     $03                             ; 9032 46 03                    F.
        bcc     BattlePresentation_Branch_9038  ; 9034 90 02                    ..
        inc     $00                           ; 9036 E6 00                    ..
BattlePresentation_Branch_9038:
        jsr     BattlePresentation_Entry_8D77   ; 9038 20 77 8D                  w.
        ldy     #$36                            ; 903B A0 36                    .6
        jsr     BattlePresentation_Entry_90A7   ; 903D 20 A7 90                  ..
        ldy     #$38                            ; 9040 A0 38                    .8
        jsr     BattlePresentation_Entry_90A7   ; 9042 20 A7 90                  ..
        dec     $81                             ; 9045 C6 81                    ..
        bpl     BattlePresentation_Branch_9032  ; 9047 10 E9                    ..
        lda     $01                             ; 9049 A5 01                    ..
        sta     $759B                           ; 904B 8D 9B 75                 ..u
        lda     $02                           ; 904E A5 02                    ..
        sta     $759C                           ; 9050 8D 9C 75                 ..u
        ldx     #$01                            ; 9053 A2 01                    ..
        lda     $00                           ; 9055 A5 00                    ..
        sta     $82                             ; 9057 85 82                    ..
        jsr     UpperFixedEngine_Entry_C851     ; 9059 20 51 C8                  Q.
        lda     $01                             ; 905C A5 01                    ..
        sta     $759F                           ; 905E 8D 9F 75                 ..u
        lda     $02                           ; 9061 A5 02                    ..
        sta     $75A0                           ; 9063 8D A0 75                 ..u
        rts                                     ; 9066 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9067:
        lda     $759B                           ; 9067 AD 9B 75                 ..u
        ldx     $759C                           ; 906A AE 9C 75                 ..u
        jsr     BattlePresentation_Entry_8FEF   ; 906D 20 EF 8F                  ..
        ldy     #$37                            ; 9070 A0 37                    .7
        jsr     BattlePresentation_Entry_909A   ; 9072 20 9A 90                  ..
        ldy     #$39                            ; 9075 A0 39                    .9
        jsr     BattlePresentation_Entry_909A   ; 9077 20 9A 90                  ..
        lda     $00                           ; 907A A5 00                    ..
        sta     $759D                           ; 907C 8D 9D 75                 ..u
        lda     $01                             ; 907F A5 01                    ..
        sta     $759E                           ; 9081 8D 9E 75                 ..u
        ldx     $82                             ; 9084 A6 82                    ..
        dex                                     ; 9086 CA                       .
        txa                                     ; 9087 8A                       .
        beq     BattlePresentation_Branch_908F  ; 9088 F0 05                    ..
        ldx     #$00                            ; 908A A2 00                    ..
        jsr     UpperFixedEngine_Entry_C851     ; 908C 20 51 C8                  Q.
BattlePresentation_Branch_908F:
        lda     $00                           ; 908F A5 00                    ..
        sta     $75A1                           ; 9091 8D A1 75                 ..u
        lda     $01                             ; 9094 A5 01                    ..
        sta     $75A2                           ; 9096 8D A2 75                 ..u
        rts                                     ; 9099 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_909A:
        lda     ($88),y                       ; 909A B1 88                    ..
        pha                                     ; 909C 48                       H
        dey                                     ; 909D 88                       .
        lda     ($88),y                       ; 909E B1 88                    ..
        tay                                     ; 90A0 A8                       .
        pla                                     ; 90A1 68                       h
        ldx     #$00                            ; 90A2 A2 00                    ..
        jmp     UpperFixedEngine_Entry_C807     ; 90A4 4C 07 C8                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_90A7:
        clc                                     ; 90A7 18                       .
        lda     ($88),y                       ; 90A8 B1 88                    ..
        adc     $01                             ; 90AA 65 01                    e.
        sta     $01                             ; 90AC 85 01                    ..
        iny                                     ; 90AE C8                       .
        lda     ($88),y                       ; 90AF B1 88                    ..
        adc     $02                           ; 90B1 65 02                    e.
        sta     $02                           ; 90B3 85 02                    ..
        rts                                     ; 90B5 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_90B6:
        ldy     #$36                            ; 90B6 A0 36                    .6
        jsr     BattlePresentation_Entry_90BD   ; 90B8 20 BD 90                  ..
        ldy     #$38                            ; 90BB A0 38                    .8
BattlePresentation_Entry_90BD:
        clc                                     ; 90BD 18                       .
        lda     ($88),y                       ; 90BE B1 88                    ..
        adc     $77D0                           ; 90C0 6D D0 77                 m.w
        sta     $77D0                           ; 90C3 8D D0 77                 ..w
        iny                                     ; 90C6 C8                       .
        lda     ($88),y                       ; 90C7 B1 88                    ..
        adc     $77D1                           ; 90C9 6D D1 77                 m.w
        sta     $77D1                           ; 90CC 8D D1 77                 ..w
        rts                                     ; 90CF 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_90D0:
        ldy     #$36                            ; 90D0 A0 36                    .6
        bne     BattlePresentation_Branch_90D6  ; 90D2 D0 02                    ..
BattlePresentation_Entry_90D4:
        ldy     #$38                            ; 90D4 A0 38                    .8
BattlePresentation_Branch_90D6:
        sty     $00                           ; 90D6 84 00                    ..
        tay                                     ; 90D8 A8                       .
        pha                                     ; 90D9 48                       H
        clc                                     ; 90DA 18                       .
        jsr     BattlePresentation_Entry_90E3   ; 90DB 20 E3 90                  ..
        pla                                     ; 90DE 68                       h
        tay                                     ; 90DF A8                       .
        iny                                     ; 90E0 C8                       .
        inc     $00                           ; 90E1 E6 00                    ..
BattlePresentation_Entry_90E3:
        lda     ($88),y                       ; 90E3 B1 88                    ..
        ldy     $00                           ; 90E5 A4 00                    ..
        adc     ($88),y                       ; 90E7 71 88                    q.
        sta     ($88),y                       ; 90E9 91 88                    ..
        rts                                     ; 90EB 60                       `
; ----------------------------------------------------------------------------
Bank13_BattleFieldOffsets:
        db   $08,$0A,$0C,$0E,$18,$1C,$20,$36 ; 90EC 08 0A 0C 0E 18 1C 20 36  ...... 6
        db   $00,$02,$04,$06,$10,$12,$14,$16 ; 90F4 00 02 04 06 10 12 14 16  ........
        db   $1A,$1E,$22,$38                 ; 90FC 1A 1E 22 38              .."8
        db   $A2                             ; 9100 A2                       .
        db   $8F,$A2,$8F,$A2,$8F,$B2,$8F,$BB ; 9101 8F A2 8F A2 8F B2 8F BB  ........
        db   $8F,$C7,$8F,$D3,$8F,$DC,$8F     ; 9109 8F C7 8F D3 8F DC 8F     .......
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9110:
        ldx     $96                             ; 9110 A6 96                    ..
        lda     $75DB                           ; 9112 AD DB 75                 ..u
        cmp     #$FF                            ; 9115 C9 FF                    ..
        beq     BattlePresentation_Branch_912F  ; 9117 F0 16                    ..
        sta     $7324,x                         ; 9119 9D 24 73                 .$s
        lda     $75DA                           ; 911C AD DA 75                 ..u
        sta     $7300,x                         ; 911F 9D 00 73                 ..s
        and     #$70                            ; 9122 29 70                    )p
        cmp     #$20                            ; 9124 C9 20                    .
        bne     BattlePresentation_Branch_912E  ; 9126 D0 06                    ..
        lda     $75F2                           ; 9128 AD F2 75                 ..u
        sta     $7324,x                         ; 912B 9D 24 73                 .$s
BattlePresentation_Branch_912E:
        rts                                     ; 912E 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_912F:
        lda     #$3C                            ; 912F A9 3C                    .<
        sta     $7324,x                         ; 9131 9D 24 73                 .$s
        rts                                     ; 9134 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9135:
        lda     $75DA                           ; 9135 AD DA 75                 ..u
        and     #$70                            ; 9138 29 70                    )p
        bne     BattlePresentation_Branch_9155  ; 913A D0 19                    ..
        lda     $75DB                           ; 913C AD DB 75                 ..u
        cmp     #$13                            ; 913F C9 13                    ..
        bcc     BattlePresentation_Entry_9178   ; 9141 90 35                    .5
        cmp     #$1C                            ; 9143 C9 1C                    ..
        bcc     BattlePresentation_Entry_919A   ; 9145 90 53                    .S
        cmp     #$29                            ; 9147 C9 29                    .)
        bcc     BattlePresentation_Branch_9174  ; 9149 90 29                    .)
        cmp     #$33                            ; 914B C9 33                    .3
        bcc     BattlePresentation_Entry_9176   ; 914D 90 27                    .'
        cmp     #$43                            ; 914F C9 43                    .C
        beq     BattlePresentation_Entry_9178   ; 9151 F0 25                    .%
        bne     BattlePresentation_Branch_9174  ; 9153 D0 1F                    ..
BattlePresentation_Branch_9155:
        ldx     #$11                            ; 9155 A2 11                    ..
BattlePresentation_Branch_9157:
        lda     Bank13_SpecialBattleActionIds,x ; 9157 BD A9 91                 ...
        cmp     $75DB                           ; 915A CD DB 75                 ..u
        beq     BattlePresentation_Branch_9164  ; 915D F0 05                    ..
        dex                                     ; 915F CA                       .
        bpl     BattlePresentation_Branch_9157  ; 9160 10 F5                    ..
        sec                                     ; 9162 38                       8
        rts                                     ; 9163 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9164:
        txa                                     ; 9164 8A                       .
        asl     a                               ; 9165 0A                       .
        tax                                     ; 9166 AA                       .
        lda     Bank13_SpecialBattleActionHandlerPointers,x; 9167 BD CD 91      ...
        sta     $00                           ; 916A 85 00                    ..
        lda     $91CE,x                         ; 916C BD CE 91                 ...
        sta     $01                             ; 916F 85 01                    ..
        jmp     ($0000)                         ; 9171 6C 00 00                 l..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9174:
        sec                                     ; 9174 38                       8
        rts                                     ; 9175 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9176:
        clc                                     ; 9176 18                       .
        rts                                     ; 9177 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9178:
        lda     $BB99                           ; 9178 AD 99 BB                 ...
        sta     $00                           ; 917B 85 00                    ..
        lda     #$00                            ; 917D A9 00                    ..
        sta     $01                             ; 917F 85 01                    ..
        lda     $75D9                           ; 9181 AD D9 75                 ..u
        ldx     #$00                            ; 9184 A2 00                    ..
        jsr     MultiplyPointerWord             ; 9186 20 27 C8                  '.
        jsr     BattlePresentation_Entry_8187   ; 9189 20 87 81                  ..
        lda     $01                             ; 918C A5 01                    ..
        beq     BattlePresentation_Branch_9194  ; 918E F0 04                    ..
        lda     #$FF                            ; 9190 A9 FF                    ..
        sta     $00                           ; 9192 85 00                    ..
BattlePresentation_Branch_9194:
        lda     $75EC                           ; 9194 AD EC 75                 ..u
        cmp     $00                           ; 9197 C5 00                    ..
        rts                                     ; 9199 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_919A:
        lda     #$06                            ; 919A A9 06                    ..
        cmp     $75EC                           ; 919C CD EC 75                 ..u
        rts                                     ; 919F 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_91A0:
        lda     #$00                            ; 91A0 A9 00                    ..
        sta     $75D4                           ; 91A2 8D D4 75                 ..u
        sta     $75D5                           ; 91A5 8D D5 75                 ..u
        rts                                     ; 91A8 60                       `
; ----------------------------------------------------------------------------
Bank13_SpecialBattleActionIds:
        db   $11,$17,$18,$1A,$1B,$1D,$1E,$20 ; 91A9 11 17 18 1A 1B 1D 1E 20  .......
        db   $23,$40,$42,$53,$57,$58,$5B,$5C ; 91B1 23 40 42 53 57 58 5B 5C  #@BSWX[\
        db   $5D,$60                         ; 91B9 5D 60                    ]`
        db   $80,$80,$84,$80,$80,$83,$80,$81 ; 91BB 80 80 84 80 80 83 80 81  ........
        db   $80,$81,$80,$81,$82,$82,$81,$83 ; 91C3 80 81 80 81 82 82 81 83  ........
        db   $83,$81                         ; 91CB 83 81                    ..
Bank13_SpecialBattleActionHandlerPointers:
        db   $78                             ; 91CD 78                       x
        db   $91,$78,$91,$9A,$91,$78,$91,$78 ; 91CE 91 78 91 9A 91 78 91 78  .x...x.x
        db   $91,$9A,$91,$78,$91,$76,$91,$78 ; 91D6 91 9A 91 78 91 76 91 78  ...x.v.x
        db   $91,$76,$91,$9A,$91,$76,$91,$76 ; 91DE 91 76 91 9A 91 76 91 76  .v...v.v
        db   $91,$76,$91,$76,$91,$9A,$91,$76 ; 91E6 91 76 91 76 91 9A 91 76  .v.v...v
        db   $91                             ; 91EE 91                       .
; ----------------------------------------------------------------------------
BattlePresentation_Entry_91EF:
        lda     $75D3                           ; 91EF AD D3 75                 ..u
        cmp     #$10                            ; 91F2 C9 10                    ..
        bcc     BattlePresentation_Branch_91F9  ; 91F4 90 03                    ..
        jsr     BattlePresentation_Entry_B5BC   ; 91F6 20 BC B5                  ..
BattlePresentation_Branch_91F9:
        asl     a                               ; 91F9 0A                       .
        tax                                     ; 91FA AA                       .
        lda     $B74D,x                         ; 91FB BD 4D B7                 .M.
        sta     $8A                             ; 91FE 85 8A                    ..
        rts                                     ; 9200 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9201:
        ldx     $75D3                           ; 9201 AE D3 75                 ..u
        lda     Bank13_BattlePresentationStateLookup,x; 9204 BD 67 B9           .g.
        and     #$1F                            ; 9207 29 1F                    ).
        cmp     #$1F                            ; 9209 C9 1F                    ..
        bne     BattlePresentation_Branch_920F  ; 920B D0 02                    ..
        lda     #$00                            ; 920D A9 00                    ..
BattlePresentation_Branch_920F:
        sta     $8B                             ; 920F 85 8B                    ..
        rts                                     ; 9211 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9212:
        lda     #$00                            ; 9212 A9 00                    ..
        sta     $01                             ; 9214 85 01                    ..
        sta     $02                           ; 9216 85 02                    ..
        lda     #$07                            ; 9218 A9 07                    ..
        sta     $81                             ; 921A 85 81                    ..
BattlePresentation_Branch_921C:
        jsr     BattlePresentation_Entry_8D77   ; 921C 20 77 8D                  w.
        ldy     #$00                            ; 921F A0 00                    ..
        jsr     BattlePresentation_Entry_925F   ; 9221 20 5F 92                  _.
        ldy     #$08                            ; 9224 A0 08                    ..
        jsr     BattlePresentation_Entry_925F   ; 9226 20 5F 92                  _.
        ldy     #$10                            ; 9229 A0 10                    ..
        jsr     BattlePresentation_Entry_925F   ; 922B 20 5F 92                  _.
        dec     $81                             ; 922E C6 81                    ..
        bpl     BattlePresentation_Branch_921C  ; 9230 10 EA                    ..
        lda     #$00                            ; 9232 A9 00                    ..
        sta     $00                           ; 9234 85 00                    ..
        sta     $04                             ; 9236 85 04                    ..
        lda     #$B7                            ; 9238 A9 B7                    ..
        sta     $03                             ; 923A 85 03                    ..
        ldx     #$00                            ; 923C A2 00                    ..
        ldy     #$03                            ; 923E A0 03                    ..
        jsr     BattlePresentation_Entry_83F4   ; 9240 20 F4 83                  ..
        lda     $02                           ; 9243 A5 02                    ..
        beq     BattlePresentation_Branch_924D  ; 9245 F0 06                    ..
        lda     #$FF                            ; 9247 A9 FF                    ..
        sta     $00                           ; 9249 85 00                    ..
        sta     $01                             ; 924B 85 01                    ..
BattlePresentation_Branch_924D:
        lda     $00                           ; 924D A5 00                    ..
        sta     $75ED                           ; 924F 8D ED 75                 ..u
        lda     $01                             ; 9252 A5 01                    ..
        sta     $75EE                           ; 9254 8D EE 75                 ..u
        ora     $00                           ; 9257 05 00                    ..
        bne     BattlePresentation_Branch_925E  ; 9259 D0 03                    ..
        inc     $75ED                           ; 925B EE ED 75                 ..u
BattlePresentation_Branch_925E:
        rts                                     ; 925E 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_925F:
        lda     #$03                            ; 925F A9 03                    ..
        sta     $82                             ; 9261 85 82                    ..
BattlePresentation_Branch_9263:
        lda     ($88),y                       ; 9263 B1 88                    ..
        adc     $01                             ; 9265 65 01                    e.
        sta     $01                             ; 9267 85 01                    ..
        iny                                     ; 9269 C8                       .
        lda     ($88),y                       ; 926A B1 88                    ..
        adc     $02                           ; 926C 65 02                    e.
        sta     $02                           ; 926E 85 02                    ..
        iny                                     ; 9270 C8                       .
        dec     $82                             ; 9271 C6 82                    ..
        bpl     BattlePresentation_Branch_9263  ; 9273 10 EE                    ..
        rts                                     ; 9275 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9276:
        ldx     $75D3                           ; 9276 AE D3 75                 ..u
        lda     Bank13_BattlePresentationLookup,x; 9279 BD 0B B8                ...
        and     #$1F                            ; 927C 29 1F                    ).
        tax                                     ; 927E AA                       .
        lda     $94CC,x                         ; 927F BD CC 94                 ...
        jsr     BattlePresentation_Entry_92E2   ; 9282 20 E2 92                  ..
        sta     $00                           ; 9285 85 00                    ..
        lda     #$00                            ; 9287 A9 00                    ..
        ldx     $75D3                           ; 9289 AE D3 75                 ..u
        cpx     #$18                            ; 928C E0 18                    ..
        bne     BattlePresentation_Branch_9294  ; 928E D0 04                    ..
        lda     #$04                            ; 9290 A9 04                    ..
        bne     BattlePresentation_Branch_929A  ; 9292 D0 06                    ..
BattlePresentation_Branch_9294:
        cpx     #$1F                            ; 9294 E0 1F                    ..
        bne     BattlePresentation_Branch_929A  ; 9296 D0 02                    ..
        lda     #$04                            ; 9298 A9 04                    ..
BattlePresentation_Branch_929A:
        clc                                     ; 929A 18                       .
        adc     $00                           ; 929B 65 00                    e.
        sta     $00                           ; 929D 85 00                    ..
        ldx     $81                             ; 929F A6 81                    ..
        jsr     BattlePresentation_Entry_899C   ; 92A1 20 9C 89                  ..
        ldy     #$0D                            ; 92A4 A0 0D                    ..
        lda     ($86),y                       ; 92A6 B1 86                    ..
        and     #$03                            ; 92A8 29 03                    ).
        tax                                     ; 92AA AA                       .
        lda     $00                           ; 92AB A5 00                    ..
        pha                                     ; 92AD 48                       H
        lda     $7206,x                         ; 92AE BD 06 72                 ..r
        jsr     BattlePresentation_Entry_B0B4   ; 92B1 20 B4 B0                  ..
        tay                                     ; 92B4 A8                       .
        pla                                     ; 92B5 68                       h
        asl     a                               ; 92B6 0A                       .
        sta     $00                           ; 92B7 85 00                    ..
        tya                                     ; 92B9 98                       .
        asl     a                               ; 92BA 0A                       .
        asl     a                               ; 92BB 0A                       .
        asl     a                               ; 92BC 0A                       .
        asl     a                               ; 92BD 0A                       .
        adc     $00                           ; 92BE 65 00                    e.
        tay                                     ; 92C0 A8                       .
        lda     $94DC,y                         ; 92C1 B9 DC 94                 ...
        sta     $00                           ; 92C4 85 00                    ..
        lda     #$00                            ; 92C6 A9 00                    ..
        sta     $01                             ; 92C8 85 01                    ..
        jsr     UpperFixedEngine_Entry_C891     ; 92CA 20 91 C8                  ..
        ldx     #$00                            ; 92CD A2 00                    ..
        jsr     MultiplyPointerWord             ; 92CF 20 27 C8                  '.
        lda     $94DB,y                         ; 92D2 B9 DB 94                 ...
        clc                                     ; 92D5 18                       .
        adc     $01                             ; 92D6 65 01                    e.
        lsr     a                               ; 92D8 4A                       J
        cmp     #$10                            ; 92D9 C9 10                    ..
        bcc     BattlePresentation_Branch_92DF  ; 92DB 90 02                    ..
        lda     #$10                            ; 92DD A9 10                    ..
BattlePresentation_Branch_92DF:
        sta     $8C                             ; 92DF 85 8C                    ..
        rts                                     ; 92E1 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_92E2:
        pha                                     ; 92E2 48                       H
        and     #$03                            ; 92E3 29 03                    ).
        sta     $00                           ; 92E5 85 00                    ..
        pla                                     ; 92E7 68                       h
        and     #$FC                            ; 92E8 29 FC                    ).
        lsr     a                               ; 92EA 4A                       J
        lsr     a                               ; 92EB 4A                       J
        sta     $01                             ; 92EC 85 01                    ..
        lda     $81                             ; 92EE A5 81                    ..
        asl     a                               ; 92F0 0A                       .
        asl     a                               ; 92F1 0A                       .
        adc     $01                             ; 92F2 65 01                    e.
        tay                                     ; 92F4 A8                       .
        lda     $754B,y                         ; 92F5 B9 4B 75                 .Ku
        ldx     $00                           ; 92F8 A6 00                    ..
        beq     BattlePresentation_Branch_9301  ; 92FA F0 05                    ..
BattlePresentation_Branch_92FC:
        lsr     a                               ; 92FC 4A                       J
        lsr     a                               ; 92FD 4A                       J
        dex                                     ; 92FE CA                       .
        bne     BattlePresentation_Branch_92FC  ; 92FF D0 FB                    ..
BattlePresentation_Branch_9301:
        and     #$03                            ; 9301 29 03                    ).
        rts                                     ; 9303 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9304:
        sta     $02                           ; 9304 85 02                    ..
        lda     #$00                            ; 9306 A9 00                    ..
        sta     $03                             ; 9308 85 03                    ..
        lda     #$07                            ; 930A A9 07                    ..
BattlePresentation_Branch_930C:
        jsr     BattlePresentation_Entry_9314   ; 930C 20 14 93                  ..
        dec     $81                             ; 930F C6 81                    ..
        bpl     BattlePresentation_Branch_930C  ; 9311 10 F9                    ..
        rts                                     ; 9313 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9314:
        ldx     $02                           ; 9314 A6 02                    ..
        lda     Bank13_BattlePresentationLookup,x; 9316 BD 0B B8                ...
        and     #$1F                            ; 9319 29 1F                    ).
        tax                                     ; 931B AA                       .
        lda     $94CC,x                         ; 931C BD CC 94                 ...
        pha                                     ; 931F 48                       H
        and     #$03                            ; 9320 29 03                    ).
        sta     $00                           ; 9322 85 00                    ..
        pla                                     ; 9324 68                       h
        and     #$FC                            ; 9325 29 FC                    ).
        lsr     a                               ; 9327 4A                       J
        lsr     a                               ; 9328 4A                       J
        sta     $01                             ; 9329 85 01                    ..
        lda     $81                             ; 932B A5 81                    ..
        asl     a                               ; 932D 0A                       .
        asl     a                               ; 932E 0A                       .
        adc     $01                             ; 932F 65 01                    e.
        tay                                     ; 9331 A8                       .
        lda     $754B,y                         ; 9332 B9 4B 75                 .Ku
        ldx     $00                           ; 9335 A6 00                    ..
        beq     BattlePresentation_Branch_933E  ; 9337 F0 05                    ..
BattlePresentation_Branch_9339:
        lsr     a                               ; 9339 4A                       J
        lsr     a                               ; 933A 4A                       J
        dex                                     ; 933B CA                       .
        bne     BattlePresentation_Branch_9339  ; 933C D0 FB                    ..
BattlePresentation_Branch_933E:
        and     #$03                            ; 933E 29 03                    ).
        tax                                     ; 9340 AA                       .
        lda     $94DB,x                         ; 9341 BD DB 94                 ...
        clc                                     ; 9344 18                       .
        adc     $03                             ; 9345 65 03                    e.
        sta     $03                             ; 9347 85 03                    ..
        rts                                     ; 9349 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_934A:
        lda     $75D3                           ; 934A AD D3 75                 ..u
        jsr     BattlePresentation_Entry_B620   ; 934D 20 20 B6                   .
        asl     a                               ; 9350 0A                       .
        tax                                     ; 9351 AA                       .
        lda     $B7E3,x                         ; 9352 BD E3 B7                 ...
        sta     $8A                             ; 9355 85 8A                    ..
        lda     $B7E4,x                         ; 9357 BD E4 B7                 ...
        lsr     a                               ; 935A 4A                       J
        clc                                     ; 935B 18                       .
        adc     $8A                             ; 935C 65 8A                    e.
        bcc     BattlePresentation_Branch_9362  ; 935E 90 02                    ..
        lda     #$FF                            ; 9360 A9 FF                    ..
BattlePresentation_Branch_9362:
        sta     $8A                             ; 9362 85 8A                    ..
        rts                                     ; 9364 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9365:
        txa                                     ; 9365 8A                       .
        pha                                     ; 9366 48                       H
        jsr     BattlePresentation_Entry_938B   ; 9367 20 8B 93                  ..
        lda     $BAA5,x                         ; 936A BD A5 BA                 ...
        sta     $6E11                           ; 936D 8D 11 6E                 ..n
        pla                                     ; 9370 68                       h
        tax                                     ; 9371 AA                       .
        lda     $6E11                           ; 9372 AD 11 6E                 ..n
        rts                                     ; 9375 60                       `
; ----------------------------------------------------------------------------
        db   $AD,$68,$73,$60                 ; 9376 AD 68 73 60              .hs`
; ----------------------------------------------------------------------------
BattlePresentation_Entry_937A:
        txa                                     ; 937A 8A                       .
        pha                                     ; 937B 48                       H
        jsr     BattlePresentation_Entry_938B   ; 937C 20 8B 93                  ..
        lda     $BAD5,x                         ; 937F BD D5 BA                 ...
        sta     $6E11                           ; 9382 8D 11 6E                 ..n
        pla                                     ; 9385 68                       h
        tax                                     ; 9386 AA                       .
        lda     $6E11                           ; 9387 AD 11 6E                 ..n
        rts                                     ; 938A 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_938B:
        lda     $6E80                           ; 938B AD 80 6E                 ..n
        asl     a                               ; 938E 0A                       .
        asl     a                               ; 938F 0A                       .
        asl     a                               ; 9390 0A                       .
        sec                                     ; 9391 38                       8
        sbc     $6E80                           ; 9392 ED 80 6E                 ..n
        adc     $75E8                           ; 9395 6D E8 75                 m.u
        tax                                     ; 9398 AA                       .
        rts                                     ; 9399 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_939A:
        txa                                     ; 939A 8A                       .
        pha                                     ; 939B 48                       H
        jsr     BattlePresentation_Entry_938B   ; 939C 20 8B 93                  ..
        lda     $BA74,x                         ; 939F BD 74 BA                 .t.
        sta     $6E11                           ; 93A2 8D 11 6E                 ..n
        pla                                     ; 93A5 68                       h
        tax                                     ; 93A6 AA                       .
        lda     $6E11                           ; 93A7 AD 11 6E                 ..n
        rts                                     ; 93AA 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_93AB:
        lda     $81                             ; 93AB A5 81                    ..
        ora     #$80                            ; 93AD 09 80                    ..
        sta     $75D2                           ; 93AF 8D D2 75                 ..u
        bne     BattlePresentation_Entry_93C2   ; 93B2 D0 0E                    ..
BattlePresentation_Entry_93B4:
        lda     $8D                             ; 93B4 A5 8D                    ..
        ora     #$88                            ; 93B6 09 88                    ..
        sta     $75D2                           ; 93B8 8D D2 75                 ..u
        bne     BattlePresentation_Entry_93C2   ; 93BB D0 05                    ..
BattlePresentation_Entry_93BD:
        lda     #$80                            ; 93BD A9 80                    ..
        sta     $75D2                           ; 93BF 8D D2 75                 ..u
BattlePresentation_Entry_93C2:
        lda     $75F0                           ; 93C2 AD F0 75                 ..u
        bpl     BattlePresentation_Branch_93CF  ; 93C5 10 08                    ..
        lda     $75D2                           ; 93C7 AD D2 75                 ..u
        ora     #$20                            ; 93CA 09 20                    .
        sta     $75D2                           ; 93CC 8D D2 75                 ..u
BattlePresentation_Branch_93CF:
        rts                                     ; 93CF 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_93D0:
        jsr     BattlePresentation_Entry_93E1   ; 93D0 20 E1 93                  ..
        bcc     BattlePresentation_Branch_93DF  ; 93D3 90 0A                    ..
        lda     $735B                           ; 93D5 AD 5B 73                 .[s
        cmp     $7348,x                         ; 93D8 DD 48 73                 .Hs
        bcc     BattlePresentation_Branch_93DF  ; 93DB 90 02                    ..
        clc                                     ; 93DD 18                       .
        rts                                     ; 93DE 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_93DF:
        sec                                     ; 93DF 38                       8
        rts                                     ; 93E0 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_93E1:
        ldx     #$03                            ; 93E1 A2 03                    ..
BattlePresentation_Branch_93E3:
        lda     BattleSlotDescriptors,x         ; 93E3 BD F4 72                 ..r
        bmi     BattlePresentation_Branch_93FF  ; 93E6 30 17                    0.
        and     #$70                            ; 93E8 29 70                    )p
        cmp     #$02                            ; 93EA C9 02                    ..
        bcs     BattlePresentation_Branch_93FF  ; 93EC B0 11                    ..
        lda     BattleSlotDescriptors,x         ; 93EE BD F4 72                 ..r
        and     #$0F                            ; 93F1 29 0F                    ).
        tay                                     ; 93F3 A8                       .
        lda     $72EA,y                         ; 93F4 B9 EA 72                 ..r
        and     #$7F                            ; 93F7 29 7F                    ).
        beq     BattlePresentation_Branch_9404  ; 93F9 F0 09                    ..
        cmp     #$08                            ; 93FB C9 08                    ..
        beq     BattlePresentation_Branch_9404  ; 93FD F0 05                    ..
BattlePresentation_Branch_93FF:
        dex                                     ; 93FF CA                       .
        bpl     BattlePresentation_Branch_93E3  ; 9400 10 E1                    ..
        clc                                     ; 9402 18                       .
        rts                                     ; 9403 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9404:
        sec                                     ; 9404 38                       8
        rts                                     ; 9405 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9406:
        ldy     #$00                            ; 9406 A0 00                    ..
        lda     $75DB                           ; 9408 AD DB 75                 ..u
        cmp     #$FF                            ; 940B C9 FF                    ..
        beq     BattlePresentation_Branch_944D  ; 940D F0 3E                    .>
        cmp     #$15                            ; 940F C9 15                    ..
        bcc     BattlePresentation_Branch_9455  ; 9411 90 42                    .B
        cmp     #$17                            ; 9413 C9 17                    ..
        bcc     BattlePresentation_Branch_944D  ; 9415 90 36                    .6
        cmp     #$1C                            ; 9417 C9 1C                    ..
        bcc     BattlePresentation_Branch_945F  ; 9419 90 44                    .D
        cmp     #$1E                            ; 941B C9 1E                    ..
        beq     BattlePresentation_Branch_945F  ; 941D F0 40                    .@
        cmp     #$29                            ; 941F C9 29                    .)
        bcc     BattlePresentation_Branch_9463  ; 9421 90 40                    .@
        cmp     #$2E                            ; 9423 C9 2E                    ..
        bcc     BattlePresentation_Branch_9457  ; 9425 90 30                    .0
        cmp     #$33                            ; 9427 C9 33                    .3
        bcc     BattlePresentation_Branch_945B  ; 9429 90 30                    .0
        cmp     #$3C                            ; 942B C9 3C                    .<
        bcc     BattlePresentation_Branch_944D  ; 942D 90 1E                    ..
        ldy     #$80                            ; 942F A0 80                    ..
        cmp     #$43                            ; 9431 C9 43                    .C
        beq     BattlePresentation_Branch_9455  ; 9433 F0 20                    .
        cmp     #$41                            ; 9435 C9 41                    .A
        beq     BattlePresentation_Branch_944D  ; 9437 F0 14                    ..
        lda     $75DA                           ; 9439 AD DA 75                 ..u
        and     #$70                            ; 943C 29 70                    )p
        beq     BattlePresentation_Branch_944D  ; 943E F0 0D                    ..
        ldx     #$11                            ; 9440 A2 11                    ..
BattlePresentation_Branch_9442:
        lda     Bank13_SpecialBattleActionIds,x ; 9442 BD A9 91                 ...
        cmp     $75F2                           ; 9445 CD F2 75                 ..u
        beq     BattlePresentation_Branch_9451  ; 9448 F0 07                    ..
        dex                                     ; 944A CA                       .
        bpl     BattlePresentation_Branch_9442  ; 944B 10 F5                    ..
BattlePresentation_Branch_944D:
        tya                                     ; 944D 98                       .
        ora     #$05                            ; 944E 09 05                    ..
        rts                                     ; 9450 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9451:
        lda     $91BB,x                         ; 9451 BD BB 91                 ...
        rts                                     ; 9454 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9455:
        tya                                     ; 9455 98                       .
        rts                                     ; 9456 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9457:
        tya                                     ; 9457 98                       .
        ora     #$01                            ; 9458 09 01                    ..
        rts                                     ; 945A 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_945B:
        tya                                     ; 945B 98                       .
        ora     #$02                            ; 945C 09 02                    ..
        rts                                     ; 945E 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_945F:
        tya                                     ; 945F 98                       .
        ora     #$03                            ; 9460 09 03                    ..
        rts                                     ; 9462 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9463:
        tya                                     ; 9463 98                       .
        ora     #$04                            ; 9464 09 04                    ..
        rts                                     ; 9466 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9467:
        clc                                     ; 9467 18                       .
        lda     ($88),y                       ; 9468 B1 88                    ..
        adc     $00,x                         ; 946A 75 00                    u.
        sta     $00,x                         ; 946C 95 00                    ..
        iny                                     ; 946E C8                       .
        lda     ($88),y                       ; 946F B1 88                    ..
        adc     $01,x                           ; 9471 75 01                    u.
        sta     $01,x                           ; 9473 95 01                    ..
        iny                                     ; 9475 C8                       .
        rts                                     ; 9476 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9477:
        txa                                     ; 9477 8A                       .
        pha                                     ; 9478 48                       H
        ldx     #$00                            ; 9479 A2 00                    ..
        jsr     BattlePresentation_Entry_9467   ; 947B 20 67 94                  g.
        pla                                     ; 947E 68                       h
        tax                                     ; 947F AA                       .
        rts                                     ; 9480 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9481:
        lda     $0000,y                         ; 9481 B9 00 00                 ...
        sta     $19                             ; 9484 85 19                    ..
        lda     $01,y                           ; 9486 B9 01 00                 ...
        sta     $1A                             ; 9489 85 1A                    ..
        tya                                     ; 948B 98                       .
        pha                                     ; 948C 48                       H
        ldy     #$18                            ; 948D A0 18                    ..
        lda     #$00                            ; 948F A9 00                    ..
        sta     $1B                             ; 9491 85 1B                    ..
        sta     $16                             ; 9493 85 16                    ..
        sta     $17                             ; 9495 85 17                    ..
        sta     $18                             ; 9497 85 18                    ..
BattlePresentation_Branch_9499:
        asl     $00,x                         ; 9499 16 00                    ..
        rol     $01,x                           ; 949B 36 01                    6.
        rol     $02,x                         ; 949D 36 02                    6.
        rol     $16                             ; 949F 26 16                    &.
        rol     $17                             ; 94A1 26 17                    &.
        rol     $18                             ; 94A3 26 18                    &.
        inc     $00,x                         ; 94A5 F6 00                    ..
        lda     $16                             ; 94A7 A5 16                    ..
        sec                                     ; 94A9 38                       8
        sbc     $19                             ; 94AA E5 19                    ..
        pha                                     ; 94AC 48                       H
        lda     $17                             ; 94AD A5 17                    ..
        sbc     $1A                             ; 94AF E5 1A                    ..
        pha                                     ; 94B1 48                       H
        lda     $18                             ; 94B2 A5 18                    ..
        sbc     $1B                             ; 94B4 E5 1B                    ..
        bcs     BattlePresentation_Branch_94BE  ; 94B6 B0 06                    ..
        dec     $00,x                         ; 94B8 D6 00                    ..
        pla                                     ; 94BA 68                       h
        pla                                     ; 94BB 68                       h
        bcc     BattlePresentation_Branch_94C6  ; 94BC 90 08                    ..
BattlePresentation_Branch_94BE:
        sta     $18                             ; 94BE 85 18                    ..
        pla                                     ; 94C0 68                       h
        sta     $17                             ; 94C1 85 17                    ..
        pla                                     ; 94C3 68                       h
        sta     $16                             ; 94C4 85 16                    ..
BattlePresentation_Branch_94C6:
        dey                                     ; 94C6 88                       .
        bne     BattlePresentation_Branch_9499  ; 94C7 D0 D0                    ..
        pla                                     ; 94C9 68                       h
        tay                                     ; 94CA A8                       .
        rts                                     ; 94CB 60                       `
; ----------------------------------------------------------------------------
        db   $02,$01,$00,$05,$04,$03,$08,$07 ; 94CC 02 01 00 05 04 03 08 07  ........
        db   $06,$0B,$0A,$09,$0E,$0D,$0C     ; 94D4 06 0B 0A 09 0E 0D 0C     .......
        db   $4C                             ; 94DB 4C                       L
        db   $35,$33,$4C,$19,$4D,$00,$66,$4C ; 94DC 35 33 4C 19 4D 00 66 4C  53L.M.fL
        db   $35,$4C,$35,$26,$4D,$00,$66,$5A ; 94E4 35 4C 35 26 4D 00 66 5A  5L5&M.fZ
        db   $33,$40,$33,$26,$33,$00,$33,$5A ; 94EC 33 40 33 26 33 00 33 5A  3@3&3.3Z
        db   $33,$5A,$33,$33,$33,$00,$33,$5A ; 94F4 33 5A 33 33 33 00 33 5A  3Z333.3Z
        db   $28,$4D,$26,$26,$26,$00,$26,$5A ; 94FC 28 4D 26 26 26 00 26 5A  (M&&&.&Z
        db   $28,$5A,$28,$39,$26,$00,$26,$80 ; 9504 28 5A 28 39 26 00 26 80  (Z(9&.&.
        db   $00,$6D,$00,$33,$00,$00,$00,$80 ; 950C 00 6D 00 33 00 00 00 80  .m.3....
        db   $00,$80,$00,$5A,$00,$00,$00     ; 9514 00 80 00 5A 00 00 00     ...Z...
; ----------------------------------------------------------------------------
BattlePresentation_Entry_951B:
        jsr     BattlePresentation_Entry_91EF   ; 951B 20 EF 91                  ..
        jsr     BattlePresentation_Entry_9201   ; 951E 20 01 92                  ..
        lda     #$07                            ; 9521 A9 07                    ..
        sta     $81                             ; 9523 85 81                    ..
BattlePresentation_Branch_9525:
        jsr     BattlePresentation_Entry_9276   ; 9525 20 76 92                  v.
        jsr     BattlePresentation_Entry_93AB   ; 9528 20 AB 93                  ..
        jsr     BattlePresentation_Entry_95B8   ; 952B 20 B8 95                  ..
        dec     $81                             ; 952E C6 81                    ..
        bpl     BattlePresentation_Branch_9525  ; 9530 10 F3                    ..
        rts                                     ; 9532 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9533:
        jsr     BattlePresentation_Entry_91EF   ; 9533 20 EF 91                  ..
        jsr     BattlePresentation_Entry_9201   ; 9536 20 01 92                  ..
        lda     #$03                            ; 9539 A9 03                    ..
        sta     $8D                             ; 953B 85 8D                    ..
BattlePresentation_Branch_953D:
        jsr     BattlePresentation_Entry_93B4   ; 953D 20 B4 93                  ..
        jsr     BattlePresentation_Entry_9611   ; 9540 20 11 96                  ..
        dec     $8D                             ; 9543 C6 8D                    ..
        bpl     BattlePresentation_Branch_953D  ; 9545 10 F6                    ..
        rts                                     ; 9547 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9548:
        jsr     BattlePresentation_Entry_91EF   ; 9548 20 EF 91                  ..
        jsr     BattlePresentation_Entry_9201   ; 954B 20 01 92                  ..
        jsr     BattlePresentation_Entry_93BD   ; 954E 20 BD 93                  ..
        jmp     BattlePresentation_Branch_9637  ; 9551 4C 37 96                 L7.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9554:
        jsr     BattlePresentation_Entry_9201   ; 9554 20 01 92                  ..
        lda     #$07                            ; 9557 A9 07                    ..
        sta     $81                             ; 9559 85 81                    ..
BattlePresentation_Branch_955B:
        jsr     BattlePresentation_Entry_9276   ; 955B 20 76 92                  v.
        jsr     BattlePresentation_Entry_93AB   ; 955E 20 AB 93                  ..
        jsr     BattlePresentation_Entry_96A0   ; 9561 20 A0 96                  ..
        dec     $81                             ; 9564 C6 81                    ..
        bpl     BattlePresentation_Branch_955B  ; 9566 10 F3                    ..
        rts                                     ; 9568 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9569:
        jsr     BattlePresentation_Entry_9201   ; 9569 20 01 92                  ..
        lda     #$03                            ; 956C A9 03                    ..
        sta     $8D                             ; 956E 85 8D                    ..
BattlePresentation_Branch_9570:
        jsr     BattlePresentation_Entry_93B4   ; 9570 20 B4 93                  ..
        jsr     BattlePresentation_Entry_96F3   ; 9573 20 F3 96                  ..
        dec     $8D                             ; 9576 C6 8D                    ..
        bpl     BattlePresentation_Branch_9570  ; 9578 10 F6                    ..
        rts                                     ; 957A 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_957B:
        jsr     BattlePresentation_Entry_9201   ; 957B 20 01 92                  ..
        jsr     BattlePresentation_Entry_93BD   ; 957E 20 BD 93                  ..
        jmp     BattlePresentation_Entry_971C   ; 9581 4C 1C 97                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9584:
        lda     $75F0                           ; 9584 AD F0 75                 ..u
        and     #$7F                            ; 9587 29 7F                    ).
        sta     $75F0                           ; 9589 8D F0 75                 ..u
        lda     #$43                            ; 958C A9 43                    .C
        sta     $75D3                           ; 958E 8D D3 75                 ..u
        lda     #$00                            ; 9591 A9 00                    ..
        sta     $8B                             ; 9593 85 8B                    ..
        lda     #$10                            ; 9595 A9 10                    ..
        sta     $8C                             ; 9597 85 8C                    ..
        lda     #$07                            ; 9599 A9 07                    ..
        sta     $81                             ; 959B 85 81                    ..
BattlePresentation_Branch_959D:
        jsr     BattlePresentation_Entry_93AB   ; 959D 20 AB 93                  ..
        ldx     $81                             ; 95A0 A6 81                    ..
        lda     #$40                            ; 95A2 A9 40                    .@
        jsr     BattlePresentation_Entry_85F2   ; 95A4 20 F2 85                  ..
        beq     BattlePresentation_Branch_95B3  ; 95A7 F0 0A                    ..
        iny                                     ; 95A9 C8                       .
        lda     #$02                            ; 95AA A9 02                    ..
        and     ($86),y                       ; 95AC 31 86                    1.
        bne     BattlePresentation_Branch_95B3  ; 95AE D0 03                    ..
        jsr     BattlePresentation_Entry_9736   ; 95B0 20 36 97                  6.
BattlePresentation_Branch_95B3:
        dec     $81                             ; 95B3 C6 81                    ..
        bpl     BattlePresentation_Branch_959D  ; 95B5 10 E6                    ..
        rts                                     ; 95B7 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_95B8:
        jsr     BattlePresentation_Entry_9658   ; 95B8 20 58 96                  X.
        jsr     BattlePresentation_Entry_95C5   ; 95BB 20 C5 95                  ..
        lda     $0F                             ; 95BE A5 0F                    ..
        bpl     BattlePresentation_Branch_95FC  ; 95C0 10 3A                    .:
        jmp     BattlePresentation_Entry_A9C2   ; 95C2 4C C2 A9                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_95C5:
        lda     #$00                            ; 95C5 A9 00                    ..
        sta     $00                           ; 95C7 85 00                    ..
        sta     $01                             ; 95C9 85 01                    ..
        sta     $0F                             ; 95CB 85 0F                    ..
        ldx     $81                             ; 95CD A6 81                    ..
        lda     #$40                            ; 95CF A9 40                    .@
        jsr     BattlePresentation_Entry_85F2   ; 95D1 20 F2 85                  ..
        beq     BattlePresentation_Branch_95FC  ; 95D4 F0 26                    .&
        dey                                     ; 95D6 88                       .
        lda     $75F0                           ; 95D7 AD F0 75                 ..u
        bmi     BattlePresentation_Branch_95E2  ; 95DA 30 06                    0.
        lda     #$C0                            ; 95DC A9 C0                    ..
        and     ($86),y                       ; 95DE 31 86                    1.
        bne     BattlePresentation_Branch_95FD  ; 95E0 D0 1B                    ..
BattlePresentation_Branch_95E2:
        iny                                     ; 95E2 C8                       .
        iny                                     ; 95E3 C8                       .
        lda     #$02                            ; 95E4 A9 02                    ..
        and     ($86),y                       ; 95E6 31 86                    1.
        bne     BattlePresentation_Branch_95FC  ; 95E8 D0 12                    ..
        lda     $8C                             ; 95EA A5 8C                    ..
        beq     BattlePresentation_Branch_95FC  ; 95EC F0 0E                    ..
        dec     $0F                             ; 95EE C6 0F                    ..
        jsr     BattlePresentation_Entry_9766   ; 95F0 20 66 97                  f.
        jsr     BattlePresentation_Entry_97A3   ; 95F3 20 A3 97                  ..
        jsr     BattlePresentation_Entry_97C0   ; 95F6 20 C0 97                  ..
        jsr     BattlePresentation_Entry_9800   ; 95F9 20 00 98                  ..
BattlePresentation_Branch_95FC:
        rts                                     ; 95FC 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_95FD:
        lda     ($86),y                       ; 95FD B1 86                    ..
        asl     a                               ; 95FF 0A                       .
        bpl     BattlePresentation_Branch_95FC  ; 9600 10 FA                    ..
        lda     $8A                             ; 9602 A5 8A                    ..
        clc                                     ; 9604 18                       .
        adc     $75E1                           ; 9605 6D E1 75                 m.u
        sta     $75E1                           ; 9608 8D E1 75                 ..u
        bcc     BattlePresentation_Branch_9610  ; 960B 90 03                    ..
        inc     $75E2                           ; 960D EE E2 75                 ..u
BattlePresentation_Branch_9610:
        rts                                     ; 9610 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9611:
        jsr     BattlePresentation_Entry_9658   ; 9611 20 58 96                  X.
        lda     #$07                            ; 9614 A9 07                    ..
        sta     $81                             ; 9616 85 81                    ..
BattlePresentation_Branch_9618:
        jsr     BattlePresentation_Entry_8602   ; 9618 20 02 86                  ..
        bne     BattlePresentation_Branch_962D  ; 961B D0 10                    ..
        jsr     BattlePresentation_Entry_9276   ; 961D 20 76 92                  v.
        jsr     BattlePresentation_Entry_95C5   ; 9620 20 C5 95                  ..
        lda     $0F                             ; 9623 A5 0F                    ..
        beq     BattlePresentation_Branch_962D  ; 9625 F0 06                    ..
        jsr     BattlePresentation_Entry_966B   ; 9627 20 6B 96                  k.
        jsr     BattlePresentation_Entry_967D   ; 962A 20 7D 96                  }.
BattlePresentation_Branch_962D:
        dec     $81                             ; 962D C6 81                    ..
        bpl     BattlePresentation_Branch_9618  ; 962F 10 E7                    ..
        jsr     BattlePresentation_Entry_9695   ; 9631 20 95 96                  ..
        jmp     BattlePresentation_Entry_A9C2   ; 9634 4C C2 A9                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9637:
        jsr     BattlePresentation_Entry_9658   ; 9637 20 58 96                  X.
        lda     #$07                            ; 963A A9 07                    ..
        sta     $81                             ; 963C 85 81                    ..
BattlePresentation_Branch_963E:
        jsr     BattlePresentation_Entry_9276   ; 963E 20 76 92                  v.
        jsr     BattlePresentation_Entry_95C5   ; 9641 20 C5 95                  ..
        lda     $0F                             ; 9644 A5 0F                    ..
        beq     BattlePresentation_Branch_964E  ; 9646 F0 06                    ..
        jsr     BattlePresentation_Entry_966B   ; 9648 20 6B 96                  k.
        jsr     BattlePresentation_Entry_967D   ; 964B 20 7D 96                  }.
BattlePresentation_Branch_964E:
        dec     $81                             ; 964E C6 81                    ..
        bpl     BattlePresentation_Branch_963E  ; 9650 10 EC                    ..
        jsr     BattlePresentation_Entry_9695   ; 9652 20 95 96                  ..
        jmp     BattlePresentation_Entry_A9C2   ; 9655 4C C2 A9                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9658:
        lda     #$00                            ; 9658 A9 00                    ..
        sta     $75DF                           ; 965A 8D DF 75                 ..u
        sta     $75E0                           ; 965D 8D E0 75                 ..u
        sta     $75E1                           ; 9660 8D E1 75                 ..u
        sta     $75E2                           ; 9663 8D E2 75                 ..u
        sta     $02                           ; 9666 85 02                    ..
        sta     $03                             ; 9668 85 03                    ..
        rts                                     ; 966A 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_966B:
        clc                                     ; 966B 18                       .
        lda     $00                           ; 966C A5 00                    ..
        adc     $75DF                           ; 966E 6D DF 75                 m.u
        sta     $75DF                           ; 9671 8D DF 75                 ..u
        lda     $01                             ; 9674 A5 01                    ..
        adc     $75E0                           ; 9676 6D E0 75                 m.u
        sta     $75E0                           ; 9679 8D E0 75                 ..u
        rts                                     ; 967C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_967D:
        lda     $75D1                           ; 967D AD D1 75                 ..u
        adc     $02                           ; 9680 65 02                    e.
        sta     $02                           ; 9682 85 02                    ..
        bcc     BattlePresentation_Branch_9688  ; 9684 90 02                    ..
        inc     $03                             ; 9686 E6 03                    ..
BattlePresentation_Branch_9688:
        lda     $75DF                           ; 9688 AD DF 75                 ..u
        ora     $75E0                           ; 968B 0D E0 75                 ..u
        beq     BattlePresentation_Branch_9694  ; 968E F0 04                    ..
        lsr     $03                             ; 9690 46 03                    F.
        ror     $02                           ; 9692 66 02                    f.
BattlePresentation_Branch_9694:
        rts                                     ; 9694 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9695:
        lda     $75DF                           ; 9695 AD DF 75                 ..u
        sta     $00                           ; 9698 85 00                    ..
        lda     $75E0                           ; 969A AD E0 75                 ..u
        sta     $01                             ; 969D 85 01                    ..
        rts                                     ; 969F 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_96A0:
        jsr     BattlePresentation_Entry_9658   ; 96A0 20 58 96                  X.
        jsr     BattlePresentation_Entry_96AD   ; 96A3 20 AD 96                  ..
        lda     $0F                             ; 96A6 A5 0F                    ..
        bpl     BattlePresentation_Branch_96C5  ; 96A8 10 1B                    ..
        jmp     BattlePresentation_Entry_A9C2   ; 96AA 4C C2 A9                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_96AD:
        jsr     BattlePresentation_Entry_96C6   ; 96AD 20 C6 96                  ..
        bcc     BattlePresentation_Branch_96C5  ; 96B0 90 13                    ..
        dec     $0F                             ; 96B2 C6 0F                    ..
        lda     #$10                            ; 96B4 A9 10                    ..
        sta     $75D1                           ; 96B6 8D D1 75                 ..u
        jsr     BattlePresentation_Entry_97A3   ; 96B9 20 A3 97                  ..
        jsr     BattlePresentation_Entry_97C0   ; 96BC 20 C0 97                  ..
        jsr     BattlePresentation_Entry_9800   ; 96BF 20 00 98                  ..
        jsr     BattlePresentation_Entry_97D7   ; 96C2 20 D7 97                  ..
BattlePresentation_Branch_96C5:
        rts                                     ; 96C5 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_96C6:
        lda     #$00                            ; 96C6 A9 00                    ..
        sta     $00                           ; 96C8 85 00                    ..
        sta     $01                             ; 96CA 85 01                    ..
        sta     $0F                             ; 96CC 85 0F                    ..
        ldx     $81                             ; 96CE A6 81                    ..
        lda     #$40                            ; 96D0 A9 40                    .@
        jsr     BattlePresentation_Entry_85F2   ; 96D2 20 F2 85                  ..
        beq     BattlePresentation_Branch_96F1  ; 96D5 F0 1A                    ..
        dey                                     ; 96D7 88                       .
        lda     $75F0                           ; 96D8 AD F0 75                 ..u
        bmi     BattlePresentation_Branch_96E3  ; 96DB 30 06                    0.
        lda     #$C0                            ; 96DD A9 C0                    ..
        and     ($86),y                       ; 96DF 31 86                    1.
        bne     BattlePresentation_Branch_96F1  ; 96E1 D0 0E                    ..
BattlePresentation_Branch_96E3:
        iny                                     ; 96E3 C8                       .
        iny                                     ; 96E4 C8                       .
        lda     #$02                            ; 96E5 A9 02                    ..
        and     ($86),y                       ; 96E7 31 86                    1.
        bne     BattlePresentation_Branch_96F1  ; 96E9 D0 06                    ..
        lda     $8C                             ; 96EB A5 8C                    ..
        beq     BattlePresentation_Branch_96F1  ; 96ED F0 02                    ..
        sec                                     ; 96EF 38                       8
        rts                                     ; 96F0 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_96F1:
        clc                                     ; 96F1 18                       .
        rts                                     ; 96F2 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_96F3:
        jsr     BattlePresentation_Entry_9658   ; 96F3 20 58 96                  X.
        lda     #$07                            ; 96F6 A9 07                    ..
        sta     $81                             ; 96F8 85 81                    ..
BattlePresentation_Branch_96FA:
        jsr     BattlePresentation_Entry_8602   ; 96FA 20 02 86                  ..
        bne     BattlePresentation_Branch_9711  ; 96FD D0 12                    ..
        ldx     $81                             ; 96FF A6 81                    ..
        lda     #$40                            ; 9701 A9 40                    .@
        jsr     BattlePresentation_Entry_85EE   ; 9703 20 EE 85                  ..
        bne     BattlePresentation_Branch_971B  ; 9706 D0 13                    ..
        jsr     BattlePresentation_Entry_9276   ; 9708 20 76 92                  v.
        jsr     BattlePresentation_Entry_96AD   ; 970B 20 AD 96                  ..
        jsr     BattlePresentation_Entry_966B   ; 970E 20 6B 96                  k.
BattlePresentation_Branch_9711:
        dec     $81                             ; 9711 C6 81                    ..
        bpl     BattlePresentation_Branch_96FA  ; 9713 10 E5                    ..
        jsr     BattlePresentation_Entry_9695   ; 9715 20 95 96                  ..
        jmp     BattlePresentation_Entry_A9C2   ; 9718 4C C2 A9                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_971B:
        rts                                     ; 971B 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_971C:
        jsr     BattlePresentation_Entry_9658   ; 971C 20 58 96                  X.
        lda     #$07                            ; 971F A9 07                    ..
        sta     $81                             ; 9721 85 81                    ..
BattlePresentation_Branch_9723:
        jsr     BattlePresentation_Entry_9276   ; 9723 20 76 92                  v.
        jsr     BattlePresentation_Entry_96AD   ; 9726 20 AD 96                  ..
        jsr     BattlePresentation_Entry_966B   ; 9729 20 6B 96                  k.
        dec     $81                             ; 972C C6 81                    ..
        bpl     BattlePresentation_Branch_9723  ; 972E 10 F3                    ..
        jsr     BattlePresentation_Entry_9695   ; 9730 20 95 96                  ..
        jmp     BattlePresentation_Entry_A9C2   ; 9733 4C C2 A9                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9736:
        jsr     BattlePresentation_Entry_9658   ; 9736 20 58 96                  X.
        lda     $75E8                           ; 9739 AD E8 75                 ..u
        jsr     BattlePresentation_Entry_8720   ; 973C 20 20 87                   .
        ldx     $81                             ; 973F A6 81                    ..
        jsr     BattlePresentation_Entry_8811   ; 9741 20 11 88                  ..
        jsr     BattlePresentation_Entry_8823   ; 9744 20 23 88                  #.
        lda     $94                             ; 9747 A5 94                    ..
        ora     $95                             ; 9749 05 95                    ..
        bne     BattlePresentation_Branch_974F  ; 974B D0 02                    ..
        inc     $94                             ; 974D E6 94                    ..
BattlePresentation_Branch_974F:
        lda     $94                             ; 974F A5 94                    ..
        sta     $02                           ; 9751 85 02                    ..
        lda     $95                             ; 9753 A5 95                    ..
        sta     $03                             ; 9755 85 03                    ..
        jsr     BattlePresentation_Entry_977C   ; 9757 20 7C 97                  |.
        jsr     BattlePresentation_Entry_97A3   ; 975A 20 A3 97                  ..
        jsr     BattlePresentation_Entry_97C0   ; 975D 20 C0 97                  ..
        jsr     BattlePresentation_Entry_9800   ; 9760 20 00 98                  ..
        jmp     BattlePresentation_Entry_A9C2   ; 9763 4C C2 A9                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9766:
        jsr     BattlePresentation_Entry_9787   ; 9766 20 87 97                  ..
        lda     $8A                             ; 9769 A5 8A                    ..
        jsr     UpperFixedEngine_Entry_C851     ; 976B 20 51 C8                  Q.
BattlePresentation_Branch_976E:
        lda     $01                             ; 976E A5 01                    ..
        beq     BattlePresentation_Branch_9776  ; 9770 F0 04                    ..
        lda     #$FF                            ; 9772 A9 FF                    ..
        sta     $00                           ; 9774 85 00                    ..
BattlePresentation_Branch_9776:
        lda     $00                           ; 9776 A5 00                    ..
        sta     $75D1                           ; 9778 8D D1 75                 ..u
        rts                                     ; 977B 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_977C:
        jsr     BattlePresentation_Entry_9787   ; 977C 20 87 97                  ..
        ldy     #$02                            ; 977F A0 02                    ..
        jsr     BattlePresentation_Entry_83AA   ; 9781 20 AA 83                  ..
        jmp     BattlePresentation_Branch_976E  ; 9784 4C 6E 97                 Ln.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9787:
        ldx     $81                             ; 9787 A6 81                    ..
        jsr     BattlePresentation_Entry_86C7   ; 9789 20 C7 86                  ..
        lda     $6E80                           ; 978C AD 80 6E                 ..n
        cmp     #$06                            ; 978F C9 06                    ..
        bne     BattlePresentation_Branch_979E  ; 9791 D0 0B                    ..
        clc                                     ; 9793 18                       .
        lda     $00                           ; 9794 A5 00                    ..
        adc     #$64                            ; 9796 69 64                    id
        sta     $00                           ; 9798 85 00                    ..
        bcc     BattlePresentation_Branch_979E  ; 979A 90 02                    ..
        inc     $01                             ; 979C E6 01                    ..
BattlePresentation_Branch_979E:
        ldx     #$00                            ; 979E A2 00                    ..
        jmp     BattlePresentation_Entry_8176   ; 97A0 4C 76 81                 Lv.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_97A3:
        jsr     BattlePresentation_Entry_8D77   ; 97A3 20 77 8D                  w.
        ldy     #$36                            ; 97A6 A0 36                    .6
        lda     ($88),y                       ; 97A8 B1 88                    ..
        sta     $00                           ; 97AA 85 00                    ..
        iny                                     ; 97AC C8                       .
        lda     ($88),y                       ; 97AD B1 88                    ..
        sta     $01                             ; 97AF 85 01                    ..
        ldy     #$38                            ; 97B1 A0 38                    .8
        lda     ($88),y                       ; 97B3 B1 88                    ..
        pha                                     ; 97B5 48                       H
        iny                                     ; 97B6 C8                       .
        lda     ($88),y                       ; 97B7 B1 88                    ..
        tay                                     ; 97B9 A8                       .
        pla                                     ; 97BA 68                       h
        ldx     #$00                            ; 97BB A2 00                    ..
        jmp     AddWordToPointer                ; 97BD 4C 1D C8                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_97C0:
        ldx     #$00                            ; 97C0 A2 00                    ..
        jsr     BattlePresentation_Entry_8176   ; 97C2 20 76 81                  v.
        lda     $75D1                           ; 97C5 AD D1 75                 ..u
        and     #$F0                            ; 97C8 29 F0                    ).
        bne     BattlePresentation_Branch_97D0  ; 97CA D0 04                    ..
        lda     #$10                            ; 97CC A9 10                    ..
        bne     BattlePresentation_Branch_97D3  ; 97CE D0 03                    ..
BattlePresentation_Branch_97D0:
        lda     $75D1                           ; 97D0 AD D1 75                 ..u
BattlePresentation_Branch_97D3:
        jmp     UpperFixedEngine_Entry_C851     ; 97D3 4C 51 C8                 LQ.
; ----------------------------------------------------------------------------
BattlePresentation_Branch_97D6:
        rts                                     ; 97D6 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_97D7:
        lda     $00                           ; 97D7 A5 00                    ..
        pha                                     ; 97D9 48                       H
        lda     $01                             ; 97DA A5 01                    ..
        pha                                     ; 97DC 48                       H
        brk                                     ; 97DD 00                       .
        db   $0F,$8F                         ; 97DE 0F 8F                    ..
; ----------------------------------------------------------------------------
        ldx     $81                             ; 97E0 A6 81                    ..
        jsr     BattlePresentation_Entry_86C7   ; 97E2 20 C7 86                  ..
        ldx     #$00                            ; 97E5 A2 00                    ..
        ldy     #$02                            ; 97E7 A0 02                    ..
        jsr     BattlePresentation_Entry_8176   ; 97E9 20 76 81                  v.
        jsr     BattlePresentation_Entry_83AA   ; 97EC 20 AA 83                  ..
        lda     $00                           ; 97EF A5 00                    ..
        and     #$1F                            ; 97F1 29 1F                    ).
        sta     $02                           ; 97F3 85 02                    ..
        pla                                     ; 97F5 68                       h
        sta     $01                             ; 97F6 85 01                    ..
        pla                                     ; 97F8 68                       h
        sta     $00                           ; 97F9 85 00                    ..
        lda     $02                           ; 97FB A5 02                    ..
        jmp     BattlePresentation_Entry_819A   ; 97FD 4C 9A 81                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9800:
        lda     $8C                             ; 9800 A5 8C                    ..
        cmp     #$10                            ; 9802 C9 10                    ..
        bcs     BattlePresentation_Branch_97D6  ; 9804 B0 D0                    ..
        ldx     #$00                            ; 9806 A2 00                    ..
        jmp     BattlePresentation_Entry_819A   ; 9808 4C 9A 81                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_980B:
        lda     #$00                            ; 980B A9 00                    ..
        sta     $75D2                           ; 980D 8D D2 75                 ..u
        jsr     BattlePresentation_Entry_99C5   ; 9810 20 C5 99                  ..
        lda     #$00                            ; 9813 A9 00                    ..
        sta     $82                             ; 9815 85 82                    ..
BattlePresentation_Branch_9817:
        lda     $7B                             ; 9817 A5 7B                    .{
        and     #$03                            ; 9819 29 03                    ).
        beq     BattlePresentation_Branch_9820  ; 981B F0 03                    ..
        jsr     BattlePresentation_Entry_AD26   ; 981D 20 26 AD                  &.
BattlePresentation_Branch_9820:
        jsr     BattlePresentation_Entry_934A   ; 9820 20 4A 93                  J.
        jsr     BattlePresentation_Entry_9201   ; 9823 20 01 92                  ..
        jsr     BattlePresentation_Entry_8AB5   ; 9826 20 B5 8A                  ..
        sta     $75D2                           ; 9829 8D D2 75                 ..u
        jsr     BattlePresentation_Entry_93C2   ; 982C 20 C2 93                  ..
        lda     $7B                             ; 982F A5 7B                    .{
        lsr     $7B                             ; 9831 46 7B                    F{
        lsr     $7B                             ; 9833 46 7B                    F{
        and     #$03                            ; 9835 29 03                    ).
        beq     BattlePresentation_Branch_9844  ; 9837 F0 0B                    ..
        asl     a                               ; 9839 0A                       .
        asl     a                               ; 983A 0A                       .
        asl     a                               ; 983B 0A                       .
        asl     a                               ; 983C 0A                       .
        ora     $8D                             ; 983D 05 8D                    ..
        sta     $8D                             ; 983F 85 8D                    ..
        jsr     BattlePresentation_Entry_9948   ; 9841 20 48 99                  H.
BattlePresentation_Branch_9844:
        inc     $82                             ; 9844 E6 82                    ..
        lda     $82                             ; 9846 A5 82                    ..
        cmp     #$04                            ; 9848 C9 04                    ..
        bcc     BattlePresentation_Branch_9817  ; 984A 90 CB                    ..
        rts                                     ; 984C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_984D:
        lda     #$00                            ; 984D A9 00                    ..
        sta     $75D2                           ; 984F 8D D2 75                 ..u
        jsr     BattlePresentation_Entry_93C2   ; 9852 20 C2 93                  ..
        jsr     BattlePresentation_Entry_99C5   ; 9855 20 C5 99                  ..
        lda     $6E80                           ; 9858 AD 80 6E                 ..n
        cmp     #$01                            ; 985B C9 01                    ..
        beq     BattlePresentation_Branch_98AB  ; 985D F0 4C                    .L
        lda     $7C                             ; 985F A5 7C                    .|
        cmp     #$03                            ; 9861 C9 03                    ..
        bcc     BattlePresentation_Branch_98AB  ; 9863 90 46                    .F
        lda     #$00                            ; 9865 A9 00                    ..
        sta     $82                             ; 9867 85 82                    ..
        sta     $8A                             ; 9869 85 8A                    ..
BattlePresentation_Branch_986B:
        lda     $7B                             ; 986B A5 7B                    .{
        and     #$03                            ; 986D 29 03                    ).
        beq     BattlePresentation_Branch_9896  ; 986F F0 25                    .%
        jsr     BattlePresentation_Entry_8610   ; 9871 20 10 86                  ..
        bcc     BattlePresentation_Branch_9896  ; 9874 90 20                    .
        jsr     BattlePresentation_Entry_861C   ; 9876 20 1C 86                  ..
        sec                                     ; 9879 38                       8
        lda     $02                           ; 987A A5 02                    ..
        sbc     $00                           ; 987C E5 00                    ..
        sta     $02                           ; 987E 85 02                    ..
        lda     $03                             ; 9880 A5 03                    ..
        sbc     $01                             ; 9882 E5 01                    ..
        sta     $03                             ; 9884 85 03                    ..
        lda     $03                             ; 9886 A5 03                    ..
        bne     BattlePresentation_Branch_9894  ; 9888 D0 0A                    ..
        lda     $02                           ; 988A A5 02                    ..
        cmp     #$46                            ; 988C C9 46                    .F
        bcc     BattlePresentation_Branch_9896  ; 988E 90 06                    ..
        cmp     #$6E                            ; 9890 C9 6E                    .n
        bcs     BattlePresentation_Branch_9896  ; 9892 B0 02                    ..
BattlePresentation_Branch_9894:
        inc     $8A                             ; 9894 E6 8A                    ..
BattlePresentation_Branch_9896:
        lsr     $7B                             ; 9896 46 7B                    F{
        lsr     $7B                             ; 9898 46 7B                    F{
        inc     $82                             ; 989A E6 82                    ..
        lda     $82                             ; 989C A5 82                    ..
        cmp     #$04                            ; 989E C9 04                    ..
        bcc     BattlePresentation_Branch_986B  ; 98A0 90 C9                    ..
        lda     #$FF                            ; 98A2 A9 FF                    ..
        sta     $8C                             ; 98A4 85 8C                    ..
        sta     $8D                             ; 98A6 85 8D                    ..
        jmp     BattlePresentation_Branch_ABCA  ; 98A8 4C CA AB                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_98AB:
        rts                                     ; 98AB 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_98AC:
        jsr     BattlePresentation_Entry_9933   ; 98AC 20 33 99                  3.
        bne     BattlePresentation_Branch_98B8  ; 98AF D0 07                    ..
        lda     $75DB                           ; 98B1 AD DB 75                 ..u
        cmp     #$29                            ; 98B4 C9 29                    .)
        bne     BattlePresentation_Branch_98BB  ; 98B6 D0 03                    ..
BattlePresentation_Branch_98B8:
        jmp     BattlePresentation_Entry_980B   ; 98B8 4C 0B 98                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_98BB:
        rts                                     ; 98BB 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_98BC:
        jsr     BattlePresentation_Entry_9933   ; 98BC 20 33 99                  3.
        bne     BattlePresentation_Branch_98E6  ; 98BF D0 25                    .%
        lda     $75DB                           ; 98C1 AD DB 75                 ..u
        cmp     #$29                            ; 98C4 C9 29                    .)
        beq     BattlePresentation_Branch_98DB  ; 98C6 F0 13                    ..
        cmp     #$2A                            ; 98C8 C9 2A                    .*
        beq     BattlePresentation_Branch_98DB  ; 98CA F0 0F                    ..
        cmp     #$2B                            ; 98CC C9 2B                    .+
        beq     BattlePresentation_Branch_98D5  ; 98CE F0 05                    ..
        cmp     #$94                            ; 98D0 C9 94                    ..
        bne     BattlePresentation_Branch_98DB  ; 98D2 D0 07                    ..
BattlePresentation_Branch_98D4:
        rts                                     ; 98D4 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_98D5:
        ldx     $6E80                           ; 98D5 AE 80 6E                 ..n
        dex                                     ; 98D8 CA                       .
        bne     BattlePresentation_Branch_98D4  ; 98D9 D0 F9                    ..
BattlePresentation_Branch_98DB:
        lda     $75DA                           ; 98DB AD DA 75                 ..u
        and     #$0F                            ; 98DE 29 0F                    ).
        jsr     BattlePresentation_Entry_8AAB   ; 98E0 20 AB 8A                  ..
        cmp     $75E8                           ; 98E3 CD E8 75                 ..u
BattlePresentation_Branch_98E6:
        jmp     BattlePresentation_Entry_980B   ; 98E6 4C 0B 98                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_98E9:
        jsr     BattlePresentation_Entry_9933   ; 98E9 20 33 99                  3.
        bne     BattlePresentation_Branch_98F9  ; 98EC D0 0B                    ..
        lda     $00                           ; 98EE A5 00                    ..
        bpl     BattlePresentation_Branch_98FC  ; 98F0 10 0A                    ..
        lda     $75F2                           ; 98F2 AD F2 75                 ..u
        cmp     #$60                            ; 98F5 C9 60                    .`
        beq     BattlePresentation_Branch_990D  ; 98F7 F0 14                    ..
BattlePresentation_Branch_98F9:
        jmp     BattlePresentation_Entry_980B   ; 98F9 4C 0B 98                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_98FC:
        ldx     $6E80                           ; 98FC AE 80 6E                 ..n
        dex                                     ; 98FF CA                       .
        beq     BattlePresentation_Branch_98F9  ; 9900 F0 F7                    ..
        lda     $75DB                           ; 9902 AD DB 75                 ..u
        cmp     #$2B                            ; 9905 C9 2B                    .+
        beq     BattlePresentation_Branch_990D  ; 9907 F0 04                    ..
        cmp     #$2C                            ; 9909 C9 2C                    .,
        bne     BattlePresentation_Branch_98F9  ; 990B D0 EC                    ..
BattlePresentation_Branch_990D:
        rts                                     ; 990D 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_990E:
        jsr     BattlePresentation_Entry_9933   ; 990E 20 33 99                  3.
        bne     BattlePresentation_Branch_9926  ; 9911 D0 13                    ..
        lda     $00                           ; 9913 A5 00                    ..
        bmi     BattlePresentation_Branch_992B  ; 9915 30 14                    0.
        lda     $75DB                           ; 9917 AD DB 75                 ..u
        cmp     #$2B                            ; 991A C9 2B                    .+
        bne     BattlePresentation_Branch_992B  ; 991C D0 0D                    ..
        jsr     BattlePresentation_Entry_993D   ; 991E 20 3D 99                  =.
        cmp     #$02                            ; 9921 C9 02                    ..
        bcs     BattlePresentation_Branch_992B  ; 9923 B0 06                    ..
BattlePresentation_Branch_9925:
        rts                                     ; 9925 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9926:
        jsr     BattlePresentation_Entry_993D   ; 9926 20 3D 99                  =.
        beq     BattlePresentation_Branch_9925  ; 9929 F0 FA                    ..
BattlePresentation_Branch_992B:
        lda     #$20                            ; 992B A9 20                    .
        sta     $75D2                           ; 992D 8D D2 75                 ..u
        jmp     BattlePresentation_Branch_ABCA  ; 9930 4C CA AB                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9933:
        jsr     BattlePresentation_Entry_9406   ; 9933 20 06 94                  ..
        sta     $00                           ; 9936 85 00                    ..
        and     #$7F                            ; 9938 29 7F                    ).
        cmp     #$01                            ; 993A C9 01                    ..
        rts                                     ; 993C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_993D:
        lda     #$20                            ; 993D A9 20                    .
        sta     $75D2                           ; 993F 8D D2 75                 ..u
        jsr     BattlePresentation_Entry_99C5   ; 9942 20 C5 99                  ..
        lda     $7C                             ; 9945 A5 7C                    .|
        rts                                     ; 9947 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9948:
        lda     #$00                            ; 9948 A9 00                    ..
        sta     $00                           ; 994A 85 00                    ..
        sta     $01                             ; 994C 85 01                    ..
        lda     $82                             ; 994E A5 82                    ..
        jsr     BattlePresentation_Entry_8610   ; 9950 20 10 86                  ..
        lda     $82                             ; 9953 A5 82                    ..
        jsr     BattlePresentation_Entry_861C   ; 9955 20 1C 86                  ..
        jsr     BattlePresentation_Entry_999F   ; 9958 20 9F 99                  ..
        lda     $8A                             ; 995B A5 8A                    ..
        cmp     #$FF                            ; 995D C9 FF                    ..
        beq     BattlePresentation_Branch_9994  ; 995F F0 33                    .3
        ldx     #$00                            ; 9961 A2 00                    ..
        jsr     AddByteToPointer                ; 9963 20 13 C8                  ..
        lda     $82                             ; 9966 A5 82                    ..
        jsr     BattlePresentation_Entry_861C   ; 9968 20 1C 86                  ..
        ldx     #$00                            ; 996B A2 00                    ..
        jsr     BattlePresentation_Entry_8176   ; 996D 20 76 81                  v.
        ldy     #$02                            ; 9970 A0 02                    ..
        jsr     BattlePresentation_Entry_83AA   ; 9972 20 AA 83                  ..
        lda     $00                           ; 9975 A5 00                    ..
        and     #$F0                            ; 9977 29 F0                    ).
        ora     $01                             ; 9979 05 01                    ..
        bne     BattlePresentation_Branch_9994  ; 997B D0 17                    ..
        lda     $00                           ; 997D A5 00                    ..
        sta     $01                             ; 997F 85 01                    ..
        lda     #$00                            ; 9981 A9 00                    ..
        sta     $00                           ; 9983 85 00                    ..
        jsr     BattlePresentation_Entry_9365   ; 9985 20 65 93                  e.
        cmp     $01                             ; 9988 C5 01                    ..
        bcc     BattlePresentation_Branch_9994  ; 998A 90 08                    ..
        beq     BattlePresentation_Branch_9994  ; 998C F0 06                    ..
        jsr     UpperFixedEngine_Entry_C851     ; 998E 20 51 C8                  Q.
        jmp     BattlePresentation_Branch_9998  ; 9991 4C 98 99                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9994:
        lda     #$FF                            ; 9994 A9 FF                    ..
        sta     $00                           ; 9996 85 00                    ..
BattlePresentation_Branch_9998:
        lda     #$00                            ; 9998 A9 00                    ..
        sta     $01                             ; 999A 85 01                    ..
        jmp     BattlePresentation_Branch_AB92  ; 999C 4C 92 AB                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_999F:
        sec                                     ; 999F 38                       8
        lda     $02                           ; 99A0 A5 02                    ..
        sbc     $00                           ; 99A2 E5 00                    ..
        sta     $04                             ; 99A4 85 04                    ..
        lda     $03                             ; 99A6 A5 03                    ..
        sbc     $01                             ; 99A8 E5 01                    ..
        sta     $05                             ; 99AA 85 05                    ..
        lda     $8A                             ; 99AC A5 8A                    ..
        cmp     #$FF                            ; 99AE C9 FF                    ..
        beq     BattlePresentation_Branch_99C4  ; 99B0 F0 12                    ..
        lda     $05                             ; 99B2 A5 05                    ..
        bne     BattlePresentation_Branch_99BC  ; 99B4 D0 06                    ..
        lda     $04                             ; 99B6 A5 04                    ..
        cmp     $8A                             ; 99B8 C5 8A                    ..
        bcc     BattlePresentation_Branch_99C4  ; 99BA 90 08                    ..
BattlePresentation_Branch_99BC:
        lda     $8A                             ; 99BC A5 8A                    ..
        sta     $04                             ; 99BE 85 04                    ..
        lda     #$00                            ; 99C0 A9 00                    ..
        sta     $05                             ; 99C2 85 05                    ..
BattlePresentation_Branch_99C4:
        rts                                     ; 99C4 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_99C5:
        jsr     BattlePresentation_Entry_9A0B   ; 99C5 20 0B 9A                  ..
        lda     #$00                            ; 99C8 A9 00                    ..
        sta     $7C                             ; 99CA 85 7C                    .|
        sta     $7B                             ; 99CC 85 7B                    .{
        sta     $82                             ; 99CE 85 82                    ..
BattlePresentation_Branch_99D0:
        lda     $82                             ; 99D0 A5 82                    ..
        jsr     BattlePresentation_Entry_9B0D   ; 99D2 20 0D 9B                  ..
        bcc     BattlePresentation_Branch_99FA  ; 99D5 90 23                    .#
        lda     $75D3                           ; 99D7 AD D3 75                 ..u
        cmp     #$8F                            ; 99DA C9 8F                    ..
        bne     BattlePresentation_Branch_99E6  ; 99DC D0 08                    ..
        jsr     BattlePresentation_Entry_8866   ; 99DE 20 66 88                  f.
        cmp     $75E8                           ; 99E1 CD E8 75                 ..u
        bne     BattlePresentation_Branch_99FA  ; 99E4 D0 14                    ..
BattlePresentation_Branch_99E6:
        jsr     BattlePresentation_Entry_9A03   ; 99E6 20 03 9A                  ..
        ora     $7B                             ; 99E9 05 7B                    .{
        sta     $7B                             ; 99EB 85 7B                    .{
        dey                                     ; 99ED 88                       .
        bmi     BattlePresentation_Branch_99F8  ; 99EE 30 08                    0.
        jsr     BattlePresentation_Entry_9A03   ; 99F0 20 03 9A                  ..
        clc                                     ; 99F3 18                       .
        adc     $7B                             ; 99F4 65 7B                    e{
        sta     $7B                             ; 99F6 85 7B                    .{
BattlePresentation_Branch_99F8:
        inc     $7C                             ; 99F8 E6 7C                    .|
BattlePresentation_Branch_99FA:
        inc     $82                             ; 99FA E6 82                    ..
        lda     $82                             ; 99FC A5 82                    ..
        cmp     #$04                            ; 99FE C9 04                    ..
        bcc     BattlePresentation_Branch_99D0  ; 9A00 90 CE                    ..
        rts                                     ; 9A02 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9A03:
        lda     $82                             ; 9A03 A5 82                    ..
        asl     a                               ; 9A05 0A                       .
        tax                                     ; 9A06 AA                       .
        lda     $FF5E,x                         ; 9A07 BD 5E FF                 .^.
        rts                                     ; 9A0A 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9A0B:
        lda     #$00                            ; 9A0B A9 00                    ..
        sta     $8A                             ; 9A0D 85 8A                    ..
        sta     $8B                             ; 9A0F 85 8B                    ..
        sta     $8C                             ; 9A11 85 8C                    ..
        sta     $8D                             ; 9A13 85 8D                    ..
        sta     $8E                             ; 9A15 85 8E                    ..
        sta     $8F                             ; 9A17 85 8F                    ..
        sta     $90                             ; 9A19 85 90                    ..
        sta     $91                             ; 9A1B 85 91                    ..
        sta     $75C1                           ; 9A1D 8D C1 75                 ..u
        sta     $75C2                           ; 9A20 8D C2 75                 ..u
        sta     $75C3                           ; 9A23 8D C3 75                 ..u
        sta     $75C4                           ; 9A26 8D C4 75                 ..u
        sta     $75C5                           ; 9A29 8D C5 75                 ..u
        sta     $75C6                           ; 9A2C 8D C6 75                 ..u
        sta     $75C7                           ; 9A2F 8D C7 75                 ..u
        sta     $75C8                           ; 9A32 8D C8 75                 ..u
        lda     #$07                            ; 9A35 A9 07                    ..
        sta     $81                             ; 9A37 85 81                    ..
BattlePresentation_Branch_9A39:
        jsr     BattlePresentation_Entry_8D77   ; 9A39 20 77 8D                  w.
        ldy     #$00                            ; 9A3C A0 00                    ..
        jsr     BattlePresentation_Entry_9A50   ; 9A3E 20 50 9A                  P.
        ldy     #$08                            ; 9A41 A0 08                    ..
        jsr     BattlePresentation_Entry_9A50   ; 9A43 20 50 9A                  P.
        ldy     #$10                            ; 9A46 A0 10                    ..
        jsr     BattlePresentation_Entry_9A50   ; 9A48 20 50 9A                  P.
        dec     $81                             ; 9A4B C6 81                    ..
        bpl     BattlePresentation_Branch_9A39  ; 9A4D 10 EA                    ..
        rts                                     ; 9A4F 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9A50:
        lda     #$00                            ; 9A50 A9 00                    ..
        sta     $82                             ; 9A52 85 82                    ..
BattlePresentation_Branch_9A54:
        jsr     BattlePresentation_Entry_9AAA   ; 9A54 20 AA 9A                  ..
        iny                                     ; 9A57 C8                       .
        ldx     $81                             ; 9A58 A6 81                    ..
        lda     $FF5E,x                         ; 9A5A BD 5E FF                 .^.
        and     $7B                             ; 9A5D 25 7B                    %{
        beq     BattlePresentation_Branch_9AA0  ; 9A5F F0 3F                    .?
        dey                                     ; 9A61 88                       .
        lda     ($88),y                       ; 9A62 B1 88                    ..
        sta     $01                             ; 9A64 85 01                    ..
        sta     $03                             ; 9A66 85 03                    ..
        iny                                     ; 9A68 C8                       .
        lda     ($88),y                       ; 9A69 B1 88                    ..
        sta     $02                           ; 9A6B 85 02                    ..
        sta     $04                             ; 9A6D 85 04                    ..
        jsr     BattlePresentation_Entry_939A   ; 9A6F 20 9A 93                  ..
        ldx     #$01                            ; 9A72 A2 01                    ..
        jsr     BattlePresentation_Entry_819A   ; 9A74 20 9A 81                  ..
        jsr     BattlePresentation_Entry_937A   ; 9A77 20 7A 93                  z.
        ldx     #$03                            ; 9A7A A2 03                    ..
        jsr     BattlePresentation_Entry_8330   ; 9A7C 20 30 83                  0.
        lda     $82                             ; 9A7F A5 82                    ..
        asl     a                               ; 9A81 0A                       .
        tax                                     ; 9A82 AA                       .
        lda     $01                             ; 9A83 A5 01                    ..
        adc     $8A,x                           ; 9A85 75 8A                    u.
        sta     $8A,x                           ; 9A87 95 8A                    ..
        lda     $02                           ; 9A89 A5 02                    ..
        adc     $8B,x                           ; 9A8B 75 8B                    u.
        sta     $8B,x                           ; 9A8D 95 8B                    ..
        clc                                     ; 9A8F 18                       .
        lda     $75C1,x                         ; 9A90 BD C1 75                 ..u
        adc     $04                             ; 9A93 65 04                    e.
        sta     $75C1,x                         ; 9A95 9D C1 75                 ..u
        lda     $75C2,x                         ; 9A98 BD C2 75                 ..u
        adc     $19                             ; 9A9B 65 19                    e.
        sta     $75C2,x                         ; 9A9D 9D C2 75                 ..u
BattlePresentation_Branch_9AA0:
        iny                                     ; 9AA0 C8                       .
        inc     $82                             ; 9AA1 E6 82                    ..
        lda     $82                             ; 9AA3 A5 82                    ..
        cmp     #$04                            ; 9AA5 C9 04                    ..
        bcc     BattlePresentation_Branch_9A54  ; 9AA7 90 AB                    ..
        rts                                     ; 9AA9 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9AAA:
        tya                                     ; 9AAA 98                       .
        pha                                     ; 9AAB 48                       H
        jsr     BattlePresentation_Entry_9AB2   ; 9AAC 20 B2 9A                  ..
        pla                                     ; 9AAF 68                       h
        tay                                     ; 9AB0 A8                       .
        rts                                     ; 9AB1 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9AB2:
        jsr     BattlePresentation_Entry_93D0   ; 9AB2 20 D0 93                  ..
        bcc     BattlePresentation_Branch_9AD6  ; 9AB5 90 1F                    ..
        lda     $7348,x                         ; 9AB7 BD 48 73                 .Hs
        sta     $00                           ; 9ABA 85 00                    ..
        ldx     $75EA                           ; 9ABC AE EA 75                 ..u
        lda     $75EB                           ; 9ABF AD EB 75                 ..u
        bmi     BattlePresentation_Branch_9AD6  ; 9AC2 30 12                    0.
        and     #$70                            ; 9AC4 29 70                    )p
        cmp     #$20                            ; 9AC6 C9 20                    .
        beq     BattlePresentation_Branch_9ADC  ; 9AC8 F0 12                    ..
        cmp     #$10                            ; 9ACA C9 10                    ..
        beq     BattlePresentation_Branch_9AD6  ; 9ACC F0 08                    ..
        cpx     #$29                            ; 9ACE E0 29                    .)
        bcc     BattlePresentation_Branch_9AD6  ; 9AD0 90 04                    ..
        cpx     #$2C                            ; 9AD2 E0 2C                    .,
        bcc     BattlePresentation_Branch_9AE4  ; 9AD4 90 0E                    ..
BattlePresentation_Branch_9AD6:
        lda     #$FF                            ; 9AD6 A9 FF                    ..
        sta     $7B                             ; 9AD8 85 7B                    .{
        bne     BattlePresentation_Branch_9B09  ; 9ADA D0 2D                    .-
BattlePresentation_Branch_9ADC:
        cpx     #$53                            ; 9ADC E0 53                    .S
        beq     BattlePresentation_Branch_9AE4  ; 9ADE F0 04                    ..
        cpx     #$40                            ; 9AE0 E0 40                    .@
        bne     BattlePresentation_Branch_9AD6  ; 9AE2 D0 F2                    ..
BattlePresentation_Branch_9AE4:
        lda     $75EB                           ; 9AE4 AD EB 75                 ..u
        and     #$0F                            ; 9AE7 29 0F                    ).
        cmp     $82                             ; 9AE9 C5 82                    ..
        bne     BattlePresentation_Branch_9AD6  ; 9AEB D0 E9                    ..
        lda     #$00                            ; 9AED A9 00                    ..
        sta     $7B                             ; 9AEF 85 7B                    .{
        ldx     #$07                            ; 9AF1 A2 07                    ..
BattlePresentation_Branch_9AF3:
        lda     $734C,x                         ; 9AF3 BD 4C 73                 .Ls
        cmp     $735B                           ; 9AF6 CD 5B 73                 .[s
        bcc     BattlePresentation_Branch_9B06  ; 9AF9 90 0B                    ..
        cmp     $00                           ; 9AFB C5 00                    ..
        bcs     BattlePresentation_Branch_9B06  ; 9AFD B0 07                    ..
        lda     $FF5E,x                         ; 9AFF BD 5E FF                 .^.
        ora     $7B                             ; 9B02 05 7B                    .{
        sta     $7B                             ; 9B04 85 7B                    .{
BattlePresentation_Branch_9B06:
        dex                                     ; 9B06 CA                       .
        bpl     BattlePresentation_Branch_9AF3  ; 9B07 10 EA                    ..
BattlePresentation_Branch_9B09:
        lda     $7B                             ; 9B09 A5 7B                    .{
        rts                                     ; 9B0B 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9B0C:
        rts                                     ; 9B0C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9B0D:
        lda     $82                             ; 9B0D A5 82                    ..
        jsr     BattlePresentation_Entry_861C   ; 9B0F 20 1C 86                  ..
        bcc     BattlePresentation_Branch_9B0C  ; 9B12 90 F8                    ..
        ldy     #$00                            ; 9B14 A0 00                    ..
        lda     ($79),y                         ; 9B16 B1 79                    .y
        bpl     BattlePresentation_Branch_9B95  ; 9B18 10 7B                    .{
        lda     $75D2                           ; 9B1A AD D2 75                 ..u
        and     #$70                            ; 9B1D 29 70                    )p
        beq     BattlePresentation_Branch_9B39  ; 9B1F F0 18                    ..
        jsr     BattlePresentation_Entry_8866   ; 9B21 20 66 88                  f.
        cmp     $75E8                           ; 9B24 CD E8 75                 ..u
        beq     BattlePresentation_Branch_9B39  ; 9B27 F0 10                    ..
        jsr     BattlePresentation_Entry_89F5   ; 9B29 20 F5 89                  ..
        lda     $75F0                           ; 9B2C AD F0 75                 ..u
        bmi     BattlePresentation_Branch_9B39  ; 9B2F 30 08                    0.
        ldy     #$05                            ; 9B31 A0 05                    ..
        lda     ($79),y                         ; 9B33 B1 79                    .y
        and     #$C0                            ; 9B35 29 C0                    ).
        bne     BattlePresentation_Branch_9B95  ; 9B37 D0 5C                    .\
BattlePresentation_Branch_9B39:
        lda     $82                             ; 9B39 A5 82                    ..
        jsr     BattlePresentation_Entry_8866   ; 9B3B 20 66 88                  f.
        jsr     BattlePresentation_Entry_89F5   ; 9B3E 20 F5 89                  ..
        ldy     #$05                            ; 9B41 A0 05                    ..
        lda     ($79),y                         ; 9B43 B1 79                    .y
        and     #$04                            ; 9B45 29 04                    ).
        bne     BattlePresentation_Branch_9B95  ; 9B47 D0 4C                    .L
        lda     $82                             ; 9B49 A5 82                    ..
        jsr     BattlePresentation_Entry_8610   ; 9B4B 20 10 86                  ..
        jsr     BattlePresentation_Entry_9B97   ; 9B4E 20 97 9B                  ..
        bcc     BattlePresentation_Branch_9B95  ; 9B51 90 42                    .B
        lda     #$03                            ; 9B53 A9 03                    ..
        ldx     $6E80                           ; 9B55 AE 80 6E                 ..n
        cpx     #$03                            ; 9B58 E0 03                    ..
        beq     BattlePresentation_Branch_9B5E  ; 9B5A F0 02                    ..
        lda     #$04                            ; 9B5C A9 04                    ..
BattlePresentation_Branch_9B5E:
        ldx     #$02                            ; 9B5E A2 02                    ..
        jsr     UpperFixedEngine_Entry_C851     ; 9B60 20 51 C8                  Q.
        lda     $82                             ; 9B63 A5 82                    ..
        jsr     BattlePresentation_Entry_8610   ; 9B65 20 10 86                  ..
        lda     $82                             ; 9B68 A5 82                    ..
        asl     a                               ; 9B6A 0A                       .
        tax                                     ; 9B6B AA                       .
        sec                                     ; 9B6C 38                       8
        lda     $00                           ; 9B6D A5 00                    ..
        sbc     $8A,x                           ; 9B6F F5 8A                    ..
        sta     $04                             ; 9B71 85 04                    ..
        lda     $01                             ; 9B73 A5 01                    ..
        sbc     $8B,x                           ; 9B75 F5 8B                    ..
        sta     $05                             ; 9B77 85 05                    ..
        ldy     #$01                            ; 9B79 A0 01                    ..
        bcc     BattlePresentation_Branch_9B93  ; 9B7B 90 16                    ..
        lda     $04                             ; 9B7D A5 04                    ..
        sbc     $02                           ; 9B7F E5 02                    ..
        lda     $05                             ; 9B81 A5 05                    ..
        sbc     $03                             ; 9B83 E5 03                    ..
        bcs     BattlePresentation_Branch_9B95  ; 9B85 B0 0E                    ..
        lda     $82                             ; 9B87 A5 82                    ..
        jsr     BattlePresentation_Entry_861C   ; 9B89 20 1C 86                  ..
        jsr     BattlePresentation_Entry_9B97   ; 9B8C 20 97 9B                  ..
        bcc     BattlePresentation_Branch_9B95  ; 9B8F 90 04                    ..
        ldy     #$00                            ; 9B91 A0 00                    ..
BattlePresentation_Branch_9B93:
        sec                                     ; 9B93 38                       8
        rts                                     ; 9B94 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9B95:
        clc                                     ; 9B95 18                       .
        rts                                     ; 9B96 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9B97:
        ldx     #$00                            ; 9B97 A2 00                    ..
        ldy     #$02                            ; 9B99 A0 02                    ..
        jsr     BattlePresentation_Entry_8176   ; 9B9B 20 76 81                  v.
        jsr     BattlePresentation_Entry_83AA   ; 9B9E 20 AA 83                  ..
        lda     #$0D                            ; 9BA1 A9 0D                    ..
        cmp     $00                           ; 9BA3 C5 00                    ..
        rts                                     ; 9BA5 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9BA6:
        jsr     BattlePresentation_Entry_9201   ; 9BA6 20 01 92                  ..
        lda     #$07                            ; 9BA9 A9 07                    ..
        sta     $81                             ; 9BAB 85 81                    ..
BattlePresentation_Branch_9BAD:
        jsr     BattlePresentation_Entry_9276   ; 9BAD 20 76 92                  v.
        jsr     BattlePresentation_Entry_93AB   ; 9BB0 20 AB 93                  ..
        jsr     BattlePresentation_Entry_9CA8   ; 9BB3 20 A8 9C                  ..
        dec     $81                             ; 9BB6 C6 81                    ..
        bpl     BattlePresentation_Branch_9BAD  ; 9BB8 10 F3                    ..
        rts                                     ; 9BBA 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9BBB:
        jsr     BattlePresentation_Entry_9201   ; 9BBB 20 01 92                  ..
        lda     #$03                            ; 9BBE A9 03                    ..
        sta     $8D                             ; 9BC0 85 8D                    ..
BattlePresentation_Branch_9BC2:
        jsr     BattlePresentation_Entry_93B4   ; 9BC2 20 B4 93                  ..
        jsr     BattlePresentation_Entry_9C3A   ; 9BC5 20 3A 9C                  :.
        dec     $8D                             ; 9BC8 C6 8D                    ..
        bpl     BattlePresentation_Branch_9BC2  ; 9BCA 10 F6                    ..
        rts                                     ; 9BCC 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9BCD:
        jsr     BattlePresentation_Entry_9201   ; 9BCD 20 01 92                  ..
        lda     #$07                            ; 9BD0 A9 07                    ..
        sta     $81                             ; 9BD2 85 81                    ..
BattlePresentation_Branch_9BD4:
        jsr     BattlePresentation_Entry_9276   ; 9BD4 20 76 92                  v.
        jsr     BattlePresentation_Entry_93AB   ; 9BD7 20 AB 93                  ..
        jsr     BattlePresentation_Entry_9D4B   ; 9BDA 20 4B 9D                  K.
        dec     $81                             ; 9BDD C6 81                    ..
        bpl     BattlePresentation_Branch_9BD4  ; 9BDF 10 F3                    ..
        rts                                     ; 9BE1 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9BE2:
        lda     $75E8                           ; 9BE2 AD E8 75                 ..u
        jsr     BattlePresentation_Entry_89F5   ; 9BE5 20 F5 89                  ..
        ldy     #$05                            ; 9BE8 A0 05                    ..
        lda     ($79),y                         ; 9BEA B1 79                    .y
        and     #$C0                            ; 9BEC 29 C0                    ).
        bne     BattlePresentation_Branch_9C39  ; 9BEE D0 49                    .I
        jsr     BattlePresentation_Entry_9201   ; 9BF0 20 01 92                  ..
        lda     #$07                            ; 9BF3 A9 07                    ..
        sta     $81                             ; 9BF5 85 81                    ..
        lda     #$00                            ; 9BF7 A9 00                    ..
        sta     $00                           ; 9BF9 85 00                    ..
        sta     $01                             ; 9BFB 85 01                    ..
BattlePresentation_Branch_9BFD:
        jsr     BattlePresentation_Entry_8D77   ; 9BFD 20 77 8D                  w.
        ldy     #$08                            ; 9C00 A0 08                    ..
        jsr     BattlePresentation_Entry_9477   ; 9C02 20 77 94                  w.
        ldy     #$18                            ; 9C05 A0 18                    ..
        jsr     BattlePresentation_Entry_9477   ; 9C07 20 77 94                  w.
        ldy     #$1C                            ; 9C0A A0 1C                    ..
        jsr     BattlePresentation_Entry_9477   ; 9C0C 20 77 94                  w.
        ldy     #$20                            ; 9C0F A0 20                    .
        jsr     BattlePresentation_Entry_9477   ; 9C11 20 77 94                  w.
        dec     $81                             ; 9C14 C6 81                    ..
        bpl     BattlePresentation_Branch_9BFD  ; 9C16 10 E5                    ..
        ldx     #$00                            ; 9C18 A2 00                    ..
        jsr     BattlePresentation_Entry_8216   ; 9C1A 20 16 82                  ..
        lda     #$10                            ; 9C1D A9 10                    ..
        sta     $8C                             ; 9C1F 85 8C                    ..
        sta     $75D1                           ; 9C21 8D D1 75                 ..u
        lda     #$00                            ; 9C24 A9 00                    ..
        sta     $75D2                           ; 9C26 8D D2 75                 ..u
        lda     $75F0                           ; 9C29 AD F0 75                 ..u
        bpl     BattlePresentation_Branch_9C36  ; 9C2C 10 08                    ..
        lda     $75D2                           ; 9C2E AD D2 75                 ..u
        ora     #$20                            ; 9C31 09 20                    .
        sta     $75D2                           ; 9C33 8D D2 75                 ..u
BattlePresentation_Branch_9C36:
        jmp     BattlePresentation_Branch_ACA3  ; 9C36 4C A3 AC                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9C39:
        rts                                     ; 9C39 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9C3A:
        lda     #$00                            ; 9C3A A9 00                    ..
        sta     $75DF                           ; 9C3C 8D DF 75                 ..u
        sta     $75E0                           ; 9C3F 8D E0 75                 ..u
        lda     #$07                            ; 9C42 A9 07                    ..
        sta     $81                             ; 9C44 85 81                    ..
BattlePresentation_Branch_9C46:
        jsr     BattlePresentation_Entry_8602   ; 9C46 20 02 86                  ..
        bne     BattlePresentation_Branch_9C77  ; 9C49 D0 2C                    .,
        lda     $75F0                           ; 9C4B AD F0 75                 ..u
        bmi     BattlePresentation_Branch_9C60  ; 9C4E 30 10                    0.
        lda     $75D3                           ; 9C50 AD D3 75                 ..u
        cmp     #$19                            ; 9C53 C9 19                    ..
        bne     BattlePresentation_Branch_9C60  ; 9C55 D0 09                    ..
        ldx     $81                             ; 9C57 A6 81                    ..
        lda     #$40                            ; 9C59 A9 40                    .@
        jsr     BattlePresentation_Entry_85EE   ; 9C5B 20 EE 85                  ..
        bne     BattlePresentation_Branch_9C88  ; 9C5E D0 28                    .(
BattlePresentation_Branch_9C60:
        jsr     BattlePresentation_Entry_9276   ; 9C60 20 76 92                  v.
        jsr     BattlePresentation_Entry_9C89   ; 9C63 20 89 9C                  ..
        clc                                     ; 9C66 18                       .
        lda     $00                           ; 9C67 A5 00                    ..
        adc     $75DF                           ; 9C69 6D DF 75                 m.u
        sta     $75DF                           ; 9C6C 8D DF 75                 ..u
        lda     $01                             ; 9C6F A5 01                    ..
        adc     $75E0                           ; 9C71 6D E0 75                 m.u
        sta     $75E0                           ; 9C74 8D E0 75                 ..u
BattlePresentation_Branch_9C77:
        dec     $81                             ; 9C77 C6 81                    ..
        bpl     BattlePresentation_Branch_9C46  ; 9C79 10 CB                    ..
        lda     $75DF                           ; 9C7B AD DF 75                 ..u
        sta     $00                           ; 9C7E 85 00                    ..
        lda     $75E0                           ; 9C80 AD E0 75                 ..u
        sta     $01                             ; 9C83 85 01                    ..
        jmp     BattlePresentation_Branch_ACA3  ; 9C85 4C A3 AC                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9C88:
        rts                                     ; 9C88 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9C89:
        lda     $75D3                           ; 9C89 AD D3 75                 ..u
        cmp     #$17                            ; 9C8C C9 17                    ..
        beq     BattlePresentation_Entry_9CB2   ; 9C8E F0 22                    ."
        cmp     #$19                            ; 9C90 C9 19                    ..
        beq     BattlePresentation_Branch_9D04  ; 9C92 F0 70                    .p
        cmp     #$88                            ; 9C94 C9 88                    ..
        beq     BattlePresentation_Branch_9D04  ; 9C96 F0 6C                    .l
        cmp     #$9D                            ; 9C98 C9 9D                    ..
        beq     BattlePresentation_Branch_9D04  ; 9C9A F0 68                    .h
        cmp     #$8D                            ; 9C9C C9 8D                    ..
        beq     BattlePresentation_Entry_9CDC   ; 9C9E F0 3C                    .<
        cmp     #$1A                            ; 9CA0 C9 1A                    ..
        beq     BattlePresentation_Branch_9CA5  ; 9CA2 F0 01                    ..
        rts                                     ; 9CA4 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9CA5:
        jmp     BattlePresentation_Branch_9D2D  ; 9CA5 4C 2D 9D                 L-.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9CA8:
        jsr     BattlePresentation_Entry_9CB2   ; 9CA8 20 B2 9C                  ..
        lda     $0F                             ; 9CAB A5 0F                    ..
        bpl     BattlePresentation_Branch_9CD1  ; 9CAD 10 22                    ."
        jmp     BattlePresentation_Branch_ACA3  ; 9CAF 4C A3 AC                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9CB2:
        jsr     BattlePresentation_Entry_96C6   ; 9CB2 20 C6 96                  ..
        bcc     BattlePresentation_Branch_9CD1  ; 9CB5 90 1A                    ..
        ldy     #$05                            ; 9CB7 A0 05                    ..
        lda     ($86),y                       ; 9CB9 B1 86                    ..
        lsr     a                               ; 9CBB 4A                       J
        bcs     BattlePresentation_Branch_9CD1  ; 9CBC B0 13                    ..
        dec     $0F                             ; 9CBE C6 0F                    ..
        lda     #$20                            ; 9CC0 A9 20                    .
        sta     $75D1                           ; 9CC2 8D D1 75                 ..u
        jsr     BattlePresentation_Entry_97A3   ; 9CC5 20 A3 97                  ..
        jsr     BattlePresentation_Entry_97C0   ; 9CC8 20 C0 97                  ..
        jsr     BattlePresentation_Entry_97D7   ; 9CCB 20 D7 97                  ..
        jsr     BattlePresentation_Entry_9800   ; 9CCE 20 00 98                  ..
BattlePresentation_Branch_9CD1:
        rts                                     ; 9CD1 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9CD2:
        jsr     BattlePresentation_Entry_9CDC   ; 9CD2 20 DC 9C                  ..
        lda     $0F                             ; 9CD5 A5 0F                    ..
        bpl     BattlePresentation_Branch_9D03  ; 9CD7 10 2A                    .*
        jmp     BattlePresentation_Branch_ACA3  ; 9CD9 4C A3 AC                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9CDC:
        jsr     BattlePresentation_Entry_96C6   ; 9CDC 20 C6 96                  ..
        bcc     BattlePresentation_Branch_9D03  ; 9CDF 90 22                    ."
        ldy     #$05                            ; 9CE1 A0 05                    ..
        lda     ($86),y                       ; 9CE3 B1 86                    ..
        lsr     a                               ; 9CE5 4A                       J
        bcs     BattlePresentation_Branch_9D03  ; 9CE6 B0 1B                    ..
        iny                                     ; 9CE8 C8                       .
        iny                                     ; 9CE9 C8                       .
        lda     ($86),y                       ; 9CEA B1 86                    ..
        and     #$F0                            ; 9CEC 29 F0                    ).
        bne     BattlePresentation_Branch_9D03  ; 9CEE D0 13                    ..
        dec     $0F                             ; 9CF0 C6 0F                    ..
        lda     #$60                            ; 9CF2 A9 60                    .`
        sta     $75D1                           ; 9CF4 8D D1 75                 ..u
        jsr     BattlePresentation_Entry_97A3   ; 9CF7 20 A3 97                  ..
        jsr     BattlePresentation_Entry_97C0   ; 9CFA 20 C0 97                  ..
        jsr     BattlePresentation_Entry_97D7   ; 9CFD 20 D7 97                  ..
        jsr     BattlePresentation_Entry_9800   ; 9D00 20 00 98                  ..
BattlePresentation_Branch_9D03:
        rts                                     ; 9D03 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9D04:
        jsr     BattlePresentation_Entry_96C6   ; 9D04 20 C6 96                  ..
        bcc     BattlePresentation_Branch_9D2C  ; 9D07 90 23                    .#
        ldy     #$05                            ; 9D09 A0 05                    ..
        lda     ($86),y                       ; 9D0B B1 86                    ..
        and     #$08                            ; 9D0D 29 08                    ).
        bne     BattlePresentation_Branch_9D2C  ; 9D0F D0 1B                    ..
        dec     $0F                             ; 9D11 C6 0F                    ..
        lda     #$10                            ; 9D13 A9 10                    ..
        sta     $75D1                           ; 9D15 8D D1 75                 ..u
        jsr     BattlePresentation_Entry_8D77   ; 9D18 20 77 8D                  w.
        ldy     #$36                            ; 9D1B A0 36                    .6
        lda     ($88),y                       ; 9D1D B1 88                    ..
        sta     $00                           ; 9D1F 85 00                    ..
        iny                                     ; 9D21 C8                       .
        lda     ($88),y                       ; 9D22 B1 88                    ..
        sta     $01                             ; 9D24 85 01                    ..
        jsr     BattlePresentation_Entry_97D7   ; 9D26 20 D7 97                  ..
        jsr     BattlePresentation_Entry_9800   ; 9D29 20 00 98                  ..
BattlePresentation_Branch_9D2C:
        rts                                     ; 9D2C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9D2D:
        jsr     BattlePresentation_Entry_96C6   ; 9D2D 20 C6 96                  ..
        bcc     BattlePresentation_Branch_9D4A  ; 9D30 90 18                    ..
        ldy     #$05                            ; 9D32 A0 05                    ..
        lda     ($86),y                       ; 9D34 B1 86                    ..
        and     #$10                            ; 9D36 29 10                    ).
        bne     BattlePresentation_Branch_9D4A  ; 9D38 D0 10                    ..
        dec     $0F                             ; 9D3A C6 0F                    ..
        lda     #$10                            ; 9D3C A9 10                    ..
        sta     $75D1                           ; 9D3E 8D D1 75                 ..u
        jsr     BattlePresentation_Entry_9D76   ; 9D41 20 76 9D                  v.
        jsr     BattlePresentation_Entry_97D7   ; 9D44 20 D7 97                  ..
        jsr     BattlePresentation_Entry_9800   ; 9D47 20 00 98                  ..
BattlePresentation_Branch_9D4A:
        rts                                     ; 9D4A 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9D4B:
        jsr     BattlePresentation_Entry_9D55   ; 9D4B 20 55 9D                  U.
        lda     $0F                             ; 9D4E A5 0F                    ..
        bpl     BattlePresentation_Branch_9D75  ; 9D50 10 23                    .#
        jmp     BattlePresentation_Branch_ACA3  ; 9D52 4C A3 AC                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9D55:
        jsr     BattlePresentation_Entry_96C6   ; 9D55 20 C6 96                  ..
        bcc     BattlePresentation_Branch_9D75  ; 9D58 90 1B                    ..
        ldy     #$05                            ; 9D5A A0 05                    ..
        lda     ($86),y                       ; 9D5C B1 86                    ..
        and     #$04                            ; 9D5E 29 04                    ).
        bne     BattlePresentation_Branch_9D75  ; 9D60 D0 13                    ..
        dec     $0F                             ; 9D62 C6 0F                    ..
        lda     #$10                            ; 9D64 A9 10                    ..
        sta     $75D1                           ; 9D66 8D D1 75                 ..u
        jsr     BattlePresentation_Entry_97A3   ; 9D69 20 A3 97                  ..
        jsr     BattlePresentation_Entry_97C0   ; 9D6C 20 C0 97                  ..
        jsr     BattlePresentation_Entry_97D7   ; 9D6F 20 D7 97                  ..
        jsr     BattlePresentation_Entry_9800   ; 9D72 20 00 98                  ..
BattlePresentation_Branch_9D75:
        rts                                     ; 9D75 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9D76:
        jsr     BattlePresentation_Entry_8D77   ; 9D76 20 77 8D                  w.
        lda     #$00                            ; 9D79 A9 00                    ..
        sta     $00                           ; 9D7B 85 00                    ..
        sta     $01                             ; 9D7D 85 01                    ..
        ldx     #$03                            ; 9D7F A2 03                    ..
        ldy     #$00                            ; 9D81 A0 00                    ..
BattlePresentation_Branch_9D83:
        clc                                     ; 9D83 18                       .
        lda     ($88),y                       ; 9D84 B1 88                    ..
        adc     $00                           ; 9D86 65 00                    e.
        sta     $00                           ; 9D88 85 00                    ..
        iny                                     ; 9D8A C8                       .
        lda     ($88),y                       ; 9D8B B1 88                    ..
        adc     $01                             ; 9D8D 65 01                    e.
        sta     $01                             ; 9D8F 85 01                    ..
        iny                                     ; 9D91 C8                       .
        dex                                     ; 9D92 CA                       .
        bpl     BattlePresentation_Branch_9D83  ; 9D93 10 EE                    ..
        lda     #$0A                            ; 9D95 A9 0A                    ..
        ldx     #$00                            ; 9D97 A2 00                    ..
        jmp     BattlePresentation_Entry_819A   ; 9D99 4C 9A 81                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9D9C:
        lda     #$00                            ; 9D9C A9 00                    ..
        sta     $75D2                           ; 9D9E 8D D2 75                 ..u
        jsr     BattlePresentation_Entry_9DB0   ; 9DA1 20 B0 9D                  ..
        lda     $8A                             ; 9DA4 A5 8A                    ..
        beq     BattlePresentation_Branch_9DAF  ; 9DA6 F0 07                    ..
        lda     #$02                            ; 9DA8 A9 02                    ..
        sta     $8C                             ; 9DAA 85 8C                    ..
        jsr     BattlePresentation_Entry_AC63   ; 9DAC 20 63 AC                  c.
BattlePresentation_Branch_9DAF:
        rts                                     ; 9DAF 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9DB0:
        lda     #$00                            ; 9DB0 A9 00                    ..
        sta     $82                             ; 9DB2 85 82                    ..
        sta     $8A                             ; 9DB4 85 8A                    ..
BattlePresentation_Branch_9DB6:
        jsr     BattlePresentation_Entry_8A6B   ; 9DB6 20 6B 8A                  k.
        bcc     BattlePresentation_Branch_9DE3  ; 9DB9 90 28                    .(
        pha                                     ; 9DBB 48                       H
        ldy     #$00                            ; 9DBC A0 00                    ..
        lda     ($79),y                         ; 9DBE B1 79                    .y
        bpl     BattlePresentation_Branch_9DE2  ; 9DC0 10 20                    .
        asl     a                               ; 9DC2 0A                       .
        bpl     BattlePresentation_Branch_9DE2  ; 9DC3 10 1D                    ..
        pla                                     ; 9DC5 68                       h
        lda     $75D2                           ; 9DC6 AD D2 75                 ..u
        and     #$70                            ; 9DC9 29 70                    )p
        cmp     #$20                            ; 9DCB C9 20                    .
        beq     BattlePresentation_Branch_9DDA  ; 9DCD F0 0B                    ..
        jsr     BattlePresentation_Entry_89F5   ; 9DCF 20 F5 89                  ..
        ldy     #$05                            ; 9DD2 A0 05                    ..
        lda     ($79),y                         ; 9DD4 B1 79                    .y
        and     #$C0                            ; 9DD6 29 C0                    ).
        bne     BattlePresentation_Branch_9DE3  ; 9DD8 D0 09                    ..
BattlePresentation_Branch_9DDA:
        lda     $82                             ; 9DDA A5 82                    ..
        sta     $7B                             ; 9DDC 85 7B                    .{
        inc     $8A                             ; 9DDE E6 8A                    ..
        bpl     BattlePresentation_Branch_9DE3  ; 9DE0 10 01                    ..
BattlePresentation_Branch_9DE2:
        pla                                     ; 9DE2 68                       h
BattlePresentation_Branch_9DE3:
        inc     $82                             ; 9DE3 E6 82                    ..
        lda     $82                             ; 9DE5 A5 82                    ..
        cmp     #$04                            ; 9DE7 C9 04                    ..
        bcc     BattlePresentation_Branch_9DB6  ; 9DE9 90 CB                    ..
        rts                                     ; 9DEB 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9DEC:
        lda     $75DB                           ; 9DEC AD DB 75                 ..u
        cmp     #$98                            ; 9DEF C9 98                    ..
        beq     BattlePresentation_Branch_9E30  ; 9DF1 F0 3D                    .=
        jsr     BattlePresentation_Entry_9406   ; 9DF3 20 06 94                  ..
        and     #$7F                            ; 9DF6 29 7F                    ).
        cmp     #$01                            ; 9DF8 C9 01                    ..
        beq     BattlePresentation_Branch_9E30  ; 9DFA F0 34                    .4
        pha                                     ; 9DFC 48                       H
        lda     #$20                            ; 9DFD A9 20                    .
        sta     $75D2                           ; 9DFF 8D D2 75                 ..u
        jsr     BattlePresentation_Entry_9DB0   ; 9E02 20 B0 9D                  ..
        pla                                     ; 9E05 68                       h
        cmp     #$02                            ; 9E06 C9 02                    ..
        bne     BattlePresentation_Branch_9E12  ; 9E08 D0 08                    ..
        lda     $8A                             ; 9E0A A5 8A                    ..
        beq     BattlePresentation_Branch_9E30  ; 9E0C F0 22                    ."
        cmp     #$02                            ; 9E0E C9 02                    ..
        bcs     BattlePresentation_Branch_9E29  ; 9E10 B0 17                    ..
BattlePresentation_Branch_9E12:
        lda     $8A                             ; 9E12 A5 8A                    ..
        beq     BattlePresentation_Branch_9E30  ; 9E14 F0 1A                    ..
        lda     $7B                             ; 9E16 A5 7B                    .{
        sta     $82                             ; 9E18 85 82                    ..
        jsr     BattlePresentation_Entry_8AB5   ; 9E1A 20 B5 8A                  ..
        ora     #$20                            ; 9E1D 09 20                    .
        sta     $75D2                           ; 9E1F 8D D2 75                 ..u
        lda     #$02                            ; 9E22 A9 02                    ..
        sta     $8C                             ; 9E24 85 8C                    ..
        jmp     BattlePresentation_Entry_AC63   ; 9E26 4C 63 AC                 Lc.
; ----------------------------------------------------------------------------
BattlePresentation_Branch_9E29:
        lda     $75DB                           ; 9E29 AD DB 75                 ..u
        cmp     #$2E                            ; 9E2C C9 2E                    ..
        bne     BattlePresentation_Branch_9E12  ; 9E2E D0 E2                    ..
BattlePresentation_Branch_9E30:
        rts                                     ; 9E30 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9E31:
        lda     #$00                            ; 9E31 A9 00                    ..
        bne     $9E37                           ; 9E33 D0 02                    ..
BattlePresentation_Entry_9E35:
        lda     #$01                            ; 9E35 A9 01                    ..
        sta     $8C                             ; 9E37 85 8C                    ..
        lda     #$00                            ; 9E39 A9 00                    ..
        sta     $82                             ; 9E3B 85 82                    ..
        sta     $8A                             ; 9E3D 85 8A                    ..
        sta     $75D2                           ; 9E3F 8D D2 75                 ..u
        sta     $00                           ; 9E42 85 00                    ..
        sta     $01                             ; 9E44 85 01                    ..
BattlePresentation_Branch_9E46:
        jsr     BattlePresentation_Entry_8A6B   ; 9E46 20 6B 8A                  k.
        bcc     BattlePresentation_Branch_9E7B  ; 9E49 90 30                    .0
        ldy     #$00                            ; 9E4B A0 00                    ..
        lda     ($79),y                         ; 9E4D B1 79                    .y
        bmi     BattlePresentation_Branch_9E7B  ; 9E4F 30 2A                    0*
        lda     $82                             ; 9E51 A5 82                    ..
        jsr     BattlePresentation_Entry_861C   ; 9E53 20 1C 86                  ..
        sec                                     ; 9E56 38                       8
        lda     $00                           ; 9E57 A5 00                    ..
        sbc     $02                           ; 9E59 E5 02                    ..
        lda     $01                             ; 9E5B A5 01                    ..
        sbc     $03                             ; 9E5D E5 03                    ..
        bcs     BattlePresentation_Branch_9E79  ; 9E5F B0 18                    ..
        lda     $02                           ; 9E61 A5 02                    ..
        sta     $00                           ; 9E63 85 00                    ..
        lda     $03                             ; 9E65 A5 03                    ..
        sta     $01                             ; 9E67 85 01                    ..
        jsr     BattlePresentation_Entry_8AB5   ; 9E69 20 B5 8A                  ..
        sta     $75D2                           ; 9E6C 8D D2 75                 ..u
        ldx     $75F0                           ; 9E6F AE F0 75                 ..u
        bpl     BattlePresentation_Branch_9E79  ; 9E72 10 05                    ..
        ora     #$20                            ; 9E74 09 20                    .
        sta     $75D2                           ; 9E76 8D D2 75                 ..u
BattlePresentation_Branch_9E79:
        inc     $8A                             ; 9E79 E6 8A                    ..
BattlePresentation_Branch_9E7B:
        inc     $82                             ; 9E7B E6 82                    ..
        lda     $82                             ; 9E7D A5 82                    ..
        cmp     #$04                            ; 9E7F C9 04                    ..
        bcc     BattlePresentation_Branch_9E46  ; 9E81 90 C3                    ..
        lda     $8A                             ; 9E83 A5 8A                    ..
        beq     BattlePresentation_Branch_9E8A  ; 9E85 F0 03                    ..
        jsr     BattlePresentation_Entry_AC63   ; 9E87 20 63 AC                  c.
BattlePresentation_Branch_9E8A:
        rts                                     ; 9E8A 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9E8B:
        lda     $6E80                           ; 9E8B AD 80 6E                 ..n
        cmp     #$03                            ; 9E8E C9 03                    ..
        bne     BattlePresentation_Branch_9EC2  ; 9E90 D0 30                    .0
        lda     $75DC                           ; 9E92 AD DC 75                 ..u
        cmp     #$0C                            ; 9E95 C9 0C                    ..
        bcs     BattlePresentation_Branch_9EC2  ; 9E97 B0 29                    .)
        lda     #$00                            ; 9E99 A9 00                    ..
        sta     $75D2                           ; 9E9B 8D D2 75                 ..u
        sta     $82                             ; 9E9E 85 82                    ..
        sta     $8A                             ; 9EA0 85 8A                    ..
BattlePresentation_Branch_9EA2:
        jsr     BattlePresentation_Entry_8A6B   ; 9EA2 20 6B 8A                  k.
        bcc     BattlePresentation_Branch_9EAF  ; 9EA5 90 08                    ..
        ldy     #$00                            ; 9EA7 A0 00                    ..
        lda     ($79),y                         ; 9EA9 B1 79                    .y
        bmi     BattlePresentation_Branch_9EAF  ; 9EAB 30 02                    0.
        inc     $8A                             ; 9EAD E6 8A                    ..
BattlePresentation_Branch_9EAF:
        inc     $82                             ; 9EAF E6 82                    ..
        lda     $82                             ; 9EB1 A5 82                    ..
        cmp     #$04                            ; 9EB3 C9 04                    ..
        bcc     BattlePresentation_Branch_9EA2  ; 9EB5 90 EB                    ..
        lda     $8A                             ; 9EB7 A5 8A                    ..
        cmp     #$03                            ; 9EB9 C9 03                    ..
        bne     BattlePresentation_Branch_9EC2  ; 9EBB D0 05                    ..
        sta     $8C                             ; 9EBD 85 8C                    ..
        jsr     BattlePresentation_Entry_AC63   ; 9EBF 20 63 AC                  c.
BattlePresentation_Branch_9EC2:
        rts                                     ; 9EC2 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9EC3:
        lda     $75DC                           ; 9EC3 AD DC 75                 ..u
        cmp     #$14                            ; 9EC6 C9 14                    ..
        bcs     BattlePresentation_Branch_9F23  ; 9EC8 B0 59                    .Y
        sta     $00                           ; 9ECA 85 00                    ..
        lda     #$14                            ; 9ECC A9 14                    ..
        jsr     BattlePresentation_Entry_9F4E   ; 9ECE 20 4E 9F                  N.
        lda     #$0C                            ; 9ED1 A9 0C                    ..
        jsr     MultiplyPointerWord             ; 9ED3 20 27 C8                  '.
        lda     $00                           ; 9ED6 A5 00                    ..
        jsr     UpperFixedEngine_Entry_C891     ; 9ED8 20 91 C8                  ..
        cmp     $00                           ; 9EDB C5 00                    ..
        bcs     BattlePresentation_Branch_9F23  ; 9EDD B0 44                    .D
        ldx     #$FF                            ; 9EDF A2 FF                    ..
        stx     $75D2                           ; 9EE1 8E D2 75                 ..u
        inx                                     ; 9EE4 E8                       .
        stx     $94                             ; 9EE5 86 94                    ..
        stx     $95                             ; 9EE7 86 95                    ..
        lda     #$07                            ; 9EE9 A9 07                    ..
        sta     $81                             ; 9EEB 85 81                    ..
BattlePresentation_Branch_9EED:
        jsr     BattlePresentation_Entry_9F24   ; 9EED 20 24 9F                  $.
        lda     $00                           ; 9EF0 A5 00                    ..
        ora     $01                             ; 9EF2 05 01                    ..
        beq     BattlePresentation_Branch_9F0D  ; 9EF4 F0 17                    ..
        lda     $00                           ; 9EF6 A5 00                    ..
        sbc     $94                             ; 9EF8 E5 94                    ..
        lda     $01                             ; 9EFA A5 01                    ..
        sbc     $95                             ; 9EFC E5 95                    ..
        bcc     BattlePresentation_Branch_9F0D  ; 9EFE 90 0D                    ..
        lda     $00                           ; 9F00 A5 00                    ..
        sta     $94                             ; 9F02 85 94                    ..
        lda     $01                             ; 9F04 A5 01                    ..
        sta     $94                             ; 9F06 85 94                    ..
        lda     $81                             ; 9F08 A5 81                    ..
        sta     $75D2                           ; 9F0A 8D D2 75                 ..u
BattlePresentation_Branch_9F0D:
        dec     $81                             ; 9F0D C6 81                    ..
        bpl     BattlePresentation_Branch_9EED  ; 9F0F 10 DC                    ..
        lda     $75D2                           ; 9F11 AD D2 75                 ..u
        cmp     #$FF                            ; 9F14 C9 FF                    ..
        beq     BattlePresentation_Branch_9F23  ; 9F16 F0 0B                    ..
        ora     #$80                            ; 9F18 09 80                    ..
        sta     $75DA                           ; 9F1A 8D DA 75                 ..u
        lda     $75D3                           ; 9F1D AD D3 75                 ..u
        sta     $75DB                           ; 9F20 8D DB 75                 ..u
BattlePresentation_Branch_9F23:
        rts                                     ; 9F23 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9F24:
        jsr     BattlePresentation_Entry_96C6   ; 9F24 20 C6 96                  ..
        bcc     BattlePresentation_Branch_9F4D  ; 9F27 90 24                    .$
        ldy     #$0C                            ; 9F29 A0 0C                    ..
        lda     ($86),y                       ; 9F2B B1 86                    ..
        beq     BattlePresentation_Branch_9F4D  ; 9F2D F0 1E                    ..
        lda     ($86),y                       ; 9F2F B1 86                    ..
        sta     $00                           ; 9F31 85 00                    ..
        cmp     #$FF                            ; 9F33 C9 FF                    ..
        bne     BattlePresentation_Branch_9F3B  ; 9F35 D0 04                    ..
        lda     #$F0                            ; 9F37 A9 F0                    ..
        sta     $00                           ; 9F39 85 00                    ..
BattlePresentation_Branch_9F3B:
        sec                                     ; 9F3B 38                       8
        lda     #$FF                            ; 9F3C A9 FF                    ..
        sbc     $00                           ; 9F3E E5 00                    ..
        pha                                     ; 9F40 48                       H
        jsr     BattlePresentation_Entry_9276   ; 9F41 20 76 92                  v.
        jsr     BattlePresentation_Entry_9F4E   ; 9F44 20 4E 9F                  N.
        pla                                     ; 9F47 68                       h
        ldx     #$00                            ; 9F48 A2 00                    ..
        jsr     MultiplyPointerWord             ; 9F4A 20 27 C8                  '.
BattlePresentation_Branch_9F4D:
        rts                                     ; 9F4D 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9F4E:
        sec                                     ; 9F4E 38                       8
        sbc     $00                           ; 9F4F E5 00                    ..
        sta     $00                           ; 9F51 85 00                    ..
        lda     #$00                            ; 9F53 A9 00                    ..
        sta     $01                             ; 9F55 85 01                    ..
        ldx     #$00                            ; 9F57 A2 00                    ..
        rts                                     ; 9F59 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9F5A:
        jsr     BattlePresentation_Entry_A3D9   ; 9F5A 20 D9 A3                  ..
        bcc     BattlePresentation_Branch_9F75  ; 9F5D 90 16                    ..
        jsr     BattlePresentation_Entry_A3F1   ; 9F5F 20 F1 A3                  ..
        lda     #$07                            ; 9F62 A9 07                    ..
        sta     $81                             ; 9F64 85 81                    ..
BattlePresentation_Branch_9F66:
        jsr     BattlePresentation_Entry_A3B2   ; 9F66 20 B2 A3                  ..
        bcc     BattlePresentation_Branch_9F71  ; 9F69 90 06                    ..
        jsr     BattlePresentation_Entry_93AB   ; 9F6B 20 AB 93                  ..
        jsr     BattlePresentation_Entry_ACB1   ; 9F6E 20 B1 AC                  ..
BattlePresentation_Branch_9F71:
        dec     $81                             ; 9F71 C6 81                    ..
        bpl     BattlePresentation_Branch_9F66  ; 9F73 10 F1                    ..
BattlePresentation_Branch_9F75:
        rts                                     ; 9F75 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9F76:
        jsr     BattlePresentation_Entry_A3D9   ; 9F76 20 D9 A3                  ..
        bcc     BattlePresentation_Branch_9F8C  ; 9F79 90 11                    ..
        jsr     BattlePresentation_Entry_A3F1   ; 9F7B 20 F1 A3                  ..
        lda     #$03                            ; 9F7E A9 03                    ..
        sta     $8D                             ; 9F80 85 8D                    ..
BattlePresentation_Branch_9F82:
        jsr     BattlePresentation_Entry_93B4   ; 9F82 20 B4 93                  ..
        jsr     BattlePresentation_Entry_A366   ; 9F85 20 66 A3                  f.
        dec     $8D                             ; 9F88 C6 8D                    ..
        bpl     BattlePresentation_Branch_9F82  ; 9F8A 10 F6                    ..
BattlePresentation_Branch_9F8C:
        rts                                     ; 9F8C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9F8D:
        jsr     BattlePresentation_Entry_9406   ; 9F8D 20 06 94                  ..
        and     #$7F                            ; 9F90 29 7F                    ).
        cmp     #$04                            ; 9F92 C9 04                    ..
        beq     BattlePresentation_Branch_9F9E  ; 9F94 F0 08                    ..
        jsr     BattlePresentation_Entry_A2E7   ; 9F96 20 E7 A2                  ..
        bcc     BattlePresentation_Branch_9F9E  ; 9F99 90 03                    ..
        jsr     BattlePresentation_Entry_A4DC   ; 9F9B 20 DC A4                  ..
BattlePresentation_Branch_9F9E:
        rts                                     ; 9F9E 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9F9F:
        jsr     BattlePresentation_Entry_9406   ; 9F9F 20 06 94                  ..
        and     #$7F                            ; 9FA2 29 7F                    ).
        ldx     $6E80                           ; 9FA4 AE 80 6E                 ..n
        cpx     #$03                            ; 9FA7 E0 03                    ..
        beq     BattlePresentation_Branch_9FAF  ; 9FA9 F0 04                    ..
        cmp     #$04                            ; 9FAB C9 04                    ..
        beq     BattlePresentation_Branch_9FB7  ; 9FAD F0 08                    ..
BattlePresentation_Branch_9FAF:
        jsr     BattlePresentation_Entry_A276   ; 9FAF 20 76 A2                  v.
        bcc     BattlePresentation_Branch_9FB7  ; 9FB2 90 03                    ..
        jsr     BattlePresentation_Entry_A4DC   ; 9FB4 20 DC A4                  ..
BattlePresentation_Branch_9FB7:
        rts                                     ; 9FB7 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9FB8:
        ldx     $6E80                           ; 9FB8 AE 80 6E                 ..n
        dex                                     ; 9FBB CA                       .
        beq     BattlePresentation_Branch_9FC6  ; 9FBC F0 08                    ..
        jsr     BattlePresentation_Entry_A1F2   ; 9FBE 20 F2 A1                  ..
        bcc     BattlePresentation_Branch_9FC6  ; 9FC1 90 03                    ..
        jsr     BattlePresentation_Entry_A4DC   ; 9FC3 20 DC A4                  ..
BattlePresentation_Branch_9FC6:
        rts                                     ; 9FC6 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9FC7:
        jsr     BattlePresentation_Entry_A0E5   ; 9FC7 20 E5 A0                  ..
        bcc     BattlePresentation_Branch_9FE1  ; 9FCA 90 15                    ..
        jsr     BattlePresentation_Entry_A113   ; 9FCC 20 13 A1                  ..
        lda     $7D                             ; 9FCF A5 7D                    .}
        bmi     BattlePresentation_Branch_9FE1  ; 9FD1 30 0E                    0.
        sta     $82                             ; 9FD3 85 82                    ..
        jsr     BattlePresentation_Entry_8AB5   ; 9FD5 20 B5 8A                  ..
        sta     $75DA                           ; 9FD8 8D DA 75                 ..u
        lda     $75D3                           ; 9FDB AD D3 75                 ..u
        sta     $75DB                           ; 9FDE 8D DB 75                 ..u
BattlePresentation_Branch_9FE1:
        rts                                     ; 9FE1 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_9FE2:
        jsr     BattlePresentation_Entry_9406   ; 9FE2 20 06 94                  ..
        and     #$7F                            ; 9FE5 29 7F                    ).
        cmp     #$04                            ; 9FE7 C9 04                    ..
        beq     BattlePresentation_Branch_A00C  ; 9FE9 F0 21                    .!
        jsr     BattlePresentation_Entry_A085   ; 9FEB 20 85 A0                  ..
        bcc     BattlePresentation_Branch_A00C  ; 9FEE 90 1C                    ..
        lda     #$00                            ; 9FF0 A9 00                    ..
        sta     $82                             ; 9FF2 85 82                    ..
BattlePresentation_Branch_9FF4:
        jsr     BattlePresentation_Entry_A043   ; 9FF4 20 43 A0                  C.
        bcc     BattlePresentation_Branch_A004  ; 9FF7 90 0B                    ..
        jsr     BattlePresentation_Entry_8AB5   ; 9FF9 20 B5 8A                  ..
        sta     $75D2                           ; 9FFC 8D D2 75                 ..u
        bcc     BattlePresentation_Branch_A004  ; 9FFF 90 03                    ..
        jsr     BattlePresentation_Entry_AD0E   ; A001 20 0E AD                  ..
BattlePresentation_Branch_A004:
        inc     $82                             ; A004 E6 82                    ..
        lda     $82                             ; A006 A5 82                    ..
        cmp     #$04                            ; A008 C9 04                    ..
        bcc     BattlePresentation_Branch_9FF4  ; A00A 90 E8                    ..
BattlePresentation_Branch_A00C:
        rts                                     ; A00C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A00D:
        lda     $75DB                           ; A00D AD DB 75                 ..u
        cmp     #$21                            ; A010 C9 21                    .!
        bne     BattlePresentation_Branch_A042  ; A012 D0 2E                    ..
        lda     #$00                            ; A014 A9 00                    ..
        sta     $7B                             ; A016 85 7B                    .{
        sta     $82                             ; A018 85 82                    ..
BattlePresentation_Branch_A01A:
        jsr     BattlePresentation_Entry_A043   ; A01A 20 43 A0                  C.
        bcc     BattlePresentation_Branch_A029  ; A01D 90 0A                    ..
        jsr     BattlePresentation_Entry_8AB5   ; A01F 20 B5 8A                  ..
        sta     $75D2                           ; A022 8D D2 75                 ..u
        bcc     BattlePresentation_Branch_A029  ; A025 90 02                    ..
        inc     $7B                             ; A027 E6 7B                    .{
BattlePresentation_Branch_A029:
        inc     $82                             ; A029 E6 82                    ..
        lda     $82                             ; A02B A5 82                    ..
        cmp     #$04                            ; A02D C9 04                    ..
        bcc     BattlePresentation_Branch_A01A  ; A02F 90 E9                    ..
        lda     $7B                             ; A031 A5 7B                    .{
        cmp     #$02                            ; A033 C9 02                    ..
        bcc     BattlePresentation_Branch_A042  ; A035 90 0B                    ..
        lda     $75D3                           ; A037 AD D3 75                 ..u
        sta     $75DB                           ; A03A 8D DB 75                 ..u
        lda     #$00                            ; A03D A9 00                    ..
        sta     $75DA                           ; A03F 8D DA 75                 ..u
BattlePresentation_Branch_A042:
        rts                                     ; A042 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A043:
        jsr     BattlePresentation_Entry_8866   ; A043 20 66 88                  f.
        bcc     BattlePresentation_Branch_A083  ; A046 90 3B                    .;
        sta     $00                           ; A048 85 00                    ..
        jsr     BattlePresentation_Entry_89B6   ; A04A 20 B6 89                  ..
        ldy     #$00                            ; A04D A0 00                    ..
        lda     ($79),y                         ; A04F B1 79                    .y
        bpl     BattlePresentation_Branch_A083  ; A051 10 30                    .0
        lda     $00                           ; A053 A5 00                    ..
        jsr     BattlePresentation_Entry_89F5   ; A055 20 F5 89                  ..
        ldy     #$05                            ; A058 A0 05                    ..
        lda     ($79),y                         ; A05A B1 79                    .y
        and     #$C4                            ; A05C 29 C4                    ).
        bne     BattlePresentation_Branch_A083  ; A05E D0 23                    .#
        jsr     BattlePresentation_Entry_A0C0   ; A060 20 C0 A0                  ..
        lda     $82                             ; A063 A5 82                    ..
        jsr     BattlePresentation_Entry_861C   ; A065 20 1C 86                  ..
        ldx     #$00                            ; A068 A2 00                    ..
        ldy     #$02                            ; A06A A0 02                    ..
        jsr     BattlePresentation_Entry_8176   ; A06C 20 76 81                  v.
        jsr     BattlePresentation_Entry_83AA   ; A06F 20 AA 83                  ..
        lda     $01                             ; A072 A5 01                    ..
        beq     BattlePresentation_Branch_A07A  ; A074 F0 04                    ..
        lda     #$FF                            ; A076 A9 FF                    ..
        sta     $00                           ; A078 85 00                    ..
BattlePresentation_Branch_A07A:
        lda     $00                           ; A07A A5 00                    ..
        ldx     $6E80                           ; A07C AE 80 6E                 ..n
        cmp     $BB76,x                         ; A07F DD 76 BB                 .v.
        rts                                     ; A082 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A083:
        clc                                     ; A083 18                       .
        rts                                     ; A084 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A085:
        jsr     BattlePresentation_Entry_A0A5   ; A085 20 A5 A0                  ..
        lda     $77D0                           ; A088 AD D0 77                 ..w
        sta     $00                           ; A08B 85 00                    ..
        lda     $77D1                           ; A08D AD D1 77                 ..w
        sta     $01                             ; A090 85 01                    ..
        ldy     #$00                            ; A092 A0 00                    ..
        ldx     #$94                            ; A094 A2 94                    ..
        jsr     BattlePresentation_Entry_8176   ; A096 20 76 81                  v.
        jsr     BattlePresentation_Entry_83AA   ; A099 20 AA 83                  ..
        lda     $00                           ; A09C A5 00                    ..
        ldx     $6E80                           ; A09E AE 80 6E                 ..n
        cmp     $BB6F,x                         ; A0A1 DD 6F BB                 .o.
        rts                                     ; A0A4 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A0A5:
        lda     #$00                            ; A0A5 A9 00                    ..
        sta     $94                             ; A0A7 85 94                    ..
        sta     $95                             ; A0A9 85 95                    ..
        lda     #$07                            ; A0AB A9 07                    ..
        sta     $81                             ; A0AD 85 81                    ..
BattlePresentation_Branch_A0AF:
        jsr     BattlePresentation_Entry_9D76   ; A0AF 20 76 9D                  v.
        lda     $00                           ; A0B2 A5 00                    ..
        ldy     $01                             ; A0B4 A4 01                    ..
        ldx     #$94                            ; A0B6 A2 94                    ..
        jsr     AddWordToPointer                ; A0B8 20 1D C8                  ..
        dec     $81                             ; A0BB C6 81                    ..
        bpl     BattlePresentation_Branch_A0AF  ; A0BD 10 F0                    ..
        rts                                     ; A0BF 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A0C0:
        lda     #$00                            ; A0C0 A9 00                    ..
        sta     $00                           ; A0C2 85 00                    ..
        sta     $01                             ; A0C4 85 01                    ..
        lda     #$07                            ; A0C6 A9 07                    ..
        sta     $81                             ; A0C8 85 81                    ..
BattlePresentation_Branch_A0CA:
        jsr     BattlePresentation_Entry_8D77   ; A0CA 20 77 8D                  w.
        lda     $82                             ; A0CD A5 82                    ..
        asl     a                               ; A0CF 0A                       .
        adc     #$00                            ; A0D0 69 00                    i.
        tay                                     ; A0D2 A8                       .
        lda     ($88),y                       ; A0D3 B1 88                    ..
        adc     $00                           ; A0D5 65 00                    e.
        sta     $00                           ; A0D7 85 00                    ..
        iny                                     ; A0D9 C8                       .
        lda     ($88),y                       ; A0DA B1 88                    ..
        adc     $01                             ; A0DC 65 01                    e.
        sta     $01                             ; A0DE 85 01                    ..
        dec     $81                             ; A0E0 C6 81                    ..
        bpl     BattlePresentation_Branch_A0CA  ; A0E2 10 E6                    ..
        rts                                     ; A0E4 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A0E5:
        lda     #$00                            ; A0E5 A9 00                    ..
        sta     $7C                             ; A0E7 85 7C                    .|
        lda     #$07                            ; A0E9 A9 07                    ..
        sta     $81                             ; A0EB 85 81                    ..
BattlePresentation_Branch_A0ED:
        jsr     BattlePresentation_Entry_96C6   ; A0ED 20 C6 96                  ..
        bcc     BattlePresentation_Branch_A0FB  ; A0F0 90 09                    ..
        ldx     $81                             ; A0F2 A6 81                    ..
        lda     $FF5E,x                         ; A0F4 BD 5E FF                 .^.
        ora     $7C                             ; A0F7 05 7C                    .|
        sta     $7C                             ; A0F9 85 7C                    .|
BattlePresentation_Branch_A0FB:
        dec     $81                             ; A0FB C6 81                    ..
        bpl     BattlePresentation_Branch_A0ED  ; A0FD 10 EE                    ..
        lda     #$30                            ; A0FF A9 30                    .0
        sta     $94                             ; A101 85 94                    ..
        lda     $7C                             ; A103 A5 7C                    .|
        beq     BattlePresentation_Branch_A10A  ; A105 F0 03                    ..
        jsr     BattlePresentation_Entry_A42F   ; A107 20 2F A4                  /.
BattlePresentation_Branch_A10A:
        lda     $94                             ; A10A A5 94                    ..
        ldx     $6E80                           ; A10C AE 80 6E                 ..n
        cmp     $BB68,x                         ; A10F DD 68 BB                 .h.
        rts                                     ; A112 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A113:
        jsr     BattlePresentation_Entry_A1B8   ; A113 20 B8 A1                  ..
        ldx     #$FF                            ; A116 A2 FF                    ..
        stx     $7D                             ; A118 86 7D                    .}
        inx                                     ; A11A E8                       .
        stx     $82                             ; A11B 86 82                    ..
        stx     $7B                             ; A11D 86 7B                    .{
        stx     $7C                             ; A11F 86 7C                    .|
BattlePresentation_Branch_A121:
        jsr     BattlePresentation_Entry_8866   ; A121 20 66 88                  f.
        sta     $8A                             ; A124 85 8A                    ..
        bcc     BattlePresentation_Branch_A190  ; A126 90 68                    .h
        jsr     BattlePresentation_Entry_89B6   ; A128 20 B6 89                  ..
        ldy     #$00                            ; A12B A0 00                    ..
        lda     ($79),y                         ; A12D B1 79                    .y
        bpl     BattlePresentation_Branch_A190  ; A12F 10 5F                    ._
        asl     a                               ; A131 0A                       .
        bmi     BattlePresentation_Branch_A190  ; A132 30 5C                    0\
        lda     $8A                             ; A134 A5 8A                    ..
        jsr     BattlePresentation_Entry_89F5   ; A136 20 F5 89                  ..
        ldy     #$05                            ; A139 A0 05                    ..
        lda     ($79),y                         ; A13B B1 79                    .y
        and     #$34                            ; A13D 29 34                    )4
        bne     BattlePresentation_Branch_A190  ; A13F D0 4F                    .O
        lda     ($79),y                         ; A141 B1 79                    .y
        and     #$C0                            ; A143 29 C0                    ).
        beq     BattlePresentation_Branch_A14E  ; A145 F0 07                    ..
        lda     $8A                             ; A147 A5 8A                    ..
        cmp     $75E8                           ; A149 CD E8 75                 ..u
        bne     BattlePresentation_Branch_A190  ; A14C D0 42                    .B
BattlePresentation_Branch_A14E:
        jsr     BattlePresentation_Entry_A199   ; A14E 20 99 A1                  ..
        ora     $02                           ; A151 05 02                    ..
        beq     BattlePresentation_Branch_A190  ; A153 F0 3B                    .;
        ldx     #$02                            ; A155 A2 02                    ..
        ldy     #$94                            ; A157 A0 94                    ..
        jsr     BattlePresentation_Entry_8176   ; A159 20 76 81                  v.
        jsr     BattlePresentation_Entry_83AA   ; A15C 20 AA 83                  ..
        lda     $03                             ; A15F A5 03                    ..
        bne     BattlePresentation_Branch_A190  ; A161 D0 2D                    .-
        lda     $BB99                           ; A163 AD 99 BB                 ...
        asl     a                               ; A166 0A                       .
        cmp     $02                           ; A167 C5 02                    ..
        bcc     BattlePresentation_Branch_A190  ; A169 90 25                    .%
        lda     $02                           ; A16B A5 02                    ..
        ldx     $6E80                           ; A16D AE 80 6E                 ..n
        cmp     $BB7D,x                         ; A170 DD 7D BB                 .}.
        bcc     BattlePresentation_Branch_A190  ; A173 90 1B                    ..
        ldy     #$01                            ; A175 A0 01                    ..
        sec                                     ; A177 38                       8
        lda     ($79),y                         ; A178 B1 79                    .y
        sbc     $7B                             ; A17A E5 7B                    .{
        iny                                     ; A17C C8                       .
        lda     ($79),y                         ; A17D B1 79                    .y
        sbc     $7C                             ; A17F E5 7C                    .|
        bcc     BattlePresentation_Branch_A190  ; A181 90 0D                    ..
        lda     ($79),y                         ; A183 B1 79                    .y
        sta     $7C                             ; A185 85 7C                    .|
        dey                                     ; A187 88                       .
        lda     ($79),y                         ; A188 B1 79                    .y
        sta     $7B                             ; A18A 85 7B                    .{
        lda     $82                             ; A18C A5 82                    ..
        sta     $7D                             ; A18E 85 7D                    .}
BattlePresentation_Branch_A190:
        inc     $82                             ; A190 E6 82                    ..
        lda     $82                             ; A192 A5 82                    ..
        cmp     #$04                            ; A194 C9 04                    ..
        bcc     BattlePresentation_Branch_A121  ; A196 90 89                    ..
        rts                                     ; A198 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A199:
        ldy     #$01                            ; A199 A0 01                    ..
        lda     ($79),y                         ; A19B B1 79                    .y
        sta     $0C                             ; A19D 85 0C                    ..
        iny                                     ; A19F C8                       .
        lda     ($79),y                         ; A1A0 B1 79                    .y
        sta     $0D                             ; A1A2 85 0D                    ..
        lda     $8B                             ; A1A4 A5 8B                    ..
        sta     $0E                             ; A1A6 85 0E                    ..
        lda     $8C                             ; A1A8 A5 8C                    ..
        sta     $0F                             ; A1AA 85 0F                    ..
        jsr     BattlePresentation_Entry_8823   ; A1AC 20 23 88                  #.
        lda     $8D                             ; A1AF A5 8D                    ..
        sta     $02                           ; A1B1 85 02                    ..
        lda     $8E                             ; A1B3 A5 8E                    ..
        sta     $03                             ; A1B5 85 03                    ..
        rts                                     ; A1B7 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A1B8:
        ldx     #$00                            ; A1B8 A2 00                    ..
        stx     $8D                             ; A1BA 86 8D                    ..
        stx     $8E                             ; A1BC 86 8E                    ..
BattlePresentation_Branch_A1BE:
        txa                                     ; A1BE 8A                       .
        pha                                     ; A1BF 48                       H
        jsr     BattlePresentation_Entry_86C7   ; A1C0 20 C7 86                  ..
        ldy     #$06                            ; A1C3 A0 06                    ..
        lda     ($86),y                       ; A1C5 B1 86                    ..
        bpl     BattlePresentation_Branch_A1EA  ; A1C7 10 21                    .!
        asl     a                               ; A1C9 0A                       .
        bpl     BattlePresentation_Branch_A1EA  ; A1CA 10 1E                    ..
        sec                                     ; A1CC 38                       8
        lda     $8D                             ; A1CD A5 8D                    ..
        sbc     $00                           ; A1CF E5 00                    ..
        lda     $8E                             ; A1D1 A5 8E                    ..
        sbc     $01                             ; A1D3 E5 01                    ..
        bcs     BattlePresentation_Branch_A1EA  ; A1D5 B0 13                    ..
        lda     $00                           ; A1D7 A5 00                    ..
        sta     $8D                             ; A1D9 85 8D                    ..
        lda     $01                             ; A1DB A5 01                    ..
        sta     $8E                             ; A1DD 85 8E                    ..
        ldy     #$03                            ; A1DF A0 03                    ..
        lda     ($86),y                       ; A1E1 B1 86                    ..
        sta     $8B                             ; A1E3 85 8B                    ..
        iny                                     ; A1E5 C8                       .
        lda     ($86),y                       ; A1E6 B1 86                    ..
        sta     $8C                             ; A1E8 85 8C                    ..
BattlePresentation_Branch_A1EA:
        pla                                     ; A1EA 68                       h
        tax                                     ; A1EB AA                       .
        inx                                     ; A1EC E8                       .
        cpx     #$08                            ; A1ED E0 08                    ..
        bcc     BattlePresentation_Branch_A1BE  ; A1EF 90 CD                    ..
        rts                                     ; A1F1 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A1F2:
        lda     $7206                           ; A1F2 AD 06 72                 ..r
        cmp     #$D2                            ; A1F5 C9 D2                    ..
        bne     BattlePresentation_Branch_A208  ; A1F7 D0 0F                    ..
        ldx     #$00                            ; A1F9 A2 00                    ..
        stx     $81                             ; A1FB 86 81                    ..
        jsr     BattlePresentation_Entry_899C   ; A1FD 20 9C 89                  ..
        ldy     #$05                            ; A200 A0 05                    ..
        lda     ($86),y                       ; A202 B1 86                    ..
        and     #$C0                            ; A204 29 C0                    ).
        bne     BattlePresentation_Branch_A23B  ; A206 D0 33                    .3
BattlePresentation_Branch_A208:
        lda     #$00                            ; A208 A9 00                    ..
        sta     $7B                             ; A20A 85 7B                    .{
        sta     $7C                             ; A20C 85 7C                    .|
        sta     $7D                             ; A20E 85 7D                    .}
        ldx     #$03                            ; A210 A2 03                    ..
BattlePresentation_Branch_A212:
        lda     $6E45,x                         ; A212 BD 45 6E                 .En
        cmp     #$5C                            ; A215 C9 5C                    .\
        beq     BattlePresentation_Branch_A23D  ; A217 F0 24                    .$
        cmp     #$75                            ; A219 C9 75                    .u
        beq     BattlePresentation_Branch_A241  ; A21B F0 24                    .$
        cmp     #$A8                            ; A21D C9 A8                    ..
        beq     BattlePresentation_Branch_A245  ; A21F F0 24                    .$
BattlePresentation_Branch_A221:
        dex                                     ; A221 CA                       .
        bpl     BattlePresentation_Branch_A212  ; A222 10 EE                    ..
        lda     $7D                             ; A224 A5 7D                    .}
        bne     BattlePresentation_Branch_A23B  ; A226 D0 13                    ..
        ldx     $6E80                           ; A228 AE 80 6E                 ..n
        lda     $7B                             ; A22B A5 7B                    .{
        cmp     $BB5A,x                         ; A22D DD 5A BB                 .Z.
        bcs     BattlePresentation_Branch_A23B  ; A230 B0 09                    ..
        lda     $7C                             ; A232 A5 7C                    .|
        cmp     $BB61,x                         ; A234 DD 61 BB                 .a.
        bcs     BattlePresentation_Branch_A23B  ; A237 B0 02                    ..
        clc                                     ; A239 18                       .
        rts                                     ; A23A 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A23B:
        sec                                     ; A23B 38                       8
        rts                                     ; A23C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A23D:
        ldy     #$7B                            ; A23D A0 7B                    .{
        bne     BattlePresentation_Branch_A247  ; A23F D0 06                    ..
BattlePresentation_Branch_A241:
        ldy     #$7C                            ; A241 A0 7C                    .|
        bne     BattlePresentation_Branch_A247  ; A243 D0 02                    ..
BattlePresentation_Branch_A245:
        ldy     #$7D                            ; A245 A0 7D                    .}
BattlePresentation_Branch_A247:
        txa                                     ; A247 8A                       .
        pha                                     ; A248 48                       H
        sty     $01                             ; A249 84 01                    ..
        sta     $00                           ; A24B 85 00                    ..
        ldx     #$07                            ; A24D A2 07                    ..
        stx     $81                             ; A24F 86 81                    ..
BattlePresentation_Branch_A251:
        ldx     $81                             ; A251 A6 81                    ..
        jsr     BattlePresentation_Entry_899C   ; A253 20 9C 89                  ..
        ldy     #$06                            ; A256 A0 06                    ..
        lda     ($86),y                       ; A258 B1 86                    ..
        bpl     BattlePresentation_Branch_A26D  ; A25A 10 11                    ..
        asl     a                               ; A25C 0A                       .
        bpl     BattlePresentation_Branch_A26D  ; A25D 10 0E                    ..
        ldy     #$0D                            ; A25F A0 0D                    ..
        lda     ($86),y                       ; A261 B1 86                    ..
        and     #$03                            ; A263 29 03                    ).
        cmp     $00                           ; A265 C5 00                    ..
        bne     BattlePresentation_Branch_A26D  ; A267 D0 04                    ..
        ldx     $01                             ; A269 A6 01                    ..
        inc     $00,x                         ; A26B F6 00                    ..
BattlePresentation_Branch_A26D:
        dec     $81                             ; A26D C6 81                    ..
        bpl     BattlePresentation_Branch_A251  ; A26F 10 E0                    ..
        pla                                     ; A271 68                       h
        tax                                     ; A272 AA                       .
        jmp     BattlePresentation_Branch_A221  ; A273 4C 21 A2                 L!.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A276:
        lda     $72E7                           ; A276 AD E7 72                 ..r
        and     #$10                            ; A279 29 10                    ).
        bne     BattlePresentation_Branch_A2E5  ; A27B D0 68                    .h
        lda     #$00                            ; A27D A9 00                    ..
        sta     $00                           ; A27F 85 00                    ..
        sta     $01                             ; A281 85 01                    ..
        sta     $02                           ; A283 85 02                    ..
        sta     $03                             ; A285 85 03                    ..
        lda     #$07                            ; A287 A9 07                    ..
        sta     $81                             ; A289 85 81                    ..
BattlePresentation_Branch_A28B:
        ldx     $81                             ; A28B A6 81                    ..
        jsr     BattlePresentation_Entry_899C   ; A28D 20 9C 89                  ..
        ldy     #$06                            ; A290 A0 06                    ..
        lda     ($86),y                       ; A292 B1 86                    ..
        bpl     BattlePresentation_Branch_A2C8  ; A294 10 32                    .2
        asl     a                               ; A296 0A                       .
        bpl     BattlePresentation_Branch_A2C8  ; A297 10 2F                    ./
        asl     a                               ; A299 0A                       .
        bmi     BattlePresentation_Branch_A2C8  ; A29A 30 2C                    0,
        inc     $03                             ; A29C E6 03                    ..
        lda     $81                             ; A29E A5 81                    ..
        asl     a                               ; A2A0 0A                       .
        sta     $04                             ; A2A1 85 04                    ..
        asl     a                               ; A2A3 0A                       .
        adc     $04                             ; A2A4 65 04                    e.
        tay                                     ; A2A6 A8                       .
        ldx     #$05                            ; A2A7 A2 05                    ..
BattlePresentation_Branch_A2A9:
        lda     BattleActionIds,y               ; A2A9 B9 8C 6D                 ..m
        cmp     #$3C                            ; A2AC C9 3C                    .<
        bcc     BattlePresentation_Branch_A2C4  ; A2AE 90 14                    ..
        cmp     #$42                            ; A2B0 C9 42                    .B
        bcs     BattlePresentation_Branch_A2C4  ; A2B2 B0 10                    ..
        lda     BattleActionWeights,y           ; A2B4 B9 C2 6D                 ..m
        beq     BattlePresentation_Branch_A2C4  ; A2B7 F0 0B                    ..
        clc                                     ; A2B9 18                       .
        adc     $00                           ; A2BA 65 00                    e.
        sta     $00                           ; A2BC 85 00                    ..
        lda     $01                             ; A2BE A5 01                    ..
        adc     #$00                            ; A2C0 69 00                    i.
        sta     $01                             ; A2C2 85 01                    ..
BattlePresentation_Branch_A2C4:
        iny                                     ; A2C4 C8                       .
        dex                                     ; A2C5 CA                       .
        bpl     BattlePresentation_Branch_A2A9  ; A2C6 10 E1                    ..
BattlePresentation_Branch_A2C8:
        dec     $81                             ; A2C8 C6 81                    ..
        bpl     BattlePresentation_Branch_A28B  ; A2CA 10 BF                    ..
        ldx     #$00                            ; A2CC A2 00                    ..
        ldy     #$02                            ; A2CE A0 02                    ..
        jsr     BattlePresentation_Entry_8176   ; A2D0 20 76 81                  v.
        jsr     BattlePresentation_Entry_83AA   ; A2D3 20 AA 83                  ..
        lda     $01                             ; A2D6 A5 01                    ..
        bne     BattlePresentation_Branch_A2E3  ; A2D8 D0 09                    ..
        lda     $00                           ; A2DA A5 00                    ..
        ldx     $6E80                           ; A2DC AE 80 6E                 ..n
        cmp     $BB53,x                         ; A2DF DD 53 BB                 .S.
        rts                                     ; A2E2 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A2E3:
        sec                                     ; A2E3 38                       8
        rts                                     ; A2E4 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A2E5:
        clc                                     ; A2E5 18                       .
        rts                                     ; A2E6 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A2E7:
        lda     #$00                            ; A2E7 A9 00                    ..
        sta     $82                             ; A2E9 85 82                    ..
        sta     $7B                             ; A2EB 85 7B                    .{
        sta     $7C                             ; A2ED 85 7C                    .|
        sta     $7D                             ; A2EF 85 7D                    .}
        sta     $7E                             ; A2F1 85 7E                    .~
BattlePresentation_Branch_A2F3:
        jsr     BattlePresentation_Entry_8842   ; A2F3 20 42 88                  B.
        bcc     BattlePresentation_Branch_A319  ; A2F6 90 21                    .!
        lda     $82                             ; A2F8 A5 82                    ..
        jsr     BattlePresentation_Entry_8A6B   ; A2FA 20 6B 8A                  k.
        ldy     #$00                            ; A2FD A0 00                    ..
        lda     ($79),y                         ; A2FF B1 79                    .y
        bpl     BattlePresentation_Branch_A319  ; A301 10 16                    ..
        asl     a                               ; A303 0A                       .
        bmi     BattlePresentation_Branch_A319  ; A304 30 13                    0.
        sec                                     ; A306 38                       8
        lda     $7B                             ; A307 A5 7B                    .{
        sbc     $0C                             ; A309 E5 0C                    ..
        lda     $7C                             ; A30B A5 7C                    .|
        sbc     $0D                             ; A30D E5 0D                    ..
        bcs     BattlePresentation_Branch_A319  ; A30F B0 08                    ..
        lda     $0C                             ; A311 A5 0C                    ..
        sta     $7B                             ; A313 85 7B                    .{
        lda     $0D                             ; A315 A5 0D                    ..
        sta     $7C                             ; A317 85 7C                    .|
BattlePresentation_Branch_A319:
        inc     $82                             ; A319 E6 82                    ..
        lda     $82                             ; A31B A5 82                    ..
        cmp     #$04                            ; A31D C9 04                    ..
        bcc     BattlePresentation_Branch_A2F3  ; A31F 90 D2                    ..
        lda     #$07                            ; A321 A9 07                    ..
        sta     $81                             ; A323 85 81                    ..
BattlePresentation_Branch_A325:
        ldx     $81                             ; A325 A6 81                    ..
        jsr     BattlePresentation_Entry_8856   ; A327 20 56 88                  V.
        ldy     #$06                            ; A32A A0 06                    ..
        lda     ($86),y                       ; A32C B1 86                    ..
        bpl     BattlePresentation_Branch_A349  ; A32E 10 19                    ..
        asl     a                               ; A330 0A                       .
        bpl     BattlePresentation_Branch_A349  ; A331 10 16                    ..
        asl     a                               ; A333 0A                       .
        bmi     BattlePresentation_Branch_A349  ; A334 30 13                    0.
        sec                                     ; A336 38                       8
        lda     $7D                             ; A337 A5 7D                    .}
        sbc     $0E                             ; A339 E5 0E                    ..
        lda     $7E                             ; A33B A5 7E                    .~
        sbc     $0F                             ; A33D E5 0F                    ..
        bcs     BattlePresentation_Branch_A349  ; A33F B0 08                    ..
        lda     $0E                             ; A341 A5 0E                    ..
        sta     $7D                             ; A343 85 7D                    .}
        lda     $0F                             ; A345 A5 0F                    ..
        sta     $7E                             ; A347 85 7E                    .~
BattlePresentation_Branch_A349:
        dec     $81                             ; A349 C6 81                    ..
        bpl     BattlePresentation_Branch_A325  ; A34B 10 D8                    ..
        ldx     #$7D                            ; A34D A2 7D                    .}
        ldy     #$7B                            ; A34F A0 7B                    .{
        jsr     BattlePresentation_Entry_83AA   ; A351 20 AA 83                  ..
        lda     $7E                             ; A354 A5 7E                    .~
        bne     BattlePresentation_Branch_A364  ; A356 D0 0C                    ..
        lda     $7D                             ; A358 A5 7D                    .}
        cmp     #$04                            ; A35A C9 04                    ..
        bcc     BattlePresentation_Branch_A364  ; A35C 90 06                    ..
        cmp     #$08                            ; A35E C9 08                    ..
        bcs     BattlePresentation_Branch_A364  ; A360 B0 02                    ..
        sec                                     ; A362 38                       8
        rts                                     ; A363 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A364:
        clc                                     ; A364 18                       .
        rts                                     ; A365 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A366:
        lda     #$00                            ; A366 A9 00                    ..
        sta     $75E1                           ; A368 8D E1 75                 ..u
        sta     $75E2                           ; A36B 8D E2 75                 ..u
        sta     $75E3                           ; A36E 8D E3 75                 ..u
        lda     #$07                            ; A371 A9 07                    ..
        sta     $81                             ; A373 85 81                    ..
BattlePresentation_Branch_A375:
        jsr     BattlePresentation_Entry_8602   ; A375 20 02 86                  ..
        bne     BattlePresentation_Branch_A393  ; A378 D0 19                    ..
        jsr     BattlePresentation_Entry_A3B2   ; A37A 20 B2 A3                  ..
        bcc     BattlePresentation_Branch_A393  ; A37D 90 14                    ..
        clc                                     ; A37F 18                       .
        lda     $0E                             ; A380 A5 0E                    ..
        adc     $75E1                           ; A382 6D E1 75                 m.u
        sta     $75E1                           ; A385 8D E1 75                 ..u
        lda     $0F                             ; A388 A5 0F                    ..
        adc     $75E2                           ; A38A 6D E2 75                 m.u
        sta     $75E2                           ; A38D 8D E2 75                 ..u
        jsr     BattlePresentation_Entry_A4C8   ; A390 20 C8 A4                  ..
BattlePresentation_Branch_A393:
        dec     $81                             ; A393 C6 81                    ..
        bpl     BattlePresentation_Branch_A375  ; A395 10 DE                    ..
        lda     $75E2                           ; A397 AD E2 75                 ..u
        lsr     a                               ; A39A 4A                       J
        sta     $0F                             ; A39B 85 0F                    ..
        lda     $75E1                           ; A39D AD E1 75                 ..u
        ror     a                               ; A3A0 6A                       j
        sta     $0E                             ; A3A1 85 0E                    ..
        ora     $0F                             ; A3A3 05 0F                    ..
        beq     BattlePresentation_Branch_A3B1  ; A3A5 F0 0A                    ..
        lda     $75E3                           ; A3A7 AD E3 75                 ..u
        beq     BattlePresentation_Branch_A3B1  ; A3AA F0 05                    ..
        sta     $8C                             ; A3AC 85 8C                    ..
        jsr     BattlePresentation_Entry_ACB1   ; A3AE 20 B1 AC                  ..
BattlePresentation_Branch_A3B1:
        rts                                     ; A3B1 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A3B2:
        jsr     BattlePresentation_Entry_9276   ; A3B2 20 76 92                  v.
        jsr     BattlePresentation_Entry_96C6   ; A3B5 20 C6 96                  ..
        bcc     BattlePresentation_Branch_A3D7  ; A3B8 90 1D                    ..
        ldx     $81                             ; A3BA A6 81                    ..
        lda     $FF5E,x                         ; A3BC BD 5E FF                 .^.
        sta     $7C                             ; A3BF 85 7C                    .|
        jsr     BattlePresentation_Entry_A42F   ; A3C1 20 2F A4                  /.
        lda     $94                             ; A3C4 A5 94                    ..
        cmp     #$18                            ; A3C6 C9 18                    ..
        bcc     BattlePresentation_Branch_A3D7  ; A3C8 90 0D                    ..
        ldx     $81                             ; A3CA A6 81                    ..
        jsr     BattlePresentation_Entry_8811   ; A3CC 20 11 88                  ..
        lda     $0E                             ; A3CF A5 0E                    ..
        ora     $0F                             ; A3D1 05 0F                    ..
        beq     BattlePresentation_Branch_A3D7  ; A3D3 F0 02                    ..
        sec                                     ; A3D5 38                       8
        rts                                     ; A3D6 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A3D7:
        clc                                     ; A3D7 18                       .
        rts                                     ; A3D8 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A3D9:
        jsr     BattlePresentation_Entry_9406   ; A3D9 20 06 94                  ..
        and     #$7F                            ; A3DC 29 7F                    ).
        cmp     #$04                            ; A3DE C9 04                    ..
        bne     BattlePresentation_Branch_A3ED  ; A3E0 D0 0B                    ..
        lda     $75D3                           ; A3E2 AD D3 75                 ..u
        cmp     #$1F                            ; A3E5 C9 1F                    ..
        beq     BattlePresentation_Branch_A3ED  ; A3E7 F0 04                    ..
        cmp     #$20                            ; A3E9 C9 20                    .
        bne     BattlePresentation_Branch_A3EF  ; A3EB D0 02                    ..
BattlePresentation_Branch_A3ED:
        sec                                     ; A3ED 38                       8
        rts                                     ; A3EE 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A3EF:
        clc                                     ; A3EF 18                       .
        rts                                     ; A3F0 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A3F1:
        ldx     #$00                            ; A3F1 A2 00                    ..
        stx     $82                             ; A3F3 86 82                    ..
        stx     $75DF                           ; A3F5 8E DF 75                 ..u
        stx     $75E0                           ; A3F8 8E E0 75                 ..u
BattlePresentation_Branch_A3FB:
        jsr     BattlePresentation_Entry_8866   ; A3FB 20 66 88                  f.
        bcc     BattlePresentation_Branch_A426  ; A3FE 90 26                    .&
        jsr     BattlePresentation_Entry_89B6   ; A400 20 B6 89                  ..
        ldy     #$00                            ; A403 A0 00                    ..
        lda     ($79),y                         ; A405 B1 79                    .y
        bpl     BattlePresentation_Branch_A426  ; A407 10 1D                    ..
        asl     a                               ; A409 0A                       .
        bmi     BattlePresentation_Branch_A426  ; A40A 30 1A                    0.
        jsr     BattlePresentation_Entry_8719   ; A40C 20 19 87                  ..
        sec                                     ; A40F 38                       8
        lda     $75DF                           ; A410 AD DF 75                 ..u
        sbc     $0C                             ; A413 E5 0C                    ..
        lda     $75E0                           ; A415 AD E0 75                 ..u
        sbc     $0D                             ; A418 E5 0D                    ..
        bcs     BattlePresentation_Branch_A426  ; A41A B0 0A                    ..
        lda     $0C                             ; A41C A5 0C                    ..
        sta     $75DF                           ; A41E 8D DF 75                 ..u
        lda     $0D                             ; A421 A5 0D                    ..
        sta     $75E0                           ; A423 8D E0 75                 ..u
BattlePresentation_Branch_A426:
        inc     $82                             ; A426 E6 82                    ..
        lda     $82                             ; A428 A5 82                    ..
        cmp     #$04                            ; A42A C9 04                    ..
        bcc     BattlePresentation_Branch_A3FB  ; A42C 90 CD                    ..
        rts                                     ; A42E 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A42F:
        lda     $81                             ; A42F A5 81                    ..
        pha                                     ; A431 48                       H
        jsr     BattlePresentation_Entry_A444   ; A432 20 44 A4                  D.
        lda     #$30                            ; A435 A9 30                    .0
        sta     $94                             ; A437 85 94                    ..
        lda     $7B                             ; A439 A5 7B                    .{
        beq     BattlePresentation_Branch_A440  ; A43B F0 03                    ..
        jsr     BattlePresentation_Entry_A488   ; A43D 20 88 A4                  ..
BattlePresentation_Branch_A440:
        pla                                     ; A440 68                       h
        sta     $81                             ; A441 85 81                    ..
        rts                                     ; A443 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A444:
        lda     #$00                            ; A444 A9 00                    ..
        sta     $7B                             ; A446 85 7B                    .{
        sta     $82                             ; A448 85 82                    ..
BattlePresentation_Branch_A44A:
        jsr     BattlePresentation_Entry_8866   ; A44A 20 66 88                  f.
        bcc     BattlePresentation_Branch_A47F  ; A44D 90 30                    .0
        sta     $0C                             ; A44F 85 0C                    ..
        jsr     BattlePresentation_Entry_89B6   ; A451 20 B6 89                  ..
        ldy     #$00                            ; A454 A0 00                    ..
        lda     ($79),y                         ; A456 B1 79                    .y
        bpl     BattlePresentation_Branch_A47F  ; A458 10 25                    .%
        asl     a                               ; A45A 0A                       .
        bmi     BattlePresentation_Branch_A47F  ; A45B 30 22                    0"
        lda     #$0B                            ; A45D A9 0B                    ..
        sta     $0D                             ; A45F 85 0D                    ..
BattlePresentation_Branch_A461:
        jsr     BattlePresentation_Entry_A5AA   ; A461 20 AA A5                  ..
        bcc     BattlePresentation_Branch_A47B  ; A464 90 15                    ..
        cpy     #$15                            ; A466 C0 15                    ..
        bcs     BattlePresentation_Branch_A47B  ; A468 B0 11                    ..
        lda     Bank13_BattlePresentationLookup,y; A46A B9 0B B8                ...
        and     #$1F                            ; A46D 29 1F                    ).
        tax                                     ; A46F AA                       .
        lda     $94CC,x                         ; A470 BD CC 94                 ...
        tax                                     ; A473 AA                       .
        lda     $FF5E,x                         ; A474 BD 5E FF                 .^.
        ora     $7B                             ; A477 05 7B                    .{
        sta     $7B                             ; A479 85 7B                    .{
BattlePresentation_Branch_A47B:
        dec     $0D                             ; A47B C6 0D                    ..
        bpl     BattlePresentation_Branch_A461  ; A47D 10 E2                    ..
BattlePresentation_Branch_A47F:
        inc     $82                             ; A47F E6 82                    ..
        lda     $82                             ; A481 A5 82                    ..
        cmp     #$04                            ; A483 C9 04                    ..
        bcc     BattlePresentation_Branch_A44A  ; A485 90 C3                    ..
        rts                                     ; A487 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A488:
        lda     #$00                            ; A488 A9 00                    ..
        sta     $94                             ; A48A 85 94                    ..
        lda     #$07                            ; A48C A9 07                    ..
        sta     $81                             ; A48E 85 81                    ..
BattlePresentation_Branch_A490:
        asl     $7C                             ; A490 06 7C                    .|
        bcc     BattlePresentation_Branch_A4C3  ; A492 90 2F                    ./
        lda     $7B                             ; A494 A5 7B                    .{
        sta     $02                           ; A496 85 02                    ..
        lda     #$00                            ; A498 A9 00                    ..
        sta     $95                             ; A49A 85 95                    ..
BattlePresentation_Branch_A49C:
        lsr     $02                           ; A49C 46 02                    F.
        bcc     BattlePresentation_Branch_A4BB  ; A49E 90 1B                    ..
        lda     $95                             ; A4A0 A5 95                    ..
        jsr     BattlePresentation_Entry_92E2   ; A4A2 20 E2 92                  ..
        asl     a                               ; A4A5 0A                       .
        asl     a                               ; A4A6 0A                       .
        asl     a                               ; A4A7 0A                       .
        asl     a                               ; A4A8 0A                       .
        sta     $03                             ; A4A9 85 03                    ..
        lda     $94                             ; A4AB A5 94                    ..
        pha                                     ; A4AD 48                       H
        clc                                     ; A4AE 18                       .
        adc     $03                             ; A4AF 65 03                    e.
        sta     $94                             ; A4B1 85 94                    ..
        tax                                     ; A4B3 AA                       .
        pla                                     ; A4B4 68                       h
        beq     BattlePresentation_Branch_A4BB  ; A4B5 F0 04                    ..
        txa                                     ; A4B7 8A                       .
        lsr     a                               ; A4B8 4A                       J
        sta     $94                             ; A4B9 85 94                    ..
BattlePresentation_Branch_A4BB:
        inc     $95                             ; A4BB E6 95                    ..
        lda     $95                             ; A4BD A5 95                    ..
        cmp     #$07                            ; A4BF C9 07                    ..
        bcc     BattlePresentation_Branch_A49C  ; A4C1 90 D9                    ..
BattlePresentation_Branch_A4C3:
        dec     $81                             ; A4C3 C6 81                    ..
        bpl     BattlePresentation_Branch_A490  ; A4C5 10 C9                    ..
        rts                                     ; A4C7 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A4C8:
        lda     $75E3                           ; A4C8 AD E3 75                 ..u
        pha                                     ; A4CB 48                       H
        clc                                     ; A4CC 18                       .
        lda     $8C                             ; A4CD A5 8C                    ..
        adc     $75E3                           ; A4CF 6D E3 75                 m.u
        sta     $75E3                           ; A4D2 8D E3 75                 ..u
        pla                                     ; A4D5 68                       h
        beq     BattlePresentation_Branch_A4DB  ; A4D6 F0 03                    ..
        lsr     $75E3                           ; A4D8 4E E3 75                 N.u
BattlePresentation_Branch_A4DB:
        rts                                     ; A4DB 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A4DC:
        lda     #$00                            ; A4DC A9 00                    ..
        sta     $75DA                           ; A4DE 8D DA 75                 ..u
        lda     $75D3                           ; A4E1 AD D3 75                 ..u
        sta     $75DB                           ; A4E4 8D DB 75                 ..u
        rts                                     ; A4E7 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A4E8:
        ldx     #$07                            ; A4E8 A2 07                    ..
        stx     $81                             ; A4EA 86 81                    ..
BattlePresentation_Branch_A4EC:
        ldx     $81                             ; A4EC A6 81                    ..
        lda     $7579,x                         ; A4EE BD 79 75                 .yu
        cmp     #$10                            ; A4F1 C9 10                    ..
        beq     BattlePresentation_Branch_A504  ; A4F3 F0 0F                    ..
        sta     $00                           ; A4F5 85 00                    ..
        jsr     BattlePresentation_Entry_8D77   ; A4F7 20 77 8D                  w.
        jsr     BattlePresentation_Entry_A509   ; A4FA 20 09 A5                  ..
        lda     $00                           ; A4FD A5 00                    ..
        beq     BattlePresentation_Branch_A504  ; A4FF F0 03                    ..
        jsr     BattlePresentation_Entry_8F16   ; A501 20 16 8F                  ..
BattlePresentation_Branch_A504:
        dec     $81                             ; A504 C6 81                    ..
        bpl     BattlePresentation_Branch_A4EC  ; A506 10 E4                    ..
        rts                                     ; A508 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A509:
        ldx     #$13                            ; A509 A2 13                    ..
BattlePresentation_Branch_A50B:
        ldy     Bank13_BattleFieldOffsets,x     ; A50B BC EC 90                 ...
        lda     ($88),y                       ; A50E B1 88                    ..
        sta     $94                             ; A510 85 94                    ..
        iny                                     ; A512 C8                       .
        lda     ($88),y                       ; A513 B1 88                    ..
        sta     $95                             ; A515 85 95                    ..
        txa                                     ; A517 8A                       .
        pha                                     ; A518 48                       H
        ldx     #$94                            ; A519 A2 94                    ..
        lda     $00                           ; A51B A5 00                    ..
        jsr     BattlePresentation_Entry_8330   ; A51D 20 30 83                  0.
        lda     $94                             ; A520 A5 94                    ..
        and     #$0F                            ; A522 29 0F                    ).
        php                                     ; A524 08                       .
        jsr     BattlePresentation_Entry_81A5   ; A525 20 A5 81                  ..
        plp                                     ; A528 28                       (
        beq     BattlePresentation_Branch_A530  ; A529 F0 05                    ..
        lda     #$01                            ; A52B A9 01                    ..
        jsr     AddByteToPointer                ; A52D 20 13 C8                  ..
BattlePresentation_Branch_A530:
        lda     $19                             ; A530 A5 19                    ..
        beq     BattlePresentation_Branch_A53A  ; A532 F0 06                    ..
        lda     #$FF                            ; A534 A9 FF                    ..
        sta     $94                             ; A536 85 94                    ..
        sta     $95                             ; A538 85 95                    ..
BattlePresentation_Branch_A53A:
        pla                                     ; A53A 68                       h
        tax                                     ; A53B AA                       .
        ldy     Bank13_BattleFieldOffsets,x     ; A53C BC EC 90                 ...
        lda     $94                             ; A53F A5 94                    ..
        sta     ($88),y                       ; A541 91 88                    ..
        iny                                     ; A543 C8                       .
        lda     $95                             ; A544 A5 95                    ..
        sta     ($88),y                       ; A546 91 88                    ..
        dex                                     ; A548 CA                       .
        bpl     BattlePresentation_Branch_A50B  ; A549 10 C0                    ..
        rts                                     ; A54B 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A54C:
        rts                                     ; A54C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A54D:
        pha                                     ; A54D 48                       H
        jsr     BattlePresentation_Entry_A5FC   ; A54E 20 FC A5                  ..
        pla                                     ; A551 68                       h
        bcc     BattlePresentation_Entry_A54C   ; A552 90 F8                    ..
        jsr     BattlePresentation_Entry_A58D   ; A554 20 8D A5                  ..
        bcc     BattlePresentation_Entry_A54C   ; A557 90 F3                    ..
        lda     $75E8                           ; A559 AD E8 75                 ..u
        asl     a                               ; A55C 0A                       .
        tax                                     ; A55D AA                       .
        lda     $A626,x                         ; A55E BD 26 A6                 .&.
        sta     $86                           ; A561 85 86                    ..
        lda     $A627,x                         ; A563 BD 27 A6                 .'.
        sta     $87                             ; A566 85 87                    ..
        lda     $0D                             ; A568 A5 0D                    ..
        asl     a                               ; A56A 0A                       .
        tay                                     ; A56B A8                       .
        lda     ($86),y                       ; A56C B1 86                    ..
        sta     $88                           ; A56E 85 88                    ..
        iny                                     ; A570 C8                       .
        lda     ($86),y                       ; A571 B1 86                    ..
        sta     $89                             ; A573 85 89                    ..
        lda     $75F0                           ; A575 AD F0 75                 ..u
        and     #$7F                            ; A578 29 7F                    ).
        sta     $75F0                           ; A57A 8D F0 75                 ..u
        lda     $0F                             ; A57D A5 0F                    ..
        sta     $75D3                           ; A57F 8D D3 75                 ..u
        ldy     $6E80                           ; A582 AC 80 6E                 ..n
        cpy     #$04                            ; A585 C0 04                    ..
        beq     BattlePresentation_Branch_A58C  ; A587 F0 03                    ..
        jmp     ($0088)                         ; A589 6C 88 00                 l..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A58C:
        rts                                     ; A58C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A58D:
        sta     $0D                             ; A58D 85 0D                    ..
        lda     $75E8                           ; A58F AD E8 75                 ..u
        sta     $0C                             ; A592 85 0C                    ..
        jsr     BattlePresentation_Entry_A5AA   ; A594 20 AA A5                  ..
        bcc     BattlePresentation_Branch_A5A8  ; A597 90 0F                    ..
        lda     Bank13_BattlePresentationStateLookup,y; A599 B9 67 B9           .g.
        and     #$1F                            ; A59C 29 1F                    ).
        sec                                     ; A59E 38                       8
        sbc     $75DC                           ; A59F ED DC 75                 ..u
        beq     BattlePresentation_Branch_A5A6  ; A5A2 F0 02                    ..
        bcs     BattlePresentation_Branch_A5A8  ; A5A4 B0 02                    ..
BattlePresentation_Branch_A5A6:
        sec                                     ; A5A6 38                       8
        rts                                     ; A5A7 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A5A8:
        clc                                     ; A5A8 18                       .
        rts                                     ; A5A9 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A5AA:
        jsr     BattlePresentation_Entry_A61A   ; A5AA 20 1A A6                  ..
        clc                                     ; A5AD 18                       .
        adc     $0D                             ; A5AE 65 0D                    e.
        tax                                     ; A5B0 AA                       .
        lda     $A68A,x                         ; A5B1 BD 8A A6                 ...
        sta     $0F                             ; A5B4 85 0F                    ..
        lda     $0C                             ; A5B6 A5 0C                    ..
        jsr     BattlePresentation_Entry_89B6   ; A5B8 20 B6 89                  ..
        lda     $A624                           ; A5BB AD 24 A6                 .$.
        sta     $86                           ; A5BE 85 86                    ..
        lda     $A625                           ; A5C0 AD 25 A6                 .%.
        sta     $87                             ; A5C3 85 87                    ..
        ldx     #$86                            ; A5C5 A2 86                    ..
        jsr     BattlePresentation_Entry_A61A   ; A5C7 20 1A A6                  ..
        jsr     AddByteToPointer                ; A5CA 20 13 C8                  ..
        ldy     #$1B                            ; A5CD A0 1B                    ..
        lda     ($79),y                         ; A5CF B1 79                    .y
        sta     $00                           ; A5D1 85 00                    ..
        iny                                     ; A5D3 C8                       .
        lda     ($79),y                         ; A5D4 B1 79                    .y
        sta     $01                             ; A5D6 85 01                    ..
        ldy     #$00                            ; A5D8 A0 00                    ..
BattlePresentation_Branch_A5DA:
        lsr     $01                             ; A5DA 46 01                    F.
        ror     $00                           ; A5DC 66 00                    f.
        bcc     BattlePresentation_Branch_A5E6  ; A5DE 90 06                    ..
        lda     ($86),y                       ; A5E0 B1 86                    ..
        cmp     $0F                             ; A5E2 C5 0F                    ..
        beq     BattlePresentation_Branch_A5ED  ; A5E4 F0 07                    ..
BattlePresentation_Branch_A5E6:
        iny                                     ; A5E6 C8                       .
        cpy     #$0C                            ; A5E7 C0 0C                    ..
        bcc     BattlePresentation_Branch_A5DA  ; A5E9 90 EF                    ..
        clc                                     ; A5EB 18                       .
        rts                                     ; A5EC 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A5ED:
        ldy     $0F                             ; A5ED A4 0F                    ..
        cpy     #$32                            ; A5EF C0 32                    .2
        bne     BattlePresentation_Branch_A5FA  ; A5F1 D0 07                    ..
        lda     $75DC                           ; A5F3 AD DC 75                 ..u
        bne     BattlePresentation_Branch_A5FA  ; A5F6 D0 02                    ..
        clc                                     ; A5F8 18                       .
        rts                                     ; A5F9 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A5FA:
        sec                                     ; A5FA 38                       8
        rts                                     ; A5FB 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A5FC:
        lda     $6E80                           ; A5FC AD 80 6E                 ..n
        cmp     #$05                            ; A5FF C9 05                    ..
        beq     BattlePresentation_Branch_A618  ; A601 F0 15                    ..
        lda     $72E4                           ; A603 AD E4 72                 ..r
        bmi     BattlePresentation_Branch_A618  ; A606 30 10                    0.
        lda     $75E8                           ; A608 AD E8 75                 ..u
        jsr     BattlePresentation_Entry_89F5   ; A60B 20 F5 89                  ..
        ldy     #$05                            ; A60E A0 05                    ..
        lda     ($79),y                         ; A610 B1 79                    .y
        and     #$08                            ; A612 29 08                    ).
        bne     BattlePresentation_Branch_A618  ; A614 D0 02                    ..
        sec                                     ; A616 38                       8
        rts                                     ; A617 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A618:
        clc                                     ; A618 18                       .
        rts                                     ; A619 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A61A:
        lda     $0C                             ; A61A A5 0C                    ..
        asl     a                               ; A61C 0A                       .
        asl     a                               ; A61D 0A                       .
        sta     $00                           ; A61E 85 00                    ..
        asl     a                               ; A620 0A                       .
        adc     $00                           ; A621 65 00                    e.
        rts                                     ; A623 60                       `
; ----------------------------------------------------------------------------
        db   $2E                             ; A624 2E                       .
        db   $B3                             ; A625 B3                       .
        db   $4E                             ; A626 4E                       N
        db   $A6,$4E,$A6,$36,$A6,$66,$A6,$7E ; A627 A6 4E A6 36 A6 66 A6 7E  .N.6.f.~
        db   $A6,$4E,$A6,$4E,$A6,$4E,$A6,$33 ; A62F A6 4E A6 4E A6 4E A6 33  .N.N.N.3
        db   $95,$33,$95,$33,$95,$BB,$9B,$A6 ; A637 95 33 95 33 95 BB 9B A6  .3.3....
        db   $9B,$9F,$9F,$0B,$98,$0B,$98,$0B ; A63F 9B 9F 9F 0B 98 0B 98 0B  ........
        db   $98,$9C,$9D,$31,$9E,$8B,$9E,$54 ; A647 98 9C 9D 31 9E 8B 9E 54  ...1...T
        db   $95,$69,$95,$BB,$9B,$BB,$9B,$E2 ; A64F 95 69 95 BB 9B BB 9B E2  .i......
        db   $9F,$0D,$A0,$0B,$98,$0B,$98,$0B ; A657 9F 0D A0 0B 98 0B 98 0B  ........
        db   $98,$4D,$98,$31,$9E,$35,$9E,$1B ; A65F 98 4D 98 31 9E 35 9E 1B  .M.1.5..
        db   $95,$1B,$95,$1B,$95,$33,$95,$33 ; A667 95 1B 95 1B 95 33 95 33  .....3.3
        db   $95,$33,$95,$48,$95,$48,$95,$48 ; A66F 95 33 95 48 95 48 95 48  .3.H.H.H
        db   $95,$C3,$9E,$5A,$9F,$B8,$9F,$1B ; A677 95 C3 9E 5A 9F B8 9F 1B  ...Z....
        db   $95,$33,$95,$48,$95,$33,$95,$CD ; A67F 95 33 95 48 95 33 95 CD  .3.H.3..
        db   $9B,$C3,$9E                     ; A687 9B C3 9E                 ...
        db   $E2,$9B,$5A,$9F,$76,$9F,$8D,$9F ; A68A E2 9B 5A 9F 76 9F 8D 9F  ..Z.v...
        db   $C7,$9F,$4C,$A5                 ; A692 C7 9F 4C A5              ..L.
        db   $13,$14,$19,$1A,$21,$22,$29,$2A ; A696 13 14 19 1A 21 22 29 2A  ....!")*
        db   $2B,$2C,$30,$31,$0D,$0E,$0F,$17 ; A69E 2B 2C 30 31 0D 0E 0F 17  +,01....
        db   $18,$24,$29,$2A,$2B,$2E,$30,$32 ; A6A6 18 24 29 2A 2B 2E 30 32  .$)*+.02
        db   $00,$01,$02,$03,$04,$05,$06,$07 ; A6AE 00 01 02 03 04 05 06 07  ........
        db   $08,$1C,$1F,$28,$09,$0A,$0B,$0C ; A6B6 08 1C 1F 28 09 0A 0B 0C  ...(....
        db   $1B,$1C,$1E,$1F,$20,$23,$25,$33 ; A6BE 1B 1C 1E 1F 20 23 25 33  .... #%3
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A6C6:
        ldx     #$00                            ; A6C6 A2 00                    ..
        beq     BattlePresentation_Branch_A6D4  ; A6C8 F0 0A                    ..
BattlePresentation_Entry_A6CA:
        ldx     #$02                            ; A6CA A2 02                    ..
        bne     BattlePresentation_Branch_A6D4  ; A6CC D0 06                    ..
BattlePresentation_Entry_A6CE:
        ldx     #$04                            ; A6CE A2 04                    ..
        bne     BattlePresentation_Branch_A6D4  ; A6D0 D0 02                    ..
BattlePresentation_Entry_A6D2:
        ldx     #$06                            ; A6D2 A2 06                    ..
BattlePresentation_Branch_A6D4:
        stx     $75F1                           ; A6D4 8E F1 75                 ..u
        lda     $75E8                           ; A6D7 AD E8 75                 ..u
        cmp     #$08                            ; A6DA C9 08                    ..
        bcs     BattlePresentation_Branch_A702  ; A6DC B0 24                    .$
        jsr     BattlePresentation_Entry_89B6   ; A6DE 20 B6 89                  ..
        ldy     #$13                            ; A6E1 A0 13                    ..
BattlePresentation_Branch_A6E3:
        tya                                     ; A6E3 98                       .
        pha                                     ; A6E4 48                       H
        lda     $79                             ; A6E5 A5 79                    .y
        pha                                     ; A6E7 48                       H
        lda     $7A                             ; A6E8 A5 7A                    .z
        pha                                     ; A6EA 48                       H
        lda     ($79),y                         ; A6EB B1 79                    .y
        jsr     BattlePresentation_Entry_A703   ; A6ED 20 03 A7                  ..
        bcc     BattlePresentation_Branch_A6F5  ; A6F0 90 03                    ..
        jsr     BattlePresentation_Entry_A73C   ; A6F2 20 3C A7                  <.
BattlePresentation_Branch_A6F5:
        pla                                     ; A6F5 68                       h
        sta     $7A                             ; A6F6 85 7A                    .z
        pla                                     ; A6F8 68                       h
        sta     $79                             ; A6F9 85 79                    .y
        pla                                     ; A6FB 68                       h
        tay                                     ; A6FC A8                       .
        iny                                     ; A6FD C8                       .
        cpy     #$1B                            ; A6FE C0 1B                    ..
        bcc     BattlePresentation_Branch_A6E3  ; A700 90 E1                    ..
BattlePresentation_Branch_A702:
        rts                                     ; A702 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A703:
        and     #$7F                            ; A703 29 7F                    ).
        sta     $7355                           ; A705 8D 55 73                 .Us
        ldx     $75F1                           ; A708 AE F1 75                 ..u
        lda     Bank13_BattleEffectRecordPointers,x; A70B BD 47 A7              .G.
        sta     $00                           ; A70E 85 00                    ..
        lda     $A748,x                         ; A710 BD 48 A7                 .H.
        sta     $01                             ; A713 85 01                    ..
        ldy     #$00                            ; A715 A0 00                    ..
BattlePresentation_Branch_A717:
        lda     ($00),y                       ; A717 B1 00                    ..
        cmp     #$FF                            ; A719 C9 FF                    ..
        beq     BattlePresentation_Branch_A728  ; A71B F0 0B                    ..
        cmp     $7355                           ; A71D CD 55 73                 .Us
        beq     BattlePresentation_Branch_A72A  ; A720 F0 08                    ..
        iny                                     ; A722 C8                       .
        iny                                     ; A723 C8                       .
        iny                                     ; A724 C8                       .
        iny                                     ; A725 C8                       .
        bne     BattlePresentation_Branch_A717  ; A726 D0 EF                    ..
BattlePresentation_Branch_A728:
        clc                                     ; A728 18                       .
        rts                                     ; A729 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A72A:
        iny                                     ; A72A C8                       .
        lda     ($00),y                       ; A72B B1 00                    ..
        sta     $75D3                           ; A72D 8D D3 75                 ..u
        iny                                     ; A730 C8                       .
        lda     ($00),y                       ; A731 B1 00                    ..
        sta     $86                           ; A733 85 86                    ..
        iny                                     ; A735 C8                       .
        lda     ($00),y                       ; A736 B1 00                    ..
        sta     $87                             ; A738 85 87                    ..
        sec                                     ; A73A 38                       8
        rts                                     ; A73B 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A73C:
        lda     $75F0                           ; A73C AD F0 75                 ..u
        ora     #$80                            ; A73F 09 80                    ..
        sta     $75F0                           ; A741 8D F0 75                 ..u
        jmp     ($0086)                         ; A744 6C 86 00                 l..
; ----------------------------------------------------------------------------
Bank13_BattleEffectRecordPointers:
        db   $4F                             ; A747 4F                       O
        db   $A7,$7C,$A7,$8D,$A7,$92,$A7     ; A748 A7 7C A7 8D A7 92 A7     .|.....
Bank13_BattleEffectRecords:
        db   $11,$83,$33,$95,$17,$84,$33,$95 ; A74F 11 83 33 95 17 84 33 95  ..3...3.
        db   $18,$85,$A6,$9B,$1A,$86,$1B,$95 ; A757 18 85 A6 9B 1A 86 1B 95  ........
        db   $1B,$87,$33,$95,$1D,$88,$BB,$9B ; A75F 1B 87 33 95 1D 88 BB 9B  ..3.....
        db   $1E,$89,$48,$95,$22,$8D,$BB,$9B ; A767 1E 89 48 95 22 8D BB 9B  ..H."...
        db   $23,$8E,$33,$95,$45,$92,$E2,$9B ; A76F 23 8E 33 95 45 92 E2 9B  #.3.E...
        db   $5D,$9D,$BB,$9B,$FF,$20,$8B,$E9 ; A777 5D 9D BB 9B FF 20 8B E9  ].... ..
        db   $98,$40,$8F,$BC,$98,$53,$94,$AC ; A77F 98 40 8F BC 98 53 94 AC  .@...S..
        db   $98,$60,$A0,$0E,$99,$FF,$58,$98 ; A787 98 60 A0 0E 99 FF 58 98  .`....X.
        db   $EC,$9D,$FF,$1F,$8A,$76,$9F,$FF ; A78F EC 9D FF 1F 8A 76 9F FF  .....v..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A797:
        pha                                     ; A797 48                       H
        txa                                     ; A798 8A                       .
        pha                                     ; A799 48                       H
        tya                                     ; A79A 98                       .
        pha                                     ; A79B 48                       H
        sty     $01                             ; A79C 84 01                    ..
        lda     Bank13_BattlePresentationStateLookup,x; A79E BD 67 B9           .g.
        pha                                     ; A7A1 48                       H
        and     #$80                            ; A7A2 29 80                    ).
        sta     $00                           ; A7A4 85 00                    ..
        pla                                     ; A7A6 68                       h
        and     #$60                            ; A7A7 29 60                    )`
        beq     BattlePresentation_Branch_A7B7  ; A7A9 F0 0C                    ..
        cmp     #$60                            ; A7AB C9 60                    .`
        beq     BattlePresentation_Branch_A7B7  ; A7AD F0 08                    ..
        cmp     #$20                            ; A7AF C9 20                    .
        beq     BattlePresentation_Branch_A7BF  ; A7B1 F0 0C                    ..
        cmp     #$40                            ; A7B3 C9 40                    .@
        beq     BattlePresentation_Branch_A828  ; A7B5 F0 71                    .q
BattlePresentation_Branch_A7B7:
        pla                                     ; A7B7 68                       h
        tay                                     ; A7B8 A8                       .
        pla                                     ; A7B9 68                       h
        tax                                     ; A7BA AA                       .
        pla                                     ; A7BB 68                       h
        lda     $00                           ; A7BC A5 00                    ..
        rts                                     ; A7BE 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A7BF:
        lda     $00                           ; A7BF A5 00                    ..
        bpl     BattlePresentation_Branch_A7D7  ; A7C1 10 14                    ..
        lda     #$00                            ; A7C3 A9 00                    ..
        sta     $02                           ; A7C5 85 02                    ..
        ldx     #$07                            ; A7C7 A2 07                    ..
BattlePresentation_Branch_A7C9:
        txa                                     ; A7C9 8A                       .
        pha                                     ; A7CA 48                       H
        jsr     BattlePresentation_Entry_A8AA   ; A7CB 20 AA A8                  ..
        rol     $02                           ; A7CE 26 02                    &.
        pla                                     ; A7D0 68                       h
        tax                                     ; A7D1 AA                       .
        dex                                     ; A7D2 CA                       .
        bpl     BattlePresentation_Branch_A7C9  ; A7D3 10 F4                    ..
        bmi     BattlePresentation_Branch_A810  ; A7D5 30 39                    09
BattlePresentation_Branch_A7D7:
        lda     #$00                            ; A7D7 A9 00                    ..
        sta     $02                           ; A7D9 85 02                    ..
        ldx     #$03                            ; A7DB A2 03                    ..
BattlePresentation_Branch_A7DD:
        txa                                     ; A7DD 8A                       .
        pha                                     ; A7DE 48                       H
        jsr     BattlePresentation_Entry_8A6B   ; A7DF 20 6B 8A                  k.
        bcc     BattlePresentation_Branch_A809  ; A7E2 90 25                    .%
        pha                                     ; A7E4 48                       H
        ldy     #$00                            ; A7E5 A0 00                    ..
        lda     ($79),y                         ; A7E7 B1 79                    .y
        ror     a                               ; A7E9 6A                       j
        and     #$E0                            ; A7EA 29 E0                    ).
        sta     $04                             ; A7EC 85 04                    ..
        pla                                     ; A7EE 68                       h
        jsr     BattlePresentation_Entry_89F5   ; A7EF 20 F5 89                  ..
        ldy     #$05                            ; A7F2 A0 05                    ..
        lda     ($79),y                         ; A7F4 B1 79                    .y
        sta     $03                             ; A7F6 85 03                    ..
        iny                                     ; A7F8 C8                       .
        lda     ($79),y                         ; A7F9 B1 79                    .y
        and     #$1F                            ; A7FB 29 1F                    ).
        ora     $04                             ; A7FD 05 04                    ..
        sta     $04                             ; A7FF 85 04                    ..
        iny                                     ; A801 C8                       .
        lda     ($79),y                         ; A802 B1 79                    .y
        sta     $05                             ; A804 85 05                    ..
        jsr     BattlePresentation_Entry_A85B   ; A806 20 5B A8                  [.
BattlePresentation_Branch_A809:
        rol     $02                           ; A809 26 02                    &.
        pla                                     ; A80B 68                       h
        tax                                     ; A80C AA                       .
        dex                                     ; A80D CA                       .
        bpl     BattlePresentation_Branch_A7DD  ; A80E 10 CD                    ..
BattlePresentation_Branch_A810:
        lda     $02                           ; A810 A5 02                    ..
        brk                                     ; A812 00                       .
        db   $2B,$0F                         ; A813 2B 0F                    +.
; ----------------------------------------------------------------------------
        ora     $00                           ; A815 05 00                    ..
        sta     $00                           ; A817 85 00                    ..
        bmi     BattlePresentation_Branch_A825  ; A819 30 0A                    0.
        jsr     BattlePresentation_Entry_8A76   ; A81B 20 76 8A                  v.
        bcc     BattlePresentation_Branch_A825  ; A81E 90 05                    ..
        jsr     BattlePresentation_Entry_8ABA   ; A820 20 BA 8A                  ..
        sta     $00                           ; A823 85 00                    ..
BattlePresentation_Branch_A825:
        jmp     BattlePresentation_Branch_A7B7  ; A825 4C B7 A7                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A828:
        lda     $00                           ; A828 A5 00                    ..
        bpl     BattlePresentation_Branch_A825  ; A82A 10 F9                    ..
        lda     #$00                            ; A82C A9 00                    ..
        sta     $02                           ; A82E 85 02                    ..
        ldx     #$07                            ; A830 A2 07                    ..
BattlePresentation_Branch_A832:
        txa                                     ; A832 8A                       .
        pha                                     ; A833 48                       H
        jsr     BattlePresentation_Entry_A8AA   ; A834 20 AA A8                  ..
        bcc     BattlePresentation_Branch_A847  ; A837 90 0E                    ..
        ldy     #$0D                            ; A839 A0 0D                    ..
        lda     ($86),y                       ; A83B B1 86                    ..
        and     #$03                            ; A83D 29 03                    ).
        tax                                     ; A83F AA                       .
        lda     $FF5E,x                         ; A840 BD 5E FF                 .^.
        ora     $02                           ; A843 05 02                    ..
        sta     $02                           ; A845 85 02                    ..
BattlePresentation_Branch_A847:
        pla                                     ; A847 68                       h
        tax                                     ; A848 AA                       .
        dex                                     ; A849 CA                       .
        bpl     BattlePresentation_Branch_A832  ; A84A 10 E6                    ..
        lda     $02                           ; A84C A5 02                    ..
        brk                                     ; A84E 00                       .
        db   $2A,$0F                         ; A84F 2A 0F                    *.
; ----------------------------------------------------------------------------
        clc                                     ; A851 18                       .
        adc     #$08                            ; A852 69 08                    i.
        ora     $00                           ; A854 05 00                    ..
        sta     $00                           ; A856 85 00                    ..
        jmp     BattlePresentation_Branch_A7B7  ; A858 4C B7 A7                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A85B:
        lda     $04                             ; A85B A5 04                    ..
        bpl     BattlePresentation_Branch_A898  ; A85D 10 39                    .9
        lda     $01                             ; A85F A5 01                    ..
        sta     $06                             ; A861 85 06                    ..
        lda     $00                           ; A863 A5 00                    ..
        lsr     a                               ; A865 4A                       J
        lsr     a                               ; A866 4A                       J
        lsr     a                               ; A867 4A                       J
        lsr     a                               ; A868 4A                       J
        and     #$08                            ; A869 29 08                    ).
        tax                                     ; A86B AA                       .
BattlePresentation_Branch_A86C:
        lda     $A89A,x                         ; A86C BD 9A A8                 ...
        pha                                     ; A86F 48                       H
        and     #$07                            ; A870 29 07                    ).
        tay                                     ; A872 A8                       .
        lda     $FF5E,y                         ; A873 B9 5E FF                 .^.
        sta     $07                             ; A876 85 07                    ..
        sta     $08                             ; A878 85 08                    ..
        asl     $06                             ; A87A 06 06                    ..
        bcs     BattlePresentation_Branch_A882  ; A87C B0 04                    ..
        lda     #$00                            ; A87E A9 00                    ..
        sta     $07                             ; A880 85 07                    ..
BattlePresentation_Branch_A882:
        pla                                     ; A882 68                       h
        lsr     a                               ; A883 4A                       J
        lsr     a                               ; A884 4A                       J
        lsr     a                               ; A885 4A                       J
        tay                                     ; A886 A8                       .
        lda     $03,y                           ; A887 B9 03 00                 ...
        eor     $08                             ; A88A 45 08                    E.
        and     $07                             ; A88C 25 07                    %.
        bne     BattlePresentation_Branch_A898  ; A88E D0 08                    ..
        inx                                     ; A890 E8                       .
        txa                                     ; A891 8A                       .
        and     #$07                            ; A892 29 07                    ).
        bne     BattlePresentation_Branch_A86C  ; A894 D0 D6                    ..
        sec                                     ; A896 38                       8
        rts                                     ; A897 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A898:
        clc                                     ; A898 18                       .
        rts                                     ; A899 60                       `
; ----------------------------------------------------------------------------
        db   $0E,$0E,$02,$07,$06,$0D,$0F,$0F ; A89A 0E 0E 02 07 06 0D 0F 0F  ........
        db   $0E,$11,$02,$07,$06,$0D,$0F,$0F ; A8A2 0E 11 02 07 06 0D 0F 0F  ........
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A8AA:
        jsr     BattlePresentation_Entry_899C   ; A8AA 20 9C 89                  ..
        ldy     #$05                            ; A8AD A0 05                    ..
        lda     ($86),y                       ; A8AF B1 86                    ..
        sta     $03                             ; A8B1 85 03                    ..
        iny                                     ; A8B3 C8                       .
        lda     ($86),y                       ; A8B4 B1 86                    ..
        sta     $04                             ; A8B6 85 04                    ..
        iny                                     ; A8B8 C8                       .
        lda     ($86),y                       ; A8B9 B1 86                    ..
        sta     $05                             ; A8BB 85 05                    ..
        jmp     BattlePresentation_Entry_A85B   ; A8BD 4C 5B A8                 L[.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A8C0:
        lda     $6E80                           ; A8C0 AD 80 6E                 ..n
        cmp     #$04                            ; A8C3 C9 04                    ..
        rts                                     ; A8C5 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A8C6:
        jsr     BattlePresentation_Entry_A8D5   ; A8C6 20 D5 A8                  ..
        jsr     BattlePresentation_Entry_A8E1   ; A8C9 20 E1 A8                  ..
        jsr     BattlePresentation_Entry_A906   ; A8CC 20 06 A9                  ..
        jsr     BattlePresentation_Entry_A92E   ; A8CF 20 2E A9                  ..
        jmp     BattlePresentation_Branch_9110  ; A8D2 4C 10 91                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A8D5:
        lda     #$00                            ; A8D5 A9 00                    ..
        sta     $75F3                           ; A8D7 8D F3 75                 ..u
        sta     $75F5                           ; A8DA 8D F5 75                 ..u
        sta     $75F4                           ; A8DD 8D F4 75                 ..u
        rts                                     ; A8E0 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A8E1:
        ldx     #$0B                            ; A8E1 A2 0B                    ..
BattlePresentation_Branch_A8E3:
        txa                                     ; A8E3 8A                       .
        pha                                     ; A8E4 48                       H
        jsr     BattlePresentation_Entry_A58D   ; A8E5 20 8D A5                  ..
        bcc     BattlePresentation_Branch_A8F0  ; A8E8 90 06                    ..
        cpy     #$32                            ; A8EA C0 32                    .2
        clc                                     ; A8EC 18                       .
        beq     BattlePresentation_Branch_A8F0  ; A8ED F0 01                    ..
        sec                                     ; A8EF 38                       8
BattlePresentation_Branch_A8F0:
        rol     $75F3                           ; A8F0 2E F3 75                 ..u
        rol     $75F4                           ; A8F3 2E F4 75                 ..u
        pla                                     ; A8F6 68                       h
        tax                                     ; A8F7 AA                       .
        dex                                     ; A8F8 CA                       .
        bpl     BattlePresentation_Branch_A8E3  ; A8F9 10 E8                    ..
        lda     #$30                            ; A8FB A9 30                    .0
        ora     $75F4                           ; A8FD 0D F4 75                 ..u
        and     #$3F                            ; A900 29 3F                    )?
        sta     $75F4                           ; A902 8D F4 75                 ..u
        rts                                     ; A905 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A906:
        lda     $75E8                           ; A906 AD E8 75                 ..u
        jsr     BattlePresentation_Entry_89B6   ; A909 20 B6 89                  ..
        ldy     #$13                            ; A90C A0 13                    ..
BattlePresentation_Branch_A90E:
        lda     ($79),y                         ; A90E B1 79                    .y
        and     #$7F                            ; A910 29 7F                    ).
        brk                                     ; A912 00                       .
        db   $15,$0F                         ; A913 15 0F                    ..
; ----------------------------------------------------------------------------
        bcc     BattlePresentation_Branch_A91C  ; A915 90 05                    ..
        cmp     #$7F                            ; A917 C9 7F                    ..
        jmp     BattlePresentation_Branch_A91D  ; A919 4C 1D A9                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A91C:
        sec                                     ; A91C 38                       8
BattlePresentation_Branch_A91D:
        ror     $75F5                           ; A91D 6E F5 75                 n.u
        iny                                     ; A920 C8                       .
        cpy     #$1B                            ; A921 C0 1B                    ..
        bcc     BattlePresentation_Branch_A90E  ; A923 90 E9                    ..
        lda     $75F5                           ; A925 AD F5 75                 ..u
        eor     #$FF                            ; A928 49 FF                    I.
        sta     $75F5                           ; A92A 8D F5 75                 ..u
        rts                                     ; A92D 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A92E:
        lda     $75F0                           ; A92E AD F0 75                 ..u
        and     #$7F                            ; A931 29 7F                    ).
        sta     $75F0                           ; A933 8D F0 75                 ..u
        ldx     #$02                            ; A936 A2 02                    ..
BattlePresentation_Branch_A938:
        lda     $75F3,x                         ; A938 BD F3 75                 ..u
        brk                                     ; A93B 00                       .
        db   $2B,$0F                         ; A93C 2B 0F                    +.
; ----------------------------------------------------------------------------
        rol     $75DA                           ; A93E 2E DA 75                 ..u
        sta     $75F3,x                         ; A941 9D F3 75                 ..u
        dex                                     ; A944 CA                       .
        bpl     BattlePresentation_Branch_A938  ; A945 10 F1                    ..
        lda     $75DA                           ; A947 AD DA 75                 ..u
        and     #$07                            ; A94A 29 07                    ).
        brk                                     ; A94C 00                       .
        db   $2A,$0F                         ; A94D 2A 0F                    *.
; ----------------------------------------------------------------------------
        tax                                     ; A94F AA                       .
        lda     $75F3,x                         ; A950 BD F3 75                 ..u
        cpx     #$02                            ; A953 E0 02                    ..
        bcs     BattlePresentation_Branch_A979  ; A955 B0 22                    ."
        cpx     #$01                            ; A957 E0 01                    ..
        bne     BattlePresentation_Branch_A962  ; A959 D0 07                    ..
        clc                                     ; A95B 18                       .
        adc     #$08                            ; A95C 69 08                    i.
        cmp     #$0C                            ; A95E C9 0C                    ..
        bcs     BattlePresentation_Branch_A99A  ; A960 B0 38                    .8
BattlePresentation_Branch_A962:
        sta     $00                           ; A962 85 00                    ..
        ldx     $75E8                           ; A964 AE E8 75                 ..u
        dex                                     ; A967 CA                       .
        txa                                     ; A968 8A                       .
        asl     a                               ; A969 0A                       .
        asl     a                               ; A96A 0A                       .
        sta     $01                             ; A96B 85 01                    ..
        asl     a                               ; A96D 0A                       .
        adc     $01                             ; A96E 65 01                    e.
        adc     $00                           ; A970 65 00                    e.
        tax                                     ; A972 AA                       .
        lda     $A696,x                         ; A973 BD 96 A6                 ...
        jmp     BattlePresentation_Branch_A99E  ; A976 4C 9E A9                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A979:
        pha                                     ; A979 48                       H
        lda     $75F0                           ; A97A AD F0 75                 ..u
        ora     #$80                            ; A97D 09 80                    ..
        sta     $75F0                           ; A97F 8D F0 75                 ..u
        lda     $75E8                           ; A982 AD E8 75                 ..u
        jsr     BattlePresentation_Entry_89B6   ; A985 20 B6 89                  ..
        pla                                     ; A988 68                       h
        clc                                     ; A989 18                       .
        adc     #$13                            ; A98A 69 13                    i.
        tay                                     ; A98C A8                       .
        lda     ($79),y                         ; A98D B1 79                    .y
        and     #$7F                            ; A98F 29 7F                    ).
        sta     $75F2                           ; A991 8D F2 75                 ..u
        brk                                     ; A994 00                       .
        db   $17,$1F                         ; A995 17 1F                    ..
; ----------------------------------------------------------------------------
        jmp     BattlePresentation_Branch_A99E  ; A997 4C 9E A9                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_A99A:
        tax                                     ; A99A AA                       .
        lda     $A9B4,x                         ; A99B BD B4 A9                 ...
BattlePresentation_Branch_A99E:
        sta     $75DB                           ; A99E 8D DB 75                 ..u
        tax                                     ; A9A1 AA                       .
        ldy     #$00                            ; A9A2 A0 00                    ..
        cpx     #$30                            ; A9A4 E0 30                    .0
        beq     BattlePresentation_Branch_A9B2  ; A9A6 F0 0A                    ..
        cpx     #$31                            ; A9A8 E0 31                    .1
        beq     BattlePresentation_Branch_A9B2  ; A9AA F0 06                    ..
        cpx     #$97                            ; A9AC E0 97                    ..
        beq     BattlePresentation_Branch_A9B2  ; A9AE F0 02                    ..
        ldy     #$80                            ; A9B0 A0 80                    ..
BattlePresentation_Branch_A9B2:
LA9B4 = $+ 2
        jsr     BattlePresentation_Entry_A797   ; A9B2 20 97 A7                  ..
        ldx     $75F0                           ; A9B5 AE F0 75                 ..u
        bpl     BattlePresentation_Branch_A9BC  ; A9B8 10 02                    ..
        ora     #$20                            ; A9BA 09 20                    .
BattlePresentation_Branch_A9BC:
        sta     $75DA                           ; A9BC 8D DA 75                 ..u
        rts                                     ; A9BF 60                       `
; ----------------------------------------------------------------------------
        db   $43,$41                         ; A9C0 43 41                    CA
; ----------------------------------------------------------------------------
BattlePresentation_Entry_A9C2:
        lda     $00                           ; A9C2 A5 00                    ..
        ora     $01                             ; A9C4 05 01                    ..
        beq     BattlePresentation_Branch_A9F9  ; A9C6 F0 31                    .1
        jsr     BattlePresentation_Entry_AA67   ; A9C8 20 67 AA                  g.
        lda     $75DB                           ; A9CB AD DB 75                 ..u
        cmp     #$FF                            ; A9CE C9 FF                    ..
        beq     BattlePresentation_Branch_AA12  ; A9D0 F0 40                    .@
        sec                                     ; A9D2 38                       8
        lda     $75D4                           ; A9D3 AD D4 75                 ..u
        sbc     $0A                             ; A9D6 E5 0A                    ..
        sta     $0F                             ; A9D8 85 0F                    ..
        lda     $75D5                           ; A9DA AD D5 75                 ..u
        sbc     $0B                             ; A9DD E5 0B                    ..
        ora     $0F                             ; A9DF 05 0F                    ..
        sta     $0F                             ; A9E1 85 0F                    ..
        lda     $75D6                           ; A9E3 AD D6 75                 ..u
        sbc     $0C                             ; A9E6 E5 0C                    ..
        ora     $0F                             ; A9E8 05 0F                    ..
        beq     BattlePresentation_Branch_A9F0  ; A9EA F0 04                    ..
        bcs     BattlePresentation_Branch_AA52  ; A9EC B0 64                    .d
        bcc     BattlePresentation_Branch_AA12  ; A9EE 90 22                    ."
BattlePresentation_Branch_A9F0:
        lda     $8B                             ; A9F0 A5 8B                    ..
        bne     BattlePresentation_Branch_A9FB  ; A9F2 D0 07                    ..
        lda     $75DB                           ; A9F4 AD DB 75                 ..u
        cmp     #$43                            ; A9F7 C9 43                    .C
BattlePresentation_Branch_A9F9:
        beq     BattlePresentation_Branch_AA52  ; A9F9 F0 57                    .W
BattlePresentation_Branch_A9FB:
        lda     $6E80                           ; A9FB AD 80 6E                 ..n
        cmp     #$06                            ; A9FE C9 06                    ..
        bne     BattlePresentation_Branch_AA0B  ; AA00 D0 09                    ..
        lda     $8B                             ; AA02 A5 8B                    ..
        cmp     $75E5                           ; AA04 CD E5 75                 ..u
        bcc     BattlePresentation_Branch_AA52  ; AA07 90 49                    .I
        bcs     BattlePresentation_Branch_AA12  ; AA09 B0 07                    ..
BattlePresentation_Branch_AA0B:
        lda     $75E5                           ; AA0B AD E5 75                 ..u
        cmp     $8B                             ; AA0E C5 8B                    ..
        bcc     BattlePresentation_Branch_AA52  ; AA10 90 40                    .@
BattlePresentation_Branch_AA12:
        lda     $6E80                           ; AA12 AD 80 6E                 ..n
        cmp     #$02                            ; AA15 C9 02                    ..
        bcs     BattlePresentation_Branch_AA23  ; AA17 B0 0A                    ..
        lda     $8B                             ; AA19 A5 8B                    ..
        beq     BattlePresentation_Branch_AA23  ; AA1B F0 06                    ..
        lda     $8C                             ; AA1D A5 8C                    ..
        cmp     #$07                            ; AA1F C9 07                    ..
        bcc     BattlePresentation_Branch_AA52  ; AA21 90 2F                    ./
BattlePresentation_Branch_AA23:
        jsr     BattlePresentation_Entry_AB59   ; AA23 20 59 AB                  Y.
        bcc     BattlePresentation_Branch_AA52  ; AA26 90 2A                    .*
        lda     $0A                             ; AA28 A5 0A                    ..
        sta     $75D4                           ; AA2A 8D D4 75                 ..u
        lda     $0B                             ; AA2D A5 0B                    ..
        sta     $75D5                           ; AA2F 8D D5 75                 ..u
        lda     $0C                             ; AA32 A5 0C                    ..
        sta     $75D6                           ; AA34 8D D6 75                 ..u
        lda     $8B                             ; AA37 A5 8B                    ..
        sta     $75E5                           ; AA39 8D E5 75                 ..u
        lda     $8C                             ; AA3C A5 8C                    ..
        sta     $75D9                           ; AA3E 8D D9 75                 ..u
        lda     $75D1                           ; AA41 AD D1 75                 ..u
        sta     $75EC                           ; AA44 8D EC 75                 ..u
        lda     $75D3                           ; AA47 AD D3 75                 ..u
        sta     $75DB                           ; AA4A 8D DB 75                 ..u
        jsr     BattlePresentation_Entry_AA54   ; AA4D 20 54 AA                  T.
        sec                                     ; AA50 38                       8
        rts                                     ; AA51 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_AA52:
        clc                                     ; AA52 18                       .
        rts                                     ; AA53 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AA54:
        lda     $75D2                           ; AA54 AD D2 75                 ..u
        sta     $75DA                           ; AA57 8D DA 75                 ..u
        and     #$70                            ; AA5A 29 70                    )p
        cmp     #$20                            ; AA5C C9 20                    .
        bne     BattlePresentation_Branch_AA66  ; AA5E D0 06                    ..
        lda     $7355                           ; AA60 AD 55 73                 .Us
        sta     $75F2                           ; AA63 8D F2 75                 ..u
BattlePresentation_Branch_AA66:
        rts                                     ; AA66 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AA67:
        lda     #$00                            ; AA67 A9 00                    ..
        sta     $0A                             ; AA69 85 0A                    ..
        sta     $0E                             ; AA6B 85 0E                    ..
        sta     $0F                             ; AA6D 85 0F                    ..
        lda     $00                           ; AA6F A5 00                    ..
        sta     $0B                             ; AA71 85 0B                    ..
        lda     $01                             ; AA73 A5 01                    ..
        sta     $0C                             ; AA75 85 0C                    ..
        lda     $8B                             ; AA77 A5 8B                    ..
        sta     $0D                             ; AA79 85 0D                    ..
        ldx     #$0D                            ; AA7B A2 0D                    ..
        jsr     BattlePresentation_Entry_8176   ; AA7D 20 76 81                  v.
        clc                                     ; AA80 18                       .
        lda     $75ED                           ; AA81 AD ED 75                 ..u
        adc     $0D                             ; AA84 65 0D                    e.
        sta     $0D                             ; AA86 85 0D                    ..
        lda     $75EE                           ; AA88 AD EE 75                 ..u
        adc     $0E                             ; AA8B 65 0E                    e.
        sta     $0E                             ; AA8D 85 0E                    ..
        lda     $0F                             ; AA8F A5 0F                    ..
        adc     #$00                            ; AA91 69 00                    i.
        sta     $0F                             ; AA93 85 0F                    ..
        bcc     BattlePresentation_Branch_AA9F  ; AA95 90 08                    ..
        lda     #$FF                            ; AA97 A9 FF                    ..
        sta     $0D                             ; AA99 85 0D                    ..
        sta     $0E                             ; AA9B 85 0E                    ..
        sta     $0F                             ; AA9D 85 0F                    ..
BattlePresentation_Branch_AA9F:
        ldx     #$0A                            ; AA9F A2 0A                    ..
        ldy     #$0D                            ; AAA1 A0 0D                    ..
        jsr     BattlePresentation_Entry_8454   ; AAA3 20 54 84                  T.
        ldy     $6E80                           ; AAA6 AC 80 6E                 ..n
        lda     $BB8B,y                         ; AAA9 B9 8B BB                 ...
        jsr     BattlePresentation_Entry_8366   ; AAAC 20 66 83                  f.
        asl     $0A                             ; AAAF 06 0A                    ..
        rol     $0B                             ; AAB1 26 0B                    &.
        rol     $0C                             ; AAB3 26 0C                    &.
        rol     $1A                             ; AAB5 26 1A                    &.
        asl     $0A                             ; AAB7 06 0A                    ..
        rol     $0B                             ; AAB9 26 0B                    &.
        rol     $0C                             ; AABB 26 0C                    &.
        rol     $1A                             ; AABD 26 1A                    &.
        asl     $0A                             ; AABF 06 0A                    ..
        rol     $0B                             ; AAC1 26 0B                    &.
        rol     $0C                             ; AAC3 26 0C                    &.
        rol     $1A                             ; AAC5 26 1A                    &.
        asl     $0A                             ; AAC7 06 0A                    ..
        rol     $0B                             ; AAC9 26 0B                    &.
        rol     $0C                             ; AACB 26 0C                    &.
        rol     $1A                             ; AACD 26 1A                    &.
        lda     $00                           ; AACF A5 00                    ..
        sta     $0D                             ; AAD1 85 0D                    ..
        lda     $01                             ; AAD3 A5 01                    ..
        sta     $0E                             ; AAD5 85 0E                    ..
        ldy     $6E80                           ; AAD7 AC 80 6E                 ..n
        lda     $BB84,y                         ; AADA B9 84 BB                 ...
        ldx     #$0D                            ; AADD A2 0D                    ..
        jsr     BattlePresentation_Entry_8330   ; AADF 20 30 83                  0.
        clc                                     ; AAE2 18                       .
        lda     $0A                             ; AAE3 A5 0A                    ..
        adc     $0D                             ; AAE5 65 0D                    e.
        sta     $0D                             ; AAE7 85 0D                    ..
        lda     $0B                             ; AAE9 A5 0B                    ..
        adc     $0E                             ; AAEB 65 0E                    e.
        sta     $0E                             ; AAED 85 0E                    ..
        lda     $0C                             ; AAEF A5 0C                    ..
        adc     $19                             ; AAF1 65 19                    e.
        sta     $0F                             ; AAF3 85 0F                    ..
        lda     #$00                            ; AAF5 A9 00                    ..
        sta     $08                             ; AAF7 85 08                    ..
        sta     $0B                             ; AAF9 85 0B                    ..
        lda     $8B                             ; AAFB A5 8B                    ..
        asl     a                               ; AAFD 0A                       .
        rol     $0B                             ; AAFE 26 0B                    &.
        asl     a                               ; AB00 0A                       .
        rol     $0B                             ; AB01 26 0B                    &.
        asl     a                               ; AB03 0A                       .
        rol     $0B                             ; AB04 26 0B                    &.
        sta     $0A                             ; AB06 85 0A                    ..
        sec                                     ; AB08 38                       8
        sbc     $75EF                           ; AB09 ED EF 75                 ..u
        sta     $0A                             ; AB0C 85 0A                    ..
        lda     $0B                             ; AB0E A5 0B                    ..
        sbc     #$00                            ; AB10 E9 00                    ..
        sta     $0B                             ; AB12 85 0B                    ..
        ora     $0A                             ; AB14 05 0A                    ..
        beq     BattlePresentation_Branch_AB4C  ; AB16 F0 34                    .4
        bcc     BattlePresentation_Branch_AB4C  ; AB18 90 32                    .2
        lda     #$08                            ; AB1A A9 08                    ..
        ldx     #$0A                            ; AB1C A2 0A                    ..
        jsr     AddByteToPointer                ; AB1E 20 13 C8                  ..
        lda     #$08                            ; AB21 A9 08                    ..
        sta     $09                             ; AB23 85 09                    ..
        ldx     #$08                            ; AB25 A2 08                    ..
        ldy     #$0A                            ; AB27 A0 0A                    ..
        jsr     BattlePresentation_Entry_83AA   ; AB29 20 AA 83                  ..
        lda     $09                             ; AB2C A5 09                    ..
        beq     BattlePresentation_Branch_AB38  ; AB2E F0 08                    ..
        lda     #$00                            ; AB30 A9 00                    ..
        sta     $09                             ; AB32 85 09                    ..
        lda     #$FF                            ; AB34 A9 FF                    ..
        sta     $08                             ; AB36 85 08                    ..
BattlePresentation_Branch_AB38:
        lda     $08                             ; AB38 A5 08                    ..
        ldx     #$0D                            ; AB3A A2 0D                    ..
        jsr     BattlePresentation_Entry_8366   ; AB3C 20 66 83                  f.
        lda     $0E                             ; AB3F A5 0E                    ..
        sta     $0A                             ; AB41 85 0A                    ..
        lda     $0F                             ; AB43 A5 0F                    ..
        sta     $0B                             ; AB45 85 0B                    ..
        lda     $1A                             ; AB47 A5 1A                    ..
        sta     $0C                             ; AB49 85 0C                    ..
        rts                                     ; AB4B 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_AB4C:
        lda     $0D                             ; AB4C A5 0D                    ..
        sta     $0A                             ; AB4E 85 0A                    ..
        lda     $0E                             ; AB50 A5 0E                    ..
        sta     $0B                             ; AB52 85 0B                    ..
        lda     $0F                             ; AB54 A5 0F                    ..
        sta     $0C                             ; AB56 85 0C                    ..
        rts                                     ; AB58 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AB59:
        lda     $75E8                           ; AB59 AD E8 75                 ..u
        jsr     BattlePresentation_Entry_89B6   ; AB5C 20 B6 89                  ..
        ldy     #$01                            ; AB5F A0 01                    ..
        lda     ($79),y                         ; AB61 B1 79                    .y
        sta     $08                             ; AB63 85 08                    ..
        iny                                     ; AB65 C8                       .
        lda     ($79),y                         ; AB66 B1 79                    .y
        sta     $09                             ; AB68 85 09                    ..
        lda     $75E1                           ; AB6A AD E1 75                 ..u
        sta     $0E                             ; AB6D 85 0E                    ..
        lda     $75E2                           ; AB6F AD E2 75                 ..u
        sta     $0F                             ; AB72 85 0F                    ..
        lda     #$00                            ; AB74 A9 00                    ..
        sta     $0D                             ; AB76 85 0D                    ..
        ldx     #$0D                            ; AB78 A2 0D                    ..
        ldy     #$08                            ; AB7A A0 08                    ..
        jsr     BattlePresentation_Entry_83F4   ; AB7C 20 F4 83                  ..
        lda     $0E                             ; AB7F A5 0E                    ..
        ora     $0F                             ; AB81 05 0F                    ..
        beq     BattlePresentation_Branch_AB89  ; AB83 F0 04                    ..
        lda     #$FF                            ; AB85 A9 FF                    ..
        sta     $0D                             ; AB87 85 0D                    ..
BattlePresentation_Branch_AB89:
        ldx     $6E80                           ; AB89 AE 80 6E                 ..n
        lda     $BB92,x                         ; AB8C BD 92 BB                 ...
        cmp     $0D                             ; AB8F C5 0D                    ..
        rts                                     ; AB91 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_AB92:
        lda     $00                           ; AB92 A5 00                    ..
        ora     $01                             ; AB94 05 01                    ..
        beq     BattlePresentation_Branch_ABF6  ; AB96 F0 5E                    .^
        lda     $75DB                           ; AB98 AD DB 75                 ..u
        cmp     #$FF                            ; AB9B C9 FF                    ..
        beq     BattlePresentation_Branch_ABCA  ; AB9D F0 2B                    .+
        jsr     BattlePresentation_Entry_AC09   ; AB9F 20 09 AC                  ..
        bcc     BattlePresentation_Branch_ABF6  ; ABA2 90 52                    .R
        jsr     BattlePresentation_Entry_ABF7   ; ABA4 20 F7 AB                  ..
        bcc     BattlePresentation_Branch_ABF6  ; ABA7 90 4D                    .M
        jsr     BattlePresentation_Entry_AC19   ; ABA9 20 19 AC                  ..
        jsr     BattlePresentation_Entry_AC3C   ; ABAC 20 3C AC                  <.
        sec                                     ; ABAF 38                       8
        lda     $0C                             ; ABB0 A5 0C                    ..
        sbc     $0A                             ; ABB2 E5 0A                    ..
        sta     $0E                             ; ABB4 85 0E                    ..
        lda     $0D                             ; ABB6 A5 0D                    ..
        sbc     $0B                             ; ABB8 E5 0B                    ..
        bcc     BattlePresentation_Branch_ABCA  ; ABBA 90 0E                    ..
        ora     $0E                             ; ABBC 05 0E                    ..
        beq     BattlePresentation_Branch_ABC2  ; ABBE F0 02                    ..
        bcs     BattlePresentation_Branch_ABF6  ; ABC0 B0 34                    .4
BattlePresentation_Branch_ABC2:
        lda     $75E5                           ; ABC2 AD E5 75                 ..u
        sec                                     ; ABC5 38                       8
        sbc     $8B                             ; ABC6 E5 8B                    ..
        bcc     BattlePresentation_Branch_ABF6  ; ABC8 90 2C                    .,
BattlePresentation_Branch_ABCA:
        lda     $00                           ; ABCA A5 00                    ..
        sta     $75D4                           ; ABCC 8D D4 75                 ..u
        lda     $01                             ; ABCF A5 01                    ..
        sta     $75D5                           ; ABD1 8D D5 75                 ..u
        lda     $02                           ; ABD4 A5 02                    ..
        sta     $75D7                           ; ABD6 8D D7 75                 ..u
        lda     $03                             ; ABD9 A5 03                    ..
        sta     $75D8                           ; ABDB 8D D8 75                 ..u
        lda     $8B                             ; ABDE A5 8B                    ..
        sta     $75E5                           ; ABE0 8D E5 75                 ..u
        lda     $8C                             ; ABE3 A5 8C                    ..
        sta     $75E6                           ; ABE5 8D E6 75                 ..u
        lda     $8D                             ; ABE8 A5 8D                    ..
        sta     $75E7                           ; ABEA 8D E7 75                 ..u
        lda     $75D3                           ; ABED AD D3 75                 ..u
        sta     $75DB                           ; ABF0 8D DB 75                 ..u
        jsr     BattlePresentation_Entry_AA54   ; ABF3 20 54 AA                  T.
BattlePresentation_Branch_ABF6:
        rts                                     ; ABF6 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_ABF7:
        lda     $7C                             ; ABF7 A5 7C                    .|
        cmp     #$01                            ; ABF9 C9 01                    ..
        beq     BattlePresentation_Branch_AC08  ; ABFB F0 0B                    ..
        sec                                     ; ABFD 38                       8
        lda     $8C                             ; ABFE A5 8C                    ..
        sbc     $75E6                           ; AC00 ED E6 75                 ..u
        lda     $8D                             ; AC03 A5 8D                    ..
        sbc     $75E7                           ; AC05 ED E7 75                 ..u
BattlePresentation_Branch_AC08:
        rts                                     ; AC08 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AC09:
        lda     $82                             ; AC09 A5 82                    ..
        asl     a                               ; AC0B 0A                       .
        tax                                     ; AC0C AA                       .
        sec                                     ; AC0D 38                       8
        lda     $04                             ; AC0E A5 04                    ..
        sbc     $75C1,x                         ; AC10 FD C1 75                 ..u
        lda     $05                             ; AC13 A5 05                    ..
        sbc     $75C2,x                         ; AC15 FD C2 75                 ..u
        rts                                     ; AC18 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AC19:
        lda     $00                           ; AC19 A5 00                    ..
        sta     $0A                             ; AC1B 85 0A                    ..
        lda     #$00                            ; AC1D A9 00                    ..
        sta     $0B                             ; AC1F 85 0B                    ..
        rts                                     ; AC21 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AC22:
        lda     $02                           ; AC22 A5 02                    ..
        sta     $0A                             ; AC24 85 0A                    ..
        lda     $03                             ; AC26 A5 03                    ..
        sta     $0B                             ; AC28 85 0B                    ..
        lda     $00                           ; AC2A A5 00                    ..
        ldx     #$0A                            ; AC2C A2 0A                    ..
        jsr     BattlePresentation_Entry_8330   ; AC2E 20 30 83                  0.
        lda     $0B                             ; AC31 A5 0B                    ..
        sta     $0A                             ; AC33 85 0A                    ..
        lda     $19                             ; AC35 A5 19                    ..
        sta     $0B                             ; AC37 85 0B                    ..
        jmp     BattlePresentation_Entry_8187   ; AC39 4C 87 81                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AC3C:
        lda     $75D4                           ; AC3C AD D4 75                 ..u
        sta     $0C                             ; AC3F 85 0C                    ..
        lda     #$00                            ; AC41 A9 00                    ..
        sta     $0D                             ; AC43 85 0D                    ..
        rts                                     ; AC45 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AC46:
        lda     $75D7                           ; AC46 AD D7 75                 ..u
        sta     $0C                             ; AC49 85 0C                    ..
        lda     $75D8                           ; AC4B AD D8 75                 ..u
        sta     $0D                             ; AC4E 85 0D                    ..
        lda     $75D4                           ; AC50 AD D4 75                 ..u
        ldx     #$0C                            ; AC53 A2 0C                    ..
        jsr     BattlePresentation_Entry_8330   ; AC55 20 30 83                  0.
        lda     $0D                             ; AC58 A5 0D                    ..
        sta     $0C                             ; AC5A 85 0C                    ..
        lda     $19                             ; AC5C A5 19                    ..
        sta     $0D                             ; AC5E 85 0D                    ..
        jmp     BattlePresentation_Entry_8187   ; AC60 4C 87 81                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AC63:
        lda     $75DB                           ; AC63 AD DB 75                 ..u
        cmp     #$29                            ; AC66 C9 29                    .)
        bcc     BattlePresentation_Branch_AC6E  ; AC68 90 04                    ..
        cmp     #$2D                            ; AC6A C9 2D                    .-
        bcc     BattlePresentation_Branch_ACA2  ; AC6C 90 34                    .4
BattlePresentation_Branch_AC6E:
        lda     $75DB                           ; AC6E AD DB 75                 ..u
        cmp     #$2E                            ; AC71 C9 2E                    ..
        bcc     BattlePresentation_Branch_AC79  ; AC73 90 04                    ..
        cmp     #$33                            ; AC75 C9 33                    .3
        bcc     BattlePresentation_Branch_AC7E  ; AC77 90 05                    ..
BattlePresentation_Branch_AC79:
        lda     #$00                            ; AC79 A9 00                    ..
        sta     $75E6                           ; AC7B 8D E6 75                 ..u
BattlePresentation_Branch_AC7E:
        lda     $8C                             ; AC7E A5 8C                    ..
        cmp     $75E6                           ; AC80 CD E6 75                 ..u
        bcc     BattlePresentation_Branch_ACA2  ; AC83 90 1D                    ..
        lda     $00                           ; AC85 A5 00                    ..
        sta     $75D4                           ; AC87 8D D4 75                 ..u
        lda     $01                             ; AC8A A5 01                    ..
        sta     $75D5                           ; AC8C 8D D5 75                 ..u
        lda     $8B                             ; AC8F A5 8B                    ..
        sta     $75E5                           ; AC91 8D E5 75                 ..u
        lda     $8C                             ; AC94 A5 8C                    ..
        sta     $75E6                           ; AC96 8D E6 75                 ..u
        lda     $75D3                           ; AC99 AD D3 75                 ..u
        sta     $75DB                           ; AC9C 8D DB 75                 ..u
        jsr     BattlePresentation_Entry_AA54   ; AC9F 20 54 AA                  T.
BattlePresentation_Branch_ACA2:
        rts                                     ; ACA2 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_ACA3:
        lda     #$00                            ; ACA3 A9 00                    ..
        sta     $75E1                           ; ACA5 8D E1 75                 ..u
        sta     $75E2                           ; ACA8 8D E2 75                 ..u
        jsr     BattlePresentation_Entry_A9C2   ; ACAB 20 C2 A9                  ..
        bcs     BattlePresentation_Branch_ACB0  ; ACAE B0 00                    ..
BattlePresentation_Branch_ACB0:
        rts                                     ; ACB0 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_ACB1:
        lda     $0E                             ; ACB1 A5 0E                    ..
        sta     $0A                             ; ACB3 85 0A                    ..
        lda     $0F                             ; ACB5 A5 0F                    ..
        sta     $0B                             ; ACB7 85 0B                    ..
        lda     $75DF                           ; ACB9 AD DF 75                 ..u
        sta     $0C                             ; ACBC 85 0C                    ..
        lda     $75E0                           ; ACBE AD E0 75                 ..u
        sta     $0D                             ; ACC1 85 0D                    ..
        ldx     #$0A                            ; ACC3 A2 0A                    ..
        ldy     #$0C                            ; ACC5 A0 0C                    ..
        jsr     BattlePresentation_Entry_8176   ; ACC7 20 76 81                  v.
        jsr     BattlePresentation_Entry_83AA   ; ACCA 20 AA 83                  ..
        lda     $0A                             ; ACCD A5 0A                    ..
        ldy     $0B                             ; ACCF A4 0B                    ..
        beq     BattlePresentation_Branch_ACD5  ; ACD1 F0 02                    ..
        lda     #$1F                            ; ACD3 A9 1F                    ..
BattlePresentation_Branch_ACD5:
        sta     $0A                             ; ACD5 85 0A                    ..
        lda     #$00                            ; ACD7 A9 00                    ..
        sta     $0B                             ; ACD9 85 0B                    ..
        lda     $8C                             ; ACDB A5 8C                    ..
        jsr     BattlePresentation_Entry_819A   ; ACDD 20 9A 81                  ..
        lda     $0A                             ; ACE0 A5 0A                    ..
        cmp     #$18                            ; ACE2 C9 18                    ..
        bcc     BattlePresentation_Branch_AD0D  ; ACE4 90 27                    .'
        ldx     #$0E                            ; ACE6 A2 0E                    ..
        lda     $8C                             ; ACE8 A5 8C                    ..
        jsr     BattlePresentation_Entry_819A   ; ACEA 20 9A 81                  ..
        sec                                     ; ACED 38                       8
        lda     $0E                             ; ACEE A5 0E                    ..
        sbc     $75D4                           ; ACF0 ED D4 75                 ..u
        lda     $0F                             ; ACF3 A5 0F                    ..
        sbc     $75D5                           ; ACF5 ED D5 75                 ..u
        bcc     BattlePresentation_Branch_AD0D  ; ACF8 90 13                    ..
        lda     $0E                             ; ACFA A5 0E                    ..
        sta     $75D4                           ; ACFC 8D D4 75                 ..u
        lda     $0F                             ; ACFF A5 0F                    ..
        sta     $75D5                           ; AD01 8D D5 75                 ..u
        lda     $75D3                           ; AD04 AD D3 75                 ..u
        sta     $75DB                           ; AD07 8D DB 75                 ..u
        jsr     BattlePresentation_Entry_AA54   ; AD0A 20 54 AA                  T.
BattlePresentation_Branch_AD0D:
        rts                                     ; AD0D 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AD0E:
        lda     $00                           ; AD0E A5 00                    ..
        cmp     $75D4                           ; AD10 CD D4 75                 ..u
        bcc     BattlePresentation_Branch_AD24  ; AD13 90 0F                    ..
        sta     $75D4                           ; AD15 8D D4 75                 ..u
        lda     $75D2                           ; AD18 AD D2 75                 ..u
        sta     $75DA                           ; AD1B 8D DA 75                 ..u
        lda     $75D3                           ; AD1E AD D3 75                 ..u
        sta     $75DB                           ; AD21 8D DB 75                 ..u
BattlePresentation_Branch_AD24:
        rts                                     ; AD24 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_AD25:
        rts                                     ; AD25 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AD26:
        jsr     BattlePresentation_Entry_8719   ; AD26 20 19 87                  ..
        bcc     BattlePresentation_Branch_AD25  ; AD29 90 FA                    ..
        jsr     BattlePresentation_Entry_87D9   ; AD2B 20 D9 87                  ..
        lda     $75E9                           ; AD2E AD E9 75                 ..u
        ldx     #$0E                            ; AD31 A2 0E                    ..
        jsr     UpperFixedEngine_Entry_C851     ; AD33 20 51 C8                  Q.
        jsr     BattlePresentation_Entry_8823   ; AD36 20 23 88                  #.
        ldy     #$05                            ; AD39 A0 05                    ..
        lda     ($79),y                         ; AD3B B1 79                    .y
        and     #$10                            ; AD3D 29 10                    ).
        beq     BattlePresentation_Branch_AD46  ; AD3F F0 05                    ..
        lda     #$06                            ; AD41 A9 06                    ..
        jsr     BattlePresentation_Entry_8198   ; AD43 20 98 81                  ..
BattlePresentation_Branch_AD46:
        lda     $72E4                           ; AD46 AD E4 72                 ..r
        bmi     BattlePresentation_Branch_AD8B  ; AD49 30 40                    0@
        ldy     #$05                            ; AD4B A0 05                    ..
        lda     ($79),y                         ; AD4D B1 79                    .y
        and     #$08                            ; AD4F 29 08                    ).
        bne     BattlePresentation_Branch_AD8B  ; AD51 D0 38                    .8
        jsr     BattlePresentation_Entry_8866   ; AD53 20 66 88                  f.
        cmp     #$05                            ; AD56 C9 05                    ..
        bcs     BattlePresentation_Branch_AD8B  ; AD58 B0 31                    .1
        sta     $0C                             ; AD5A 85 0C                    ..
        ldx     #$0B                            ; AD5C A2 0B                    ..
BattlePresentation_Branch_AD5E:
        txa                                     ; AD5E 8A                       .
        pha                                     ; AD5F 48                       H
        sta     $0D                             ; AD60 85 0D                    ..
        jsr     BattlePresentation_Entry_A5AA   ; AD62 20 AA A5                  ..
        bcc     BattlePresentation_Branch_AD86  ; AD65 90 1F                    ..
        cpy     #$12                            ; AD67 C0 12                    ..
        bcs     BattlePresentation_Branch_AD86  ; AD69 B0 1B                    ..
        lda     Bank13_BattlePresentationStateLookup,y; AD6B B9 67 B9           .g.
        and     #$1F                            ; AD6E 29 1F                    ).
        pha                                     ; AD70 48                       H
        jsr     BattlePresentation_Entry_86D6   ; AD71 20 D6 86                  ..
        lda     $01                             ; AD74 A5 01                    ..
        beq     BattlePresentation_Branch_AD7C  ; AD76 F0 04                    ..
        lda     #$FF                            ; AD78 A9 FF                    ..
        sta     $00                           ; AD7A 85 00                    ..
BattlePresentation_Branch_AD7C:
        pla                                     ; AD7C 68                       h
        cmp     $00                           ; AD7D C5 00                    ..
        beq     BattlePresentation_Branch_AD83  ; AD7F F0 02                    ..
        bcs     BattlePresentation_Branch_AD86  ; AD81 B0 03                    ..
BattlePresentation_Branch_AD83:
        jsr     BattlePresentation_Entry_ADC0   ; AD83 20 C0 AD                  ..
BattlePresentation_Branch_AD86:
        pla                                     ; AD86 68                       h
        tax                                     ; AD87 AA                       .
        dex                                     ; AD88 CA                       .
        bpl     BattlePresentation_Branch_AD5E  ; AD89 10 D3                    ..
BattlePresentation_Branch_AD8B:
        lda     $95                             ; AD8B A5 95                    ..
        and     #$0F                            ; AD8D 29 0F                    ).
        beq     BattlePresentation_Branch_AD95  ; AD8F F0 04                    ..
        lda     #$FF                            ; AD91 A9 FF                    ..
        sta     $95                             ; AD93 85 95                    ..
BattlePresentation_Branch_AD95:
        lda     $94                             ; AD95 A5 94                    ..
        sta     $8C                             ; AD97 85 8C                    ..
        lda     $95                             ; AD99 A5 95                    ..
        and     #$0F                            ; AD9B 29 0F                    ).
        sta     $8D                             ; AD9D 85 8D                    ..
        rts                                     ; AD9F 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_ADA0:
        lda     $82                             ; ADA0 A5 82                    ..
        jsr     BattlePresentation_Entry_8A6B   ; ADA2 20 6B 8A                  k.
        ldy     #$13                            ; ADA5 A0 13                    ..
        lda     ($79),y                         ; ADA7 B1 79                    .y
        and     #$7F                            ; ADA9 29 7F                    ).
        cmp     #$7F                            ; ADAB C9 7F                    ..
        beq     BattlePresentation_Branch_ADBE  ; ADAD F0 0F                    ..
        ldx     #$09                            ; ADAF A2 09                    ..
BattlePresentation_Branch_ADB1:
        cmp     $ADBF,x                         ; ADB1 DD BF AD                 ...
        beq     BattlePresentation_Branch_ADBB  ; ADB4 F0 05                    ..
        dex                                     ; ADB6 CA                       .
        bpl     BattlePresentation_Branch_ADB1  ; ADB7 10 F8                    ..
        bmi     BattlePresentation_Branch_ADBE  ; ADB9 30 03                    0.
BattlePresentation_Branch_ADBB:
        jsr     BattlePresentation_Entry_ADC0   ; ADBB 20 C0 AD                  ..
BattlePresentation_Branch_ADBE:
        rts                                     ; ADBE 60                       `
; ----------------------------------------------------------------------------
        db   $00                             ; ADBF 00                       .
; ----------------------------------------------------------------------------
BattlePresentation_Entry_ADC0:
        lda     $0D                             ; ADC0 A5 0D                    ..
        cmp     #$12                            ; ADC2 C9 12                    ..
        bcs     BattlePresentation_Branch_ADD2  ; ADC4 B0 0C                    ..
        asl     a                               ; ADC6 0A                       .
        lda     $B74D,x                         ; ADC7 BD 4D B7                 .M.
        sta     $8A                             ; ADCA 85 8A                    ..
        lda     #$00                            ; ADCC A9 00                    ..
        sta     $8B                             ; ADCE 85 8B                    ..
        beq     BattlePresentation_Branch_ADDA  ; ADD0 F0 08                    ..
BattlePresentation_Branch_ADD2:
        lda     #$F4                            ; ADD2 A9 F4                    ..
        sta     $8A                             ; ADD4 85 8A                    ..
        lda     #$01                            ; ADD6 A9 01                    ..
        sta     $8B                             ; ADD8 85 8B                    ..
BattlePresentation_Branch_ADDA:
        lda     $0D                             ; ADDA A5 0D                    ..
        jsr     BattlePresentation_Entry_9304   ; ADDC 20 04 93                  ..
        ldx     $0D                             ; ADDF A6 0D                    ..
        lda     Bank13_BattlePresentationStateLookup,x; ADE1 BD 67 B9           .g.
        and     #$60                            ; ADE4 29 60                    )`
        cmp     #$40                            ; ADE6 C9 40                    .@
        bcs     BattlePresentation_Branch_ADF6  ; ADE8 B0 0C                    ..
        lda     #$00                            ; ADEA A9 00                    ..
        sta     $04                             ; ADEC 85 04                    ..
        ldx     #$03                            ; ADEE A2 03                    ..
        lda     $75E9                           ; ADF0 AD E9 75                 ..u
        jsr     UpperFixedEngine_Entry_C851     ; ADF3 20 51 C8                  Q.
BattlePresentation_Branch_ADF6:
        ldx     #$8A                            ; ADF6 A2 8A                    ..
        lda     $03                             ; ADF8 A5 03                    ..
        jsr     BattlePresentation_Entry_819A   ; ADFA 20 9A 81                  ..
        sec                                     ; ADFD 38                       8
        lda     $94                             ; ADFE A5 94                    ..
        sbc     $8A                             ; AE00 E5 8A                    ..
        lda     $95                             ; AE02 A5 95                    ..
        sbc     $8B                             ; AE04 E5 8B                    ..
        bcs     BattlePresentation_Branch_AE10  ; AE06 B0 08                    ..
        lda     $8A                             ; AE08 A5 8A                    ..
        sta     $94                             ; AE0A 85 94                    ..
        lda     $8B                             ; AE0C A5 8B                    ..
        sta     $95                             ; AE0E 85 95                    ..
BattlePresentation_Branch_AE10:
        rts                                     ; AE10 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AE11:
        lda     #$00                            ; AE11 A9 00                    ..
        sta     $82                             ; AE13 85 82                    ..
        sta     $94                             ; AE15 85 94                    ..
        sta     $95                             ; AE17 85 95                    ..
BattlePresentation_Branch_AE19:
        lda     #$00                            ; AE19 A9 00                    ..
        sta     $8B                             ; AE1B 85 8B                    ..
        sta     $8C                             ; AE1D 85 8C                    ..
        lda     $82                             ; AE1F A5 82                    ..
        jsr     BattlePresentation_Entry_8A6B   ; AE21 20 6B 8A                  k.
        bcc     BattlePresentation_Branch_AE5A  ; AE24 90 34                    .4
        sta     $8A                             ; AE26 85 8A                    ..
        ldy     #$00                            ; AE28 A0 00                    ..
        lda     ($79),y                         ; AE2A B1 79                    .y
        asl     a                               ; AE2C 0A                       .
        bcc     BattlePresentation_Branch_AE5A  ; AE2D 90 2B                    .+
        bmi     BattlePresentation_Branch_AE5A  ; AE2F 30 29                    0)
        lda     $8A                             ; AE31 A5 8A                    ..
        jsr     BattlePresentation_Entry_89F5   ; AE33 20 F5 89                  ..
        ldy     #$05                            ; AE36 A0 05                    ..
        lda     ($79),y                         ; AE38 B1 79                    .y
        and     #$04                            ; AE3A 29 04                    ).
        bne     BattlePresentation_Branch_AE5A  ; AE3C D0 1C                    ..
        inc     $8C                             ; AE3E E6 8C                    ..
        lda     ($79),y                         ; AE40 B1 79                    .y
        and     #$08                            ; AE42 29 08                    ).
        beq     BattlePresentation_Branch_AE49  ; AE44 F0 03                    ..
        jsr     BattlePresentation_Entry_AEA6   ; AE46 20 A6 AE                  ..
BattlePresentation_Branch_AE49:
        lda     ($79),y                         ; AE49 B1 79                    .y
        and     #$10                            ; AE4B 29 10                    ).
        beq     BattlePresentation_Branch_AE52  ; AE4D F0 03                    ..
        jsr     BattlePresentation_Entry_AEB4   ; AE4F 20 B4 AE                  ..
BattlePresentation_Branch_AE52:
        lda     ($79),y                         ; AE52 B1 79                    .y
        lsr     a                               ; AE54 4A                       J
        bcc     BattlePresentation_Branch_AE5A  ; AE55 90 03                    ..
        jsr     BattlePresentation_Entry_AEAF   ; AE57 20 AF AE                  ..
BattlePresentation_Branch_AE5A:
        lda     $8B                             ; AE5A A5 8B                    ..
        ldy     $8C                             ; AE5C A4 8C                    ..
        ldx     #$94                            ; AE5E A2 94                    ..
        jsr     AddWordToPointer                ; AE60 20 1D C8                  ..
        inc     $82                             ; AE63 E6 82                    ..
        lda     $82                             ; AE65 A5 82                    ..
        cmp     #$04                            ; AE67 C9 04                    ..
        bcc     BattlePresentation_Branch_AE19  ; AE69 90 AE                    ..
        sec                                     ; AE6B 38                       8
        lda     #$00                            ; AE6C A9 00                    ..
        sbc     $94                             ; AE6E E5 94                    ..
        sta     $8B                             ; AE70 85 8B                    ..
        lda     #$04                            ; AE72 A9 04                    ..
        sbc     $95                             ; AE74 E5 95                    ..
        sta     $8C                             ; AE76 85 8C                    ..
        lda     $75E8                           ; AE78 AD E8 75                 ..u
        beq     BattlePresentation_Branch_AE9E  ; AE7B F0 21                    .!
        cmp     #$05                            ; AE7D C9 05                    ..
        bcs     BattlePresentation_Branch_AE9E  ; AE7F B0 1D                    ..
        lda     $6E80                           ; AE81 AD 80 6E                 ..n
        asl     a                               ; AE84 0A                       .
        asl     a                               ; AE85 0A                       .
        adc     $75E8                           ; AE86 6D E8 75                 m.u
        tay                                     ; AE89 A8                       .
        lda     $BB06,y                         ; AE8A B9 06 BB                 ...
        ldx     #$8B                            ; AE8D A2 8B                    ..
        jsr     BattlePresentation_Entry_8330   ; AE8F 20 30 83                  0.
        lda     $19                             ; AE92 A5 19                    ..
        bne     BattlePresentation_Branch_AE9E  ; AE94 D0 08                    ..
        lda     $8C                             ; AE96 A5 8C                    ..
        clc                                     ; AE98 18                       .
        adc     $BB22,y                         ; AE99 79 22 BB                 y".
        bcc     BattlePresentation_Branch_AEA0  ; AE9C 90 02                    ..
BattlePresentation_Branch_AE9E:
        lda     #$FF                            ; AE9E A9 FF                    ..
BattlePresentation_Branch_AEA0:
        sta     $7368                           ; AEA0 8D 68 73                 .hs
        jmp     BattlePresentation_Branch_AECA  ; AEA3 4C CA AE                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AEA6:
        jsr     BattlePresentation_Entry_AEC0   ; AEA6 20 C0 AE                  ..
        lda     $BB3F,x                         ; AEA9 BD 3F BB                 .?.
        jmp     BattlePresentation_Branch_AEBA  ; AEAC 4C BA AE                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AEAF:
        lsr     $8C                             ; AEAF 46 8C                    F.
        ror     $8B                             ; AEB1 66 8B                    f.
        rts                                     ; AEB3 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AEB4:
        jsr     BattlePresentation_Entry_AEC0   ; AEB4 20 C0 AE                  ..
        lda     $BB49,x                         ; AEB7 BD 49 BB                 .I.
BattlePresentation_Branch_AEBA:
        ldx     #$8B                            ; AEBA A2 8B                    ..
        jsr     UpperFixedEngine_Entry_C7FB     ; AEBC 20 FB C7                  ..
        rts                                     ; AEBF 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AEC0:
        ldx     $75E8                           ; AEC0 AE E8 75                 ..u
        cpx     #$08                            ; AEC3 E0 08                    ..
        bcc     BattlePresentation_Branch_AEC9  ; AEC5 90 02                    ..
        ldx     #$08                            ; AEC7 A2 08                    ..
BattlePresentation_Branch_AEC9:
        rts                                     ; AEC9 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_AECA:
        lda     #$00                            ; AECA A9 00                    ..
        sta     $7B                             ; AECC 85 7B                    .{
        lda     #$0B                            ; AECE A9 0B                    ..
        sta     $0D                             ; AED0 85 0D                    ..
        lda     $75E8                           ; AED2 AD E8 75                 ..u
        sta     $0C                             ; AED5 85 0C                    ..
BattlePresentation_Branch_AED7:
        jsr     BattlePresentation_Entry_A5AA   ; AED7 20 AA A5                  ..
        bcc     BattlePresentation_Branch_AEE7  ; AEDA 90 0B                    ..
        lda     Bank13_BattlePresentationStateLookup,y; AEDC B9 67 B9           .g.
        and     #$1F                            ; AEDF 29 1F                    ).
        cmp     $7B                             ; AEE1 C5 7B                    .{
        bcc     BattlePresentation_Branch_AEE7  ; AEE3 90 02                    ..
        sta     $7B                             ; AEE5 85 7B                    .{
BattlePresentation_Branch_AEE7:
        dec     $0D                             ; AEE7 C6 0D                    ..
        bpl     BattlePresentation_Branch_AED7  ; AEE9 10 EC                    ..
        lda     $7368                           ; AEEB AD 68 73                 .hs
        sta     $00                           ; AEEE 85 00                    ..
        lda     #$00                            ; AEF0 A9 00                    ..
        sta     $01                             ; AEF2 85 01                    ..
        lda     $7B                             ; AEF4 A5 7B                    .{
        ldx     #$00                            ; AEF6 A2 00                    ..
        jsr     BattlePresentation_Entry_8330   ; AEF8 20 30 83                  0.
        jsr     BattlePresentation_Entry_8187   ; AEFB 20 87 81                  ..
        lsr     $01                             ; AEFE 46 01                    F.
        ror     $00                           ; AF00 66 00                    f.
        lda     $01                             ; AF02 A5 01                    ..
        beq     BattlePresentation_Branch_AF0A  ; AF04 F0 04                    ..
        lda     #$FF                            ; AF06 A9 FF                    ..
        sta     $00                           ; AF08 85 00                    ..
BattlePresentation_Branch_AF0A:
        lda     $00                           ; AF0A A5 00                    ..
        sta     $75EF                           ; AF0C 8D EF 75                 ..u
        rts                                     ; AF0F 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AF10:
        jsr     BattlePresentation_Entry_9584   ; AF10 20 84 95                  ..
        jsr     BattlePresentation_Entry_A6C6   ; AF13 20 C6 A6                  ..
        ldx     #$08                            ; AF16 A2 08                    ..
BattlePresentation_Branch_AF18:
        txa                                     ; AF18 8A                       .
        pha                                     ; AF19 48                       H
        jsr     BattlePresentation_Entry_A54D   ; AF1A 20 4D A5                  M.
        pla                                     ; AF1D 68                       h
        tax                                     ; AF1E AA                       .
        dex                                     ; AF1F CA                       .
        bpl     BattlePresentation_Branch_AF18  ; AF20 10 F6                    ..
        jsr     BattlePresentation_Entry_A6CA   ; AF22 20 CA A6                  ..
        jsr     BattlePresentation_Entry_A6CE   ; AF25 20 CE A6                  ..
        jsr     BattlePresentation_Entry_9135   ; AF28 20 35 91                  5.
        bcc     BattlePresentation_Branch_AF3D  ; AF2B 90 10                    ..
        jsr     BattlePresentation_Entry_91A0   ; AF2D 20 A0 91                  ..
        lda     #$09                            ; AF30 A9 09                    ..
        jsr     BattlePresentation_Entry_A54D   ; AF32 20 4D A5                  M.
        lda     #$0A                            ; AF35 A9 0A                    ..
        jsr     BattlePresentation_Entry_A54D   ; AF37 20 4D A5                  M.
        jsr     BattlePresentation_Entry_A6D2   ; AF3A 20 D2 A6                  ..
BattlePresentation_Branch_AF3D:
        lda     #$0B                            ; AF3D A9 0B                    ..
        jsr     BattlePresentation_Entry_A54D   ; AF3F 20 4D A5                  M.
        jsr     BattlePresentation_Entry_B0E0   ; AF42 20 E0 B0                  ..
        jmp     BattlePresentation_Branch_9110  ; AF45 4C 10 91                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AF48:
        jsr     BattlePresentation_Entry_9584   ; AF48 20 84 95                  ..
        jsr     BattlePresentation_Entry_A6C6   ; AF4B 20 C6 A6                  ..
        lda     #$00                            ; AF4E A9 00                    ..
        jsr     BattlePresentation_Entry_A54D   ; AF50 20 4D A5                  M.
        lda     #$01                            ; AF53 A9 01                    ..
        jsr     BattlePresentation_Entry_A54D   ; AF55 20 4D A5                  M.
        lda     #$02                            ; AF58 A9 02                    ..
        jsr     BattlePresentation_Entry_A54D   ; AF5A 20 4D A5                  M.
        lda     #$03                            ; AF5D A9 03                    ..
        jsr     BattlePresentation_Entry_A54D   ; AF5F 20 4D A5                  M.
        lda     #$04                            ; AF62 A9 04                    ..
        jsr     BattlePresentation_Entry_A54D   ; AF64 20 4D A5                  M.
        lda     #$06                            ; AF67 A9 06                    ..
        jsr     BattlePresentation_Entry_A54D   ; AF69 20 4D A5                  M.
        jsr     BattlePresentation_Entry_A6CA   ; AF6C 20 CA A6                  ..
        jsr     BattlePresentation_Entry_A6CE   ; AF6F 20 CE A6                  ..
        jsr     BattlePresentation_Entry_9135   ; AF72 20 35 91                  5.
        bcc     BattlePresentation_Branch_AF91  ; AF75 90 1A                    ..
        jsr     BattlePresentation_Entry_91A0   ; AF77 20 A0 91                  ..
        lda     #$07                            ; AF7A A9 07                    ..
        jsr     BattlePresentation_Entry_A54D   ; AF7C 20 4D A5                  M.
        lda     #$08                            ; AF7F A9 08                    ..
        jsr     BattlePresentation_Entry_A54D   ; AF81 20 4D A5                  M.
        lda     #$09                            ; AF84 A9 09                    ..
        jsr     BattlePresentation_Entry_A54D   ; AF86 20 4D A5                  M.
        lda     #$0A                            ; AF89 A9 0A                    ..
        jsr     BattlePresentation_Entry_A54D   ; AF8B 20 4D A5                  M.
        jsr     BattlePresentation_Entry_A6D2   ; AF8E 20 D2 A6                  ..
BattlePresentation_Branch_AF91:
        jsr     BattlePresentation_Entry_B0E0   ; AF91 20 E0 B0                  ..
        jmp     BattlePresentation_Branch_9110  ; AF94 4C 10 91                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AF97:
        jsr     BattlePresentation_Entry_9584   ; AF97 20 84 95                  ..
        jsr     BattlePresentation_Entry_A6C6   ; AF9A 20 C6 A6                  ..
        lda     #$00                            ; AF9D A9 00                    ..
        jsr     BattlePresentation_Entry_A54D   ; AF9F 20 4D A5                  M.
        lda     #$01                            ; AFA2 A9 01                    ..
        jsr     BattlePresentation_Entry_A54D   ; AFA4 20 4D A5                  M.
        lda     #$02                            ; AFA7 A9 02                    ..
        jsr     BattlePresentation_Entry_A54D   ; AFA9 20 4D A5                  M.
        lda     #$03                            ; AFAC A9 03                    ..
        jsr     BattlePresentation_Entry_A54D   ; AFAE 20 4D A5                  M.
        lda     #$04                            ; AFB1 A9 04                    ..
        jsr     BattlePresentation_Entry_A54D   ; AFB3 20 4D A5                  M.
        lda     #$06                            ; AFB6 A9 06                    ..
        jsr     BattlePresentation_Entry_A54D   ; AFB8 20 4D A5                  M.
        lda     #$07                            ; AFBB A9 07                    ..
        jsr     BattlePresentation_Entry_A54D   ; AFBD 20 4D A5                  M.
        lda     #$08                            ; AFC0 A9 08                    ..
        jsr     BattlePresentation_Entry_A54D   ; AFC2 20 4D A5                  M.
        jsr     BattlePresentation_Entry_A6CA   ; AFC5 20 CA A6                  ..
        lda     #$09                            ; AFC8 A9 09                    ..
        jsr     BattlePresentation_Entry_A54D   ; AFCA 20 4D A5                  M.
        lda     #$0A                            ; AFCD A9 0A                    ..
        jsr     BattlePresentation_Entry_A54D   ; AFCF 20 4D A5                  M.
        lda     #$0B                            ; AFD2 A9 0B                    ..
        jsr     BattlePresentation_Entry_A54D   ; AFD4 20 4D A5                  M.
        jsr     BattlePresentation_Entry_A6CE   ; AFD7 20 CE A6                  ..
        jsr     BattlePresentation_Entry_9135   ; AFDA 20 35 91                  5.
        bcc     BattlePresentation_Branch_AFEA  ; AFDD 90 0B                    ..
        jsr     BattlePresentation_Entry_91A0   ; AFDF 20 A0 91                  ..
        lda     #$05                            ; AFE2 A9 05                    ..
        jsr     BattlePresentation_Entry_A54D   ; AFE4 20 4D A5                  M.
        jsr     BattlePresentation_Entry_A6D2   ; AFE7 20 D2 A6                  ..
BattlePresentation_Branch_AFEA:
        jsr     BattlePresentation_Entry_B0E0   ; AFEA 20 E0 B0                  ..
        jmp     BattlePresentation_Branch_9110  ; AFED 4C 10 91                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_AFF0:
        jsr     BattlePresentation_Entry_9584   ; AFF0 20 84 95                  ..
        jsr     BattlePresentation_Entry_A6C6   ; AFF3 20 C6 A6                  ..
        lda     #$00                            ; AFF6 A9 00                    ..
        jsr     BattlePresentation_Entry_A54D   ; AFF8 20 4D A5                  M.
        lda     #$01                            ; AFFB A9 01                    ..
        jsr     BattlePresentation_Entry_A54D   ; AFFD 20 4D A5                  M.
        lda     #$02                            ; B000 A9 02                    ..
        jsr     BattlePresentation_Entry_A54D   ; B002 20 4D A5                  M.
        lda     #$03                            ; B005 A9 03                    ..
        jsr     BattlePresentation_Entry_A54D   ; B007 20 4D A5                  M.
        lda     #$06                            ; B00A A9 06                    ..
        jsr     BattlePresentation_Entry_A54D   ; B00C 20 4D A5                  M.
        lda     #$07                            ; B00F A9 07                    ..
        jsr     BattlePresentation_Entry_A54D   ; B011 20 4D A5                  M.
        lda     #$08                            ; B014 A9 08                    ..
        jsr     BattlePresentation_Entry_A54D   ; B016 20 4D A5                  M.
        lda     #$09                            ; B019 A9 09                    ..
        jsr     BattlePresentation_Entry_A54D   ; B01B 20 4D A5                  M.
        jsr     BattlePresentation_Entry_A6CA   ; B01E 20 CA A6                  ..
        lda     #$0A                            ; B021 A9 0A                    ..
        jsr     BattlePresentation_Entry_A54D   ; B023 20 4D A5                  M.
        lda     #$0B                            ; B026 A9 0B                    ..
        jsr     BattlePresentation_Entry_A54D   ; B028 20 4D A5                  M.
        jsr     BattlePresentation_Entry_A6CE   ; B02B 20 CE A6                  ..
        jsr     BattlePresentation_Entry_9135   ; B02E 20 35 91                  5.
        bcc     BattlePresentation_Branch_B043  ; B031 90 10                    ..
        jsr     BattlePresentation_Entry_91A0   ; B033 20 A0 91                  ..
        lda     #$04                            ; B036 A9 04                    ..
        jsr     BattlePresentation_Entry_A54D   ; B038 20 4D A5                  M.
        lda     #$05                            ; B03B A9 05                    ..
        jsr     BattlePresentation_Entry_A54D   ; B03D 20 4D A5                  M.
        jsr     BattlePresentation_Entry_A6D2   ; B040 20 D2 A6                  ..
BattlePresentation_Branch_B043:
        jsr     BattlePresentation_Entry_B0E0   ; B043 20 E0 B0                  ..
        jmp     BattlePresentation_Branch_9110  ; B046 4C 10 91                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B049:
        jsr     BattlePresentation_Entry_9584   ; B049 20 84 95                  ..
        jsr     BattlePresentation_Entry_A6C6   ; B04C 20 C6 A6                  ..
        jsr     BattlePresentation_Entry_A6CA   ; B04F 20 CA A6                  ..
        jsr     BattlePresentation_Entry_A6CE   ; B052 20 CE A6                  ..
        jsr     BattlePresentation_Entry_9135   ; B055 20 35 91                  5.
        bcc     BattlePresentation_Branch_B060  ; B058 90 06                    ..
        jsr     BattlePresentation_Entry_91A0   ; B05A 20 A0 91                  ..
        jsr     BattlePresentation_Entry_A6D2   ; B05D 20 D2 A6                  ..
BattlePresentation_Branch_B060:
        jsr     BattlePresentation_Entry_B0E0   ; B060 20 E0 B0                  ..
        jmp     BattlePresentation_Branch_9110  ; B063 4C 10 91                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B066:
        lda     SaveCurrentChapterMinus1        ; B066 AD 5A 61                 .Za
        cmp     #$04                            ; B069 C9 04                    ..
        bne     BattlePresentation_Branch_B0B3  ; B06B D0 46                    .F
        lda     $6E44                           ; B06D AD 44 6E                 .Dn
        lsr     a                               ; B070 4A                       J
        bcs     BattlePresentation_Branch_B0B3  ; B071 B0 40                    .@
        ldx     #$03                            ; B073 A2 03                    ..
BattlePresentation_Branch_B075:
        txa                                     ; B075 8A                       .
        pha                                     ; B076 48                       H
        lda     $6E49,x                         ; B077 BD 49 6E                 .In
        beq     BattlePresentation_Branch_B086  ; B07A F0 0A                    ..
        lda     $7206,x                         ; B07C BD 06 72                 ..r
        cmp     #$FF                            ; B07F C9 FF                    ..
        beq     BattlePresentation_Branch_B086  ; B081 F0 03                    ..
        jsr     BattlePresentation_Entry_B08C   ; B083 20 8C B0                  ..
BattlePresentation_Branch_B086:
        pla                                     ; B086 68                       h
        tax                                     ; B087 AA                       .
        dex                                     ; B088 CA                       .
        bpl     BattlePresentation_Branch_B075  ; B089 10 EA                    ..
        rts                                     ; B08B 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B08C:
        pha                                     ; B08C 48                       H
        jsr     BattlePresentation_Entry_B0B4   ; B08D 20 B4 B0                  ..
        tax                                     ; B090 AA                       .
        jsr     UpperFixedEngine_Entry_C891     ; B091 20 91 C8                  ..
        cmp     $B0DC,x                         ; B094 DD DC B0                 ...
        pla                                     ; B097 68                       h
        bcs     BattlePresentation_Branch_B0B3  ; B098 B0 19                    ..
        jsr     BattlePresentation_Entry_B0BD   ; B09A 20 BD B0                  ..
        cmp     $00                           ; B09D C5 00                    ..
        beq     BattlePresentation_Branch_B0B3  ; B09F F0 12                    ..
        clc                                     ; B0A1 18                       .
        adc     $FF5E,y                         ; B0A2 79 5E FF                 y^.
        sta     $01                             ; B0A5 85 01                    ..
        lda     $00                           ; B0A7 A5 00                    ..
        eor     #$FF                            ; B0A9 49 FF                    I.
        and     $619B,x                         ; B0AB 3D 9B 61                 =.a
        ora     $01                             ; B0AE 05 01                    ..
        sta     $619B,x                         ; B0B0 9D 9B 61                 ..a
BattlePresentation_Branch_B0B3:
        rts                                     ; B0B3 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B0B4:
        jsr     BattlePresentation_Entry_B0BD   ; B0B4 20 BD B0                  ..
        asl     a                               ; B0B7 0A                       .
BattlePresentation_Branch_B0B8:
        ror     a                               ; B0B8 6A                       j
        dey                                     ; B0B9 88                       .
        bpl     BattlePresentation_Branch_B0B8  ; B0BA 10 FC                    ..
        rts                                     ; B0BC 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B0BD:
        jsr     BattlePresentation_Entry_B0C3   ; B0BD 20 C3 B0                  ..
        and     $00                           ; B0C0 25 00                    %.
        rts                                     ; B0C2 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B0C3:
        pha                                     ; B0C3 48                       H
        lsr     a                               ; B0C4 4A                       J
        lsr     a                               ; B0C5 4A                       J
        tax                                     ; B0C6 AA                       .
        pla                                     ; B0C7 68                       h
        and     #$03                            ; B0C8 29 03                    ).
        asl     a                               ; B0CA 0A                       .
        tay                                     ; B0CB A8                       .
        lda     $FF5E,y                         ; B0CC B9 5E FF                 .^.
        sta     $00                           ; B0CF 85 00                    ..
        lda     $FF5F,y                         ; B0D1 B9 5F FF                 ._.
        ora     $00                           ; B0D4 05 00                    ..
        sta     $00                           ; B0D6 85 00                    ..
        lda     $619B,x                         ; B0D8 BD 9B 61                 ..a
        rts                                     ; B0DB 60                       `
; ----------------------------------------------------------------------------
        db   $FF,$80,$40,$00                 ; B0DC FF 80 40 00              ..@.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B0E0:
        lda     $75DB                           ; B0E0 AD DB 75                 ..u
        cmp     #$43                            ; B0E3 C9 43                    .C
        bne     BattlePresentation_Branch_B131  ; B0E5 D0 4A                    .J
        lda     $75EC                           ; B0E7 AD EC 75                 ..u
        cmp     $BB99                           ; B0EA CD 99 BB                 ...
        bcc     BattlePresentation_Branch_B131  ; B0ED 90 42                    .B
        jsr     BattlePresentation_Entry_B132   ; B0EF 20 32 B1                  2.
        bcc     BattlePresentation_Branch_B131  ; B0F2 90 3D                    .=
        lda     $75E8                           ; B0F4 AD E8 75                 ..u
        jsr     BattlePresentation_Entry_89B6   ; B0F7 20 B6 89                  ..
        ldy     #$01                            ; B0FA A0 01                    ..
        lda     ($79),y                         ; B0FC B1 79                    .y
        sta     $01                             ; B0FE 85 01                    ..
        iny                                     ; B100 C8                       .
        lda     ($79),y                         ; B101 B1 79                    .y
        sta     $02                           ; B103 85 02                    ..
        lda     #$00                            ; B105 A9 00                    ..
        sta     $00                           ; B107 85 00                    ..
        ldy     #$0C                            ; B109 A0 0C                    ..
        lda     ($79),y                         ; B10B B1 79                    .y
        sta     $03                             ; B10D 85 03                    ..
        iny                                     ; B10F C8                       .
        lda     ($79),y                         ; B110 B1 79                    .y
        sta     $04                             ; B112 85 04                    ..
        ldx     #$00                            ; B114 A2 00                    ..
        ldy     #$03                            ; B116 A0 03                    ..
        jsr     BattlePresentation_Entry_83F4   ; B118 20 F4 83                  ..
        lda     $01                             ; B11B A5 01                    ..
        ora     $02                           ; B11D 05 02                    ..
        bne     BattlePresentation_Branch_B131  ; B11F D0 10                    ..
        lda     $00                           ; B121 A5 00                    ..
        cmp     #$55                            ; B123 C9 55                    .U
        bcs     BattlePresentation_Branch_B131  ; B125 B0 0A                    ..
        lda     #$41                            ; B127 A9 41                    .A
        sta     $75DB                           ; B129 8D DB 75                 ..u
        lda     #$00                            ; B12C A9 00                    ..
        sta     $75DA                           ; B12E 8D DA 75                 ..u
BattlePresentation_Branch_B131:
        rts                                     ; B131 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B132:
        ldy     $735B                           ; B132 AC 5B 73                 .[s
        dey                                     ; B135 88                       .
BattlePresentation_Branch_B136:
        jsr     BattlePresentation_Entry_B14B   ; B136 20 4B B1                  K.
        lda     BattleSlotDescriptors,x         ; B139 BD F4 72                 ..r
        bpl     BattlePresentation_Branch_B142  ; B13C 10 04                    ..
        and     #$70                            ; B13E 29 70                    )p
        beq     BattlePresentation_Branch_B149  ; B140 F0 07                    ..
BattlePresentation_Branch_B142:
        iny                                     ; B142 C8                       .
        cpy     #$0C                            ; B143 C0 0C                    ..
        bcc     BattlePresentation_Branch_B136  ; B145 90 EF                    ..
        clc                                     ; B147 18                       .
        rts                                     ; B148 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_B149:
        sec                                     ; B149 38                       8
        rts                                     ; B14A 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B14B:
        sty     $00                           ; B14B 84 00                    ..
        ldx     #$00                            ; B14D A2 00                    ..
BattlePresentation_Branch_B14F:
        lda     $7348,x                         ; B14F BD 48 73                 .Hs
        and     #$0F                            ; B152 29 0F                    ).
        cmp     $00                           ; B154 C5 00                    ..
        beq     BattlePresentation_Branch_B15E  ; B156 F0 06                    ..
        inx                                     ; B158 E8                       .
        cpx     #$0C                            ; B159 E0 0C                    ..
        bne     BattlePresentation_Branch_B14F  ; B15B D0 F2                    ..
        clc                                     ; B15D 18                       .
BattlePresentation_Branch_B15E:
        rts                                     ; B15E 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B15F:
        jsr     BattlePresentation_Entry_8875   ; B15F 20 75 88                  u.
        lda     #$12                            ; B162 A9 12                    ..
        jsr     BattlePresentation_Entry_8198   ; B164 20 98 81                  ..
        jmp     BattlePresentation_Entry_82C9   ; B167 4C C9 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B16A:
        jsr     BattlePresentation_Entry_B1E5   ; B16A 20 E5 B1                  ..
        lda     #$12                            ; B16D A9 12                    ..
        jsr     BattlePresentation_Entry_8198   ; B16F 20 98 81                  ..
        jmp     BattlePresentation_Entry_8275   ; B172 4C 75 82                 Lu.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B175:
        jsr     BattlePresentation_Entry_B1E5   ; B175 20 E5 B1                  ..
        jsr     BattlePresentation_Entry_B190   ; B178 20 90 B1                  ..
        jsr     BattlePresentation_Entry_8275   ; B17B 20 75 82                  u.
        jsr     BattlePresentation_Entry_8875   ; B17E 20 75 88                  u.
        jsr     BattlePresentation_Entry_B190   ; B181 20 90 B1                  ..
        jsr     BattlePresentation_Entry_82C9   ; B184 20 C9 82                  ..
        jsr     BattlePresentation_Entry_8930   ; B187 20 30 89                  0.
        jsr     BattlePresentation_Entry_B190   ; B18A 20 90 B1                  ..
        jmp     BattlePresentation_Branch_829F  ; B18D 4C 9F 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B190:
        lda     #$0C                            ; B190 A9 0C                    ..
        jmp     BattlePresentation_Entry_8198   ; B192 4C 98 81                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B195:
        jsr     BattlePresentation_Entry_B1E5   ; B195 20 E5 B1                  ..
        jsr     BattlePresentation_Entry_B1B0   ; B198 20 B0 B1                  ..
        jsr     BattlePresentation_Entry_8275   ; B19B 20 75 82                  u.
        jsr     BattlePresentation_Entry_8875   ; B19E 20 75 88                  u.
        jsr     BattlePresentation_Entry_B1B0   ; B1A1 20 B0 B1                  ..
        jsr     BattlePresentation_Entry_82C9   ; B1A4 20 C9 82                  ..
        jsr     BattlePresentation_Entry_8930   ; B1A7 20 30 89                  0.
        jsr     BattlePresentation_Entry_B1B0   ; B1AA 20 B0 B1                  ..
        jmp     BattlePresentation_Branch_829F  ; B1AD 4C 9F 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B1B0:
        lda     #$18                            ; B1B0 A9 18                    ..
        jsr     BattlePresentation_Entry_8198   ; B1B2 20 98 81                  ..
        jmp     BattlePresentation_Entry_81E0   ; B1B5 4C E0 81                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B1B8:
        jsr     BattlePresentation_Entry_B1E5   ; B1B8 20 E5 B1                  ..
        asl     $94                             ; B1BB 06 94                    ..
        rol     $95                             ; B1BD 26 95                    &.
        jsr     BattlePresentation_Entry_81E0   ; B1BF 20 E0 81                  ..
        jsr     BattlePresentation_Entry_8275   ; B1C2 20 75 82                  u.
        jsr     BattlePresentation_Entry_8875   ; B1C5 20 75 88                  u.
        asl     $94                             ; B1C8 06 94                    ..
        rol     $95                             ; B1CA 26 95                    &.
        jsr     BattlePresentation_Entry_81E0   ; B1CC 20 E0 81                  ..
        jsr     BattlePresentation_Entry_82C9   ; B1CF 20 C9 82                  ..
        jsr     BattlePresentation_Entry_8930   ; B1D2 20 30 89                  0.
        asl     $94                             ; B1D5 06 94                    ..
        rol     $95                             ; B1D7 26 95                    &.
        jsr     BattlePresentation_Entry_81E0   ; B1D9 20 E0 81                  ..
        jmp     BattlePresentation_Branch_829F  ; B1DC 4C 9F 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B1DF:
        jsr     BattlePresentation_Entry_873B   ; B1DF 20 3B 87                  ;.
        jmp     BattlePresentation_Branch_B1E8  ; B1E2 4C E8 B1                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B1E5:
        jsr     BattlePresentation_Entry_8737   ; B1E5 20 37 87                  7.
BattlePresentation_Branch_B1E8:
        jsr     BattlePresentation_Entry_87D9   ; B1E8 20 D9 87                  ..
        jmp     BattlePresentation_Entry_8823   ; B1EB 4C 23 88                 L#.
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B1EE:
        jsr     BattlePresentation_Entry_B1DF   ; B1EE 20 DF B1                  ..
        jsr     BattlePresentation_Entry_B190   ; B1F1 20 90 B1                  ..
        jsr     BattlePresentation_Entry_828A   ; B1F4 20 8A 82                  ..
        jsr     BattlePresentation_Entry_8879   ; B1F7 20 79 88                  y.
        jsr     BattlePresentation_Entry_B190   ; B1FA 20 90 B1                  ..
        jsr     BattlePresentation_Entry_82DE   ; B1FD 20 DE 82                  ..
        jsr     BattlePresentation_Entry_8934   ; B200 20 34 89                  4.
        jsr     BattlePresentation_Entry_B190   ; B203 20 90 B1                  ..
        jmp     BattlePresentation_Branch_82B4  ; B206 4C B4 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B209:
        jsr     BattlePresentation_Entry_B1DF   ; B209 20 DF B1                  ..
        jsr     BattlePresentation_Entry_B224   ; B20C 20 24 B2                  $.
        jsr     BattlePresentation_Entry_828A   ; B20F 20 8A 82                  ..
        jsr     BattlePresentation_Entry_8879   ; B212 20 79 88                  y.
        jsr     BattlePresentation_Entry_B224   ; B215 20 24 B2                  $.
        jsr     BattlePresentation_Entry_82DE   ; B218 20 DE 82                  ..
        jsr     BattlePresentation_Entry_8934   ; B21B 20 34 89                  4.
        jsr     BattlePresentation_Entry_B224   ; B21E 20 24 B2                  $.
        jmp     BattlePresentation_Branch_82B4  ; B221 4C B4 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B224:
        lda     #$06                            ; B224 A9 06                    ..
        jmp     BattlePresentation_Entry_8198   ; B226 4C 98 81                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B229:
        jsr     BattlePresentation_Entry_B1DF   ; B229 20 DF B1                  ..
        jsr     BattlePresentation_Entry_828A   ; B22C 20 8A 82                  ..
        jsr     BattlePresentation_Entry_8879   ; B22F 20 79 88                  y.
        jsr     BattlePresentation_Entry_82DE   ; B232 20 DE 82                  ..
        jsr     BattlePresentation_Entry_8934   ; B235 20 34 89                  4.
        jmp     BattlePresentation_Branch_82B4  ; B238 4C B4 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B23B:
        lda     $72E4                           ; B23B AD E4 72                 ..r
        bmi     BattlePresentation_Branch_B24B  ; B23E 30 0B                    0.
        jsr     BattlePresentation_Entry_8879   ; B240 20 79 88                  y.
        lda     #$30                            ; B243 A9 30                    .0
        jsr     BattlePresentation_Entry_8198   ; B245 20 98 81                  ..
        jmp     BattlePresentation_Entry_82DE   ; B248 4C DE 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_B24B:
        rts                                     ; B24B 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B24C:
        jsr     BattlePresentation_Entry_886B   ; B24C 20 6B 88                  k.
        lda     #$28                            ; B24F A9 28                    .(
        jsr     BattlePresentation_Entry_8198   ; B251 20 98 81                  ..
        jmp     BattlePresentation_Entry_82C9   ; B254 4C C9 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B257:
        jsr     BattlePresentation_Entry_886B   ; B257 20 6B 88                  k.
        lda     #$18                            ; B25A A9 18                    ..
        jsr     BattlePresentation_Entry_8198   ; B25C 20 98 81                  ..
        jmp     BattlePresentation_Entry_82C9   ; B25F 4C C9 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B262:
        jsr     BattlePresentation_Entry_B1DF   ; B262 20 DF B1                  ..
        jsr     BattlePresentation_Entry_81E0   ; B265 20 E0 81                  ..
        lda     #$0C                            ; B268 A9 0C                    ..
        jsr     BattlePresentation_Entry_8198   ; B26A 20 98 81                  ..
        jsr     BattlePresentation_Entry_828A   ; B26D 20 8A 82                  ..
        jsr     BattlePresentation_Entry_8934   ; B270 20 34 89                  4.
        jsr     BattlePresentation_Entry_81E0   ; B273 20 E0 81                  ..
        asl     $94                             ; B276 06 94                    ..
        rol     $95                             ; B278 26 95                    &.
        jmp     BattlePresentation_Branch_82B4  ; B27A 4C B4 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B27D:
LB27F = $+ 2
        jsr     BattlePresentation_Entry_B1DF   ; B27D 20 DF B1                  ..
        jsr     BattlePresentation_Entry_B1B0   ; B280 20 B0 B1                  ..
        jsr     BattlePresentation_Entry_828A   ; B283 20 8A 82                  ..
        jsr     BattlePresentation_Entry_8879   ; B286 20 79 88                  y.
        jsr     BattlePresentation_Entry_B1B0   ; B289 20 B0 B1                  ..
        jsr     BattlePresentation_Entry_82DE   ; B28C 20 DE 82                  ..
        jsr     BattlePresentation_Entry_8934   ; B28F 20 34 89                  4.
        jsr     BattlePresentation_Entry_B1B0   ; B292 20 B0 B1                  ..
        jmp     BattlePresentation_Branch_82B4  ; B295 4C B4 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B298:
        jsr     BattlePresentation_Entry_8879   ; B298 20 79 88                  y.
        lda     #$12                            ; B29B A9 12                    ..
        jsr     BattlePresentation_Entry_8198   ; B29D 20 98 81                  ..
        jmp     BattlePresentation_Entry_82DE   ; B2A0 4C DE 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B2A3:
        lda     #$07                            ; B2A3 A9 07                    ..
        jsr     BattlePresentation_Entry_B2BA   ; B2A5 20 BA B2                  ..
        jmp     BattlePresentation_Entry_82C9   ; B2A8 4C C9 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B2AB:
        ldx     $7599                           ; B2AB AE 99 75                 ..u
        lda     $B27F,x                         ; B2AE BD 7F B2                 ...
        jsr     BattlePresentation_Entry_B2BA   ; B2B1 20 BA B2                  ..
        jmp     BattlePresentation_Entry_82DE   ; B2B4 4C DE 82                 L..
; ----------------------------------------------------------------------------
        db   $02,$05,$07                     ; B2B7 02 05 07                 ...
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B2BA:
        sta     $0F                             ; B2BA 85 0F                    ..
        jsr     BattlePresentation_Entry_86E5   ; B2BC 20 E5 86                  ..
        lda     $00                           ; B2BF A5 00                    ..
        ora     $01                             ; B2C1 05 01                    ..
        beq     BattlePresentation_Branch_B321  ; B2C3 F0 5C                    .\
        ldx     #$00                            ; B2C5 A2 00                    ..
        lda     $92                             ; B2C7 A5 92                    ..
        jsr     UpperFixedEngine_Entry_C851     ; B2C9 20 51 C8                  Q.
        lda     #$01                            ; B2CC A9 01                    ..
        jsr     AddByteToPointer                ; B2CE 20 13 C8                  ..
        ldx     $00                           ; B2D1 A6 00                    ..
        lda     $01                             ; B2D3 A5 01                    ..
        beq     BattlePresentation_Branch_B2D9  ; B2D5 F0 02                    ..
        ldx     #$FF                            ; B2D7 A2 FF                    ..
BattlePresentation_Branch_B2D9:
        stx     $00                           ; B2D9 86 00                    ..
        lda     $0F                             ; B2DB A5 0F                    ..
        asl     a                               ; B2DD 0A                       .
        asl     a                               ; B2DE 0A                       .
        asl     a                               ; B2DF 0A                       .
        cmp     $00                           ; B2E0 C5 00                    ..
        bcs     BattlePresentation_Branch_B2F9  ; B2E2 B0 15                    ..
        sta     $0F                             ; B2E4 85 0F                    ..
        lda     #$00                            ; B2E6 A9 00                    ..
        sta     $0E                             ; B2E8 85 0E                    ..
        ldx     #$0E                            ; B2EA A2 0E                    ..
        lda     $00                           ; B2EC A5 00                    ..
        jsr     UpperFixedEngine_Entry_C851     ; B2EE 20 51 C8                  Q.
        lda     $0E                             ; B2F1 A5 0E                    ..
        lsr     a                               ; B2F3 4A                       J
        lsr     a                               ; B2F4 4A                       J
        lsr     a                               ; B2F5 4A                       J
        lsr     a                               ; B2F6 4A                       J
        bpl     BattlePresentation_Branch_B2F9  ; B2F7 10 00                    ..
BattlePresentation_Branch_B2F9:
        lda     #$10                            ; B2F9 A9 10                    ..
        pha                                     ; B2FB 48                       H
        ldx     #$00                            ; B2FC A2 00                    ..
        stx     $94                             ; B2FE 86 94                    ..
        stx     $95                             ; B300 86 95                    ..
BattlePresentation_Branch_B302:
        lda     Bank13_BattlePresentationStateLookup,x; B302 BD 67 B9           .g.
        and     #$1F                            ; B305 29 1F                    ).
        cmp     $00                           ; B307 C5 00                    ..
        beq     BattlePresentation_Branch_B30D  ; B309 F0 02                    ..
        bcs     BattlePresentation_Branch_B318  ; B30B B0 0B                    ..
BattlePresentation_Branch_B30D:
        lda     Bank13_BattlePresentationValuesA,x; B30D BD EF 8A               ...
        adc     $94                             ; B310 65 94                    e.
        sta     $94                             ; B312 85 94                    ..
        bcc     BattlePresentation_Branch_B318  ; B314 90 02                    ..
        inc     $95                             ; B316 E6 95                    ..
BattlePresentation_Branch_B318:
        inx                                     ; B318 E8                       .
        cpx     #$35                            ; B319 E0 35                    .5
        bcc     BattlePresentation_Branch_B302  ; B31B 90 E5                    ..
        pla                                     ; B31D 68                       h
        jmp     BattlePresentation_Entry_8198   ; B31E 4C 98 81                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Branch_B321:
        lda     #$00                            ; B321 A9 00                    ..
        sta     $94                             ; B323 85 94                    ..
        sta     $95                             ; B325 85 95                    ..
        rts                                     ; B327 60                       `
; ----------------------------------------------------------------------------
        db   $16,$2A,$00,$33,$18,$2F,$03,$2B ; B328 16 2A 00 33 18 2F 03 2B  .*.3./.+
        db   $26,$1D,$10,$27,$07,$2D,$11,$30 ; B330 26 1D 10 27 07 2D 11 30  &..'.-.0
        db   $12,$34,$21,$29,$1A,$2A,$19,$2B ; B338 12 34 21 29 1A 2A 19 2B  .4!).*.+
        db   $22,$2C,$13,$30,$14,$31,$0D,$29 ; B340 22 2C 13 30 14 31 0D 29  ",.0.1.)
        db   $17,$2A,$2E,$2B,$0E,$24,$18,$30 ; B348 17 2A 2E 2B 0E 24 18 30  .*.+.$.0
        db   $0F,$32,$00,$1F,$03,$1C,$06,$28 ; B350 0F 32 00 1F 03 1C 06 28  .2.....(
        db   $01,$02,$04,$05,$07,$08,$09,$1F ; B358 01 02 04 05 07 08 09 1F  ........
        db   $0A,$1E,$0B,$33,$1C,$20,$1B,$23 ; B360 0A 1E 0B 33 1C 20 1B 23  ...3. .#
        db   $0C,$25,$FF,$FF,$33,$2A,$3B,$35 ; B368 0C 25 FF FF 33 2A 3B 35  .%..3*;5
        db   $2B,$30,$29,$3A,$2A,$30,$2B,$2C ; B370 2B 30 29 3A 2A 30 2B 2C  +0):*0+,
        db   $31,$FF,$29,$2E,$2A,$30,$2B,$FF ; B378 31 FF 29 2E 2A 30 2B FF  1.).*0+.
        db   $FF,$FF,$33,$35,$37,$FF,$FF,$FF ; B380 FF FF 33 35 37 FF FF FF  ..357...
        db   $FF,$FF,$33,$35,$38,$36,$FF,$FF ; B388 FF FF 33 35 38 36 FF FF  ..3586..
        db   $FF,$FF                         ; B390 FF FF                    ..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B392:
        jsr     BattlePresentation_Entry_B3EB   ; B392 20 EB B3                  ..
        ldx     #$00                            ; B395 A2 00                    ..
BattlePresentation_Branch_B397:
        txa                                     ; B397 8A                       .
        pha                                     ; B398 48                       H
        jsr     BattlePresentation_Entry_8784   ; B399 20 84 87                  ..
        jsr     BattlePresentation_Entry_8823   ; B39C 20 23 88                  #.
        jsr     BattlePresentation_Entry_8236   ; B39F 20 36 82                  6.
        lda     #$04                            ; B3A2 A9 04                    ..
        jsr     AddByteToPointer                ; B3A4 20 13 C8                  ..
        pla                                     ; B3A7 68                       h
        tax                                     ; B3A8 AA                       .
        jsr     BattlePresentation_Entry_B3D7   ; B3A9 20 D7 B3                  ..
        inx                                     ; B3AC E8                       .
        cpx     #$04                            ; B3AD E0 04                    ..
        bcc     BattlePresentation_Branch_B397  ; B3AF 90 E6                    ..
        rts                                     ; B3B1 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B3B2:
        jsr     BattlePresentation_Entry_B3EB   ; B3B2 20 EB B3                  ..
BattlePresentation_Branch_B3B5:
        lda     $0C                             ; B3B5 A5 0C                    ..
        sta     $94                             ; B3B7 85 94                    ..
        lda     $0D                             ; B3B9 A5 0D                    ..
        sta     $95                             ; B3BB 85 95                    ..
        jsr     BattlePresentation_Entry_8236   ; B3BD 20 36 82                  6.
        ldx     #$03                            ; B3C0 A2 03                    ..
BattlePresentation_Branch_B3C2:
        txa                                     ; B3C2 8A                       .
        jsr     BattlePresentation_Entry_B3D7   ; B3C3 20 D7 B3                  ..
        dex                                     ; B3C6 CA                       .
        bpl     BattlePresentation_Branch_B3C2  ; B3C7 10 F9                    ..
        rts                                     ; B3C9 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B3CA:
        jsr     BattlePresentation_Entry_B3EB   ; B3CA 20 EB B3                  ..
        ldx     #$0C                            ; B3CD A2 0C                    ..
        lda     #$05                            ; B3CF A9 05                    ..
        jsr     MultiplyPointerWord             ; B3D1 20 27 C8                  '.
        jmp     BattlePresentation_Branch_B3B5  ; B3D4 4C B5 B3                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B3D7:
        asl     a                               ; B3D7 0A                       .
        tay                                     ; B3D8 A8                       .
        clc                                     ; B3D9 18                       .
        lda     $75A3,y                         ; B3DA B9 A3 75                 ..u
        adc     $94                             ; B3DD 65 94                    e.
        sta     $75A3,y                         ; B3DF 99 A3 75                 ..u
        lda     $75A4,y                         ; B3E2 B9 A4 75                 ..u
        adc     $95                             ; B3E5 65 95                    e.
        sta     $75A4,y                         ; B3E7 99 A4 75                 ..u
        rts                                     ; B3EA 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B3EB:
        ldx     $93                             ; B3EB A6 93                    ..
        jsr     BattlePresentation_Entry_899C   ; B3ED 20 9C 89                  ..
        ldy     #$0D                            ; B3F0 A0 0D                    ..
        lda     ($86),y                       ; B3F2 B1 86                    ..
        and     #$03                            ; B3F4 29 03                    ).
        tax                                     ; B3F6 AA                       .
        brk                                     ; B3F7 00                       .
        db   $10,$8F                         ; B3F8 10 8F                    ..
; ----------------------------------------------------------------------------
        rts                                     ; B3FA 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B3FB:
        jsr     BattlePresentation_Entry_B392   ; B3FB 20 92 B3                  ..
        jsr     BattlePresentation_Entry_B1DF   ; B3FE 20 DF B1                  ..
        jsr     BattlePresentation_Entry_B419   ; B401 20 19 B4                  ..
        jsr     BattlePresentation_Entry_828A   ; B404 20 8A 82                  ..
        jsr     BattlePresentation_Entry_8879   ; B407 20 79 88                  y.
        jsr     BattlePresentation_Entry_B419   ; B40A 20 19 B4                  ..
        jsr     BattlePresentation_Entry_82DE   ; B40D 20 DE 82                  ..
        jsr     BattlePresentation_Entry_8934   ; B410 20 34 89                  4.
        jsr     BattlePresentation_Entry_B419   ; B413 20 19 B4                  ..
        jmp     BattlePresentation_Branch_82B4  ; B416 4C B4 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B419:
        lda     #$0C                            ; B419 A9 0C                    ..
        jsr     BattlePresentation_Entry_8198   ; B41B 20 98 81                  ..
        jmp     BattlePresentation_Entry_81E0   ; B41E 4C E0 81                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B421:
        jmp     BattlePresentation_Entry_B392   ; B421 4C 92 B3                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B424:
        jsr     BattlePresentation_Entry_B392   ; B424 20 92 B3                  ..
        jsr     BattlePresentation_Entry_B1DF   ; B427 20 DF B1                  ..
        jsr     BattlePresentation_Entry_81E0   ; B42A 20 E0 81                  ..
        jsr     BattlePresentation_Entry_828A   ; B42D 20 8A 82                  ..
        jsr     BattlePresentation_Entry_8879   ; B430 20 79 88                  y.
        jsr     BattlePresentation_Entry_81E0   ; B433 20 E0 81                  ..
        jsr     BattlePresentation_Entry_82DE   ; B436 20 DE 82                  ..
        jsr     BattlePresentation_Entry_8934   ; B439 20 34 89                  4.
        jsr     BattlePresentation_Entry_81E0   ; B43C 20 E0 81                  ..
        jmp     BattlePresentation_Branch_82B4  ; B43F 4C B4 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B442:
        jsr     BattlePresentation_Entry_87B9   ; B442 20 B9 87                  ..
        jsr     BattlePresentation_Entry_81E0   ; B445 20 E0 81                  ..
        jmp     BattlePresentation_Branch_82F3  ; B448 4C F3 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B44B:
        jsr     BattlePresentation_Entry_87B9   ; B44B 20 B9 87                  ..
        lsr     $94                             ; B44E 46 94                    F.
        ror     $95                             ; B450 66 95                    f.
        lda     #$01                            ; B452 A9 01                    ..
        ldx     #$94                            ; B454 A2 94                    ..
        jsr     AddByteToPointer                ; B456 20 13 C8                  ..
        lda     #$06                            ; B459 A9 06                    ..
        jsr     BattlePresentation_Entry_8198   ; B45B 20 98 81                  ..
        jmp     BattlePresentation_Branch_82F3  ; B45E 4C F3 82                 L..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B461:
        rts                                     ; B461 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B462:
        tya                                     ; B462 98                       .
        pha                                     ; B463 48                       H
        lda     $82                             ; B464 A5 82                    ..
        pha                                     ; B466 48                       H
        lda     #$00                            ; B467 A9 00                    ..
        sta     $6E                             ; B469 85 6E                    .n
        lda     #$03                            ; B46B A9 03                    ..
        sta     $82                             ; B46D 85 82                    ..
BattlePresentation_Branch_B46F:
        lda     $82                             ; B46F A5 82                    ..
        jsr     BattlePresentation_Entry_8A6B   ; B471 20 6B 8A                  k.
        bcc     BattlePresentation_Branch_B47B  ; B474 90 05                    ..
        ldy     #$00                            ; B476 A0 00                    ..
        lda     ($79),y                         ; B478 B1 79                    .y
        asl     a                               ; B47A 0A                       .
BattlePresentation_Branch_B47B:
        rol     $6E                             ; B47B 26 6E                    &n
        dec     $82                             ; B47D C6 82                    ..
        bpl     BattlePresentation_Branch_B46F  ; B47F 10 EE                    ..
        pla                                     ; B481 68                       h
        sta     $82                             ; B482 85 82                    ..
        pla                                     ; B484 68                       h
        tay                                     ; B485 A8                       .
        lda     $6E                             ; B486 A5 6E                    .n
        rts                                     ; B488 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B489:
        jsr     BattlePresentation_Entry_B573   ; B489 20 73 B5                  s.
        jsr     BattlePresentation_Entry_B496   ; B48C 20 96 B4                  ..
        jsr     BattlePresentation_Entry_B4BA   ; B48F 20 BA B4                  ..
        jsr     BattlePresentation_Entry_B4E8   ; B492 20 E8 B4                  ..
        rts                                     ; B495 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B496:
        pha                                     ; B496 48                       H
        lda     #$00                            ; B497 A9 00                    ..
        sta     $04                             ; B499 85 04                    ..
        pla                                     ; B49B 68                       h
        pha                                     ; B49C 48                       H
        cmp     #$13                            ; B49D C9 13                    ..
        bcc     BattlePresentation_Branch_B4B8  ; B49F 90 17                    ..
        cmp     #$19                            ; B4A1 C9 19                    ..
        bcs     BattlePresentation_Branch_B4B8  ; B4A3 B0 13                    ..
        lda     $7363                           ; B4A5 AD 63 73                 .cs
        bmi     BattlePresentation_Branch_B4B8  ; B4A8 30 0E                    0.
        lda     $72E7                           ; B4AA AD E7 72                 ..r
        and     #$10                            ; B4AD 29 10                    ).
        beq     BattlePresentation_Branch_B4B8  ; B4AF F0 07                    ..
        lda     #$80                            ; B4B1 A9 80                    ..
        sta     $04                             ; B4B3 85 04                    ..
        jsr     BattlePresentation_Entry_B553   ; B4B5 20 53 B5                  S.
BattlePresentation_Branch_B4B8:
        pla                                     ; B4B8 68                       h
        rts                                     ; B4B9 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B4BA:
        pha                                     ; B4BA 48                       H
        ldx     #$02                            ; B4BB A2 02                    ..
        cmp     #$13                            ; B4BD C9 13                    ..
        bcc     BattlePresentation_Branch_B4E6  ; B4BF 90 25                    .%
        cmp     #$16                            ; B4C1 C9 16                    ..
        bcc     BattlePresentation_Branch_B4CB  ; B4C3 90 06                    ..
        cmp     #$19                            ; B4C5 C9 19                    ..
        bcs     BattlePresentation_Branch_B4E6  ; B4C7 B0 1D                    ..
        ldx     #$05                            ; B4C9 A2 05                    ..
BattlePresentation_Branch_B4CB:
        stx     $00                           ; B4CB 86 00                    ..
        brk                                     ; B4CD 00                       .
        db   $07,$1F                         ; B4CE 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattlePresentation_Branch_B4E6  ; B4D0 90 14                    ..
        lda     $00                           ; B4D2 A5 00                    ..
        brk                                     ; B4D4 00                       .
        db   $22,$B3                         ; B4D5 22 B3                    ".
; ----------------------------------------------------------------------------
        tax                                     ; B4D7 AA                       .
        lda     $B749,x                         ; B4D8 BD 49 B7                 .I.
        jsr     BattlePresentation_Entry_B553   ; B4DB 20 53 B5                  S.
        inc     $7361                           ; B4DE EE 61 73                 .as
        bne     BattlePresentation_Branch_B4E6  ; B4E1 D0 03                    ..
        inc     $7362                           ; B4E3 EE 62 73                 .bs
BattlePresentation_Branch_B4E6:
        pla                                     ; B4E6 68                       h
        rts                                     ; B4E7 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B4E8:
        sta     $03                             ; B4E8 85 03                    ..
        brk                                     ; B4EA 00                       .
        db   $07,$1F                         ; B4EB 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattlePresentation_Branch_B53F  ; B4ED B0 50                    .P
        lda     #$01                            ; B4EF A9 01                    ..
        brk                                     ; B4F1 00                       .
        db   $3B,$73                         ; B4F2 3B 73                    ;s
; ----------------------------------------------------------------------------
        bcs     BattlePresentation_Branch_B504  ; B4F4 B0 0E                    ..
        lda     #$02                            ; B4F6 A9 02                    ..
        brk                                     ; B4F8 00                       .
        db   $3B,$73                         ; B4F9 3B 73                    ;s
; ----------------------------------------------------------------------------
        bcs     BattlePresentation_Branch_B504  ; B4FB B0 07                    ..
        lda     #$03                            ; B4FD A9 03                    ..
        brk                                     ; B4FF 00                       .
        db   $3B,$73                         ; B500 3B 73                    ;s
; ----------------------------------------------------------------------------
        bcc     BattlePresentation_Branch_B53F  ; B502 90 3B                    .;
BattlePresentation_Branch_B504:
        and     #$7F                            ; B504 29 7F                    ).
        ldx     #$06                            ; B506 A2 06                    ..
BattlePresentation_Branch_B508:
        cmp     $B540,x                         ; B508 DD 40 B5                 .@.
        beq     BattlePresentation_Branch_B511  ; B50B F0 04                    ..
        dex                                     ; B50D CA                       .
        bpl     BattlePresentation_Branch_B508  ; B50E 10 F8                    ..
        rts                                     ; B510 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_B511:
        txa                                     ; B511 8A                       .
        lsr     a                               ; B512 4A                       J
        tax                                     ; B513 AA                       .
        lda     $B547,x                         ; B514 BD 47 B5                 .G.
        bcc     BattlePresentation_Branch_B51D  ; B517 90 04                    ..
        lsr     a                               ; B519 4A                       J
        lsr     a                               ; B51A 4A                       J
        lsr     a                               ; B51B 4A                       J
        lsr     a                               ; B51C 4A                       J
BattlePresentation_Branch_B51D:
        and     #$0F                            ; B51D 29 0F                    ).
        sta     $04                             ; B51F 85 04                    ..
        ldx     #$00                            ; B521 A2 00                    ..
BattlePresentation_Branch_B523:
        lsr     $04                             ; B523 46 04                    F.
        bcc     BattlePresentation_Branch_B533  ; B525 90 0C                    ..
        lda     $03                             ; B527 A5 03                    ..
        cmp     $B54B,x                         ; B529 DD 4B B5                 .K.
        bcc     BattlePresentation_Branch_B533  ; B52C 90 05                    ..
        cmp     $B54C,x                         ; B52E DD 4C B5                 .L.
        bcc     BattlePresentation_Branch_B53A  ; B531 90 07                    ..
BattlePresentation_Branch_B533:
        inx                                     ; B533 E8                       .
        inx                                     ; B534 E8                       .
        cpx     #$08                            ; B535 E0 08                    ..
        bne     BattlePresentation_Branch_B523  ; B537 D0 EA                    ..
        rts                                     ; B539 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_B53A:
        lda     #$AA                            ; B53A A9 AA                    ..
        jsr     BattlePresentation_Entry_B553   ; B53C 20 53 B5                  S.
BattlePresentation_Branch_B53F:
        rts                                     ; B53F 60                       `
; ----------------------------------------------------------------------------
        db   $32,$34,$35,$37,$3C,$41,$43     ; B540 32 34 35 37 3C 41 43     2457<AC
        db   $78,$F9,$79,$08                 ; B547 78 F9 79 08              x.y.
        db   $00                             ; B54B 00                       .
        db   $09,$09,$0D,$0D,$10,$13,$19     ; B54C 09 09 0D 0D 10 13 19     .......
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B553:
        pha                                     ; B553 48                       H
        lda     $7361                           ; B554 AD 61 73                 .as
        sta     $00                           ; B557 85 00                    ..
        lda     $7362                           ; B559 AD 62 73                 .bs
        sta     $01                             ; B55C 85 01                    ..
        pla                                     ; B55E 68                       h
        ldx     #$00                            ; B55F A2 00                    ..
        brk                                     ; B561 00                       .
        db   $36,$0F                         ; B562 36 0F                    6.
; ----------------------------------------------------------------------------
        lda     $01                             ; B564 A5 01                    ..
        sta     $00                           ; B566 85 00                    ..
        sta     $7361                           ; B568 8D 61 73                 .as
        lda     $02                           ; B56B A5 02                    ..
        sta     $01                             ; B56D 85 01                    ..
        sta     $7362                           ; B56F 8D 62 73                 .bs
        rts                                     ; B572 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B573:
        sta     $00                           ; B573 85 00                    ..
        jsr     BattlePresentation_Entry_B5AD   ; B575 20 AD B5                  ..
        pha                                     ; B578 48                       H
        asl     a                               ; B579 0A                       .
        asl     $00                           ; B57A 06 00                    ..
        bcc     BattlePresentation_Branch_B580  ; B57C 90 02                    ..
        adc     #$37                            ; B57E 69 37                    i7
BattlePresentation_Branch_B580:
        tax                                     ; B580 AA                       .
        lda     #$00                            ; B581 A9 00                    ..
        sta     $01                             ; B583 85 01                    ..
        cpx     #$24                            ; B585 E0 24                    .$
        bne     BattlePresentation_Branch_B591  ; B587 D0 08                    ..
        lda     #$4A                            ; B589 A9 4A                    .J
        sta     $00                           ; B58B 85 00                    ..
        inc     $01                             ; B58D E6 01                    ..
        bne     BattlePresentation_Branch_B596  ; B58F D0 05                    ..
BattlePresentation_Branch_B591:
        lda     $B74D,x                         ; B591 BD 4D B7                 .M.
        sta     $00                           ; B594 85 00                    ..
BattlePresentation_Branch_B596:
        lda     $B74E,x                         ; B596 BD 4E B7                 .N.
        brk                                     ; B599 00                       .
        db   $17,$0F                         ; B59A 17 0F                    ..
; ----------------------------------------------------------------------------
        ldx     #$00                            ; B59C A2 00                    ..
        jsr     AddByteToPointer                ; B59E 20 13 C8                  ..
        lda     $00                           ; B5A1 A5 00                    ..
        sta     $7361                           ; B5A3 8D 61 73                 .as
        lda     $01                             ; B5A6 A5 01                    ..
        sta     $7362                           ; B5A8 8D 62 73                 .bs
        pla                                     ; B5AB 68                       h
        rts                                     ; B5AC 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B5AD:
        brk                                     ; B5AD 00                       .
        db   $03,$1F                         ; B5AE 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$4D                            ; B5B0 C9 4D                    .M
        bcc     BattlePresentation_Branch_B5CD  ; B5B2 90 19                    ..
        cmp     #$67                            ; B5B4 C9 67                    .g
        beq     BattlePresentation_Entry_B5BC   ; B5B6 F0 04                    ..
        cmp     #$6D                            ; B5B8 C9 6D                    .m
        bcc     BattlePresentation_Branch_B5CB  ; B5BA 90 0F                    ..
BattlePresentation_Entry_B5BC:
        ldx     #$0A                            ; B5BC A2 0A                    ..
BattlePresentation_Branch_B5BE:
        cmp     $B5CE,x                         ; B5BE DD CE B5                 ...
        beq     BattlePresentation_Branch_B5C7  ; B5C1 F0 04                    ..
        dex                                     ; B5C3 CA                       .
        bpl     BattlePresentation_Branch_B5BE  ; B5C4 10 F8                    ..
        rts                                     ; B5C6 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_B5C7:
        lda     $B5D9,x                         ; B5C7 BD D9 B5                 ...
        rts                                     ; B5CA 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_B5CB:
        sbc     #$39                            ; B5CB E9 39                    .9
BattlePresentation_Branch_B5CD:
        rts                                     ; B5CD 60                       `
; ----------------------------------------------------------------------------
        db   $6D,$80,$83,$84,$86,$87,$89,$8E ; B5CE 6D 80 83 84 86 87 89 8E  m.......
        db   $95,$74,$67                     ; B5D6 95 74 67                 .tg
        db   $19,$1A,$04,$0E,$04,$0A,$06,$03 ; B5D9 19 1A 04 0E 04 0A 06 03  ........
        db   $1B,$04,$14                     ; B5E1 1B 04 14                 ...
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B5E4:
        txa                                     ; B5E4 8A                       .
        pha                                     ; B5E5 48                       H
        lda     #$00                            ; B5E6 A9 00                    ..
        sta     $70                             ; B5E8 85 70                    .p
        sta     $7D                             ; B5EA 85 7D                    .}
        jsr     BattlePresentation_Entry_B61D   ; B5EC 20 1D B6                  ..
        asl     a                               ; B5EF 0A                       .
        tax                                     ; B5F0 AA                       .
        lda     $B7E3,x                         ; B5F1 BD E3 B7                 ...
        sta     $00                           ; B5F4 85 00                    ..
        lda     $B7E4,x                         ; B5F6 BD E4 B7                 ...
        cmp     #$FF                            ; B5F9 C9 FF                    ..
        beq     BattlePresentation_Branch_B607  ; B5FB F0 0A                    ..
        brk                                     ; B5FD 00                       .
        db   $17,$0F                         ; B5FE 17 0F                    ..
; ----------------------------------------------------------------------------
        clc                                     ; B600 18                       .
        adc     $00                           ; B601 65 00                    e.
        sta     $00                           ; B603 85 00                    ..
        bcc     BattlePresentation_Branch_B60B  ; B605 90 04                    ..
BattlePresentation_Branch_B607:
        dec     $70                             ; B607 C6 70                    .p
        dec     $7D                             ; B609 C6 7D                    .}
BattlePresentation_Branch_B60B:
        brk                                     ; B60B 00                       .
        db   $0D,$1F                         ; B60C 0D 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattlePresentation_Branch_B618  ; B60E 90 08                    ..
        asl     $00                           ; B610 06 00                    ..
        php                                     ; B612 08                       .
        rol     $70                             ; B613 26 70                    &p
        plp                                     ; B615 28                       (
        rol     $7D                             ; B616 26 7D                    &}
BattlePresentation_Branch_B618:
        pla                                     ; B618 68                       h
        tax                                     ; B619 AA                       .
        lda     $00                           ; B61A A5 00                    ..
        rts                                     ; B61C 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B61D:
        brk                                     ; B61D 00                       .
        db   $03,$1F                         ; B61E 03 1F                    ..
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B620:
        ldx     #$1D                            ; B620 A2 1D                    ..
BattlePresentation_Branch_B622:
        cmp     $B62F,x                         ; B622 DD 2F B6                 ./.
        beq     BattlePresentation_Branch_B62B  ; B625 F0 04                    ..
        dex                                     ; B627 CA                       .
        bpl     BattlePresentation_Branch_B622  ; B628 10 F8                    ..
        rts                                     ; B62A 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_B62B:
        lda     $B64D,x                         ; B62B BD 4D B6                 .M.
        rts                                     ; B62E 60                       `
; ----------------------------------------------------------------------------
        db   $29,$2A,$2B,$2C,$2D,$8B,$8F,$94 ; B62F 29 2A 2B 2C 2D 8B 8F 94  )*+,-...
        db   $9B,$A0,$99,$9A,$A1,$A2,$A3,$A4 ; B637 9B A0 99 9A A1 A2 A3 A4  ........
        db   $A5,$49,$4A,$4B,$79,$DF,$F1,$F2 ; B63F A5 49 4A 4B 79 DF F1 F2  .IJKy...
        db   $77,$70,$1C,$EB,$EC,$FE         ; B647 77 70 1C EB EC FE        wp....
        db   $00,$01,$02,$01,$02,$01,$01,$03 ; B64D 00 01 02 01 02 01 01 03  ........
        db   $02,$04,$05,$06,$07,$07,$07,$08 ; B655 02 04 05 06 07 07 07 08  ........
        db   $09,$0A,$0B,$0C,$0D,$0E,$0F,$0F ; B65D 09 0A 0B 0C 0D 0E 0F 0F  ........
        db   $01,$03,$0C,$02,$02,$02         ; B665 01 03 0C 02 02 02        ......
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B66B:
        lda     $72E7                           ; B66B AD E7 72                 ..r
        and     #$02                            ; B66E 29 02                    ).
        lda     $72E9                           ; B670 AD E9 72                 ..r
        bmi     BattlePresentation_Branch_B67A  ; B673 30 05                    0.
        brk                                     ; B675 00                       .
        db   $0E,$1F                         ; B676 0E 1F                    ..
; ----------------------------------------------------------------------------
        bmi     BattlePresentation_Branch_B6C9  ; B678 30 4F                    0O
BattlePresentation_Branch_B67A:
        brk                                     ; B67A 00                       .
        db   $03,$1F                         ; B67B 03 1F                    ..
; ----------------------------------------------------------------------------
        tax                                     ; B67D AA                       .
        lda     $7363                           ; B67E AD 63 73                 .cs
        bmi     BattlePresentation_Branch_B693  ; B681 30 10                    0.
        lda     Bank13_BattlePresentationLookup,x; B683 BD 0B B8                ...
        and     #$E0                            ; B686 29 E0                    ).
        cmp     #$E0                            ; B688 C9 E0                    ..
        beq     BattlePresentation_Branch_B6C9  ; B68A F0 3D                    .=
        jsr     BattlePresentation_Entry_B6CB   ; B68C 20 CB B6                  ..
        jsr     BattlePresentation_Entry_B6DD   ; B68F 20 DD B6                  ..
        rts                                     ; B692 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_B693:
        lda     Bank13_BattlePresentationLookup,x; B693 BD 0B B8                ...
        and     #$1F                            ; B696 29 1F                    ).
        tax                                     ; B698 AA                       .
        lda     $B736,x                         ; B699 BD 36 B7                 .6.
        cpx     #$10                            ; B69C E0 10                    ..
        bcs     BattlePresentation_Entry_B6CB   ; B69E B0 2B                    .+
        pha                                     ; B6A0 48                       H
        lda     $7363                           ; B6A1 AD 63 73                 .cs
        and     #$07                            ; B6A4 29 07                    ).
        tax                                     ; B6A6 AA                       .
        pla                                     ; B6A7 68                       h
        brk                                     ; B6A8 00                       .
        db   $22,$B3                         ; B6A9 22 B3                    ".
; ----------------------------------------------------------------------------
        pha                                     ; B6AB 48                       H
        brk                                     ; B6AC 00                       .
        db   $03,$1F                         ; B6AD 03 1F                    ..
; ----------------------------------------------------------------------------
        ldx     #$00                            ; B6AF A2 00                    ..
        cmp     #$18                            ; B6B1 C9 18                    ..
        beq     BattlePresentation_Branch_B6B9  ; B6B3 F0 04                    ..
        cmp     #$1F                            ; B6B5 C9 1F                    ..
        bne     BattlePresentation_Branch_B6BB  ; B6B7 D0 02                    ..
BattlePresentation_Branch_B6B9:
        ldx     #$04                            ; B6B9 A2 04                    ..
BattlePresentation_Branch_B6BB:
        stx     $00                           ; B6BB 86 00                    ..
        pla                                     ; B6BD 68                       h
        clc                                     ; B6BE 18                       .
        adc     $00                           ; B6BF 65 00                    e.
        tax                                     ; B6C1 AA                       .
        lda     $B803,x                         ; B6C2 BD 03 B8                 ...
        jsr     BattlePresentation_Entry_B6CB   ; B6C5 20 CB B6                  ..
        rts                                     ; B6C8 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_B6C9:
        lda     #$FF                            ; B6C9 A9 FF                    ..
BattlePresentation_Entry_B6CB:
        sta     $00                           ; B6CB 85 00                    ..
        brk                                     ; B6CD 00                       .
        db   $0D,$1F                         ; B6CE 0D 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattlePresentation_Branch_B6DA  ; B6D0 90 08                    ..
        asl     $00                           ; B6D2 06 00                    ..
        bcc     BattlePresentation_Branch_B6DA  ; B6D4 90 04                    ..
        lda     #$FF                            ; B6D6 A9 FF                    ..
        sta     $00                           ; B6D8 85 00                    ..
BattlePresentation_Branch_B6DA:
        lda     $00                           ; B6DA A5 00                    ..
        rts                                     ; B6DC 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B6DD:
        sta     $00                           ; B6DD 85 00                    ..
        rts                                     ; B6DF 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B6E0:
        lda     $7363                           ; B6E0 AD 63 73                 .cs
        bmi     BattlePresentation_Branch_B715  ; B6E3 30 30                    00
        brk                                     ; B6E5 00                       .
        db   $67,$73                         ; B6E6 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; B6E8 AA                       .
        brk                                     ; B6E9 00                       .
        db   $23,$53                         ; B6EA 23 53                    #S
; ----------------------------------------------------------------------------
        sec                                     ; B6EC 38                       8
        lda     #$80                            ; B6ED A9 80                    ..
        sbc     $72                             ; B6EF E5 72                    .r
        sta     $01                             ; B6F1 85 01                    ..
        lda     #$01                            ; B6F3 A9 01                    ..
        sbc     #$00                            ; B6F5 E9 00                    ..
        sta     $02                           ; B6F7 85 02                    ..
        lsr     $02                           ; B6F9 46 02                    F.
        ror     $01                             ; B6FB 66 01                    f.
        ldx     #$01                            ; B6FD A2 01                    ..
        lda     $00                           ; B6FF A5 00                    ..
        jsr     MultiplyPointerWord             ; B701 20 27 C8                  '.
        lda     #$80                            ; B704 A9 80                    ..
        jsr     UpperFixedEngine_Entry_C851     ; B706 20 51 C8                  Q.
        asl     $01                             ; B709 06 01                    ..
        rol     $02                           ; B70B 26 02                    &.
        bcs     BattlePresentation_Branch_B712  ; B70D B0 03                    ..
        lda     $02                           ; B70F A5 02                    ..
        rts                                     ; B711 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_B712:
        lda     #$FF                            ; B712 A9 FF                    ..
        rts                                     ; B714 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_B715:
        lda     $00                           ; B715 A5 00                    ..
        rts                                     ; B717 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B718:
        jsr     BattlePresentation_Entry_B66B   ; B718 20 6B B6                  k.
        sta     $00                           ; B71B 85 00                    ..
        lda     $00                           ; B71D A5 00                    ..
        beq     BattlePresentation_Branch_B72A  ; B71F F0 09                    ..
        brk                                     ; B721 00                       .
        db   $1B,$0F                         ; B722 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     $00                           ; B724 C5 00                    ..
        beq     BattlePresentation_Branch_B72C  ; B726 F0 04                    ..
        bcc     BattlePresentation_Branch_B72C  ; B728 90 02                    ..
BattlePresentation_Branch_B72A:
        clc                                     ; B72A 18                       .
        rts                                     ; B72B 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_B72C:
        sec                                     ; B72C 38                       8
        rts                                     ; B72D 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B72E:
        lda     $BA6C,x                         ; B72E BD 6C BA                 .l.
        rts                                     ; B731 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B732:
        lda     $BA70,x                         ; B732 BD 70 BA                 .p.
        rts                                     ; B735 60                       `
; ----------------------------------------------------------------------------
        db   $03,$02,$01,$07,$06,$05,$0B,$0A ; B736 03 02 01 07 06 05 0B 0A  ........
        db   $09,$0F,$0E,$0D,$13,$12,$11,$00 ; B73E 09 0F 0E 0D 13 12 11 00  ........
        db   $00,$20,$FF                     ; B746 00 20 FF                 . .
        db   $FF,$C0,$80,$00                 ; B749 FF C0 80 00              ....
        db   $08                             ; B74D 08                       .
        db   $07,$46,$15,$A0,$29,$10,$09,$1E ; B74E 07 46 15 A0 29 10 09 1E  .F..)...
        db   $0D,$58,$19,$10,$09,$34,$11,$78 ; B756 0D 58 19 10 09 34 11 78  .X...4.x
        db   $29,$0A,$07,$23,$0B,$3C,$15,$58 ; B75E 29 0A 07 23 0B 3C 15 58  )..#.<.X
        db   $19,$08,$11,$19,$1F,$3C,$3D,$46 ; B766 19 08 11 19 1F 3C 3D 46  .....<=F
        db   $15,$AF,$33,$FF,$29,$06,$05,$1E ; B76E 15 AF 33 FF 29 06 05 1E  ..3.)...
        db   $0B,$50,$15,$09,$04,$28,$15,$64 ; B776 0B 50 15 09 04 28 15 64  .P...(.d
        db   $29,$12,$05,$2D,$0B,$0A,$06,$07 ; B77E 29 12 05 2D 0B 0A 06 07  )..-....
        db   $06,$34,$0B,$5C,$25,$0A,$09,$16 ; B786 06 34 0B 5C 25 0A 09 16  .4.\%...
        db   $0D,$2D,$0B,$10,$09,$34,$11,$48 ; B78E 0D 2D 0B 10 09 34 11 48  .-...4.H
        db   $11,$0A,$07,$1E,$0B,$3C,$15,$37 ; B796 11 0A 07 1E 0B 3C 15 37  .....<.7
        db   $0D,$06,$0D,$0E,$15,$1E,$21,$46 ; B79E 0D 06 0D 0E 15 1E 21 46  ......!F
        db   $15,$AF,$33,$FF,$33,$06,$05,$1E ; B7A6 15 AF 33 FF 33 06 05 1E  ..3.3...
        db   $0B,$50,$15,$09,$05,$28,$15,$64 ; B7AE 0B 50 15 09 05 28 15 64  .P...(.d
        db   $29,$12,$05,$2D,$0B,$0A,$06     ; B7B6 29 12 05 2D 0B 0A 06     )..-...
        db   $09,$03,$39,$05,$6E,$12,$0E,$04 ; B7BD 09 03 39 05 6E 12 0E 04  ..9.n...
        db   $1C,$06,$32,$05,$50,$08,$0D,$03 ; B7C5 1C 06 32 05 50 08 0D 03  ..2.P...
        db   $23,$05,$3D,$06,$0C,$06,$18,$0A ; B7CD 23 05 3D 06 0C 06 18 0A  #.=.....
        db   $2E,$10                         ; B7D5 2E 10                    ..
        db   $08,$02,$23,$05,$5A,$0A,$0B,$02 ; B7D7 08 02 23 05 5A 0A 0B 02  ..#.Z...
        db   $32,$0A,$78,$14                 ; B7DF 32 0A 78 14              2.x.
        db   $1E                             ; B7E3 1E                       .
        db   $0B,$4B,$15,$FF,$FF,$1E,$0B,$32 ; B7E4 0B 4B 15 FF FF 1E 0B 32  .K.....2
        db   $0B,$14,$0B,$0A,$06,$01,$03,$04 ; B7EC 0B 14 0B 0A 06 01 03 04  ........
        db   $03,$03,$03,$01,$02,$03,$05,$05 ; B7F4 03 03 03 01 02 03 05 05  ........
        db   $06,$0F,$06,$64,$15,$32,$0B     ; B7FC 06 0F 06 64 15 32 0B     ...d.2.
        db   $FF,$D8,$66,$00,$FF,$FF,$B2,$00 ; B803 FF D8 66 00 FF FF B2 00  ..f.....
Bank13_BattlePresentationLookup:
        db   $E2,$E2,$E2,$E1,$E1,$E1,$E0,$E0 ; B80B E2 E2 E2 E1 E1 E1 E0 E0  ........
        db   $E0,$E5,$E5,$E5,$E5,$E4,$E4,$E4 ; B813 E0 E5 E5 E5 E5 E4 E4 E4  ........
        db   $E3,$E3,$E3,$68,$68,$EE,$E9,$67 ; B81B E3 E3 E3 68 68 EE E9 67  ...hh..g
        db   $C7,$6B,$A6,$4C,$EA,$F2,$F2,$CD ; B823 C7 6B A6 4C EA F2 F2 CD  .k.L....
        db   $CD,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B82B CD F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B833 F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B83B F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B843 F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B84B F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$F2,$72,$E1,$E1,$E1 ; B853 F2 F2 F2 F2 72 E1 E1 E1  ....r...
        db   $E5,$E5,$E5,$67,$72,$31,$67,$F2 ; B85B E5 E5 E5 67 72 31 67 F2  ...gr1g.
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B863 F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B86B F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B873 F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$67,$E1,$F2,$F2,$EB ; B87B F2 F2 F2 67 E1 F2 F2 EB  ...g....
        db   $67,$F2,$67,$F2,$F2,$F2,$F2,$F2 ; B883 67 F2 67 F2 F2 F2 F2 F2  g.g.....
        db   $F2,$F2,$F2,$E1,$E4,$67,$E1,$E5 ; B88B F2 F2 F2 E1 E4 67 E1 E5  .....g..
        db   $6B,$E0,$ED,$F2,$F2,$67,$E1,$F2 ; B893 6B E0 ED F2 F2 67 E1 F2  k....g..
        db   $28,$F2,$F2,$F2,$F2,$E9,$F2,$F2 ; B89B 28 F2 F2 F2 F2 E9 F2 F2  (.......
        db   $F2,$F2,$F2,$F2,$E9,$EB,$F2,$F2 ; B8A3 F2 F2 F2 F2 E9 EB F2 F2  ........
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B8AB F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $66,$F2,$EC,$F2,$F2,$F2,$F2,$F2 ; B8B3 66 F2 EC F2 F2 F2 F2 F2  f.......
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B8BB F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B8C3 F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B8CB F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B8D3 F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B8DB F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B8E3 F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B8EB F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B8F3 F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $F2,$F2,$F2,$F2,$F2,$F2,$F2,$F2 ; B8FB F2 F2 F2 F2 F2 F2 F2 F2  ........
        db   $92,$09,$F2,$F2,$F2,$E6,$F2,$F2 ; B903 92 09 F2 F2 F2 E6 F2 F2  ........
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B90B:
        pha                                     ; B90B 48                       H
        jsr     BattlePresentation_Entry_B953   ; B90C 20 53 B9                  S.
        and     #$1F                            ; B90F 29 1F                    ).
        cmp     #$1E                            ; B911 C9 1E                    ..
        pla                                     ; B913 68                       h
        rts                                     ; B914 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B915:
        jsr     BattlePresentation_Entry_B90B   ; B915 20 0B B9                  ..
        bcs     BattlePresentation_Branch_B92C  ; B918 B0 12                    ..
        sta     $6E10                           ; B91A 8D 10 6E                 ..n
        jsr     BattlePresentation_Entry_B953   ; B91D 20 53 B9                  S.
        and     #$1F                            ; B920 29 1F                    ).
        cmp     #$19                            ; B922 C9 19                    ..
        bcc     BattlePresentation_Branch_B92A  ; B924 90 04                    ..
        tax                                     ; B926 AA                       .
        lda     $BA4E,x                         ; B927 BD 4E BA                 .N.
BattlePresentation_Branch_B92A:
        sec                                     ; B92A 38                       8
        rts                                     ; B92B 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_B92C:
        lda     #$00                            ; B92C A9 00                    ..
        clc                                     ; B92E 18                       .
        rts                                     ; B92F 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B930:
        pha                                     ; B930 48                       H
        jsr     BattlePresentation_Entry_B953   ; B931 20 53 B9                  S.
        rol     a                               ; B934 2A                       *
        pla                                     ; B935 68                       h
        rts                                     ; B936 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B937:
        pha                                     ; B937 48                       H
        jsr     BattlePresentation_Entry_B953   ; B938 20 53 B9                  S.
        and     #$60                            ; B93B 29 60                    )`
        beq     BattlePresentation_Branch_B946  ; B93D F0 07                    ..
        cmp     #$60                            ; B93F C9 60                    .`
        beq     BattlePresentation_Branch_B946  ; B941 F0 03                    ..
        pla                                     ; B943 68                       h
        sec                                     ; B944 38                       8
        rts                                     ; B945 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Branch_B946:
        pla                                     ; B946 68                       h
        clc                                     ; B947 18                       .
        rts                                     ; B948 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B949:
        jsr     BattlePresentation_Entry_B953   ; B949 20 53 B9                  S.
        and     #$60                            ; B94C 29 60                    )`
        asl     a                               ; B94E 0A                       .
        rol     a                               ; B94F 2A                       *
        rol     a                               ; B950 2A                       *
        rol     a                               ; B951 2A                       *
        rts                                     ; B952 60                       `
; ----------------------------------------------------------------------------
BattlePresentation_Entry_B953:
        sta     $6E10                           ; B953 8D 10 6E                 ..n
        txa                                     ; B956 8A                       .
        pha                                     ; B957 48                       H
        ldx     $6E10                           ; B958 AE 10 6E                 ..n
        lda     Bank13_BattlePresentationStateLookup,x; B95B BD 67 B9           .g.
        sta     $6E10                           ; B95E 8D 10 6E                 ..n
        pla                                     ; B961 68                       h
        tax                                     ; B962 AA                       .
        lda     $6E10                           ; B963 AD 10 6E                 ..n
        rts                                     ; B966 60                       `
; ----------------------------------------------------------------------------
Bank13_BattlePresentationStateLookup:
        db   $A2,$A4,$AA,$C4,$C6,$CA,$E5,$E8 ; B967 A2 A4 AA C4 C6 CA E5 E8  ........
        db   $EF,$A2,$C5,$E8,$CB,$C2,$C4,$C8 ; B96F EF A2 C5 E8 CB C2 C4 C8  ........
        db   $A4,$EF,$AF,$A4,$C7,$E1,$C3,$C3 ; B977 A4 EF AF A4 C7 E1 C3 C3  ........
        db   $A3,$C3,$C4,$A5,$A0,$22,$04,$A3 ; B97F A3 C3 C4 A5 A0 22 04 A3  ....."..
        db   $C4,$23,$64,$63,$06,$26,$02,$25 ; B987 C4 23 64 63 06 26 02 25  .#dc.&.%
        db   $12,$23,$25,$27,$72,$79,$62,$62 ; B98F 12 23 25 27 72 79 62 62  .#%'rybb
        db   $2C,$34,$61,$08,$74,$68,$63,$62 ; B997 2C 34 61 08 74 68 63 62  ,4a.thcb
        db   $6C,$60,$22,$68,$1F,$1F,$1F,$1F ; B99F 6C 60 22 68 1F 1F 1F 1F  l`"h....
        db   $1F,$1F,$1F,$BF,$BF,$BF,$BF,$BF ; B9A7 1F 1F 1F BF BF BF BF BF  ........
        db   $BF,$BF,$BF,$BF,$7F,$FF,$FF,$FF ; B9AF BF BF BF BF 7F FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$1F ; B9B7 FF FF FF FF FF FF FF 1F  ........
        db   $1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F ; B9BF 1F 1F 1F 1F 1F 1F 1F 1F  ........
        db   $1F,$1F,$1F,$1F,$1F,$1F,$7F,$FF ; B9C7 1F 1F 1F 1F 1F 1F 7F FF  ........
        db   $1F,$1F,$1F,$1F,$1F,$FF,$BF,$FF ; B9CF 1F 1F 1F 1F 1F FF BF FF  ........
        db   $3F,$3F,$1F,$BF,$DF,$BF,$1F,$DF ; B9D7 3F 3F 1F BF DF BF 1F DF  ??......
        db   $FF,$BF,$FF,$BF,$FF,$BF,$BF,$1F ; B9DF FF BF FF BF FF BF BF 1F  ........
        db   $FF,$3F,$BF,$DF,$DF,$BF,$BF,$DF ; B9E7 FF 3F BF DF DF BF BF DF  .?......
        db   $DF,$FF,$DF,$3F,$BF,$BF,$DF,$1F ; B9EF DF FF DF 3F BF BF DF 1F  ...?....
        db   $FF,$1F,$1F,$1F,$3F,$BF,$1F,$3F ; B9F7 FF 1F 1F 1F 3F BF 1F 3F  ....?..?
        db   $3F,$1F,$1F,$7F,$DF,$DF,$FF,$1F ; B9FF 3F 1F 1F 7F DF DF FF 1F  ?.......
        db   $7F,$1F,$1F,$1F,$1F,$1F,$BF,$3F ; BA07 7F 1F 1F 1F 1F 1F BF 3F  .......?
        db   $FF,$BF,$BF,$BF,$1F,$1F,$1F,$1F ; BA0F FF BF BF BF 1F 1F 1F 1F  ........
        db   $1F,$1F,$BF,$1F,$BF,$BF,$BF,$1F ; BA17 1F 1F BF 1F BF BF BF 1F  ........
        db   $1F,$1F,$1F,$BF,$1F,$BF,$BF,$1F ; BA1F 1F 1F 1F BF 1F BF BF 1F  ........
        db   $BF,$1F,$1F,$1F,$BF,$1F,$1F,$3F ; BA27 BF 1F 1F 1F BF 1F 1F 3F  .......?
        db   $BF,$1F,$BF,$1F,$1F,$1F,$3F,$1F ; BA2F BF 1F BF 1F 1F 1F 3F 1F  ......?.
        db   $1F,$1F,$1F,$1F,$BF,$FF,$7F,$1F ; BA37 1F 1F 1F 1F BF FF 7F 1F  ........
        db   $1F,$BF,$FF,$1F,$1F,$FF,$7F,$BF ; BA3F 1F BF FF 1F 1F FF 7F BF  ........
        db   $BF,$1F,$FF,$1F,$7F,$FF,$7F     ; BA47 BF 1F FF 1F 7F FF 7F     .......
        db   $1F,$7F,$7F,$FF,$7F,$FF,$FF,$7F ; BA4E 1F 7F 7F FF 7F FF FF 7F  ........
        db   $FF,$7F,$FF,$7F,$7F,$FF,$FF,$7F ; BA56 FF 7F FF 7F 7F FF FF 7F  ........
        db   $1F,$1F,$FF,$1F,$7F,$3F,$FF,$7F ; BA5E 1F 1F FF 1F 7F 3F FF 7F  .....?..
        db   $1F,$24,$00,$00,$00,$00         ; BA66 1F 24 00 00 00 00        .$....
        db   $FF,$C0,$80,$40                 ; BA6C FF C0 80 40              ...@
        db   $FF,$C0,$80,$40                 ; BA70 FF C0 80 40              ...@
        db   $10,$10,$08,$08,$08,$08,$08,$0E ; BA74 10 10 08 08 08 08 08 0E  ........
        db   $0E,$10,$10,$10,$10,$10,$10,$10 ; BA7C 0E 10 10 10 10 10 10 10  ........
        db   $00,$00,$00,$00,$00,$18,$18,$10 ; BA84 00 00 00 00 00 18 18 10  ........
        db   $10,$10,$10,$10,$08,$08,$08,$08 ; BA8C 10 10 10 10 08 08 08 08  ........
        db   $08,$08,$08,$10,$10,$10,$10,$08 ; BA94 08 08 08 10 10 10 10 08  ........
        db   $08,$08,$0F,$0D,$00,$00,$10,$00 ; BA9C 08 08 0F 0D 00 00 10 00  ........
        db   $00                             ; BAA4 00                       .
        db   $0E,$0E,$0E,$0E,$0E,$0E,$0E,$08 ; BAA5 0E 0E 0E 0E 0E 0E 0E 08  ........
        db   $08,$0E,$0E,$0E,$0E,$0E,$10,$10 ; BAAD 08 0E 0E 0E 0E 0E 10 10  ........
        db   $10,$10,$10,$10,$10,$10,$10,$10 ; BAB5 10 10 10 10 10 10 10 10  ........
        db   $10,$10,$10,$10,$05,$05,$10,$10 ; BABD 10 10 10 10 05 05 10 10  ........
        db   $10,$10,$10,$10,$10,$08,$08,$10 ; BAC5 10 10 10 10 10 08 08 10  ........
        db   $08,$08,$10,$10,$10,$10,$10,$10 ; BACD 08 08 10 10 10 10 10 10  ........
        db   $10,$80,$64,$FF,$FF,$FF,$FF,$FF ; BAD5 10 80 64 FF FF FF FF FF  ..d.....
        db   $C8,$C8,$80,$80,$80,$80,$80,$C8 ; BADD C8 C8 80 80 80 80 80 C8  ........
        db   $B4,$FF,$FF,$FF,$FF,$FF,$00,$00 ; BAE5 B4 FF FF FF FF FF 00 00  ........
        db   $00,$00,$00,$00,$00,$FF,$FF,$FF ; BAED 00 00 00 00 00 FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$50,$50 ; BAF5 FF FF FF FF FF FF 50 50  ......PP
        db   $0A,$64,$64,$C8,$C8,$FF,$FF,$FF ; BAFD 0A 64 64 C8 C8 FF FF FF  .dd.....
        db   $FF                             ; BB05 FF                       .
        db   $FF,$1E,$1A,$26,$26,$0C,$0A,$12 ; BB06 FF 1E 1A 26 26 0C 0A 12  ...&&...
        db   $0A,$00,$00,$00,$00,$1E,$1A,$26 ; BB0E 0A 00 00 00 00 1E 1A 26  .......&
        db   $26,$0F,$0F,$0F,$0F,$00,$00,$00 ; BB16 26 0F 0F 0F 0F 00 00 00  &.......
        db   $00,$00,$00,$00                 ; BB1E 00 00 00 00              ....
        db   $00,$40,$32,$46,$3C,$16,$16,$20 ; BB22 00 40 32 46 3C 16 16 20  .@2F<..
        db   $20,$FF,$FF,$FF,$FF,$16,$16,$4D ; BB2A 20 FF FF FF FF 16 16 4D   ......M
        db   $4D,$4D,$4D,$4D,$4D,$00,$00,$00 ; BB32 4D 4D 4D 4D 4D 00 00 00  MMMMM...
        db   $00,$FF,$FF,$FF,$FF             ; BB3A 00 FF FF FF FF           .....
        db   $55,$64,$64,$C0,$C0,$00,$00,$00 ; BB3F 55 64 64 C0 C0 00 00 00  Udd.....
        db   $55,$70                         ; BB47 55 70                    Up
        db   $55,$64,$64,$20,$20,$A0,$A0,$A0 ; BB49 55 64 64 20 20 A0 A0 A0  Udd  ...
        db   $55,$70                         ; BB51 55 70                    Up
        db   $04,$0A,$0A,$01,$08,$10,$02     ; BB53 04 0A 0A 01 08 10 02     .......
        db   $04,$08,$01,$04,$01,$08,$01     ; BB5A 04 08 01 04 01 08 01     .......
        db   $02,$04,$01,$02,$01,$08,$01     ; BB61 02 04 01 02 01 08 01     .......
        db   $18,$20,$20,$18,$10,$40,$18     ; BB68 18 20 20 18 10 40 18     .  ..@.
        db   $04,$08,$0C,$02,$03,$10,$03     ; BB6F 04 08 0C 02 03 10 03     .......
        db   $03,$05,$05,$01,$02,$10,$02     ; BB76 03 05 05 01 02 10 02     .......
        db   $18,$28,$10,$18,$20,$FF,$10     ; BB7D 18 28 10 18 20 FF 10     .(.. ..
        db   $10,$00,$10,$10,$10,$10,$10     ; BB84 10 00 10 10 10 10 10     .......
        db   $10,$10,$00,$10,$00,$00,$00     ; BB8B 10 10 00 10 00 00 00     .......
        db   $66,$33,$8C,$01,$FF,$01,$A0     ; BB92 66 33 8C 01 FF 01 A0     f3.....
        db   $40,$80,$80,$80,$80,$80,$80,$80 ; BB99 40 80 80 80 80 80 80 80  @.......
        db   $C8,$C8,$C8,$C8,$C8,$C8,$C8,$64 ; BBA1 C8 C8 C8 C8 C8 C8 C8 64  .......d
        db   $64,$64,$64,$64,$64,$64,$00,$00 ; BBA9 64 64 64 64 64 64 00 00  dddddd..
        db   $00,$00,$00,$00,$00,$FF,$FF,$FF ; BBB1 00 00 00 00 00 FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$80,$80,$80,$80 ; BBB9 FF FF FF FF 80 80 80 80  ........
        db   $80,$80,$80,$C8,$C8,$C8,$C8,$C8 ; BBC1 80 80 80 C8 C8 C8 C8 C8  ........
        db   $C8,$C8                         ; BBC9 C8 C8                    ..
Bank13_BattlePresentationCommands:
        db   $6C,$E1,$44,$EE,$F0,$FB,$00,$FE ; BBCB 6C E1 44 EE F0 FB 00 FE  l.D.....
        db   $D4,$BC,$FE,$87,$BC,$ED,$B3,$EE ; BBD3 D4 BC FE 87 BC ED B3 EE  ........
        db   $F0,$75,$8C,$0B,$C0,$06,$EE,$D0 ; BBDB F0 75 8C 0B C0 06 EE D0  .u......
        db   $2A,$E9,$2A,$EE,$A0,$2A,$E9,$2A ; BBE3 2A E9 2A EE A0 2A E9 2A  *.*..*.*
        db   $EE,$70,$2A,$E9,$2A,$E8,$FF,$F9 ; BBEB EE 70 2A E9 2A E8 FF F9  .p*.*...
        db   $E4,$FB,$00,$ED,$00,$FE,$87,$BC ; BBF3 E4 FB 00 ED 00 FE 87 BC  ........
        db   $77,$98,$15,$21,$25,$77,$A4,$21 ; BBFB 77 98 15 21 25 77 A4 21  w..!%w.!
        db   $6C,$8C,$0B,$25,$2C,$6C,$06,$25 ; BC03 6C 8C 0B 25 2C 6C 06 25  l..%,l.%
        db   $77,$8C,$04,$B7,$0B,$2C,$FB,$FE ; BC0B 77 8C 04 B7 0B 2C FB FE  w....,..
        db   $F9,$E6,$FB,$00,$EE,$D0,$65,$98 ; BC13 F9 E6 FB 00 EE D0 65 98  ......e.
        db   $12,$FA,$08,$FA,$E1,$1A,$ED,$FF ; BC1B 12 FA 08 FA E1 1A ED FF  ........
        db   $EE,$D0,$7C,$98,$0C,$26,$2A,$6A ; BC23 EE D0 7C 98 0C 26 2A 6A  ..|..&*j
        db   $A4,$12,$7C,$8C,$08,$26,$2A,$6A ; BC2B A4 12 7C 8C 08 26 2A 6A  ..|..&*j
        db   $98,$0C,$7C,$8C,$08,$26,$75,$B0 ; BC33 98 0C 7C 8C 08 26 75 B0  ..|..&u.
        db   $18,$1F,$2F,$24,$68,$98,$0C,$28 ; BC3B 18 1F 2F 24 68 98 0C 28  ../$h..(
        db   $24,$7A,$A4,$12,$68,$8C,$08,$28 ; BC43 24 7A A4 12 68 8C 08 28  $z..h..(
        db   $24,$7A,$98,$0C,$73,$8C,$08,$1D ; BC4B 24 7A 98 0C 73 8C 08 1D  $z..s...
        db   $6F,$B0,$18,$7A,$C8,$24,$76,$98 ; BC53 6F B0 18 7A C8 24 76 98  o..z.$v.
        db   $0C,$70,$B0,$18,$EE,$D0,$ED,$00 ; BC5B 0C 70 B0 18 EE D0 ED 00  .p......
        db   $E1,$44,$FB,$00,$FE,$74,$BC,$FB ; BC63 E1 44 FB 00 FE 74 BC FB  .D...t..
        db   $01,$FE,$74,$BC,$F9,$F4,$FE,$CE ; BC6B 01 FE 74 BC F9 F4 FE CE  ..t.....
        db   $BB,$70,$86,$04,$25,$25,$25,$49 ; BC73 BB 70 86 04 25 25 25 49  .p..%%%I
        db   $25,$49,$49,$25,$49,$49,$25,$94 ; BC7B 25 49 49 25 49 49 25 94  %II%II%.
        db   $8C,$0C,$25,$FD,$EE,$D0,$65,$98 ; BC83 8C 0C 25 FD EE D0 65 98  ..%...e.
        db   $0C,$FA,$08,$FA,$EE,$F0,$7C,$98 ; BC8B 0C FA 08 FA EE F0 7C 98  ......|.
        db   $15,$26,$2A,$6A,$A4,$21,$EE,$D0 ; BC93 15 26 2A 6A A4 21 EE D0  .&*j.!..
        db   $7C,$8C,$0B,$26,$2A,$EE,$F0,$6A ; BC9B 7C 8C 0B 26 2A EE F0 6A  |..&*..j
        db   $98,$15,$7C,$8C,$0B,$26,$F9,$E4 ; BCA3 98 15 7C 8C 0B 26 F9 E4  ..|..&..
        db   $75,$98,$15,$1F,$23,$63,$A4,$21 ; BCAB 75 98 15 1F 23 63 A4 21  u...#c.!
        db   $75,$8C,$0B,$1F,$23,$63,$98,$15 ; BCB3 75 8C 0B 1F 23 63 98 15  u...#c..
        db   $6E,$8C,$0B,$2A,$7C,$98,$15,$26 ; BCBB 6E 8C 0B 2A 7C 98 15 26  n..*|..&
        db   $2A,$6A,$A4,$21,$7C,$8C,$0B,$26 ; BCC3 2A 6A A4 21 7C 8C 0B 26  *j.!|..&
        db   $2A,$6A,$98,$15,$7C,$8C,$0B,$26 ; BCCB 2A 6A 98 15 7C 8C 0B 26  *j..|..&
        db   $FD,$7F,$86,$04,$30,$49,$2C,$28 ; BCD3 FD 7F 86 04 30 49 2C 28  ....0I,(
        db   $49,$24,$20,$49,$1C,$18,$49,$14 ; BCDB 49 24 20 49 1C 18 49 14  I$ I..I.
        db   $49,$66,$8C,$0C,$FB,$00,$FD,$E1 ; BCE3 49 66 8C 0C FB 00 FD E1  If......
        db   $3E,$EE,$F0,$F7,$FB,$F8,$FE,$D4 ; BCEB 3E EE F0 F7 FB F8 FE D4  >.......
        db   $BC,$F8,$52,$86,$03,$FE,$CF,$BD ; BCF3 BC F8 52 86 03 FE CF BD  ..R.....
        db   $FE,$CC,$BD,$FA,$05,$FA,$57,$86 ; BCFB FE CC BD FA 05 FA 57 86  ......W.
        db   $03,$FB,$05,$FE,$CF,$BD,$FE,$CC ; BD03 03 FB 05 FE CF BD FE CC  ........
        db   $BD,$FB,$00,$52,$86,$03,$FE,$CF ; BD0B BD FB 00 52 86 03 FE CF  ...R....
        db   $BD,$FE,$CC,$BD,$ED,$B3,$F7,$EE ; BD13 BD FE CC BD ED B3 F7 EE  ........
        db   $F0,$15,$EE,$D0,$1F,$E9,$15,$EE ; BD1B F0 15 EE D0 1F E9 15 EE  ........
        db   $90,$1F,$EE,$70,$15,$EE,$50,$1F ; BD23 90 1F EE 70 15 EE 50 1F  ...p..P.
        db   $E9,$15,$E9,$1F,$E8,$FF,$F9,$E4 ; BD2B E9 15 E9 1F E8 FF F9 E4  ........
        db   $FB,$00,$ED,$00,$F8,$EE,$F0,$52 ; BD33 FB 00 ED 00 F8 EE F0 52  .......R
        db   $86,$03,$FE,$CF,$BD,$FE,$CC,$BD ; BD3B 86 03 FE CF BD FE CC BD  ........
        db   $FA,$05,$FA,$57,$86,$03,$FB,$05 ; BD43 FA 05 FA 57 86 03 FB 05  ...W....
        db   $FE,$CF,$BD,$FE,$CC,$BD,$FB,$00 ; BD4B FE CF BD FE CC BD FB 00  ........
        db   $52,$86,$03,$FE,$CF,$BD,$FE,$CC ; BD53 52 86 03 FE CF BD FE CC  R.......
        db   $BD,$59,$86,$03,$FB,$07,$FE,$CF ; BD5B BD 59 86 03 FB 07 FE CF  .Y......
        db   $BD,$FE,$CC,$BD,$FB,$05,$52,$86 ; BD63 BD FE CC BD FB 05 52 86  ......R.
        db   $03,$FE,$CF,$BD,$FE,$CC,$BD,$FB ; BD6B 03 FE CF BD FE CC BD FB  ........
        db   $00,$52,$86,$03,$FE,$CF,$BD,$FE ; BD73 00 52 86 03 FE CF BD FE  .R......
        db   $CC,$BD,$95,$0C,$94,$54,$94,$60 ; BD7B CC BD 95 0C 94 54 94 60  .....T.`
        db   $53,$98,$15,$13,$0F,$65,$A4,$21 ; BD83 53 98 15 13 0F 65 A4 21  S....e.!
        db   $53,$8C,$0B,$13,$0F,$65,$98,$15 ; BD8B 53 8C 0B 13 0F 65 98 15  S....e..
        db   $5E,$8C,$0B,$08,$64,$B0,$2D,$0E ; BD93 5E 8C 0B 08 64 B0 2D 0E  ^...d.-.
        db   $12,$52,$C8,$45,$58,$98,$15,$1A ; BD9B 12 52 C8 45 58 98 15 1A  .R.EX...
        db   $57,$B0,$2D,$12,$5E,$98,$15,$F7 ; BDA3 57 B0 2D 12 5E 98 15 F7  W.-.^...
        db   $EE,$D0,$FB,$00,$FE,$BD,$BD,$FB ; BDAB EE D0 FB 00 FE BD BD FB  ........
        db   $01,$FE,$BD,$BD,$F9,$F4,$F8,$FE ; BDB3 01 FE BD BD F9 F4 F8 FE  ........
        db   $EA,$BC,$13,$17,$13,$17,$49,$13 ; BDBB EA BC 13 17 13 17 49 13  ......I.
        db   $49,$49,$17,$49,$49,$13,$49,$17 ; BDC3 49 49 17 49 49 13 49 17  II.II.I.
        db   $FD,$95,$86,$03,$54,$86,$03,$09 ; BDCB FD 95 86 03 54 86 03 09  ....T...
        db   $07,$09,$49,$07,$09,$49,$07,$09 ; BDD3 07 09 49 07 09 49 07 09  ..I..I..
        db   $49,$07,$54,$8C,$0A,$52,$06,$FD ; BDDB 49 07 54 8C 0A 52 06 FD  I.T..R..
        db   $F7,$FB,$07,$FE,$D4,$BC,$F8,$FE ; BDE3 F7 FB 07 FE D4 BC F8 FE  ........
        db   $69,$BE,$73,$8C,$0C,$C6,$09,$BE ; BDEB 69 BE 73 8C 0C C6 09 BE  i.s.....
        db   $07,$C6,$05,$BE,$03,$C6,$03,$BE ; BDF3 07 C6 05 BE 03 C6 03 BE  ........
        db   $02,$C6,$02,$BC,$0C,$C6,$09,$BC ; BDFB 02 C6 02 BC 0C C6 09 BC  ........
        db   $07,$C6,$05,$BC,$03,$C6,$03,$BC ; BE03 07 C6 05 BC 03 C6 03 BC  ........
        db   $02,$C6,$02,$FE,$69,$BE,$6C,$86 ; BE0B 02 C6 02 FE 69 BE 6C 86  ....i.l.
        db   $03,$2A,$FA,$10,$F9,$1F,$28,$FA ; BE13 03 2A FA 10 F9 1F 28 FA  .*....(.
        db   $10,$FB,$6E,$98,$15,$FA,$08,$FA ; BE1B 10 FB 6E 98 15 FA 08 FA  ..n.....
        db   $6E,$0C,$94,$54,$94,$60,$49,$49 ; BE23 6E 0C 94 54 94 60 49 49  n..T.`II
        db   $49,$94,$30,$7C,$98,$15,$26,$2A ; BE2B 49 94 30 7C 98 15 26 2A  I.0|..&*
        db   $6A,$A4,$21,$7C,$8C,$09,$26,$2A ; BE33 6A A4 21 7C 8C 09 26 2A  j.!|..&*
        db   $6A,$98,$15,$7C,$8C,$09,$71,$98 ; BE3B 6A 98 15 7C 8C 09 71 98  j..|..q.
        db   $15,$6A,$8C,$09,$26,$31,$F7,$FB ; BE43 15 6A 8C 09 26 31 F7 FB  .j..&1..
        db   $00,$FE,$5A,$BE,$FB,$01,$FE,$5A ; BE4B 00 FE 5A BE FB 01 FE 5A  ..Z....Z
        db   $BE,$F9,$F4,$F8,$FE,$E3,$BD,$28 ; BE53 BE F9 F4 F8 FE E3 BD 28  .......(
        db   $2D,$28,$2D,$49,$28,$49,$49,$2D ; BE5B 2D 28 2D 49 28 49 49 2D  -(-I(II-
        db   $49,$49,$28,$49,$2D,$FD,$6E,$98 ; BE63 49 49 28 49 2D FD 6E 98  II(I-.n.
        db   $0C,$FA,$08,$FA,$6E,$86,$03,$26 ; BE6B 0C FA 08 FA 6E 86 03 26  ....n..&
        db   $FA,$20,$F9,$1F,$28,$FA,$10,$FB ; BE73 FA 20 F9 1F 28 FA 10 FB  . ..(...
        db   $23,$26,$FA,$10,$FB,$FD,$E1,$1C ; BE7B 23 26 FA 10 FB FD E1 1C  #&......
        db   $EE,$F0,$4D,$98,$60,$02,$02,$02 ; BE83 EE F0 4D 98 60 02 02 02  ..M.`...
        db   $4D,$98,$60,$FA,$28,$FA,$94,$60 ; BE8B 4D 98 60 FA 28 FA 94 60  M.`.(..`
        db   $49,$4D,$18,$FA,$41,$FB,$94,$48 ; BE93 49 4D 18 FA 41 FB 94 48  IM..A..H
        db   $94,$60,$FA,$07,$FB,$4D,$18,$FA ; BE9B 94 60 FA 07 FB 4D 18 FA  .`...M..
        db   $10,$FB,$FE,$8B,$BE,$96,$E1,$3E ; BEA3 10 FB FE 8B BE 96 E1 3E  .......>
        db   $73,$06,$4A,$4A,$29,$28,$4A,$4A ; BEAB 73 06 4A 4A 29 28 4A 4A  s.JJ)(JJ
        db   $29,$26,$49,$49,$49,$76,$2A,$78 ; BEB3 29 26 49 49 49 76 2A 78  )&IIIv*x
        db   $06,$76,$18,$95,$12,$78,$06,$76 ; BEBB 06 76 18 95 12 78 06 76  .v...x.v
        db   $18,$95,$08,$4A,$2D,$2B,$4A,$2D ; BEC3 18 95 08 4A 2D 2B 4A 2D  ...J-+J-
        db   $2E,$30,$2E,$2D,$2B,$29,$28,$26 ; BECB 2E 30 2E 2D 2B 29 28 26  .0.-+)(&
        db   $24,$22,$21,$1F,$1D,$1C,$1A,$18 ; BED3 24 22 21 1F 1D 1C 1A 18  $"!.....
        db   $16,$15,$F9,$CC,$5E,$98,$08,$94 ; BEDB 16 15 F9 CC 5E 98 08 94  ....^...
        db   $48,$94,$60,$78,$B0,$00,$2B,$78 ; BEE3 48 94 60 78 B0 00 2B 78  H.`x..+x
        db   $06,$4A,$4A,$2B,$7B,$18,$2D,$73 ; BEEB 06 4A 4A 2B 7B 18 2D 73  .JJ+{.-s
        db   $06,$4A,$4A,$29,$76,$30,$26,$73 ; BEF3 06 4A 4A 29 76 30 26 73  .JJ)v0&s
        db   $06,$4A,$4A,$26,$76,$18,$28,$6F ; BEFB 06 4A 4A 26 76 18 28 6F  .JJ&v.(o
        db   $06,$4A,$4A,$28,$71,$30,$21,$71 ; BF03 06 4A 4A 28 71 30 21 71  .JJ(q0!q
        db   $06,$4A,$4A,$24,$78,$18,$24,$73 ; BF0B 06 4A 4A 24 78 18 24 73  .JJ$x.$s
        db   $06,$4A,$4A,$24,$6C,$30,$28,$78 ; BF13 06 4A 4A 24 6C 30 28 78  .JJ$l0(x
        db   $60,$F9,$C8,$FE,$A9,$BE,$E1,$3E ; BF1B 60 F9 C8 FE A9 BE E1 3E  `......>
        db   $EE,$E0,$94,$98,$00,$1A,$49,$1B ; BF23 EE E0 94 98 00 1A 49 1B  ......I.
        db   $49,$1C,$49,$1D,$49,$1C,$B1,$06 ; BF2B 49 1C 49 1D 49 1C B1 06  I.I.I...
        db   $49,$18,$13,$15,$10,$F9,$EB,$94 ; BF33 49 18 13 15 10 F9 EB 94  I.......
        db   $18,$26,$FA,$07,$FC,$26,$26,$26 ; BF3B 18 26 FA 07 FC 26 26 26  .&...&&&
        db   $26,$25,$25,$25,$25,$24,$24,$23 ; BF43 26 25 25 25 25 24 24 23  &%%%%$$#
        db   $23,$22,$22,$21,$21,$20,$20,$1F ; BF4B 23 22 22 21 21 20 20 1F  #""!!  .
        db   $1F,$1E,$1E,$1D,$1D,$1C,$1C,$1C ; BF53 1F 1E 1E 1D 1D 1C 1C 1C  ........
        db   $1C,$1C,$1C,$1C,$1C,$F9,$DE,$FE ; BF5B 1C 1C 1C 1C 1C F9 DE FE  ........
        db   $21,$BF,$FE,$96,$BF,$FE,$96,$BF ; BF63 21 BF FE 96 BF FE 96 BF  !.......
        db   $DF,$05,$2E,$FA,$07,$FC,$2E,$2E ; BF6B DF 05 2E FA 07 FC 2E 2E  ........
        db   $2E,$2E,$2E,$2E,$2E,$2E,$2D,$2D ; BF73 2E 2E 2E 2E 2E 2E 2D 2D  ......--
        db   $2C,$2C,$2B,$2B,$2A,$2A,$29,$29 ; BF7B 2C 2C 2B 2B 2A 2A 29 29  ,,++**))
        db   $28,$28,$27,$27,$26,$26,$26,$26 ; BF83 28 28 27 27 26 26 26 26  ((''&&&&
        db   $25,$25,$23,$23,$25,$25,$F9,$DE ; BF8B 25 25 23 23 25 25 F9 DE  %%##%%..
        db   $FE,$65,$BF,$6A,$98,$08,$B8,$0E ; BF93 FE 65 BF 6A 98 08 B8 0E  .e.j....
        db   $FA,$05,$F8,$B5,$08,$49,$B7,$06 ; BF9B FA 05 F8 B5 08 49 B7 06  .....I..
        db   $1B,$1A,$15,$FD                 ; BFA3 1B 1A 15 FD              ....
Bank13_BattlePresentationPadding:
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFA7 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFAF FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFB7 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFBF FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFC7 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFCF FF FF FF FF FF FF FF FF  ........
        db   $FF,$78,$EE,$DF,$BF,$4C,$8E,$FF ; BFD7 FF 78 EE DF BF 4C 8E FF  .x...L..
        db   $80,$20,$44,$52,$41,$47,$4F,$4E ; BFDF 80 20 44 52 41 47 4F 4E  . DRAGON
        db   $20,$51,$55,$45,$53,$54,$20,$49 ; BFE7 20 51 55 45 53 54 20 49   QUEST I
        db   $56,$00,$00,$00,$00,$48,$04,$01 ; BFEF 56 00 00 00 00 48 04 01  V....H..
        db   $0E,$07,$9E,$D8,$BF,$D8,$BF,$D8 ; BFF7 0E 07 9E D8 BF D8 BF D8  ........
        db   $BF                             ; BFFF BF                       .
Bank13_End:
