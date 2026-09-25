; PRG bank $10: ROM file $040010-$04400F
; CPU window $8000-$BFFF
; Disassembled by project-local da65 using generated code/data ranges.

base $8000
Bank10_Start:
; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------
Bank10_BattleServiceDirectory:
        db   $8A,$80,$C5,$80,$D1,$80,$D1,$80 ; 8000 8A 80 C5 80 D1 80 D1 80  ........
        db   $ED,$80,$ED,$80,$0B,$81,$0B,$81 ; 8008 ED 80 ED 80 0B 81 0B 81  ........
        db   $2B,$81,$2B,$81,$04,$8B,$E7,$8A ; 8010 2B 81 2B 81 04 8B E7 8A  +.+.....
        db   $59,$8B,$5E,$8B,$63,$8B,$68,$8B ; 8018 59 8B 5E 8B 63 8B 68 8B  Y.^.c.h.
        db   $6D,$8B,$B6,$8B,$EE,$8B,$04,$8C ; 8020 6D 8B B6 8B EE 8B 04 8C  m.......
        db   $77,$8B,$8C,$8B,$A1,$8B,$BF,$A1 ; 8028 77 8B 8C 8B A1 8B BF A1  w.......
        db   $D4,$A1,$02,$A2,$0A,$A2,$3D,$A2 ; 8030 D4 A1 02 A2 0A A2 3D A2  ......=.
        db   $A0,$A2,$46,$B1,$58,$B1,$5A,$B1 ; 8038 A0 A2 46 B1 58 B1 5A B1  ..F.X.Z.
        db   $E2,$8D,$61,$8E,$74,$AB,$88,$AB ; 8040 E2 8D 61 8E 74 AB 88 AB  ..a.t...
        db   $9C,$AB,$A2,$A6,$C0,$A0,$21,$AC ; 8048 9C AB A2 A6 C0 A0 21 AC  ......!.
        db   $B9,$AB,$90,$84,$40,$A2,$56,$A2 ; 8050 B9 AB 90 84 40 A2 56 A2  ....@.V.
        db   $C7,$9D,$DA,$9C,$DD,$9C,$7E,$BC ; 8058 C7 9D DA 9C DD 9C 7E BC  ......~.
        db   $2D,$AC,$70,$AC,$70,$AC,$B5,$AC ; 8060 2D AC 70 AC 70 AC B5 AC  -.p.p...
        db   $B5,$AC,$72,$8B,$35,$A0,$9D,$9D ; 8068 B5 AC 72 8B 35 A0 9D 9D  ..r.5...
        db   $EC,$90,$AF,$AC,$DB,$A2,$C7,$BC ; 8070 EC 90 AF AC DB A2 C7 BC  ........
        db   $EC,$BC,$0E,$BD,$1F,$BD,$28,$BD ; 8078 EC BC 0E BD 1F BD 28 BD  ......(.
; ----------------------------------------------------------------------------
Bank10_BattlePartyServices:
        sta     $6E0B                           ; 8080 8D 0B 6E                 ..n
        txa                                     ; 8083 8A                       .
        pha                                     ; 8084 48                       H
        tya                                     ; 8085 98                       .
        pha                                     ; 8086 48                       H
        jmp     BattlePartyServices_Branch_815F ; 8087 4C 5F 81                 L_.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_808A:
        sta     $6E0B                           ; 808A 8D 0B 6E                 ..n
        txa                                     ; 808D 8A                       .
        pha                                     ; 808E 48                       H
        tya                                     ; 808F 98                       .
        pha                                     ; 8090 48                       H
BattlePartyServices_Branch_8091:
        jsr     BattlePartyServices_Entry_809D  ; 8091 20 9D 80                  ..
        lda     $76                             ; 8094 A5 76                    .v
        sta     $6E0A                           ; 8096 8D 0A 6E                 ..n
        iny                                     ; 8099 C8                       .
        jmp     BattlePartyServices_Branch_80B3 ; 809A 4C B3 80                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_809D:
        tsx                                     ; 809D BA                       .
        lda     $0108,x                         ; 809E BD 08 01                 ...
        sec                                     ; 80A1 38                       8
        sbc     #$01                            ; 80A2 E9 01                    ..
        sta     $79                             ; 80A4 85 79                    .y
        lda     $0109,x                         ; 80A6 BD 09 01                 ...
        sbc     #$00                            ; 80A9 E9 00                    ..
        sta     $7A                             ; 80AB 85 7A                    .z
        ldy     #$00                            ; 80AD A0 00                    ..
        sty     $6E0A                           ; 80AF 8C 0A 6E                 ..n
        rts                                     ; 80B2 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_80B3:
        tya                                     ; 80B3 98                       .
        tsx                                     ; 80B4 BA                       .
        clc                                     ; 80B5 18                       .
        adc     $79                             ; 80B6 65 79                    ey
        sta     $0106,x                         ; 80B8 9D 06 01                 ...
        lda     $7A                             ; 80BB A5 7A                    .z
        adc     #$00                            ; 80BD 69 00                    i.
        sta     $0107,x                         ; 80BF 9D 07 01                 ...
        jmp     BattlePartyServices_Branch_815F ; 80C2 4C 5F 81                 L_.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_80C5:
        sta     $6E0B                           ; 80C5 8D 0B 6E                 ..n
        stx     $6E                             ; 80C8 86 6E                    .n
        txa                                     ; 80CA 8A                       .
        pha                                     ; 80CB 48                       H
        tya                                     ; 80CC 98                       .
        pha                                     ; 80CD 48                       H
        jmp     BattlePartyServices_Branch_8091 ; 80CE 4C 91 80                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_80D1:
        txa                                     ; 80D1 8A                       .
        pha                                     ; 80D2 48                       H
        tya                                     ; 80D3 98                       .
        pha                                     ; 80D4 48                       H
        jsr     BattlePartyServices_Entry_809D  ; 80D5 20 9D 80                  ..
        lda     $76                             ; 80D8 A5 76                    .v
        sta     $6E0B                           ; 80DA 8D 0B 6E                 ..n
        iny                                     ; 80DD C8                       .
        lda     $77                             ; 80DE A5 77                    .w
        cmp     #$33                            ; 80E0 C9 33                    .3
        beq     BattlePartyServices_Branch_80EA ; 80E2 F0 06                    ..
        iny                                     ; 80E4 C8                       .
        lda     $78                             ; 80E5 A5 78                    .x
        sta     $6E0A                           ; 80E7 8D 0A 6E                 ..n
BattlePartyServices_Branch_80EA:
        jmp     BattlePartyServices_Branch_80B3 ; 80EA 4C B3 80                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_80ED:
        stx     $6E                             ; 80ED 86 6E                    .n
        txa                                     ; 80EF 8A                       .
        pha                                     ; 80F0 48                       H
        tya                                     ; 80F1 98                       .
        pha                                     ; 80F2 48                       H
        jsr     BattlePartyServices_Entry_809D  ; 80F3 20 9D 80                  ..
        lda     $76                             ; 80F6 A5 76                    .v
        sta     $6E0B                           ; 80F8 8D 0B 6E                 ..n
        iny                                     ; 80FB C8                       .
        lda     $77                             ; 80FC A5 77                    .w
        cmp     #$53                            ; 80FE C9 53                    .S
        beq     BattlePartyServices_Branch_8108 ; 8100 F0 06                    ..
        iny                                     ; 8102 C8                       .
        lda     $78                             ; 8103 A5 78                    .x
        sta     $6E0A                           ; 8105 8D 0A 6E                 ..n
BattlePartyServices_Branch_8108:
        jmp     BattlePartyServices_Branch_80B3 ; 8108 4C B3 80                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_810B:
        stx     $6E                             ; 810B 86 6E                    .n
        sta     $6F                             ; 810D 85 6F                    .o
        txa                                     ; 810F 8A                       .
        pha                                     ; 8110 48                       H
        tya                                     ; 8111 98                       .
        pha                                     ; 8112 48                       H
        jsr     BattlePartyServices_Entry_809D  ; 8113 20 9D 80                  ..
        lda     $76                             ; 8116 A5 76                    .v
        sta     $6E0B                           ; 8118 8D 0B 6E                 ..n
        iny                                     ; 811B C8                       .
        lda     $77                             ; 811C A5 77                    .w
        cmp     #$73                            ; 811E C9 73                    .s
        beq     BattlePartyServices_Branch_8128 ; 8120 F0 06                    ..
        iny                                     ; 8122 C8                       .
        lda     $78                             ; 8123 A5 78                    .x
        sta     $6E0A                           ; 8125 8D 0A 6E                 ..n
BattlePartyServices_Branch_8128:
        jmp     BattlePartyServices_Branch_80B3 ; 8128 4C B3 80                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_812B:
        stx     $6E                             ; 812B 86 6E                    .n
        txa                                     ; 812D 8A                       .
        pha                                     ; 812E 48                       H
        tya                                     ; 812F 98                       .
        pha                                     ; 8130 48                       H
        jsr     BattlePartyServices_Entry_809D  ; 8131 20 9D 80                  ..
        lda     $76                             ; 8134 A5 76                    .v
        sta     $6E0B                           ; 8136 8D 0B 6E                 ..n
        iny                                     ; 8139 C8                       .
        lda     $77                             ; 813A A5 77                    .w
        cmp     #$93                            ; 813C C9 93                    ..
        beq     BattlePartyServices_Branch_814F ; 813E F0 0F                    ..
        iny                                     ; 8140 C8                       .
        lda     $78                             ; 8141 A5 78                    .x
        sta     $6F                             ; 8143 85 6F                    .o
        iny                                     ; 8145 C8                       .
        jsr     BattlePartyServices_Entry_8157  ; 8146 20 57 81                  W.
        sta     $6E0A                           ; 8149 8D 0A 6E                 ..n
        jmp     BattlePartyServices_Branch_80B3 ; 814C 4C B3 80                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_814F:
        iny                                     ; 814F C8                       .
        lda     $78                             ; 8150 A5 78                    .x
        sta     $6F                             ; 8152 85 6F                    .o
        jmp     BattlePartyServices_Branch_80B3 ; 8154 4C B3 80                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8157:
        lda     $0517                           ; 8157 AD 17 05                 ...
        ldx     #$79                            ; 815A A2 79                    .y
        jmp     UpperFixedEngine_Entry_C3EA     ; 815C 4C EA C3                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_815F:
        ldx     #$0F                            ; 815F A2 0F                    ..
BattlePartyServices_Branch_8161:
        lda     $00,x                         ; 8161 B5 00                    ..
        pha                                     ; 8163 48                       H
        dex                                     ; 8164 CA                       .
        bpl     BattlePartyServices_Branch_8161 ; 8165 10 FA                    ..
        lda     $6E0A                           ; 8167 AD 0A 6E                 ..n
        pha                                     ; 816A 48                       H
        jsr     BattlePartyServices_Entry_8196  ; 816B 20 96 81                  ..
        jsr     BattlePartyServices_Entry_8301  ; 816E 20 01 83                  ..
        jsr     BattlePartyServices_Entry_8214  ; 8171 20 14 82                  ..
        jsr     BattlePartyServices_Entry_8313  ; 8174 20 13 83                  ..
        jsr     BattlePartyServices_Entry_831E  ; 8177 20 1E 83                  ..
        jsr     BattlePartyServices_Entry_8221  ; 817A 20 21 82                  !.
        jsr     BattlePartyServices_Entry_A077  ; 817D 20 77 A0                  w.
        pla                                     ; 8180 68                       h
        sta     $6E0A                           ; 8181 8D 0A 6E                 ..n
        ldy     #$10                            ; 8184 A0 10                    ..
        ldx     #$00                            ; 8186 A2 00                    ..
BattlePartyServices_Branch_8188:
        pla                                     ; 8188 68                       h
        sta     $00,x                         ; 8189 95 00                    ..
        inx                                     ; 818B E8                       .
        dey                                     ; 818C 88                       .
        bne     BattlePartyServices_Branch_8188 ; 818D D0 F9                    ..
        pla                                     ; 818F 68                       h
        tay                                     ; 8190 A8                       .
        pla                                     ; 8191 68                       h
        tax                                     ; 8192 AA                       .
        lda     $72                             ; 8193 A5 72                    .r
        rts                                     ; 8195 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8196:
        ldx     $6E                             ; 8196 A6 6E                    .n
BattlePartyServices_Entry_8198:
        inx                                     ; 8198 E8                       .
        stx     $6E0C                           ; 8199 8E 0C 6E                 ..n
        jsr     BattlePartyServices_Entry_82F0  ; 819C 20 F0 82                  ..
        bcs     BattlePartyServices_Branch_81B8 ; 819F B0 17                    ..
        jsr     BattlePartyServices_Entry_8241  ; 81A1 20 41 82                  A.
        bcc     BattlePartyServices_Branch_81AB ; 81A4 90 05                    ..
        jsr     BattlePartyServices_Entry_8278  ; 81A6 20 78 82                  x.
        beq     BattlePartyServices_Branch_81B5 ; 81A9 F0 0A                    ..
BattlePartyServices_Branch_81AB:
        jsr     BattlePartyServices_Entry_825F  ; 81AB 20 5F 82                  _.
        bcc     BattlePartyServices_Entry_81B9  ; 81AE 90 09                    ..
        jsr     BattlePartyServices_Entry_8278  ; 81B0 20 78 82                  x.
        bne     BattlePartyServices_Entry_81B9  ; 81B3 D0 04                    ..
BattlePartyServices_Branch_81B5:
        sty     $6E0C                           ; 81B5 8C 0C 6E                 ..n
BattlePartyServices_Branch_81B8:
        rts                                     ; 81B8 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_81B9:
        lda     $C000                           ; 81B9 AD 00 C0                 ...
        bne     BattlePartyServices_Branch_8212 ; 81BC D0 54                    .T
        lda     $6BDE                           ; 81BE AD DE 6B                 ..k
        pha                                     ; 81C1 48                       H
        lda     $0517                           ; 81C2 AD 17 05                 ...
        pha                                     ; 81C5 48                       H
        lda     $6BDD                           ; 81C6 AD DD 6B                 ..k
        ora     #$80                            ; 81C9 09 80                    ..
        sta     $6BDD                           ; 81CB 8D DD 6B                 ..k
        brk                                     ; 81CE 00                       .
        db   $07,$6F,$43                     ; 81CF 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        lda     $0553                           ; 81D2 AD 53 05                 .S.
        and     #$7F                            ; 81D5 29 7F                    ).
        sta     $0553                           ; 81D7 8D 53 05                 .S.
        lda     $6BDE                           ; 81DA AD DE 6B                 ..k
        and     #$7F                            ; 81DD 29 7F                    ).
        sta     $6BDE                           ; 81DF 8D DE 6B                 ..k
        brk                                     ; 81E2 00                       .
        db   $CA,$1B                         ; 81E3 CA 1B                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 81E5 00                       .
        db   $12,$FB                         ; 81E6 12 FB                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C8CC     ; 81E8 20 CC C8                  ..
        pla                                     ; 81EB 68                       h
        sta     $FD                             ; 81EC 85 FD                    ..
        lda     #$00                            ; 81EE A9 00                    ..
        sta     $FE                             ; 81F0 85 FE                    ..
        sta     $FF                             ; 81F2 85 FF                    ..
        brk                                     ; 81F4 00                       .
        db   $CD,$1B                         ; 81F5 CD 1B                    ..
; ----------------------------------------------------------------------------
        lda     $6E0B                           ; 81F7 AD 0B 6E                 ..n
        sta     $FD                             ; 81FA 85 FD                    ..
        brk                                     ; 81FC 00                       .
        db   $CE,$1B                         ; 81FD CE 1B                    ..
; ----------------------------------------------------------------------------
        lda     $6E                             ; 81FF A5 6E                    .n
        sta     $FD                             ; 8201 85 FD                    ..
        brk                                     ; 8203 00                       .
        db   $CF,$1B                         ; 8204 CF 1B                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C8CC     ; 8206 20 CC C8                  ..
        lda     #$00                            ; 8209 A9 00                    ..
        sta     $6BDD                           ; 820B 8D DD 6B                 ..k
        pla                                     ; 820E 68                       h
        sta     $6BDE                           ; 820F 8D DE 6B                 ..k
BattlePartyServices_Branch_8212:
        clc                                     ; 8212 18                       .
        rts                                     ; 8213 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8214:
        lda     $71                             ; 8214 A5 71                    .q
        sta     $78                             ; 8216 85 78                    .x
        lda     $70                             ; 8218 A5 70                    .p
        sta     $77                             ; 821A 85 77                    .w
        lda     $6F                             ; 821C A5 6F                    .o
        sta     $76                             ; 821E 85 76                    .v
        rts                                     ; 8220 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8221:
        bcc     BattlePartyServices_Branch_823E ; 8221 90 1B                    ..
        ldy     $6E0E                           ; 8223 AC 0E 6E                 ..n
        jsr     BattlePartyServices_Entry_8392  ; 8226 20 92 83                  ..
        lda     $6E0B                           ; 8229 AD 0B 6E                 ..n
        asl     a                               ; 822C 0A                       .
        tax                                     ; 822D AA                       .
        lda     Bank10_BattleActionHandlerPointers,x; 822E BD 30 9E             .0.
        sta     $00                           ; 8231 85 00                    ..
        lda     $9E31,x                         ; 8233 BD 31 9E                 .1.
        sta     $01                             ; 8236 85 01                    ..
        ldy     $6E0E                           ; 8238 AC 0E 6E                 ..n
        jmp     ($0000)                         ; 823B 6C 00 00                 l..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_823E:
        jmp     BattlePartyServices_Entry_81B9  ; 823E 4C B9 81                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8241:
        ldy     #$00                            ; 8241 A0 00                    ..
        lda     SaveGameStateFlags              ; 8243 AD 8E 61                 ..a
        bpl     BattlePartyServices_Branch_824A ; 8246 10 02                    ..
        ldy     #$04                            ; 8248 A0 04                    ..
BattlePartyServices_Branch_824A:
        bit     SaveGameStateFlags              ; 824A 2C 8E 61                 ,.a
        bvc     BattlePartyServices_Branch_8254 ; 824D 50 05                    P.
        tya                                     ; 824F 98                       .
        clc                                     ; 8250 18                       .
        adc     #$1C                            ; 8251 69 1C                    i.
        tay                                     ; 8253 A8                       .
BattlePartyServices_Branch_8254:
        lda     $6E0A                           ; 8254 AD 0A 6E                 ..n
        and     #$80                            ; 8257 29 80                    ).
        bne     BattlePartyServices_Branch_825D ; 8259 D0 02                    ..
        sec                                     ; 825B 38                       8
        rts                                     ; 825C 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_825D:
        clc                                     ; 825D 18                       .
        rts                                     ; 825E 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_825F:
        ldy     #$08                            ; 825F A0 08                    ..
        bit     SaveGameStateFlags              ; 8261 2C 8E 61                 ,.a
        bvc     BattlePartyServices_Branch_8268 ; 8264 50 02                    P.
        ldy     #$12                            ; 8266 A0 12                    ..
BattlePartyServices_Branch_8268:
        jsr     BattlePartyServices_Entry_8498  ; 8268 20 98 84                  ..
        bcc     BattlePartyServices_Branch_8276 ; 826B 90 09                    ..
        lda     $6E0A                           ; 826D AD 0A 6E                 ..n
        and     #$40                            ; 8270 29 40                    )@
        bne     BattlePartyServices_Branch_8276 ; 8272 D0 02                    ..
        sec                                     ; 8274 38                       8
        rts                                     ; 8275 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8276:
        clc                                     ; 8276 18                       .
        rts                                     ; 8277 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8278:
        lda     #$04                            ; 8278 A9 04                    ..
        cpy     #$08                            ; 827A C0 08                    ..
        bcc     BattlePartyServices_Branch_8284 ; 827C 90 06                    ..
        cpy     #$1C                            ; 827E C0 1C                    ..
        bcs     BattlePartyServices_Branch_8284 ; 8280 B0 02                    ..
        lda     #$0A                            ; 8282 A9 0A                    ..
BattlePartyServices_Branch_8284:
        sta     $00                           ; 8284 85 00                    ..
BattlePartyServices_Branch_8286:
        tya                                     ; 8286 98                       .
        pha                                     ; 8287 48                       H
        lda     SavePartyCharacter1,y           ; 8288 B9 6A 61                 .ja
        sta     $01                             ; 828B 85 01                    ..
        bpl     BattlePartyServices_Branch_82DF ; 828D 10 50                    .P
        jsr     BattlePartyServices_Entry_8301  ; 828F 20 01 83                  ..
        lda     $6E0A                           ; 8292 AD 0A 6E                 ..n
        beq     BattlePartyServices_Branch_82DA ; 8295 F0 43                    .C
        sta     $02                             ; 8297 85 02                    ..
        ldy     #$00                            ; 8299 A0 00                    ..
        lsr     $02                             ; 829B 46 02                    F.
        bcc     BattlePartyServices_Branch_82A3 ; 829D 90 04                    ..
        lda     ($79),y                         ; 829F B1 79                    .y
        bpl     BattlePartyServices_Branch_82DF ; 82A1 10 3C                    .<
BattlePartyServices_Branch_82A3:
        lsr     $02                             ; 82A3 46 02                    F.
        bcc     BattlePartyServices_Branch_82AC ; 82A5 90 05                    ..
        lda     ($79),y                         ; 82A7 B1 79                    .y
        asl     a                               ; 82A9 0A                       .
        bmi     BattlePartyServices_Branch_82DF ; 82AA 30 33                    03
BattlePartyServices_Branch_82AC:
        lsr     $02                             ; 82AC 46 02                    F.
        bcc     BattlePartyServices_Branch_82CE ; 82AE 90 1E                    ..
        lda     $01                             ; 82B0 A5 01                    ..
        and     #$1F                            ; 82B2 29 1F                    ).
        cmp     #$05                            ; 82B4 C9 05                    ..
        bcc     BattlePartyServices_Branch_82C0 ; 82B6 90 08                    ..
        cmp     #$08                            ; 82B8 C9 08                    ..
        beq     BattlePartyServices_Branch_82C0 ; 82BA F0 04                    ..
        bcc     BattlePartyServices_Branch_82DF ; 82BC 90 21                    .!
        bcs     BattlePartyServices_Branch_82DF ; 82BE B0 1F                    ..
BattlePartyServices_Branch_82C0:
        tax                                     ; 82C0 AA                       .
        ldy     #$1D                            ; 82C1 A0 1D                    ..
        lda     ($79),y                         ; 82C3 B1 79                    .y
        cpx     #$00                            ; 82C5 E0 00                    ..
        bne     BattlePartyServices_Branch_82CB ; 82C7 D0 02                    ..
        and     #$FC                            ; 82C9 29 FC                    ).
BattlePartyServices_Branch_82CB:
        tax                                     ; 82CB AA                       .
        beq     BattlePartyServices_Branch_82DF ; 82CC F0 11                    ..
BattlePartyServices_Branch_82CE:
        lsr     $02                             ; 82CE 46 02                    F.
        bcc     BattlePartyServices_Branch_82DA ; 82D0 90 08                    ..
        lda     $01                             ; 82D2 A5 01                    ..
        and     #$1F                            ; 82D4 29 1F                    ).
        cmp     #$09                            ; 82D6 C9 09                    ..
        bcs     BattlePartyServices_Branch_82DF ; 82D8 B0 05                    ..
BattlePartyServices_Branch_82DA:
        dec     $6E0C                           ; 82DA CE 0C 6E                 ..n
        beq     BattlePartyServices_Branch_82EA ; 82DD F0 0B                    ..
BattlePartyServices_Branch_82DF:
        pla                                     ; 82DF 68                       h
        tay                                     ; 82E0 A8                       .
        iny                                     ; 82E1 C8                       .
        dec     $00                           ; 82E2 C6 00                    ..
        bne     BattlePartyServices_Branch_8286 ; 82E4 D0 A0                    ..
        lda     $6E0C                           ; 82E6 AD 0C 6E                 ..n
        rts                                     ; 82E9 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_82EA:
        pla                                     ; 82EA 68                       h
        tay                                     ; 82EB A8                       .
        lda     $6E0C                           ; 82EC AD 0C 6E                 ..n
        rts                                     ; 82EF 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_82F0:
        ldx     $6E0B                           ; 82F0 AE 0B 6E                 ..n
        lda     $9F12,x                         ; 82F3 BD 12 9F                 ...
        and     #$1F                            ; 82F6 29 1F                    ).
        cmp     #$0C                            ; 82F8 C9 0C                    ..
        beq     BattlePartyServices_Branch_82FF ; 82FA F0 03                    ..
        cmp     #$15                            ; 82FC C9 15                    ..
        rts                                     ; 82FE 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_82FF:
        sec                                     ; 82FF 38                       8
        rts                                     ; 8300 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8301:
        lda     SavePartyCharacter1,y           ; 8301 B9 6A 61                 .ja
        and     #$1F                            ; 8304 29 1F                    ).
BattlePartyServices_Entry_8306:
        asl     a                               ; 8306 0A                       .
        tax                                     ; 8307 AA                       .
        lda     $9F83,x                         ; 8308 BD 83 9F                 ...
        sta     $79                             ; 830B 85 79                    .y
        lda     $9F84,x                         ; 830D BD 84 9F                 ...
        sta     $7A                             ; 8310 85 7A                    .z
        rts                                     ; 8312 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8313:
        lda     #$00                            ; 8313 A9 00                    ..
        sta     $72                             ; 8315 85 72                    .r
        sta     $73                             ; 8317 85 73                    .s
        sta     $74                             ; 8319 85 74                    .t
        sta     $75                             ; 831B 85 75                    .u
        rts                                     ; 831D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_831E:
        jsr     BattlePartyServices_Entry_82F0  ; 831E 20 F0 82                  ..
        tax                                     ; 8321 AA                       .
        bcs     BattlePartyServices_Branch_833E ; 8322 B0 1A                    ..
        lda     $9FC1,x                         ; 8324 BD C1 9F                 ...
        tay                                     ; 8327 A8                       .
        lda     $9FD6,x                         ; 8328 BD D6 9F                 ...
        sta     $6E0D                           ; 832B 8D 0D 6E                 ..n
        cpx     #$12                            ; 832E E0 12                    ..
        bcc     BattlePartyServices_Branch_8357 ; 8330 90 25                    .%
        lda     $6BDE                           ; 8332 AD DE 6B                 ..k
        bpl     BattlePartyServices_Branch_833C ; 8335 10 05                    ..
        jsr     BattlePartyServices_Entry_835C  ; 8337 20 5C 83                  \.
        bcs     BattlePartyServices_Branch_8357 ; 833A B0 1B                    ..
BattlePartyServices_Branch_833C:
        clc                                     ; 833C 18                       .
        rts                                     ; 833D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_833E:
        cmp     #$18                            ; 833E C9 18                    ..
        beq     BattlePartyServices_Branch_8355 ; 8340 F0 13                    ..
        tax                                     ; 8342 AA                       .
        ldy     $9FD6,x                         ; 8343 BC D6 9F                 ...
        sty     $6E0D                           ; 8346 8C 0D 6E                 ..n
        asl     a                               ; 8349 0A                       .
        tax                                     ; 834A AA                       .
        lda     $9FC5,x                         ; 834B BD C5 9F                 ...
        sta     $79                             ; 834E 85 79                    .y
        lda     $9FC6,x                         ; 8350 BD C6 9F                 ...
        sta     $7A                             ; 8353 85 7A                    .z
BattlePartyServices_Branch_8355:
        ldy     #$00                            ; 8355 A0 00                    ..
BattlePartyServices_Branch_8357:
        sty     $6E0E                           ; 8357 8C 0E 6E                 ..n
        sec                                     ; 835A 38                       8
        rts                                     ; 835B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_835C:
        ldx     $6E0C                           ; 835C AE 0C 6E                 ..n
        lda     SavePartyCharacter1,x           ; 835F BD 6A 61                 .ja
        and     #$1F                            ; 8362 29 1F                    ).
        sta     $7A                             ; 8364 85 7A                    .z
        ldx     #$09                            ; 8366 A2 09                    ..
BattlePartyServices_Branch_8368:
        lda     $72EA,x                         ; 8368 BD EA 72                 ..r
        bpl     BattlePartyServices_Branch_8373 ; 836B 10 06                    ..
        and     #$1F                            ; 836D 29 1F                    ).
        cmp     $7A                             ; 836F C5 7A                    .z
        beq     BattlePartyServices_Branch_8378 ; 8371 F0 05                    ..
BattlePartyServices_Branch_8373:
        dex                                     ; 8373 CA                       .
        bpl     BattlePartyServices_Branch_8368 ; 8374 10 F2                    ..
        clc                                     ; 8376 18                       .
        rts                                     ; 8377 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8378:
        txa                                     ; 8378 8A                       .
        asl     a                               ; 8379 0A                       .
        tax                                     ; 837A AA                       .
        lda     $9FAD,x                         ; 837B BD AD 9F                 ...
        sta     $79                             ; 837E 85 79                    .y
        lda     $9FAE,x                         ; 8380 BD AE 9F                 ...
        sta     $7A                             ; 8383 85 7A                    .z
        sec                                     ; 8385 38                       8
        rts                                     ; 8386 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8387:
        ldx     $6E0C                           ; 8387 AE 0C 6E                 ..n
        lda     SavePartyCharacter1,x           ; 838A BD 6A 61                 .ja
        and     #$1F                            ; 838D 29 1F                    ).
        cmp     #$09                            ; 838F C9 09                    ..
        rts                                     ; 8391 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8392:
        tya                                     ; 8392 98                       .
        pha                                     ; 8393 48                       H
        jsr     BattlePartyServices_Entry_82F0  ; 8394 20 F0 82                  ..
        cmp     #$0D                            ; 8397 C9 0D                    ..
        beq     BattlePartyServices_Branch_83B7 ; 8399 F0 1C                    ..
        cmp     #$0E                            ; 839B C9 0E                    ..
        beq     BattlePartyServices_Branch_83B7 ; 839D F0 18                    ..
        cmp     #$18                            ; 839F C9 18                    ..
        beq     BattlePartyServices_Branch_83B7 ; 83A1 F0 14                    ..
        lda     $9F12,x                         ; 83A3 BD 12 9F                 ...
        and     #$40                            ; 83A6 29 40                    )@
        bne     BattlePartyServices_Branch_83B7 ; 83A8 D0 0D                    ..
        ldx     #$00                            ; 83AA A2 00                    ..
BattlePartyServices_Branch_83AC:
        lda     ($79),y                         ; 83AC B1 79                    .y
        sta     $72,x                           ; 83AE 95 72                    .r
        iny                                     ; 83B0 C8                       .
        inx                                     ; 83B1 E8                       .
        cpx     $6E0D                           ; 83B2 EC 0D 6E                 ..n
        bne     BattlePartyServices_Branch_83AC ; 83B5 D0 F5                    ..
BattlePartyServices_Branch_83B7:
        pla                                     ; 83B7 68                       h
        tay                                     ; 83B8 A8                       .
        rts                                     ; 83B9 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_83BA:
        clc                                     ; 83BA 18                       .
        bcc     BattlePartyServices_Branch_83BE ; 83BB 90 01                    ..
BattlePartyServices_Entry_83BD:
        sec                                     ; 83BD 38                       8
BattlePartyServices_Branch_83BE:
        ldx     $6E0D                           ; 83BE AE 0D 6E                 ..n
        stx     $06                             ; 83C1 86 06                    ..
        ldx     #$00                            ; 83C3 A2 00                    ..
        rts                                     ; 83C5 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_83C6:
        lda     #$E7                            ; 83C6 A9 E7                    ..
        sta     $03                             ; 83C8 85 03                    ..
        lda     #$03                            ; 83CA A9 03                    ..
        sta     $04                           ; 83CC 85 04                    ..
        rts                                     ; 83CE 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_83CF:
        jsr     BattlePartyServices_Entry_87D7  ; 83CF 20 D7 87                  ..
        bcs     BattlePartyServices_Branch_83E2 ; 83D2 B0 0E                    ..
        ldx     #$00                            ; 83D4 A2 00                    ..
BattlePartyServices_Branch_83D6:
        lda     ($79),y                         ; 83D6 B1 79                    .y
        sta     $03,x                           ; 83D8 95 03                    ..
        iny                                     ; 83DA C8                       .
        inx                                     ; 83DB E8                       .
        cpx     $6E0D                           ; 83DC EC 0D 6E                 ..n
        bne     BattlePartyServices_Branch_83D6 ; 83DF D0 F5                    ..
        rts                                     ; 83E1 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_83E2:
        cpy     #$0C                            ; 83E2 C0 0C                    ..
        bne     BattlePartyServices_Branch_83F1 ; 83E4 D0 0B                    ..
        jsr     BattlePartyServices_Entry_86D5  ; 83E6 20 D5 86                  ..
        jsr     BattlePartyServices_Entry_8403  ; 83E9 20 03 84                  ..
        ldy     #$01                            ; 83EC A0 01                    ..
        jmp     BattlePartyServices_Branch_8410 ; 83EE 4C 10 84                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_83F1:
        cpy     #$0E                            ; 83F1 C0 0E                    ..
        bne     BattlePartyServices_Branch_8400 ; 83F3 D0 0B                    ..
        jsr     BattlePartyServices_Entry_86F6  ; 83F5 20 F6 86                  ..
        jsr     BattlePartyServices_Entry_8403  ; 83F8 20 03 84                  ..
        ldy     #$03                            ; 83FB A0 03                    ..
        jmp     BattlePartyServices_Branch_8410 ; 83FD 4C 10 84                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8400:
        jmp     BattlePartyServices_Entry_81B9  ; 8400 4C B9 81                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8403:
        lda     $72                             ; 8403 A5 72                    .r
        sta     $03                             ; 8405 85 03                    ..
        lda     $73                             ; 8407 A5 73                    .s
        sta     $04                           ; 8409 85 04                    ..
        lda     #$00                            ; 840B A9 00                    ..
        sta     $05                             ; 840D 85 05                    ..
        rts                                     ; 840F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8410:
        lda     ($79),y                         ; 8410 B1 79                    .y
        sta     $72                             ; 8412 85 72                    .r
        iny                                     ; 8414 C8                       .
        lda     ($79),y                         ; 8415 B1 79                    .y
        sta     $73                             ; 8417 85 73                    .s
        lda     #$00                            ; 8419 A9 00                    ..
        sta     $74                             ; 841B 85 74                    .t
        rts                                     ; 841D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_841E:
        jsr     BattlePartyServices_Entry_83CF  ; 841E 20 CF 83                  ..
BattlePartyServices_Branch_8421:
        jsr     BattlePartyServices_Entry_83BD  ; 8421 20 BD 83                  ..
BattlePartyServices_Branch_8424:
        lda     $03,x                           ; 8424 B5 03                    ..
        sbc     $72,x                           ; 8426 F5 72                    .r
        sta     $00,x                         ; 8428 95 00                    ..
        inx                                     ; 842A E8                       .
        dec     $06                             ; 842B C6 06                    ..
        bne     BattlePartyServices_Branch_8424 ; 842D D0 F5                    ..
        jsr     BattlePartyServices_Entry_83BD  ; 842F 20 BD 83                  ..
BattlePartyServices_Branch_8432:
        lda     $00,x                         ; 8432 B5 00                    ..
        sbc     $76,x                           ; 8434 F5 76                    .v
        inx                                     ; 8436 E8                       .
        dec     $06                             ; 8437 C6 06                    ..
        bne     BattlePartyServices_Branch_8432 ; 8439 D0 F7                    ..
        bcs     BattlePartyServices_Branch_8449 ; 843B B0 0C                    ..
        ldx     $6E0D                           ; 843D AE 0D 6E                 ..n
BattlePartyServices_Branch_8440:
        lda     $FFFF,x                         ; 8440 BD FF FF                 ...
        sta     a:$75,x                         ; 8443 9D 75 00                 .u.
        dex                                     ; 8446 CA                       .
        bne     BattlePartyServices_Branch_8440 ; 8447 D0 F7                    ..
BattlePartyServices_Branch_8449:
        jsr     BattlePartyServices_Entry_83BA  ; 8449 20 BA 83                  ..
        ldy     $6E0E                           ; 844C AC 0E 6E                 ..n
BattlePartyServices_Branch_844F:
        lda     $72,x                           ; 844F B5 72                    .r
        adc     $76,x                           ; 8451 75 76                    uv
        sta     ($79),y                         ; 8453 91 79                    .y
        lda     $76,x                           ; 8455 B5 76                    .v
        sta     $72,x                           ; 8457 95 72                    .r
        iny                                     ; 8459 C8                       .
        inx                                     ; 845A E8                       .
        dec     $06                             ; 845B C6 06                    ..
        bne     BattlePartyServices_Branch_844F ; 845D D0 F0                    ..
        rts                                     ; 845F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8460:
        ldy     $6E0E                           ; 8460 AC 0E 6E                 ..n
        jsr     BattlePartyServices_Entry_83BD  ; 8463 20 BD 83                  ..
BattlePartyServices_Branch_8466:
        lda     $72,x                           ; 8466 B5 72                    .r
        sbc     $76,x                           ; 8468 F5 76                    .v
        sta     ($79),y                         ; 846A 91 79                    .y
        iny                                     ; 846C C8                       .
        inx                                     ; 846D E8                       .
        dec     $06                             ; 846E C6 06                    ..
        bne     BattlePartyServices_Branch_8466 ; 8470 D0 F4                    ..
        bcs     BattlePartyServices_Branch_8483 ; 8472 B0 0F                    ..
        lda     #$00                            ; 8474 A9 00                    ..
        ldx     $6E0D                           ; 8476 AE 0D 6E                 ..n
        ldy     $6E0E                           ; 8479 AC 0E 6E                 ..n
BattlePartyServices_Branch_847C:
        sta     ($79),y                         ; 847C 91 79                    .y
        iny                                     ; 847E C8                       .
        dex                                     ; 847F CA                       .
        bne     BattlePartyServices_Branch_847C ; 8480 D0 FA                    ..
        rts                                     ; 8482 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8483:
        ldx     $6E0D                           ; 8483 AE 0D 6E                 ..n
BattlePartyServices_Branch_8486:
        lda     a:$75,x                         ; 8486 BD 75 00                 .u.
        sta     a:$71,x                         ; 8489 9D 71 00                 .q.
        dex                                     ; 848C CA                       .
        bne     BattlePartyServices_Branch_8486 ; 848D D0 F7                    ..
        rts                                     ; 848F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8490:
        sec                                     ; 8490 38                       8
        lda     #$00                            ; 8491 A9 00                    ..
BattlePartyServices_Branch_8493:
        rol     a                               ; 8493 2A                       *
        dex                                     ; 8494 CA                       .
        bpl     BattlePartyServices_Branch_8493 ; 8495 10 FC                    ..
        rts                                     ; 8497 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8498:
        pha                                     ; 8498 48                       H
        txa                                     ; 8499 8A                       .
        pha                                     ; 849A 48                       H
        tya                                     ; 849B 98                       .
        pha                                     ; 849C 48                       H
        lda     SaveGameStateFlags              ; 849D AD 8E 61                 ..a
        and     #$20                            ; 84A0 29 20                    )
        beq     BattlePartyServices_Branch_84D9 ; 84A2 F0 35                    .5
        lda     SaveGameStateFlags              ; 84A4 AD 8E 61                 ..a
        and     #$80                            ; 84A7 29 80                    ).
        bne     BattlePartyServices_Branch_84D9 ; 84A9 D0 2E                    ..
        lda     SaveGameStateFlags              ; 84AB AD 8E 61                 ..a
        and     #$07                            ; 84AE 29 07                    ).
        beq     BattlePartyServices_Branch_84C0 ; 84B0 F0 0E                    ..
        tax                                     ; 84B2 AA                       .
        lda     $41                             ; 84B3 A5 41                    .A
        bpl     BattlePartyServices_Branch_84D9 ; 84B5 10 22                    ."
        dex                                     ; 84B7 CA                       .
        beq     BattlePartyServices_Branch_84C7 ; 84B8 F0 0D                    ..
        dex                                     ; 84BA CA                       .
        beq     BattlePartyServices_Branch_84E0 ; 84BB F0 23                    .#
        jmp     BattlePartyServices_Branch_84D9 ; 84BD 4C D9 84                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_84C0:
        pla                                     ; 84C0 68                       h
        tay                                     ; 84C1 A8                       .
        pla                                     ; 84C2 68                       h
        tax                                     ; 84C3 AA                       .
        pla                                     ; 84C4 68                       h
        sec                                     ; 84C5 38                       8
        rts                                     ; 84C6 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_84C7:
        lda     $07BA                           ; 84C7 AD BA 07                 ...
        cmp     #$05                            ; 84CA C9 05                    ..
        beq     BattlePartyServices_Branch_84D9 ; 84CC F0 0B                    ..
        cmp     #$04                            ; 84CE C9 04                    ..
        beq     BattlePartyServices_Branch_84D9 ; 84D0 F0 07                    ..
        lda     $618F                           ; 84D2 AD 8F 61                 ..a
        cmp     CurrentMapNumber                ; 84D5 C5 63                    .c
        beq     BattlePartyServices_Branch_84C0 ; 84D7 F0 E7                    ..
BattlePartyServices_Branch_84D9:
        pla                                     ; 84D9 68                       h
        tay                                     ; 84DA A8                       .
        pla                                     ; 84DB 68                       h
        tax                                     ; 84DC AA                       .
        pla                                     ; 84DD 68                       h
        clc                                     ; 84DE 18                       .
        rts                                     ; 84DF 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_84E0:
        lda     $6193                           ; 84E0 AD 93 61                 ..a
        cmp     CurrentMapNumber                ; 84E3 C5 63                    .c
        beq     BattlePartyServices_Branch_84C0 ; 84E5 F0 D9                    ..
        bne     BattlePartyServices_Branch_84D9 ; 84E7 D0 F0                    ..
BattlePartyServices_Entry_84E9:
        rts                                     ; 84E9 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_84EA:
        jsr     BattlePartyServices_Entry_87D7  ; 84EA 20 D7 87                  ..
        bcc     BattlePartyServices_Branch_84F6 ; 84ED 90 07                    ..
        lda     #$0F                            ; 84EF A9 0F                    ..
        jsr     BattlePartyServices_Entry_870C  ; 84F1 20 0C 87                  ..
        sta     $72                             ; 84F4 85 72                    .r
BattlePartyServices_Branch_84F6:
        rts                                     ; 84F6 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_84F7:
        sta     $76                             ; 84F7 85 76                    .v
        lda     $72                             ; 84F9 A5 72                    .r
        pha                                     ; 84FB 48                       H
        lda     $73                             ; 84FC A5 73                    .s
        pha                                     ; 84FE 48                       H
        jsr     BattlePartyServices_Entry_88BF  ; 84FF 20 BF 88                  ..
        ldx     $73                             ; 8502 A6 73                    .s
        pla                                     ; 8504 68                       h
        sta     $73                             ; 8505 85 73                    .s
        pla                                     ; 8507 68                       h
        sta     $72                             ; 8508 85 72                    .r
        txa                                     ; 850A 8A                       .
        rts                                     ; 850B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_850C:
        jsr     BattlePartyServices_Entry_84EA  ; 850C 20 EA 84                  ..
        jsr     BattlePartyServices_Entry_87D7  ; 850F 20 D7 87                  ..
        bcs     BattlePartyServices_Branch_8528 ; 8512 B0 14                    ..
        lda     #$50                            ; 8514 A9 50                    .P
        jsr     BattlePartyServices_Entry_84F7  ; 8516 20 F7 84                  ..
        bcc     BattlePartyServices_Branch_8528 ; 8519 90 0D                    ..
        bpl     BattlePartyServices_Branch_8528 ; 851B 10 0B                    ..
        lda     $72                             ; 851D A5 72                    .r
        asl     a                               ; 851F 0A                       .
        sta     $72                             ; 8520 85 72                    .r
        bcc     BattlePartyServices_Branch_8528 ; 8522 90 04                    ..
        lda     #$FF                            ; 8524 A9 FF                    ..
        sta     $72                             ; 8526 85 72                    .r
BattlePartyServices_Branch_8528:
        lda     #$3C                            ; 8528 A9 3C                    .<
        jmp     BattlePartyServices_Branch_8632 ; 852A 4C 32 86                 L2.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_852D:
        jsr     BattlePartyServices_Entry_87D7  ; 852D 20 D7 87                  ..
        bcc     BattlePartyServices_Entry_853F  ; 8530 90 0D                    ..
        ldy     #$05                            ; 8532 A0 05                    ..
        lda     ($79),y                         ; 8534 B1 79                    .y
        sec                                     ; 8536 38                       8
        sbc     #$C5                            ; 8537 E9 C5                    ..
        tax                                     ; 8539 AA                       .
        lda     $8540,x                         ; 853A BD 40 85                 .@.
        sta     $72                             ; 853D 85 72                    .r
BattlePartyServices_Entry_853F:
        rts                                     ; 853F 60                       `
; ----------------------------------------------------------------------------
        db   $12,$36,$04,$1E,$1E,$1C,$28,$C3 ; 8540 12 36 04 1E 1E 1C 28 C3  .6....(.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8548:
        jsr     BattlePartyServices_Entry_87D7  ; 8548 20 D7 87                  ..
        bcc     BattlePartyServices_Branch_8550 ; 854B 90 03                    ..
        jsr     BattlePartyServices_Entry_81B9  ; 854D 20 B9 81                  ..
BattlePartyServices_Branch_8550:
        rts                                     ; 8550 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8551:
        lda     $72                             ; 8551 A5 72                    .r
        pha                                     ; 8553 48                       H
        jsr     BattlePartyServices_Entry_9613  ; 8554 20 13 96                  ..
        lda     $72                             ; 8557 A5 72                    .r
        sta     $75                             ; 8559 85 75                    .u
        jsr     BattlePartyServices_Entry_87D7  ; 855B 20 D7 87                  ..
        bcs     BattlePartyServices_Branch_8564 ; 855E B0 04                    ..
        pla                                     ; 8560 68                       h
        sta     $72                             ; 8561 85 72                    .r
        rts                                     ; 8563 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8564:
        pla                                     ; 8564 68                       h
        lda     #$80                            ; 8565 A9 80                    ..
        sta     $72                             ; 8567 85 72                    .r
        rts                                     ; 8569 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_856A:
        lda     #$00                            ; 856A A9 00                    ..
        ldx     #$1B                            ; 856C A2 1B                    ..
BattlePartyServices_Branch_856E:
        sta     $03E3,x                         ; 856E 9D E3 03                 ...
        dex                                     ; 8571 CA                       .
        bpl     BattlePartyServices_Branch_856E ; 8572 10 FA                    ..
        jsr     BattlePartyServices_Entry_87D7  ; 8574 20 D7 87                  ..
        bcc     BattlePartyServices_Branch_8589 ; 8577 90 10                    ..
        ldy     #$05                            ; 8579 A0 05                    ..
        lda     ($79),y                         ; 857B B1 79                    .y
        cmp     #$C5                            ; 857D C9 C5                    ..
        bcs     BattlePartyServices_Branch_8582 ; 857F B0 01                    ..
        rts                                     ; 8581 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8582:
        sbc     #$C5                            ; 8582 E9 C5                    ..
        clc                                     ; 8584 18                       .
        adc     #$08                            ; 8585 69 08                    i.
        bne     BattlePartyServices_Branch_85A0 ; 8587 D0 17                    ..
BattlePartyServices_Branch_8589:
        ldy     $6E0C                           ; 8589 AC 0C 6E                 ..n
        lda     SavePartyCharacter1,y           ; 858C B9 6A 61                 .ja
        and     #$07                            ; 858F 29 07                    ).
        bne     BattlePartyServices_Branch_85A0 ; 8591 D0 0D                    ..
        ldx     #$07                            ; 8593 A2 07                    ..
BattlePartyServices_Branch_8595:
        lda     SaveHeroName,x                  ; 8595 BD 5D 61                 .]a
        sta     $03E3,x                         ; 8598 9D E3 03                 ...
        dex                                     ; 859B CA                       .
        bpl     BattlePartyServices_Branch_8595 ; 859C 10 F7                    ..
        bmi     BattlePartyServices_Branch_85B0 ; 859E 30 10                    0.
BattlePartyServices_Branch_85A0:
        sec                                     ; 85A0 38                       8
        sbc     #$01                            ; 85A1 E9 01                    ..
        ldx     #$07                            ; 85A3 A2 07                    ..
        brk                                     ; 85A5 00                       .
        db   $04,$B7                         ; 85A6 04 B7                    ..
; ----------------------------------------------------------------------------
        ldx     $03FF                           ; 85A8 AE FF 03                 ...
        lda     #$00                            ; 85AB A9 00                    ..
        sta     $03E3,x                         ; 85AD 9D E3 03                 ...
BattlePartyServices_Branch_85B0:
        ldx     #$03                            ; 85B0 A2 03                    ..
BattlePartyServices_Branch_85B2:
        lda     $03E3,x                         ; 85B2 BD E3 03                 ...
        sta     $72,x                           ; 85B5 95 72                    .r
        dex                                     ; 85B7 CA                       .
        bpl     BattlePartyServices_Branch_85B2 ; 85B8 10 F8                    ..
        rts                                     ; 85BA 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_85BB:
        jsr     BattlePartyServices_Entry_87D7  ; 85BB 20 D7 87                  ..
        bcs     BattlePartyServices_Branch_85E3 ; 85BE B0 23                    .#
        lda     $72                             ; 85C0 A5 72                    .r
        sta     $00                           ; 85C2 85 00                    ..
        lda     #$00                            ; 85C4 A9 00                    ..
        sta     $73                             ; 85C6 85 73                    .s
        sta     $76                             ; 85C8 85 76                    .v
        jsr     BattlePartyServices_Entry_8A25  ; 85CA 20 25 8A                  %.
        bcc     BattlePartyServices_Branch_85DE ; 85CD 90 0F                    ..
        lda     $72                             ; 85CF A5 72                    .r
        jsr     BattlePartyServices_Entry_8C04  ; 85D1 20 04 8C                  ..
        clc                                     ; 85D4 18                       .
        adc     $00                           ; 85D5 65 00                    e.
        sta     $72                             ; 85D7 85 72                    .r
        bcc     BattlePartyServices_Branch_85DD ; 85D9 90 02                    ..
        inc     $73                             ; 85DB E6 73                    .s
BattlePartyServices_Branch_85DD:
        rts                                     ; 85DD 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_85DE:
        lda     $00                           ; 85DE A5 00                    ..
        sta     $72                             ; 85E0 85 72                    .r
        rts                                     ; 85E2 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_85E3:
        lda     #$13                            ; 85E3 A9 13                    ..
        jsr     BattlePartyServices_Entry_870C  ; 85E5 20 0C 87                  ..
        sta     $72                             ; 85E8 85 72                    .r
        ldx     #$02                            ; 85EA A2 02                    ..
        ldy     #$10                            ; 85EC A0 10                    ..
        lda     #$18                            ; 85EE A9 18                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; 85F0 20 EA C3                  ..
        and     #$02                            ; 85F3 29 02                    ).
        sta     $73                             ; 85F5 85 73                    .s
        lda     #$00                            ; 85F7 A9 00                    ..
        sta     $74                             ; 85F9 85 74                    .t
        sta     $75                             ; 85FB 85 75                    .u
        rts                                     ; 85FD 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_85FE:
        jsr     BattlePartyServices_Entry_87D7  ; 85FE 20 D7 87                  ..
        bcs     BattlePartyServices_Branch_8640 ; 8601 B0 3D                    .=
        lda     $72                             ; 8603 A5 72                    .r
        lsr     a                               ; 8605 4A                       J
        sta     $00                           ; 8606 85 00                    ..
        ldx     #$00                            ; 8608 A2 00                    ..
        stx     $01                             ; 860A 86 01                    ..
        inx                                     ; 860C E8                       .
        stx     $76                             ; 860D 86 76                    .v
BattlePartyServices_Branch_860F:
        jsr     BattlePartyServices_Entry_8A25  ; 860F 20 25 8A                  %.
        bcc     BattlePartyServices_Branch_8620 ; 8612 90 0C                    ..
        jsr     BattlePartyServices_Entry_8C04  ; 8614 20 04 8C                  ..
        clc                                     ; 8617 18                       .
        adc     $00                           ; 8618 65 00                    e.
        sta     $00                           ; 861A 85 00                    ..
        bcc     BattlePartyServices_Branch_8620 ; 861C 90 02                    ..
        inc     $01                             ; 861E E6 01                    ..
BattlePartyServices_Branch_8620:
        inc     $76                             ; 8620 E6 76                    .v
        lda     $76                             ; 8622 A5 76                    .v
        cmp     #$04                            ; 8624 C9 04                    ..
        bne     BattlePartyServices_Branch_860F ; 8626 D0 E7                    ..
        lda     $00                           ; 8628 A5 00                    ..
        sta     $72                             ; 862A 85 72                    .r
        lda     $01                             ; 862C A5 01                    ..
        sta     $73                             ; 862E 85 73                    .s
        lda     #$1F                            ; 8630 A9 1F                    ..
BattlePartyServices_Branch_8632:
        jsr     BattlePartyServices_Entry_84F7  ; 8632 20 F7 84                  ..
        bcc     BattlePartyServices_Branch_863F ; 8635 90 08                    ..
        bpl     BattlePartyServices_Branch_863F ; 8637 10 06                    ..
        lda     #$00                            ; 8639 A9 00                    ..
        sta     $72                             ; 863B 85 72                    .r
        sta     $73                             ; 863D 85 73                    .s
BattlePartyServices_Branch_863F:
        rts                                     ; 863F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8640:
        lda     #$17                            ; 8640 A9 17                    ..
        jsr     BattlePartyServices_Entry_870C  ; 8642 20 0C 87                  ..
        sta     $72                             ; 8645 85 72                    .r
        lda     #$18                            ; 8647 A9 18                    ..
        ldy     #$11                            ; 8649 A0 11                    ..
        ldx     #$02                            ; 864B A2 02                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; 864D 20 EA C3                  ..
        and     #$03                            ; 8650 29 03                    ).
        sta     $73                             ; 8652 85 73                    .s
        lda     #$00                            ; 8654 A9 00                    ..
        sta     $74                             ; 8656 85 74                    .t
        sta     $75                             ; 8658 85 75                    .u
        rts                                     ; 865A 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_865B:
        ldy     #$0C                            ; 865B A0 0C                    ..
        jmp     BattlePartyServices_Branch_841E ; 865D 4C 1E 84                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8660:
        lda     #$00                            ; 8660 A9 00                    ..
        sta     $77                             ; 8662 85 77                    .w
        ldy     #$0E                            ; 8664 A0 0E                    ..
        jmp     BattlePartyServices_Branch_841E ; 8666 4C 1E 84                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8669:
        lda     #$FF                            ; 8669 A9 FF                    ..
        bne     BattlePartyServices_Branch_8673 ; 866B D0 06                    ..
BattlePartyServices_Entry_866D:
        lda     #$01                            ; 866D A9 01                    ..
        sta     $76                             ; 866F 85 76                    .v
        lda     #$63                            ; 8671 A9 63                    .c
BattlePartyServices_Branch_8673:
        sta     $03                             ; 8673 85 03                    ..
        ldy     $6E0E                           ; 8675 AC 0E 6E                 ..n
        jmp     BattlePartyServices_Branch_8421 ; 8678 4C 21 84                 L!.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_867B:
        lda     #$80                            ; 867B A9 80                    ..
        sta     $03                             ; 867D 85 03                    ..
        lda     #$96                            ; 867F A9 96                    ..
        sta     $04                           ; 8681 85 04                    ..
        lda     #$98                            ; 8683 A9 98                    ..
        sta     $05                             ; 8685 85 05                    ..
        ldy     $6E0E                           ; 8687 AC 0E 6E                 ..n
        jmp     BattlePartyServices_Branch_8421 ; 868A 4C 21 84                 L!.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_868D:
        lda     #$9F                            ; 868D A9 9F                    ..
        sta     $03                             ; 868F 85 03                    ..
        lda     #$86                            ; 8691 A9 86                    ..
        sta     $04                           ; 8693 85 04                    ..
        lda     #$01                            ; 8695 A9 01                    ..
        sta     $05                             ; 8697 85 05                    ..
        lda     SaveTotalGold                   ; 8699 AD 57 61                 .Wa
        sta     $72                             ; 869C 85 72                    .r
        lda     $6158                           ; 869E AD 58 61                 .Xa
        sta     $73                             ; 86A1 85 73                    .s
        lda     $6159                           ; 86A3 AD 59 61                 .Ya
        sta     $74                             ; 86A6 85 74                    .t
        ldy     #$00                            ; 86A8 A0 00                    ..
        jmp     BattlePartyServices_Branch_8421 ; 86AA 4C 21 84                 L!.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_86AD:
        lda     #$00                            ; 86AD A9 00                    ..
        sta     $77                             ; 86AF 85 77                    .w
BattlePartyServices_Entry_86B1:
        jmp     BattlePartyServices_Entry_8460  ; 86B1 4C 60 84                 L`.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_86B4:
        jsr     BattlePartyServices_Entry_83BD  ; 86B4 20 BD 83                  ..
BattlePartyServices_Branch_86B7:
        lda     $72,x                           ; 86B7 B5 72                    .r
        sbc     $76,x                           ; 86B9 F5 76                    .v
        sta     $00,x                         ; 86BB 95 00                    ..
        inx                                     ; 86BD E8                       .
        dec     $06                             ; 86BE C6 06                    ..
        bne     BattlePartyServices_Branch_86B7 ; 86C0 D0 F5                    ..
        bcc     BattlePartyServices_Branch_86D4 ; 86C2 90 10                    ..
        ldx     #$00                            ; 86C4 A2 00                    ..
        ldy     #$00                            ; 86C6 A0 00                    ..
BattlePartyServices_Branch_86C8:
        lda     $00,x                         ; 86C8 B5 00                    ..
        sta     ($79),y                         ; 86CA 91 79                    .y
        iny                                     ; 86CC C8                       .
        inx                                     ; 86CD E8                       .
        cpx     $6E0D                           ; 86CE EC 0D 6E                 ..n
        bne     BattlePartyServices_Branch_86C8 ; 86D1 D0 F5                    ..
        sec                                     ; 86D3 38                       8
BattlePartyServices_Branch_86D4:
        rts                                     ; 86D4 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_86D5:
        jsr     BattlePartyServices_Entry_87D7  ; 86D5 20 D7 87                  ..
        bcs     BattlePartyServices_Branch_86DB ; 86D8 B0 01                    ..
        rts                                     ; 86DA 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_86DB:
        lda     #$01                            ; 86DB A9 01                    ..
        jsr     BattlePartyServices_Entry_870C  ; 86DD 20 0C 87                  ..
        sta     $72                             ; 86E0 85 72                    .r
        ldy     #$0F                            ; 86E2 A0 0F                    ..
        ldx     #$02                            ; 86E4 A2 02                    ..
        lda     #$18                            ; 86E6 A9 18                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; 86E8 20 EA C3                  ..
        and     #$03                            ; 86EB 29 03                    ).
        sta     $73                             ; 86ED 85 73                    .s
        lda     #$00                            ; 86EF A9 00                    ..
        sta     $74                             ; 86F1 85 74                    .t
        sta     $75                             ; 86F3 85 75                    .u
        rts                                     ; 86F5 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_86F6:
        jsr     BattlePartyServices_Entry_87D7  ; 86F6 20 D7 87                  ..
        bcs     BattlePartyServices_Branch_86FC ; 86F9 B0 01                    ..
        rts                                     ; 86FB 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_86FC:
        lda     #$08                            ; 86FC A9 08                    ..
        jsr     BattlePartyServices_Entry_870C  ; 86FE 20 0C 87                  ..
        sta     $72                             ; 8701 85 72                    .r
        lda     #$00                            ; 8703 A9 00                    ..
        sta     $73                             ; 8705 85 73                    .s
        sta     $74                             ; 8707 85 74                    .t
        sta     $75                             ; 8709 85 75                    .u
        rts                                     ; 870B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_870C:
        sta     $6E59                           ; 870C 8D 59 6E                 .Yn
        ldy     #$05                            ; 870F A0 05                    ..
        lda     ($79),y                         ; 8711 B1 79                    .y
        jsr     BattlePartyServices_Entry_A6A2  ; 8713 20 A2 A6                  ..
        rts                                     ; 8716 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8717:
        lda     #$00                            ; 8717 A9 00                    ..
        sta     $77                             ; 8719 85 77                    .w
        jsr     BattlePartyServices_Entry_83C6  ; 871B 20 C6 83                  ..
        jmp     BattlePartyServices_Branch_8421 ; 871E 4C 21 84                 L!.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8721:
        ldy     $6E0C                           ; 8721 AC 0C 6E                 ..n
        lda     SavePartyCharacter1,y           ; 8724 B9 6A 61                 .ja
        and     #$7F                            ; 8727 29 7F                    ).
        cmp     #$05                            ; 8729 C9 05                    ..
        bcc     BattlePartyServices_Entry_8717  ; 872B 90 EA                    ..
        rts                                     ; 872D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_872E:
        jsr     BattlePartyServices_Entry_87D7  ; 872E 20 D7 87                  ..
        bcc     BattlePartyServices_Branch_8739 ; 8731 90 06                    ..
        jsr     BattlePartyServices_Entry_874E  ; 8733 20 4E 87                  N.
        jmp     BattlePartyServices_Branch_8741 ; 8736 4C 41 87                 LA.
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8739:
        ldy     #$0C                            ; 8739 A0 0C                    ..
        lda     ($79),y                         ; 873B B1 79                    .y
        tax                                     ; 873D AA                       .
        iny                                     ; 873E C8                       .
        lda     ($79),y                         ; 873F B1 79                    .y
BattlePartyServices_Branch_8741:
        ldy     #$02                            ; 8741 A0 02                    ..
        sta     ($79),y                         ; 8743 91 79                    .y
        sta     $01                             ; 8745 85 01                    ..
        dey                                     ; 8747 88                       .
        txa                                     ; 8748 8A                       .
        sta     ($79),y                         ; 8749 91 79                    .y
        sta     $00                           ; 874B 85 00                    ..
        rts                                     ; 874D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_874E:
        lda     #$01                            ; 874E A9 01                    ..
        jsr     BattlePartyServices_Entry_870C  ; 8750 20 0C 87                  ..
        sta     $72                             ; 8753 85 72                    .r
        ldy     #$0F                            ; 8755 A0 0F                    ..
        ldx     #$02                            ; 8757 A2 02                    ..
        lda     #$18                            ; 8759 A9 18                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; 875B 20 EA C3                  ..
        and     #$03                            ; 875E 29 03                    ).
        ldx     $72                             ; 8760 A6 72                    .r
        rts                                     ; 8762 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8763:
        jsr     BattlePartyServices_Entry_87D7  ; 8763 20 D7 87                  ..
        bcc     BattlePartyServices_Branch_876E ; 8766 90 06                    ..
        jsr     BattlePartyServices_Entry_877F  ; 8768 20 7F 87                  ..
        jmp     BattlePartyServices_Branch_8776 ; 876B 4C 76 87                 Lv.
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_876E:
        ldy     #$0E                            ; 876E A0 0E                    ..
        lda     ($79),y                         ; 8770 B1 79                    .y
        tax                                     ; 8772 AA                       .
        iny                                     ; 8773 C8                       .
        lda     ($79),y                         ; 8774 B1 79                    .y
BattlePartyServices_Branch_8776:
        ldy     #$04                            ; 8776 A0 04                    ..
        sta     ($79),y                         ; 8778 91 79                    .y
        dey                                     ; 877A 88                       .
        txa                                     ; 877B 8A                       .
        sta     ($79),y                         ; 877C 91 79                    .y
        rts                                     ; 877E 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_877F:
        lda     #$08                            ; 877F A9 08                    ..
        jsr     BattlePartyServices_Entry_870C  ; 8781 20 0C 87                  ..
        tax                                     ; 8784 AA                       .
        lda     #$00                            ; 8785 A9 00                    ..
        rts                                     ; 8787 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8788:
        jsr     BattlePartyServices_Entry_872E  ; 8788 20 2E 87                  ..
        lsr     $01                             ; 878B 46 01                    F.
        ror     $00                           ; 878D 66 00                    f.
        ldy     #$01                            ; 878F A0 01                    ..
        lda     $00                           ; 8791 A5 00                    ..
        sta     ($79),y                         ; 8793 91 79                    .y
        iny                                     ; 8795 C8                       .
        lda     $01                             ; 8796 A5 01                    ..
        sta     ($79),y                         ; 8798 91 79                    .y
        rts                                     ; 879A 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_879B:
        lda     $76                             ; 879B A5 76                    .v
        sta     $615B                           ; 879D 8D 5B 61                 .[a
        rts                                     ; 87A0 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_87A1:
        ldy     #$03                            ; 87A1 A0 03                    ..
        sec                                     ; 87A3 38                       8
        lda     ($79),y                         ; 87A4 B1 79                    .y
        sbc     $76                             ; 87A6 E5 76                    .v
        iny                                     ; 87A8 C8                       .
        lda     ($79),y                         ; 87A9 B1 79                    .y
        sbc     #$00                            ; 87AB E9 00                    ..
        rts                                     ; 87AD 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_87AE:
        ldy     $6E0E                           ; 87AE AC 0E 6E                 ..n
        lda     #$00                            ; 87B1 A9 00                    ..
        sta     ($79),y                         ; 87B3 91 79                    .y
        iny                                     ; 87B5 C8                       .
        sta     ($79),y                         ; 87B6 91 79                    .y
        rts                                     ; 87B8 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_87B9:
        jsr     BattlePartyServices_Entry_87D7  ; 87B9 20 D7 87                  ..
        bcc     BattlePartyServices_Branch_87C1 ; 87BC 90 03                    ..
        jsr     BattlePartyServices_Entry_86D5  ; 87BE 20 D5 86                  ..
BattlePartyServices_Branch_87C1:
        lda     $76                             ; 87C1 A5 76                    .v
        ldx     #$72                            ; 87C3 A2 72                    .r
        jsr     UpperFixedEngine_Entry_C851     ; 87C5 20 51 C8                  Q.
        lda     $72                             ; 87C8 A5 72                    .r
        ldy     #$01                            ; 87CA A0 01                    ..
        sec                                     ; 87CC 38                       8
        lda     ($79),y                         ; 87CD B1 79                    .y
        sbc     $72                             ; 87CF E5 72                    .r
        iny                                     ; 87D1 C8                       .
        lda     ($79),y                         ; 87D2 B1 79                    .y
        sbc     $73                             ; 87D4 E5 73                    .s
        rts                                     ; 87D6 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_87D7:
        pha                                     ; 87D7 48                       H
        tya                                     ; 87D8 98                       .
        pha                                     ; 87D9 48                       H
        ldy     $6E0C                           ; 87DA AC 0C 6E                 ..n
        lda     SavePartyCharacter1,y           ; 87DD B9 6A 61                 .ja
        and     #$7F                            ; 87E0 29 7F                    ).
        cmp     #$09                            ; 87E2 C9 09                    ..
        pla                                     ; 87E4 68                       h
        tay                                     ; 87E5 A8                       .
        pla                                     ; 87E6 68                       h
        rts                                     ; 87E7 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_87E8:
        jsr     BattlePartyServices_Entry_8387  ; 87E8 20 87 83                  ..
        bcs     BattlePartyServices_Branch_87FE ; 87EB B0 11                    ..
        and     #$07                            ; 87ED 29 07                    ).
        beq     BattlePartyServices_Branch_880D ; 87EF F0 1C                    ..
        tax                                     ; 87F1 AA                       .
        lda     #$46                            ; 87F2 A9 46                    .F
BattlePartyServices_Branch_87F4:
        lsr     a                               ; 87F4 4A                       J
        dex                                     ; 87F5 CA                       .
        bne     BattlePartyServices_Branch_87F4 ; 87F6 D0 FC                    ..
        lda     #$00                            ; 87F8 A9 00                    ..
        rol     a                               ; 87FA 2A                       *
        sta     $72                             ; 87FB 85 72                    .r
        rts                                     ; 87FD 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_87FE:
        lda     #$00                            ; 87FE A9 00                    ..
        sta     $72                             ; 8800 85 72                    .r
        ldy     #$05                            ; 8802 A0 05                    ..
        lda     ($79),y                         ; 8804 B1 79                    .y
        cmp     #$CB                            ; 8806 C9 CB                    ..
        bne     BattlePartyServices_Branch_880C ; 8808 D0 02                    ..
        inc     $72                             ; 880A E6 72                    .r
BattlePartyServices_Branch_880C:
        rts                                     ; 880C 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_880D:
        lda     SaveHeroGender                  ; 880D AD 5C 61                 .\a
        and     #$01                            ; 8810 29 01                    ).
        sta     $72                             ; 8812 85 72                    .r
        rts                                     ; 8814 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8815:
        jsr     BattlePartyServices_Entry_8387  ; 8815 20 87 83                  ..
        bcs     BattlePartyServices_Branch_881F ; 8818 B0 05                    ..
        and     #$07                            ; 881A 29 07                    ).
        sta     $72                             ; 881C 85 72                    .r
        rts                                     ; 881E 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_881F:
        ldy     #$05                            ; 881F A0 05                    ..
        lda     ($79),y                         ; 8821 B1 79                    .y
        cmp     #$C5                            ; 8823 C9 C5                    ..
        bcc     BattlePartyServices_Branch_882C ; 8825 90 05                    ..
        sbc     #$BD                            ; 8827 E9 BD                    ..
        sta     $72                             ; 8829 85 72                    .r
        rts                                     ; 882B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_882C:
        adc     #$20                            ; 882C 69 20                    i
        sta     $72                             ; 882E 85 72                    .r
        rts                                     ; 8830 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8831:
        jsr     BattlePartyServices_Entry_8387  ; 8831 20 87 83                  ..
        bcs     BattlePartyServices_Branch_881F ; 8834 B0 E9                    ..
        and     #$0F                            ; 8836 29 0F                    ).
        sta     $72                             ; 8838 85 72                    .r
        rts                                     ; 883A 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_883B:
        jsr     BattlePartyServices_Entry_8AD7  ; 883B 20 D7 8A                  ..
        stx     $75                             ; 883E 86 75                    .u
        ldx     $76                             ; 8840 A6 76                    .v
        cpx     #$08                            ; 8842 E0 08                    ..
        bcs     BattlePartyServices_Branch_886A ; 8844 B0 24                    .$
        cpx     $75                             ; 8846 E4 75                    .u
        bcs     BattlePartyServices_Branch_8859 ; 8848 B0 0F                    ..
        ldy     #$13                            ; 884A A0 13                    ..
BattlePartyServices_Branch_884C:
        jsr     BattlePartyServices_Entry_8A97  ; 884C 20 97 8A                  ..
        beq     BattlePartyServices_Branch_8854 ; 884F F0 03                    ..
        dex                                     ; 8851 CA                       .
        bmi     BattlePartyServices_Branch_885B ; 8852 30 07                    0.
BattlePartyServices_Branch_8854:
        iny                                     ; 8854 C8                       .
        cpy     #$1B                            ; 8855 C0 1B                    ..
        bcc     BattlePartyServices_Branch_884C ; 8857 90 F3                    ..
BattlePartyServices_Branch_8859:
        clc                                     ; 8859 18                       .
        rts                                     ; 885A 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_885B:
        jsr     BattlePartyServices_Entry_87D7  ; 885B 20 D7 87                  ..
        bcs     BattlePartyServices_Branch_886D ; 885E B0 0D                    ..
        lda     ($79),y                         ; 8860 B1 79                    .y
BattlePartyServices_Branch_8862:
        sta     $73                             ; 8862 85 73                    .s
        and     #$7F                            ; 8864 29 7F                    ).
        sta     $72                             ; 8866 85 72                    .r
        sec                                     ; 8868 38                       8
        rts                                     ; 8869 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_886A:
        jmp     BattlePartyServices_Entry_81B9  ; 886A 4C B9 81                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_886D:
        jsr     BattlePartyServices_Entry_8AA6  ; 886D 20 A6 8A                  ..
        jmp     BattlePartyServices_Branch_8862 ; 8870 4C 62 88                 Lb.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8873:
        jsr     BattlePartyServices_Entry_8AD7  ; 8873 20 D7 8A                  ..
        stx     $72                             ; 8876 86 72                    .r
        rts                                     ; 8878 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8879:
        ldy     #$13                            ; 8879 A0 13                    ..
BattlePartyServices_Branch_887B:
        jsr     BattlePartyServices_Entry_8A97  ; 887B 20 97 8A                  ..
        beq     BattlePartyServices_Branch_8887 ; 887E F0 07                    ..
        iny                                     ; 8880 C8                       .
        cpy     #$1B                            ; 8881 C0 1B                    ..
        bcc     BattlePartyServices_Branch_887B ; 8883 90 F6                    ..
        clc                                     ; 8885 18                       .
        rts                                     ; 8886 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8887:
        lda     $76                             ; 8887 A5 76                    .v
        sta     ($79),y                         ; 8889 91 79                    .y
        sec                                     ; 888B 38                       8
        rts                                     ; 888C 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_888D:
        jsr     BattlePartyServices_Entry_883B  ; 888D 20 3B 88                  ;.
        bcc     BattlePartyServices_Branch_88B7 ; 8890 90 25                    .%
        lda     $72                             ; 8892 A5 72                    .r
        jsr     BattlePartyServices_Entry_8B63  ; 8894 20 63 8B                  c.
        bcs     BattlePartyServices_Branch_88B7 ; 8897 B0 1E                    ..
        jsr     BattlePartyServices_Entry_8B68  ; 8899 20 68 8B                  h.
        bcs     BattlePartyServices_Branch_88B7 ; 889C B0 19                    ..
BattlePartyServices_Branch_889E:
        clc                                     ; 889E 18                       .
        lda     $76                             ; 889F A5 76                    .v
        adc     #$13                            ; 88A1 69 13                    i.
        tay                                     ; 88A3 A8                       .
BattlePartyServices_Entry_88A4:
        iny                                     ; 88A4 C8                       .
        lda     ($79),y                         ; 88A5 B1 79                    .y
        dey                                     ; 88A7 88                       .
        sta     ($79),y                         ; 88A8 91 79                    .y
        iny                                     ; 88AA C8                       .
        cpy     #$1B                            ; 88AB C0 1B                    ..
        bcc     BattlePartyServices_Entry_88A4  ; 88AD 90 F5                    ..
        lda     #$FF                            ; 88AF A9 FF                    ..
        ldy     #$1A                            ; 88B1 A0 1A                    ..
        sta     ($79),y                         ; 88B3 91 79                    .y
        sec                                     ; 88B5 38                       8
        rts                                     ; 88B6 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_88B7:
        clc                                     ; 88B7 18                       .
        rts                                     ; 88B8 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_88B9:
        jsr     BattlePartyServices_Entry_883B  ; 88B9 20 3B 88                  ;.
        bcs     BattlePartyServices_Branch_889E ; 88BC B0 E0                    ..
        rts                                     ; 88BE 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_88BF:
        lda     #$FF                            ; 88BF A9 FF                    ..
        sta     $08                             ; 88C1 85 08                    ..
        lda     $76                             ; 88C3 A5 76                    .v
        and     #$7F                            ; 88C5 29 7F                    ).
        sta     $07                             ; 88C7 85 07                    ..
        ldy     #$13                            ; 88C9 A0 13                    ..
BattlePartyServices_Branch_88CB:
        lda     ($79),y                         ; 88CB B1 79                    .y
        cmp     $76                             ; 88CD C5 76                    .v
        beq     BattlePartyServices_Branch_88DF ; 88CF F0 0E                    ..
        and     #$7F                            ; 88D1 29 7F                    ).
        cmp     $07                             ; 88D3 C5 07                    ..
        bne     BattlePartyServices_Branch_88E3 ; 88D5 D0 0C                    ..
        lda     $08                             ; 88D7 A5 08                    ..
        cmp     #$FF                            ; 88D9 C9 FF                    ..
        bne     BattlePartyServices_Branch_88E3 ; 88DB D0 06                    ..
        lda     ($79),y                         ; 88DD B1 79                    .y
BattlePartyServices_Branch_88DF:
        sta     $08                             ; 88DF 85 08                    ..
        sty     $09                             ; 88E1 84 09                    ..
BattlePartyServices_Branch_88E3:
        iny                                     ; 88E3 C8                       .
        cpy     #$1B                            ; 88E4 C0 1B                    ..
        bcc     BattlePartyServices_Branch_88CB ; 88E6 90 E3                    ..
        lda     $08                             ; 88E8 A5 08                    ..
        cmp     #$FF                            ; 88EA C9 FF                    ..
        beq     BattlePartyServices_Branch_8903 ; 88EC F0 15                    ..
        sta     $73                             ; 88EE 85 73                    .s
        ldx     #$00                            ; 88F0 A2 00                    ..
        ldy     #$13                            ; 88F2 A0 13                    ..
BattlePartyServices_Branch_88F4:
        jsr     BattlePartyServices_Entry_8A97  ; 88F4 20 97 8A                  ..
        beq     BattlePartyServices_Branch_88FE ; 88F7 F0 05                    ..
        cpy     $09                             ; 88F9 C4 09                    ..
        beq     BattlePartyServices_Branch_8905 ; 88FB F0 08                    ..
        inx                                     ; 88FD E8                       .
BattlePartyServices_Branch_88FE:
        iny                                     ; 88FE C8                       .
        cpy     #$1B                            ; 88FF C0 1B                    ..
        bcc     BattlePartyServices_Branch_88F4 ; 8901 90 F1                    ..
BattlePartyServices_Branch_8903:
        clc                                     ; 8903 18                       .
        rts                                     ; 8904 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8905:
        stx     $72                             ; 8905 86 72                    .r
        sec                                     ; 8907 38                       8
        rts                                     ; 8908 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8909:
        jmp     BattlePartyServices_Entry_81B9  ; 8909 4C B9 81                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_890C:
        jsr     BattlePartyServices_Entry_883B  ; 890C 20 3B 88                  ;.
        bcc     BattlePartyServices_Branch_8909 ; 890F 90 F8                    ..
        jsr     BattlePartyServices_Entry_8AE7  ; 8911 20 E7 8A                  ..
        stx     $07                             ; 8914 86 07                    ..
        cpx     #$04                            ; 8916 E0 04                    ..
        bcs     BattlePartyServices_Branch_8934 ; 8918 B0 1A                    ..
        lda     $76                             ; 891A A5 76                    .v
        pha                                     ; 891C 48                       H
        tya                                     ; 891D 98                       .
        pha                                     ; 891E 48                       H
        lda     $07                             ; 891F A5 07                    ..
        sta     $76                             ; 8921 85 76                    .v
        jsr     BattlePartyServices_Entry_8A25  ; 8923 20 25 8A                  %.
        pla                                     ; 8926 68                       h
        tay                                     ; 8927 A8                       .
        pla                                     ; 8928 68                       h
        sta     $76                             ; 8929 85 76                    .v
        bcc     BattlePartyServices_Branch_8934 ; 892B 90 07                    ..
        lda     $72                             ; 892D A5 72                    .r
        jsr     BattlePartyServices_Entry_8B59  ; 892F 20 59 8B                  Y.
        bcs     BattlePartyServices_Branch_89A4 ; 8932 B0 70                    .p
BattlePartyServices_Branch_8934:
        jsr     BattlePartyServices_Entry_8387  ; 8934 20 87 83                  ..
        and     #$07                            ; 8937 29 07                    ).
        tax                                     ; 8939 AA                       .
        lda     ($79),y                         ; 893A B1 79                    .y
        jsr     BattlePartyServices_Entry_8B04  ; 893C 20 04 8B                  ..
        bcc     BattlePartyServices_Branch_8960 ; 893F 90 1F                    ..
        jsr     BattlePartyServices_Entry_8AE7  ; 8941 20 E7 8A                  ..
        jsr     BattlePartyServices_Entry_89AA  ; 8944 20 AA 89                  ..
        ora     #$80                            ; 8947 09 80                    ..
        sta     ($79),y                         ; 8949 91 79                    .y
        jsr     BattlePartyServices_Entry_8B59  ; 894B 20 59 8B                  Y.
        bcc     BattlePartyServices_Branch_8958 ; 894E 90 08                    ..
        lda     $72                             ; 8950 A5 72                    .r
        and     #$7F                            ; 8952 29 7F                    ).
        sta     $72                             ; 8954 85 72                    .r
        sec                                     ; 8956 38                       8
        rts                                     ; 8957 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8958:
        lda     $72                             ; 8958 A5 72                    .r
        ora     #$80                            ; 895A 09 80                    ..
        sta     $72                             ; 895C 85 72                    .r
        sec                                     ; 895E 38                       8
        rts                                     ; 895F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8960:
        ora     #$80                            ; 8960 09 80                    ..
        sta     $72                             ; 8962 85 72                    .r
        clc                                     ; 8964 18                       .
        rts                                     ; 8965 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8966:
        lda     #$00                            ; 8966 A9 00                    ..
        beq     BattlePartyServices_Branch_8974 ; 8968 F0 0A                    ..
BattlePartyServices_Entry_896A:
        lda     #$01                            ; 896A A9 01                    ..
        bne     BattlePartyServices_Branch_8974 ; 896C D0 06                    ..
BattlePartyServices_Entry_896E:
        lda     #$02                            ; 896E A9 02                    ..
        bne     BattlePartyServices_Branch_8974 ; 8970 D0 02                    ..
BattlePartyServices_Entry_8972:
        lda     #$03                            ; 8972 A9 03                    ..
BattlePartyServices_Branch_8974:
        sta     $07                             ; 8974 85 07                    ..
        lda     $76                             ; 8976 A5 76                    .v
        pha                                     ; 8978 48                       H
        lda     $07                             ; 8979 A5 07                    ..
        sta     $76                             ; 897B 85 76                    .v
        jsr     BattlePartyServices_Entry_8A25  ; 897D 20 25 8A                  %.
        pla                                     ; 8980 68                       h
        sta     $76                             ; 8981 85 76                    .v
        lda     $72                             ; 8983 A5 72                    .r
        bcc     BattlePartyServices_Branch_898C ; 8985 90 05                    ..
        jsr     BattlePartyServices_Entry_8B59  ; 8987 20 59 8B                  Y.
        bcs     BattlePartyServices_Branch_89A4 ; 898A B0 18                    ..
BattlePartyServices_Branch_898C:
        jsr     BattlePartyServices_Entry_8A5D  ; 898C 20 5D 8A                  ].
        bcs     BattlePartyServices_Branch_899C ; 898F B0 0B                    ..
        ldx     $07                             ; 8991 A6 07                    ..
        jsr     BattlePartyServices_Entry_89AA  ; 8993 20 AA 89                  ..
        sec                                     ; 8996 38                       8
        lda     #$80                            ; 8997 A9 80                    ..
        sta     $72                             ; 8999 85 72                    .r
        rts                                     ; 899B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_899C:
        jsr     BattlePartyServices_Entry_8A97  ; 899C 20 97 8A                  ..
        sta     $72                             ; 899F 85 72                    .r
        jmp     BattlePartyServices_Branch_8934 ; 89A1 4C 34 89                 L4.
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_89A4:
        and     #$7F                            ; 89A4 29 7F                    ).
        sta     $72                             ; 89A6 85 72                    .r
        clc                                     ; 89A8 18                       .
        rts                                     ; 89A9 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_89AA:
        pha                                     ; 89AA 48                       H
        tya                                     ; 89AB 98                       .
        pha                                     ; 89AC 48                       H
        cpx     #$04                            ; 89AD E0 04                    ..
        bcs     BattlePartyServices_Branch_89C7 ; 89AF B0 16                    ..
        stx     $07                             ; 89B1 86 07                    ..
        ldy     #$13                            ; 89B3 A0 13                    ..
BattlePartyServices_Branch_89B5:
        lda     ($79),y                         ; 89B5 B1 79                    .y
        jsr     BattlePartyServices_Entry_8AE7  ; 89B7 20 E7 8A                  ..
        cpx     $07                             ; 89BA E4 07                    ..
        bne     BattlePartyServices_Branch_89C2 ; 89BC D0 04                    ..
        and     #$7F                            ; 89BE 29 7F                    ).
        sta     ($79),y                         ; 89C0 91 79                    .y
BattlePartyServices_Branch_89C2:
        iny                                     ; 89C2 C8                       .
        cpy     #$1B                            ; 89C3 C0 1B                    ..
        bcc     BattlePartyServices_Branch_89B5 ; 89C5 90 EE                    ..
BattlePartyServices_Branch_89C7:
        ldx     $07                             ; 89C7 A6 07                    ..
        pla                                     ; 89C9 68                       h
        tay                                     ; 89CA A8                       .
        pla                                     ; 89CB 68                       h
        rts                                     ; 89CC 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_89CD:
        lda     #$00                            ; 89CD A9 00                    ..
        beq     BattlePartyServices_Branch_89DB ; 89CF F0 0A                    ..
BattlePartyServices_Entry_89D1:
        lda     #$01                            ; 89D1 A9 01                    ..
        bne     BattlePartyServices_Branch_89DB ; 89D3 D0 06                    ..
BattlePartyServices_Entry_89D5:
        lda     #$02                            ; 89D5 A9 02                    ..
        bne     BattlePartyServices_Branch_89DB ; 89D7 D0 02                    ..
BattlePartyServices_Entry_89D9:
        lda     #$03                            ; 89D9 A9 03                    ..
BattlePartyServices_Branch_89DB:
        sta     $07                             ; 89DB 85 07                    ..
        lda     #$00                            ; 89DD A9 00                    ..
        sta     $08                             ; 89DF 85 08                    ..
        jsr     BattlePartyServices_Entry_87D7  ; 89E1 20 D7 87                  ..
        bcs     BattlePartyServices_Branch_8A05 ; 89E4 B0 1F                    ..
        ldy     #$13                            ; 89E6 A0 13                    ..
BattlePartyServices_Branch_89E8:
        jsr     BattlePartyServices_Entry_8A97  ; 89E8 20 97 8A                  ..
        jsr     BattlePartyServices_Entry_8AE7  ; 89EB 20 E7 8A                  ..
        cpx     $07                             ; 89EE E4 07                    ..
        bne     BattlePartyServices_Branch_89F4 ; 89F0 D0 02                    ..
        inc     $08                             ; 89F2 E6 08                    ..
BattlePartyServices_Branch_89F4:
        iny                                     ; 89F4 C8                       .
        cpy     #$1B                            ; 89F5 C0 1B                    ..
        bcc     BattlePartyServices_Branch_89E8 ; 89F7 90 EF                    ..
        lda     $08                             ; 89F9 A5 08                    ..
        sta     $75                             ; 89FB 85 75                    .u
        jsr     BattlePartyServices_Entry_8A5D  ; 89FD 20 5D 8A                  ].
        lda     ($79),y                         ; 8A00 B1 79                    .y
        sta     $72                             ; 8A02 85 72                    .r
        rts                                     ; 8A04 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8A05:
        ldy     #$00                            ; 8A05 A0 00                    ..
BattlePartyServices_Branch_8A07:
        jsr     BattlePartyServices_Entry_8A9E  ; 8A07 20 9E 8A                  ..
        jsr     BattlePartyServices_Entry_8AE7  ; 8A0A 20 E7 8A                  ..
        cpx     $07                             ; 8A0D E4 07                    ..
        bne     BattlePartyServices_Branch_8A13 ; 8A0F D0 02                    ..
        inc     $08                             ; 8A11 E6 08                    ..
BattlePartyServices_Branch_8A13:
        iny                                     ; 8A13 C8                       .
        cpy     #$08                            ; 8A14 C0 08                    ..
        bcc     BattlePartyServices_Branch_8A07 ; 8A16 90 EF                    ..
        lda     $08                             ; 8A18 A5 08                    ..
        sta     $75                             ; 8A1A 85 75                    .u
        jsr     BattlePartyServices_Entry_8A7A  ; 8A1C 20 7A 8A                  z.
        jsr     BattlePartyServices_Entry_8AA6  ; 8A1F 20 A6 8A                  ..
        sta     $72                             ; 8A22 85 72                    .r
        rts                                     ; 8A24 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8A25:
        jsr     BattlePartyServices_Entry_87D7  ; 8A25 20 D7 87                  ..
        bcs     BattlePartyServices_Branch_8A42 ; 8A28 B0 18                    ..
        ldy     #$13                            ; 8A2A A0 13                    ..
BattlePartyServices_Branch_8A2C:
        lda     ($79),y                         ; 8A2C B1 79                    .y
        bpl     BattlePartyServices_Branch_8A37 ; 8A2E 10 07                    ..
        jsr     BattlePartyServices_Entry_8AE7  ; 8A30 20 E7 8A                  ..
        cpx     $76                             ; 8A33 E4 76                    .v
        beq     BattlePartyServices_Branch_8A3E ; 8A35 F0 07                    ..
BattlePartyServices_Branch_8A37:
        iny                                     ; 8A37 C8                       .
        cpy     #$1B                            ; 8A38 C0 1B                    ..
        bcc     BattlePartyServices_Branch_8A2C ; 8A3A 90 F0                    ..
        clc                                     ; 8A3C 18                       .
        rts                                     ; 8A3D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8A3E:
        sta     $72                             ; 8A3E 85 72                    .r
        sec                                     ; 8A40 38                       8
        rts                                     ; 8A41 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8A42:
        ldy     #$00                            ; 8A42 A0 00                    ..
BattlePartyServices_Branch_8A44:
        jsr     BattlePartyServices_Entry_8AA6  ; 8A44 20 A6 8A                  ..
        and     #$FF                            ; 8A47 29 FF                    ).
        bpl     BattlePartyServices_Branch_8A52 ; 8A49 10 07                    ..
        jsr     BattlePartyServices_Entry_8AE7  ; 8A4B 20 E7 8A                  ..
        cpx     $76                             ; 8A4E E4 76                    .v
        beq     BattlePartyServices_Branch_8A59 ; 8A50 F0 07                    ..
BattlePartyServices_Branch_8A52:
        iny                                     ; 8A52 C8                       .
        cpy     #$08                            ; 8A53 C0 08                    ..
        bcc     BattlePartyServices_Branch_8A44 ; 8A55 90 ED                    ..
        clc                                     ; 8A57 18                       .
        rts                                     ; 8A58 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8A59:
        sta     $72                             ; 8A59 85 72                    .r
        sec                                     ; 8A5B 38                       8
        rts                                     ; 8A5C 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8A5D:
        ldx     $76                             ; 8A5D A6 76                    .v
        ldy     #$13                            ; 8A5F A0 13                    ..
BattlePartyServices_Branch_8A61:
        jsr     BattlePartyServices_Entry_8A97  ; 8A61 20 97 8A                  ..
        beq     BattlePartyServices_Branch_8A71 ; 8A64 F0 0B                    ..
        jsr     BattlePartyServices_Entry_8AE7  ; 8A66 20 E7 8A                  ..
        cpx     $07                             ; 8A69 E4 07                    ..
        bne     BattlePartyServices_Branch_8A71 ; 8A6B D0 04                    ..
        dec     $76                             ; 8A6D C6 76                    .v
        bmi     BattlePartyServices_Branch_8A78 ; 8A6F 30 07                    0.
BattlePartyServices_Branch_8A71:
        iny                                     ; 8A71 C8                       .
        cpy     #$1B                            ; 8A72 C0 1B                    ..
        bcc     BattlePartyServices_Branch_8A61 ; 8A74 90 EB                    ..
        clc                                     ; 8A76 18                       .
        rts                                     ; 8A77 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8A78:
        sec                                     ; 8A78 38                       8
        rts                                     ; 8A79 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8A7A:
        ldx     $76                             ; 8A7A A6 76                    .v
        ldy     #$00                            ; 8A7C A0 00                    ..
BattlePartyServices_Branch_8A7E:
        jsr     BattlePartyServices_Entry_8A9E  ; 8A7E 20 9E 8A                  ..
        beq     BattlePartyServices_Branch_8A8E ; 8A81 F0 0B                    ..
        jsr     BattlePartyServices_Entry_8AE7  ; 8A83 20 E7 8A                  ..
        cpx     $07                             ; 8A86 E4 07                    ..
        bne     BattlePartyServices_Branch_8A8E ; 8A88 D0 04                    ..
        dec     $76                             ; 8A8A C6 76                    .v
        bmi     BattlePartyServices_Branch_8A95 ; 8A8C 30 07                    0.
BattlePartyServices_Branch_8A8E:
        iny                                     ; 8A8E C8                       .
        cpy     #$08                            ; 8A8F C0 08                    ..
        bcc     BattlePartyServices_Branch_8A7E ; 8A91 90 EB                    ..
        clc                                     ; 8A93 18                       .
        rts                                     ; 8A94 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8A95:
        sec                                     ; 8A95 38                       8
        rts                                     ; 8A96 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8A97:
        lda     ($79),y                         ; 8A97 B1 79                    .y
        and     #$7F                            ; 8A99 29 7F                    ).
        cmp     #$7F                            ; 8A9B C9 7F                    ..
        rts                                     ; 8A9D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8A9E:
        jsr     BattlePartyServices_Entry_8AA6  ; 8A9E 20 A6 8A                  ..
        and     #$7F                            ; 8AA1 29 7F                    ).
        cmp     #$7F                            ; 8AA3 C9 7F                    ..
        rts                                     ; 8AA5 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8AA6:
        tya                                     ; 8AA6 98                       .
        pha                                     ; 8AA7 48                       H
        txa                                     ; 8AA8 8A                       .
        pha                                     ; 8AA9 48                       H
        ldy     #$05                            ; 8AAA A0 05                    ..
        lda     ($79),y                         ; 8AAC B1 79                    .y
        sec                                     ; 8AAE 38                       8
        sbc     #$C5                            ; 8AAF E9 C5                    ..
        sta     $17                             ; 8AB1 85 17                    ..
        lda     #$00                            ; 8AB3 A9 00                    ..
        sta     $18                             ; 8AB5 85 18                    ..
        asl     $17                             ; 8AB7 06 17                    ..
        rol     $18                             ; 8AB9 26 18                    &.
        asl     $17                             ; 8ABB 06 17                    ..
        rol     $18                             ; 8ABD 26 18                    &.
        asl     $17                             ; 8ABF 06 17                    ..
        rol     $18                             ; 8AC1 26 18                    &.
        lda     $8AD5                           ; 8AC3 AD D5 8A                 ...
        ldy     $8AD6                           ; 8AC6 AC D6 8A                 ...
        ldx     #$17                            ; 8AC9 A2 17                    ..
        jsr     AddWordToPointer                ; 8ACB 20 1D C8                  ..
        pla                                     ; 8ACE 68                       h
        tax                                     ; 8ACF AA                       .
        pla                                     ; 8AD0 68                       h
        tay                                     ; 8AD1 A8                       .
        lda     ($17),y                         ; 8AD2 B1 17                    ..
        rts                                     ; 8AD4 60                       `
; ----------------------------------------------------------------------------
        db   $F5                             ; 8AD5 F5                       .
        db   $9F                             ; 8AD6 9F                       .
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8AD7:
        ldx     #$00                            ; 8AD7 A2 00                    ..
        ldy     #$13                            ; 8AD9 A0 13                    ..
BattlePartyServices_Branch_8ADB:
        jsr     BattlePartyServices_Entry_8A97  ; 8ADB 20 97 8A                  ..
        beq     BattlePartyServices_Branch_8AE1 ; 8ADE F0 01                    ..
        inx                                     ; 8AE0 E8                       .
BattlePartyServices_Branch_8AE1:
        iny                                     ; 8AE1 C8                       .
        cpy     #$1B                            ; 8AE2 C0 1B                    ..
        bne     BattlePartyServices_Branch_8ADB ; 8AE4 D0 F5                    ..
        rts                                     ; 8AE6 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8AE7:
        pha                                     ; 8AE7 48                       H
        and     #$7F                            ; 8AE8 29 7F                    ).
        cmp     #$7F                            ; 8AEA C9 7F                    ..
        beq     BattlePartyServices_Branch_8AFC ; 8AEC F0 0E                    ..
        ldx     #$00                            ; 8AEE A2 00                    ..
BattlePartyServices_Branch_8AF0:
        cmp     $8B00,x                         ; 8AF0 DD 00 8B                 ...
        bcc     BattlePartyServices_Branch_8AFA ; 8AF3 90 05                    ..
        inx                                     ; 8AF5 E8                       .
        cpx     #$04                            ; 8AF6 E0 04                    ..
        bne     BattlePartyServices_Branch_8AF0 ; 8AF8 D0 F6                    ..
BattlePartyServices_Branch_8AFA:
        pla                                     ; 8AFA 68                       h
        rts                                     ; 8AFB 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8AFC:
        ldx     #$05                            ; 8AFC A2 05                    ..
        pla                                     ; 8AFE 68                       h
        rts                                     ; 8AFF 60                       `
; ----------------------------------------------------------------------------
        db   $24,$3D,$46,$50                 ; 8B00 24 3D 46 50              $=FP
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8B04:
        sta     $6E0F                           ; 8B04 8D 0F 6E                 ..n
        pha                                     ; 8B07 48                       H
        txa                                     ; 8B08 8A                       .
        pha                                     ; 8B09 48                       H
        cmp     #$08                            ; 8B0A C9 08                    ..
        bcs     BattlePartyServices_Branch_8B54 ; 8B0C B0 46                    .F
        lda     $6E0F                           ; 8B0E AD 0F 6E                 ..n
        and     #$7F                            ; 8B11 29 7F                    ).
        cmp     #$53                            ; 8B13 C9 53                    .S
        bcs     BattlePartyServices_Branch_8B54 ; 8B15 B0 3D                    .=
        cmp     #$30                            ; 8B17 C9 30                    .0
        beq     BattlePartyServices_Branch_8B27 ; 8B19 F0 0C                    ..
        cmp     #$31                            ; 8B1B C9 31                    .1
        beq     BattlePartyServices_Branch_8B27 ; 8B1D F0 08                    ..
        cmp     #$3B                            ; 8B1F C9 3B                    .;
        beq     BattlePartyServices_Branch_8B27 ; 8B21 F0 04                    ..
        cmp     #$4D                            ; 8B23 C9 4D                    .M
        bne     BattlePartyServices_Branch_8B3D ; 8B25 D0 16                    ..
BattlePartyServices_Branch_8B27:
        cpx     #$02                            ; 8B27 E0 02                    ..
        beq     BattlePartyServices_Branch_8B3D ; 8B29 F0 12                    ..
        cpx     #$03                            ; 8B2B E0 03                    ..
        beq     BattlePartyServices_Branch_8B3D ; 8B2D F0 0E                    ..
        cpx     #$07                            ; 8B2F E0 07                    ..
        beq     BattlePartyServices_Branch_8B3D ; 8B31 F0 0A                    ..
        cpx     #$00                            ; 8B33 E0 00                    ..
        bne     BattlePartyServices_Branch_8B54 ; 8B35 D0 1D                    ..
        lda     SaveHeroGender                  ; 8B37 AD 5C 61                 .\a
        lsr     a                               ; 8B3A 4A                       J
        bcc     BattlePartyServices_Branch_8B54 ; 8B3B 90 17                    ..
BattlePartyServices_Branch_8B3D:
        tax                                     ; 8B3D AA                       .
        lda     $8C65,x                         ; 8B3E BD 65 8C                 .e.
        sta     $6E0F                           ; 8B41 8D 0F 6E                 ..n
        pla                                     ; 8B44 68                       h
        tax                                     ; 8B45 AA                       .
        pha                                     ; 8B46 48                       H
        jsr     BattlePartyServices_Entry_8490  ; 8B47 20 90 84                  ..
        and     $6E0F                           ; 8B4A 2D 0F 6E                 -.n
        jsr     BattlePartyServices_Entry_8C58  ; 8B4D 20 58 8C                  X.
        pla                                     ; 8B50 68                       h
        tax                                     ; 8B51 AA                       .
        pla                                     ; 8B52 68                       h
        rts                                     ; 8B53 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8B54:
        pla                                     ; 8B54 68                       h
        tax                                     ; 8B55 AA                       .
        pla                                     ; 8B56 68                       h
        clc                                     ; 8B57 18                       .
        rts                                     ; 8B58 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8B59:
        jsr     BattlePartyServices_Entry_8C18  ; 8B59 20 18 8C                  ..
        db   $01                             ; 8B5C 01                       .
; ----------------------------------------------------------------------------
        rts                                     ; 8B5D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8B5E:
        jsr     BattlePartyServices_Entry_8C18  ; 8B5E 20 18 8C                  ..
        db   $00                             ; 8B61 00                       .
; ----------------------------------------------------------------------------
        rts                                     ; 8B62 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8B63:
        jsr     BattlePartyServices_Entry_8C18  ; 8B63 20 18 8C                  ..
        db   $02                             ; 8B66 02                       .
; ----------------------------------------------------------------------------
        rts                                     ; 8B67 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8B68:
        jsr     BattlePartyServices_Entry_8C18  ; 8B68 20 18 8C                  ..
        db   $03                             ; 8B6B 03                       .
; ----------------------------------------------------------------------------
        rts                                     ; 8B6C 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8B6D:
        jsr     BattlePartyServices_Entry_8C18  ; 8B6D 20 18 8C                  ..
        db   $04                             ; 8B70 04                       .
; ----------------------------------------------------------------------------
        rts                                     ; 8B71 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8B72:
        jsr     BattlePartyServices_Entry_8C18  ; 8B72 20 18 8C                  ..
        db   $05                             ; 8B75 05                       .
; ----------------------------------------------------------------------------
        rts                                     ; 8B76 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8B77:
        sta     $6E0F                           ; 8B77 8D 0F 6E                 ..n
        pha                                     ; 8B7A 48                       H
        txa                                     ; 8B7B 8A                       .
        pha                                     ; 8B7C 48                       H
        jsr     BattlePartyServices_Entry_8C5E  ; 8B7D 20 5E 8C                  ^.
        lda     $8D63,x                         ; 8B80 BD 63 8D                 .c.
        and     #$40                            ; 8B83 29 40                    )@
        jsr     BattlePartyServices_Entry_8C58  ; 8B85 20 58 8C                  X.
        pla                                     ; 8B88 68                       h
        tax                                     ; 8B89 AA                       .
        pla                                     ; 8B8A 68                       h
        rts                                     ; 8B8B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8B8C:
        sta     $6E0F                           ; 8B8C 8D 0F 6E                 ..n
        pha                                     ; 8B8F 48                       H
        txa                                     ; 8B90 8A                       .
        pha                                     ; 8B91 48                       H
        jsr     BattlePartyServices_Entry_8C5E  ; 8B92 20 5E 8C                  ^.
        lda     $8D63,x                         ; 8B95 BD 63 8D                 .c.
        and     #$80                            ; 8B98 29 80                    ).
        jsr     BattlePartyServices_Entry_8C58  ; 8B9A 20 58 8C                  X.
        pla                                     ; 8B9D 68                       h
        tax                                     ; 8B9E AA                       .
        pla                                     ; 8B9F 68                       h
        rts                                     ; 8BA0 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8BA1:
        sta     $6E0F                           ; 8BA1 8D 0F 6E                 ..n
        pha                                     ; 8BA4 48                       H
        txa                                     ; 8BA5 8A                       .
        pha                                     ; 8BA6 48                       H
        jsr     BattlePartyServices_Entry_8C5E  ; 8BA7 20 5E 8C                  ^.
        lda     $8DE2,x                         ; 8BAA BD E2 8D                 ...
        and     #$80                            ; 8BAD 29 80                    ).
        jsr     BattlePartyServices_Entry_8C58  ; 8BAF 20 58 8C                  X.
        pla                                     ; 8BB2 68                       h
        tax                                     ; 8BB3 AA                       .
        pla                                     ; 8BB4 68                       h
        rts                                     ; 8BB5 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8BB6:
        stx     $6E0F                           ; 8BB6 8E 0F 6E                 ..n
        pha                                     ; 8BB9 48                       H
        and     #$7F                            ; 8BBA 29 7F                    ).
        pha                                     ; 8BBC 48                       H
        tax                                     ; 8BBD AA                       .
        lda     $8CE4,x                         ; 8BBE BD E4 8C                 ...
        and     #$03                            ; 8BC1 29 03                    ).
        tay                                     ; 8BC3 A8                       .
        ldx     $6E0F                           ; 8BC4 AE 0F 6E                 ..n
        lda     #$01                            ; 8BC7 A9 01                    ..
        sta     $00,x                         ; 8BC9 95 00                    ..
        lda     #$00                            ; 8BCB A9 00                    ..
        sta     $01,x                           ; 8BCD 95 01                    ..
        sta     $02,x                           ; 8BCF 95 02                    ..
        tya                                     ; 8BD1 98                       .
        beq     BattlePartyServices_Branch_8BDC ; 8BD2 F0 08                    ..
BattlePartyServices_Branch_8BD4:
        lda     #$0A                            ; 8BD4 A9 0A                    ..
        jsr     MultiplyPointerWord             ; 8BD6 20 27 C8                  '.
        dey                                     ; 8BD9 88                       .
        bne     BattlePartyServices_Branch_8BD4 ; 8BDA D0 F8                    ..
BattlePartyServices_Branch_8BDC:
        pla                                     ; 8BDC 68                       h
        tax                                     ; 8BDD AA                       .
        lda     $8DE2,x                         ; 8BDE BD E2 8D                 ...
        and     #$7F                            ; 8BE1 29 7F                    ).
        ldx     $6E0F                           ; 8BE3 AE 0F 6E                 ..n
        jsr     BattlePartyServices_Entry_A035  ; 8BE6 20 35 A0                  5.
        pla                                     ; 8BE9 68                       h
        ldx     $6E0F                           ; 8BEA AE 0F 6E                 ..n
        rts                                     ; 8BED 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8BEE:
        sta     $6E0F                           ; 8BEE 8D 0F 6E                 ..n
        txa                                     ; 8BF1 8A                       .
        pha                                     ; 8BF2 48                       H
        jsr     BattlePartyServices_Entry_8C5E  ; 8BF3 20 5E 8C                  ^.
        lda     $8D63,x                         ; 8BF6 BD 63 8D                 .c.
        and     #$3F                            ; 8BF9 29 3F                    )?
        sta     $6E0F                           ; 8BFB 8D 0F 6E                 ..n
        pla                                     ; 8BFE 68                       h
        tax                                     ; 8BFF AA                       .
        lda     $6E0F                           ; 8C00 AD 0F 6E                 ..n
        rts                                     ; 8C03 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8C04:
        sta     $6E0F                           ; 8C04 8D 0F 6E                 ..n
        txa                                     ; 8C07 8A                       .
        pha                                     ; 8C08 48                       H
        jsr     BattlePartyServices_Entry_8C5E  ; 8C09 20 5E 8C                  ^.
        lda     $9DE0,x                         ; 8C0C BD E0 9D                 ...
        sta     $6E0F                           ; 8C0F 8D 0F 6E                 ..n
        pla                                     ; 8C12 68                       h
        tax                                     ; 8C13 AA                       .
        lda     $6E0F                           ; 8C14 AD 0F 6E                 ..n
        rts                                     ; 8C17 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8C18:
        sta     $6E0F                           ; 8C18 8D 0F 6E                 ..n
        txa                                     ; 8C1B 8A                       .
        pha                                     ; 8C1C 48                       H
        lda     $00                           ; 8C1D A5 00                    ..
        pha                                     ; 8C1F 48                       H
        lda     $01                             ; 8C20 A5 01                    ..
        pha                                     ; 8C22 48                       H
        tsx                                     ; 8C23 BA                       .
        inc     $0104,x                         ; 8C24 FE 04 01                 ...
        bne     BattlePartyServices_Branch_8C2C ; 8C27 D0 03                    ..
        inc     $0105,x                         ; 8C29 FE 05 01                 ...
BattlePartyServices_Branch_8C2C:
        lda     $0104,x                         ; 8C2C BD 04 01                 ...
        sta     $00                           ; 8C2F 85 00                    ..
        lda     $0105,x                         ; 8C31 BD 05 01                 ...
        sta     $01                             ; 8C34 85 01                    ..
        ldx     #$00                            ; 8C36 A2 00                    ..
        lda     ($00,x)                       ; 8C38 A1 00                    ..
        clc                                     ; 8C3A 18                       .
        adc     #$02                            ; 8C3B 69 02                    i.
        tax                                     ; 8C3D AA                       .
        jsr     BattlePartyServices_Entry_8490  ; 8C3E 20 90 84                  ..
        pha                                     ; 8C41 48                       H
        jsr     BattlePartyServices_Entry_8C5E  ; 8C42 20 5E 8C                  ^.
        pla                                     ; 8C45 68                       h
        and     $8CE4,x                         ; 8C46 3D E4 8C                 =..
        jsr     BattlePartyServices_Entry_8C58  ; 8C49 20 58 8C                  X.
        pla                                     ; 8C4C 68                       h
        sta     $01                             ; 8C4D 85 01                    ..
        pla                                     ; 8C4F 68                       h
        sta     $00                           ; 8C50 85 00                    ..
        pla                                     ; 8C52 68                       h
        tax                                     ; 8C53 AA                       .
        lda     $6E0F                           ; 8C54 AD 0F 6E                 ..n
        rts                                     ; 8C57 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8C58:
        beq     BattlePartyServices_Branch_8C5C ; 8C58 F0 02                    ..
        sec                                     ; 8C5A 38                       8
        rts                                     ; 8C5B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8C5C:
        clc                                     ; 8C5C 18                       .
        rts                                     ; 8C5D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8C5E:
        lda     $6E0F                           ; 8C5E AD 0F 6E                 ..n
        and     #$7F                            ; 8C61 29 7F                    ).
        tax                                     ; 8C63 AA                       .
        rts                                     ; 8C64 60                       `
; ----------------------------------------------------------------------------
        db   $7F,$E7,$67,$80,$E7,$63,$41,$41 ; 8C65 7F E7 67 80 E7 63 41 41  ..g..cAA
        db   $04,$EF,$46,$FF,$20,$08,$67,$18 ; 8C6D 04 EF 46 FF 20 08 67 18  ..F. .g.
        db   $1E,$18,$41,$41,$01,$41,$8C,$06 ; 8C75 1E 18 41 41 01 41 8C 06  ..AA.A..
        db   $41,$3C,$80,$41,$63,$1E,$1E,$60 ; 8C7D 41 3C 80 41 63 1E 1E 60  A<.Ac..`
        db   $16,$01,$1E,$61,$FF,$FF,$F3,$E3 ; 8C85 16 01 1E 61 FF FF F3 E3  ...a....
        db   $47,$20,$41,$8D,$88,$67,$67,$EF ; 8C8D 47 20 41 8D 88 67 67 EF  G A..gg.
        db   $8D,$8D,$41,$98,$06,$1C,$1E,$01 ; 8C95 8D 8D 41 98 06 1C 1E 01  ..A.....
        db   $61,$BE,$41,$8D,$41,$77,$77,$67 ; 8C9D 61 BE 41 8D 41 77 77 67  a.A.Awwg
        db   $63,$43,$41,$41,$01,$1E,$FF,$E7 ; 8CA5 63 43 41 41 01 1E FF E7  cCAA....
        db   $63,$41,$8C,$01,$FF,$8D,$1E,$67 ; 8CAD 63 41 8C 01 FF 8D 1E 67  cA.....g
        db   $FF,$FF,$00,$00,$00,$00,$00,$00 ; 8CB5 FF FF 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 8CBD 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 8CC5 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 8CCD 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; 8CD5 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00     ; 8CDD 00 00 00 00 00 00 00     .......
        db   $00,$00,$00,$02,$01,$01,$02,$02 ; 8CE4 00 00 00 02 01 01 02 02  ........
        db   $01,$01,$01,$01,$02,$01,$30,$02 ; 8CEC 01 01 01 01 02 01 30 02  ......0.
        db   $02,$03,$09,$0A,$70,$03,$02,$02 ; 8CF4 02 03 09 0A 70 03 02 02  ....p...
        db   $02,$01,$02,$01,$02,$02,$F0,$09 ; 8CFC 02 01 02 01 02 02 F0 09  ........
        db   $02,$70,$00,$02,$00,$00,$01,$01 ; 8D04 02 70 00 02 00 00 01 01  .p......
        db   $01,$02,$02,$00,$01,$01,$13,$01 ; 8D0C 01 02 02 00 01 01 13 01  ........
        db   $01,$02,$02,$02,$02,$03,$02,$70 ; 8D14 01 02 02 02 02 03 02 70  .......p
        db   $02,$02,$09,$02,$09,$00,$01,$01 ; 8D1C 02 02 09 02 09 00 01 01  ........
        db   $03,$02,$02,$02,$70,$30,$00,$01 ; 8D24 03 02 02 02 70 30 00 01  ....p0..
        db   $01,$02,$01,$70,$08,$01,$00,$70 ; 8D2C 01 02 01 70 08 01 00 70  ...p...p
        db   $70,$01,$F0,$84,$84,$84,$84,$E4 ; 8D34 70 01 F0 84 84 84 84 E4  p.......
        db   $84,$A0,$84,$E4,$F0,$70,$85,$74 ; 8D3C 84 A0 84 E4 F0 70 85 74  .....p.t
        db   $70,$85,$84,$84,$85,$85,$70,$F0 ; 8D44 70 85 84 84 85 85 70 F0  p.....p.
        db   $F0,$30,$B0,$70,$F0,$70,$F0,$70 ; 8D4C F0 30 B0 70 F0 70 F0 70  .0.p.p.p
        db   $F0,$F0,$F0,$F0,$84,$F0,$70,$F0 ; 8D54 F0 F0 F0 F0 84 F0 70 F0  ......p.
        db   $F0,$00,$70,$F0,$F0,$70,$70     ; 8D5C F0 00 70 F0 F0 70 70     ..p..pp
        db   $1B,$1B,$1B,$1B,$1B,$1B,$1B,$1B ; 8D63 1B 1B 1B 1B 1B 1B 1B 1B  ........
        db   $9F,$1B,$1B,$D7,$DB,$1B,$1B,$1F ; 8D6B 9F 1B 1B D7 DB 1B 1B 1F  ........
        db   $1B,$DF,$1B,$1B,$0A,$1B,$1B,$DF ; 8D73 1B DF 1B 1B 0A 1B 1B DF  ........
        db   $DF,$1B,$DF,$DF,$1B,$DF,$9F,$DF ; 8D7B DF 1B DF DF 1B DF 9F DF  ........
        db   $DF,$CA,$DF,$DF,$1B,$1B,$1B,$1B ; 8D83 DF CA DF DF 1B 1B 1B 1B  ........
        db   $1B,$1B,$1B,$1B,$0B,$1B,$1B,$1B ; 8D8B 1B 1B 1B 1B 0B 1B 1B 1B  ........
        db   $1B,$1B,$1B,$1B,$1B,$1B,$1B,$DB ; 8D93 1B 1B 1B 1B 1B 1B 1B DB  ........
        db   $DB,$1B,$1B,$1B,$9B,$1B,$1B,$1B ; 8D9B DB 1B 1B 1B 9B 1B 1B 1B  ........
        db   $9F,$1B,$9F,$1B,$9F,$9F,$1B,$1B ; 8DA3 9F 1B 9F 1B 9F 9F 1B 1B  ........
        db   $1B,$1B,$1B,$1B,$1B,$1B,$1B,$1B ; 8DAB 1B 1B 1B 1B 1B 1B 1B 1B  ........
        db   $9D,$15,$1D,$CD,$CD,$CD,$9D,$DD ; 8DB3 9D 15 1D CD CD CD 9D DD  ........
        db   $DD,$99,$9D,$9D,$19,$DD,$DD,$89 ; 8DBB DD 99 9D 9D 19 DD DD 89  ........
        db   $9D,$8D,$8D,$8D,$8D,$8D,$D9,$15 ; 8DC3 9D 8D 8D 8D 8D 8D D9 15  ........
        db   $0D,$09,$09,$09,$09,$09,$0D,$09 ; 8DCB 0D 09 09 09 09 09 0D 09  ........
        db   $1D,$1D,$1D,$1D,$CD,$09,$19,$08 ; 8DD3 1D 1D 1D 1D CD 09 19 08  ........
        db   $08,$08,$08,$09,$09,$19,$09     ; 8DDB 08 08 08 09 09 19 09     .......
        db   $0A,$1E,$64,$0F,$37,$58,$14,$37 ; 8DE2 0A 1E 64 0F 37 58 14 37  ..d.7X.7
        db   $32,$14,$7D,$A3,$90,$3E,$80,$8D ; 8DEA 32 14 7D A3 90 3E 80 8D  2.}..>..
        db   $19                             ; 8DF2 19                       .
; ----------------------------------------------------------------------------
        sty     $3C,x                           ; 8DF3 94 3C                    .<
        lda     ($80,x)                         ; 8DF5 A1 80                    ..
        db   $8F,$CB,$AB,$D0,$CB,$E4,$D0,$DF ; 8DF7 8F CB AB D0 CB E4 D0 DF  ........
        db   $A8,$80,$94,$BC,$80,$DA,$A3,$0A ; 8DFF A8 80 94 BC 80 DA A3 0A  ........
        db   $46,$12,$23,$78,$0F,$17,$6E,$28 ; 8E07 46 12 23 78 0F 17 6E 28  F.#x..n(
        db   $46,$0F,$3C,$19,$3F,$34,$1E,$2C ; 8E0F 46 0F 3C 19 3F 34 1E 2C  F.<.?4.,
        db   $0F,$4B,$80,$E2,$3C,$57,$58,$64 ; 8E17 0F 4B 80 E2 3C 57 58 64  .K..<WXd
        db   $5A,$12,$41,$0D,$5A,$AF,$47,$00 ; 8E1F 5A 12 41 0D 5A AF 47 00  Z.A.Z.G.
        db   $00,$41,$0C,$6E,$23,$1C,$00,$08 ; 8E27 00 41 0C 6E 23 1C 00 08  .A.n#...
        db   $36,$0F,$00,$00,$64,$00,$08,$0A ; 8E2F 36 0F 00 00 64 00 08 0A  6...d...
        db   $94,$19,$00,$1E,$00,$1E,$00,$00 ; 8E37 94 19 00 1E 00 1E 00 00  ........
        db   $80,$8F,$00,$00,$0C,$5A,$46,$19 ; 8E3F 80 8F 00 00 0C 5A 46 19  .....ZF.
        db   $37,$80,$00,$00,$00,$00,$00,$00 ; 8E47 37 80 00 00 00 00 00 00  7.......
        db   $00,$00,$00,$00,$00,$00,$00,$0A ; 8E4F 00 00 00 00 00 00 00 0A  ........
        db   $00,$00,$00,$00,$02,$00,$00,$00 ; 8E57 00 00 00 00 02 00 00 00  ........
        db   $00,$00,$90,$90,$90,$90,$90,$90 ; 8E5F 00 00 90 90 90 90 90 90  ........
        db   $90,$90,$91,$90,$90,$00,$91,$90 ; 8E67 90 90 91 90 90 00 91 90  ........
        db   $90,$92,$90,$91,$90,$90,$93,$90 ; 8E6F 90 92 90 91 90 90 93 90  ........
        db   $90,$91,$91,$90,$91,$91,$90,$91 ; 8E77 90 91 91 90 91 91 90 91  ........
        db   $91,$91,$91,$01,$91,$91,$90,$90 ; 8E7F 91 91 91 01 91 91 90 90  ........
        db   $90,$90,$90,$90,$90,$90,$95,$90 ; 8E87 90 90 90 90 90 90 95 90  ........
        db   $90,$90,$90,$90,$96,$90,$97,$96 ; 8E8F 90 90 90 90 96 90 97 96  ........
        db   $98,$98,$90,$98,$98,$97,$98,$90 ; 8E97 98 98 90 98 98 97 98 90  ........
        db   $90,$90,$91,$97,$91,$96,$91,$91 ; 8E9F 90 90 91 97 91 96 91 91  ........
        db   $90,$90,$90,$90,$90,$90,$98,$99 ; 8EA7 90 90 90 90 90 90 98 99  ........
        db   $98,$90,$9A,$9B,$98,$9C,$9C,$9D ; 8EAF 98 90 9A 9B 98 9C 9C 9D  ........
        db   $9E,$9F,$A0,$A1,$A1,$A2,$98,$A3 ; 8EB7 9E 9F A0 A1 A1 A2 98 A3  ........
        db   $A4,$02,$A3,$A6,$9A,$9B,$A7,$A8 ; 8EBF A4 02 A3 A6 9A 9B A7 A8  ........
        db   $98,$00,$A9,$A9,$A9,$A9,$A9,$A9 ; 8EC7 98 00 A9 A9 A9 A9 A9 A9  ........
        db   $A9,$A9,$A9,$90,$90,$90,$AA,$9C ; 8ECF A9 A9 A9 90 90 90 AA 9C  ........
        db   $98,$AB,$AB,$AC,$A9,$A9,$A9,$A9 ; 8ED7 98 AB AB AC A9 A9 A9 A9  ........
        db   $9C                             ; 8EDF 9C                       .
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8EE0:
        jsr     BattlePartyServices_Entry_8815  ; 8EE0 20 15 88                  ..
        lda     $72                             ; 8EE3 A5 72                    .r
        cmp     #$08                            ; 8EE5 C9 08                    ..
        bcs     BattlePartyServices_Branch_8F16 ; 8EE7 B0 2D                    .-
        lda     $76                             ; 8EE9 A5 76                    .v
        asl     a                               ; 8EEB 0A                       .
        sta     $07                             ; 8EEC 85 07                    ..
        asl     a                               ; 8EEE 0A                       .
        adc     $07                             ; 8EEF 65 07                    e.
        cmp     #$12                            ; 8EF1 C9 12                    ..
        bcs     BattlePartyServices_Branch_8F20 ; 8EF3 B0 2B                    .+
        ldx     $72                             ; 8EF5 A6 72                    .r
        beq     BattlePartyServices_Branch_8F01 ; 8EF7 F0 08                    ..
        cpx     #$05                            ; 8EF9 E0 05                    ..
        bcs     BattlePartyServices_Branch_8F23 ; 8EFB B0 26                    .&
        cmp     #$0C                            ; 8EFD C9 0C                    ..
        bcs     BattlePartyServices_Branch_8F23 ; 8EFF B0 22                    ."
BattlePartyServices_Branch_8F01:
        tax                                     ; 8F01 AA                       .
        lda     #$06                            ; 8F02 A9 06                    ..
        sta     $07                             ; 8F04 85 07                    ..
        ldy     #$00                            ; 8F06 A0 00                    ..
BattlePartyServices_Branch_8F08:
        jsr     BattlePartyServices_Entry_905A  ; 8F08 20 5A 90                  Z.
        bcc     BattlePartyServices_Branch_8F0E ; 8F0B 90 01                    ..
        iny                                     ; 8F0D C8                       .
BattlePartyServices_Branch_8F0E:
        inx                                     ; 8F0E E8                       .
        dec     $07                             ; 8F0F C6 07                    ..
        bne     BattlePartyServices_Branch_8F08 ; 8F11 D0 F5                    ..
        sty     $72                             ; 8F13 84 72                    .r
        rts                                     ; 8F15 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8F16:
        sec                                     ; 8F16 38                       8
        sbc     #$08                            ; 8F17 E9 08                    ..
        tax                                     ; 8F19 AA                       .
        lda     $8F28,x                         ; 8F1A BD 28 8F                 .(.
        sta     $72                             ; 8F1D 85 72                    .r
        rts                                     ; 8F1F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8F20:
        jmp     BattlePartyServices_Entry_81B9  ; 8F20 4C B9 81                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8F23:
        lda     #$00                            ; 8F23 A9 00                    ..
        sta     $72                             ; 8F25 85 72                    .r
        rts                                     ; 8F27 60                       `
; ----------------------------------------------------------------------------
        db   $01,$00,$03,$00,$00,$01,$03,$00 ; 8F28 01 00 03 00 00 01 03 00  ........
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8F30:
        jsr     BattlePartyServices_Entry_8815  ; 8F30 20 15 88                  ..
        lda     $72                             ; 8F33 A5 72                    .r
        cmp     #$08                            ; 8F35 C9 08                    ..
        bcs     BattlePartyServices_Branch_8F23 ; 8F37 B0 EA                    ..
        cmp     #$05                            ; 8F39 C9 05                    ..
        bcs     BattlePartyServices_Branch_8F23 ; 8F3B B0 E6                    ..
        jsr     BattlePartyServices_Entry_9052  ; 8F3D 20 52 90                  R.
        ldy     #$00                            ; 8F40 A0 00                    ..
BattlePartyServices_Branch_8F42:
        jsr     BattlePartyServices_Entry_905A  ; 8F42 20 5A 90                  Z.
        bcc     BattlePartyServices_Branch_8F48 ; 8F45 90 01                    ..
        iny                                     ; 8F47 C8                       .
BattlePartyServices_Branch_8F48:
        inx                                     ; 8F48 E8                       .
        cpx     #$18                            ; 8F49 E0 18                    ..
        bne     BattlePartyServices_Branch_8F42 ; 8F4B D0 F5                    ..
        ldx     $72                             ; 8F4D A6 72                    .r
        tya                                     ; 8F4F 98                       .
        cmp     $8F74,x                         ; 8F50 DD 74 8F                 .t.
        bcc     BattlePartyServices_Branch_8F59 ; 8F53 90 04                    ..
        lda     $8F74,x                         ; 8F55 BD 74 8F                 .t.
        tay                                     ; 8F58 A8                       .
BattlePartyServices_Branch_8F59:
        sty     $72                             ; 8F59 84 72                    .r
        rts                                     ; 8F5B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8F5C:
        jsr     BattlePartyServices_Entry_8815  ; 8F5C 20 15 88                  ..
        ldx     $72                             ; 8F5F A6 72                    .r
        cpx     #$08                            ; 8F61 E0 08                    ..
        bcs     BattlePartyServices_Branch_8F6F ; 8F63 B0 0A                    ..
        cpx     #$05                            ; 8F65 E0 05                    ..
        bcs     BattlePartyServices_Branch_8F6F ; 8F67 B0 06                    ..
        lda     $8F74,x                         ; 8F69 BD 74 8F                 .t.
        sta     $72                             ; 8F6C 85 72                    .r
        rts                                     ; 8F6E 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8F6F:
        lda     #$00                            ; 8F6F A9 00                    ..
        sta     $72                             ; 8F71 85 72                    .r
        rts                                     ; 8F73 60                       `
; ----------------------------------------------------------------------------
        db   $06,$07,$05,$03,$04             ; 8F74 06 07 05 03 04           .....
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8F79:
        jsr     BattlePartyServices_Entry_8815  ; 8F79 20 15 88                  ..
        cmp     #$08                            ; 8F7C C9 08                    ..
        bcs     BattlePartyServices_Branch_8FB4 ; 8F7E B0 34                    .4
        cmp     #$05                            ; 8F80 C9 05                    ..
        bcs     BattlePartyServices_Branch_8FE0 ; 8F82 B0 5C                    .\
        ldx     #$11                            ; 8F84 A2 11                    ..
        cmp     #$00                            ; 8F86 C9 00                    ..
        beq     BattlePartyServices_Branch_8F8C ; 8F88 F0 02                    ..
        ldx     #$0B                            ; 8F8A A2 0B                    ..
BattlePartyServices_Branch_8F8C:
        cpx     $76                             ; 8F8C E4 76                    .v
        bcc     BattlePartyServices_Branch_8FE2 ; 8F8E 90 52                    .R
        ldx     $76                             ; 8F90 A6 76                    .v
        jsr     BattlePartyServices_Entry_905A  ; 8F92 20 5A 90                  Z.
        bcc     BattlePartyServices_Branch_8FE0 ; 8F95 90 49                    .I
        stx     $08                             ; 8F97 86 08                    ..
        lda     $72                             ; 8F99 A5 72                    .r
        beq     BattlePartyServices_Branch_8FA9 ; 8F9B F0 0C                    ..
        sec                                     ; 8F9D 38                       8
        sbc     #$01                            ; 8F9E E9 01                    ..
        asl     a                               ; 8FA0 0A                       .
        asl     a                               ; 8FA1 0A                       .
        sta     $07                             ; 8FA2 85 07                    ..
        asl     a                               ; 8FA4 0A                       .
        adc     $07                             ; 8FA5 65 07                    e.
        adc     #$12                            ; 8FA7 69 12                    i.
BattlePartyServices_Branch_8FA9:
        clc                                     ; 8FA9 18                       .
        adc     $08                             ; 8FAA 65 08                    e.
        tax                                     ; 8FAC AA                       .
        lda     $9119,x                         ; 8FAD BD 19 91                 ...
        sta     $72                             ; 8FB0 85 72                    .r
        sec                                     ; 8FB2 38                       8
        rts                                     ; 8FB3 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8FB4:
        pha                                     ; 8FB4 48                       H
        jsr     BattlePartyServices_Entry_8EE0  ; 8FB5 20 E0 8E                  ..
        beq     BattlePartyServices_Branch_8FDF ; 8FB8 F0 25                    .%
        lda     $76                             ; 8FBA A5 76                    .v
        cmp     #$03                            ; 8FBC C9 03                    ..
        bcs     BattlePartyServices_Branch_8FDF ; 8FBE B0 1F                    ..
        pla                                     ; 8FC0 68                       h
        sec                                     ; 8FC1 38                       8
        sbc     #$08                            ; 8FC2 E9 08                    ..
        cmp     #$02                            ; 8FC4 C9 02                    ..
        bcc     BattlePartyServices_Branch_8FD0 ; 8FC6 90 08                    ..
        sbc     #$01                            ; 8FC8 E9 01                    ..
        cmp     #$02                            ; 8FCA C9 02                    ..
        bcc     BattlePartyServices_Branch_8FD0 ; 8FCC 90 02                    ..
        sbc     #$02                            ; 8FCE E9 02                    ..
BattlePartyServices_Branch_8FD0:
        asl     a                               ; 8FD0 0A                       .
        asl     a                               ; 8FD1 0A                       .
        clc                                     ; 8FD2 18                       .
        adc     $76                             ; 8FD3 65 76                    ev
        tax                                     ; 8FD5 AA                       .
        lda     $8FE5,x                         ; 8FD6 BD E5 8F                 ...
        beq     BattlePartyServices_Branch_8FE0 ; 8FD9 F0 05                    ..
        sta     $72                             ; 8FDB 85 72                    .r
        sec                                     ; 8FDD 38                       8
        rts                                     ; 8FDE 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8FDF:
        pla                                     ; 8FDF 68                       h
BattlePartyServices_Branch_8FE0:
        clc                                     ; 8FE0 18                       .
        rts                                     ; 8FE1 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_8FE2:
        jmp     BattlePartyServices_Entry_81B9  ; 8FE2 4C B9 81                 L..
; ----------------------------------------------------------------------------
        db   $29,$00,$00,$00,$29,$03,$17,$00 ; 8FE5 29 00 00 00 29 03 17 00  )...)...
        db   $17,$00,$00,$00,$2B,$20,$1A,$00 ; 8FED 17 00 00 00 2B 20 1A 00  ....+ ..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_8FF5:
        jsr     BattlePartyServices_Entry_8815  ; 8FF5 20 15 88                  ..
        sta     $07                             ; 8FF8 85 07                    ..
        cmp     #$08                            ; 8FFA C9 08                    ..
        bcs     BattlePartyServices_Branch_9014 ; 8FFC B0 16                    ..
        cmp     #$05                            ; 8FFE C9 05                    ..
        bcs     BattlePartyServices_Branch_9014 ; 9000 B0 12                    ..
        jsr     BattlePartyServices_Entry_9052  ; 9002 20 52 90                  R.
        ldy     $76                             ; 9005 A4 76                    .v
BattlePartyServices_Branch_9007:
        jsr     BattlePartyServices_Entry_905A  ; 9007 20 5A 90                  Z.
        bcc     BattlePartyServices_Branch_900F ; 900A 90 03                    ..
        dey                                     ; 900C 88                       .
        bmi     BattlePartyServices_Branch_9016 ; 900D 30 07                    0.
BattlePartyServices_Branch_900F:
        inx                                     ; 900F E8                       .
        cpx     #$18                            ; 9010 E0 18                    ..
        bne     BattlePartyServices_Branch_9007 ; 9012 D0 F3                    ..
BattlePartyServices_Branch_9014:
        clc                                     ; 9014 18                       .
        rts                                     ; 9015 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9016:
        lda     $07                             ; 9016 A5 07                    ..
        asl     a                               ; 9018 0A                       .
        asl     a                               ; 9019 0A                       .
        asl     a                               ; 901A 0A                       .
        stx     $07                             ; 901B 86 07                    ..
        adc     $07                             ; 901D 65 07                    e.
        tax                                     ; 901F AA                       .
        lda     $914B,x                         ; 9020 BD 4B 91                 .K.
        cmp     #$FF                            ; 9023 C9 FF                    ..
        beq     BattlePartyServices_Branch_9014 ; 9025 F0 ED                    ..
        sta     $72                             ; 9027 85 72                    .r
        sec                                     ; 9029 38                       8
        rts                                     ; 902A 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_902B:
        lda     $76                             ; 902B A5 76                    .v
        cmp     #$08                            ; 902D C9 08                    ..
        bcs     BattlePartyServices_Branch_904F ; 902F B0 1E                    ..
        jsr     BattlePartyServices_Entry_8815  ; 9031 20 15 88                  ..
        sta     $07                             ; 9034 85 07                    ..
        lda     $72                             ; 9036 A5 72                    .r
        cmp     #$08                            ; 9038 C9 08                    ..
        bcs     BattlePartyServices_Branch_904D ; 903A B0 11                    ..
        cmp     #$05                            ; 903C C9 05                    ..
        bcs     BattlePartyServices_Branch_904D ; 903E B0 0D                    ..
        jsr     BattlePartyServices_Entry_9052  ; 9040 20 52 90                  R.
        txa                                     ; 9043 8A                       .
        clc                                     ; 9044 18                       .
        adc     $76                             ; 9045 65 76                    ev
        tax                                     ; 9047 AA                       .
        jsr     BattlePartyServices_Entry_905A  ; 9048 20 5A 90                  Z.
        bcs     BattlePartyServices_Branch_9016 ; 904B B0 C9                    ..
BattlePartyServices_Branch_904D:
        clc                                     ; 904D 18                       .
        rts                                     ; 904E 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_904F:
        jmp     BattlePartyServices_Entry_81B9  ; 904F 4C B9 81                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9052:
        ldx     #$10                            ; 9052 A2 10                    ..
        tay                                     ; 9054 A8                       .
        bne     BattlePartyServices_Branch_9059 ; 9055 D0 02                    ..
        ldx     #$12                            ; 9057 A2 12                    ..
BattlePartyServices_Branch_9059:
        rts                                     ; 9059 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_905A:
        txa                                     ; 905A 8A                       .
        pha                                     ; 905B 48                       H
        tya                                     ; 905C 98                       .
        pha                                     ; 905D 48                       H
        txa                                     ; 905E 8A                       .
        lsr     a                               ; 905F 4A                       J
        lsr     a                               ; 9060 4A                       J
        lsr     a                               ; 9061 4A                       J
        clc                                     ; 9062 18                       .
        adc     #$1B                            ; 9063 69 1B                    i.
        tay                                     ; 9065 A8                       .
        txa                                     ; 9066 8A                       .
        and     #$07                            ; 9067 29 07                    ).
        tax                                     ; 9069 AA                       .
        jsr     BattlePartyServices_Entry_8490  ; 906A 20 90 84                  ..
        and     ($79),y                         ; 906D 31 79                    1y
        sec                                     ; 906F 38                       8
        bne     BattlePartyServices_Branch_9073 ; 9070 D0 01                    ..
        clc                                     ; 9072 18                       .
BattlePartyServices_Branch_9073:
        pla                                     ; 9073 68                       h
        tay                                     ; 9074 A8                       .
        pla                                     ; 9075 68                       h
        tax                                     ; 9076 AA                       .
        rts                                     ; 9077 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9078:
        lda     #$00                            ; 9078 A9 00                    ..
        ldy     #$12                            ; 907A A0 12                    ..
        ldx     $72                             ; 907C A6 72                    .r
        beq     BattlePartyServices_Branch_908A ; 907E F0 0A                    ..
        ldy     #$0C                            ; 9080 A0 0C                    ..
        lda     #$06                            ; 9082 A9 06                    ..
BattlePartyServices_Branch_9084:
        clc                                     ; 9084 18                       .
        adc     #$0C                            ; 9085 69 0C                    i.
        dex                                     ; 9087 CA                       .
        bne     BattlePartyServices_Branch_9084 ; 9088 D0 FA                    ..
BattlePartyServices_Branch_908A:
        pha                                     ; 908A 48                       H
        tax                                     ; 908B AA                       .
        lda     $77                             ; 908C A5 77                    .w
BattlePartyServices_Branch_908E:
        cmp     $9119,x                         ; 908E DD 19 91                 ...
        beq     BattlePartyServices_Branch_909A ; 9091 F0 07                    ..
        inx                                     ; 9093 E8                       .
        dey                                     ; 9094 88                       .
        bne     BattlePartyServices_Branch_908E ; 9095 D0 F7                    ..
        pla                                     ; 9097 68                       h
        clc                                     ; 9098 18                       .
        rts                                     ; 9099 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_909A:
        txa                                     ; 909A 8A                       .
        sec                                     ; 909B 38                       8
        tsx                                     ; 909C BA                       .
        sbc     $0101,x                         ; 909D FD 01 01                 ...
        tax                                     ; 90A0 AA                       .
        pla                                     ; 90A1 68                       h
        sec                                     ; 90A2 38                       8
        rts                                     ; 90A3 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_90A4:
        lda     #$00                            ; 90A4 A9 00                    ..
        ldy     #$08                            ; 90A6 A0 08                    ..
        ldx     $72                             ; 90A8 A6 72                    .r
        beq     BattlePartyServices_Branch_90B2 ; 90AA F0 06                    ..
BattlePartyServices_Branch_90AC:
        clc                                     ; 90AC 18                       .
        adc     #$08                            ; 90AD 69 08                    i.
        dex                                     ; 90AF CA                       .
        bne     BattlePartyServices_Branch_90AC ; 90B0 D0 FA                    ..
BattlePartyServices_Branch_90B2:
        pha                                     ; 90B2 48                       H
        tax                                     ; 90B3 AA                       .
        lda     $77                             ; 90B4 A5 77                    .w
BattlePartyServices_Branch_90B6:
        cmp     $915B,x                         ; 90B6 DD 5B 91                 .[.
        beq     BattlePartyServices_Branch_90C2 ; 90B9 F0 07                    ..
        inx                                     ; 90BB E8                       .
        dey                                     ; 90BC 88                       .
        bne     BattlePartyServices_Branch_90B6 ; 90BD D0 F7                    ..
        pla                                     ; 90BF 68                       h
        clc                                     ; 90C0 18                       .
        rts                                     ; 90C1 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_90C2:
        txa                                     ; 90C2 8A                       .
        clc                                     ; 90C3 18                       .
        adc     #$10                            ; 90C4 69 10                    i.
        ldx     $72                             ; 90C6 A6 72                    .r
        bne     BattlePartyServices_Branch_90CA ; 90C8 D0 00                    ..
BattlePartyServices_Branch_90CA:
        sec                                     ; 90CA 38                       8
        tsx                                     ; 90CB BA                       .
        sbc     $0101,x                         ; 90CC FD 01 01                 ...
        tax                                     ; 90CF AA                       .
        pla                                     ; 90D0 68                       h
        sec                                     ; 90D1 38                       8
        rts                                     ; 90D2 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_90D3:
        jsr     BattlePartyServices_Entry_8815  ; 90D3 20 15 88                  ..
        jsr     BattlePartyServices_Entry_9078  ; 90D6 20 78 90                  x.
        bcc     BattlePartyServices_Branch_90E0 ; 90D9 90 05                    ..
        jsr     BattlePartyServices_Entry_905A  ; 90DB 20 5A 90                  Z.
        bcs     BattlePartyServices_Branch_90E8 ; 90DE B0 08                    ..
BattlePartyServices_Branch_90E0:
        jsr     BattlePartyServices_Entry_90A4  ; 90E0 20 A4 90                  ..
        bcc     BattlePartyServices_Branch_90E8 ; 90E3 90 03                    ..
        jsr     BattlePartyServices_Entry_905A  ; 90E5 20 5A 90                  Z.
BattlePartyServices_Branch_90E8:
        rts                                     ; 90E8 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_90E9:
        jsr     BattlePartyServices_Entry_8815  ; 90E9 20 15 88                  ..
BattlePartyServices_Entry_90EC:
        jsr     BattlePartyServices_Entry_9078  ; 90EC 20 78 90                  x.
        bcc     BattlePartyServices_Branch_90F4 ; 90EF 90 03                    ..
        jsr     BattlePartyServices_Entry_90FD  ; 90F1 20 FD 90                  ..
BattlePartyServices_Branch_90F4:
        jsr     BattlePartyServices_Entry_90A4  ; 90F4 20 A4 90                  ..
        bcc     BattlePartyServices_Branch_90FC ; 90F7 90 03                    ..
        jsr     BattlePartyServices_Entry_90FD  ; 90F9 20 FD 90                  ..
BattlePartyServices_Branch_90FC:
        rts                                     ; 90FC 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_90FD:
        txa                                     ; 90FD 8A                       .
        pha                                     ; 90FE 48                       H
        tya                                     ; 90FF 98                       .
        pha                                     ; 9100 48                       H
        txa                                     ; 9101 8A                       .
        lsr     a                               ; 9102 4A                       J
        lsr     a                               ; 9103 4A                       J
        lsr     a                               ; 9104 4A                       J
        clc                                     ; 9105 18                       .
        adc     #$1B                            ; 9106 69 1B                    i.
        tay                                     ; 9108 A8                       .
        txa                                     ; 9109 8A                       .
        and     #$07                            ; 910A 29 07                    ).
        tax                                     ; 910C AA                       .
        jsr     BattlePartyServices_Entry_8490  ; 910D 20 90 84                  ..
        ora     ($79),y                         ; 9110 11 79                    .y
        sta     ($79),y                         ; 9112 91 79                    .y
        pla                                     ; 9114 68                       h
        tay                                     ; 9115 A8                       .
        pla                                     ; 9116 68                       h
        tax                                     ; 9117 AA                       .
        rts                                     ; 9118 60                       `
; ----------------------------------------------------------------------------
        db   $16,$2A,$00,$33,$18,$2F,$03,$2B ; 9119 16 2A 00 33 18 2F 03 2B  .*.3./.+
        db   $26,$1D,$10,$27,$07,$2D,$11,$30 ; 9121 26 1D 10 27 07 2D 11 30  &..'.-.0
        db   $12,$34,$21,$29,$1A,$2A,$19,$2B ; 9129 12 34 21 29 1A 2A 19 2B  .4!).*.+
        db   $22,$2C,$13,$30,$14,$31,$0D,$29 ; 9131 22 2C 13 30 14 31 0D 29  ",.0.1.)
        db   $17,$2A,$2E,$2B,$0E,$24,$18,$30 ; 9139 17 2A 2E 2B 0E 24 18 30  .*.+.$.0
        db   $0F,$32,$00,$1F,$03,$1C,$06,$28 ; 9141 0F 32 00 1F 03 1C 06 28  .2.....(
        db   $01,$02                         ; 9149 01 02                    ..
        db   $04,$05,$07,$08,$09,$1F,$0A,$1E ; 914B 04 05 07 08 09 1F 0A 1E  ........
        db   $0B,$33,$1C,$20,$1B,$23,$0C,$25 ; 9153 0B 33 1C 20 1B 23 0C 25  .3. .#.%
        db   $FF,$FF,$33,$2A,$3B,$35,$2B,$30 ; 915B FF FF 33 2A 3B 35 2B 30  ..3*;5+0
        db   $29,$3A,$2A,$30,$2B,$2C,$31,$FF ; 9163 29 3A 2A 30 2B 2C 31 FF  ):*0+,1.
        db   $29,$2E,$2A,$30,$2B,$FF,$FF,$FF ; 916B 29 2E 2A 30 2B FF FF FF  ).*0+...
        db   $33,$35,$37,$FF,$FF,$FF,$FF,$FF ; 9173 33 35 37 FF FF FF FF FF  357.....
        db   $33,$35,$38,$36,$FF,$FF,$FF,$FF ; 917B 33 35 38 36 FF FF FF FF  3586....
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9183:
        jsr     BattlePartyServices_Entry_91B8  ; 9183 20 B8 91                  ..
        bcc     BattlePartyServices_Branch_91B4 ; 9186 90 2C                    .,
        lda     $0515                           ; 9188 AD 15 05                 ...
        cmp     #$01                            ; 918B C9 01                    ..
        beq     BattlePartyServices_Branch_91B4 ; 918D F0 25                    .%
        lda     SaveGameStateFlags              ; 918F AD 8E 61                 ..a
        and     #$07                            ; 9192 29 07                    ).
        bne     BattlePartyServices_Branch_91B4 ; 9194 D0 1E                    ..
        lda     $07BA                           ; 9196 AD BA 07                 ...
        bmi     BattlePartyServices_Branch_91B4 ; 9199 30 19                    0.
        lda     CurrentMapNumber                ; 919B A5 63                    .c
        sta     $618F                           ; 919D 8D 8F 61                 ..a
        lda     PlayerWorldX                    ; 91A0 A5 42                    .B
        sta     $6191                           ; 91A2 8D 91 61                 ..a
        lda     PlayerWorldY                    ; 91A5 A5 43                    .C
        sta     $6192                           ; 91A7 8D 92 61                 ..a
        lda     SaveGameStateFlags              ; 91AA AD 8E 61                 ..a
        and     #$F8                            ; 91AD 29 F8                    ).
        ora     #$01                            ; 91AF 09 01                    ..
        sta     SaveGameStateFlags              ; 91B1 8D 8E 61                 ..a
BattlePartyServices_Branch_91B4:
        jsr     BattlePartyServices_Entry_958A  ; 91B4 20 8A 95                  ..
        rts                                     ; 91B7 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_91B8:
        lda     SaveGameStateFlags              ; 91B8 AD 8E 61                 ..a
        rol     a                               ; 91BB 2A                       *
        rol     a                               ; 91BC 2A                       *
        rol     a                               ; 91BD 2A                       *
        rts                                     ; 91BE 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_91BF:
        lda     a:$41                           ; 91BF AD 41 00                 .A.
        bpl     BattlePartyServices_Branch_9200 ; 91C2 10 3C                    .<
        jsr     BattlePartyServices_Entry_91B8  ; 91C4 20 B8 91                  ..
        bcc     BattlePartyServices_Branch_9200 ; 91C7 90 37                    .7
        lda     SaveGameStateFlags              ; 91C9 AD 8E 61                 ..a
        and     #$07                            ; 91CC 29 07                    ).
        beq     BattlePartyServices_Branch_9200 ; 91CE F0 30                    .0
        cmp     #$02                            ; 91D0 C9 02                    ..
        bcs     BattlePartyServices_Branch_9200 ; 91D2 B0 2C                    .,
        ldx     #$02                            ; 91D4 A2 02                    ..
        lda     CurrentMapNumber                ; 91D6 A5 63                    .c
BattlePartyServices_Branch_91D8:
        cmp     $9201,x                         ; 91D8 DD 01 92                 ...
        beq     BattlePartyServices_Branch_91E2 ; 91DB F0 05                    ..
        dex                                     ; 91DD CA                       .
        bpl     BattlePartyServices_Branch_91D8 ; 91DE 10 F8                    ..
        bmi     BattlePartyServices_Branch_91E5 ; 91E0 30 03                    0.
BattlePartyServices_Branch_91E2:
        lda     $9204,x                         ; 91E2 BD 04 92                 ...
BattlePartyServices_Branch_91E5:
        cmp     $618F                           ; 91E5 CD 8F 61                 ..a
        bne     BattlePartyServices_Branch_9200 ; 91E8 D0 16                    ..
        lda     PlayerWorldX                    ; 91EA A5 42                    .B
        cmp     $6191                           ; 91EC CD 91 61                 ..a
        bne     BattlePartyServices_Branch_9200 ; 91EF D0 0F                    ..
        lda     PlayerWorldY                    ; 91F1 A5 43                    .C
        cmp     $6192                           ; 91F3 CD 92 61                 ..a
        bne     BattlePartyServices_Branch_9200 ; 91F6 D0 08                    ..
BattlePartyServices_Entry_91F8:
        lda     SaveGameStateFlags              ; 91F8 AD 8E 61                 ..a
        and     #$F8                            ; 91FB 29 F8                    ).
        sta     SaveGameStateFlags              ; 91FD 8D 8E 61                 ..a
BattlePartyServices_Branch_9200:
        rts                                     ; 9200 60                       `
; ----------------------------------------------------------------------------
        db   $2D,$33,$3B                     ; 9201 2D 33 3B                 -3;
        db   $0A,$1C,$25                     ; 9204 0A 1C 25                 ..%
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9207:
        jsr     BattlePartyServices_Entry_91B8  ; 9207 20 B8 91                  ..
        bcc     BattlePartyServices_Branch_9219 ; 920A 90 0D                    ..
        lda     PlayerWorldX                    ; 920C A5 42                    .B
        sta     $6191                           ; 920E 8D 91 61                 ..a
        lda     PlayerWorldY                    ; 9211 A5 43                    .C
        sta     $6192                           ; 9213 8D 92 61                 ..a
        jsr     BattlePartyServices_Entry_91F8  ; 9216 20 F8 91                  ..
BattlePartyServices_Branch_9219:
        rts                                     ; 9219 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_921A:
        jsr     BattlePartyServices_Entry_91B8  ; 921A 20 B8 91                  ..
        bcc     BattlePartyServices_Branch_9235 ; 921D 90 16                    ..
        lda     $0534                           ; 921F AD 34 05                 .4.
        and     #$E0                            ; 9222 29 E0                    ).
        cmp     #$20                            ; 9224 C9 20                    .
        bne     BattlePartyServices_Branch_9235 ; 9226 D0 0D                    ..
        lda     SaveGameStateFlags              ; 9228 AD 8E 61                 ..a
        and     #$07                            ; 922B 29 07                    ).
        cmp     #$01                            ; 922D C9 01                    ..
        beq     BattlePartyServices_Branch_9236 ; 922F F0 05                    ..
        cmp     #$02                            ; 9231 C9 02                    ..
        beq     BattlePartyServices_Branch_9241 ; 9233 F0 0C                    ..
BattlePartyServices_Branch_9235:
        rts                                     ; 9235 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9236:
        lda     $41                             ; 9236 A5 41                    .A
        bpl     BattlePartyServices_Branch_9235 ; 9238 10 FB                    ..
        lda     $6193                           ; 923A AD 93 61                 ..a
        cmp     CurrentMapNumber                ; 923D C5 63                    .c
        bne     BattlePartyServices_Branch_9235 ; 923F D0 F4                    ..
BattlePartyServices_Branch_9241:
        lda     SaveGameStateFlags              ; 9241 AD 8E 61                 ..a
        and     #$FC                            ; 9244 29 FC                    ).
        sta     SaveGameStateFlags              ; 9246 8D 8E 61                 ..a
        rts                                     ; 9249 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_924A:
        jsr     BattlePartyServices_Entry_91B8  ; 924A 20 B8 91                  ..
        bcc     BattlePartyServices_Branch_9263 ; 924D 90 14                    ..
        lda     $0534                           ; 924F AD 34 05                 .4.
        and     #$E0                            ; 9252 29 E0                    ).
        cmp     #$20                            ; 9254 C9 20                    .
        bne     BattlePartyServices_Branch_9263 ; 9256 D0 0B                    ..
        lda     $41                             ; 9258 A5 41                    .A
        bpl     BattlePartyServices_Branch_9263 ; 925A 10 07                    ..
        lda     SaveGameStateFlags              ; 925C AD 8E 61                 ..a
        and     #$07                            ; 925F 29 07                    ).
        beq     BattlePartyServices_Branch_9264 ; 9261 F0 01                    ..
BattlePartyServices_Branch_9263:
        rts                                     ; 9263 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9264:
        lda     CurrentMapNumber                ; 9264 A5 63                    .c
        cmp     #$35                            ; 9266 C9 35                    .5
        beq     BattlePartyServices_Branch_9274 ; 9268 F0 0A                    ..
        lda     SaveGameStateFlags              ; 926A AD 8E 61                 ..a
        and     #$F8                            ; 926D 29 F8                    ).
        ora     #$02                            ; 926F 09 02                    ..
        sta     SaveGameStateFlags              ; 9271 8D 8E 61                 ..a
BattlePartyServices_Branch_9274:
        lda     CurrentMapNumber                ; 9274 A5 63                    .c
        sta     $6193                           ; 9276 8D 93 61                 ..a
        lda     CurrentSubmapNumber             ; 9279 A5 64                    .d
        sta     $6194                           ; 927B 8D 94 61                 ..a
        lda     PlayerWorldX                    ; 927E A5 42                    .B
        sta     $6191                           ; 9280 8D 91 61                 ..a
        lda     PlayerWorldY                    ; 9283 A5 43                    .C
        sta     $6192                           ; 9285 8D 92 61                 ..a
        rts                                     ; 9288 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9289:
        jsr     BattlePartyServices_Entry_91B8  ; 9289 20 B8 91                  ..
        bcc     BattlePartyServices_Branch_929B ; 928C 90 0D                    ..
        lda     SaveGameStateFlags              ; 928E AD 8E 61                 ..a
        and     #$07                            ; 9291 29 07                    ).
        cmp     #$01                            ; 9293 C9 01                    ..
        beq     BattlePartyServices_Branch_929C ; 9295 F0 05                    ..
        cmp     #$03                            ; 9297 C9 03                    ..
        beq     BattlePartyServices_Branch_92A3 ; 9299 F0 08                    ..
BattlePartyServices_Branch_929B:
        rts                                     ; 929B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_929C:
        lda     CurrentMapNumber                ; 929C A5 63                    .c
        cmp     $6199                           ; 929E CD 99 61                 ..a
        bne     BattlePartyServices_Branch_929B ; 92A1 D0 F8                    ..
BattlePartyServices_Branch_92A3:
        lda     SaveGameStateFlags              ; 92A3 AD 8E 61                 ..a
        and     #$F8                            ; 92A6 29 F8                    ).
        sta     SaveGameStateFlags              ; 92A8 8D 8E 61                 ..a
        rts                                     ; 92AB 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_92AC:
        jsr     BattlePartyServices_Entry_91B8  ; 92AC 20 B8 91                  ..
        lda     $41                             ; 92AF A5 41                    .A
        bpl     BattlePartyServices_Branch_92C4 ; 92B1 10 11                    ..
        lda     SaveGameStateFlags              ; 92B3 AD 8E 61                 ..a
        and     #$07                            ; 92B6 29 07                    ).
        bne     BattlePartyServices_Branch_92C4 ; 92B8 D0 0A                    ..
        lda     SaveGameStateFlags              ; 92BA AD 8E 61                 ..a
        and     #$F8                            ; 92BD 29 F8                    ).
        ora     #$03                            ; 92BF 09 03                    ..
        sta     SaveGameStateFlags              ; 92C1 8D 8E 61                 ..a
BattlePartyServices_Branch_92C4:
        rts                                     ; 92C4 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_92C5:
        lda     SaveGameStateFlags              ; 92C5 AD 8E 61                 ..a
        ora     #$20                            ; 92C8 09 20                    .
        and     #$F0                            ; 92CA 29 F0                    ).
        sta     SaveGameStateFlags              ; 92CC 8D 8E 61                 ..a
        lda     PlayerWorldX                    ; 92CF A5 42                    .B
        sta     $6191                           ; 92D1 8D 91 61                 ..a
        lda     PlayerWorldY                    ; 92D4 A5 43                    .C
        sta     $6192                           ; 92D6 8D 92 61                 ..a
        lda     CurrentMapNumber                ; 92D9 A5 63                    .c
        sta     $618F                           ; 92DB 8D 8F 61                 ..a
        rts                                     ; 92DE 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_92DF:
        jmp     BattlePartyServices_Entry_8498  ; 92DF 4C 98 84                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_92E2:
        ldx     $6E                             ; 92E2 A6 6E                    .n
        inx                                     ; 92E4 E8                       .
        stx     $6E0C                           ; 92E5 8E 0C 6E                 ..n
        lda     #$00                            ; 92E8 A9 00                    ..
        sta     $72                             ; 92EA 85 72                    .r
        jsr     BattlePartyServices_Entry_8241  ; 92EC 20 41 82                  A.
        jsr     BattlePartyServices_Entry_8278  ; 92EF 20 78 82                  x.
        beq     BattlePartyServices_Branch_92F6 ; 92F2 F0 02                    ..
        inc     $72                             ; 92F4 E6 72                    .r
BattlePartyServices_Branch_92F6:
        rts                                     ; 92F6 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_92F7:
        ldy     $6E0C                           ; 92F7 AC 0C 6E                 ..n
        lda     SavePartyCharacter1,y           ; 92FA B9 6A 61                 .ja
        pha                                     ; 92FD 48                       H
        lda     #$00                            ; 92FE A9 00                    ..
        sta     SavePartyCharacter1,y           ; 9300 99 6A 61                 .ja
        jsr     BattlePartyServices_Entry_9A90  ; 9303 20 90 9A                  ..
        jsr     BattlePartyServices_Entry_9C7C  ; 9306 20 7C 9C                  |.
        pla                                     ; 9309 68                       h
        cmp     #$89                            ; 930A C9 89                    ..
        bcs     BattlePartyServices_Branch_9314 ; 930C B0 06                    ..
        lda     $76                             ; 930E A5 76                    .v
        ldy     #$0B                            ; 9310 A0 0B                    ..
        sta     ($79),y                         ; 9312 91 79                    .y
BattlePartyServices_Branch_9314:
        rts                                     ; 9314 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9315:
        pla                                     ; 9315 68                       h
        sta     $6E0A                           ; 9316 8D 0A 6E                 ..n
        jmp     BattlePartyServices_Entry_81B9  ; 9319 4C B9 81                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_931C:
        lda     $6E0A                           ; 931C AD 0A 6E                 ..n
        pha                                     ; 931F 48                       H
        lda     #$00                            ; 9320 A9 00                    ..
        sta     $6E0A                           ; 9322 8D 0A 6E                 ..n
        jsr     BattlePartyServices_Entry_9849  ; 9325 20 49 98                  I.
        bcs     BattlePartyServices_Branch_9315 ; 9328 B0 EB                    ..
        jsr     BattlePartyServices_Entry_8241  ; 932A 20 41 82                  A.
        tya                                     ; 932D 98                       .
        clc                                     ; 932E 18                       .
        adc     #$04                            ; 932F 69 04                    i.
        sta     $0F                             ; 9331 85 0F                    ..
        lda     #$89                            ; 9333 A9 89                    ..
        sta     $00                           ; 9335 85 00                    ..
        lda     #$FF                            ; 9337 A9 FF                    ..
        sta     $01                             ; 9339 85 01                    ..
BattlePartyServices_Branch_933B:
        lda     SavePartyCharacter1,y           ; 933B B9 6A 61                 .ja
        bmi     BattlePartyServices_Branch_9348 ; 933E 30 08                    0.
        cpy     $01                             ; 9340 C4 01                    ..
        bcs     BattlePartyServices_Branch_9350 ; 9342 B0 0C                    ..
        sty     $01                             ; 9344 84 01                    ..
        bcc     BattlePartyServices_Branch_9350 ; 9346 90 08                    ..
BattlePartyServices_Branch_9348:
        cmp     #$89                            ; 9348 C9 89                    ..
        bne     BattlePartyServices_Branch_9350 ; 934A D0 04                    ..
        lda     #$8A                            ; 934C A9 8A                    ..
        sta     $00                           ; 934E 85 00                    ..
BattlePartyServices_Branch_9350:
        iny                                     ; 9350 C8                       .
        cpy     $0F                             ; 9351 C4 0F                    ..
        bne     BattlePartyServices_Branch_933B ; 9353 D0 E6                    ..
        ldy     #$08                            ; 9355 A0 08                    ..
        bit     SaveGameStateFlags              ; 9357 2C 8E 61                 ,.a
        bvc     BattlePartyServices_Branch_935E ; 935A 50 02                    P.
        ldy     #$12                            ; 935C A0 12                    ..
BattlePartyServices_Branch_935E:
        lda     SaveGameStateFlags              ; 935E AD 8E 61                 ..a
        and     #$20                            ; 9361 29 20                    )
        beq     BattlePartyServices_Branch_9385 ; 9363 F0 20                    .
        tya                                     ; 9365 98                       .
        clc                                     ; 9366 18                       .
        adc     #$0A                            ; 9367 69 0A                    i.
        sta     $0F                             ; 9369 85 0F                    ..
BattlePartyServices_Branch_936B:
        lda     SavePartyCharacter1,y           ; 936B B9 6A 61                 .ja
        bmi     BattlePartyServices_Branch_9378 ; 936E 30 08                    0.
        cpy     $01                             ; 9370 C4 01                    ..
        bcs     BattlePartyServices_Branch_9380 ; 9372 B0 0C                    ..
        sty     $01                             ; 9374 84 01                    ..
        bcc     BattlePartyServices_Branch_9380 ; 9376 90 08                    ..
BattlePartyServices_Branch_9378:
        cmp     #$89                            ; 9378 C9 89                    ..
        bne     BattlePartyServices_Branch_9380 ; 937A D0 04                    ..
        lda     #$8A                            ; 937C A9 8A                    ..
        sta     $00                           ; 937E 85 00                    ..
BattlePartyServices_Branch_9380:
        iny                                     ; 9380 C8                       .
        cpy     $0F                             ; 9381 C4 0F                    ..
        bne     BattlePartyServices_Branch_936B ; 9383 D0 E6                    ..
BattlePartyServices_Branch_9385:
        ldy     $01                             ; 9385 A4 01                    ..
        lda     $6F                             ; 9387 A5 6F                    .o
        cmp     #$08                            ; 9389 C9 08                    ..
        adc     #$00                            ; 938B 69 00                    i.
        cmp     #$09                            ; 938D C9 09                    ..
        bcs     BattlePartyServices_Branch_93DA ; 938F B0 49                    .I
        ora     #$80                            ; 9391 09 80                    ..
        sta     SavePartyCharacter1,y           ; 9393 99 6A 61                 .ja
        sty     $6E0C                           ; 9396 8C 0C 6E                 ..n
        jsr     BattlePartyServices_Entry_8301  ; 9399 20 01 83                  ..
BattlePartyServices_Branch_939C:
        lda     $6E0C                           ; 939C AD 0C 6E                 ..n
        pha                                     ; 939F 48                       H
        jsr     BattlePartyServices_Entry_8498  ; 93A0 20 98 84                  ..
        bcc     BattlePartyServices_Branch_93D1 ; 93A3 90 2C                    .,
        tsx                                     ; 93A5 BA                       .
        txa                                     ; 93A6 8A                       .
        sec                                     ; 93A7 38                       8
        sbc     #$0A                            ; 93A8 E9 0A                    ..
        tax                                     ; 93AA AA                       .
        txs                                     ; 93AB 9A                       .
        inx                                     ; 93AC E8                       .
        stx     $08                             ; 93AD 86 08                    ..
        lda     #$01                            ; 93AF A9 01                    ..
        sta     $09                             ; 93B1 85 09                    ..
        lda     #$80                            ; 93B3 A9 80                    ..
        sta     $6E0A                           ; 93B5 8D 0A 6E                 ..n
        jsr     BattlePartyServices_Entry_9B58  ; 93B8 20 58 9B                  X.
        jsr     BattlePartyServices_Entry_9AE0  ; 93BB 20 E0 9A                  ..
        jsr     BattlePartyServices_Entry_9ACD  ; 93BE 20 CD 9A                  ..
        jsr     BattlePartyServices_Entry_9AC3  ; 93C1 20 C3 9A                  ..
        jsr     BattlePartyServices_Entry_9B15  ; 93C4 20 15 9B                  ..
        jsr     BattlePartyServices_Entry_9A90  ; 93C7 20 90 9A                  ..
        tsx                                     ; 93CA BA                       .
        txa                                     ; 93CB 8A                       .
        clc                                     ; 93CC 18                       .
        adc     #$0A                            ; 93CD 69 0A                    i.
        tax                                     ; 93CF AA                       .
        txs                                     ; 93D0 9A                       .
BattlePartyServices_Branch_93D1:
        pla                                     ; 93D1 68                       h
        sta     $6E0C                           ; 93D2 8D 0C 6E                 ..n
        pla                                     ; 93D5 68                       h
        sta     $6E0A                           ; 93D6 8D 0A 6E                 ..n
        rts                                     ; 93D9 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_93DA:
        ldx     $00                           ; 93DA A6 00                    ..
        cpx     #$88                            ; 93DC E0 88                    ..
        bcs     BattlePartyServices_Branch_93E2 ; 93DE B0 02                    ..
        ldx     #$88                            ; 93E0 A2 88                    ..
BattlePartyServices_Branch_93E2:
        txa                                     ; 93E2 8A                       .
        sta     SavePartyCharacter1,y           ; 93E3 99 6A 61                 .ja
        sty     $6E0C                           ; 93E6 8C 0C 6E                 ..n
        jsr     BattlePartyServices_Entry_8301  ; 93E9 20 01 83                  ..
        ldy     #$05                            ; 93EC A0 05                    ..
        lda     $6F                             ; 93EE A5 6F                    .o
        cmp     #$08                            ; 93F0 C9 08                    ..
        adc     #$00                            ; 93F2 69 00                    i.
        clc                                     ; 93F4 18                       .
        adc     #$BC                            ; 93F5 69 BC                    i.
        sta     ($79),y                         ; 93F7 91 79                    .y
        jsr     BattlePartyServices_Entry_872E  ; 93F9 20 2E 87                  ..
        jsr     BattlePartyServices_Entry_8763  ; 93FC 20 63 87                  c.
        lda     #$07                            ; 93FF A9 07                    ..
        sta     $76                             ; 9401 85 76                    .v
        jsr     BattlePartyServices_Entry_9660  ; 9403 20 60 96                  `.
        jmp     BattlePartyServices_Branch_939C ; 9406 4C 9C 93                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9409:
        lda     SaveGameStateFlags              ; 9409 AD 8E 61                 ..a
        bmi     BattlePartyServices_Branch_9422 ; 940C 30 14                    0.
        ora     #$80                            ; 940E 09 80                    ..
        sta     SaveGameStateFlags              ; 9410 8D 8E 61                 ..a
        ldy     $6E0C                           ; 9413 AC 0C 6E                 ..n
        lda     SavePartyCharacter1,y           ; 9416 B9 6A 61                 .ja
        sta     $616E                           ; 9419 8D 6E 61                 .na
        lda     #$00                            ; 941C A9 00                    ..
        sta     SavePartyCharacter1,y           ; 941E 99 6A 61                 .ja
        rts                                     ; 9421 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9422:
        jmp     BattlePartyServices_Entry_81B9  ; 9422 4C B9 81                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9425:
        rts                                     ; 9425 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9426:
        lda     SaveGameStateFlags              ; 9426 AD 8E 61                 ..a
        bpl     BattlePartyServices_Branch_9425 ; 9429 10 FA                    ..
        lda     $6E0A                           ; 942B AD 0A 6E                 ..n
        pha                                     ; 942E 48                       H
        lda     #$40                            ; 942F A9 40                    .@
        sta     $6E0A                           ; 9431 8D 0A 6E                 ..n
        tsx                                     ; 9434 BA                       .
        txa                                     ; 9435 8A                       .
        sec                                     ; 9436 38                       8
        sbc     #$0A                            ; 9437 E9 0A                    ..
        tax                                     ; 9439 AA                       .
        txs                                     ; 943A 9A                       .
        inx                                     ; 943B E8                       .
        stx     $08                             ; 943C 86 08                    ..
        lda     #$01                            ; 943E A9 01                    ..
        sta     $09                             ; 9440 85 09                    ..
        jsr     BattlePartyServices_Entry_9B58  ; 9442 20 58 9B                  X.
        jsr     BattlePartyServices_Entry_982B  ; 9445 20 2B 98                  +.
        lda     $72                             ; 9448 A5 72                    .r
        sta     $0F                             ; 944A 85 0F                    ..
        tax                                     ; 944C AA                       .
        ldy     #$00                            ; 944D A0 00                    ..
BattlePartyServices_Branch_944F:
        lda     $616E,y                         ; 944F B9 6E 61                 .na
        sta     ($08),y                         ; 9452 91 08                    ..
        lda     #$00                            ; 9454 A9 00                    ..
        sta     $616E,y                         ; 9456 99 6E 61                 .na
        iny                                     ; 9459 C8                       .
        dex                                     ; 945A CA                       .
        bne     BattlePartyServices_Branch_944F ; 945B D0 F2                    ..
        lda     SaveGameStateFlags              ; 945D AD 8E 61                 ..a
        and     #$7F                            ; 9460 29 7F                    ).
        sta     SaveGameStateFlags              ; 9462 8D 8E 61                 ..a
        lda     #$00                            ; 9465 A9 00                    ..
        sta     $6E0A                           ; 9467 8D 0A 6E                 ..n
        jsr     BattlePartyServices_Entry_982B  ; 946A 20 2B 98                  +.
        lda     $72                             ; 946D A5 72                    .r
        clc                                     ; 946F 18                       .
        adc     $0F                             ; 9470 65 0F                    e.
        cmp     #$0B                            ; 9472 C9 0B                    ..
        bcs     BattlePartyServices_Branch_94B0 ; 9474 B0 3A                    .:
        lda     $0F                             ; 9476 A5 0F                    ..
        ldx     #$08                            ; 9478 A2 08                    ..
        jsr     AddByteToPointer                ; 947A 20 13 C8                  ..
        jsr     BattlePartyServices_Entry_9ACD  ; 947D 20 CD 9A                  ..
        jsr     BattlePartyServices_Entry_9AE0  ; 9480 20 E0 9A                  ..
        jsr     BattlePartyServices_Entry_9AC3  ; 9483 20 C3 9A                  ..
        lda     $0F                             ; 9486 A5 0F                    ..
        ldx     #$08                            ; 9488 A2 08                    ..
        jsr     UpperFixedEngine_Entry_C7FB     ; 948A 20 FB C7                  ..
        ldx     #$04                            ; 948D A2 04                    ..
        ldy     #$00                            ; 948F A0 00                    ..
BattlePartyServices_Branch_9491:
        lda     ($08),y                         ; 9491 B1 08                    ..
        sta     SavePartyCharacter1,y           ; 9493 99 6A 61                 .ja
        lda     #$00                            ; 9496 A9 00                    ..
        sta     ($08),y                         ; 9498 91 08                    ..
        iny                                     ; 949A C8                       .
        dex                                     ; 949B CA                       .
        bne     BattlePartyServices_Branch_9491 ; 949C D0 F3                    ..
        jsr     BattlePartyServices_Entry_9B15  ; 949E 20 15 9B                  ..
        jsr     BattlePartyServices_Entry_9A90  ; 94A1 20 90 9A                  ..
        tsx                                     ; 94A4 BA                       .
        txa                                     ; 94A5 8A                       .
        clc                                     ; 94A6 18                       .
        adc     #$0A                            ; 94A7 69 0A                    i.
        tax                                     ; 94A9 AA                       .
        txs                                     ; 94AA 9A                       .
        pla                                     ; 94AB 68                       h
        sta     $6E0A                           ; 94AC 8D 0A 6E                 ..n
        rts                                     ; 94AF 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_94B0:
        ldy     #$03                            ; 94B0 A0 03                    ..
BattlePartyServices_Branch_94B2:
        lda     ($08),y                         ; 94B2 B1 08                    ..
        sta     $616E,y                         ; 94B4 99 6E 61                 .na
        dey                                     ; 94B7 88                       .
        bpl     BattlePartyServices_Branch_94B2 ; 94B8 10 F8                    ..
        lda     SaveGameStateFlags              ; 94BA AD 8E 61                 ..a
        ora     #$80                            ; 94BD 09 80                    ..
        sta     SaveGameStateFlags              ; 94BF 8D 8E 61                 ..a
        tsx                                     ; 94C2 BA                       .
        txa                                     ; 94C3 8A                       .
        clc                                     ; 94C4 18                       .
        adc     #$0A                            ; 94C5 69 0A                    i.
        tax                                     ; 94C7 AA                       .
        txs                                     ; 94C8 9A                       .
        pla                                     ; 94C9 68                       h
        sta     $6E0A                           ; 94CA 8D 0A 6E                 ..n
        jmp     BattlePartyServices_Entry_81B9  ; 94CD 4C B9 81                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_94D0:
        lda     SaveGameStateFlags              ; 94D0 AD 8E 61                 ..a
        rol     a                               ; 94D3 2A                       *
        rol     a                               ; 94D4 2A                       *
        and     #$01                            ; 94D5 29 01                    ).
        sta     $72                             ; 94D7 85 72                    .r
        rts                                     ; 94D9 60                       `
; ----------------------------------------------------------------------------
        db   $65,$61                         ; 94DA 65 61                    ea
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_94DC:
        lda     $C000                           ; 94DC AD 00 C0                 ...
        and     #$10                            ; 94DF 29 10                    ).
        bne     BattlePartyServices_Branch_94EC ; 94E1 D0 09                    ..
        lda     #$42                            ; 94E3 A9 42                    .B
        sta     $75                             ; 94E5 85 75                    .u
        lda     $76                             ; 94E7 A5 76                    .v
        sta     $72                             ; 94E9 85 72                    .r
        rts                                     ; 94EB 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_94EC:
        ldx     #$01                            ; 94EC A2 01                    ..
        stx     $07                             ; 94EE 86 07                    ..
        dex                                     ; 94F0 CA                       .
        stx     $09                             ; 94F1 86 09                    ..
        ldx     $76                             ; 94F3 A6 76                    .v
        inx                                     ; 94F5 E8                       .
        ldy     #$00                            ; 94F6 A0 00                    ..
BattlePartyServices_Branch_94F8:
        lda     $6165,y                         ; 94F8 B9 65 61                 .ea
        and     $07                             ; 94FB 25 07                    %.
        beq     BattlePartyServices_Branch_9502 ; 94FD F0 03                    ..
        dex                                     ; 94FF CA                       .
        beq     BattlePartyServices_Branch_9513 ; 9500 F0 11                    ..
BattlePartyServices_Branch_9502:
        inc     $09                             ; 9502 E6 09                    ..
        lda     $09                             ; 9504 A5 09                    ..
        asl     $07                             ; 9506 06 07                    ..
        bcc     BattlePartyServices_Branch_94F8 ; 9508 90 EE                    ..
        rol     $07                             ; 950A 26 07                    &.
        iny                                     ; 950C C8                       .
        cpy     #$05                            ; 950D C0 05                    ..
        beq     BattlePartyServices_Branch_953D ; 950F F0 2C                    .,
        bcc     BattlePartyServices_Branch_94F8 ; 9511 90 E5                    ..
BattlePartyServices_Branch_9513:
        lda     #$00                            ; 9513 A9 00                    ..
        ldy     SaveCurrentChapterMinus1        ; 9515 AC 5A 61                 .Za
        cpy     #$04                            ; 9518 C0 04                    ..
        bcc     BattlePartyServices_Branch_951E ; 951A 90 02                    ..
        lda     #$0F                            ; 951C A9 0F                    ..
BattlePartyServices_Branch_951E:
        clc                                     ; 951E 18                       .
        adc     $09                             ; 951F 65 09                    e.
        tax                                     ; 9521 AA                       .
        lda     $95DB,x                         ; 9522 BD DB 95                 ...
        sta     $72                             ; 9525 85 72                    .r
        ldy     #$04                            ; 9527 A0 04                    ..
        ldx     #$00                            ; 9529 A2 00                    ..
BattlePartyServices_Branch_952B:
        lda     $6165,y                         ; 952B B9 65 61                 .ea
BattlePartyServices_Branch_952E:
        lsr     a                               ; 952E 4A                       J
        bcc     BattlePartyServices_Branch_9532 ; 952F 90 01                    ..
        inx                                     ; 9531 E8                       .
BattlePartyServices_Branch_9532:
        cmp     #$00                            ; 9532 C9 00                    ..
        bne     BattlePartyServices_Branch_952E ; 9534 D0 F8                    ..
        dey                                     ; 9536 88                       .
        bpl     BattlePartyServices_Branch_952B ; 9537 10 F2                    ..
        stx     $75                             ; 9539 86 75                    .u
        clc                                     ; 953B 18                       .
        rts                                     ; 953C 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_953D:
        jmp     BattlePartyServices_Entry_81B9  ; 953D 4C B9 81                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9540:
        lda     $76                             ; 9540 A5 76                    .v
        ldx     #$00                            ; 9542 A2 00                    ..
BattlePartyServices_Branch_9544:
        ldy     SaveCurrentChapterMinus1        ; 9544 AC 5A 61                 .Za
        cpy     #$04                            ; 9547 C0 04                    ..
        bcc     BattlePartyServices_Branch_9552 ; 9549 90 07                    ..
        cmp     $95C3,x                         ; 954B DD C3 95                 ...
        beq     BattlePartyServices_Branch_955E ; 954E F0 0E                    ..
        bne     BattlePartyServices_Branch_9557 ; 9550 D0 05                    ..
BattlePartyServices_Branch_9552:
        cmp     $95B4,x                         ; 9552 DD B4 95                 ...
        beq     BattlePartyServices_Branch_955E ; 9555 F0 07                    ..
BattlePartyServices_Branch_9557:
        inx                                     ; 9557 E8                       .
        cpx     #$28                            ; 9558 E0 28                    .(
        bcs     BattlePartyServices_Branch_953D ; 955A B0 E1                    ..
        bcc     BattlePartyServices_Branch_9544 ; 955C 90 E6                    ..
BattlePartyServices_Branch_955E:
        jsr     BattlePartyServices_Entry_9572  ; 955E 20 72 95                  r.
        lda     #$00                            ; 9561 A9 00                    ..
        clc                                     ; 9563 18                       .
        adc     $08                             ; 9564 65 08                    e.
        tay                                     ; 9566 A8                       .
        lda     $6165,y                         ; 9567 B9 65 61                 .ea
        and     $07                             ; 956A 25 07                    %.
        beq     BattlePartyServices_Branch_9570 ; 956C F0 02                    ..
        sec                                     ; 956E 38                       8
        rts                                     ; 956F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9570:
        clc                                     ; 9570 18                       .
        rts                                     ; 9571 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9572:
        txa                                     ; 9572 8A                       .
        ldx     #$01                            ; 9573 A2 01                    ..
        stx     $07                             ; 9575 86 07                    ..
        dex                                     ; 9577 CA                       .
        stx     $08                             ; 9578 86 08                    ..
        tax                                     ; 957A AA                       .
        inx                                     ; 957B E8                       .
BattlePartyServices_Branch_957C:
        dex                                     ; 957C CA                       .
        beq     BattlePartyServices_Branch_9589 ; 957D F0 0A                    ..
        asl     $07                             ; 957F 06 07                    ..
        bcc     BattlePartyServices_Branch_957C ; 9581 90 F9                    ..
        rol     $07                             ; 9583 26 07                    &.
        inc     $08                             ; 9585 E6 08                    ..
        bne     BattlePartyServices_Branch_957C ; 9587 D0 F3                    ..
BattlePartyServices_Branch_9589:
        rts                                     ; 9589 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_958A:
        ldx     #$00                            ; 958A A2 00                    ..
BattlePartyServices_Branch_958C:
        lda     SaveCurrentChapterMinus1        ; 958C AD 5A 61                 .Za
        cmp     #$04                            ; 958F C9 04                    ..
        bcc     BattlePartyServices_Branch_9598 ; 9591 90 05                    ..
        lda     $95C3,x                         ; 9593 BD C3 95                 ...
        bcs     BattlePartyServices_Branch_959B ; 9596 B0 03                    ..
BattlePartyServices_Branch_9598:
        lda     $95B4,x                         ; 9598 BD B4 95                 ...
BattlePartyServices_Branch_959B:
        cmp     #$FF                            ; 959B C9 FF                    ..
        beq     BattlePartyServices_Branch_95B3 ; 959D F0 14                    ..
        cmp     CurrentMapNumber                ; 959F C5 63                    .c
        beq     BattlePartyServices_Branch_95A6 ; 95A1 F0 03                    ..
        inx                                     ; 95A3 E8                       .
        bne     BattlePartyServices_Branch_958C ; 95A4 D0 E6                    ..
BattlePartyServices_Branch_95A6:
        jsr     BattlePartyServices_Entry_9572  ; 95A6 20 72 95                  r.
        ldy     $08                             ; 95A9 A4 08                    ..
        lda     $6165,y                         ; 95AB B9 65 61                 .ea
        ora     $07                             ; 95AE 05 07                    ..
        sta     $6165,y                         ; 95B0 99 65 61                 .ea
BattlePartyServices_Branch_95B3:
        rts                                     ; 95B3 60                       `
; ----------------------------------------------------------------------------
        db   $02,$12,$01,$0E,$0F,$0C,$16,$05 ; 95B4 02 12 01 0E 0F 0C 16 05  ........
        db   $04,$15,$17,$00,$11,$0A,$FF     ; 95BC 04 15 17 00 11 0A FF     .......
        db   $06,$04,$05,$10,$43,$0D,$07,$00 ; 95C3 06 04 05 10 43 0D 07 00  ....C...
        db   $11,$15,$01,$0E,$09,$02,$12,$08 ; 95CB 11 15 01 0E 09 02 12 08  ........
        db   $1B,$0B,$03,$0A,$1A,$46,$26,$FF ; 95D3 1B 0B 03 0A 1A 46 26 FF  .....F&.
        db   $03,$13,$02,$0F,$10,$0D,$16,$06 ; 95DB 03 13 02 0F 10 0D 16 06  ........
        db   $05,$15,$17,$00,$12,$0B,$FF,$07 ; 95E3 05 15 17 00 12 0B FF 07  ........
        db   $05,$06,$11,$19,$0E,$08,$00,$12 ; 95EB 05 06 11 19 0E 08 00 12  ........
        db   $15,$02,$0F,$0A,$03,$13,$09,$1A ; 95F3 15 02 0F 0A 03 13 09 1A  ........
        db   $0C,$04,$0B,$18,$01,$1B         ; 95FB 0C 04 0B 18 01 1B        ......
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9601:
        rts                                     ; 9601 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9602:
        jsr     BattlePartyServices_Entry_83C6  ; 9602 20 C6 83                  ..
        jmp     BattlePartyServices_Branch_8421 ; 9605 4C 21 84                 L!.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9608:
        jsr     BattlePartyServices_Entry_8460  ; 9608 20 60 84                  `.
        rts                                     ; 960B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_960C:
        lda     #$FF                            ; 960C A9 FF                    ..
        sta     $03                             ; 960E 85 03                    ..
        jmp     BattlePartyServices_Branch_8421 ; 9610 4C 21 84                 L!.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9613:
        lda     #$07                            ; 9613 A9 07                    ..
        sta     $76                             ; 9615 85 76                    .v
        jsr     BattlePartyServices_Entry_9731  ; 9617 20 31 97                  1.
        ldx     #$00                            ; 961A A2 00                    ..
        bcc     BattlePartyServices_Branch_9640 ; 961C 90 22                    ."
BattlePartyServices_Branch_961E:
        txa                                     ; 961E 8A                       .
        pha                                     ; 961F 48                       H
        lda     $6BDE                           ; 9620 AD DE 6B                 ..k
        bmi     BattlePartyServices_Branch_962D ; 9623 30 08                    0.
        txa                                     ; 9625 8A                       .
        beq     BattlePartyServices_Branch_962D ; 9626 F0 05                    ..
        cpx     #$05                            ; 9628 E0 05                    ..
        clc                                     ; 962A 18                       .
        bne     BattlePartyServices_Branch_9635 ; 962B D0 08                    ..
BattlePartyServices_Branch_962D:
        lda     $9644,x                         ; 962D BD 44 96                 .D.
        sta     $76                             ; 9630 85 76                    .v
        jsr     BattlePartyServices_Entry_9731  ; 9632 20 31 97                  1.
BattlePartyServices_Branch_9635:
        pla                                     ; 9635 68                       h
        tax                                     ; 9636 AA                       .
        inx                                     ; 9637 E8                       .
        bcs     BattlePartyServices_Branch_9640 ; 9638 B0 06                    ..
        cpx     #$06                            ; 963A E0 06                    ..
        bne     BattlePartyServices_Branch_961E ; 963C D0 E0                    ..
        ldx     #$FF                            ; 963E A2 FF                    ..
BattlePartyServices_Branch_9640:
        inx                                     ; 9640 E8                       .
        stx     $72                             ; 9641 86 72                    .r
        rts                                     ; 9643 60                       `
; ----------------------------------------------------------------------------
        db   $06,$10,$12,$13,$14,$05         ; 9644 06 10 12 13 14 05        ......
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_964A:
        lda     $72                             ; 964A A5 72                    .r
        ora     $73                             ; 964C 05 73                    .s
        bne     BattlePartyServices_Branch_965E ; 964E D0 0E                    ..
        lda     #$07                            ; 9650 A9 07                    ..
        sta     $76                             ; 9652 85 76                    .v
        jsr     BattlePartyServices_Entry_9731  ; 9654 20 31 97                  1.
        bcc     BattlePartyServices_Branch_965E ; 9657 90 05                    ..
        jsr     BattlePartyServices_Entry_96E4  ; 9659 20 E4 96                  ..
        sec                                     ; 965C 38                       8
        rts                                     ; 965D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_965E:
        clc                                     ; 965E 18                       .
        rts                                     ; 965F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9660:
        lda     $76                             ; 9660 A5 76                    .v
        cmp     #$04                            ; 9662 C9 04                    ..
        beq     BattlePartyServices_Branch_968C ; 9664 F0 26                    .&
        cmp     #$80                            ; 9666 C9 80                    ..
        beq     BattlePartyServices_Branch_968E ; 9668 F0 24                    .$
        jsr     BattlePartyServices_Entry_97EA  ; 966A 20 EA 97                  ..
        pha                                     ; 966D 48                       H
        rol     a                               ; 966E 2A                       *
        eor     #$01                            ; 966F 49 01                    I.
        lsr     a                               ; 9671 4A                       J
        pla                                     ; 9672 68                       h
        ora     ($79),y                         ; 9673 11 79                    .y
        sta     ($79),y                         ; 9675 91 79                    .y
        php                                     ; 9677 08                       .
        lda     $76                             ; 9678 A5 76                    .v
        cmp     #$10                            ; 967A C9 10                    ..
        beq     BattlePartyServices_Branch_96A1 ; 967C F0 23                    .#
        cmp     #$1C                            ; 967E C9 1C                    ..
        beq     BattlePartyServices_Branch_96AB ; 9680 F0 29                    .)
        cmp     #$19                            ; 9682 C9 19                    ..
        beq     BattlePartyServices_Branch_96BF ; 9684 F0 39                    .9
        cmp     #$20                            ; 9686 C9 20                    .
        beq     BattlePartyServices_Branch_96CF ; 9688 F0 45                    .E
        plp                                     ; 968A 28                       (
        rts                                     ; 968B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_968C:
        clc                                     ; 968C 18                       .
        rts                                     ; 968D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_968E:
        lda     $72E6                           ; 968E AD E6 72                 ..r
        and     #$30                            ; 9691 29 30                    )0
        beq     BattlePartyServices_Branch_9697 ; 9693 F0 02                    ..
        clc                                     ; 9695 18                       .
        rts                                     ; 9696 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9697:
        lda     $72E6                           ; 9697 AD E6 72                 ..r
        ora     #$30                            ; 969A 09 30                    .0
        sta     $72E6                           ; 969C 8D E6 72                 ..r
        sec                                     ; 969F 38                       8
        rts                                     ; 96A0 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_96A1:
        ldy     #$08                            ; 96A1 A0 08                    ..
        lda     ($79),y                         ; 96A3 B1 79                    .y
        ora     #$60                            ; 96A5 09 60                    .`
        sta     ($79),y                         ; 96A7 91 79                    .y
        plp                                     ; 96A9 28                       (
        rts                                     ; 96AA 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_96AB:
        ldy     #$09                            ; 96AB A0 09                    ..
        lda     ($79),y                         ; 96AD B1 79                    .y
        and     #$F0                            ; 96AF 29 F0                    ).
        pha                                     ; 96B1 48                       H
        lda     $77                             ; 96B2 A5 77                    .w
        and     #$0F                            ; 96B4 29 0F                    ).
        sta     $77                             ; 96B6 85 77                    .w
        pla                                     ; 96B8 68                       h
        ora     $77                             ; 96B9 05 77                    .w
        sta     ($79),y                         ; 96BB 91 79                    .y
        plp                                     ; 96BD 28                       (
        rts                                     ; 96BE 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_96BF:
        asl     $77                             ; 96BF 06 77                    .w
        asl     $77                             ; 96C1 06 77                    .w
        ldy     #$07                            ; 96C3 A0 07                    ..
        lda     ($79),y                         ; 96C5 B1 79                    .y
        and     #$FB                            ; 96C7 29 FB                    ).
        ora     $77                             ; 96C9 05 77                    .w
        sta     ($79),y                         ; 96CB 91 79                    .y
        plp                                     ; 96CD 28                       (
        rts                                     ; 96CE 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_96CF:
        lda     $77                             ; 96CF A5 77                    .w
        lsr     a                               ; 96D1 4A                       J
        ror     a                               ; 96D2 6A                       j
        ror     a                               ; 96D3 6A                       j
        and     #$C0                            ; 96D4 29 C0                    ).
        sta     $77                             ; 96D6 85 77                    .w
        ldy     #$09                            ; 96D8 A0 09                    ..
        lda     ($79),y                         ; 96DA B1 79                    .y
        and     #$3F                            ; 96DC 29 3F                    )?
        ora     $77                             ; 96DE 05 77                    .w
        sta     ($79),y                         ; 96E0 91 79                    .y
        plp                                     ; 96E2 28                       (
        rts                                     ; 96E3 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_96E4:
        lda     $76                             ; 96E4 A5 76                    .v
        cmp     #$04                            ; 96E6 C9 04                    ..
        beq     BattlePartyServices_Branch_9721 ; 96E8 F0 37                    .7
        jsr     BattlePartyServices_Entry_97EA  ; 96EA 20 EA 97                  ..
        eor     #$FF                            ; 96ED 49 FF                    I.
        and     ($79),y                         ; 96EF 31 79                    1y
        sta     ($79),y                         ; 96F1 91 79                    .y
        php                                     ; 96F3 08                       .
        lda     $76                             ; 96F4 A5 76                    .v
        cmp     #$07                            ; 96F6 C9 07                    ..
        bne     BattlePartyServices_Branch_971F ; 96F8 D0 25                    .%
        lda     #$00                            ; 96FA A9 00                    ..
        ldy     #$00                            ; 96FC A0 00                    ..
        sta     ($79),y                         ; 96FE 91 79                    .y
        ldy     #$01                            ; 9700 A0 01                    ..
        sta     ($79),y                         ; 9702 91 79                    .y
        iny                                     ; 9704 C8                       .
        sta     ($79),y                         ; 9705 91 79                    .y
        lda     $6BDE                           ; 9707 AD DE 6B                 ..k
        bpl     BattlePartyServices_Branch_971F ; 970A 10 13                    ..
        lda     #$10                            ; 970C A9 10                    ..
        sta     $76                             ; 970E 85 76                    .v
        jsr     BattlePartyServices_Entry_97EA  ; 9710 20 EA 97                  ..
        lda     #$00                            ; 9713 A9 00                    ..
        ldy     #$05                            ; 9715 A0 05                    ..
        sta     ($79),y                         ; 9717 91 79                    .y
        iny                                     ; 9719 C8                       .
        sta     ($79),y                         ; 971A 91 79                    .y
        iny                                     ; 971C C8                       .
        sta     ($79),y                         ; 971D 91 79                    .y
BattlePartyServices_Branch_971F:
        plp                                     ; 971F 28                       (
        rts                                     ; 9720 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9721:
        jsr     BattlePartyServices_Entry_9765  ; 9721 20 65 97                  e.
        bcc     BattlePartyServices_Branch_9730 ; 9724 90 0A                    ..
        lda     $73                             ; 9726 A5 73                    .s
        clc                                     ; 9728 18                       .
        adc     #$13                            ; 9729 69 13                    i.
        tay                                     ; 972B A8                       .
        jsr     BattlePartyServices_Entry_88A4  ; 972C 20 A4 88                  ..
        sec                                     ; 972F 38                       8
BattlePartyServices_Branch_9730:
        rts                                     ; 9730 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9731:
        lda     $76                             ; 9731 A5 76                    .v
        cmp     #$04                            ; 9733 C9 04                    ..
        beq     BattlePartyServices_Entry_9765  ; 9735 F0 2E                    ..
        jsr     BattlePartyServices_Entry_97EA  ; 9737 20 EA 97                  ..
        bcc     BattlePartyServices_Branch_9760 ; 973A 90 24                    .$
        lda     $76                             ; 973C A5 76                    .v
        cmp     #$04                            ; 973E C9 04                    ..
        beq     BattlePartyServices_Entry_9765  ; 9740 F0 23                    .#
        cmp     #$10                            ; 9742 C9 10                    ..
        beq     BattlePartyServices_Branch_9782 ; 9744 F0 3C                    .<
        cmp     #$1C                            ; 9746 C9 1C                    ..
        beq     BattlePartyServices_Branch_9790 ; 9748 F0 46                    .F
        cmp     #$1A                            ; 974A C9 1A                    ..
        beq     BattlePartyServices_Branch_9799 ; 974C F0 4B                    .K
        cmp     #$80                            ; 974E C9 80                    ..
        beq     BattlePartyServices_Branch_975F ; 9750 F0 0D                    ..
        cmp     #$19                            ; 9752 C9 19                    ..
        beq     BattlePartyServices_Branch_97A1 ; 9754 F0 4B                    .K
        cmp     #$20                            ; 9756 C9 20                    .
        beq     BattlePartyServices_Branch_97AE ; 9758 F0 54                    .T
        lda     $76                             ; 975A A5 76                    .v
        jsr     BattlePartyServices_Entry_97EA  ; 975C 20 EA 97                  ..
BattlePartyServices_Branch_975F:
        rts                                     ; 975F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9760:
        lda     #$00                            ; 9760 A9 00                    ..
        sta     $73                             ; 9762 85 73                    .s
        rts                                     ; 9764 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9765:
        ldy     #$13                            ; 9765 A0 13                    ..
BattlePartyServices_Branch_9767:
        lda     ($79),y                         ; 9767 B1 79                    .y
        bpl     BattlePartyServices_Branch_9774 ; 9769 10 09                    ..
        cmp     #$FF                            ; 976B C9 FF                    ..
        beq     BattlePartyServices_Branch_9774 ; 976D F0 05                    ..
        jsr     BattlePartyServices_Entry_8B59  ; 976F 20 59 8B                  Y.
        bcs     BattlePartyServices_Branch_977B ; 9772 B0 07                    ..
BattlePartyServices_Branch_9774:
        iny                                     ; 9774 C8                       .
        cpy     #$1B                            ; 9775 C0 1B                    ..
        bcc     BattlePartyServices_Branch_9767 ; 9777 90 EE                    ..
        clc                                     ; 9779 18                       .
        rts                                     ; 977A 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_977B:
        tya                                     ; 977B 98                       .
        sbc     #$13                            ; 977C E9 13                    ..
        sta     $73                             ; 977E 85 73                    .s
        sec                                     ; 9780 38                       8
        rts                                     ; 9781 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9782:
        php                                     ; 9782 08                       .
        jsr     BattlePartyServices_Entry_97BC  ; 9783 20 BC 97                  ..
        and     #$60                            ; 9786 29 60                    )`
        asl     a                               ; 9788 0A                       .
        rol     a                               ; 9789 2A                       *
        rol     a                               ; 978A 2A                       *
        rol     a                               ; 978B 2A                       *
        sta     $73                             ; 978C 85 73                    .s
        plp                                     ; 978E 28                       (
        rts                                     ; 978F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9790:
        ldy     #$09                            ; 9790 A0 09                    ..
        lda     ($79),y                         ; 9792 B1 79                    .y
        and     #$0F                            ; 9794 29 0F                    ).
        sta     $73                             ; 9796 85 73                    .s
        rts                                     ; 9798 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9799:
        jsr     BattlePartyServices_Entry_97BC  ; 9799 20 BC 97                  ..
        and     #$8F                            ; 979C 29 8F                    ).
        sta     $73                             ; 979E 85 73                    .s
        rts                                     ; 97A0 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_97A1:
        php                                     ; 97A1 08                       .
        ldy     #$07                            ; 97A2 A0 07                    ..
        lda     ($79),y                         ; 97A4 B1 79                    .y
        and     #$04                            ; 97A6 29 04                    ).
        lsr     a                               ; 97A8 4A                       J
        lsr     a                               ; 97A9 4A                       J
        sta     $73                             ; 97AA 85 73                    .s
        plp                                     ; 97AC 28                       (
        rts                                     ; 97AD 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_97AE:
        php                                     ; 97AE 08                       .
        ldy     #$09                            ; 97AF A0 09                    ..
        lda     ($79),y                         ; 97B1 B1 79                    .y
        and     #$C0                            ; 97B3 29 C0                    ).
        lsr     a                               ; 97B5 4A                       J
        ror     a                               ; 97B6 6A                       j
        ror     a                               ; 97B7 6A                       j
        sta     $73                             ; 97B8 85 73                    .s
        plp                                     ; 97BA 28                       (
        rts                                     ; 97BB 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_97BC:
        ldy     #$08                            ; 97BC A0 08                    ..
        lda     ($79),y                         ; 97BE B1 79                    .y
        rts                                     ; 97C0 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_97C1:
        jsr     BattlePartyServices_Entry_97EA  ; 97C1 20 EA 97                  ..
        lda     $76                             ; 97C4 A5 76                    .v
        cmp     #$10                            ; 97C6 C9 10                    ..
        beq     BattlePartyServices_Branch_97D0 ; 97C8 F0 06                    ..
        cmp     #$80                            ; 97CA C9 80                    ..
        beq     BattlePartyServices_Branch_97E6 ; 97CC F0 18                    ..
        clc                                     ; 97CE 18                       .
        rts                                     ; 97CF 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_97D0:
        jsr     BattlePartyServices_Entry_97BC  ; 97D0 20 BC 97                  ..
        and     #$60                            ; 97D3 29 60                    )`
        beq     BattlePartyServices_Branch_97E8 ; 97D5 F0 11                    ..
        sec                                     ; 97D7 38                       8
        sbc     #$20                            ; 97D8 E9 20                    .
        sta     $00                           ; 97DA 85 00                    ..
        lda     ($79),y                         ; 97DC B1 79                    .y
        and     #$9F                            ; 97DE 29 9F                    ).
        ora     $00                           ; 97E0 05 00                    ..
        sta     ($79),y                         ; 97E2 91 79                    .y
        sec                                     ; 97E4 38                       8
        rts                                     ; 97E5 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_97E6:
        sec                                     ; 97E6 38                       8
        rts                                     ; 97E7 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_97E8:
        clc                                     ; 97E8 18                       .
        rts                                     ; 97E9 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_97EA:
        ldy     $6E0C                           ; 97EA AC 0C 6E                 ..n
        jsr     BattlePartyServices_Entry_8301  ; 97ED 20 01 83                  ..
        lda     $76                             ; 97F0 A5 76                    .v
        cmp     #$10                            ; 97F2 C9 10                    ..
        bcs     BattlePartyServices_Branch_9805 ; 97F4 B0 0F                    ..
        tax                                     ; 97F6 AA                       .
        jsr     BattlePartyServices_Entry_8490  ; 97F7 20 90 84                  ..
        pha                                     ; 97FA 48                       H
        clc                                     ; 97FB 18                       .
        ldy     #$00                            ; 97FC A0 00                    ..
        and     ($79),y                         ; 97FE 31 79                    1y
        jsr     BattlePartyServices_Entry_8C58  ; 9800 20 58 8C                  X.
        pla                                     ; 9803 68                       h
        rts                                     ; 9804 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9805:
        pha                                     ; 9805 48                       H
        jsr     BattlePartyServices_Entry_835C  ; 9806 20 5C 83                  \.
        pla                                     ; 9809 68                       h
        sbc     #$10                            ; 980A E9 10                    ..
        sta     $00                           ; 980C 85 00                    ..
        lsr     a                               ; 980E 4A                       J
        lsr     a                               ; 980F 4A                       J
        lsr     a                               ; 9810 4A                       J
        pha                                     ; 9811 48                       H
        lda     $00                           ; 9812 A5 00                    ..
        and     #$07                            ; 9814 29 07                    ).
        tax                                     ; 9816 AA                       .
        jsr     BattlePartyServices_Entry_8490  ; 9817 20 90 84                  ..
        sta     $00                           ; 981A 85 00                    ..
        pla                                     ; 981C 68                       h
        clc                                     ; 981D 18                       .
        adc     #$05                            ; 981E 69 05                    i.
        tay                                     ; 9820 A8                       .
        lda     ($79),y                         ; 9821 B1 79                    .y
        and     $00                           ; 9823 25 00                    %.
        jsr     BattlePartyServices_Entry_8C58  ; 9825 20 58 8C                  X.
        lda     $00                           ; 9828 A5 00                    ..
        rts                                     ; 982A 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_982B:
        lda     #$0A                            ; 982B A9 0A                    ..
        sta     $6E0C                           ; 982D 8D 0C 6E                 ..n
        jsr     BattlePartyServices_Entry_8241  ; 9830 20 41 82                  A.
        bcc     BattlePartyServices_Branch_9838 ; 9833 90 03                    ..
        jsr     BattlePartyServices_Entry_8278  ; 9835 20 78 82                  x.
BattlePartyServices_Branch_9838:
        jsr     BattlePartyServices_Entry_825F  ; 9838 20 5F 82                  _.
        bcc     BattlePartyServices_Branch_9840 ; 983B 90 03                    ..
        jsr     BattlePartyServices_Entry_8278  ; 983D 20 78 82                  x.
BattlePartyServices_Branch_9840:
        lda     #$0A                            ; 9840 A9 0A                    ..
        sec                                     ; 9842 38                       8
        sbc     $6E0C                           ; 9843 ED 0C 6E                 ..n
        sta     $72                             ; 9846 85 72                    .r
        rts                                     ; 9848 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9849:
        lda     $6E0B                           ; 9849 AD 0B 6E                 ..n
        pha                                     ; 984C 48                       H
BattlePartyServices_Branch_984D:
        lda     #$00                            ; 984D A9 00                    ..
        sta     $6E0B                           ; 984F 8D 0B 6E                 ..n
        sta     $07                             ; 9852 85 07                    ..
        lda     $6E                             ; 9854 A5 6E                    .n
        pha                                     ; 9856 48                       H
        jsr     BattlePartyServices_Entry_982B  ; 9857 20 2B 98                  +.
        lda     $72                             ; 985A A5 72                    .r
        sta     $08                             ; 985C 85 08                    ..
        lda     #$00                            ; 985E A9 00                    ..
        sta     $6E                             ; 9860 85 6E                    .n
BattlePartyServices_Branch_9862:
        ldy     $6E                             ; 9862 A4 6E                    .n
        ldx     $6E                             ; 9864 A6 6E                    .n
        inx                                     ; 9866 E8                       .
        stx     $6E0C                           ; 9867 8E 0C 6E                 ..n
        jsr     BattlePartyServices_Entry_82F0  ; 986A 20 F0 82                  ..
        bcs     BattlePartyServices_Branch_9886 ; 986D B0 17                    ..
        jsr     BattlePartyServices_Entry_8241  ; 986F 20 41 82                  A.
        bcc     BattlePartyServices_Branch_9879 ; 9872 90 05                    ..
        jsr     BattlePartyServices_Entry_8278  ; 9874 20 78 82                  x.
        beq     BattlePartyServices_Branch_9883 ; 9877 F0 0A                    ..
BattlePartyServices_Branch_9879:
        jsr     BattlePartyServices_Entry_825F  ; 9879 20 5F 82                  _.
        bcc     BattlePartyServices_Branch_98A8 ; 987C 90 2A                    .*
        jsr     BattlePartyServices_Entry_8278  ; 987E 20 78 82                  x.
        bne     BattlePartyServices_Branch_98A8 ; 9881 D0 25                    .%
BattlePartyServices_Branch_9883:
        sty     $6E0C                           ; 9883 8C 0C 6E                 ..n
BattlePartyServices_Branch_9886:
        jsr     BattlePartyServices_Entry_8301  ; 9886 20 01 83                  ..
        jsr     BattlePartyServices_Entry_831E  ; 9889 20 1E 83                  ..
        jsr     BattlePartyServices_Entry_8815  ; 988C 20 15 88                  ..
        lda     $72                             ; 988F A5 72                    .r
        cmp     $6F                             ; 9891 C5 6F                    .o
        beq     BattlePartyServices_Branch_98B1 ; 9893 F0 1C                    ..
        inc     $6E                             ; 9895 E6 6E                    .n
        dec     $08                             ; 9897 C6 08                    ..
        bne     BattlePartyServices_Branch_9862 ; 9899 D0 C7                    ..
        pla                                     ; 989B 68                       h
        sta     $6E                             ; 989C 85 6E                    .n
        ldx     $76                             ; 989E A6 76                    .v
        beq     BattlePartyServices_Branch_98BE ; 98A0 F0 1C                    ..
        clc                                     ; 98A2 18                       .
        pla                                     ; 98A3 68                       h
        sta     $6E0B                           ; 98A4 8D 0B 6E                 ..n
        rts                                     ; 98A7 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_98A8:
        pla                                     ; 98A8 68                       h
        sta     $6E                             ; 98A9 85 6E                    .n
        clc                                     ; 98AB 18                       .
        pla                                     ; 98AC 68                       h
        sta     $6E0B                           ; 98AD 8D 0B 6E                 ..n
        rts                                     ; 98B0 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_98B1:
        ldx     $6E                             ; 98B1 A6 6E                    .n
        pla                                     ; 98B3 68                       h
        sta     $6E                             ; 98B4 85 6E                    .n
        stx     $72                             ; 98B6 86 72                    .r
        sec                                     ; 98B8 38                       8
        pla                                     ; 98B9 68                       h
        sta     $6E0B                           ; 98BA 8D 0B 6E                 ..n
        rts                                     ; 98BD 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_98BE:
        lda     #$08                            ; 98BE A9 08                    ..
        sta     $76                             ; 98C0 85 76                    .v
        bne     BattlePartyServices_Branch_984D ; 98C2 D0 89                    ..
        lda     SavePartyCharacter1,y           ; 98C4 B9 6A 61                 .ja
        cmp     #$89                            ; 98C7 C9 89                    ..
        bcs     BattlePartyServices_Branch_98E0 ; 98C9 B0 15                    ..
        lda     SavePartyCharacter1,y           ; 98CB B9 6A 61                 .ja
        and     #$0F                            ; 98CE 29 0F                    ).
        cmp     $76                             ; 98D0 C5 76                    .v
        beq     BattlePartyServices_Branch_98DE ; 98D2 F0 0A                    ..
        cmp     #$08                            ; 98D4 C9 08                    ..
        bne     BattlePartyServices_Branch_98DC ; 98D6 D0 04                    ..
        lda     $77                             ; 98D8 A5 77                    .w
        beq     BattlePartyServices_Branch_98DE ; 98DA F0 02                    ..
BattlePartyServices_Branch_98DC:
        clc                                     ; 98DC 18                       .
        rts                                     ; 98DD 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_98DE:
        sec                                     ; 98DE 38                       8
        rts                                     ; 98DF 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_98E0:
        jsr     BattlePartyServices_Entry_8301  ; 98E0 20 01 83                  ..
        ldy     #$05                            ; 98E3 A0 05                    ..
        lda     ($79),y                         ; 98E5 B1 79                    .y
        cmp     #$C5                            ; 98E7 C9 C5                    ..
        bcc     BattlePartyServices_Branch_98F3 ; 98E9 90 08                    ..
        sbc     #$BD                            ; 98EB E9 BD                    ..
BattlePartyServices_Branch_98ED:
        cmp     $76                             ; 98ED C5 76                    .v
        bne     BattlePartyServices_Branch_98DC ; 98EF D0 EB                    ..
        beq     BattlePartyServices_Branch_98DE ; 98F1 F0 EB                    ..
BattlePartyServices_Branch_98F3:
        adc     #$20                            ; 98F3 69 20                    i
        bne     BattlePartyServices_Branch_98ED ; 98F5 D0 F6                    ..
BattlePartyServices_Entry_98F7:
        lda     $6E0B                           ; 98F7 AD 0B 6E                 ..n
        pha                                     ; 98FA 48                       H
        lda     #$00                            ; 98FB A9 00                    ..
        sta     $6E0B                           ; 98FD 8D 0B 6E                 ..n
        jsr     BattlePartyServices_Entry_982B  ; 9900 20 2B 98                  +.
        lda     $72                             ; 9903 A5 72                    .r
        sta     $0C                             ; 9905 85 0C                    ..
        lda     #$00                            ; 9907 A9 00                    ..
        sta     $0B                             ; 9909 85 0B                    ..
        sta     $0A                             ; 990B 85 0A                    ..
        sta     $0D                             ; 990D 85 0D                    ..
BattlePartyServices_Branch_990F:
        ldx     $0B                             ; 990F A6 0B                    ..
        jsr     BattlePartyServices_Entry_8198  ; 9911 20 98 81                  ..
        ldy     #$05                            ; 9914 A0 05                    ..
        lda     ($79),y                         ; 9916 B1 79                    .y
        cmp     $0A                             ; 9918 C5 0A                    ..
        bcc     BattlePartyServices_Branch_9922 ; 991A 90 06                    ..
        sta     $0A                             ; 991C 85 0A                    ..
        lda     $0B                             ; 991E A5 0B                    ..
        sta     $0D                             ; 9920 85 0D                    ..
BattlePartyServices_Branch_9922:
        inc     $0B                             ; 9922 E6 0B                    ..
        dec     $0C                             ; 9924 C6 0C                    ..
        bne     BattlePartyServices_Branch_990F ; 9926 D0 E7                    ..
        lda     $0A                             ; 9928 A5 0A                    ..
        sta     $75                             ; 992A 85 75                    .u
        lda     $0D                             ; 992C A5 0D                    ..
        sta     $72                             ; 992E 85 72                    .r
        clc                                     ; 9930 18                       .
        pla                                     ; 9931 68                       h
        sta     $6E0B                           ; 9932 8D 0B 6E                 ..n
        rts                                     ; 9935 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9936:
        lda     $6E0B                           ; 9936 AD 0B 6E                 ..n
        pha                                     ; 9939 48                       H
        lda     #$00                            ; 993A A9 00                    ..
        sta     $6E0B                           ; 993C 8D 0B 6E                 ..n
        jsr     BattlePartyServices_Entry_982B  ; 993F 20 2B 98                  +.
        lda     $72                             ; 9942 A5 72                    .r
        sta     $0C                             ; 9944 85 0C                    ..
        lda     #$00                            ; 9946 A9 00                    ..
        sta     $0A                             ; 9948 85 0A                    ..
BattlePartyServices_Branch_994A:
        ldx     $0A                             ; 994A A6 0A                    ..
        jsr     BattlePartyServices_Entry_8198  ; 994C 20 98 81                  ..
        jsr     BattlePartyServices_Entry_8AD7  ; 994F 20 D7 8A                  ..
        cpx     #$08                            ; 9952 E0 08                    ..
        bcc     BattlePartyServices_Branch_9962 ; 9954 90 0C                    ..
        inc     $0A                             ; 9956 E6 0A                    ..
        dec     $0C                             ; 9958 C6 0C                    ..
        bne     BattlePartyServices_Branch_994A ; 995A D0 EE                    ..
        clc                                     ; 995C 18                       .
        pla                                     ; 995D 68                       h
        sta     $6E0B                           ; 995E 8D 0B 6E                 ..n
        rts                                     ; 9961 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9962:
        lda     $0A                             ; 9962 A5 0A                    ..
        sta     $72                             ; 9964 85 72                    .r
        sec                                     ; 9966 38                       8
        pla                                     ; 9967 68                       h
        sta     $6E0B                           ; 9968 8D 0B 6E                 ..n
        rts                                     ; 996B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_996C:
        lda     $6E0B                           ; 996C AD 0B 6E                 ..n
        pha                                     ; 996F 48                       H
        lda     #$00                            ; 9970 A9 00                    ..
        sta     $6E0B                           ; 9972 8D 0B 6E                 ..n
        jsr     BattlePartyServices_Entry_982B  ; 9975 20 2B 98                  +.
        lda     $72                             ; 9978 A5 72                    .r
        sta     $0C                             ; 997A 85 0C                    ..
        lda     #$00                            ; 997C A9 00                    ..
        sta     $0A                             ; 997E 85 0A                    ..
        lda     #$12                            ; 9980 A9 12                    ..
        sta     $6E0B                           ; 9982 8D 0B 6E                 ..n
BattlePartyServices_Branch_9985:
        ldx     $0A                             ; 9985 A6 0A                    ..
        jsr     BattlePartyServices_Entry_8198  ; 9987 20 98 81                  ..
        ldy     #$13                            ; 998A A0 13                    ..
BattlePartyServices_Branch_998C:
        lda     ($79),y                         ; 998C B1 79                    .y
        and     #$7F                            ; 998E 29 7F                    ).
        cmp     $76                             ; 9990 C5 76                    .v
        beq     BattlePartyServices_Branch_99A5 ; 9992 F0 11                    ..
        iny                                     ; 9994 C8                       .
        cpy     #$1B                            ; 9995 C0 1B                    ..
        bne     BattlePartyServices_Branch_998C ; 9997 D0 F3                    ..
        inc     $0A                             ; 9999 E6 0A                    ..
        dec     $0C                             ; 999B C6 0C                    ..
        bne     BattlePartyServices_Branch_9985 ; 999D D0 E6                    ..
        pla                                     ; 999F 68                       h
        sta     $6E0B                           ; 99A0 8D 0B 6E                 ..n
        clc                                     ; 99A3 18                       .
        rts                                     ; 99A4 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_99A5:
        lda     $0A                             ; 99A5 A5 0A                    ..
        sta     $72                             ; 99A7 85 72                    .r
        tya                                     ; 99A9 98                       .
        sec                                     ; 99AA 38                       8
        sbc     #$13                            ; 99AB E9 13                    ..
        sta     $73                             ; 99AD 85 73                    .s
        pla                                     ; 99AF 68                       h
        sta     $6E0B                           ; 99B0 8D 0B 6E                 ..n
        sec                                     ; 99B3 38                       8
        rts                                     ; 99B4 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_99B5:
        lda     $6E0A                           ; 99B5 AD 0A 6E                 ..n
        pha                                     ; 99B8 48                       H
        lda     #$00                            ; 99B9 A9 00                    ..
        sta     $6E0A                           ; 99BB 8D 0A 6E                 ..n
        ldx     #$00                            ; 99BE A2 00                    ..
BattlePartyServices_Branch_99C0:
        stx     $08                             ; 99C0 86 08                    ..
        lda     $6E,x                           ; 99C2 B5 6E                    .n
        cmp     #$FF                            ; 99C4 C9 FF                    ..
        beq     BattlePartyServices_Branch_99D2 ; 99C6 F0 0A                    ..
        inx                                     ; 99C8 E8                       .
BattlePartyServices_Branch_99C9:
        cmp     $6E,x                           ; 99C9 D5 6E                    .n
        beq     BattlePartyServices_Branch_99DB ; 99CB F0 0E                    ..
        inx                                     ; 99CD E8                       .
        cpx     #$04                            ; 99CE E0 04                    ..
        bne     BattlePartyServices_Branch_99C9 ; 99D0 D0 F7                    ..
BattlePartyServices_Branch_99D2:
        ldx     $08                             ; 99D2 A6 08                    ..
        inx                                     ; 99D4 E8                       .
        cpx     #$03                            ; 99D5 E0 03                    ..
        bne     BattlePartyServices_Branch_99C0 ; 99D7 D0 E7                    ..
        beq     BattlePartyServices_Branch_99E2 ; 99D9 F0 07                    ..
BattlePartyServices_Branch_99DB:
        pla                                     ; 99DB 68                       h
        sta     $6E0A                           ; 99DC 8D 0A 6E                 ..n
        jmp     BattlePartyServices_Entry_81B9  ; 99DF 4C B9 81                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_99E2:
        jsr     BattlePartyServices_Entry_8498  ; 99E2 20 98 84                  ..
        bcs     BattlePartyServices_Branch_99FD ; 99E5 B0 16                    ..
        jsr     BattlePartyServices_Entry_982B  ; 99E7 20 2B 98                  +.
        ldx     #$00                            ; 99EA A2 00                    ..
        ldy     #$00                            ; 99EC A0 00                    ..
BattlePartyServices_Branch_99EE:
        lda     $6E,y                           ; 99EE B9 6E 00                 .n.
        bmi     BattlePartyServices_Branch_99F4 ; 99F1 30 01                    0.
        inx                                     ; 99F3 E8                       .
BattlePartyServices_Branch_99F4:
        iny                                     ; 99F4 C8                       .
        cpy     #$04                            ; 99F5 C0 04                    ..
        bne     BattlePartyServices_Branch_99EE ; 99F7 D0 F5                    ..
        cpx     $72                             ; 99F9 E4 72                    .r
        bne     BattlePartyServices_Branch_99DB ; 99FB D0 DE                    ..
BattlePartyServices_Branch_99FD:
        jsr     BattlePartyServices_Entry_982B  ; 99FD 20 2B 98                  +.
        lda     $72                             ; 9A00 A5 72                    .r
        sta     $0A                             ; 9A02 85 0A                    ..
        tsx                                     ; 9A04 BA                       .
        txa                                     ; 9A05 8A                       .
        sec                                     ; 9A06 38                       8
        sbc     #$0A                            ; 9A07 E9 0A                    ..
        tax                                     ; 9A09 AA                       .
        txs                                     ; 9A0A 9A                       .
        inx                                     ; 9A0B E8                       .
        stx     $08                             ; 9A0C 86 08                    ..
        lda     #$01                            ; 9A0E A9 01                    ..
        sta     $09                             ; 9A10 85 09                    ..
        jsr     BattlePartyServices_Entry_9B58  ; 9A12 20 58 9B                  X.
        jsr     BattlePartyServices_Entry_9AE0  ; 9A15 20 E0 9A                  ..
        lda     $9A7D                           ; 9A18 AD 7D 9A                 .}.
        sta     $0C                             ; 9A1B 85 0C                    ..
        lda     $9A7E                           ; 9A1D AD 7E 9A                 .~.
        sta     $0D                             ; 9A20 85 0D                    ..
        jsr     BattlePartyServices_Entry_8241  ; 9A22 20 41 82                  A.
        tya                                     ; 9A25 98                       .
        ldx     #$0C                            ; 9A26 A2 0C                    ..
        jsr     AddByteToPointer                ; 9A28 20 13 C8                  ..
        ldy     #$00                            ; 9A2B A0 00                    ..
BattlePartyServices_Branch_9A2D:
        tya                                     ; 9A2D 98                       .
        pha                                     ; 9A2E 48                       H
        lda     $6E,y                           ; 9A2F B9 6E 00                 .n.
        cmp     #$FF                            ; 9A32 C9 FF                    ..
        beq     BattlePartyServices_Branch_9A3D ; 9A34 F0 07                    ..
        tay                                     ; 9A36 A8                       .
        lda     ($08),y                         ; 9A37 B1 08                    ..
        tax                                     ; 9A39 AA                       .
        jmp     BattlePartyServices_Branch_9A3F ; 9A3A 4C 3F 9A                 L?.
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9A3D:
        ldx     #$00                            ; 9A3D A2 00                    ..
BattlePartyServices_Branch_9A3F:
        pla                                     ; 9A3F 68                       h
        tay                                     ; 9A40 A8                       .
        txa                                     ; 9A41 8A                       .
        sta     ($0C),y                         ; 9A42 91 0C                    ..
        iny                                     ; 9A44 C8                       .
        cpy     #$04                            ; 9A45 C0 04                    ..
        bne     BattlePartyServices_Branch_9A2D ; 9A47 D0 E4                    ..
        ldy     $6E                             ; 9A49 A4 6E                    .n
        jsr     BattlePartyServices_Entry_9A87  ; 9A4B 20 87 9A                  ..
        ldy     $6F                             ; 9A4E A4 6F                    .o
        jsr     BattlePartyServices_Entry_9A87  ; 9A50 20 87 9A                  ..
        ldy     $70                             ; 9A53 A4 70                    .p
        jsr     BattlePartyServices_Entry_9A87  ; 9A55 20 87 9A                  ..
        ldy     $71                             ; 9A58 A4 71                    .q
        jsr     BattlePartyServices_Entry_9A87  ; 9A5A 20 87 9A                  ..
        jsr     BattlePartyServices_Entry_8498  ; 9A5D 20 98 84                  ..
        bcc     BattlePartyServices_Branch_9A6E ; 9A60 90 0C                    ..
        jsr     BattlePartyServices_Entry_9ACD  ; 9A62 20 CD 9A                  ..
        jsr     BattlePartyServices_Entry_9AC3  ; 9A65 20 C3 9A                  ..
        jsr     BattlePartyServices_Entry_9B15  ; 9A68 20 15 9B                  ..
        jsr     BattlePartyServices_Entry_9A90  ; 9A6B 20 90 9A                  ..
BattlePartyServices_Branch_9A6E:
        jsr     BattlePartyServices_Entry_9C7C  ; 9A6E 20 7C 9C                  |.
        tsx                                     ; 9A71 BA                       .
        txa                                     ; 9A72 8A                       .
        clc                                     ; 9A73 18                       .
        adc     #$0A                            ; 9A74 69 0A                    i.
        tax                                     ; 9A76 AA                       .
        txs                                     ; 9A77 9A                       .
        pla                                     ; 9A78 68                       h
        sta     $6E0A                           ; 9A79 8D 0A 6E                 ..n
        rts                                     ; 9A7C 60                       `
; ----------------------------------------------------------------------------
        db   $6A                             ; 9A7D 6A                       j
        db   $61                             ; 9A7E 61                       a
        db   $00,$03,$04,$06,$07,$05,$01,$02 ; 9A7F 00 03 04 06 07 05 01 02  ........
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9A87:
        cpy     #$FF                            ; 9A87 C0 FF                    ..
        beq     BattlePartyServices_Branch_9A8F ; 9A89 F0 04                    ..
        lda     #$00                            ; 9A8B A9 00                    ..
        sta     ($08),y                         ; 9A8D 91 08                    ..
BattlePartyServices_Branch_9A8F:
        rts                                     ; 9A8F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9A90:
        lda     $0F                             ; 9A90 A5 0F                    ..
        pha                                     ; 9A92 48                       H
        jsr     BattlePartyServices_Entry_825F  ; 9A93 20 5F 82                  _.
        tya                                     ; 9A96 98                       .
        clc                                     ; 9A97 18                       .
        adc     #$0A                            ; 9A98 69 0A                    i.
        sta     $0F                             ; 9A9A 85 0F                    ..
BattlePartyServices_Branch_9A9C:
        ldx     #$09                            ; 9A9C A2 09                    ..
BattlePartyServices_Branch_9A9E:
        lda     SavePartyCharacter1,y           ; 9A9E B9 6A 61                 .ja
        bmi     BattlePartyServices_Branch_9ABA ; 9AA1 30 17                    0.
        tya                                     ; 9AA3 98                       .
        pha                                     ; 9AA4 48                       H
BattlePartyServices_Branch_9AA5:
        lda     SavePartyCharacter2,y           ; 9AA5 B9 6B 61                 .ka
        sta     SavePartyCharacter1,y           ; 9AA8 99 6A 61                 .ja
        iny                                     ; 9AAB C8                       .
        cpy     $0F                             ; 9AAC C4 0F                    ..
        bne     BattlePartyServices_Branch_9AA5 ; 9AAE D0 F5                    ..
        lda     #$00                            ; 9AB0 A9 00                    ..
        sta     SavePartyCharacter1,y           ; 9AB2 99 6A 61                 .ja
        pla                                     ; 9AB5 68                       h
        tay                                     ; 9AB6 A8                       .
        dex                                     ; 9AB7 CA                       .
        bne     BattlePartyServices_Branch_9A9E ; 9AB8 D0 E4                    ..
BattlePartyServices_Branch_9ABA:
        iny                                     ; 9ABA C8                       .
        cpy     $0F                             ; 9ABB C4 0F                    ..
        bne     BattlePartyServices_Branch_9A9C ; 9ABD D0 DD                    ..
        pla                                     ; 9ABF 68                       h
        sta     $0F                             ; 9AC0 85 0F                    ..
        rts                                     ; 9AC2 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9AC3:
        lda     #$00                            ; 9AC3 A9 00                    ..
        ldy     #$09                            ; 9AC5 A0 09                    ..
BattlePartyServices_Branch_9AC7:
        sta     ($0C),y                         ; 9AC7 91 0C                    ..
        dey                                     ; 9AC9 88                       .
        bpl     BattlePartyServices_Branch_9AC7 ; 9ACA 10 FB                    ..
        rts                                     ; 9ACC 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9ACD:
        lda     $9A7D                           ; 9ACD AD 7D 9A                 .}.
        sta     $0C                             ; 9AD0 85 0C                    ..
        lda     $9A7E                           ; 9AD2 AD 7E 9A                 .~.
        sta     $0D                             ; 9AD5 85 0D                    ..
        jsr     BattlePartyServices_Entry_825F  ; 9AD7 20 5F 82                  _.
        tya                                     ; 9ADA 98                       .
        ldx     #$0C                            ; 9ADB A2 0C                    ..
        jmp     AddByteToPointer                ; 9ADD 4C 13 C8                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9AE0:
        lda     #$00                            ; 9AE0 A9 00                    ..
        sta     $0B                             ; 9AE2 85 0B                    ..
BattlePartyServices_Branch_9AE4:
        ldx     $0B                             ; 9AE4 A6 0B                    ..
        inx                                     ; 9AE6 E8                       .
        stx     $6E0C                           ; 9AE7 8E 0C 6E                 ..n
        jsr     BattlePartyServices_Entry_8241  ; 9AEA 20 41 82                  A.
        bcc     BattlePartyServices_Branch_9AFF ; 9AED 90 10                    ..
        jsr     BattlePartyServices_Entry_8278  ; 9AEF 20 78 82                  x.
        bne     BattlePartyServices_Branch_9AFF ; 9AF2 D0 0B                    ..
        lda     SavePartyCharacter1,y           ; 9AF4 B9 6A 61                 .ja
        ldy     $0B                             ; 9AF7 A4 0B                    ..
        sta     ($08),y                         ; 9AF9 91 08                    ..
        inc     $0B                             ; 9AFB E6 0B                    ..
        bne     BattlePartyServices_Branch_9AE4 ; 9AFD D0 E5                    ..
BattlePartyServices_Branch_9AFF:
        jsr     BattlePartyServices_Entry_825F  ; 9AFF 20 5F 82                  _.
        bcc     BattlePartyServices_Branch_9B14 ; 9B02 90 10                    ..
        jsr     BattlePartyServices_Entry_8278  ; 9B04 20 78 82                  x.
        bne     BattlePartyServices_Branch_9B14 ; 9B07 D0 0B                    ..
        lda     SavePartyCharacter1,y           ; 9B09 B9 6A 61                 .ja
        ldy     $0B                             ; 9B0C A4 0B                    ..
        sta     ($08),y                         ; 9B0E 91 08                    ..
        inc     $0B                             ; 9B10 E6 0B                    ..
        bne     BattlePartyServices_Branch_9AE4 ; 9B12 D0 D0                    ..
BattlePartyServices_Branch_9B14:
        rts                                     ; 9B14 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9B15:
        ldy     #$00                            ; 9B15 A0 00                    ..
BattlePartyServices_Branch_9B17:
        tya                                     ; 9B17 98                       .
        pha                                     ; 9B18 48                       H
        lda     ($08),y                         ; 9B19 B1 08                    ..
        bpl     BattlePartyServices_Branch_9B30 ; 9B1B 10 13                    ..
        cmp     #$89                            ; 9B1D C9 89                    ..
        bcc     BattlePartyServices_Branch_9B30 ; 9B1F 90 0F                    ..
        pha                                     ; 9B21 48                       H
        lda     #$92                            ; 9B22 A9 92                    ..
        sbc     ($08),y                         ; 9B24 F1 08                    ..
        pha                                     ; 9B26 48                       H
        lda     #$00                            ; 9B27 A9 00                    ..
        sta     ($08),y                         ; 9B29 91 08                    ..
        pla                                     ; 9B2B 68                       h
        tay                                     ; 9B2C A8                       .
        pla                                     ; 9B2D 68                       h
        sta     ($0C),y                         ; 9B2E 91 0C                    ..
BattlePartyServices_Branch_9B30:
        pla                                     ; 9B30 68                       h
        tay                                     ; 9B31 A8                       .
        iny                                     ; 9B32 C8                       .
        cpy     #$0A                            ; 9B33 C0 0A                    ..
        bne     BattlePartyServices_Branch_9B17 ; 9B35 D0 E0                    ..
        ldy     #$00                            ; 9B37 A0 00                    ..
BattlePartyServices_Branch_9B39:
        tya                                     ; 9B39 98                       .
        pha                                     ; 9B3A 48                       H
        lda     ($08),y                         ; 9B3B B1 08                    ..
        bpl     BattlePartyServices_Branch_9B50 ; 9B3D 10 11                    ..
        pha                                     ; 9B3F 48                       H
        and     #$7F                            ; 9B40 29 7F                    ).
        cmp     #$08                            ; 9B42 C9 08                    ..
        bne     BattlePartyServices_Branch_9B48 ; 9B44 D0 02                    ..
        lda     #$00                            ; 9B46 A9 00                    ..
BattlePartyServices_Branch_9B48:
        tax                                     ; 9B48 AA                       .
        lda     $9A7F,x                         ; 9B49 BD 7F 9A                 ...
        tay                                     ; 9B4C A8                       .
        pla                                     ; 9B4D 68                       h
        sta     ($0C),y                         ; 9B4E 91 0C                    ..
BattlePartyServices_Branch_9B50:
        pla                                     ; 9B50 68                       h
        tay                                     ; 9B51 A8                       .
        iny                                     ; 9B52 C8                       .
        cpy     #$0A                            ; 9B53 C0 0A                    ..
        bne     BattlePartyServices_Branch_9B39 ; 9B55 D0 E2                    ..
        rts                                     ; 9B57 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9B58:
        lda     #$00                            ; 9B58 A9 00                    ..
        ldy     #$09                            ; 9B5A A0 09                    ..
BattlePartyServices_Branch_9B5C:
        sta     ($08),y                         ; 9B5C 91 08                    ..
        dey                                     ; 9B5E 88                       .
        bpl     BattlePartyServices_Branch_9B5C ; 9B5F 10 FB                    ..
        rts                                     ; 9B61 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9B62:
        pla                                     ; 9B62 68                       h
        sta     $6E0C                           ; 9B63 8D 0C 6E                 ..n
        pla                                     ; 9B66 68                       h
        sta     $6E0A                           ; 9B67 8D 0A 6E                 ..n
        jmp     BattlePartyServices_Entry_81B9  ; 9B6A 4C B9 81                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9B6D:
        lda     $6E0A                           ; 9B6D AD 0A 6E                 ..n
        pha                                     ; 9B70 48                       H
        lda     $6E0C                           ; 9B71 AD 0C 6E                 ..n
        pha                                     ; 9B74 48                       H
        jsr     BattlePartyServices_Entry_8498  ; 9B75 20 98 84                  ..
        bcc     BattlePartyServices_Branch_9B62 ; 9B78 90 E8                    ..
        lda     $6E0A                           ; 9B7A AD 0A 6E                 ..n
        ora     #$40                            ; 9B7D 09 40                    .@
        sta     $6E0A                           ; 9B7F 8D 0A 6E                 ..n
        jsr     BattlePartyServices_Entry_982B  ; 9B82 20 2B 98                  +.
        ldx     $72                             ; 9B85 A6 72                    .r
        dex                                     ; 9B87 CA                       .
        bmi     BattlePartyServices_Branch_9B62 ; 9B88 30 D8                    0.
        cpx     $6E                             ; 9B8A E4 6E                    .n
        bcc     BattlePartyServices_Branch_9B62 ; 9B8C 90 D4                    ..
        pla                                     ; 9B8E 68                       h
        sta     $6E0C                           ; 9B8F 8D 0C 6E                 ..n
        tay                                     ; 9B92 A8                       .
        pla                                     ; 9B93 68                       h
        sta     $6E0A                           ; 9B94 8D 0A 6E                 ..n
        pha                                     ; 9B97 48                       H
        lda     SavePartyCharacter1,y           ; 9B98 B9 6A 61                 .ja
        sta     $0F                             ; 9B9B 85 0F                    ..
        lda     #$00                            ; 9B9D A9 00                    ..
        sta     SavePartyCharacter1,y           ; 9B9F 99 6A 61                 .ja
        tsx                                     ; 9BA2 BA                       .
        txa                                     ; 9BA3 8A                       .
        sec                                     ; 9BA4 38                       8
        sbc     #$0A                            ; 9BA5 E9 0A                    ..
        tax                                     ; 9BA7 AA                       .
        txs                                     ; 9BA8 9A                       .
        inx                                     ; 9BA9 E8                       .
        stx     $08                             ; 9BAA 86 08                    ..
        lda     #$01                            ; 9BAC A9 01                    ..
        sta     $09                             ; 9BAE 85 09                    ..
        lda     #$80                            ; 9BB0 A9 80                    ..
        sta     $6E0A                           ; 9BB2 8D 0A 6E                 ..n
        jsr     BattlePartyServices_Entry_9ACD  ; 9BB5 20 CD 9A                  ..
        jsr     BattlePartyServices_Entry_9B58  ; 9BB8 20 58 9B                  X.
        jsr     BattlePartyServices_Entry_9AE0  ; 9BBB 20 E0 9A                  ..
        lda     $0F                             ; 9BBE A5 0F                    ..
        ldy     #$09                            ; 9BC0 A0 09                    ..
        sta     ($08),y                         ; 9BC2 91 08                    ..
        jsr     BattlePartyServices_Entry_9AC3  ; 9BC4 20 C3 9A                  ..
        jsr     BattlePartyServices_Entry_9B15  ; 9BC7 20 15 9B                  ..
        jsr     BattlePartyServices_Entry_9A90  ; 9BCA 20 90 9A                  ..
        lda     #$00                            ; 9BCD A9 00                    ..
        sta     $6E0A                           ; 9BCF 8D 0A 6E                 ..n
        jsr     BattlePartyServices_Entry_9C7C  ; 9BD2 20 7C 9C                  |.
        tsx                                     ; 9BD5 BA                       .
        txa                                     ; 9BD6 8A                       .
        clc                                     ; 9BD7 18                       .
        adc     #$0A                            ; 9BD8 69 0A                    i.
        tax                                     ; 9BDA AA                       .
        txs                                     ; 9BDB 9A                       .
        pla                                     ; 9BDC 68                       h
        sta     $6E0A                           ; 9BDD 8D 0A 6E                 ..n
        rts                                     ; 9BE0 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9BE1:
        lda     $6E0C                           ; 9BE1 AD 0C 6E                 ..n
        sta     $0F                             ; 9BE4 85 0F                    ..
        lda     $6E0A                           ; 9BE6 AD 0A 6E                 ..n
        pha                                     ; 9BE9 48                       H
        lda     #$40                            ; 9BEA A9 40                    .@
        sta     $6E0A                           ; 9BEC 8D 0A 6E                 ..n
        jsr     BattlePartyServices_Entry_982B  ; 9BEF 20 2B 98                  +.
        lda     $72                             ; 9BF2 A5 72                    .r
        cmp     #$04                            ; 9BF4 C9 04                    ..
        beq     BattlePartyServices_Branch_9C76 ; 9BF6 F0 7E                    .~
        jsr     BattlePartyServices_Entry_8498  ; 9BF8 20 98 84                  ..
        bcc     BattlePartyServices_Branch_9C76 ; 9BFB 90 79                    .y
        lda     $6F                             ; 9BFD A5 6F                    .o
        cmp     #$04                            ; 9BFF C9 04                    ..
        bcs     BattlePartyServices_Branch_9C76 ; 9C01 B0 73                    .s
        ldy     $0F                             ; 9C03 A4 0F                    ..
        lda     SavePartyCharacter1,y           ; 9C05 B9 6A 61                 .ja
        sta     $0E                             ; 9C08 85 0E                    ..
        lda     #$00                            ; 9C0A A9 00                    ..
        sta     SavePartyCharacter1,y           ; 9C0C 99 6A 61                 .ja
        lda     #$04                            ; 9C0F A9 04                    ..
        sta     $6E0C                           ; 9C11 8D 0C 6E                 ..n
        jsr     BattlePartyServices_Entry_8241  ; 9C14 20 41 82                  A.
        sty     $0C                             ; 9C17 84 0C                    ..
        tya                                     ; 9C19 98                       .
        clc                                     ; 9C1A 18                       .
        adc     $6F                             ; 9C1B 65 6F                    eo
        sta     $0D                             ; 9C1D 85 0D                    ..
        tsx                                     ; 9C1F BA                       .
        txa                                     ; 9C20 8A                       .
        sec                                     ; 9C21 38                       8
        sbc     #$0A                            ; 9C22 E9 0A                    ..
        tax                                     ; 9C24 AA                       .
        txs                                     ; 9C25 9A                       .
        inx                                     ; 9C26 E8                       .
        stx     $08                             ; 9C27 86 08                    ..
        lda     #$01                            ; 9C29 A9 01                    ..
        sta     $09                             ; 9C2B 85 09                    ..
        jsr     BattlePartyServices_Entry_9B58  ; 9C2D 20 58 9B                  X.
        jsr     BattlePartyServices_Entry_9AE0  ; 9C30 20 E0 9A                  ..
        ldy     $0C                             ; 9C33 A4 0C                    ..
        ldx     #$04                            ; 9C35 A2 04                    ..
        lda     #$00                            ; 9C37 A9 00                    ..
BattlePartyServices_Branch_9C39:
        sta     SavePartyCharacter1,y           ; 9C39 99 6A 61                 .ja
        iny                                     ; 9C3C C8                       .
        dex                                     ; 9C3D CA                       .
        bne     BattlePartyServices_Branch_9C39 ; 9C3E D0 F9                    ..
        lda     $0E                             ; 9C40 A5 0E                    ..
        ldy     $0D                             ; 9C42 A4 0D                    ..
        sta     SavePartyCharacter1,y           ; 9C44 99 6A 61                 .ja
        ldy     #$00                            ; 9C47 A0 00                    ..
        ldx     $0C                             ; 9C49 A6 0C                    ..
BattlePartyServices_Branch_9C4B:
        lda     ($08),y                         ; 9C4B B1 08                    ..
        bpl     BattlePartyServices_Branch_9C60 ; 9C4D 10 11                    ..
BattlePartyServices_Branch_9C4F:
        lda     SavePartyCharacter1,x           ; 9C4F BD 6A 61                 .ja
        bmi     BattlePartyServices_Branch_9C5D ; 9C52 30 09                    0.
        lda     ($08),y                         ; 9C54 B1 08                    ..
        sta     SavePartyCharacter1,x           ; 9C56 9D 6A 61                 .ja
        inx                                     ; 9C59 E8                       .
        iny                                     ; 9C5A C8                       .
        bne     BattlePartyServices_Branch_9C4B ; 9C5B D0 EE                    ..
BattlePartyServices_Branch_9C5D:
        inx                                     ; 9C5D E8                       .
        bne     BattlePartyServices_Branch_9C4F ; 9C5E D0 EF                    ..
BattlePartyServices_Branch_9C60:
        tsx                                     ; 9C60 BA                       .
        txa                                     ; 9C61 8A                       .
        clc                                     ; 9C62 18                       .
        adc     #$0A                            ; 9C63 69 0A                    i.
        tax                                     ; 9C65 AA                       .
        txs                                     ; 9C66 9A                       .
        jsr     BattlePartyServices_Entry_9ACD  ; 9C67 20 CD 9A                  ..
        jsr     BattlePartyServices_Entry_9A90  ; 9C6A 20 90 9A                  ..
        jsr     BattlePartyServices_Entry_9C7C  ; 9C6D 20 7C 9C                  |.
        pla                                     ; 9C70 68                       h
        sta     $6E0A                           ; 9C71 8D 0A 6E                 ..n
        sec                                     ; 9C74 38                       8
        rts                                     ; 9C75 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9C76:
        pla                                     ; 9C76 68                       h
        sta     $6E0A                           ; 9C77 8D 0A 6E                 ..n
        clc                                     ; 9C7A 18                       .
        rts                                     ; 9C7B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9C7C:
        lda     $0F                             ; 9C7C A5 0F                    ..
        pha                                     ; 9C7E 48                       H
        jsr     BattlePartyServices_Entry_8241  ; 9C7F 20 41 82                  A.
        bcc     BattlePartyServices_Branch_9CAD ; 9C82 90 29                    .)
        tya                                     ; 9C84 98                       .
        clc                                     ; 9C85 18                       .
        adc     #$03                            ; 9C86 69 03                    i.
        sta     $0F                             ; 9C88 85 0F                    ..
BattlePartyServices_Branch_9C8A:
        ldx     #$04                            ; 9C8A A2 04                    ..
BattlePartyServices_Branch_9C8C:
        lda     SavePartyCharacter1,y           ; 9C8C B9 6A 61                 .ja
        bmi     BattlePartyServices_Branch_9CA8 ; 9C8F 30 17                    0.
        tya                                     ; 9C91 98                       .
        pha                                     ; 9C92 48                       H
BattlePartyServices_Branch_9C93:
        lda     SavePartyCharacter2,y           ; 9C93 B9 6B 61                 .ka
        sta     SavePartyCharacter1,y           ; 9C96 99 6A 61                 .ja
        iny                                     ; 9C99 C8                       .
        cpy     $0F                             ; 9C9A C4 0F                    ..
        bne     BattlePartyServices_Branch_9C93 ; 9C9C D0 F5                    ..
        lda     #$00                            ; 9C9E A9 00                    ..
        sta     SavePartyCharacter1,y           ; 9CA0 99 6A 61                 .ja
        pla                                     ; 9CA3 68                       h
        tay                                     ; 9CA4 A8                       .
        dex                                     ; 9CA5 CA                       .
        bne     BattlePartyServices_Branch_9C8C ; 9CA6 D0 E4                    ..
BattlePartyServices_Branch_9CA8:
        iny                                     ; 9CA8 C8                       .
        cpy     $0F                             ; 9CA9 C4 0F                    ..
        bne     BattlePartyServices_Branch_9C8A ; 9CAB D0 DD                    ..
BattlePartyServices_Branch_9CAD:
        pla                                     ; 9CAD 68                       h
        sta     $0F                             ; 9CAE 85 0F                    ..
        rts                                     ; 9CB0 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9CB1:
        pha                                     ; 9CB1 48                       H
        txa                                     ; 9CB2 8A                       .
        pha                                     ; 9CB3 48                       H
        tya                                     ; 9CB4 98                       .
        pha                                     ; 9CB5 48                       H
        lda     $6E0A                           ; 9CB6 AD 0A 6E                 ..n
        pha                                     ; 9CB9 48                       H
        lda     #$00                            ; 9CBA A9 00                    ..
        sta     $6E0A                           ; 9CBC 8D 0A 6E                 ..n
        jsr     BattlePartyServices_Entry_982B  ; 9CBF 20 2B 98                  +.
        jsr     BattlePartyServices_Entry_8498  ; 9CC2 20 98 84                  ..
        bcc     BattlePartyServices_Branch_9CD6 ; 9CC5 90 0F                    ..
        lda     #$0A                            ; 9CC7 A9 0A                    ..
BattlePartyServices_Branch_9CC9:
        sec                                     ; 9CC9 38                       8
        sbc     $72                             ; 9CCA E5 72                    .r
        pla                                     ; 9CCC 68                       h
        sta     $6E0A                           ; 9CCD 8D 0A 6E                 ..n
        pla                                     ; 9CD0 68                       h
        tay                                     ; 9CD1 A8                       .
        pla                                     ; 9CD2 68                       h
        tax                                     ; 9CD3 AA                       .
        pla                                     ; 9CD4 68                       h
        rts                                     ; 9CD5 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9CD6:
        lda     #$04                            ; 9CD6 A9 04                    ..
        bne     BattlePartyServices_Branch_9CC9 ; 9CD8 D0 EF                    ..
BattlePartyServices_Entry_9CDA:
        sta     $6E0A                           ; 9CDA 8D 0A 6E                 ..n
BattlePartyServices_Entry_9CDD:
        txa                                     ; 9CDD 8A                       .
        pha                                     ; 9CDE 48                       H
        tya                                     ; 9CDF 98                       .
        pha                                     ; 9CE0 48                       H
        ldx     #$0F                            ; 9CE1 A2 0F                    ..
BattlePartyServices_Branch_9CE3:
        lda     $00,x                         ; 9CE3 B5 00                    ..
        pha                                     ; 9CE5 48                       H
        dex                                     ; 9CE6 CA                       .
        bpl     BattlePartyServices_Branch_9CE3 ; 9CE7 10 FA                    ..
        lda     #$2B                            ; 9CE9 A9 2B                    .+
        sta     $6E0B                           ; 9CEB 8D 0B 6E                 ..n
        jsr     BattlePartyServices_Entry_8196  ; 9CEE 20 96 81                  ..
        ldy     $6E0C                           ; 9CF1 AC 0C 6E                 ..n
        lda     SavePartyCharacter1,y           ; 9CF4 B9 6A 61                 .ja
        sta     $72                             ; 9CF7 85 72                    .r
        ldx     #$00                            ; 9CF9 A2 00                    ..
        stx     $00                           ; 9CFB 86 00                    ..
        jsr     BattlePartyServices_Entry_8241  ; 9CFD 20 41 82                  A.
BattlePartyServices_Branch_9D00:
        lda     SavePartyCharacter1,y           ; 9D00 B9 6A 61                 .ja
        beq     BattlePartyServices_Branch_9D11 ; 9D03 F0 0C                    ..
        cmp     $72                             ; 9D05 C5 72                    .r
        beq     BattlePartyServices_Branch_9D2F ; 9D07 F0 26                    .&
        iny                                     ; 9D09 C8                       .
        inx                                     ; 9D0A E8                       .
        inc     $00                           ; 9D0B E6 00                    ..
        cpx     #$04                            ; 9D0D E0 04                    ..
        bne     BattlePartyServices_Branch_9D00 ; 9D0F D0 EF                    ..
BattlePartyServices_Branch_9D11:
        jsr     BattlePartyServices_Entry_825F  ; 9D11 20 5F 82                  _.
        ldx     #$00                            ; 9D14 A2 00                    ..
BattlePartyServices_Branch_9D16:
        lda     SavePartyCharacter1,y           ; 9D16 B9 6A 61                 .ja
        cmp     $72                             ; 9D19 C5 72                    .r
        beq     BattlePartyServices_Branch_9D2F ; 9D1B F0 12                    ..
        iny                                     ; 9D1D C8                       .
        inx                                     ; 9D1E E8                       .
        inc     $00                           ; 9D1F E6 00                    ..
        cpx     #$0A                            ; 9D21 E0 0A                    ..
        bne     BattlePartyServices_Branch_9D16 ; 9D23 D0 F1                    ..
        lda     $6BDD                           ; 9D25 AD DD 6B                 ..k
        ora     #$80                            ; 9D28 09 80                    ..
        sta     $6BDD                           ; 9D2A 8D DD 6B                 ..k
        bne     BattlePartyServices_Branch_9D35 ; 9D2D D0 06                    ..
BattlePartyServices_Branch_9D2F:
        lda     $00                           ; 9D2F A5 00                    ..
        sta     $72                             ; 9D31 85 72                    .r
        ldx     #$00                            ; 9D33 A2 00                    ..
BattlePartyServices_Branch_9D35:
        pla                                     ; 9D35 68                       h
        sta     $00,x                         ; 9D36 95 00                    ..
        inx                                     ; 9D38 E8                       .
        cpx     #$10                            ; 9D39 E0 10                    ..
        bne     BattlePartyServices_Branch_9D35 ; 9D3B D0 F8                    ..
        pla                                     ; 9D3D 68                       h
        tay                                     ; 9D3E A8                       .
        pla                                     ; 9D3F 68                       h
        tax                                     ; 9D40 AA                       .
        lda     $72                             ; 9D41 A5 72                    .r
        rts                                     ; 9D43 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9D44:
        ldx     $76                             ; 9D44 A6 76                    .v
        lda     $72EA,x                         ; 9D46 BD EA 72                 ..r
        bpl     BattlePartyServices_Branch_9D65 ; 9D49 10 1A                    ..
        and     #$1F                            ; 9D4B 29 1F                    ).
        sta     $00                           ; 9D4D 85 00                    ..
        ldx     #$00                            ; 9D4F A2 00                    ..
        jsr     BattlePartyServices_Entry_8241  ; 9D51 20 41 82                  A.
        lda     #$04                            ; 9D54 A9 04                    ..
        jsr     BattlePartyServices_Entry_9D76  ; 9D56 20 76 9D                  v.
        bcs     BattlePartyServices_Branch_9D67 ; 9D59 B0 0C                    ..
        jsr     BattlePartyServices_Entry_825F  ; 9D5B 20 5F 82                  _.
        lda     #$0A                            ; 9D5E A9 0A                    ..
        jsr     BattlePartyServices_Entry_9D76  ; 9D60 20 76 9D                  v.
        bcs     BattlePartyServices_Branch_9D71 ; 9D63 B0 0C                    ..
BattlePartyServices_Branch_9D65:
        clc                                     ; 9D65 18                       .
        rts                                     ; 9D66 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9D67:
        stx     $72                             ; 9D67 86 72                    .r
        lda     #$40                            ; 9D69 A9 40                    .@
        sta     $00                           ; 9D6B 85 00                    ..
        bit     $00                           ; 9D6D 24 00                    $.
        sec                                     ; 9D6F 38                       8
        rts                                     ; 9D70 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9D71:
        stx     $72                             ; 9D71 86 72                    .r
        clv                                     ; 9D73 B8                       .
        sec                                     ; 9D74 38                       8
        rts                                     ; 9D75 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9D76:
        sty     $01                             ; 9D76 84 01                    ..
        clc                                     ; 9D78 18                       .
        adc     $01                             ; 9D79 65 01                    e.
        sta     $01                             ; 9D7B 85 01                    ..
BattlePartyServices_Branch_9D7D:
        lda     SavePartyCharacter1,y           ; 9D7D B9 6A 61                 .ja
        bpl     BattlePartyServices_Branch_9D89 ; 9D80 10 07                    ..
        and     #$1F                            ; 9D82 29 1F                    ).
        cmp     $00                           ; 9D84 C5 00                    ..
        beq     BattlePartyServices_Branch_9D90 ; 9D86 F0 08                    ..
        inx                                     ; 9D88 E8                       .
BattlePartyServices_Branch_9D89:
        iny                                     ; 9D89 C8                       .
        cpy     $01                             ; 9D8A C4 01                    ..
        bcc     BattlePartyServices_Branch_9D7D ; 9D8C 90 EF                    ..
        clc                                     ; 9D8E 18                       .
        rts                                     ; 9D8F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_9D90:
        sec                                     ; 9D90 38                       8
        rts                                     ; 9D91 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9D92:
        jsr     BattlePartyServices_Entry_835C  ; 9D92 20 5C 83                  \.
        bcc     BattlePartyServices_Entry_9D9C  ; 9D95 90 05                    ..
        txa                                     ; 9D97 8A                       .
        lsr     a                               ; 9D98 4A                       J
        sta     $72                             ; 9D99 85 72                    .r
        sec                                     ; 9D9B 38                       8
BattlePartyServices_Entry_9D9C:
        rts                                     ; 9D9C 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9D9D:
        sta     $6E                             ; 9D9D 85 6E                    .n
        ldx     #$00                            ; 9D9F A2 00                    ..
BattlePartyServices_Branch_9DA1:
        lda     $00,x                         ; 9DA1 B5 00                    ..
        pha                                     ; 9DA3 48                       H
        inx                                     ; 9DA4 E8                       .
        cpx     #$10                            ; 9DA5 E0 10                    ..
        bne     BattlePartyServices_Branch_9DA1 ; 9DA7 D0 F8                    ..
        lda     #$2B                            ; 9DA9 A9 2B                    .+
        sta     $6E0B                           ; 9DAB 8D 0B 6E                 ..n
        jsr     BattlePartyServices_Entry_8196  ; 9DAE 20 96 81                  ..
        ldx     #$0F                            ; 9DB1 A2 0F                    ..
BattlePartyServices_Branch_9DB3:
        pla                                     ; 9DB3 68                       h
        sta     $00,x                         ; 9DB4 95 00                    ..
        dex                                     ; 9DB6 CA                       .
        bpl     BattlePartyServices_Branch_9DB3 ; 9DB7 10 FA                    ..
        ldy     $6E0C                           ; 9DB9 AC 0C 6E                 ..n
        lda     SavePartyCharacter1,y           ; 9DBC B9 6A 61                 .ja
        and     #$7F                            ; 9DBF 29 7F                    ).
        cmp     #$09                            ; 9DC1 C9 09                    ..
        rts                                     ; 9DC3 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9DC4:
        rts                                     ; 9DC4 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9DC5:
        rts                                     ; 9DC5 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9DC6:
        rts                                     ; 9DC6 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9DC7:
        sta     $6F                             ; 9DC7 85 6F                    .o
        brk                                     ; 9DC9 00                       .
        db   $62,$43,$40                     ; 9DCA 62 43 40                 bC@
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_9DCD:
        sta     $71                             ; 9DCD 85 71                    .q
        ldx     $71                             ; 9DCF A6 71                    .q
        dex                                     ; 9DD1 CA                       .
        lda     #$00                            ; 9DD2 A9 00                    ..
BattlePartyServices_Branch_9DD4:
        pha                                     ; 9DD4 48                       H
        brk                                     ; 9DD5 00                       .
        db   $46,$53                         ; 9DD6 46 53                    FS
; ----------------------------------------------------------------------------
        pla                                     ; 9DD8 68                       h
        rol     a                               ; 9DD9 2A                       *
        dex                                     ; 9DDA CA                       .
        bpl     BattlePartyServices_Branch_9DD4 ; 9DDB 10 F7                    ..
        sta     $70                             ; 9DDD 85 70                    .p
        rts                                     ; 9DDF 60                       `
; ----------------------------------------------------------------------------
        db   $02,$07,$0C,$26,$14,$1C,$28,$32 ; 9DE0 02 07 0C 26 14 1C 28 32  ...&..(2
        db   $15,$0E,$21,$12,$23,$16,$82,$00 ; 9DE8 15 0E 21 12 23 16 82 00  ..!.#...
        db   $37,$1D,$46,$63,$41,$5A,$05,$23 ; 9DF0 37 1D 46 63 41 5A 05 23  7.FcAZ.#
        db   $3C,$18,$3C,$4B,$64,$32,$3F,$78 ; 9DF8 3C 18 3C 4B 64 32 3F 78  <.<Kd2?x
        db   $05,$6E,$21,$2D,$04,$07,$0C,$12 ; 9E00 05 6E 21 2D 04 07 0C 12  .n!-....
        db   $1E,$20,$23,$0A,$08,$19,$5F,$16 ; 9E08 1E 20 23 0A 08 19 5F 16  . #..._.
        db   $0E,$28,$2D,$1C,$26,$29,$25,$46 ; 9E10 0E 28 2D 1C 26 29 25 46  .(-.&)%F
        db   $32,$21,$31,$2D,$3C,$04,$07,$0C ; 9E18 32 21 31 2D 3C 04 07 0C  2!1-<...
        db   $28,$2D,$32,$1E,$37,$3C,$02,$06 ; 9E20 28 2D 32 1E 37 3C 02 06  (-2.7<..
        db   $10,$19,$08,$1E,$C8,$0C,$0F,$32 ; 9E28 10 19 08 1E C8 0C 0F 32  .......2
Bank10_BattleActionHandlerPointers:
        db   $E9                             ; 9E30 E9                       .
        db   $84,$D5,$86,$5B,$86,$17,$87,$B1 ; 9E31 84 D5 86 5B 86 17 87 B1  ...[....
        db   $86,$2E,$87,$88,$87,$E9,$84,$F6 ; 9E39 86 2E 87 88 87 E9 84 F6  ........
        db   $86,$60,$86,$21,$87,$AD,$86,$A1 ; 9E41 86 60 86 21 87 AD 86 A1  .`.!....
        db   $87,$AE,$87,$63,$87,$51,$85,$2D ; 9E49 87 AE 87 63 87 51 85 2D  ...c.Q.-
        db   $85,$69,$86,$0C,$85,$69,$86,$01 ; 9E51 85 69 86 0C 85 69 86 01  .i...i..
        db   $96,$0C,$96,$08,$96,$BB,$85,$01 ; 9E59 96 0C 96 08 96 BB 85 01  ........
        db   $96,$02,$96,$08,$96,$FE,$85,$01 ; 9E61 96 02 96 08 96 FE 85 01  ........
        db   $96,$02,$96,$08,$96,$48,$85,$69 ; 9E69 96 02 96 08 96 48 85 69  .....H.i
        db   $86,$48,$85,$69,$86,$3F,$85,$69 ; 9E71 86 48 85 69 86 3F 85 69  .H.i.?.i
        db   $86,$48,$85,$C4,$9D,$7B,$86,$C5 ; 9E79 86 48 85 C4 9D 7B 86 C5  .H...{..
        db   $9D,$E8,$87,$6A,$85,$15,$88,$3B ; 9E81 9D E8 87 6A 85 15 88 3B  ...j...;
        db   $88,$73,$88,$79,$88,$8D,$88,$B9 ; 9E89 88 73 88 79 88 8D 88 B9  .s.y....
        db   $88,$BF,$88,$0C,$89,$66,$89,$6A ; 9E91 88 BF 88 0C 89 66 89 6A  .....f.j
        db   $89,$6E,$89,$72,$89,$CD,$89,$D1 ; 9E99 89 6E 89 72 89 CD 89 D1  .n.r....
        db   $89,$D5,$89,$D9,$89,$25,$8A,$E0 ; 9EA1 89 D5 89 D9 89 25 8A E0  .....%..
        db   $8E,$30,$8F,$5C,$8F,$79,$8F,$F5 ; 9EA9 8E 30 8F 5C 8F 79 8F F5  .0.\.y..
        db   $8F,$2B,$90,$13,$96,$4A,$96,$60 ; 9EB1 8F 2B 90 13 96 4A 96 60  .+...J.`
        db   $96,$E4,$96,$31,$97,$DC,$94,$8A ; 9EB9 96 E4 96 31 97 DC 94 8A  ...1....
        db   $95,$40,$95,$E9,$84,$8D,$86,$B4 ; 9EC1 95 40 95 E9 84 8D 86 B4  .@......
        db   $86,$E9,$84,$9B,$87,$E9,$84,$C6 ; 9EC9 86 E9 84 9B 87 E9 84 C6  ........
        db   $9D,$F7,$92,$1C,$93,$09,$94,$26 ; 9ED1 9D F7 92 1C 93 09 94 26  .......&
        db   $94,$D0,$94,$83,$91,$BF,$91,$1A ; 9ED9 94 D0 94 83 91 BF 91 1A  ........
        db   $92,$4A,$92,$89,$92,$AC,$92,$C5 ; 9EE1 92 4A 92 89 92 AC 92 C5  .J......
        db   $92,$DF,$92,$B5,$99,$6D,$9B,$E1 ; 9EE9 92 DF 92 B5 99 6D 9B E1  .....m..
        db   $9B,$9C,$9D,$2B,$98,$49,$98,$F7 ; 9EF1 9B 9C 9D 2B 98 49 98 F7  ...+.I..
        db   $98,$36,$99,$6C,$99,$44,$9D,$92 ; 9EF9 98 36 99 6C 99 44 9D 92  .6.l.D..
        db   $9D,$C1,$97,$E2,$92,$B9,$87,$6D ; 9F01 9D C1 97 E2 92 B9 87 6D  .......m
        db   $86,$D3,$90,$E9,$90,$07,$92,$EA ; 9F09 86 D3 90 E9 90 07 92 EA  ........
        db   $84                             ; 9F11 84                       .
        db   $07,$09,$07,$89,$07,$49,$49,$08 ; 9F12 07 09 07 89 07 49 49 08  .....II.
        db   $0A,$08,$0A,$08,$48,$48,$4A,$00 ; 9F1A 0A 08 0A 08 48 48 4A 00  ....HHJ.
        db   $01,$01,$02,$82,$12,$12,$12,$01 ; 9F22 01 01 02 82 12 12 12 01  ........
        db   $13,$13,$13,$02,$14,$14,$14,$83 ; 9F2A 13 13 13 02 14 14 14 83  ........
        db   $83,$84,$84,$85,$85,$8B,$8B,$8B ; 9F32 83 84 84 85 85 8B 8B 8B  ........
        db   $18,$02,$0F,$02,$8D,$8D,$8D,$8D ; 9F3A 18 02 0F 02 8D 8D 8D 8D  ........
        db   $8D,$8D,$AD,$AD,$AD,$AD,$AD,$8D ; 9F42 8D 8D AD AD AD AD AD 8D  ........
        db   $8D,$8D,$8D,$0D,$0E,$0E,$0E,$0E ; 9F4A 8D 8D 8D 0D 0E 0E 0E 0E  ........
        db   $0E,$0E,$06,$27,$26,$26,$06,$4C ; 9F52 0E 0E 06 27 26 26 06 4C  ...'&&.L
        db   $4C,$4C,$15,$15,$15,$16,$16,$17 ; 9F5A 4C 4C 15 15 15 16 16 17  LL......
        db   $17,$22,$38,$22,$38,$38,$18,$18 ; 9F62 17 22 38 22 38 38 18 18  ."8"88..
        db   $18,$18,$18,$18,$18,$18,$38,$22 ; 9F6A 18 18 18 18 18 18 38 22  ......8"
        db   $22,$18,$18,$18,$18,$18,$18,$18 ; 9F72 22 18 18 18 18 18 18 18  ".......
        db   $02,$06,$18,$09,$00,$0E,$0E,$18 ; 9F7A 02 06 18 09 00 0E 0E 18  ........
        db   $02                             ; 9F82 02                       .
        db   $01                             ; 9F83 01                       .
        db   $60,$1F,$60,$3D,$60,$5B,$60,$79 ; 9F84 60 1F 60 3D 60 5B 60 79  `.`=`[`y
        db   $60,$97,$60,$B5,$60,$D3,$60,$F1 ; 9F8C 60 97 60 B5 60 D3 60 F1  `.`.`.`.
        db   $60,$0F,$61,$15,$61,$1B,$61,$21 ; 9F94 60 0F 61 15 61 1B 61 21  `.a.a.a!
        db   $61,$27,$61,$2D,$61,$33,$61,$39 ; 9F9C 61 27 61 2D 61 33 61 39  a'a-a3a9
        db   $61,$3F,$61,$45,$61,$4B,$61,$51 ; 9FA4 61 3F 61 45 61 4B 61 51  a?aEaKaQ
        db   $61                             ; 9FAC 61                       a
        db   $10                             ; 9FAD 10                       .
        db   $72,$1A,$72,$24,$72,$2E,$72,$38 ; 9FAE 72 1A 72 24 72 2E 72 38  r.r$r.r8
        db   $72,$42,$72,$4C,$72,$56,$72,$60 ; 9FB6 72 42 72 4C 72 56 72 60  rBrLrVr`
        db   $72,$6A,$72                     ; 9FBE 72 6A 72                 rjr
        db   $05,$06,$07,$08                 ; 9FC1 05 06 07 08              ....
        db   $09                             ; 9FC5 09                       .
        db   $0A,$00,$01,$03,$0C,$0E,$10,$00 ; 9FC6 0A 00 01 03 0C 0E 10 00  ........
        db   $13,$1B,$00,$05,$0B,$00,$01,$03 ; 9FCE 13 1B 00 05 0B 00 01 03  ........
        db   $01,$01,$01,$01,$01,$01,$01,$02 ; 9FD6 01 01 01 01 01 01 01 02  ........
        db   $02,$02,$02,$03,$03,$08,$03,$04 ; 9FDE 02 02 02 03 03 08 03 04  ........
        db   $01,$01,$01,$02,$02,$03,$01,$01 ; 9FE6 01 01 01 02 02 03 01 01  ........
        db   $0A,$57,$61,$5B,$61,$5A,$61,$FF ; 9FEE 0A 57 61 5B 61 5A 61 FF  .Wa[aZa.
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$85 ; 9FF6 FF FF FF FF FF FF FF 85  ........
        db   $AD,$BE,$C6,$FF,$FF,$FF,$FF,$99 ; 9FFE AD BE C6 FF FF FF FF 99  ........
        db   $A6,$BD,$FF,$FF,$FF,$FF,$FF,$85 ; A006 A6 BD FF FF FF FF FF 85  ........
        db   $AD,$BD,$FF,$FF,$FF,$FF,$FF,$85 ; A00E AD BD FF FF FF FF FF 85  ........
        db   $AD,$BE,$C6,$FF,$FF,$FF,$FF,$98 ; A016 AD BE C6 FF FF FF FF 98  ........
        db   $B3,$C7,$FF,$FF,$FF,$FF,$FF,$90 ; A01E B3 C7 FF FF FF FF FF 90  ........
        db   $B5,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; A026 B5 FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF     ; A02E FF FF FF FF FF FF FF     .......
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A035:
        sta     $6E11                           ; A035 8D 11 6E                 ..n
        lda     #$00                            ; A038 A9 00                    ..
        sta     $6E12                           ; A03A 8D 12 6E                 ..n
        sta     $6E13                           ; A03D 8D 13 6E                 ..n
        sta     $6E14                           ; A040 8D 14 6E                 ..n
BattlePartyServices_Branch_A043:
        lsr     $6E11                           ; A043 4E 11 6E                 N.n
        bcc     BattlePartyServices_Branch_A05E ; A046 90 16                    ..
        lda     $00,x                         ; A048 B5 00                    ..
        clc                                     ; A04A 18                       .
        adc     $6E12                           ; A04B 6D 12 6E                 m.n
        sta     $6E12                           ; A04E 8D 12 6E                 ..n
        lda     $01,x                           ; A051 B5 01                    ..
        adc     $6E13                           ; A053 6D 13 6E                 m.n
        sta     $6E13                           ; A056 8D 13 6E                 ..n
        bcc     BattlePartyServices_Branch_A05E ; A059 90 03                    ..
        inc     $6E14                           ; A05B EE 14 6E                 ..n
BattlePartyServices_Branch_A05E:
        asl     $00,x                         ; A05E 16 00                    ..
        rol     $01,x                           ; A060 36 01                    6.
        lda     $6E11                           ; A062 AD 11 6E                 ..n
        bne     BattlePartyServices_Branch_A043 ; A065 D0 DC                    ..
        lda     $6E12                           ; A067 AD 12 6E                 ..n
        sta     $00,x                         ; A06A 95 00                    ..
        lda     $6E13                           ; A06C AD 13 6E                 ..n
        sta     $01,x                           ; A06F 95 01                    ..
        lda     $6E14                           ; A071 AD 14 6E                 ..n
        sta     $02,x                           ; A074 95 02                    ..
        rts                                     ; A076 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A077:
        php                                     ; A077 08                       .
        pha                                     ; A078 48                       H
        txa                                     ; A079 8A                       .
        pha                                     ; A07A 48                       H
        tya                                     ; A07B 98                       .
        pha                                     ; A07C 48                       H
        ldy     $6E0B                           ; A07D AC 0B 6E                 ..n
        lda     $9F12,y                         ; A080 B9 12 9F                 ...
        sta     $0F                             ; A083 85 0F                    ..
        and     #$20                            ; A085 29 20                    )
        beq     BattlePartyServices_Branch_A107 ; A087 F0 7E                    .~
        ldy     $6E0C                           ; A089 AC 0C 6E                 ..n
        jsr     BattlePartyServices_Entry_8301  ; A08C 20 01 83                  ..
        lda     $6E0C                           ; A08F AD 0C 6E                 ..n
        jsr     BattlePartyServices_Entry_A19E  ; A092 20 9E A1                  ..
        tax                                     ; A095 AA                       .
        lda     $0F                             ; A096 A5 0F                    ..
        and     #$1F                            ; A098 29 1F                    ).
        cmp     #$18                            ; A09A C9 18                    ..
        jmp     BattlePartyServices_Branch_A0C4 ; A09C 4C C4 A0                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A09F:
        cmp     #$02                            ; A09F C9 02                    ..
        beq     BattlePartyServices_Branch_A0C4 ; A0A1 F0 21                    .!
        ldy     $0E                             ; A0A3 A4 0E                    ..
        cpy     #$04                            ; A0A5 C0 04                    ..
        bcs     BattlePartyServices_Branch_A107 ; A0A7 B0 5E                    .^
        cmp     #$0D                            ; A0A9 C9 0D                    ..
        beq     BattlePartyServices_Branch_A10E ; A0AB F0 61                    .a
        cmp     #$06                            ; A0AD C9 06                    ..
        beq     BattlePartyServices_Branch_A104 ; A0AF F0 53                    .S
        cmp     #$07                            ; A0B1 C9 07                    ..
        beq     BattlePartyServices_Branch_A104 ; A0B3 F0 4F                    .O
        lda     $6BDD                           ; A0B5 AD DD 6B                 ..k
        ora     #$80                            ; A0B8 09 80                    ..
        sta     $6BDD                           ; A0BA 8D DD 6B                 ..k
        jmp     BattlePartyServices_Branch_A107 ; A0BD 4C 07 A1                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A0C0:
        jsr     BattlePartyServices_Entry_A0CA  ; A0C0 20 CA A0                  ..
        rts                                     ; A0C3 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A0C4:
        jsr     BattlePartyServices_Entry_A0CA  ; A0C4 20 CA A0                  ..
        jmp     BattlePartyServices_Branch_A107 ; A0C7 4C 07 A1                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A0CA:
        lda     $6E0A                           ; A0CA AD 0A 6E                 ..n
        pha                                     ; A0CD 48                       H
        lda     #$40                            ; A0CE A9 40                    .@
        sta     $6E0A                           ; A0D0 8D 0A 6E                 ..n
        jsr     BattlePartyServices_Entry_A14E  ; A0D3 20 4E A1                  N.
        jsr     BattlePartyServices_Entry_8241  ; A0D6 20 41 82                  A.
        ldx     #$04                            ; A0D9 A2 04                    ..
BattlePartyServices_Branch_A0DB:
        lda     SavePartyCharacter1,y           ; A0DB B9 6A 61                 .ja
        bpl     BattlePartyServices_Branch_A0FB ; A0DE 10 1B                    ..
        sty     $6E0C                           ; A0E0 8C 0C 6E                 ..n
        txa                                     ; A0E3 8A                       .
        pha                                     ; A0E4 48                       H
        tya                                     ; A0E5 98                       .
        pha                                     ; A0E6 48                       H
        tya                                     ; A0E7 98                       .
        jsr     BattlePartyServices_Entry_A19E  ; A0E8 20 9E A1                  ..
        jsr     BattlePartyServices_Entry_8301  ; A0EB 20 01 83                  ..
        jsr     BattlePartyServices_Entry_A164  ; A0EE 20 64 A1                  d.
        jsr     BattlePartyServices_Entry_A129  ; A0F1 20 29 A1                  ).
        jsr     BattlePartyServices_Entry_A114  ; A0F4 20 14 A1                  ..
        pla                                     ; A0F7 68                       h
        tay                                     ; A0F8 A8                       .
        pla                                     ; A0F9 68                       h
        tax                                     ; A0FA AA                       .
BattlePartyServices_Branch_A0FB:
        iny                                     ; A0FB C8                       .
        dex                                     ; A0FC CA                       .
        bne     BattlePartyServices_Branch_A0DB ; A0FD D0 DC                    ..
        pla                                     ; A0FF 68                       h
        sta     $6E0A                           ; A100 8D 0A 6E                 ..n
        rts                                     ; A103 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A104:
        jsr     BattlePartyServices_Entry_A129  ; A104 20 29 A1                  ).
BattlePartyServices_Branch_A107:
        pla                                     ; A107 68                       h
        tay                                     ; A108 A8                       .
        pla                                     ; A109 68                       h
        tax                                     ; A10A AA                       .
        pla                                     ; A10B 68                       h
        plp                                     ; A10C 28                       (
        rts                                     ; A10D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A10E:
        jsr     BattlePartyServices_Entry_A164  ; A10E 20 64 A1                  d.
        jmp     BattlePartyServices_Branch_A107 ; A111 4C 07 A1                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A114:
        ldy     $6E0C                           ; A114 AC 0C 6E                 ..n
        lda     SavePartyCharacter1,y           ; A117 B9 6A 61                 .ja
        cmp     #$88                            ; A11A C9 88                    ..
        bcc     BattlePartyServices_Branch_A128 ; A11C 90 0A                    ..
        ldx     $0E                             ; A11E A6 0E                    ..
        lda     $6BE7,x                         ; A120 BD E7 6B                 ..k
        ora     #$10                            ; A123 09 10                    ..
        sta     $6BE7,x                         ; A125 9D E7 6B                 ..k
BattlePartyServices_Branch_A128:
        rts                                     ; A128 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A129:
        ldy     #$00                            ; A129 A0 00                    ..
        lda     ($79),y                         ; A12B B1 79                    .y
        asl     a                               ; A12D 0A                       .
        asl     a                               ; A12E 0A                       .
        asl     a                               ; A12F 0A                       .
        php                                     ; A130 08                       .
        lda     ($79),y                         ; A131 B1 79                    .y
        and     #$C0                            ; A133 29 C0                    ).
        lsr     a                               ; A135 4A                       J
        lsr     a                               ; A136 4A                       J
        plp                                     ; A137 28                       (
        rol     a                               ; A138 2A                       *
        eor     #$40                            ; A139 49 40                    I@
        sta     $0D                             ; A13B 85 0D                    ..
        lda     $6BE7,x                         ; A13D BD E7 6B                 ..k
        and     #$9E                            ; A140 29 9E                    ).
        ora     $0D                             ; A142 05 0D                    ..
        bpl     BattlePartyServices_Branch_A148 ; A144 10 02                    ..
        ora     #$40                            ; A146 09 40                    .@
BattlePartyServices_Branch_A148:
        ldx     $0E                             ; A148 A6 0E                    ..
        sta     $6BE7,x                         ; A14A 9D E7 6B                 ..k
        rts                                     ; A14D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A14E:
        jsr     BattlePartyServices_Entry_8241  ; A14E 20 41 82                  A.
        ldx     #$00                            ; A151 A2 00                    ..
BattlePartyServices_Branch_A153:
        lda     SavePartyCharacter1,y           ; A153 B9 6A 61                 .ja
        eor     #$80                            ; A156 49 80                    I.
        and     #$80                            ; A158 29 80                    ).
        sta     $6BE7,x                         ; A15A 9D E7 6B                 ..k
        iny                                     ; A15D C8                       .
        inx                                     ; A15E E8                       .
        cpx     #$04                            ; A15F E0 04                    ..
        bne     BattlePartyServices_Branch_A153 ; A161 D0 F0                    ..
        rts                                     ; A163 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A164:
        ldx     #$00                            ; A164 A2 00                    ..
        stx     $0D                             ; A166 86 0D                    ..
BattlePartyServices_Branch_A168:
        lda     $A199,x                         ; A168 BD 99 A1                 ...
        cmp     #$FF                            ; A16B C9 FF                    ..
        beq     BattlePartyServices_Branch_A18C ; A16D F0 1D                    ..
        ora     #$80                            ; A16F 09 80                    ..
        sta     $76                             ; A171 85 76                    .v
        ldy     #$13                            ; A173 A0 13                    ..
BattlePartyServices_Branch_A175:
        lda     ($79),y                         ; A175 B1 79                    .y
        cmp     $76                             ; A177 C5 76                    .v
        beq     BattlePartyServices_Branch_A182 ; A179 F0 07                    ..
        iny                                     ; A17B C8                       .
        cpy     #$1B                            ; A17C C0 1B                    ..
        bne     BattlePartyServices_Branch_A175 ; A17E D0 F5                    ..
        beq     BattlePartyServices_Branch_A189 ; A180 F0 07                    ..
BattlePartyServices_Branch_A182:
        lda     $A19C,x                         ; A182 BD 9C A1                 ...
        ora     $0D                             ; A185 05 0D                    ..
        sta     $0D                             ; A187 85 0D                    ..
BattlePartyServices_Branch_A189:
        inx                                     ; A189 E8                       .
        bne     BattlePartyServices_Branch_A168 ; A18A D0 DC                    ..
BattlePartyServices_Branch_A18C:
        ldx     $0E                             ; A18C A6 0E                    ..
        lda     $6BE7,x                         ; A18E BD E7 6B                 ..k
        and     #$F1                            ; A191 29 F1                    ).
        ora     $0D                             ; A193 05 0D                    ..
        sta     $6BE7,x                         ; A195 9D E7 6B                 ..k
        rts                                     ; A198 60                       `
; ----------------------------------------------------------------------------
        db   $3A,$4E,$FF                     ; A199 3A 4E FF                 :N.
        db   $04,$08                         ; A19C 04 08                    ..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A19E:
        bit     SaveGameStateFlags              ; A19E 2C 8E 61                 ,.a
        bpl     BattlePartyServices_Branch_A1A6 ; A1A1 10 03                    ..
        sec                                     ; A1A3 38                       8
        sbc     #$04                            ; A1A4 E9 04                    ..
BattlePartyServices_Branch_A1A6:
        bit     SaveGameStateFlags              ; A1A6 2C 8E 61                 ,.a
        bvc     BattlePartyServices_Branch_A1AE ; A1A9 50 03                    P.
        sec                                     ; A1AB 38                       8
        sbc     #$1C                            ; A1AC E9 1C                    ..
BattlePartyServices_Branch_A1AE:
        cmp     #$04                            ; A1AE C9 04                    ..
        bcc     BattlePartyServices_Branch_A1BC ; A1B0 90 0A                    ..
        sbc     #$04                            ; A1B2 E9 04                    ..
        bit     SaveGameStateFlags              ; A1B4 2C 8E 61                 ,.a
        bpl     BattlePartyServices_Branch_A1BC ; A1B7 10 03                    ..
        sec                                     ; A1B9 38                       8
        sbc     #$06                            ; A1BA E9 06                    ..
BattlePartyServices_Branch_A1BC:
        sta     $0E                             ; A1BC 85 0E                    ..
        rts                                     ; A1BE 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A1BF:
        sta     $8A                             ; A1BF 85 8A                    ..
        lda     #$00                            ; A1C1 A9 00                    ..
        sta     $8B                             ; A1C3 85 8B                    ..
        txa                                     ; A1C5 8A                       .
        pha                                     ; A1C6 48                       H
        jsr     BattlePartyServices_Entry_A23D  ; A1C7 20 3D A2                  =.
        ldx     #$8A                            ; A1CA A2 8A                    ..
        jsr     MultiplyPointerWord             ; A1CC 20 27 C8                  '.
        pla                                     ; A1CF 68                       h
        tax                                     ; A1D0 AA                       .
        lda     $8B                             ; A1D1 A5 8B                    ..
        rts                                     ; A1D3 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A1D4:
        lda     $01,x                           ; A1D4 B5 01                    ..
        bne     BattlePartyServices_Branch_A1E0 ; A1D6 D0 08                    ..
        lda     $00,x                         ; A1D8 B5 00                    ..
        jsr     BattlePartyServices_Entry_A1BF  ; A1DA 20 BF A1                  ..
        sta     $00,x                         ; A1DD 95 00                    ..
        rts                                     ; A1DF 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A1E0:
        lda     $01,x                           ; A1E0 B5 01                    ..
        clc                                     ; A1E2 18                       .
        adc     #$01                            ; A1E3 69 01                    i.
        jsr     BattlePartyServices_Entry_A1BF  ; A1E5 20 BF A1                  ..
        cmp     $01,x                           ; A1E8 D5 01                    ..
        beq     BattlePartyServices_Branch_A1F4 ; A1EA F0 08                    ..
        sta     $01,x                           ; A1EC 95 01                    ..
BattlePartyServices_Branch_A1EE:
        jsr     BattlePartyServices_Entry_A23D  ; A1EE 20 3D A2                  =.
        sta     $00,x                         ; A1F1 95 00                    ..
        rts                                     ; A1F3 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A1F4:
        lda     $00,x                         ; A1F4 B5 00                    ..
        cmp     #$FF                            ; A1F6 C9 FF                    ..
        beq     BattlePartyServices_Branch_A1EE ; A1F8 F0 F4                    ..
        adc     #$01                            ; A1FA 69 01                    i.
        jsr     BattlePartyServices_Entry_A1BF  ; A1FC 20 BF A1                  ..
        sta     $00,x                         ; A1FF 95 00                    ..
        rts                                     ; A201 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A202:
        lda     #$1F                            ; A202 A9 1F                    ..
        sta     $0F                             ; A204 85 0F                    ..
        ldx     #$10                            ; A206 A2 10                    ..
        bne     BattlePartyServices_Branch_A210 ; A208 D0 06                    ..
BattlePartyServices_Entry_A20A:
        lda     #$0F                            ; A20A A9 0F                    ..
        sta     $0F                             ; A20C 85 0F                    ..
        ldx     #$20                            ; A20E A2 20                    .
BattlePartyServices_Branch_A210:
        txa                                     ; A210 8A                       .
        pha                                     ; A211 48                       H
        stx     $8A                             ; A212 86 8A                    ..
        lsr     $8A                             ; A214 46 8A                    F.
        lda     #$00                            ; A216 A9 00                    ..
        sta     $8B                             ; A218 85 8B                    ..
BattlePartyServices_Branch_A21A:
        jsr     BattlePartyServices_Entry_A23D  ; A21A 20 3D A2                  =.
        and     $0F                             ; A21D 25 0F                    %.
        clc                                     ; A21F 18                       .
        adc     $8A                             ; A220 65 8A                    e.
        sta     $8A                             ; A222 85 8A                    ..
        bcc     BattlePartyServices_Branch_A228 ; A224 90 02                    ..
        inc     $8B                             ; A226 E6 8B                    ..
BattlePartyServices_Branch_A228:
        dex                                     ; A228 CA                       .
        bne     BattlePartyServices_Branch_A21A ; A229 D0 EF                    ..
        pla                                     ; A22B 68                       h
        tax                                     ; A22C AA                       .
        lda     $8A                             ; A22D A5 8A                    ..
        sec                                     ; A22F 38                       8
        sbc     #$80                            ; A230 E9 80                    ..
        sta     $8A                             ; A232 85 8A                    ..
        lda     $8B                             ; A234 A5 8B                    ..
        sbc     #$00                            ; A236 E9 00                    ..
        bne     BattlePartyServices_Branch_A210 ; A238 D0 D6                    ..
        sta     $8B                             ; A23A 85 8B                    ..
        rts                                     ; A23C 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A23D:
        jmp     UpperFixedEngine_Entry_C891     ; A23D 4C 91 C8                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A240:
        and     #$0F                            ; A240 29 0F                    ).
        sta     $0F                             ; A242 85 0F                    ..
        beq     BattlePartyServices_Branch_A252 ; A244 F0 0C                    ..
        txa                                     ; A246 8A                       .
        pha                                     ; A247 48                       H
        ldx     #$04                            ; A248 A2 04                    ..
        jsr     BattlePartyServices_Entry_A268  ; A24A 20 68 A2                  h.
        pla                                     ; A24D 68                       h
        tax                                     ; A24E AA                       .
        lda     $0F                             ; A24F A5 0F                    ..
        rts                                     ; A251 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A252:
        clc                                     ; A252 18                       .
        lda     #$00                            ; A253 A9 00                    ..
        rts                                     ; A255 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A256:
        sta     $0F                             ; A256 85 0F                    ..
        lda     $0F                             ; A258 A5 0F                    ..
        beq     BattlePartyServices_Branch_A252 ; A25A F0 F6                    ..
        txa                                     ; A25C 8A                       .
        pha                                     ; A25D 48                       H
        ldx     #$08                            ; A25E A2 08                    ..
        jsr     BattlePartyServices_Entry_A268  ; A260 20 68 A2                  h.
        pla                                     ; A263 68                       h
        tax                                     ; A264 AA                       .
        lda     $0F                             ; A265 A5 0F                    ..
        rts                                     ; A267 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A268:
        tya                                     ; A268 98                       .
        pha                                     ; A269 48                       H
        ldy     #$00                            ; A26A A0 00                    ..
        lda     $0F                             ; A26C A5 0F                    ..
BattlePartyServices_Branch_A26E:
        lsr     a                               ; A26E 4A                       J
        bcc     BattlePartyServices_Branch_A272 ; A26F 90 01                    ..
        iny                                     ; A271 C8                       .
BattlePartyServices_Branch_A272:
        dex                                     ; A272 CA                       .
        bne     BattlePartyServices_Branch_A26E ; A273 D0 F9                    ..
        stx     $0E                             ; A275 86 0E                    ..
        dex                                     ; A277 CA                       .
        stx     $0D                             ; A278 86 0D                    ..
        tya                                     ; A27A 98                       .
        ldx     #$0D                            ; A27B A2 0D                    ..
        jsr     UpperFixedEngine_Entry_C851     ; A27D 20 51 C8                  Q.
        jsr     BattlePartyServices_Entry_A23D  ; A280 20 3D A2                  =.
        sta     $0C                             ; A283 85 0C                    ..
        ldx     #$00                            ; A285 A2 00                    ..
BattlePartyServices_Branch_A287:
        lsr     $0F                             ; A287 46 0F                    F.
        bcc     BattlePartyServices_Branch_A297 ; A289 90 0C                    ..
        beq     BattlePartyServices_Branch_A29A ; A28B F0 0D                    ..
        lda     $0D                             ; A28D A5 0D                    ..
        adc     $0E                             ; A28F 65 0E                    e.
        sta     $0E                             ; A291 85 0E                    ..
        cmp     $0C                             ; A293 C5 0C                    ..
        bcs     BattlePartyServices_Branch_A29A ; A295 B0 03                    ..
BattlePartyServices_Branch_A297:
        inx                                     ; A297 E8                       .
        bne     BattlePartyServices_Branch_A287 ; A298 D0 ED                    ..
BattlePartyServices_Branch_A29A:
        stx     $0F                             ; A29A 86 0F                    ..
        pla                                     ; A29C 68                       h
        tay                                     ; A29D A8                       .
        sec                                     ; A29E 38                       8
        rts                                     ; A29F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A2A0:
        tax                                     ; A2A0 AA                       .
        cpx     #$2A                            ; A2A1 E0 2A                    .*
        bcs     BattlePartyServices_Branch_A2A9 ; A2A3 B0 04                    ..
        lda     $A2B1,x                         ; A2A5 BD B1 A2                 ...
        rts                                     ; A2A8 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A2A9:
        beq     BattlePartyServices_Branch_A2AE ; A2A9 F0 03                    ..
        adc     #$10                            ; A2AB 69 10                    i.
        rts                                     ; A2AD 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A2AE:
        lda     #$F7                            ; A2AE A9 F7                    ..
        rts                                     ; A2B0 60                       `
; ----------------------------------------------------------------------------
        db   $00,$01,$02,$03,$04,$05,$08,$09 ; A2B1 00 01 02 03 04 05 08 09  ........
        db   $0A,$0C,$0D,$0E,$0F,$13,$14,$15 ; A2B9 0A 0C 0D 0E 0F 13 14 15  ........
        db   $17,$18,$19,$1A,$1B,$27,$1F,$20 ; A2C1 17 18 19 1A 1B 27 1F 20  .....'.
        db   $1C,$26,$1E,$1D,$21,$22,$23,$30 ; A2C9 1C 26 1E 1D 21 22 23 30  .&..!"#0
        db   $31,$32,$29,$2A,$2B,$29,$2A,$2B ; A2D1 31 32 29 2A 2B 29 2A 2B  12)*+)*+
        db   $2C,$2D                         ; A2D9 2C 2D                    ,-
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A2DB:
        and     #$7F                            ; A2DB 29 7F                    ).
        sta     $72                             ; A2DD 85 72                    .r
        txa                                     ; A2DF 8A                       .
        pha                                     ; A2E0 48                       H
        tya                                     ; A2E1 98                       .
        pha                                     ; A2E2 48                       H
        jsr     BattlePartyServices_Entry_A2EB  ; A2E3 20 EB A2                  ..
        pla                                     ; A2E6 68                       h
        tay                                     ; A2E7 A8                       .
        pla                                     ; A2E8 68                       h
        tax                                     ; A2E9 AA                       .
        rts                                     ; A2EA 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A2EB:
        ldx     #$1B                            ; A2EB A2 1B                    ..
BattlePartyServices_Branch_A2ED:
        txa                                     ; A2ED 8A                       .
        pha                                     ; A2EE 48                       H
        lda     SavePartyCharacter1,x           ; A2EF BD 6A 61                 .ja
        bpl     BattlePartyServices_Branch_A30C ; A2F2 10 18                    ..
        and     #$7F                            ; A2F4 29 7F                    ).
        cmp     #$08                            ; A2F6 C9 08                    ..
        bcs     BattlePartyServices_Branch_A30C ; A2F8 B0 12                    ..
        jsr     BattlePartyServices_Entry_8306  ; A2FA 20 06 83                  ..
        ldy     #$13                            ; A2FD A0 13                    ..
BattlePartyServices_Branch_A2FF:
        lda     ($79),y                         ; A2FF B1 79                    .y
        and     #$7F                            ; A301 29 7F                    ).
        cmp     $72                             ; A303 C5 72                    .r
        beq     BattlePartyServices_Branch_A313 ; A305 F0 0C                    ..
        iny                                     ; A307 C8                       .
        cpy     #$1B                            ; A308 C0 1B                    ..
        bcc     BattlePartyServices_Branch_A2FF ; A30A 90 F3                    ..
BattlePartyServices_Branch_A30C:
        pla                                     ; A30C 68                       h
        tax                                     ; A30D AA                       .
        dex                                     ; A30E CA                       .
        bpl     BattlePartyServices_Branch_A2ED ; A30F 10 DC                    ..
        clc                                     ; A311 18                       .
        rts                                     ; A312 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A313:
        pla                                     ; A313 68                       h
        sec                                     ; A314 38                       8
        rts                                     ; A315 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A316:
        lda     $6E59                           ; A316 AD 59 6E                 .Yn
        cmp     #$30                            ; A319 C9 30                    .0
        beq     BattlePartyServices_Branch_A32E ; A31B F0 11                    ..
        lda     $7B                             ; A31D A5 7B                    .{
        cmp     #$FF                            ; A31F C9 FF                    ..
        beq     BattlePartyServices_Branch_A32E ; A321 F0 0B                    ..
        cmp     #$80                            ; A323 C9 80                    ..
        beq     BattlePartyServices_Branch_A32E ; A325 F0 07                    ..
        cmp     #$08                            ; A327 C9 08                    ..
        bcc     BattlePartyServices_Branch_A32E ; A329 90 03                    ..
        jmp     BattlePartyServices_Branch_A38C ; A32B 4C 8C A3                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A32E:
        ldx     #$0F                            ; A32E A2 0F                    ..
BattlePartyServices_Branch_A330:
        lda     $00,x                         ; A330 B5 00                    ..
        pha                                     ; A332 48                       H
        dex                                     ; A333 CA                       .
        bpl     BattlePartyServices_Branch_A330 ; A334 10 FA                    ..
        ldx     #$0F                            ; A336 A2 0F                    ..
        lda     #$00                            ; A338 A9 00                    ..
BattlePartyServices_Branch_A33A:
        sta     $00,x                         ; A33A 95 00                    ..
        dex                                     ; A33C CA                       .
        bpl     BattlePartyServices_Branch_A33A ; A33D 10 FB                    ..
        ldx     #$02                            ; A33F A2 02                    ..
BattlePartyServices_Branch_A341:
        lda     $7B,x                           ; A341 B5 7B                    .{
        sta     $81,x                           ; A343 95 81                    ..
        dex                                     ; A345 CA                       .
        bpl     BattlePartyServices_Branch_A341 ; A346 10 F9                    ..
        lda     $6E59                           ; A348 AD 59 6E                 .Yn
        cmp     #$30                            ; A34B C9 30                    .0
        bcc     BattlePartyServices_Branch_A36B ; A34D 90 1C                    ..
        bne     BattlePartyServices_Branch_A357 ; A34F D0 06                    ..
        jsr     BattlePartyServices_Entry_A393  ; A351 20 93 A3                  ..
        jmp     BattlePartyServices_Branch_A381 ; A354 4C 81 A3                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A357:
        cmp     #$31                            ; A357 C9 31                    .1
        bne     BattlePartyServices_Branch_A361 ; A359 D0 06                    ..
        jsr     BattlePartyServices_Entry_A3D5  ; A35B 20 D5 A3                  ..
        jmp     BattlePartyServices_Branch_A381 ; A35E 4C 81 A3                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A361:
        cmp     #$32                            ; A361 C9 32                    .2
        bne     BattlePartyServices_Branch_A36B ; A363 D0 06                    ..
        jsr     BattlePartyServices_Entry_A569  ; A365 20 69 A5                  i.
        jmp     BattlePartyServices_Branch_A381 ; A368 4C 81 A3                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A36B:
        ldx     $81                             ; A36B A6 81                    ..
        bmi     BattlePartyServices_Branch_A375 ; A36D 30 06                    0.
        jsr     BattlePartyServices_Entry_A5F7  ; A36F 20 F7 A5                  ..
        jmp     BattlePartyServices_Branch_A381 ; A372 4C 81 A3                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A375:
        inx                                     ; A375 E8                       .
        beq     BattlePartyServices_Branch_A37E ; A376 F0 06                    ..
        jsr     BattlePartyServices_Entry_A5A9  ; A378 20 A9 A5                  ..
        jmp     BattlePartyServices_Branch_A381 ; A37B 4C 81 A3                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A37E:
        jsr     BattlePartyServices_Entry_A5BC  ; A37E 20 BC A5                  ..
BattlePartyServices_Branch_A381:
        ldy     #$10                            ; A381 A0 10                    ..
        ldx     #$00                            ; A383 A2 00                    ..
BattlePartyServices_Branch_A385:
        pla                                     ; A385 68                       h
        sta     $00,x                         ; A386 95 00                    ..
        inx                                     ; A388 E8                       .
        dey                                     ; A389 88                       .
        bne     BattlePartyServices_Branch_A385 ; A38A D0 F9                    ..
BattlePartyServices_Branch_A38C:
        pla                                     ; A38C 68                       h
        tay                                     ; A38D A8                       .
        pla                                     ; A38E 68                       h
        tax                                     ; A38F AA                       .
        lda     $7E                             ; A390 A5 7E                    .~
        rts                                     ; A392 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A393:
        ldx     #$70                            ; A393 A2 70                    .p
        lda     #$00                            ; A395 A9 00                    ..
BattlePartyServices_Branch_A397:
        sta     $7274,x                         ; A397 9D 74 72                 .tr
        dex                                     ; A39A CA                       .
        bne     BattlePartyServices_Branch_A397 ; A39B D0 FA                    ..
        ldx     #$00                            ; A39D A2 00                    ..
        stx     $81                             ; A39F 86 81                    ..
        stx     $7B                             ; A3A1 86 7B                    .{
BattlePartyServices_Branch_A3A3:
        lda     $6E45,x                         ; A3A3 BD 45 6E                 .En
        cmp     #$FF                            ; A3A6 C9 FF                    ..
        beq     BattlePartyServices_Branch_A3CD ; A3A8 F0 23                    .#
        ldy     $6E49,x                         ; A3AA BC 49 6E                 .In
        beq     BattlePartyServices_Branch_A3CD ; A3AD F0 1E                    ..
        stx     $82                             ; A3AF 86 82                    ..
        stx     $7C                             ; A3B1 86 7C                    .|
BattlePartyServices_Branch_A3B3:
        tya                                     ; A3B3 98                       .
        pha                                     ; A3B4 48                       H
        txa                                     ; A3B5 8A                       .
        pha                                     ; A3B6 48                       H
        jsr     BattlePartyServices_Entry_A3D5  ; A3B7 20 D5 A3                  ..
        pla                                     ; A3BA 68                       h
        tax                                     ; A3BB AA                       .
        pla                                     ; A3BC 68                       h
        tay                                     ; A3BD A8                       .
        inc     $81                             ; A3BE E6 81                    ..
        inc     $7B                             ; A3C0 E6 7B                    .{
        lda     $81                             ; A3C2 A5 81                    ..
        cmp     #$08                            ; A3C4 C9 08                    ..
        beq     BattlePartyServices_Branch_A3D4 ; A3C6 F0 0C                    ..
        dey                                     ; A3C8 88                       .
        beq     BattlePartyServices_Branch_A3CD ; A3C9 F0 02                    ..
        bne     BattlePartyServices_Branch_A3B3 ; A3CB D0 E6                    ..
BattlePartyServices_Branch_A3CD:
        inx                                     ; A3CD E8                       .
        cpx     #$04                            ; A3CE E0 04                    ..
        beq     BattlePartyServices_Branch_A3D4 ; A3D0 F0 02                    ..
        bne     BattlePartyServices_Branch_A3A3 ; A3D2 D0 CF                    ..
BattlePartyServices_Branch_A3D4:
        rts                                     ; A3D4 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A3D5:
        jsr     BattlePartyServices_Entry_A62D  ; A3D5 20 2D A6                  -.
        lda     #$00                            ; A3D8 A9 00                    ..
        ldy     #$0E                            ; A3DA A0 0E                    ..
BattlePartyServices_Branch_A3DC:
        sta     ($84),y                         ; A3DC 91 84                    ..
        dey                                     ; A3DE 88                       .
        bne     BattlePartyServices_Branch_A3DC ; A3DF D0 FB                    ..
        lda     #$C0                            ; A3E1 A9 C0                    ..
        ldy     #$06                            ; A3E3 A0 06                    ..
        sta     ($84),y                         ; A3E5 91 84                    ..
        lda     $7C                             ; A3E7 A5 7C                    .|
        ldy     #$0D                            ; A3E9 A0 0D                    ..
        sta     ($84),y                         ; A3EB 91 84                    ..
        lda     #$2D                            ; A3ED A9 2D                    .-
        sta     $6E59                           ; A3EF 8D 59 6E                 .Yn
        lda     #$FF                            ; A3F2 A9 FF                    ..
        sta     $81                             ; A3F4 85 81                    ..
        lda     $7C                             ; A3F6 A5 7C                    .|
        sta     $82                             ; A3F8 85 82                    ..
        jsr     BattlePartyServices_Entry_A5BC  ; A3FA 20 BC A5                  ..
        lda     #$2F                            ; A3FD A9 2F                    ./
        sta     $02                             ; A3FF 85 02                    ..
        jsr     BattlePartyServices_Entry_A4F9  ; A401 20 F9 A4                  ..
        lda     $00                           ; A404 A5 00                    ..
        pha                                     ; A406 48                       H
        lda     #$00                            ; A407 A9 00                    ..
        sta     $7E                             ; A409 85 7E                    .~
        ldx     #$03                            ; A40B A2 03                    ..
        stx     $82                             ; A40D 86 82                    ..
BattlePartyServices_Branch_A40F:
        ldy     $7C                             ; A40F A4 7C                    .|
        lda     $6E45,y                         ; A411 B9 45 6E                 .En
        ldx     $82                             ; A414 A6 82                    ..
        cmp     $6E45,x                         ; A416 DD 45 6E                 .En
        bne     BattlePartyServices_Branch_A42F ; A419 D0 14                    ..
        lda     #$2D                            ; A41B A9 2D                    .-
        sta     $6E59                           ; A41D 8D 59 6E                 .Yn
        lda     #$FF                            ; A420 A9 FF                    ..
        sta     $81                             ; A422 85 81                    ..
        lda     $7E                             ; A424 A5 7E                    .~
        pha                                     ; A426 48                       H
        jsr     BattlePartyServices_Entry_A5BC  ; A427 20 BC A5                  ..
        pla                                     ; A42A 68                       h
        ora     $7E                             ; A42B 05 7E                    .~
        sta     $7E                             ; A42D 85 7E                    .~
BattlePartyServices_Branch_A42F:
        dec     $82                             ; A42F C6 82                    ..
        bpl     BattlePartyServices_Branch_A40F ; A431 10 DC                    ..
        ldy     #$2E                            ; A433 A0 2E                    ..
        sty     $02                             ; A435 84 02                    ..
        jsr     BattlePartyServices_Entry_A4F9  ; A437 20 F9 A4                  ..
        asl     $00                           ; A43A 06 00                    ..
        asl     $00                           ; A43C 06 00                    ..
        pla                                     ; A43E 68                       h
        lsr     a                               ; A43F 4A                       J
        ror     a                               ; A440 6A                       j
        ror     a                               ; A441 6A                       j
        ror     a                               ; A442 6A                       j
        ora     $00                           ; A443 05 00                    ..
        sta     $00                           ; A445 85 00                    ..
        lda     $7B                             ; A447 A5 7B                    .{
        sta     $81                             ; A449 85 81                    ..
        jsr     BattlePartyServices_Entry_A62D  ; A44B 20 2D A6                  -.
        lda     $00                           ; A44E A5 00                    ..
        ldy     #$0D                            ; A450 A0 0D                    ..
        ora     ($84),y                         ; A452 11 84                    ..
        sta     ($84),y                         ; A454 91 84                    ..
        lda     #$0F                            ; A456 A9 0F                    ..
        sta     $6E59                           ; A458 8D 59 6E                 .Yn
        lda     $7C                             ; A45B A5 7C                    .|
        sta     $82                             ; A45D 85 82                    ..
        jsr     BattlePartyServices_Entry_A5F7  ; A45F 20 F7 A5                  ..
        lda     $7E                             ; A462 A5 7E                    .~
        ldy     #$00                            ; A464 A0 00                    ..
        sta     ($84),y                         ; A466 91 84                    ..
        lda     #$13                            ; A468 A9 13                    ..
        sta     $6E59                           ; A46A 8D 59 6E                 .Yn
        lda     $7C                             ; A46D A5 7C                    .|
        sta     $82                             ; A46F 85 82                    ..
        jsr     BattlePartyServices_Entry_A5F7  ; A471 20 F7 A5                  ..
        ldy     #$01                            ; A474 A0 01                    ..
        jsr     BattlePartyServices_Entry_A55F  ; A476 20 5F A5                  _.
        lda     #$17                            ; A479 A9 17                    ..
        sta     $6E59                           ; A47B 8D 59 6E                 .Yn
        lda     $7C                             ; A47E A5 7C                    .|
        sta     $82                             ; A480 85 82                    ..
        jsr     BattlePartyServices_Entry_A5F7  ; A482 20 F7 A5                  ..
        ldy     #$03                            ; A485 A0 03                    ..
        jsr     BattlePartyServices_Entry_A55F  ; A487 20 5F A5                  _.
        lda     #$01                            ; A48A A9 01                    ..
        sta     $6E59                           ; A48C 8D 59 6E                 .Yn
        lda     $7C                             ; A48F A5 7C                    .|
        sta     $82                             ; A491 85 82                    ..
        jsr     BattlePartyServices_Entry_A5F7  ; A493 20 F7 A5                  ..
        lda     $7E                             ; A496 A5 7E                    .~
        sta     $00                           ; A498 85 00                    ..
        cmp     #$FF                            ; A49A C9 FF                    ..
        bne     BattlePartyServices_Branch_A4AC ; A49C D0 0E                    ..
        lda     $7F                             ; A49E A5 7F                    ..
        cmp     #$03                            ; A4A0 C9 03                    ..
        bne     BattlePartyServices_Branch_A4AC ; A4A2 D0 08                    ..
        lda     #$B0                            ; A4A4 A9 B0                    ..
        sta     $7E                             ; A4A6 85 7E                    .~
        lda     #$04                            ; A4A8 A9 04                    ..
        bne     BattlePartyServices_Branch_A4DF ; A4AA D0 33                    .3
BattlePartyServices_Branch_A4AC:
        lda     $6E44                           ; A4AC AD 44 6E                 .Dn
        bmi     BattlePartyServices_Branch_A4E1 ; A4AF 30 30                    00
        lda     $7F                             ; A4B1 A5 7F                    ..
        sta     $01                             ; A4B3 85 01                    ..
        lsr     $01                             ; A4B5 46 01                    F.
        ror     $00                           ; A4B7 66 00                    f.
        lsr     $01                             ; A4B9 46 01                    F.
        ror     $00                           ; A4BB 66 00                    f.
        inc     $00                           ; A4BD E6 00                    ..
        bne     BattlePartyServices_Branch_A4C3 ; A4BF D0 02                    ..
        inc     $01                             ; A4C1 E6 01                    ..
BattlePartyServices_Branch_A4C3:
        ldx     #$00                            ; A4C3 A2 00                    ..
        lda     $8A                             ; A4C5 A5 8A                    ..
        pha                                     ; A4C7 48                       H
        lda     $8B                             ; A4C8 A5 8B                    ..
        pha                                     ; A4CA 48                       H
        brk                                     ; A4CB 00                       .
        db   $18,$0F                         ; A4CC 18 0F                    ..
; ----------------------------------------------------------------------------
        pla                                     ; A4CE 68                       h
        sta     $8B                             ; A4CF 85 8B                    ..
        pla                                     ; A4D1 68                       h
        sta     $8A                             ; A4D2 85 8A                    ..
        lda     $7E                             ; A4D4 A5 7E                    .~
        sec                                     ; A4D6 38                       8
        sbc     $00                           ; A4D7 E5 00                    ..
        sta     $7E                             ; A4D9 85 7E                    .~
        lda     $7F                             ; A4DB A5 7F                    ..
        sbc     $01                             ; A4DD E5 01                    ..
BattlePartyServices_Branch_A4DF:
        sta     $7F                             ; A4DF 85 7F                    ..
BattlePartyServices_Branch_A4E1:
        ldy     #$0A                            ; A4E1 A0 0A                    ..
        jsr     BattlePartyServices_Entry_A55F  ; A4E3 20 5F A5                  _.
        lda     #$08                            ; A4E6 A9 08                    ..
        sta     $6E59                           ; A4E8 8D 59 6E                 .Yn
        lda     $7C                             ; A4EB A5 7C                    .|
        sta     $82                             ; A4ED 85 82                    ..
        jsr     BattlePartyServices_Entry_A5F7  ; A4EF 20 F7 A5                  ..
        lda     $7E                             ; A4F2 A5 7E                    .~
        ldy     #$0C                            ; A4F4 A0 0C                    ..
        sta     ($84),y                         ; A4F6 91 84                    ..
        rts                                     ; A4F8 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A4F9:
        lda     $7E                             ; A4F9 A5 7E                    .~
        pha                                     ; A4FB 48                       H
        sta     $01                             ; A4FC 85 01                    ..
        jsr     BattlePartyServices_Entry_A51C  ; A4FE 20 1C A5                  ..
        pla                                     ; A501 68                       h
        bcs     BattlePartyServices_Branch_A55D ; A502 B0 59                    .Y
        pha                                     ; A504 48                       H
        lda     #$29                            ; A505 A9 29                    .)
        sta     $6E59                           ; A507 8D 59 6E                 .Yn
        lda     #$0E                            ; A50A A9 0E                    ..
        sta     $82                             ; A50C 85 82                    ..
        lda     $02                             ; A50E A5 02                    ..
        pha                                     ; A510 48                       H
        jsr     BattlePartyServices_Entry_A5BC  ; A511 20 BC A5                  ..
        pla                                     ; A514 68                       h
        sta     $02                             ; A515 85 02                    ..
        pla                                     ; A517 68                       h
        and     $7E                             ; A518 25 7E                    %~
        sta     $01                             ; A51A 85 01                    ..
BattlePartyServices_Entry_A51C:
        lda     #$00                            ; A51C A9 00                    ..
        sta     $00                           ; A51E 85 00                    ..
BattlePartyServices_Branch_A520:
        lda     $01                             ; A520 A5 01                    ..
        ldx     #$07                            ; A522 A2 07                    ..
        stx     $81                             ; A524 86 81                    ..
BattlePartyServices_Branch_A526:
        asl     a                               ; A526 0A                       .
        bcc     BattlePartyServices_Branch_A559 ; A527 90 30                    .0
        ldx     $81                             ; A529 A6 81                    ..
        cpx     $7B                             ; A52B E4 7B                    .{
        beq     BattlePartyServices_Branch_A559 ; A52D F0 2A                    .*
        pha                                     ; A52F 48                       H
        lda     $00                           ; A530 A5 00                    ..
        pha                                     ; A532 48                       H
        lda     $01                             ; A533 A5 01                    ..
        pha                                     ; A535 48                       H
        lda     $02                             ; A536 A5 02                    ..
        sta     $6E59                           ; A538 8D 59 6E                 .Yn
        pha                                     ; A53B 48                       H
        jsr     BattlePartyServices_Entry_A5F7  ; A53C 20 F7 A5                  ..
        pla                                     ; A53F 68                       h
        sta     $02                             ; A540 85 02                    ..
        pla                                     ; A542 68                       h
        sta     $01                             ; A543 85 01                    ..
        pla                                     ; A545 68                       h
        sta     $00                           ; A546 85 00                    ..
        pla                                     ; A548 68                       h
        ldx     $00                           ; A549 A6 00                    ..
        cpx     $7E                             ; A54B E4 7E                    .~
        bne     BattlePartyServices_Branch_A559 ; A54D D0 0A                    ..
        inc     $00                           ; A54F E6 00                    ..
        ldx     $00                           ; A551 A6 00                    ..
        cpx     #$08                            ; A553 E0 08                    ..
        bcc     BattlePartyServices_Branch_A520 ; A555 90 C9                    ..
        clc                                     ; A557 18                       .
        rts                                     ; A558 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A559:
        dec     $81                             ; A559 C6 81                    ..
        bpl     BattlePartyServices_Branch_A526 ; A55B 10 C9                    ..
BattlePartyServices_Branch_A55D:
        sec                                     ; A55D 38                       8
        rts                                     ; A55E 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A55F:
        lda     $7E                             ; A55F A5 7E                    .~
        sta     ($84),y                         ; A561 91 84                    ..
        lda     $7F                             ; A563 A5 7F                    ..
        iny                                     ; A565 C8                       .
        sta     ($84),y                         ; A566 91 84                    ..
        rts                                     ; A568 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A569:
        lda     #$29                            ; A569 A9 29                    .)
        sta     $6E59                           ; A56B 8D 59 6E                 .Yn
        lda     #$0E                            ; A56E A9 0E                    ..
        sta     $82                             ; A570 85 82                    ..
        jsr     BattlePartyServices_Entry_A5BC  ; A572 20 BC A5                  ..
        lda     $7E                             ; A575 A5 7E                    .~
        sta     $83                             ; A577 85 83                    ..
        ldx     #$00                            ; A579 A2 00                    ..
        ldy     #$FF                            ; A57B A0 FF                    ..
BattlePartyServices_Branch_A57D:
        lda     #$2D                            ; A57D A9 2D                    .-
        sta     $6E59                           ; A57F 8D 59 6E                 .Yn
        stx     $82                             ; A582 86 82                    ..
        txa                                     ; A584 8A                       .
        pha                                     ; A585 48                       H
        tya                                     ; A586 98                       .
        pha                                     ; A587 48                       H
        jsr     BattlePartyServices_Entry_A5BC  ; A588 20 BC A5                  ..
        pla                                     ; A58B 68                       h
        tay                                     ; A58C A8                       .
        pla                                     ; A58D 68                       h
        tax                                     ; A58E AA                       .
        lda     $83                             ; A58F A5 83                    ..
        and     $7E                             ; A591 25 7E                    %~
        beq     BattlePartyServices_Branch_A59A ; A593 F0 05                    ..
        iny                                     ; A595 C8                       .
        cpy     $7C                             ; A596 C4 7C                    .|
        beq     BattlePartyServices_Branch_A5A5 ; A598 F0 0B                    ..
BattlePartyServices_Branch_A59A:
        inx                                     ; A59A E8                       .
        cpx     #$04                            ; A59B E0 04                    ..
        bne     BattlePartyServices_Branch_A57D ; A59D D0 DE                    ..
        ldx     #$FF                            ; A59F A2 FF                    ..
        stx     $7E                             ; A5A1 86 7E                    .~
        clc                                     ; A5A3 18                       .
        rts                                     ; A5A4 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A5A5:
        stx     $7E                             ; A5A5 86 7E                    .~
        sec                                     ; A5A7 38                       8
        rts                                     ; A5A8 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A5A9:
        jsr     BattlePartyServices_Entry_A5BC  ; A5A9 20 BC A5                  ..
        lda     $7E                             ; A5AC A5 7E                    .~
        ldx     #$00                            ; A5AE A2 00                    ..
        stx     $7E                             ; A5B0 86 7E                    .~
BattlePartyServices_Branch_A5B2:
        asl     a                               ; A5B2 0A                       .
        bcc     BattlePartyServices_Branch_A5B7 ; A5B3 90 02                    ..
        inc     $7E                             ; A5B5 E6 7E                    .~
BattlePartyServices_Branch_A5B7:
        and     #$FF                            ; A5B7 29 FF                    ).
        bne     BattlePartyServices_Branch_A5B2 ; A5B9 D0 F7                    ..
        rts                                     ; A5BB 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A5BC:
        lda     #$07                            ; A5BC A9 07                    ..
        sta     $81                             ; A5BE 85 81                    ..
        lda     $6E59                           ; A5C0 AD 59 6E                 .Yn
        cmp     #$29                            ; A5C3 C9 29                    .)
        beq     BattlePartyServices_Branch_A5CB ; A5C5 F0 04                    ..
        cmp     #$04                            ; A5C7 C9 04                    ..
        bne     BattlePartyServices_Branch_A5DA ; A5C9 D0 0F                    ..
BattlePartyServices_Branch_A5CB:
        lda     #$00                            ; A5CB A9 00                    ..
BattlePartyServices_Branch_A5CD:
        pha                                     ; A5CD 48                       H
        jsr     BattlePartyServices_Entry_A5F7  ; A5CE 20 F7 A5                  ..
        pla                                     ; A5D1 68                       h
        rol     a                               ; A5D2 2A                       *
        dec     $81                             ; A5D3 C6 81                    ..
        bpl     BattlePartyServices_Branch_A5CD ; A5D5 10 F6                    ..
        sta     $7E                             ; A5D7 85 7E                    .~
        rts                                     ; A5D9 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A5DA:
        cmp     #$2D                            ; A5DA C9 2D                    .-
        bne     BattlePartyServices_Branch_A619 ; A5DC D0 3B                    .;
        lda     #$00                            ; A5DE A9 00                    ..
BattlePartyServices_Branch_A5E0:
        pha                                     ; A5E0 48                       H
        jsr     BattlePartyServices_Entry_A5F7  ; A5E1 20 F7 A5                  ..
        bcc     BattlePartyServices_Branch_A5EE ; A5E4 90 08                    ..
        lda     $7E                             ; A5E6 A5 7E                    .~
        cmp     $82                             ; A5E8 C5 82                    ..
        clc                                     ; A5EA 18                       .
        bne     BattlePartyServices_Branch_A5EE ; A5EB D0 01                    ..
        sec                                     ; A5ED 38                       8
BattlePartyServices_Branch_A5EE:
        pla                                     ; A5EE 68                       h
        rol     a                               ; A5EF 2A                       *
        dec     $81                             ; A5F0 C6 81                    ..
        bpl     BattlePartyServices_Branch_A5E0 ; A5F2 10 EC                    ..
        sta     $7E                             ; A5F4 85 7E                    .~
        rts                                     ; A5F6 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A5F7:
        jsr     BattlePartyServices_Entry_A622  ; A5F7 20 22 A6                  ".
        jsr     BattlePartyServices_Entry_A62D  ; A5FA 20 2D A6                  -.
        jsr     BattlePartyServices_Entry_A63C  ; A5FD 20 3C A6                  <.
        jsr     BattlePartyServices_Entry_A650  ; A600 20 50 A6                  P.
        jsr     BattlePartyServices_Entry_A668  ; A603 20 68 A6                  h.
        pha                                     ; A606 48                       H
        tya                                     ; A607 98                       .
        pha                                     ; A608 48                       H
        ldy     #$06                            ; A609 A0 06                    ..
        lda     ($84),y                         ; A60B B1 84                    ..
        and     #$80                            ; A60D 29 80                    ).
        rol     a                               ; A60F 2A                       *
        bcc     BattlePartyServices_Branch_A615 ; A610 90 03                    ..
        bne     BattlePartyServices_Branch_A615 ; A612 D0 01                    ..
        clc                                     ; A614 18                       .
BattlePartyServices_Branch_A615:
        pla                                     ; A615 68                       h
        tay                                     ; A616 A8                       .
        pla                                     ; A617 68                       h
        rts                                     ; A618 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A619:
        lda     $6BDD                           ; A619 AD DD 6B                 ..k
        ora     #$80                            ; A61C 09 80                    ..
        sta     $6BDD                           ; A61E 8D DD 6B                 ..k
        rts                                     ; A621 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A622:
        ldy     $6E59                           ; A622 AC 59 6E                 .Yn
        lda     $AA72,y                         ; A625 B9 72 AA                 .r.
        bpl     BattlePartyServices_Branch_A62C ; A628 10 02                    ..
        ldy     #$0D                            ; A62A A0 0D                    ..
BattlePartyServices_Branch_A62C:
        rts                                     ; A62C 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A62D:
        lda     $81                             ; A62D A5 81                    ..
        asl     a                               ; A62F 0A                       .
        tax                                     ; A630 AA                       .
        lda     $AB06,x                         ; A631 BD 06 AB                 ...
        sta     $84                             ; A634 85 84                    ..
        lda     $AB07,x                         ; A636 BD 07 AB                 ...
        sta     $85                             ; A639 85 85                    ..
        rts                                     ; A63B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A63C:
        lda     #$00                            ; A63C A9 00                    ..
        sta     $7E                             ; A63E 85 7E                    .~
        sta     $7F                             ; A640 85 7F                    ..
        sta     $80                             ; A642 85 80                    ..
        rts                                     ; A644 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A645:
        ldy     $6E59                           ; A645 AC 59 6E                 .Yn
        lda     $AA72,y                         ; A648 B9 72 AA                 .r.
        and     #$7F                            ; A64B 29 7F                    ).
        jmp     BattlePartyServices_Entry_A65A  ; A64D 4C 5A A6                 LZ.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A650:
        ldy     $6E59                           ; A650 AC 59 6E                 .Yn
        lda     $AA72,y                         ; A653 B9 72 AA                 .r.
        bpl     BattlePartyServices_Entry_A65A  ; A656 10 02                    ..
        lda     #$07                            ; A658 A9 07                    ..
BattlePartyServices_Entry_A65A:
        tax                                     ; A65A AA                       .
        ldy     $AB16,x                         ; A65B BC 16 AB                 ...
        sty     $6E5A                           ; A65E 8C 5A 6E                 .Zn
        lda     $AB33,x                         ; A661 BD 33 AB                 .3.
        sta     $6E5B                           ; A664 8D 5B 6E                 .[n
        rts                                     ; A667 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A668:
        ldy     $6E5A                           ; A668 AC 5A 6E                 .Zn
        jsr     BattlePartyServices_Entry_A683  ; A66B 20 83 A6                  ..
        lda     $6E59                           ; A66E AD 59 6E                 .Yn
        asl     a                               ; A671 0A                       .
        tax                                     ; A672 AA                       .
        lda     Bank10_BattleRecordOperationPointers,x; A673 BD A6 AA           ...
        sta     $00                           ; A676 85 00                    ..
        lda     $AAA7,x                         ; A678 BD A7 AA                 ...
        sta     $01                             ; A67B 85 01                    ..
        ldy     $6E5A                           ; A67D AC 5A 6E                 .Zn
        jmp     ($0000)                         ; A680 6C 00 00                 l..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A683:
        pha                                     ; A683 48                       H
        txa                                     ; A684 8A                       .
        pha                                     ; A685 48                       H
        ldx     #$00                            ; A686 A2 00                    ..
BattlePartyServices_Branch_A688:
        lda     ($84),y                         ; A688 B1 84                    ..
        sta     $7E,x                           ; A68A 95 7E                    .~
        iny                                     ; A68C C8                       .
        inx                                     ; A68D E8                       .
        cpx     $6E5B                           ; A68E EC 5B 6E                 .[n
        bne     BattlePartyServices_Branch_A688 ; A691 D0 F5                    ..
        pla                                     ; A693 68                       h
        tax                                     ; A694 AA                       .
        pla                                     ; A695 68                       h
        rts                                     ; A696 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A697:
        jsr     BattlePartyServices_Entry_A650  ; A697 20 50 A6                  P.
        lda     $7E                             ; A69A A5 7E                    .~
        and     #$03                            ; A69C 29 03                    ).
        tax                                     ; A69E AA                       .
        lda     $7206,x                         ; A69F BD 06 72                 ..r
BattlePartyServices_Entry_A6A2:
        jsr     BattlePartyServices_Entry_A6C9  ; A6A2 20 C9 A6                  ..
        jsr     BattlePartyServices_Entry_A645  ; A6A5 20 45 A6                  E.
        ldy     $6E5A                           ; A6A8 AC 5A 6E                 .Zn
        ldx     #$00                            ; A6AB A2 00                    ..
BattlePartyServices_Branch_A6AD:
        tya                                     ; A6AD 98                       .
        pha                                     ; A6AE 48                       H
        txa                                     ; A6AF 8A                       .
        pha                                     ; A6B0 48                       H
        lda     #$18                            ; A6B1 A9 18                    ..
        ldx     #$02                            ; A6B3 A2 02                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; A6B5 20 EA C3                  ..
        tay                                     ; A6B8 A8                       .
        pla                                     ; A6B9 68                       h
        tax                                     ; A6BA AA                       .
        sty     $7E,x                           ; A6BB 94 7E                    .~
        pla                                     ; A6BD 68                       h
        tay                                     ; A6BE A8                       .
        iny                                     ; A6BF C8                       .
        inx                                     ; A6C0 E8                       .
        cpx     $6E5B                           ; A6C1 EC 5B 6E                 .[n
        bne     BattlePartyServices_Branch_A6AD ; A6C4 D0 E7                    ..
        lda     $7E                             ; A6C6 A5 7E                    .~
        rts                                     ; A6C8 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A6C9:
        sta     $02                             ; A6C9 85 02                    ..
        lda     $04                           ; A6CB A5 04                    ..
        pha                                     ; A6CD 48                       H
        lda     $05                             ; A6CE A5 05                    ..
        pha                                     ; A6D0 48                       H
        lda     $02                             ; A6D1 A5 02                    ..
        ldx     #$16                            ; A6D3 A2 16                    ..
        stx     $02                             ; A6D5 86 02                    ..
        ldx     #$00                            ; A6D7 A2 00                    ..
        stx     $03                             ; A6D9 86 03                    ..
        ldx     #$02                            ; A6DB A2 02                    ..
        jsr     MultiplyPointerWord             ; A6DD 20 27 C8                  '.
        lda     #$18                            ; A6E0 A9 18                    ..
        sta     $23                             ; A6E2 85 23                    .#
        lda     #$0A                            ; A6E4 A9 0A                    ..
        sta     $24                             ; A6E6 85 24                    .$
        ldx     #$04                            ; A6E8 A2 04                    ..
        jsr     UpperFixedEngine_Entry_C3CE     ; A6EA 20 CE C3                  ..
        clc                                     ; A6ED 18                       .
        lda     $04                           ; A6EE A5 04                    ..
        adc     $02                             ; A6F0 65 02                    e.
        sta     $02                             ; A6F2 85 02                    ..
        lda     $05                             ; A6F4 A5 05                    ..
        adc     $03                             ; A6F6 65 03                    e.
        sta     $03                             ; A6F8 85 03                    ..
        pla                                     ; A6FA 68                       h
        sta     $05                             ; A6FB 85 05                    ..
        pla                                     ; A6FD 68                       h
        sta     $04                           ; A6FE 85 04                    ..
        rts                                     ; A700 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A701:
        rts                                     ; A701 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A702:
        lda     $7E                             ; A702 A5 7E                    .~
        and     #$03                            ; A704 29 03                    ).
        sta     $7E                             ; A706 85 7E                    .~
        sec                                     ; A708 38                       8
        rts                                     ; A709 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A70A:
        lda     $7E                             ; A70A A5 7E                    .~
        and     #$1C                            ; A70C 29 1C                    ).
        lsr     a                               ; A70E 4A                       J
        lsr     a                               ; A70F 4A                       J
        sta     $7E                             ; A710 85 7E                    .~
        rts                                     ; A712 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A713:
        lda     $7E                             ; A713 A5 7E                    .~
        and     #$E0                            ; A715 29 E0                    ).
        asl     a                               ; A717 0A                       .
        ldx     #$03                            ; A718 A2 03                    ..
BattlePartyServices_Branch_A71A:
        rol     a                               ; A71A 2A                       *
        dex                                     ; A71B CA                       .
        bne     BattlePartyServices_Branch_A71A ; A71C D0 FC                    ..
        sta     $7E                             ; A71E 85 7E                    .~
        rts                                     ; A720 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A721:
        jsr     BattlePartyServices_Entry_A697  ; A721 20 97 A6                  ..
        rts                                     ; A724 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A725:
        jsr     BattlePartyServices_Entry_A697  ; A725 20 97 A6                  ..
        lda     $6E5A                           ; A728 AD 5A 6E                 .Zn
        clc                                     ; A72B 18                       .
        adc     #$0B                            ; A72C 69 0B                    i.
        tay                                     ; A72E A8                       .
        lda     #$18                            ; A72F A9 18                    ..
        ldx     #$02                            ; A731 A2 02                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; A733 20 EA C3                  ..
        and     #$03                            ; A736 29 03                    ).
        sta     $7F                             ; A738 85 7F                    ..
        rts                                     ; A73A 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A73B:
        jsr     BattlePartyServices_Entry_A697  ; A73B 20 97 A6                  ..
        and     #$7F                            ; A73E 29 7F                    ).
        sta     $7E                             ; A740 85 7E                    .~
        rts                                     ; A742 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A743:
        jsr     BattlePartyServices_Entry_A697  ; A743 20 97 A6                  ..
        and     #$80                            ; A746 29 80                    ).
        asl     a                               ; A748 0A                       .
        rol     a                               ; A749 2A                       *
        sta     $7E                             ; A74A 85 7E                    .~
        rts                                     ; A74C 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A74D:
        jsr     BattlePartyServices_Entry_A697  ; A74D 20 97 A6                  ..
        lda     $82                             ; A750 A5 82                    ..
        clc                                     ; A752 18                       .
        adc     $6E5A                           ; A753 6D 5A 6E                 mZn
        tay                                     ; A756 A8                       .
        lda     #$18                            ; A757 A9 18                    ..
        ldx     #$02                            ; A759 A2 02                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; A75B 20 EA C3                  ..
        and     #$7F                            ; A75E 29 7F                    ).
        sta     $7E                             ; A760 85 7E                    .~
        rts                                     ; A762 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A763:
        jsr     BattlePartyServices_Entry_A697  ; A763 20 97 A6                  ..
        asl     $7F                             ; A766 06 7F                    ..
        rol     a                               ; A768 2A                       *
        rol     a                               ; A769 2A                       *
        and     #$03                            ; A76A 29 03                    ).
        sta     $7E                             ; A76C 85 7E                    .~
        lda     #$00                            ; A76E A9 00                    ..
        sta     $7F                             ; A770 85 7F                    ..
        rts                                     ; A772 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A773:
        jsr     BattlePartyServices_Entry_A697  ; A773 20 97 A6                  ..
        lda     $82                             ; A776 A5 82                    ..
        pha                                     ; A778 48                       H
        lsr     a                               ; A779 4A                       J
        lsr     a                               ; A77A 4A                       J
        clc                                     ; A77B 18                       .
        adc     $6E5A                           ; A77C 6D 5A 6E                 mZn
        tay                                     ; A77F A8                       .
        ldx     #$02                            ; A780 A2 02                    ..
        lda     #$18                            ; A782 A9 18                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; A784 20 EA C3                  ..
        sta     $7E                             ; A787 85 7E                    .~
        pla                                     ; A789 68                       h
        and     #$03                            ; A78A 29 03                    ).
        tay                                     ; A78C A8                       .
        lda     $7E                             ; A78D A5 7E                    .~
BattlePartyServices_Branch_A78F:
        lsr     a                               ; A78F 4A                       J
        lsr     a                               ; A790 4A                       J
        dey                                     ; A791 88                       .
        bne     BattlePartyServices_Branch_A78F ; A792 D0 FB                    ..
        and     #$03                            ; A794 29 03                    ).
        sta     $7E                             ; A796 85 7E                    .~
        rts                                     ; A798 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A799:
        jsr     BattlePartyServices_Entry_A697  ; A799 20 97 A6                  ..
        asl     a                               ; A79C 0A                       .
        rol     a                               ; A79D 2A                       *
        rol     a                               ; A79E 2A                       *
        and     #$03                            ; A79F 29 03                    ).
        sta     $7E                             ; A7A1 85 7E                    .~
        rts                                     ; A7A3 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A7A4:
        jsr     BattlePartyServices_Entry_A697  ; A7A4 20 97 A6                  ..
        lsr     a                               ; A7A7 4A                       J
        lsr     a                               ; A7A8 4A                       J
        lsr     a                               ; A7A9 4A                       J
        and     #$07                            ; A7AA 29 07                    ).
        sta     $7E                             ; A7AC 85 7E                    .~
        rts                                     ; A7AE 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A7AF:
        jsr     BattlePartyServices_Entry_A697  ; A7AF 20 97 A6                  ..
        and     #$07                            ; A7B2 29 07                    ).
        sta     $7E                             ; A7B4 85 7E                    .~
        rts                                     ; A7B6 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A7B7:
        lda     $82                             ; A7B7 A5 82                    ..
        pha                                     ; A7B9 48                       H
        ora     #$80                            ; A7BA 09 80                    ..
        sta     $82                             ; A7BC 85 82                    ..
        jsr     BattlePartyServices_Entry_A920  ; A7BE 20 20 A9                   .
        bcs     BattlePartyServices_Branch_A7CB ; A7C1 B0 08                    ..
        pla                                     ; A7C3 68                       h
        lda     #$00                            ; A7C4 A9 00                    ..
        sta     $7E                             ; A7C6 85 7E                    .~
        sta     $7F                             ; A7C8 85 7F                    ..
        rts                                     ; A7CA 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A7CB:
        pla                                     ; A7CB 68                       h
        cmp     #$09                            ; A7CC C9 09                    ..
        bne     BattlePartyServices_Branch_A7DB ; A7CE D0 0B                    ..
        ldy     #$07                            ; A7D0 A0 07                    ..
        lda     ($84),y                         ; A7D2 B1 84                    ..
        and     #$04                            ; A7D4 29 04                    ).
        lsr     a                               ; A7D6 4A                       J
        lsr     a                               ; A7D7 4A                       J
        jmp     BattlePartyServices_Branch_A82D ; A7D8 4C 2D A8                 L-.
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A7DB:
        pha                                     ; A7DB 48                       H
        ldy     #$08                            ; A7DC A0 08                    ..
        lda     ($84),y                         ; A7DE B1 84                    ..
        sta     $7E                             ; A7E0 85 7E                    .~
        iny                                     ; A7E2 C8                       .
        lda     ($84),y                         ; A7E3 B1 84                    ..
        sta     $7F                             ; A7E5 85 7F                    ..
        pla                                     ; A7E7 68                       h
        cmp     #$00                            ; A7E8 C9 00                    ..
        bne     BattlePartyServices_Branch_A7F8 ; A7EA D0 0C                    ..
        ldx     #$04                            ; A7EC A2 04                    ..
BattlePartyServices_Branch_A7EE:
        rol     $7E                             ; A7EE 26 7E                    &~
        dex                                     ; A7F0 CA                       .
        bne     BattlePartyServices_Branch_A7EE ; A7F1 D0 FB                    ..
        lda     $7E                             ; A7F3 A5 7E                    .~
        jmp     BattlePartyServices_Branch_A815 ; A7F5 4C 15 A8                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A7F8:
        cmp     #$11                            ; A7F8 C9 11                    ..
        bne     BattlePartyServices_Branch_A808 ; A7FA D0 0C                    ..
        ldx     #$04                            ; A7FC A2 04                    ..
BattlePartyServices_Branch_A7FE:
        lsr     $7F                             ; A7FE 46 7F                    F.
        dex                                     ; A800 CA                       .
        bne     BattlePartyServices_Branch_A7FE ; A801 D0 FB                    ..
        lda     $7F                             ; A803 A5 7F                    ..
        jmp     BattlePartyServices_Branch_A815 ; A805 4C 15 A8                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A808:
        cmp     #$10                            ; A808 C9 10                    ..
        bne     BattlePartyServices_Branch_A81A ; A80A D0 0E                    ..
        ldx     #$03                            ; A80C A2 03                    ..
BattlePartyServices_Branch_A80E:
        rol     $7F                             ; A80E 26 7F                    &.
        dex                                     ; A810 CA                       .
        bne     BattlePartyServices_Branch_A80E ; A811 D0 FB                    ..
        lda     $7F                             ; A813 A5 7F                    ..
BattlePartyServices_Branch_A815:
        and     #$03                            ; A815 29 03                    ).
        jmp     BattlePartyServices_Branch_A82D ; A817 4C 2D A8                 L-.
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A81A:
        cmp     #$0C                            ; A81A C9 0C                    ..
        bne     BattlePartyServices_Branch_A825 ; A81C D0 07                    ..
        lda     $7F                             ; A81E A5 7F                    ..
        and     #$0F                            ; A820 29 0F                    ).
        jmp     BattlePartyServices_Branch_A82D ; A822 4C 2D A8                 L-.
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A825:
        cmp     #$00                            ; A825 C9 00                    ..
        bne     BattlePartyServices_Branch_A835 ; A827 D0 0C                    ..
        lda     $7E                             ; A829 A5 7E                    .~
        and     #$8F                            ; A82B 29 8F                    ).
BattlePartyServices_Branch_A82D:
        sta     $7E                             ; A82D 85 7E                    .~
        lda     #$00                            ; A82F A9 00                    ..
        sta     $7F                             ; A831 85 7F                    ..
        sec                                     ; A833 38                       8
        rts                                     ; A834 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A835:
        lda     #$00                            ; A835 A9 00                    ..
        sta     $7E                             ; A837 85 7E                    .~
        sta     $7F                             ; A839 85 7F                    ..
        sec                                     ; A83B 38                       8
        rts                                     ; A83C 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A83D:
        lda     $82                             ; A83D A5 82                    ..
        ora     #$40                            ; A83F 09 40                    .@
        sta     $82                             ; A841 85 82                    ..
        jsr     BattlePartyServices_Entry_A920  ; A843 20 20 A9                   .
        php                                     ; A846 08                       .
        lda     $82                             ; A847 A5 82                    ..
        and     #$3F                            ; A849 29 3F                    )?
        cmp     #$0E                            ; A84B C9 0E                    ..
        bne     BattlePartyServices_Branch_A85E ; A84D D0 0F                    ..
        lda     #$81                            ; A84F A9 81                    ..
        sta     ($84),y                         ; A851 91 84                    ..
        dey                                     ; A853 88                       .
        lda     #$00                            ; A854 A9 00                    ..
        sta     ($84),y                         ; A856 91 84                    ..
        iny                                     ; A858 C8                       .
        iny                                     ; A859 C8                       .
        sta     ($84),y                         ; A85A 91 84                    ..
        beq     BattlePartyServices_Branch_A86B ; A85C F0 0D                    ..
BattlePartyServices_Branch_A85E:
        cmp     #$0F                            ; A85E C9 0F                    ..
        bne     BattlePartyServices_Branch_A86B ; A860 D0 09                    ..
        lda     #$0E                            ; A862 A9 0E                    ..
        ora     #$40                            ; A864 09 40                    .@
        sta     $82                             ; A866 85 82                    ..
        jsr     BattlePartyServices_Entry_A920  ; A868 20 20 A9                   .
BattlePartyServices_Branch_A86B:
        plp                                     ; A86B 28                       (
        rts                                     ; A86C 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A86D:
        jsr     BattlePartyServices_Entry_A920  ; A86D 20 20 A9                   .
        bcc     BattlePartyServices_Branch_A8DA ; A870 90 68                    .h
        lda     $82                             ; A872 A5 82                    ..
        cmp     #$09                            ; A874 C9 09                    ..
        bne     BattlePartyServices_Branch_A881 ; A876 D0 09                    ..
        lda     $83                             ; A878 A5 83                    ..
        asl     a                               ; A87A 0A                       .
        asl     a                               ; A87B 0A                       .
        ldy     #$07                            ; A87C A0 07                    ..
        jmp     BattlePartyServices_Branch_A8BD ; A87E 4C BD A8                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A881:
        cmp     #$00                            ; A881 C9 00                    ..
        bne     BattlePartyServices_Branch_A88C ; A883 D0 07                    ..
        lda     #$60                            ; A885 A9 60                    .`
        ldy     #$08                            ; A887 A0 08                    ..
        jmp     BattlePartyServices_Branch_A8BD ; A889 4C BD A8                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A88C:
        cmp     #$11                            ; A88C C9 11                    ..
        bne     BattlePartyServices_Branch_A897 ; A88E D0 07                    ..
        lda     #$20                            ; A890 A9 20                    .
        ldy     #$09                            ; A892 A0 09                    ..
        jmp     BattlePartyServices_Branch_A8BD ; A894 4C BD A8                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A897:
        cmp     #$10                            ; A897 C9 10                    ..
        bne     BattlePartyServices_Branch_A8AD ; A899 D0 12                    ..
        ldy     #$09                            ; A89B A0 09                    ..
        lda     ($84),y                         ; A89D B1 84                    ..
        and     #$3F                            ; A89F 29 3F                    )?
        sta     ($84),y                         ; A8A1 91 84                    ..
        lda     $83                             ; A8A3 A5 83                    ..
        and     #$03                            ; A8A5 29 03                    ).
        lsr     a                               ; A8A7 4A                       J
        ror     a                               ; A8A8 6A                       j
        ror     a                               ; A8A9 6A                       j
        jmp     BattlePartyServices_Branch_A8BD ; A8AA 4C BD A8                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A8AD:
        cmp     #$0C                            ; A8AD C9 0C                    ..
        bne     BattlePartyServices_Branch_A8C3 ; A8AF D0 12                    ..
        ldy     #$09                            ; A8B1 A0 09                    ..
        lda     ($84),y                         ; A8B3 B1 84                    ..
        and     #$F0                            ; A8B5 29 F0                    ).
        sta     ($84),y                         ; A8B7 91 84                    ..
        lda     $83                             ; A8B9 A5 83                    ..
        and     #$0F                            ; A8BB 29 0F                    ).
BattlePartyServices_Branch_A8BD:
        ora     ($84),y                         ; A8BD 11 84                    ..
        sta     ($84),y                         ; A8BF 91 84                    ..
        sec                                     ; A8C1 38                       8
        rts                                     ; A8C2 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A8C3:
        cmp     #$00                            ; A8C3 C9 00                    ..
        bne     BattlePartyServices_Branch_A8D9 ; A8C5 D0 12                    ..
        ldy     #$08                            ; A8C7 A0 08                    ..
        lda     ($84),y                         ; A8C9 B1 84                    ..
        and     #$70                            ; A8CB 29 70                    )p
        sta     ($84),y                         ; A8CD 91 84                    ..
        lda     $83                             ; A8CF A5 83                    ..
        and     #$8F                            ; A8D1 29 8F                    ).
        ldy     #$08                            ; A8D3 A0 08                    ..
        ora     ($84),y                         ; A8D5 11 84                    ..
        sta     ($84),y                         ; A8D7 91 84                    ..
BattlePartyServices_Branch_A8D9:
        sec                                     ; A8D9 38                       8
BattlePartyServices_Branch_A8DA:
        rts                                     ; A8DA 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A8DB:
        lda     $82                             ; A8DB A5 82                    ..
        pha                                     ; A8DD 48                       H
        jsr     BattlePartyServices_Entry_A7B7  ; A8DE 20 B7 A7                  ..
        pla                                     ; A8E1 68                       h
        bcc     BattlePartyServices_Branch_A91E ; A8E2 90 3A                    .:
        ldx     $7E                             ; A8E4 A6 7E                    .~
        beq     BattlePartyServices_Branch_A915 ; A8E6 F0 2D                    .-
        cmp     #$00                            ; A8E8 C9 00                    ..
        bne     BattlePartyServices_Branch_A8FD ; A8EA D0 11                    ..
        ldy     #$08                            ; A8EC A0 08                    ..
        lda     ($84),y                         ; A8EE B1 84                    ..
        and     #$9F                            ; A8F0 29 9F                    ).
        sta     ($84),y                         ; A8F2 91 84                    ..
        dex                                     ; A8F4 CA                       .
        txa                                     ; A8F5 8A                       .
        lsr     a                               ; A8F6 4A                       J
        ror     a                               ; A8F7 6A                       j
        ror     a                               ; A8F8 6A                       j
        ror     a                               ; A8F9 6A                       j
        jmp     BattlePartyServices_Branch_A90F ; A8FA 4C 0F A9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A8FD:
        cmp     #$11                            ; A8FD C9 11                    ..
        bne     BattlePartyServices_Branch_A91E ; A8FF D0 1D                    ..
        ldy     #$09                            ; A901 A0 09                    ..
        lda     ($84),y                         ; A903 B1 84                    ..
        and     #$CF                            ; A905 29 CF                    ).
        sta     ($84),y                         ; A907 91 84                    ..
        dex                                     ; A909 CA                       .
        txa                                     ; A90A 8A                       .
        asl     a                               ; A90B 0A                       .
        asl     a                               ; A90C 0A                       .
        asl     a                               ; A90D 0A                       .
        asl     a                               ; A90E 0A                       .
BattlePartyServices_Branch_A90F:
        ora     ($84),y                         ; A90F 11 84                    ..
        sta     ($84),y                         ; A911 91 84                    ..
        sec                                     ; A913 38                       8
        rts                                     ; A914 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A915:
        lda     $82                             ; A915 A5 82                    ..
        and     #$3F                            ; A917 29 3F                    )?
        sta     $82                             ; A919 85 82                    ..
        jmp     BattlePartyServices_Entry_A83D  ; A91B 4C 3D A8                 L=.
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A91E:
        clc                                     ; A91E 18                       .
        rts                                     ; A91F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A920:
        lda     $82                             ; A920 A5 82                    ..
        pha                                     ; A922 48                       H
        pha                                     ; A923 48                       H
        and     #$07                            ; A924 29 07                    ).
        tax                                     ; A926 AA                       .
        pla                                     ; A927 68                       h
        and     #$18                            ; A928 29 18                    ).
        lsr     a                               ; A92A 4A                       J
        lsr     a                               ; A92B 4A                       J
        lsr     a                               ; A92C 4A                       J
        clc                                     ; A92D 18                       .
        adc     $6E5A                           ; A92E 6D 5A 6E                 mZn
        tay                                     ; A931 A8                       .
        sec                                     ; A932 38                       8
        lda     #$00                            ; A933 A9 00                    ..
BattlePartyServices_Branch_A935:
        rol     a                               ; A935 2A                       *
        dex                                     ; A936 CA                       .
        bpl     BattlePartyServices_Branch_A935 ; A937 10 FC                    ..
        tax                                     ; A939 AA                       .
        and     ($84),y                         ; A93A 31 84                    1.
        beq     BattlePartyServices_Branch_A93F ; A93C F0 01                    ..
        sec                                     ; A93E 38                       8
BattlePartyServices_Branch_A93F:
        pla                                     ; A93F 68                       h
        bpl     BattlePartyServices_Branch_A943 ; A940 10 01                    ..
        rts                                     ; A942 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A943:
        and     #$40                            ; A943 29 40                    )@
        beq     BattlePartyServices_Branch_A953 ; A945 F0 0C                    ..
        bcs     BattlePartyServices_Branch_A94A ; A947 B0 01                    ..
        rts                                     ; A949 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A94A:
        txa                                     ; A94A 8A                       .
        eor     #$FF                            ; A94B 49 FF                    I.
        and     ($84),y                         ; A94D 31 84                    1.
        sta     ($84),y                         ; A94F 91 84                    ..
        sec                                     ; A951 38                       8
        rts                                     ; A952 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A953:
        bcc     BattlePartyServices_Branch_A957 ; A953 90 02                    ..
        clc                                     ; A955 18                       .
        rts                                     ; A956 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A957:
        txa                                     ; A957 8A                       .
        ora     ($84),y                         ; A958 11 84                    ..
        sta     ($84),y                         ; A95A 91 84                    ..
        sec                                     ; A95C 38                       8
        rts                                     ; A95D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A95E:
        lda     #$FF                            ; A95E A9 FF                    ..
        sta     $82                             ; A960 85 82                    ..
        lda     #$03                            ; A962 A9 03                    ..
        sta     $83                             ; A964 85 83                    ..
BattlePartyServices_Entry_A966:
        jsr     BattlePartyServices_Entry_A725  ; A966 20 25 A7                  %.
        lda     #$05                            ; A969 A9 05                    ..
        jmp     BattlePartyServices_Branch_A9DC ; A96B 4C DC A9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A96E:
        lda     #$FF                            ; A96E A9 FF                    ..
        sta     $82                             ; A970 85 82                    ..
BattlePartyServices_Entry_A972:
        lda     #$00                            ; A972 A9 00                    ..
        sta     $83                             ; A974 85 83                    ..
        jsr     BattlePartyServices_Entry_A721  ; A976 20 21 A7                  !.
        lda     #$06                            ; A979 A9 06                    ..
        jmp     BattlePartyServices_Branch_A9DC ; A97B 4C DC A9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A97E:
        ldy     #$FF                            ; A97E A0 FF                    ..
        sty     $7E                             ; A980 84 7E                    .~
        iny                                     ; A982 C8                       .
        sty     $7F                             ; A983 84 7F                    ..
        sty     $83                             ; A985 84 83                    ..
        lda     #$00                            ; A987 A9 00                    ..
        jmp     BattlePartyServices_Branch_A9DC ; A989 4C DC A9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A98C:
        ldy     #$01                            ; A98C A0 01                    ..
        jmp     BattlePartyServices_Branch_A993 ; A98E 4C 93 A9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A991:
        ldy     #$02                            ; A991 A0 02                    ..
BattlePartyServices_Branch_A993:
        lda     #$E7                            ; A993 A9 E7                    ..
        sta     $7E                             ; A995 85 7E                    .~
        lda     #$03                            ; A997 A9 03                    ..
        sta     $7F                             ; A999 85 7F                    ..
        tya                                     ; A99B 98                       .
        jmp     BattlePartyServices_Branch_A9DC ; A99C 4C DC A9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A99F:
        lda     #$00                            ; A99F A9 00                    ..
        sta     $83                             ; A9A1 85 83                    ..
BattlePartyServices_Entry_A9A3:
        jmp     BattlePartyServices_Branch_AA34 ; A9A3 4C 34 AA                 L4.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A9A6:
        jsr     BattlePartyServices_Entry_A725  ; A9A6 20 25 A7                  %.
        ldx     #$7E                            ; A9A9 A2 7E                    .~
        lda     $82                             ; A9AB A5 82                    ..
        jsr     UpperFixedEngine_Entry_C851     ; A9AD 20 51 C8                  Q.
        ldy     #$0A                            ; A9B0 A0 0A                    ..
        lda     ($84),y                         ; A9B2 B1 84                    ..
        sec                                     ; A9B4 38                       8
        sbc     $7E                             ; A9B5 E5 7E                    .~
        iny                                     ; A9B7 C8                       .
        lda     ($84),y                         ; A9B8 B1 84                    ..
        sbc     $7F                             ; A9BA E5 7F                    ..
        rts                                     ; A9BC 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A9BD:
        lda     $7E                             ; A9BD A5 7E                    .~
        cmp     $82                             ; A9BF C5 82                    ..
        rts                                     ; A9C1 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A9C2:
        jsr     BattlePartyServices_Entry_A95E  ; A9C2 20 5E A9                  ^.
        lsr     $83                             ; A9C5 46 83                    F.
        ror     $82                             ; A9C7 66 82                    f.
        ldy     #$0A                            ; A9C9 A0 0A                    ..
        lda     $82                             ; A9CB A5 82                    ..
        sta     ($84),y                         ; A9CD 91 84                    ..
        iny                                     ; A9CF C8                       .
        lda     $83                             ; A9D0 A5 83                    ..
        sta     ($84),y                         ; A9D2 91 84                    ..
        rts                                     ; A9D4 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_A9D5:
        ldy     #$0C                            ; A9D5 A0 0C                    ..
        lda     #$00                            ; A9D7 A9 00                    ..
        sta     ($84),y                         ; A9D9 91 84                    ..
        rts                                     ; A9DB 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_A9DC:
        jsr     BattlePartyServices_Entry_A65A  ; A9DC 20 5A A6                  Z.
        ldx     #$00                            ; A9DF A2 00                    ..
        stx     $05                             ; A9E1 86 05                    ..
BattlePartyServices_Branch_A9E3:
        lda     ($84),y                         ; A9E3 B1 84                    ..
        sta     $04,x                         ; A9E5 95 04                    ..
        iny                                     ; A9E7 C8                       .
        inx                                     ; A9E8 E8                       .
        cpx     $6E5B                           ; A9E9 EC 5B 6E                 .[n
        bne     BattlePartyServices_Branch_A9E3 ; A9EC D0 F5                    ..
        lda     $04                           ; A9EE A5 04                    ..
        clc                                     ; A9F0 18                       .
        adc     $82                             ; A9F1 65 82                    e.
        sta     $82                             ; A9F3 85 82                    ..
        lda     $05                             ; A9F5 A5 05                    ..
        adc     $83                             ; A9F7 65 83                    e.
        sta     $83                             ; A9F9 85 83                    ..
        bcc     BattlePartyServices_Branch_AA03 ; A9FB 90 06                    ..
        lda     #$FF                            ; A9FD A9 FF                    ..
        sta     $82                             ; A9FF 85 82                    ..
        sta     $83                             ; AA01 85 83                    ..
BattlePartyServices_Branch_AA03:
        lda     $7E                             ; AA03 A5 7E                    .~
        sec                                     ; AA05 38                       8
        sbc     $82                             ; AA06 E5 82                    ..
        lda     $7F                             ; AA08 A5 7F                    ..
        sbc     $83                             ; AA0A E5 83                    ..
        bcs     BattlePartyServices_Branch_AA16 ; AA0C B0 08                    ..
        lda     $7F                             ; AA0E A5 7F                    ..
        sta     $83                             ; AA10 85 83                    ..
        lda     $7E                             ; AA12 A5 7E                    .~
        sta     $82                             ; AA14 85 82                    ..
BattlePartyServices_Branch_AA16:
        ldy     $6E5A                           ; AA16 AC 5A 6E                 .Zn
        ldx     #$00                            ; AA19 A2 00                    ..
BattlePartyServices_Branch_AA1B:
        lda     $82,x                           ; AA1B B5 82                    ..
        sta     ($84),y                         ; AA1D 91 84                    ..
        iny                                     ; AA1F C8                       .
        inx                                     ; AA20 E8                       .
        cpx     $6E5B                           ; AA21 EC 5B 6E                 .[n
        bne     BattlePartyServices_Branch_AA1B ; AA24 D0 F5                    ..
        lda     $82                             ; AA26 A5 82                    ..
        sec                                     ; AA28 38                       8
        sbc     $04                           ; AA29 E5 04                    ..
        sta     $7E                             ; AA2B 85 7E                    .~
        lda     $83                             ; AA2D A5 83                    ..
        sbc     $05                             ; AA2F E5 05                    ..
        sta     $7F                             ; AA31 85 7F                    ..
        rts                                     ; AA33 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_AA34:
        lda     $6E59                           ; AA34 AD 59 6E                 .Yn
        cmp     #$0A                            ; AA37 C9 0A                    ..
        bne     BattlePartyServices_Branch_AA41 ; AA39 D0 06                    ..
        lda     $7E                             ; AA3B A5 7E                    .~
        cmp     #$FF                            ; AA3D C9 FF                    ..
        beq     BattlePartyServices_Branch_AA69 ; AA3F F0 28                    .(
BattlePartyServices_Branch_AA41:
        ldy     $6E5A                           ; AA41 AC 5A 6E                 .Zn
        lda     $6E5B                           ; AA44 AD 5B 6E                 .[n
        sta     $02                             ; AA47 85 02                    ..
        ldx     #$00                            ; AA49 A2 00                    ..
        sec                                     ; AA4B 38                       8
BattlePartyServices_Branch_AA4C:
        lda     $7E,x                           ; AA4C B5 7E                    .~
        sbc     $82,x                           ; AA4E F5 82                    ..
        sta     ($84),y                         ; AA50 91 84                    ..
        iny                                     ; AA52 C8                       .
        inx                                     ; AA53 E8                       .
        dec     $02                             ; AA54 C6 02                    ..
        bne     BattlePartyServices_Branch_AA4C ; AA56 D0 F4                    ..
        bcs     BattlePartyServices_Branch_AA69 ; AA58 B0 0F                    ..
        lda     #$00                            ; AA5A A9 00                    ..
        ldx     $6E5B                           ; AA5C AE 5B 6E                 .[n
        ldy     $6E5A                           ; AA5F AC 5A 6E                 .Zn
BattlePartyServices_Branch_AA62:
        sta     ($84),y                         ; AA62 91 84                    ..
        iny                                     ; AA64 C8                       .
        dex                                     ; AA65 CA                       .
        bne     BattlePartyServices_Branch_AA62 ; AA66 D0 FA                    ..
        rts                                     ; AA68 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_AA69:
        lda     $82                             ; AA69 A5 82                    ..
        sta     $7E                             ; AA6B 85 7E                    .~
        lda     $83                             ; AA6D A5 83                    ..
        sta     $7F                             ; AA6F 85 7F                    ..
        rts                                     ; AA71 60                       `
; ----------------------------------------------------------------------------
        db   $05,$8B,$8B,$05,$8B,$8B,$8B,$06 ; AA72 05 8B 8B 05 8B 8B 8B 06  ........
        db   $8A,$8A,$06,$06,$06,$8A,$00,$89 ; AA7A 8A 8A 06 06 06 8A 00 89  ........
        db   $80,$00,$01,$8C,$81,$01,$02,$8D ; AA82 80 00 01 8C 81 01 02 8D  ........
        db   $82,$02,$88,$8E,$90,$8F,$91,$92 ; AA8A 82 02 88 8E 90 8F 91 92  ........
        db   $93,$94,$95,$96,$97,$98,$99,$9A ; AA92 93 94 95 96 97 98 99 9A  ........
        db   $9B,$03,$03,$03,$03,$07,$07,$07 ; AA9A 9B 03 03 03 03 07 07 07  ........
        db   $07,$07,$07,$07                 ; AAA2 07 07 07 07              ....
Bank10_BattleRecordOperationPointers:
        db   $01                             ; AAA6 01                       .
        db   $A7,$25,$A7,$66,$A9,$A3,$A9,$A6 ; AAA7 A7 25 A7 66 A9 A3 A9 A6  .%.f....
        db   $A9,$5E,$A9,$C2,$A9,$01,$A7,$21 ; AAAF A9 5E A9 C2 A9 01 A7 21  .^.....!
        db   $A7,$72,$A9,$9F,$A9,$BD,$A9,$D5 ; AAB7 A7 72 A9 9F A9 BD A9 D5  .r......
        db   $A9,$6E,$A9,$01,$A7,$21,$A7,$7E ; AABF A9 6E A9 01 A7 21 A7 7E  .n...!.~
        db   $A9,$9F,$A9,$01,$A7,$25,$A7,$8C ; AAC7 A9 9F A9 01 A7 25 A7 8C  .....%..
        db   $A9,$A3,$A9,$01,$A7,$25,$A7,$91 ; AACF A9 A3 A9 01 A7 25 A7 91  .....%..
        db   $A9,$A3,$A9,$21,$A7,$25,$A7,$3B ; AAD7 A9 A3 A9 21 A7 25 A7 3B  ...!.%.;
        db   $A7,$43,$A7,$4D,$A7,$63,$A7,$63 ; AADF A7 43 A7 4D A7 63 A7 63  .C.M.c.c
        db   $A7,$63,$A7,$73,$A7,$99,$A7,$A4 ; AAE7 A7 63 A7 73 A7 99 A7 A4  .c.s....
        db   $A7,$AF,$A7,$99,$A7,$A4,$A7,$AF ; AAEF A7 AF A7 99 A7 A4 A7 AF  ........
        db   $A7,$B7,$A7,$6D,$A8,$3D,$A8,$DB ; AAF7 A7 B7 A7 6D A8 3D A8 DB  ...m.=..
        db   $A8,$02,$A7,$0A,$A7,$13,$A7     ; AAFF A8 02 A7 0A A7 13 A7     .......
        db   $74                             ; AB06 74                       t
        db   $72,$82,$72,$90,$72,$9E,$72,$AC ; AB07 72 82 72 90 72 9E 72 AC  r.r.r.r.
        db   $72,$BA,$72,$C8,$72,$D6,$72     ; AB0F 72 BA 72 C8 72 D6 72     r.r.r.r
        db   $00,$01,$03,$05,$08,$0A,$0C,$0D ; AB16 00 01 03 05 08 0A 0C 0D  ........
        db   $00,$02,$03,$04,$05,$06,$07,$08 ; AB1E 00 02 03 04 05 06 07 08  ........
        db   $08,$09,$09,$0B,$0D,$0F,$14,$14 ; AB26 08 09 09 0B 0D 0F 14 14  ........
        db   $14,$15,$15,$15,$80             ; AB2E 14 15 15 15 80           .....
        db   $01,$02,$02,$01,$02,$02,$01,$01 ; AB33 01 02 02 01 02 02 01 01  ........
        db   $02,$01,$01,$01,$01,$01,$01,$01 ; AB3B 02 01 01 01 01 01 01 01  ........
        db   $01,$01,$02,$02,$02,$01,$01,$01 ; AB43 01 01 02 02 02 01 01 01  ........
        db   $01,$01,$01,$01                 ; AB4B 01 01 01 01              ....
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AB4F:
        tsx                                     ; AB4F BA                       .
        lda     $0108,x                         ; AB50 BD 08 01                 ...
        sec                                     ; AB53 38                       8
        sbc     #$01                            ; AB54 E9 01                    ..
        sta     $84                             ; AB56 85 84                    ..
        lda     $0109,x                         ; AB58 BD 09 01                 ...
        sbc     #$00                            ; AB5B E9 00                    ..
        sta     $85                             ; AB5D 85 85                    ..
        ldy     #$00                            ; AB5F A0 00                    ..
        rts                                     ; AB61 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_AB62:
        tya                                     ; AB62 98                       .
        tsx                                     ; AB63 BA                       .
        clc                                     ; AB64 18                       .
        adc     $84                             ; AB65 65 84                    e.
        sta     $0106,x                         ; AB67 9D 06 01                 ...
        lda     $85                             ; AB6A A5 85                    ..
        adc     #$00                            ; AB6C 69 00                    i.
        sta     $0107,x                         ; AB6E 9D 07 01                 ...
        jmp     BattlePartyServices_Branch_A316 ; AB71 4C 16 A3                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AB74:
        stx     $7B                             ; AB74 86 7B                    .{
        txa                                     ; AB76 8A                       .
        pha                                     ; AB77 48                       H
        tya                                     ; AB78 98                       .
        pha                                     ; AB79 48                       H
        jsr     BattlePartyServices_Entry_AB4F  ; AB7A 20 4F AB                  O.
        lda     $76                             ; AB7D A5 76                    .v
        sta     $6E59                           ; AB7F 8D 59 6E                 .Yn
        iny                                     ; AB82 C8                       .
        lda     $77                             ; AB83 A5 77                    .w
        jmp     BattlePartyServices_Branch_AB62 ; AB85 4C 62 AB                 Lb.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AB88:
        stx     $7B                             ; AB88 86 7B                    .{
        sta     $7C                             ; AB8A 85 7C                    .|
        txa                                     ; AB8C 8A                       .
        pha                                     ; AB8D 48                       H
        tya                                     ; AB8E 98                       .
        pha                                     ; AB8F 48                       H
        jsr     BattlePartyServices_Entry_AB4F  ; AB90 20 4F AB                  O.
        lda     $76                             ; AB93 A5 76                    .v
        sta     $6E59                           ; AB95 8D 59 6E                 .Yn
        iny                                     ; AB98 C8                       .
        jmp     BattlePartyServices_Branch_AB62 ; AB99 4C 62 AB                 Lb.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AB9C:
        stx     $7B                             ; AB9C 86 7B                    .{
        txa                                     ; AB9E 8A                       .
        pha                                     ; AB9F 48                       H
        tya                                     ; ABA0 98                       .
        pha                                     ; ABA1 48                       H
        jsr     BattlePartyServices_Entry_AB4F  ; ABA2 20 4F AB                  O.
        lda     $76                             ; ABA5 A5 76                    .v
        sta     $6E59                           ; ABA7 8D 59 6E                 .Yn
        iny                                     ; ABAA C8                       .
        iny                                     ; ABAB C8                       .
        lda     $0517                           ; ABAC AD 17 05                 ...
        ldx     #$84                            ; ABAF A2 84                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; ABB1 20 EA C3                  ..
        sta     $7C                             ; ABB4 85 7C                    .|
        jmp     BattlePartyServices_Branch_AB62 ; ABB6 4C 62 AB                 Lb.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_ABB9:
        lda     $41                             ; ABB9 A5 41                    .A
        bpl     BattlePartyServices_Branch_ABC9 ; ABBB 10 0C                    ..
        lda     CurrentMapNumber                ; ABBD A5 63                    .c
        cmp     #$04                            ; ABBF C9 04                    ..
        bne     BattlePartyServices_Branch_ABC9 ; ABC1 D0 06                    ..
        lda     CurrentSubmapNumber             ; ABC3 A5 64                    .d
        cmp     #$01                            ; ABC5 C9 01                    ..
        beq     BattlePartyServices_Branch_AC0D ; ABC7 F0 44                    .D
BattlePartyServices_Branch_ABC9:
        lda     $6BDE                           ; ABC9 AD DE 6B                 ..k
        bpl     BattlePartyServices_Branch_ABD3 ; ABCC 10 05                    ..
        lda     $72E9                           ; ABCE AD E9 72                 ..r
        bmi     BattlePartyServices_Branch_AC08 ; ABD1 30 35                    05
BattlePartyServices_Branch_ABD3:
        brk                                     ; ABD3 00                       .
        db   $62,$63,$40                     ; ABD4 62 63 40                 bc@
; ----------------------------------------------------------------------------
        beq     BattlePartyServices_Branch_AC08 ; ABD7 F0 2F                    ./
        pha                                     ; ABD9 48                       H
        brk                                     ; ABDA 00                       .
        db   $62,$63,$41                     ; ABDB 62 63 41                 bcA
; ----------------------------------------------------------------------------
        pla                                     ; ABDE 68                       h
        cmp     $72                             ; ABDF C5 72                    .r
        bne     BattlePartyServices_Branch_AC17 ; ABE1 D0 34                    .4
        sta     $02                             ; ABE3 85 02                    ..
        ldx     #$00                            ; ABE5 A2 00                    ..
BattlePartyServices_Branch_ABE7:
        brk                                     ; ABE7 00                       .
        db   $01,$73                         ; ABE8 01 73                    .s
; ----------------------------------------------------------------------------
        sta     $00                           ; ABEA 85 00                    ..
        lda     $73                             ; ABEC A5 73                    .s
        lsr     a                               ; ABEE 4A                       J
        sta     $01                             ; ABEF 85 01                    ..
        ror     $00                           ; ABF1 66 00                    f.
        lsr     $01                             ; ABF3 46 01                    F.
        ror     $00                           ; ABF5 66 00                    f.
        brk                                     ; ABF7 00                       .
        db   $00,$73                         ; ABF8 00 73                    .s
; ----------------------------------------------------------------------------
        sec                                     ; ABFA 38                       8
        sbc     $00                           ; ABFB E5 00                    ..
        lda     $73                             ; ABFD A5 73                    .s
        sbc     $01                             ; ABFF E5 01                    ..
        bcc     BattlePartyServices_Branch_AC1B ; AC01 90 18                    ..
        inx                                     ; AC03 E8                       .
        cpx     $02                             ; AC04 E4 02                    ..
        bne     BattlePartyServices_Branch_ABE7 ; AC06 D0 DF                    ..
BattlePartyServices_Branch_AC08:
        lda     $6BDE                           ; AC08 AD DE 6B                 ..k
        bpl     BattlePartyServices_Branch_AC11 ; AC0B 10 04                    ..
BattlePartyServices_Branch_AC0D:
        lda     #$30                            ; AC0D A9 30                    .0
        bne     BattlePartyServices_Branch_AC1D ; AC0F D0 0C                    ..
BattlePartyServices_Branch_AC11:
        brk                                     ; AC11 00                       .
        db   $2D,$EF                         ; AC12 2D EF                    -.
; ----------------------------------------------------------------------------
        jmp     BattlePartyServices_Branch_AC1D ; AC14 4C 1D AC                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_AC17:
        lda     #$26                            ; AC17 A9 26                    .&
        bne     BattlePartyServices_Branch_AC1D ; AC19 D0 02                    ..
BattlePartyServices_Branch_AC1B:
        lda     #$2A                            ; AC1B A9 2A                    .*
BattlePartyServices_Branch_AC1D:
        sta     $0514                           ; AC1D 8D 14 05                 ...
        rts                                     ; AC20 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AC21:
        jsr     BattlePartyServices_Entry_ABB9  ; AC21 20 B9 AB                  ..
        lda     $0514                           ; AC24 AD 14 05                 ...
        sta     $05FD                           ; AC27 8D FD 05                 ...
        jmp     UpperFixedEngine_Entry_C5B9     ; AC2A 4C B9 C5                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AC2D:
        brk                                     ; AC2D 00                       .
        db   $02,$8F                         ; AC2E 02 8F                    ..
; ----------------------------------------------------------------------------
        lda     #$0B                            ; AC30 A9 0B                    ..
        sta     $96                             ; AC32 85 96                    ..
        ldx     #$07                            ; AC34 A2 07                    ..
BattlePartyServices_Branch_AC36:
        brk                                     ; AC36 00                       .
        db   $29,$C3,$0E                     ; AC37 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        bcs     BattlePartyServices_Branch_AC46 ; AC3A B0 0A                    ..
        txa                                     ; AC3C 8A                       .
        ora     #$A0                            ; AC3D 09 A0                    ..
        ldy     $96                             ; AC3F A4 96                    ..
        sta     BattleSlotDescriptors,y         ; AC41 99 F4 72                 ..r
        bne     BattlePartyServices_Branch_AC6A ; AC44 D0 24                    .$
BattlePartyServices_Branch_AC46:
        txa                                     ; AC46 8A                       .
        ora     #$80                            ; AC47 09 80                    ..
        ldy     $96                             ; AC49 A4 96                    ..
        sta     BattleSlotDescriptors,y         ; AC4B 99 F4 72                 ..r
        brk                                     ; AC4E 00                       .
        db   $29,$C3,$10                     ; AC4F 29 C3 10                 )..
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_AC5A ; AC52 90 06                    ..
        tay                                     ; AC54 A8                       .
        lda     $ACEC,y                         ; AC55 B9 EC AC                 ...
        bne     BattlePartyServices_Branch_AC61 ; AC58 D0 07                    ..
BattlePartyServices_Branch_AC5A:
        brk                                     ; AC5A 00                       .
        db   $2D,$B3                         ; AC5B 2D B3                    -.
; ----------------------------------------------------------------------------
        tay                                     ; AC5D A8                       .
        lda     $7206,y                         ; AC5E B9 06 72                 ..r
BattlePartyServices_Branch_AC61:
        sta     $00                           ; AC61 85 00                    ..
        txa                                     ; AC63 8A                       .
        pha                                     ; AC64 48                       H
        jsr     BattlePartyServices_Entry_AC73  ; AC65 20 73 AC                  s.
        pla                                     ; AC68 68                       h
        tax                                     ; AC69 AA                       .
BattlePartyServices_Branch_AC6A:
        dec     $96                             ; AC6A C6 96                    ..
        dex                                     ; AC6C CA                       .
        bpl     BattlePartyServices_Branch_AC36 ; AC6D 10 C7                    ..
        rts                                     ; AC6F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AC70:
        brk                                     ; AC70 00                       .
        db   $03,$8F                         ; AC71 03 8F                    ..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AC73:
        ldx     #$20                            ; AC73 A2 20                    .
        stx     $6E59                           ; AC75 8E 59 6E                 .Yn
        lda     $00                           ; AC78 A5 00                    ..
        brk                                     ; AC7A 00                       .
        db   $25,$0F                         ; AC7B 25 0F                    %.
; ----------------------------------------------------------------------------
        asl     $7F                             ; AC7D 06 7F                    ..
        rol     a                               ; AC7F 2A                       *
        rol     a                               ; AC80 2A                       *
        and     #$03                            ; AC81 29 03                    ).
        tay                                     ; AC83 A8                       .
        beq     BattlePartyServices_Branch_AC8F ; AC84 F0 09                    ..
        dey                                     ; AC86 88                       .
        bne     BattlePartyServices_Branch_AC8F ; AC87 D0 06                    ..
        jsr     UpperFixedEngine_Entry_C891     ; AC89 20 91 C8                  ..
        and     #$01                            ; AC8C 29 01                    ).
        tay                                     ; AC8E A8                       .
BattlePartyServices_Branch_AC8F:
        sty     $01                             ; AC8F 84 01                    ..
        ldx     $96                             ; AC91 A6 96                    ..
        lda     $7348,x                         ; AC93 BD 48 73                 .Hs
        and     #$0F                            ; AC96 29 0F                    ).
        sta     $7348,x                         ; AC98 9D 48 73                 .Hs
        iny                                     ; AC9B C8                       .
        tya                                     ; AC9C 98                       .
        asl     a                               ; AC9D 0A                       .
        asl     a                               ; AC9E 0A                       .
        asl     a                               ; AC9F 0A                       .
        asl     a                               ; ACA0 0A                       .
        ora     $7348,x                         ; ACA1 1D 48 73                 .Hs
        sta     $7348,x                         ; ACA4 9D 48 73                 .Hs
BattlePartyServices_Branch_ACA7:
        jsr     BattlePartyServices_Entry_ACB8  ; ACA7 20 B8 AC                  ..
        dec     $01                             ; ACAA C6 01                    ..
        bpl     BattlePartyServices_Branch_ACA7 ; ACAC 10 F9                    ..
        rts                                     ; ACAE 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_ACAF:
        brk                                     ; ACAF 00                       .
        db   $04,$8F                         ; ACB0 04 8F                    ..
; ----------------------------------------------------------------------------
        jmp     BattlePartyServices_Entry_ACB8  ; ACB2 4C B8 AC                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_ACB5:
        brk                                     ; ACB5 00                       .
        db   $03,$8F                         ; ACB6 03 8F                    ..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_ACB8:
        brk                                     ; ACB8 00                       .
        db   $62,$23,$41                     ; ACB9 62 23 41                 b#A
; ----------------------------------------------------------------------------
        sta     $D6                             ; ACBC 85 D6                    ..
        dec     $D6                             ; ACBE C6 D6                    ..
        jsr     BattlePartyServices_Entry_AD04  ; ACC0 20 04 AD                  ..
        bcc     BattlePartyServices_Branch_ACC8 ; ACC3 90 03                    ..
        jmp     BattlePartyServices_Branch_AEFD ; ACC5 4C FD AE                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_ACC8:
        ldx     #$23                            ; ACC8 A2 23                    .#
        stx     $6E59                           ; ACCA 8E 59 6E                 .Yn
        lda     $00                           ; ACCD A5 00                    ..
        brk                                     ; ACCF 00                       .
        db   $25,$0F                         ; ACD0 25 0F                    %.
; ----------------------------------------------------------------------------
        asl     a                               ; ACD2 0A                       .
        rol     a                               ; ACD3 2A                       *
        rol     a                               ; ACD4 2A                       *
        and     #$03                            ; ACD5 29 03                    ).
        tay                                     ; ACD7 A8                       .
        bne     BattlePartyServices_Branch_ACDD ; ACD8 D0 03                    ..
        jmp     BattlePartyServices_Branch_AE7E ; ACDA 4C 7E AE                 L~.
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_ACDD:
        dey                                     ; ACDD 88                       .
        bne     BattlePartyServices_Branch_ACE3 ; ACDE D0 03                    ..
        jmp     BattlePartyServices_Branch_AEC0 ; ACE0 4C C0 AE                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_ACE3:
        dey                                     ; ACE3 88                       .
        bne     BattlePartyServices_Branch_ACE9 ; ACE4 D0 03                    ..
        jmp     BattlePartyServices_Branch_AF16 ; ACE6 4C 16 AF                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_ACE9:
        jmp     BattlePartyServices_Branch_B03D ; ACE9 4C 3D B0                 L=.
; ----------------------------------------------------------------------------
        db   $D3,$D4,$D5,$E9                 ; ACEC D3 D4 D5 E9              ....
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_ACF0:
        pha                                     ; ACF0 48                       H
        lda     $01                             ; ACF1 A5 01                    ..
        pha                                     ; ACF3 48                       H
        asl     a                               ; ACF4 0A                       .
        asl     a                               ; ACF5 0A                       .
        sta     $01                             ; ACF6 85 01                    ..
        asl     a                               ; ACF8 0A                       .
        clc                                     ; ACF9 18                       .
        adc     $01                             ; ACFA 65 01                    e.
        adc     $96                             ; ACFC 65 96                    e.
        tax                                     ; ACFE AA                       .
        pla                                     ; ACFF 68                       h
        sta     $01                             ; AD00 85 01                    ..
        pla                                     ; AD02 68                       h
        rts                                     ; AD03 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AD04:
        pha                                     ; AD04 48                       H
        txa                                     ; AD05 8A                       .
        pha                                     ; AD06 48                       H
        ldx     $96                             ; AD07 A6 96                    ..
        lda     BattleSlotDescriptors,x         ; AD09 BD F4 72                 ..r
        php                                     ; AD0C 08                       .
        and     #$0F                            ; AD0D 29 0F                    ).
        tax                                     ; AD0F AA                       .
        plp                                     ; AD10 28                       (
        bmi     BattlePartyServices_Branch_AD1E ; AD11 30 0B                    0.
        brk                                     ; AD13 00                       .
        db   $67,$73                         ; AD14 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; AD16 AA                       .
        brk                                     ; AD17 00                       .
        db   $46,$93,$12                     ; AD18 46 93 12                 F..
; ----------------------------------------------------------------------------
        jmp     BattlePartyServices_Branch_AD22 ; AD1B 4C 22 AD                 L".
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_AD1E:
        brk                                     ; AD1E 00                       .
        db   $29,$C3,$02                     ; AD1F 29 C3 02                 )..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_AD22:
        pla                                     ; AD22 68                       h
        tax                                     ; AD23 AA                       .
        pla                                     ; AD24 68                       h
        rts                                     ; AD25 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AD26:
        pha                                     ; AD26 48                       H
        lda     $72E9                           ; AD27 AD E9 72                 ..r
        asl     a                               ; AD2A 0A                       .
        pla                                     ; AD2B 68                       h
        rts                                     ; AD2C 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AD2D:
        jsr     BattlePartyServices_Entry_AD32  ; AD2D 20 32 AD                  2.
        bmi     BattlePartyServices_Branch_AD40 ; AD30 30 0E                    0.
BattlePartyServices_Entry_AD32:
        jsr     BattlePartyServices_Entry_AD4E  ; AD32 20 4E AD                  N.
        lda     #$FF                            ; AD35 A9 FF                    ..
        clc                                     ; AD37 18                       .
BattlePartyServices_Branch_AD38:
        rol     a                               ; AD38 2A                       *
        dex                                     ; AD39 CA                       .
        bpl     BattlePartyServices_Branch_AD38 ; AD3A 10 FC                    ..
        rts                                     ; AD3C 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AD3D:
        jsr     BattlePartyServices_Entry_AD43  ; AD3D 20 43 AD                  C.
BattlePartyServices_Branch_AD40:
        sta     $09                             ; AD40 85 09                    ..
        rts                                     ; AD42 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AD43:
        jsr     BattlePartyServices_Entry_AD4E  ; AD43 20 4E AD                  N.
        lda     #$00                            ; AD46 A9 00                    ..
        sec                                     ; AD48 38                       8
BattlePartyServices_Branch_AD49:
        rol     a                               ; AD49 2A                       *
        dex                                     ; AD4A CA                       .
        bpl     BattlePartyServices_Branch_AD49 ; AD4B 10 FC                    ..
        rts                                     ; AD4D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AD4E:
        ldx     $96                             ; AD4E A6 96                    ..
        lda     BattleSlotDescriptors,x         ; AD50 BD F4 72                 ..r
        and     #$0F                            ; AD53 29 0F                    ).
        tax                                     ; AD55 AA                       .
        rts                                     ; AD56 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AD57:
        pha                                     ; AD57 48                       H
        txa                                     ; AD58 8A                       .
        pha                                     ; AD59 48                       H
        sec                                     ; AD5A 38                       8
        ldx     $96                             ; AD5B A6 96                    ..
        lda     BattleSlotDescriptors,x         ; AD5D BD F4 72                 ..r
        asl     a                               ; AD60 0A                       .
        pla                                     ; AD61 68                       h
        tax                                     ; AD62 AA                       .
        pla                                     ; AD63 68                       h
        rts                                     ; AD64 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AD65:
        txa                                     ; AD65 8A                       .
        pha                                     ; AD66 48                       H
        tya                                     ; AD67 98                       .
        pha                                     ; AD68 48                       H
        lda     #$23                            ; AD69 A9 23                    .#
        sta     $6E59                           ; AD6B 8D 59 6E                 .Yn
        lda     $00                           ; AD6E A5 00                    ..
        brk                                     ; AD70 00                       .
        db   $25,$0F                         ; AD71 25 0F                    %.
; ----------------------------------------------------------------------------
        asl     a                               ; AD73 0A                       .
        rol     a                               ; AD74 2A                       *
        rol     a                               ; AD75 2A                       *
        and     #$03                            ; AD76 29 03                    ).
        sta     $02                             ; AD78 85 02                    ..
        pla                                     ; AD7A 68                       h
        tay                                     ; AD7B A8                       .
        pla                                     ; AD7C 68                       h
        tax                                     ; AD7D AA                       .
        lda     $02                             ; AD7E A5 02                    ..
        rts                                     ; AD80 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AD81:
        jsr     BattlePartyServices_Entry_AD26  ; AD81 20 26 AD                  &.
        bcc     BattlePartyServices_Branch_ADA4 ; AD84 90 1E                    ..
        jsr     BattlePartyServices_Entry_AD2D  ; AD86 20 2D AD                  -.
        ldx     #$FF                            ; AD89 A2 FF                    ..
        brk                                     ; AD8B 00                       .
        db   $29,$C3,$0E                     ; AD8C 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        and     $09                             ; AD8F 25 09                    %.
        sta     $09                             ; AD91 85 09                    ..
        ldx     #$07                            ; AD93 A2 07                    ..
BattlePartyServices_Branch_AD95:
        asl     $09                             ; AD95 06 09                    ..
        bcc     BattlePartyServices_Branch_AD9F ; AD97 90 06                    ..
        brk                                     ; AD99 00                       .
        db   $29,$C3,$11                     ; AD9A 29 C3 11                 )..
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_ADEC ; AD9D 90 4D                    .M
BattlePartyServices_Branch_AD9F:
        dex                                     ; AD9F CA                       .
        bpl     BattlePartyServices_Branch_AD95 ; ADA0 10 F3                    ..
        bmi     BattlePartyServices_Branch_ADC3 ; ADA2 30 1F                    0.
BattlePartyServices_Branch_ADA4:
        jsr     BattlePartyServices_Entry_AD57  ; ADA4 20 57 AD                  W.
        bcs     BattlePartyServices_Branch_ADBC ; ADA7 B0 13                    ..
        ldx     #$07                            ; ADA9 A2 07                    ..
BattlePartyServices_Branch_ADAB:
        brk                                     ; ADAB 00                       .
        db   $29,$C3,$0E                     ; ADAC 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_ADB7 ; ADAF 90 06                    ..
        brk                                     ; ADB1 00                       .
        db   $29,$C3,$11                     ; ADB2 29 C3 11                 )..
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_ADEC ; ADB5 90 35                    .5
BattlePartyServices_Branch_ADB7:
        dex                                     ; ADB7 CA                       .
        bpl     BattlePartyServices_Branch_ADAB ; ADB8 10 F1                    ..
        bmi     BattlePartyServices_Branch_ADC3 ; ADBA 30 07                    0.
BattlePartyServices_Branch_ADBC:
        lda     $72E6                           ; ADBC AD E6 72                 ..r
        and     #$30                            ; ADBF 29 30                    )0
        beq     BattlePartyServices_Branch_ADEC ; ADC1 F0 29                    .)
BattlePartyServices_Branch_ADC3:
        jsr     BattlePartyServices_Entry_ACF0  ; ADC3 20 F0 AC                  ..
        jsr     UpperFixedEngine_Entry_C891     ; ADC6 20 91 C8                  ..
        lsr     a                               ; ADC9 4A                       J
        lda     #$00                            ; ADCA A9 00                    ..
        adc     #$3E                            ; ADCC 69 3E                    i>
        sta     $0B                             ; ADCE 85 0B                    ..
        sta     $7324,x                         ; ADD0 9D 24 73                 .$s
        sec                                     ; ADD3 38                       8
        rts                                     ; ADD4 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_ADD5:
        jsr     BattlePartyServices_Entry_AD57  ; ADD5 20 57 AD                  W.
        bcc     BattlePartyServices_Branch_ADEC ; ADD8 90 12                    ..
        jsr     BattlePartyServices_Entry_B1AA  ; ADDA 20 AA B1                  ..
        ldy     #$00                            ; ADDD A0 00                    ..
BattlePartyServices_Branch_ADDF:
        lda     BattleActionIds,x               ; ADDF BD 8C 6D                 ..m
        cmp     #$1B                            ; ADE2 C9 1B                    ..
        beq     BattlePartyServices_Branch_ADEE ; ADE4 F0 08                    ..
        inx                                     ; ADE6 E8                       .
        iny                                     ; ADE7 C8                       .
        cpy     #$06                            ; ADE8 C0 06                    ..
        bcc     BattlePartyServices_Branch_ADDF ; ADEA 90 F3                    ..
BattlePartyServices_Branch_ADEC:
        clc                                     ; ADEC 18                       .
        rts                                     ; ADED 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_ADEE:
        jsr     BattlePartyServices_Entry_ACF0  ; ADEE 20 F0 AC                  ..
        lda     #$1D                            ; ADF1 A9 1D                    ..
        sta     $0B                             ; ADF3 85 0B                    ..
        sta     $7324,x                         ; ADF5 9D 24 73                 .$s
        jsr     BattlePartyServices_Entry_B23B  ; ADF8 20 3B B2                  ;.
        jsr     BattlePartyServices_Entry_B266  ; ADFB 20 66 B2                  f.
        jsr     BattlePartyServices_Entry_B272  ; ADFE 20 72 B2                  r.
        jsr     BattlePartyServices_Entry_B311  ; AE01 20 11 B3                  ..
        jsr     BattlePartyServices_Entry_B84E  ; AE04 20 4E B8                  N.
        ldx     #$03                            ; AE07 A2 03                    ..
BattlePartyServices_Branch_AE09:
        txa                                     ; AE09 8A                       .
        pha                                     ; AE0A 48                       H
        sta     $6F                             ; AE0B 85 6F                    .o
        brk                                     ; AE0D 00                       .
        db   $67,$53                         ; AE0E 67 53                    gS
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_AE38 ; AE10 90 26                    .&
        bvc     BattlePartyServices_Branch_AE38 ; AE12 50 24                    P$
        tax                                     ; AE14 AA                       .
        ldy     #$0B                            ; AE15 A0 0B                    ..
        brk                                     ; AE17 00                       .
        db   $2B,$53                         ; AE18 2B 53                    +S
; ----------------------------------------------------------------------------
        bne     BattlePartyServices_Branch_AE1E ; AE1A D0 02                    ..
        ldy     #$11                            ; AE1C A0 11                    ..
BattlePartyServices_Branch_AE1E:
        sty     $6F                             ; AE1E 84 6F                    .o
BattlePartyServices_Branch_AE20:
        brk                                     ; AE20 00                       .
        db   $3F,$53                         ; AE21 3F 53                    ?S
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_AE2D ; AE23 90 08                    ..
        cmp     #$29                            ; AE25 C9 29                    .)
        bcc     BattlePartyServices_Branch_AE2D ; AE27 90 04                    ..
        cmp     #$2E                            ; AE29 C9 2E                    ..
        bcc     BattlePartyServices_Branch_AE33 ; AE2B 90 06                    ..
BattlePartyServices_Branch_AE2D:
        dec     $6F                             ; AE2D C6 6F                    .o
        bpl     BattlePartyServices_Branch_AE20 ; AE2F 10 EF                    ..
        bmi     BattlePartyServices_Branch_AE38 ; AE31 30 05                    0.
BattlePartyServices_Branch_AE33:
        pla                                     ; AE33 68                       h
        pha                                     ; AE34 48                       H
        jsr     BattlePartyServices_Entry_BBC5  ; AE35 20 C5 BB                  ..
BattlePartyServices_Branch_AE38:
        pla                                     ; AE38 68                       h
        tax                                     ; AE39 AA                       .
        dex                                     ; AE3A CA                       .
        bpl     BattlePartyServices_Branch_AE09 ; AE3B 10 CC                    ..
        lda     $09                             ; AE3D A5 09                    ..
        beq     BattlePartyServices_Branch_ADEC ; AE3F F0 AB                    ..
        sec                                     ; AE41 38                       8
        rts                                     ; AE42 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AE43:
        jsr     BattlePartyServices_Entry_AD26  ; AE43 20 26 AD                  &.
        bcc     BattlePartyServices_Branch_AE6C ; AE46 90 24                    .$
        lda     $0A                             ; AE48 A5 0A                    ..
        cmp     #$15                            ; AE4A C9 15                    ..
        beq     BattlePartyServices_Branch_AE6A ; AE4C F0 1C                    ..
        cmp     #$3B                            ; AE4E C9 3B                    .;
        beq     BattlePartyServices_Branch_AE6A ; AE50 F0 18                    ..
        cmp     #$43                            ; AE52 C9 43                    .C
        beq     BattlePartyServices_Branch_AE6A ; AE54 F0 14                    ..
        cmp     #$61                            ; AE56 C9 61                    .a
        beq     BattlePartyServices_Branch_AE6A ; AE58 F0 10                    ..
        cmp     #$1F                            ; AE5A C9 1F                    ..
        bcc     BattlePartyServices_Branch_AE6C ; AE5C 90 0E                    ..
        cmp     #$22                            ; AE5E C9 22                    ."
        bcc     BattlePartyServices_Branch_AE6A ; AE60 90 08                    ..
        cmp     #$47                            ; AE62 C9 47                    .G
        bcc     BattlePartyServices_Branch_AE6C ; AE64 90 06                    ..
        cmp     #$58                            ; AE66 C9 58                    .X
        bcs     BattlePartyServices_Branch_AE6C ; AE68 B0 02                    ..
BattlePartyServices_Branch_AE6A:
        clc                                     ; AE6A 18                       .
        rts                                     ; AE6B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_AE6C:
        sec                                     ; AE6C 38                       8
        rts                                     ; AE6D 60                       `
; ----------------------------------------------------------------------------
        db   $FF,$00,$00,$00,$91,$6E,$00,$00 ; AE6E FF 00 00 00 91 6E 00 00  .....n..
        db   $71,$55,$39,$00,$70,$4D,$2D,$15 ; AE76 71 55 39 00 70 4D 2D 15  qU9.pM-.
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_AE7E:
        ldx     #$00                            ; AE7E A2 00                    ..
        stx     $06                             ; AE80 86 06                    ..
BattlePartyServices_Branch_AE82:
        jsr     BattlePartyServices_Entry_B183  ; AE82 20 83 B1                  ..
        bcs     BattlePartyServices_Branch_AE8F ; AE85 B0 08                    ..
        jsr     BattlePartyServices_Entry_AE43  ; AE87 20 43 AE                  C.
        bcs     BattlePartyServices_Branch_AE8F ; AE8A B0 03                    ..
        jsr     BattlePartyServices_Entry_B195  ; AE8C 20 95 B1                  ..
BattlePartyServices_Branch_AE8F:
        inc     $06                             ; AE8F E6 06                    ..
        lda     $06                             ; AE91 A5 06                    ..
        cmp     #$06                            ; AE93 C9 06                    ..
        bcc     BattlePartyServices_Branch_AE82 ; AE95 90 EB                    ..
        jsr     BattlePartyServices_Entry_B095  ; AE97 20 95 B0                  ..
        jsr     BattlePartyServices_Entry_B23B  ; AE9A 20 3B B2                  ;.
        jsr     BattlePartyServices_Entry_B272  ; AE9D 20 72 B2                  r.
        jsr     BattlePartyServices_Entry_B311  ; AEA0 20 11 B3                  ..
        jsr     BattlePartyServices_Entry_B2B8  ; AEA3 20 B8 B2                  ..
        bcs     BattlePartyServices_Branch_AEBC ; AEA6 B0 14                    ..
        lda     $0A                             ; AEA8 A5 0A                    ..
        cmp     #$5F                            ; AEAA C9 5F                    ._
        beq     BattlePartyServices_Branch_AEB9 ; AEAC F0 0B                    ..
        cmp     #$22                            ; AEAE C9 22                    ."
        bcs     BattlePartyServices_Branch_AEB5 ; AEB0 B0 03                    ..
        sec                                     ; AEB2 38                       8
        bcs     BattlePartyServices_Branch_AEBC ; AEB3 B0 07                    ..
BattlePartyServices_Branch_AEB5:
        cmp     #$28                            ; AEB5 C9 28                    .(
        bcs     BattlePartyServices_Branch_AEBC ; AEB7 B0 03                    ..
BattlePartyServices_Branch_AEB9:
        jsr     BattlePartyServices_Entry_B460  ; AEB9 20 60 B4                  `.
BattlePartyServices_Branch_AEBC:
        jsr     BattlePartyServices_Entry_B3A0  ; AEBC 20 A0 B3                  ..
        rts                                     ; AEBF 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_AEC0:
        lda     #$00                            ; AEC0 A9 00                    ..
        sta     $06                             ; AEC2 85 06                    ..
BattlePartyServices_Branch_AEC4:
        jsr     BattlePartyServices_Entry_B183  ; AEC4 20 83 B1                  ..
        bcs     BattlePartyServices_Branch_AED6 ; AEC7 B0 0D                    ..
        jsr     BattlePartyServices_Entry_B1BF  ; AEC9 20 BF B1                  ..
        bcc     BattlePartyServices_Branch_AED3 ; AECC 90 05                    ..
        jsr     BattlePartyServices_Entry_AEE8  ; AECE 20 E8 AE                  ..
        bcs     BattlePartyServices_Branch_AED6 ; AED1 B0 03                    ..
BattlePartyServices_Branch_AED3:
        jsr     BattlePartyServices_Entry_B195  ; AED3 20 95 B1                  ..
BattlePartyServices_Branch_AED6:
        inc     $06                             ; AED6 E6 06                    ..
        lda     $06                             ; AED8 A5 06                    ..
        cmp     #$06                            ; AEDA C9 06                    ..
        bcc     BattlePartyServices_Branch_AEC4 ; AEDC 90 E6                    ..
        jsr     BattlePartyServices_Entry_B095  ; AEDE 20 95 B0                  ..
        jsr     BattlePartyServices_Entry_AEE8  ; AEE1 20 E8 AE                  ..
        jsr     BattlePartyServices_Entry_B3A0  ; AEE4 20 A0 B3                  ..
        rts                                     ; AEE7 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AEE8:
        jsr     BattlePartyServices_Entry_B23B  ; AEE8 20 3B B2                  ;.
        jsr     BattlePartyServices_Entry_B272  ; AEEB 20 72 B2                  r.
        jsr     BattlePartyServices_Entry_B311  ; AEEE 20 11 B3                  ..
        jsr     BattlePartyServices_Entry_B2B8  ; AEF1 20 B8 B2                  ..
        jsr     BattlePartyServices_Entry_B460  ; AEF4 20 60 B4                  `.
        lda     $09                             ; AEF7 A5 09                    ..
        bne     BattlePartyServices_Branch_AEFC ; AEF9 D0 01                    ..
        clc                                     ; AEFB 18                       .
BattlePartyServices_Branch_AEFC:
        rts                                     ; AEFC 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_AEFD:
        jsr     BattlePartyServices_Entry_B095  ; AEFD 20 95 B0                  ..
        jsr     BattlePartyServices_Entry_B23B  ; AF00 20 3B B2                  ;.
        jsr     BattlePartyServices_Entry_AD26  ; AF03 20 26 AD                  &.
        bcs     BattlePartyServices_Branch_AF0B ; AF06 B0 03                    ..
        jsr     BattlePartyServices_Entry_B266  ; AF08 20 66 B2                  f.
BattlePartyServices_Branch_AF0B:
        jsr     BattlePartyServices_Entry_B272  ; AF0B 20 72 B2                  r.
        jsr     BattlePartyServices_Entry_B311  ; AF0E 20 11 B3                  ..
        sec                                     ; AF11 38                       8
        jsr     BattlePartyServices_Entry_B3A0  ; AF12 20 A0 B3                  ..
        rts                                     ; AF15 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_AF16:
        ldx     $96                             ; AF16 A6 96                    ..
        cpx     #$04                            ; AF18 E0 04                    ..
        bcc     BattlePartyServices_Branch_AF39 ; AF1A 90 1D                    ..
        lda     BattleSlotDescriptors,x         ; AF1C BD F4 72                 ..r
        and     #$0F                            ; AF1F 29 0F                    ).
        tax                                     ; AF21 AA                       .
        brk                                     ; AF22 00                       .
        db   $29,$C3,$0C                     ; AF23 29 C3 0C                 )..
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_AF39 ; AF26 90 11                    ..
        sta     $6F                             ; AF28 85 6F                    .o
        brk                                     ; AF2A 00                       .
        db   $67,$33                         ; AF2B 67 33                    g3
; ----------------------------------------------------------------------------
        sta     $6E                             ; AF2D 85 6E                    .n
        jsr     BattlePartyServices_Entry_AF61  ; AF2F 20 61 AF                  a.
        jsr     BattlePartyServices_Entry_AEE8  ; AF32 20 E8 AE                  ..
        jsr     BattlePartyServices_Entry_B3A0  ; AF35 20 A0 B3                  ..
        rts                                     ; AF38 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_AF39:
        lda     #$00                            ; AF39 A9 00                    ..
        sta     $06                             ; AF3B 85 06                    ..
BattlePartyServices_Branch_AF3D:
        jsr     BattlePartyServices_Entry_B183  ; AF3D 20 83 B1                  ..
        bcs     BattlePartyServices_Branch_AF4F ; AF40 B0 0D                    ..
        jsr     BattlePartyServices_Entry_B1BF  ; AF42 20 BF B1                  ..
        bcc     BattlePartyServices_Branch_AF4C ; AF45 90 05                    ..
        jsr     BattlePartyServices_Entry_AEE8  ; AF47 20 E8 AE                  ..
        bcs     BattlePartyServices_Branch_AF4F ; AF4A B0 03                    ..
BattlePartyServices_Branch_AF4C:
        jsr     BattlePartyServices_Entry_B195  ; AF4C 20 95 B1                  ..
BattlePartyServices_Branch_AF4F:
        inc     $06                             ; AF4F E6 06                    ..
        lda     $06                             ; AF51 A5 06                    ..
        cmp     #$06                            ; AF53 C9 06                    ..
        bcc     BattlePartyServices_Branch_AF3D ; AF55 90 E6                    ..
        jsr     BattlePartyServices_Entry_B095  ; AF57 20 95 B0                  ..
        jsr     BattlePartyServices_Entry_AEE8  ; AF5A 20 E8 AE                  ..
        jsr     BattlePartyServices_Entry_B3A0  ; AF5D 20 A0 B3                  ..
        rts                                     ; AF60 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AF61:
        lda     #$00                            ; AF61 A9 00                    ..
        sta     $7374                           ; AF63 8D 74 73                 .ts
        lda     #$0B                            ; AF66 A9 0B                    ..
        sta     $6F                             ; AF68 85 6F                    .o
        brk                                     ; AF6A 00                       .
        db   $2B,$33                         ; AF6B 2B 33                    +3
; ----------------------------------------------------------------------------
        bne     BattlePartyServices_Branch_AF73 ; AF6D D0 04                    ..
        lda     #$11                            ; AF6F A9 11                    ..
        sta     $6F                             ; AF71 85 6F                    .o
BattlePartyServices_Branch_AF73:
        lda     $6F                             ; AF73 A5 6F                    .o
        sta     $7375                           ; AF75 8D 75 73                 .us
        jsr     UpperFixedEngine_Entry_C891     ; AF78 20 91 C8                  ..
        cmp     #$40                            ; AF7B C9 40                    .@
        bcc     BattlePartyServices_Branch_AFAF ; AF7D 90 30                    .0
        jmp     BattlePartyServices_Branch_AFAF ; AF7F 4C AF AF                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AF82:
        jsr     BattlePartyServices_Entry_B022  ; AF82 20 22 B0                  ".
        bcc     BattlePartyServices_Branch_AFA0 ; AF85 90 19                    ..
        ldx     #$14                            ; AF87 A2 14                    ..
BattlePartyServices_Branch_AF89:
        cmp     $B028,x                         ; AF89 DD 28 B0                 .(.
        beq     BattlePartyServices_Branch_AF93 ; AF8C F0 05                    ..
        dex                                     ; AF8E CA                       .
        bpl     BattlePartyServices_Branch_AF89 ; AF8F 10 F8                    ..
        bmi     BattlePartyServices_Branch_AFA0 ; AF91 30 0D                    0.
BattlePartyServices_Branch_AF93:
        cpx     $7374                           ; AF93 EC 74 73                 .ts
        bcc     BattlePartyServices_Branch_AFA0 ; AF96 90 08                    ..
        jsr     BattlePartyServices_Entry_AFFB  ; AF98 20 FB AF                  ..
        bcc     BattlePartyServices_Branch_AFA0 ; AF9B 90 03                    ..
        stx     $7374                           ; AF9D 8E 74 73                 .ts
BattlePartyServices_Branch_AFA0:
        dec     $6F                             ; AFA0 C6 6F                    .o
        bpl     BattlePartyServices_Entry_AF82  ; AFA2 10 DE                    ..
        ldx     $7374                           ; AFA4 AE 74 73                 .ts
        beq     BattlePartyServices_Branch_AFAF ; AFA7 F0 06                    ..
        lda     $B028,x                         ; AFA9 BD 28 B0                 .(.
        jmp     BattlePartyServices_Branch_AFF2 ; AFAC 4C F2 AF                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_AFAF:
        lda     $7375                           ; AFAF AD 75 73                 .us
        sta     $6F                             ; AFB2 85 6F                    .o
        ldy     #$00                            ; AFB4 A0 00                    ..
BattlePartyServices_Branch_AFB6:
        jsr     BattlePartyServices_Entry_B022  ; AFB6 20 22 B0                  ".
        bcc     BattlePartyServices_Branch_AFC1 ; AFB9 90 06                    ..
        jsr     BattlePartyServices_Entry_AFFB  ; AFBB 20 FB AF                  ..
        bcc     BattlePartyServices_Branch_AFC1 ; AFBE 90 01                    ..
        iny                                     ; AFC0 C8                       .
BattlePartyServices_Branch_AFC1:
        dec     $6F                             ; AFC1 C6 6F                    .o
        bpl     BattlePartyServices_Branch_AFB6 ; AFC3 10 F1                    ..
        tya                                     ; AFC5 98                       .
        beq     BattlePartyServices_Branch_AFF0 ; AFC6 F0 28                    .(
        brk                                     ; AFC8 00                       .
        db   $17,$0F                         ; AFC9 17 0F                    ..
; ----------------------------------------------------------------------------
        sta     $7374                           ; AFCB 8D 74 73                 .ts
        ldy     #$00                            ; AFCE A0 00                    ..
        sty     $6F                             ; AFD0 84 6F                    .o
        inc     $7375                           ; AFD2 EE 75 73                 .us
BattlePartyServices_Branch_AFD5:
        jsr     BattlePartyServices_Entry_B022  ; AFD5 20 22 B0                  ".
        bcc     BattlePartyServices_Branch_AFE7 ; AFD8 90 0D                    ..
        jsr     BattlePartyServices_Entry_AFFB  ; AFDA 20 FB AF                  ..
        bcc     BattlePartyServices_Branch_AFE7 ; AFDD 90 08                    ..
        lda     $0B                             ; AFDF A5 0B                    ..
        cpy     $7374                           ; AFE1 CC 74 73                 .ts
        beq     BattlePartyServices_Branch_AFF2 ; AFE4 F0 0C                    ..
        iny                                     ; AFE6 C8                       .
BattlePartyServices_Branch_AFE7:
        inc     $6F                             ; AFE7 E6 6F                    .o
        lda     $6F                             ; AFE9 A5 6F                    .o
        cmp     $7375                           ; AFEB CD 75 73                 .us
        bcc     BattlePartyServices_Branch_AFD5 ; AFEE 90 E5                    ..
BattlePartyServices_Branch_AFF0:
        lda     #$43                            ; AFF0 A9 43                    .C
BattlePartyServices_Branch_AFF2:
        sta     $0B                             ; AFF2 85 0B                    ..
        jsr     BattlePartyServices_Entry_ACF0  ; AFF4 20 F0 AC                  ..
        sta     $7324,x                         ; AFF7 9D 24 73                 .$s
        rts                                     ; AFFA 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_AFFB:
        lda     $09                             ; AFFB A5 09                    ..
        pha                                     ; AFFD 48                       H
        jsr     BattlePartyServices_Entry_B005  ; AFFE 20 05 B0                  ..
        pla                                     ; B001 68                       h
        sta     $09                             ; B002 85 09                    ..
        rts                                     ; B004 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B005:
        lda     $6E                             ; B005 A5 6E                    .n
        pha                                     ; B007 48                       H
        lda     $6F                             ; B008 A5 6F                    .o
        pha                                     ; B00A 48                       H
        txa                                     ; B00B 8A                       .
        pha                                     ; B00C 48                       H
        tya                                     ; B00D 98                       .
        pha                                     ; B00E 48                       H
        jsr     BattlePartyServices_Entry_B1BF  ; B00F 20 BF B1                  ..
        bcc     BattlePartyServices_Branch_B017 ; B012 90 03                    ..
        jsr     BattlePartyServices_Entry_AEE8  ; B014 20 E8 AE                  ..
BattlePartyServices_Branch_B017:
        pla                                     ; B017 68                       h
        tay                                     ; B018 A8                       .
        pla                                     ; B019 68                       h
        tax                                     ; B01A AA                       .
        pla                                     ; B01B 68                       h
        sta     $6F                             ; B01C 85 6F                    .o
        pla                                     ; B01E 68                       h
        sta     $6E                             ; B01F 85 6E                    .n
        rts                                     ; B021 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B022:
        brk                                     ; B022 00                       .
        db   $3F,$33                         ; B023 3F 33                    ?3
; ----------------------------------------------------------------------------
        sta     $0B                             ; B025 85 0B                    ..
        rts                                     ; B027 60                       `
; ----------------------------------------------------------------------------
        db   $43,$00,$09,$0D,$03,$06,$13,$10 ; B028 43 00 09 0D 03 06 13 10  C.......
        db   $01,$0E,$0A,$04,$14,$07,$0B,$0F ; B030 01 0E 0A 04 14 07 0B 0F  ........
        db   $02,$05,$0C,$08,$11             ; B038 02 05 0C 08 11           .....
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B03D:
        jsr     BattlePartyServices_Entry_AD81  ; B03D 20 81 AD                  ..
        bcs     BattlePartyServices_Branch_B069 ; B040 B0 27                    .'
        lda     #$00                            ; B042 A9 00                    ..
        sta     $06                             ; B044 85 06                    ..
BattlePartyServices_Branch_B046:
        jsr     BattlePartyServices_Entry_B183  ; B046 20 83 B1                  ..
        bcs     BattlePartyServices_Branch_B053 ; B049 B0 08                    ..
        jsr     BattlePartyServices_Entry_B06A  ; B04B 20 6A B0                  j.
        bcs     BattlePartyServices_Branch_B053 ; B04E B0 03                    ..
        jsr     BattlePartyServices_Entry_B195  ; B050 20 95 B1                  ..
BattlePartyServices_Branch_B053:
        inc     $06                             ; B053 E6 06                    ..
        lda     $06                             ; B055 A5 06                    ..
        cmp     #$06                            ; B057 C9 06                    ..
        bcc     BattlePartyServices_Branch_B046 ; B059 90 EB                    ..
        jsr     BattlePartyServices_Entry_ADD5  ; B05B 20 D5 AD                  ..
        bcs     BattlePartyServices_Branch_B066 ; B05E B0 06                    ..
        jsr     BattlePartyServices_Entry_B095  ; B060 20 95 B0                  ..
        jsr     BattlePartyServices_Entry_B06A  ; B063 20 6A B0                  j.
BattlePartyServices_Branch_B066:
        jsr     BattlePartyServices_Entry_B3A0  ; B066 20 A0 B3                  ..
BattlePartyServices_Branch_B069:
        rts                                     ; B069 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B06A:
        jsr     BattlePartyServices_Entry_B1BF  ; B06A 20 BF B1                  ..
        bcc     BattlePartyServices_Branch_B094 ; B06D 90 25                    .%
        jsr     BattlePartyServices_Entry_B23B  ; B06F 20 3B B2                  ;.
        jsr     BattlePartyServices_Entry_B272  ; B072 20 72 B2                  r.
        jsr     BattlePartyServices_Entry_B311  ; B075 20 11 B3                  ..
        jsr     BattlePartyServices_Entry_AD26  ; B078 20 26 AD                  &.
        bcc     BattlePartyServices_Branch_B089 ; B07B 90 0C                    ..
        ldx     #$FF                            ; B07D A2 FF                    ..
        brk                                     ; B07F 00                       .
        db   $29,$C3,$11                     ; B080 29 C3 11                 )..
; ----------------------------------------------------------------------------
        eor     #$0F                            ; B083 49 0F                    I.
        and     $09                             ; B085 25 09                    %.
        sta     $09                             ; B087 85 09                    ..
BattlePartyServices_Branch_B089:
        jsr     BattlePartyServices_Entry_B2B8  ; B089 20 B8 B2                  ..
        jsr     BattlePartyServices_Entry_B460  ; B08C 20 60 B4                  `.
        lda     $09                             ; B08F A5 09                    ..
        bne     BattlePartyServices_Branch_B094 ; B091 D0 01                    ..
        clc                                     ; B093 18                       .
BattlePartyServices_Branch_B094:
        rts                                     ; B094 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B095:
        jsr     BattlePartyServices_Entry_AD04  ; B095 20 04 AD                  ..
        bcc     BattlePartyServices_Branch_B0CB ; B098 90 31                    .1
        jsr     UpperFixedEngine_Entry_C891     ; B09A 20 91 C8                  ..
        cmp     #$40                            ; B09D C9 40                    .@
        bcs     BattlePartyServices_Branch_B113 ; B09F B0 72                    .r
BattlePartyServices_Branch_B0A1:
        jsr     UpperFixedEngine_Entry_C891     ; B0A1 20 91 C8                  ..
        and     #$07                            ; B0A4 29 07                    ).
        jsr     BattlePartyServices_Entry_AD57  ; B0A6 20 57 AD                  W.
        bcc     BattlePartyServices_Branch_B0B0 ; B0A9 90 05                    ..
        jsr     BattlePartyServices_Entry_AD26  ; B0AB 20 26 AD                  &.
        bcc     BattlePartyServices_Branch_B0B8 ; B0AE 90 08                    ..
BattlePartyServices_Branch_B0B0:
        cmp     #$02                            ; B0B0 C9 02                    ..
        beq     BattlePartyServices_Branch_B0A1 ; B0B2 F0 ED                    ..
        cmp     #$07                            ; B0B4 C9 07                    ..
        beq     BattlePartyServices_Branch_B0A1 ; B0B6 F0 E9                    ..
BattlePartyServices_Branch_B0B8:
        ldy     $6E44                           ; B0B8 AC 44 6E                 .Dn
        bpl     BattlePartyServices_Branch_B0C1 ; B0BB 10 04                    ..
        cmp     #$07                            ; B0BD C9 07                    ..
        beq     BattlePartyServices_Branch_B0A1 ; B0BF F0 E0                    ..
BattlePartyServices_Branch_B0C1:
        clc                                     ; B0C1 18                       .
        adc     #$CC                            ; B0C2 69 CC                    i.
        jsr     BattlePartyServices_Entry_ACF0  ; B0C4 20 F0 AC                  ..
        sta     $7324,x                         ; B0C7 9D 24 73                 .$s
        rts                                     ; B0CA 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B0CB:
        jsr     BattlePartyServices_Entry_B1AA  ; B0CB 20 AA B1                  ..
        lda     #$00                            ; B0CE A9 00                    ..
        tay                                     ; B0D0 A8                       .
        clc                                     ; B0D1 18                       .
BattlePartyServices_Branch_B0D2:
        adc     BattleActionWeights,x           ; B0D2 7D C2 6D                 }.m
        inx                                     ; B0D5 E8                       .
        iny                                     ; B0D6 C8                       .
        cpy     #$06                            ; B0D7 C0 06                    ..
        bcc     BattlePartyServices_Branch_B0D2 ; B0D9 90 F7                    ..
        sta     $08                             ; B0DB 85 08                    ..
        tax                                     ; B0DD AA                       .
        beq     BattlePartyServices_Branch_B113 ; B0DE F0 33                    .3
        lda     #$1F                            ; B0E0 A9 1F                    ..
        sta     $6E59                           ; B0E2 8D 59 6E                 .Yn
        lda     $00                           ; B0E5 A5 00                    ..
        brk                                     ; B0E7 00                       .
        db   $25,$0F                         ; B0E8 25 0F                    %.
; ----------------------------------------------------------------------------
        asl     $7F                             ; B0EA 06 7F                    ..
        rol     a                               ; B0EC 2A                       *
        rol     a                               ; B0ED 2A                       *
        and     #$03                            ; B0EE 29 03                    ).
        cmp     #$03                            ; B0F0 C9 03                    ..
        beq     BattlePartyServices_Branch_B117 ; B0F2 F0 23                    .#
        lda     $08                             ; B0F4 A5 08                    ..
        brk                                     ; B0F6 00                       .
        db   $17,$0F                         ; B0F7 17 0F                    ..
; ----------------------------------------------------------------------------
        sta     $08                             ; B0F9 85 08                    ..
        jsr     BattlePartyServices_Entry_B1AA  ; B0FB 20 AA B1                  ..
        lda     #$00                            ; B0FE A9 00                    ..
        tay                                     ; B100 A8                       .
        clc                                     ; B101 18                       .
BattlePartyServices_Branch_B102:
        adc     BattleActionWeights,x           ; B102 7D C2 6D                 }.m
        beq     BattlePartyServices_Branch_B10D ; B105 F0 06                    ..
        cmp     $08                             ; B107 C5 08                    ..
        beq     BattlePartyServices_Branch_B10D ; B109 F0 02                    ..
        bcs     BattlePartyServices_Branch_B11A ; B10B B0 0D                    ..
BattlePartyServices_Branch_B10D:
        inx                                     ; B10D E8                       .
        iny                                     ; B10E C8                       .
        cpy     #$06                            ; B10F C0 06                    ..
        bcc     BattlePartyServices_Branch_B102 ; B111 90 EF                    ..
BattlePartyServices_Branch_B113:
        lda     #$32                            ; B113 A9 32                    .2
        bne     BattlePartyServices_Branch_B122 ; B115 D0 0B                    ..
BattlePartyServices_Branch_B117:
        jsr     BattlePartyServices_Entry_B132  ; B117 20 32 B1                  2.
BattlePartyServices_Branch_B11A:
        sty     $06                             ; B11A 84 06                    ..
        jsr     BattlePartyServices_Entry_B1A3  ; B11C 20 A3 B1                  ..
        lda     BattleActionIds,x               ; B11F BD 8C 6D                 ..m
BattlePartyServices_Branch_B122:
        and     #$7F                            ; B122 29 7F                    ).
        sta     $0A                             ; B124 85 0A                    ..
        brk                                     ; B126 00                       .
        db   $1C,$0F                         ; B127 1C 0F                    ..
; ----------------------------------------------------------------------------
        sta     $0B                             ; B129 85 0B                    ..
        jsr     BattlePartyServices_Entry_ACF0  ; B12B 20 F0 AC                  ..
        sta     $7324,x                         ; B12E 9D 24 73                 .$s
        rts                                     ; B131 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B132:
        jsr     BattlePartyServices_Entry_B146  ; B132 20 46 B1                  F.
        jsr     BattlePartyServices_Entry_B1A3  ; B135 20 A3 B1                  ..
        lda     BattleActionWeights,x           ; B138 BD C2 6D                 ..m
        bne     BattlePartyServices_Branch_B143 ; B13B D0 06                    ..
        jsr     BattlePartyServices_Entry_B158  ; B13D 20 58 B1                  X.
        jmp     BattlePartyServices_Entry_B132  ; B140 4C 32 B1                 L2.
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B143:
        ldy     $06                             ; B143 A4 06                    ..
        rts                                     ; B145 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B146:
        lda     $96                             ; B146 A5 96                    ..
        lsr     a                               ; B148 4A                       J
        tax                                     ; B149 AA                       .
        lda     $720A,x                         ; B14A BD 0A 72                 ..r
        bcc     BattlePartyServices_Branch_B153 ; B14D 90 04                    ..
        lsr     a                               ; B14F 4A                       J
        lsr     a                               ; B150 4A                       J
        lsr     a                               ; B151 4A                       J
        lsr     a                               ; B152 4A                       J
BattlePartyServices_Branch_B153:
        and     #$0F                            ; B153 29 0F                    ).
        sta     $06                             ; B155 85 06                    ..
        rts                                     ; B157 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B158:
        inc     $06                             ; B158 E6 06                    ..
BattlePartyServices_Entry_B15A:
        lda     $06                             ; B15A A5 06                    ..
        cmp     #$06                            ; B15C C9 06                    ..
        bcc     BattlePartyServices_Branch_B164 ; B15E 90 04                    ..
        lda     #$00                            ; B160 A9 00                    ..
        sta     $06                             ; B162 85 06                    ..
BattlePartyServices_Branch_B164:
        pha                                     ; B164 48                       H
        lda     $96                             ; B165 A5 96                    ..
        lsr     a                               ; B167 4A                       J
        tax                                     ; B168 AA                       .
        lda     #$F0                            ; B169 A9 F0                    ..
        bcc     BattlePartyServices_Branch_B177 ; B16B 90 0A                    ..
        lda     #$0F                            ; B16D A9 0F                    ..
        asl     $06                             ; B16F 06 06                    ..
        asl     $06                             ; B171 06 06                    ..
        asl     $06                             ; B173 06 06                    ..
        asl     $06                             ; B175 06 06                    ..
BattlePartyServices_Branch_B177:
        and     $720A,x                         ; B177 3D 0A 72                 =.r
        ora     $06                             ; B17A 05 06                    ..
        sta     $720A,x                         ; B17C 9D 0A 72                 ..r
        pla                                     ; B17F 68                       h
        sta     $06                             ; B180 85 06                    ..
        rts                                     ; B182 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B183:
        jsr     BattlePartyServices_Entry_B1A3  ; B183 20 A3 B1                  ..
        lda     BattleActionIds,x               ; B186 BD 8C 6D                 ..m
        cmp     #$FF                            ; B189 C9 FF                    ..
        bcs     BattlePartyServices_Branch_B194 ; B18B B0 07                    ..
        sta     $0A                             ; B18D 85 0A                    ..
        brk                                     ; B18F 00                       .
        db   $1C,$0F                         ; B190 1C 0F                    ..
; ----------------------------------------------------------------------------
        sta     $0B                             ; B192 85 0B                    ..
BattlePartyServices_Branch_B194:
        rts                                     ; B194 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B195:
        jsr     BattlePartyServices_Entry_B1A3  ; B195 20 A3 B1                  ..
        lda     #$FF                            ; B198 A9 FF                    ..
        sta     BattleActionIds,x               ; B19A 9D 8C 6D                 ..m
        lda     #$00                            ; B19D A9 00                    ..
        sta     BattleActionWeights,x           ; B19F 9D C2 6D                 ..m
        rts                                     ; B1A2 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B1A3:
        jsr     BattlePartyServices_Entry_B1AA  ; B1A3 20 AA B1                  ..
        adc     $06                             ; B1A6 65 06                    e.
        tax                                     ; B1A8 AA                       .
        rts                                     ; B1A9 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B1AA:
        lda     #$08                            ; B1AA A9 08                    ..
        ldx     $96                             ; B1AC A6 96                    ..
        cpx     #$04                            ; B1AE E0 04                    ..
        bcc     BattlePartyServices_Branch_B1B7 ; B1B0 90 05                    ..
        lda     BattleSlotDescriptors,x         ; B1B2 BD F4 72                 ..r
        and     #$07                            ; B1B5 29 07                    ).
BattlePartyServices_Branch_B1B7:
        asl     a                               ; B1B7 0A                       .
        sta     $02                             ; B1B8 85 02                    ..
        asl     a                               ; B1BA 0A                       .
        adc     $02                             ; B1BB 65 02                    e.
        tax                                     ; B1BD AA                       .
        rts                                     ; B1BE 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B1BF:
        jsr     BattlePartyServices_Entry_AE43  ; B1BF 20 43 AE                  C.
        bcc     BattlePartyServices_Branch_B1E7 ; B1C2 90 23                    .#
        lda     $0B                             ; B1C4 A5 0B                    ..
        brk                                     ; B1C6 00                       .
        db   $0A,$3F                         ; B1C7 0A 3F                    .?
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_B1E6 ; B1C9 90 1B                    ..
        jsr     BattlePartyServices_Entry_AD65  ; B1CB 20 65 AD                  e.
        tay                                     ; B1CE A8                       .
        ldx     $96                             ; B1CF A6 96                    ..
        lda     BattleSlotDescriptors,x         ; B1D1 BD F4 72                 ..r
        and     #$0F                            ; B1D4 29 0F                    ).
        dey                                     ; B1D6 88                       .
        bne     BattlePartyServices_Branch_B1EA ; B1D7 D0 11                    ..
        jsr     BattlePartyServices_Entry_AD57  ; B1D9 20 57 AD                  W.
        bcc     BattlePartyServices_Branch_B202 ; B1DC 90 24                    .$
        tax                                     ; B1DE AA                       .
        brk                                     ; B1DF 00                       .
        db   $29,$C3,$13                     ; B1E0 29 C3 13                 )..
; ----------------------------------------------------------------------------
        txa                                     ; B1E3 8A                       .
        bcs     BattlePartyServices_Branch_B202 ; B1E4 B0 1C                    ..
BattlePartyServices_Branch_B1E6:
        sec                                     ; B1E6 38                       8
BattlePartyServices_Branch_B1E7:
        rts                                     ; B1E7 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B1E8:
        clc                                     ; B1E8 18                       .
        rts                                     ; B1E9 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B1EA:
        dey                                     ; B1EA 88                       .
        beq     BattlePartyServices_Branch_B1FD ; B1EB F0 10                    ..
        bne     BattlePartyServices_Branch_B1EF ; B1ED D0 00                    ..
BattlePartyServices_Branch_B1EF:
        jsr     BattlePartyServices_Entry_AD57  ; B1EF 20 57 AD                  W.
        bcc     BattlePartyServices_Branch_B1FD ; B1F2 90 09                    ..
        tay                                     ; B1F4 A8                       .
        lda     $72E6                           ; B1F5 AD E6 72                 ..r
        and     #$30                            ; B1F8 29 30                    )0
        bne     BattlePartyServices_Branch_B1E8 ; B1FA D0 EC                    ..
        tya                                     ; B1FC 98                       .
BattlePartyServices_Branch_B1FD:
        ldy     $72E4                           ; B1FD AC E4 72                 ..r
        bmi     BattlePartyServices_Branch_B1E8 ; B200 30 E6                    0.
BattlePartyServices_Branch_B202:
        jsr     BattlePartyServices_Entry_AD57  ; B202 20 57 AD                  W.
        bcs     BattlePartyServices_Branch_B216 ; B205 B0 0F                    ..
        pha                                     ; B207 48                       H
        tax                                     ; B208 AA                       .
        brk                                     ; B209 00                       .
        db   $67,$73                         ; B20A 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; B20C AA                       .
        brk                                     ; B20D 00                       .
        db   $46,$93,$13                     ; B20E 46 93 13                 F..
; ----------------------------------------------------------------------------
        pla                                     ; B211 68                       h
        bcs     BattlePartyServices_Branch_B1E8 ; B212 B0 D4                    ..
        bcc     BattlePartyServices_Branch_B21F ; B214 90 09                    ..
BattlePartyServices_Branch_B216:
        pha                                     ; B216 48                       H
        tax                                     ; B217 AA                       .
        brk                                     ; B218 00                       .
        db   $29,$C3,$03                     ; B219 29 C3 03                 )..
; ----------------------------------------------------------------------------
        pla                                     ; B21C 68                       h
        bcs     BattlePartyServices_Branch_B1E8 ; B21D B0 C9                    ..
BattlePartyServices_Branch_B21F:
        pha                                     ; B21F 48                       H
        lda     $0B                             ; B220 A5 0B                    ..
        brk                                     ; B222 00                       .
        db   $0A,$3F                         ; B223 0A 3F                    .?
; ----------------------------------------------------------------------------
        tay                                     ; B225 A8                       .
        pla                                     ; B226 68                       h
        tax                                     ; B227 AA                       .
        jsr     BattlePartyServices_Entry_AD57  ; B228 20 57 AD                  W.
        bcs     BattlePartyServices_Branch_B236 ; B22B B0 09                    ..
        brk                                     ; B22D 00                       .
        db   $67,$73                         ; B22E 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; B230 AA                       .
        tya                                     ; B231 98                       .
        brk                                     ; B232 00                       .
        db   $0C,$73                         ; B233 0C 73                    .s
; ----------------------------------------------------------------------------
        rts                                     ; B235 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B236:
        tya                                     ; B236 98                       .
        brk                                     ; B237 00                       .
        db   $0B,$B3                         ; B238 0B B3                    ..
; ----------------------------------------------------------------------------
        rts                                     ; B23A 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B23B:
        lda     $0B                             ; B23B A5 0B                    ..
        cmp     #$27                            ; B23D C9 27                    .'
        beq     BattlePartyServices_Branch_B25D ; B23F F0 1C                    ..
        jsr     BattlePartyServices_Entry_AD26  ; B241 20 26 AD                  &.
        bcc     BattlePartyServices_Branch_B24A ; B244 90 04                    ..
        lda     #$80                            ; B246 A9 80                    ..
        bne     BattlePartyServices_Branch_B25F ; B248 D0 15                    ..
BattlePartyServices_Branch_B24A:
        brk                                     ; B24A 00                       .
        db   $0C,$3F                         ; B24B 0C 3F                    .?
; ----------------------------------------------------------------------------
        lda     #$80                            ; B24D A9 80                    ..
        bcs     BattlePartyServices_Branch_B258 ; B24F B0 07                    ..
        jsr     BattlePartyServices_Entry_AD57  ; B251 20 57 AD                  W.
        bcs     BattlePartyServices_Branch_B25F ; B254 B0 09                    ..
        bcc     BattlePartyServices_Branch_B25D ; B256 90 05                    ..
BattlePartyServices_Branch_B258:
        jsr     BattlePartyServices_Entry_AD57  ; B258 20 57 AD                  W.
        bcc     BattlePartyServices_Branch_B25F ; B25B 90 02                    ..
BattlePartyServices_Branch_B25D:
        lda     #$00                            ; B25D A9 00                    ..
BattlePartyServices_Branch_B25F:
        jsr     BattlePartyServices_Entry_ACF0  ; B25F 20 F0 AC                  ..
        sta     $7300,x                         ; B262 9D 00 73                 ..s
        rts                                     ; B265 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B266:
        jsr     BattlePartyServices_Entry_ACF0  ; B266 20 F0 AC                  ..
        lda     $7300,x                         ; B269 BD 00 73                 ..s
        eor     #$80                            ; B26C 49 80                    I.
        sta     $7300,x                         ; B26E 9D 00 73                 ..s
        rts                                     ; B271 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B272:
        lda     #$00                            ; B272 A9 00                    ..
        sta     $0F                             ; B274 85 0F                    ..
        jsr     BattlePartyServices_Entry_ACF0  ; B276 20 F0 AC                  ..
        lda     $0B                             ; B279 A5 0B                    ..
        cmp     #$43                            ; B27B C9 43                    .C
        bne     BattlePartyServices_Branch_B28A ; B27D D0 0B                    ..
        jsr     BattlePartyServices_Entry_AD57  ; B27F 20 57 AD                  W.
        lda     #$01                            ; B282 A9 01                    ..
        bcs     BattlePartyServices_Branch_B28D ; B284 B0 07                    ..
        lda     #$02                            ; B286 A9 02                    ..
        bcc     BattlePartyServices_Branch_B28D ; B288 90 03                    ..
BattlePartyServices_Branch_B28A:
        brk                                     ; B28A 00                       .
        db   $0E,$3F                         ; B28B 0E 3F                    .?
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B28D:
        jsr     BattlePartyServices_Entry_AD04  ; B28D 20 04 AD                  ..
        bcc     BattlePartyServices_Branch_B2B5 ; B290 90 23                    .#
        bne     BattlePartyServices_Branch_B2A5 ; B292 D0 11                    ..
        jsr     BattlePartyServices_Entry_AD57  ; B294 20 57 AD                  W.
        bcs     BattlePartyServices_Branch_B29F ; B297 B0 06                    ..
        lda     $7300,x                         ; B299 BD 00 73                 ..s
        bmi     BattlePartyServices_Branch_B2B3 ; B29C 30 15                    0.
        rts                                     ; B29E 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B29F:
        lda     $7300,x                         ; B29F BD 00 73                 ..s
        bpl     BattlePartyServices_Branch_B2B3 ; B2A2 10 0F                    ..
        rts                                     ; B2A4 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B2A5:
        cmp     #$02                            ; B2A5 C9 02                    ..
        bne     BattlePartyServices_Branch_B2B5 ; B2A7 D0 0C                    ..
        jsr     BattlePartyServices_Entry_AD57  ; B2A9 20 57 AD                  W.
        bcs     BattlePartyServices_Branch_B2B5 ; B2AC B0 07                    ..
        lda     $7300,x                         ; B2AE BD 00 73                 ..s
        bmi     BattlePartyServices_Branch_B2B5 ; B2B1 30 02                    0.
BattlePartyServices_Branch_B2B3:
        lda     #$01                            ; B2B3 A9 01                    ..
BattlePartyServices_Branch_B2B5:
        sta     $0C                             ; B2B5 85 0C                    ..
        rts                                     ; B2B7 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B2B8:
        pha                                     ; B2B8 48                       H
        lda     #$1D                            ; B2B9 A9 1D                    ..
        sta     $6E59                           ; B2BB 8D 59 6E                 .Yn
        lda     $00                           ; B2BE A5 00                    ..
        brk                                     ; B2C0 00                       .
        db   $25,$0F                         ; B2C1 25 0F                    %.
; ----------------------------------------------------------------------------
        pla                                     ; B2C3 68                       h
        ldx     $7E                             ; B2C4 A6 7E                    .~
        bpl     BattlePartyServices_Branch_B30F ; B2C6 10 47                    .G
        cmp     #$01                            ; B2C8 C9 01                    ..
        bne     BattlePartyServices_Branch_B30F ; B2CA D0 43                    .C
        jsr     BattlePartyServices_Entry_AD57  ; B2CC 20 57 AD                  W.
        bcc     BattlePartyServices_Branch_B30F ; B2CF 90 3E                    .>
        jsr     BattlePartyServices_Entry_AD26  ; B2D1 20 26 AD                  &.
        bcs     BattlePartyServices_Branch_B30F ; B2D4 B0 39                    .9
        jsr     BattlePartyServices_Entry_AD04  ; B2D6 20 04 AD                  ..
        bcs     BattlePartyServices_Branch_B30F ; B2D9 B0 34                    .4
        lda     $0B                             ; B2DB A5 0B                    ..
        brk                                     ; B2DD 00                       .
        db   $0C,$3F                         ; B2DE 0C 3F                    .?
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_B30F ; B2E0 90 2D                    .-
        ldx     $96                             ; B2E2 A6 96                    ..
        lda     BattleSlotDescriptors,x         ; B2E4 BD F4 72                 ..r
        and     #$0F                            ; B2E7 29 0F                    ).
        tax                                     ; B2E9 AA                       .
        brk                                     ; B2EA 00                       .
        db   $2D,$B3                         ; B2EB 2D B3                    -.
; ----------------------------------------------------------------------------
        tax                                     ; B2ED AA                       .
        lda     $7389,x                         ; B2EE BD 89 73                 ..s
        bpl     BattlePartyServices_Branch_B30F ; B2F1 10 1C                    ..
        and     #$0F                            ; B2F3 29 0F                    ).
        sta     $6F                             ; B2F5 85 6F                    .o
        brk                                     ; B2F7 00                       .
        db   $67,$33                         ; B2F8 67 33                    g3
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_B30F ; B2FA 90 13                    ..
        bvc     BattlePartyServices_Branch_B30F ; B2FC 50 11                    P.
        tax                                     ; B2FE AA                       .
        brk                                     ; B2FF 00                       .
        db   $46,$93,$07                     ; B300 46 93 07                 F..
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_B30F ; B303 90 0A                    ..
        sec                                     ; B305 38                       8
        lda     #$00                            ; B306 A9 00                    ..
BattlePartyServices_Branch_B308:
        rol     a                               ; B308 2A                       *
        dex                                     ; B309 CA                       .
        bpl     BattlePartyServices_Branch_B308 ; B30A 10 FC                    ..
        jmp     BattlePartyServices_Entry_B91B  ; B30C 4C 1B B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B30F:
        clc                                     ; B30F 18                       .
        rts                                     ; B310 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B311:
        jsr     BattlePartyServices_Entry_AD26  ; B311 20 26 AD                  &.
        bcc     BattlePartyServices_Branch_B338 ; B314 90 22                    ."
        lda     $0B                             ; B316 A5 0B                    ..
        brk                                     ; B318 00                       .
        db   $0C,$3F                         ; B319 0C 3F                    .?
; ----------------------------------------------------------------------------
        bcs     BattlePartyServices_Branch_B327 ; B31B B0 0A                    ..
        jsr     BattlePartyServices_Entry_AD04  ; B31D 20 04 AD                  ..
        bcs     BattlePartyServices_Branch_B32C ; B320 B0 0A                    ..
BattlePartyServices_Branch_B322:
        jsr     BattlePartyServices_Entry_AD3D  ; B322 20 3D AD                  =.
        sec                                     ; B325 38                       8
        rts                                     ; B326 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B327:
        jsr     BattlePartyServices_Entry_AD04  ; B327 20 04 AD                  ..
        bcs     BattlePartyServices_Branch_B322 ; B32A B0 F6                    ..
BattlePartyServices_Branch_B32C:
        jsr     BattlePartyServices_Entry_AD2D  ; B32C 20 2D AD                  -.
        ldx     #$FF                            ; B32F A2 FF                    ..
        brk                                     ; B331 00                       .
        db   $29,$C3,$0E                     ; B332 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        jmp     BattlePartyServices_Entry_B91B  ; B335 4C 1B B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B338:
        pha                                     ; B338 48                       H
        pha                                     ; B339 48                       H
        jsr     BattlePartyServices_Entry_ACF0  ; B33A 20 F0 AC                  ..
        lda     $7300,x                         ; B33D BD 00 73                 ..s
        bmi     BattlePartyServices_Branch_B361 ; B340 30 1F                    0.
        pla                                     ; B342 68                       h
        bne     BattlePartyServices_Branch_B359 ; B343 D0 14                    ..
        ldx     $96                             ; B345 A6 96                    ..
        lda     BattleSlotDescriptors,x         ; B347 BD F4 72                 ..r
        and     #$0F                            ; B34A 29 0F                    ).
        brk                                     ; B34C 00                       .
        db   $67,$73                         ; B34D 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; B34F AA                       .
        sec                                     ; B350 38                       8
        lda     #$00                            ; B351 A9 00                    ..
BattlePartyServices_Branch_B353:
        rol     a                               ; B353 2A                       *
        dex                                     ; B354 CA                       .
        bpl     BattlePartyServices_Branch_B353 ; B355 10 FC                    ..
        bmi     BattlePartyServices_Branch_B35C ; B357 30 03                    0.
BattlePartyServices_Branch_B359:
        brk                                     ; B359 00                       .
        db   $14,$3F                         ; B35A 14 3F                    .?
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B35C:
        sta     $09                             ; B35C 85 09                    ..
BattlePartyServices_Branch_B35E:
        pla                                     ; B35E 68                       h
        sec                                     ; B35F 38                       8
        rts                                     ; B360 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B361:
        pla                                     ; B361 68                       h
        bne     BattlePartyServices_Branch_B36A ; B362 D0 06                    ..
        jsr     BattlePartyServices_Entry_AD3D  ; B364 20 3D AD                  =.
        jmp     BattlePartyServices_Branch_B35E ; B367 4C 5E B3                 L^.
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B36A:
        tax                                     ; B36A AA                       .
        dex                                     ; B36B CA                       .
        dex                                     ; B36C CA                       .
        beq     BattlePartyServices_Branch_B378 ; B36D F0 09                    ..
        ldx     #$FF                            ; B36F A2 FF                    ..
        brk                                     ; B371 00                       .
        db   $29,$C3,$0E                     ; B372 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        jmp     BattlePartyServices_Branch_B35C ; B375 4C 5C B3                 L\.
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B378:
        lda     #$00                            ; B378 A9 00                    ..
        sta     $09                             ; B37A 85 09                    ..
        ldx     #$FF                            ; B37C A2 FF                    ..
        brk                                     ; B37E 00                       .
        db   $29,$C3,$0E                     ; B37F 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        sta     $02                             ; B382 85 02                    ..
        lda     #$00                            ; B384 A9 00                    ..
        sta     $03                             ; B386 85 03                    ..
        lda     #$03                            ; B388 A9 03                    ..
        sta     $7C                             ; B38A 85 7C                    .|
BattlePartyServices_Branch_B38C:
        brk                                     ; B38C 00                       .
        db   $2D,$A3                         ; B38D 2D A3                    -.
; ----------------------------------------------------------------------------
        clc                                     ; B38F 18                       .
        and     $02                             ; B390 25 02                    %.
        beq     BattlePartyServices_Branch_B395 ; B392 F0 01                    ..
        sec                                     ; B394 38                       8
BattlePartyServices_Branch_B395:
        rol     $03                             ; B395 26 03                    &.
        dec     $7C                             ; B397 C6 7C                    .|
        bpl     BattlePartyServices_Branch_B38C ; B399 10 F1                    ..
        lda     $03                             ; B39B A5 03                    ..
        jmp     BattlePartyServices_Branch_B35C ; B39D 4C 5C B3                 L\.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B3A0:
        bcc     BattlePartyServices_Branch_B3AC ; B3A0 90 0A                    ..
        lda     $09                             ; B3A2 A5 09                    ..
        bne     BattlePartyServices_Branch_B3AE ; B3A4 D0 08                    ..
        lda     $0C                             ; B3A6 A5 0C                    ..
        cmp     #$03                            ; B3A8 C9 03                    ..
        beq     BattlePartyServices_Branch_B3AE ; B3AA F0 02                    ..
BattlePartyServices_Branch_B3AC:
        clc                                     ; B3AC 18                       .
        rts                                     ; B3AD 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B3AE:
        jsr     BattlePartyServices_Entry_ACF0  ; B3AE 20 F0 AC                  ..
        lda     $7300,x                         ; B3B1 BD 00 73                 ..s
        bmi     BattlePartyServices_Branch_B3E0 ; B3B4 30 2A                    0*
        jsr     BattlePartyServices_Entry_AD04  ; B3B6 20 04 AD                  ..
        bcs     BattlePartyServices_Branch_B3C2 ; B3B9 B0 07                    ..
        lda     $0B                             ; B3BB A5 0B                    ..
        brk                                     ; B3BD 00                       .
        db   $09,$3F                         ; B3BE 09 3F                    .?
; ----------------------------------------------------------------------------
        bcs     BattlePartyServices_Branch_B3CC ; B3C0 B0 0A                    ..
BattlePartyServices_Branch_B3C2:
        lda     $09                             ; B3C2 A5 09                    ..
        brk                                     ; B3C4 00                       .
        db   $2B,$0F                         ; B3C5 2B 0F                    +.
; ----------------------------------------------------------------------------
        sta     $07                             ; B3C7 85 07                    ..
        jmp     BattlePartyServices_Branch_B3D1 ; B3C9 4C D1 B3                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B3CC:
        jsr     BattlePartyServices_Entry_B426  ; B3CC 20 26 B4                  &.
        sty     $07                             ; B3CF 84 07                    ..
BattlePartyServices_Branch_B3D1:
        ldx     $07                             ; B3D1 A6 07                    ..
        brk                                     ; B3D3 00                       .
        db   $68,$73                         ; B3D4 68 73                    hs
; ----------------------------------------------------------------------------
        sta     $07                             ; B3D6 85 07                    ..
        jsr     BattlePartyServices_Entry_B3FF  ; B3D8 20 FF B3                  ..
        lda     $07                             ; B3DB A5 07                    ..
        jmp     BattlePartyServices_Branch_B3F4 ; B3DD 4C F4 B3                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B3E0:
        lda     $09                             ; B3E0 A5 09                    ..
        ldy     $0C                             ; B3E2 A4 0C                    ..
        cpy     #$02                            ; B3E4 C0 02                    ..
        beq     BattlePartyServices_Branch_B3EE ; B3E6 F0 06                    ..
        brk                                     ; B3E8 00                       .
        db   $2B,$0F                         ; B3E9 2B 0F                    +.
; ----------------------------------------------------------------------------
        jmp     BattlePartyServices_Branch_B3F4 ; B3EB 4C F4 B3                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B3EE:
        brk                                     ; B3EE 00                       .
        db   $2A,$0F                         ; B3EF 2A 0F                    *.
; ----------------------------------------------------------------------------
        clc                                     ; B3F1 18                       .
        adc     #$08                            ; B3F2 69 08                    i.
BattlePartyServices_Branch_B3F4:
        jsr     BattlePartyServices_Entry_ACF0  ; B3F4 20 F0 AC                  ..
        ora     $7300,x                         ; B3F7 1D 00 73                 ..s
        sta     $7300,x                         ; B3FA 9D 00 73                 ..s
        sec                                     ; B3FD 38                       8
        rts                                     ; B3FE 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B3FF:
        lda     $0B                             ; B3FF A5 0B                    ..
        brk                                     ; B401 00                       .
        db   $0C,$3F                         ; B402 0C 3F                    .?
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_B425 ; B404 90 1F                    ..
        lda     #$1D                            ; B406 A9 1D                    ..
        sta     $6E59                           ; B408 8D 59 6E                 .Yn
        lda     $00                           ; B40B A5 00                    ..
        brk                                     ; B40D 00                       .
        db   $25,$0F                         ; B40E 25 0F                    %.
; ----------------------------------------------------------------------------
        bpl     BattlePartyServices_Branch_B425 ; B410 10 13                    ..
        ldx     $96                             ; B412 A6 96                    ..
        lda     BattleSlotDescriptors,x         ; B414 BD F4 72                 ..r
        and     #$0F                            ; B417 29 0F                    ).
        tax                                     ; B419 AA                       .
        brk                                     ; B41A 00                       .
        db   $2D,$B3                         ; B41B 2D B3                    -.
; ----------------------------------------------------------------------------
        tax                                     ; B41D AA                       .
        lda     $07                             ; B41E A5 07                    ..
        ora     #$80                            ; B420 09 80                    ..
        sta     $7389,x                         ; B422 9D 89 73                 ..s
BattlePartyServices_Branch_B425:
        rts                                     ; B425 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B426:
        lda     $D6                             ; B426 A5 D6                    ..
        asl     a                               ; B428 0A                       .
        asl     a                               ; B429 0A                       .
        tax                                     ; B42A AA                       .
        pha                                     ; B42B 48                       H
        lda     #$FF                            ; B42C A9 FF                    ..
        sta     $03                             ; B42E 85 03                    ..
        jsr     BattlePartyServices_Entry_B43C  ; B430 20 3C B4                  <.
        lda     $08                             ; B433 A5 08                    ..
        brk                                     ; B435 00                       .
        db   $17,$0F                         ; B436 17 0F                    ..
; ----------------------------------------------------------------------------
        sta     $03                             ; B438 85 03                    ..
        pla                                     ; B43A 68                       h
        tax                                     ; B43B AA                       .
BattlePartyServices_Entry_B43C:
        lda     #$00                            ; B43C A9 00                    ..
        sta     $08                             ; B43E 85 08                    ..
        lda     $09                             ; B440 A5 09                    ..
        sta     $04                           ; B442 85 04                    ..
        ldy     #$00                            ; B444 A0 00                    ..
BattlePartyServices_Branch_B446:
        lsr     $04                           ; B446 46 04                    F.
        bcc     BattlePartyServices_Branch_B456 ; B448 90 0C                    ..
        lda     $08                             ; B44A A5 08                    ..
        clc                                     ; B44C 18                       .
        adc     $AE6E,x                         ; B44D 7D 6E AE                 }n.
        sta     $08                             ; B450 85 08                    ..
        cmp     $03                             ; B452 C5 03                    ..
        bcs     BattlePartyServices_Branch_B45D ; B454 B0 07                    ..
BattlePartyServices_Branch_B456:
        inx                                     ; B456 E8                       .
        iny                                     ; B457 C8                       .
        cpy     #$04                            ; B458 C0 04                    ..
        bcc     BattlePartyServices_Branch_B446 ; B45A 90 EA                    ..
        dey                                     ; B45C 88                       .
BattlePartyServices_Branch_B45D:
        sty     $07                             ; B45D 84 07                    ..
        rts                                     ; B45F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B460:
        lda     $0B                             ; B460 A5 0B                    ..
        cmp     #$F7                            ; B462 C9 F7                    ..
        bne     BattlePartyServices_Branch_B468 ; B464 D0 02                    ..
        sec                                     ; B466 38                       8
        rts                                     ; B467 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B468:
        sta     $02                             ; B468 85 02                    ..
        asl     $02                             ; B46A 06 02                    ..
        lda     #$00                            ; B46C A9 00                    ..
        adc     #$00                            ; B46E 69 00                    i.
        sta     $03                             ; B470 85 03                    ..
        lda     $02                             ; B472 A5 02                    ..
        clc                                     ; B474 18                       .
        adc     Bank10_BattleEffectPointerTableAddress; B475 6D 99 B4           m..
        sta     $02                             ; B478 85 02                    ..
        lda     $03                             ; B47A A5 03                    ..
        adc     $B49A                           ; B47C 6D 9A B4                 m..
        sta     $03                             ; B47F 85 03                    ..
        ldy     #$00                            ; B481 A0 00                    ..
        lda     ($02),y                         ; B483 B1 02                    ..
        sta     $04                           ; B485 85 04                    ..
        iny                                     ; B487 C8                       .
        lda     ($02),y                         ; B488 B1 02                    ..
        sta     $05                             ; B48A 85 05                    ..
        jsr     BattlePartyServices_Entry_AD65  ; B48C 20 65 AD                  e.
        tay                                     ; B48F A8                       .
        jsr     BattlePartyServices_Entry_ACF0  ; B490 20 F0 AC                  ..
        lda     $7300,x                         ; B493 BD 00 73                 ..s
        jmp     ($0004)                         ; B496 6C 04 00                 l..
; ----------------------------------------------------------------------------
Bank10_BattleEffectPointerTableAddress:
        db   $9B                             ; B499 9B                       .
        db   $B4                             ; B49A B4                       .
Bank10_BattleEffectHandlerPointers:
        db   $99,$B7,$99,$B7,$99,$B7,$D8,$B7 ; B49B 99 B7 99 B7 99 B7 D8 B7  ........
        db   $D8,$B7,$D8,$B7,$DF,$B7,$DF,$B7 ; B4A3 D8 B7 D8 B7 DF B7 DF B7  ........
        db   $DF,$B7,$99,$B7,$D8,$B7,$DF,$B7 ; B4AB DF B7 99 B7 D8 B7 DF B7  ........
        db   $D8,$B7,$D8,$B7,$D8,$B7,$D8,$B7 ; B4B3 D8 B7 D8 B7 D8 B7 D8 B7  ........
        db   $75,$BC,$75,$BC,$7C,$BC,$99,$B7 ; B4BB 75 BC 75 BC 7C BC 99 B7  u.u.|...
        db   $D8,$B7,$A2,$B5,$7C,$BC,$9F,$B7 ; B4C3 D8 B7 A2 B5 7C BC 9F B7  ....|...
        db   $FE,$B7,$C8,$B5,$F3,$B7,$06,$B8 ; B4CB FE B7 C8 B5 F3 B7 06 B8  ........
        db   $42,$B7,$C1,$B7,$6F,$B7,$35,$B6 ; B4D3 42 B7 C1 B7 6F B7 35 B6  B...o.5.
        db   $6F,$B6,$9F,$B6,$DC,$B6,$17,$B7 ; B4DB 6F B6 9F B6 DC B6 17 B7  o.......
        db   $7C,$BC,$7C,$BC,$79,$BC,$EB,$B5 ; B4E3 7C BC 7C BC 79 BC EB B5  |.|.y...
        db   $7C,$BC,$B2,$B9,$B2,$B9,$B2,$B9 ; B4EB 7C BC B2 B9 B2 B9 B2 B9  |.......
        db   $A4,$BA,$A4,$BA,$7C,$BC,$7C,$BC ; B4F3 A4 BA A4 BA 7C BC 7C BC  ....|.|.
        db   $6C,$B9,$6C,$B9,$99,$B9,$7C,$BC ; B4FB 6C B9 6C B9 99 B9 7C BC  l.l...|.
        db   $7C,$BC,$7C,$BC,$7C,$BC,$7C,$BC ; B503 7C BC 7C BC 7C BC 7C BC  |.|.|.|.
        db   $7C,$BC,$7C,$BC,$7C,$BC,$7C,$BC ; B50B 7C BC 7C BC 7C BC 7C BC  |.|.|.|.
        db   $75,$BC,$75,$BC,$D8,$BA,$D8,$BA ; B513 75 BC 75 BC D8 BA D8 BA  u.u.....
        db   $8B,$B5,$75,$BC,$75,$BC,$75,$BC ; B51B 8B B5 75 BC 75 BC 75 BC  ..u.u.u.
        db   $77,$BC,$77,$BC,$75,$BC,$77,$BC ; B523 77 BC 77 BC 75 BC 77 BC  w.w.u.w.
        db   $75,$BC,$4A,$B7,$4A,$B7,$4A,$B7 ; B52B 75 BC 4A B7 4A B7 4A B7  u.J.J.J.
        db   $7C,$BC,$75,$BC,$75,$BC,$75,$BC ; B533 7C BC 75 BC 75 BC 75 BC  |.u.u.u.
        db   $75,$BC,$75,$BC,$75,$BC,$A7,$B7 ; B53B 75 BC 75 BC 75 BC A7 B7  u.u.u...
        db   $F3,$BA,$75,$BC,$AF,$B7,$FF,$BA ; B543 F3 BA 75 BC AF B7 FF BA  ..u.....
        db   $D2,$BB,$F6,$BB,$F6,$BB,$F6,$BB ; B54B D2 BB F6 BB F6 BB F6 BB  ........
        db   $34,$BC,$34,$BC,$34,$BC,$34,$BC ; B553 34 BC 34 BC 34 BC 34 BC  4.4.4.4.
        db   $34,$BC,$34,$BC,$34,$BC,$34,$BC ; B55B 34 BC 34 BC 34 BC 34 BC  4.4.4.4.
        db   $34,$BC,$34,$BC,$78,$BB,$7E,$BB ; B563 34 BC 34 BC 78 BB 7E BB  4.4.x.~.
        db   $7E,$BB,$91,$B5,$91,$B5,$91,$B5 ; B56B 7E BB 91 B5 91 B5 91 B5  ~.......
        db   $91,$B5,$A2,$B5,$06,$BB,$75,$BC ; B573 91 B5 A2 B5 06 BB 75 BC  ......u.
        db   $AC,$B9,$6C,$B9,$75,$BC,$FE,$B7 ; B57B AC B9 6C B9 75 BC FE B7  ..l.u...
        db   $75,$BC,$75,$BC,$AC,$B9,$C8,$B5 ; B583 75 BC 75 BC AC B9 C8 B5  u.u.....
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B58B:
        jsr     BattlePartyServices_Entry_AD57  ; B58B 20 57 AD                  W.
        bcs     BattlePartyServices_Branch_B5BA ; B58E B0 2A                    .*
        rts                                     ; B590 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B591:
        lda     $0B                             ; B591 A5 0B                    ..
        sec                                     ; B593 38                       8
        sbc     #$69                            ; B594 E9 69                    .i
        sta     $C4                             ; B596 85 C4                    ..
        jsr     BattlePartyServices_Entry_AD4E  ; B598 20 4E AD                  N.
        stx     $C7                             ; B59B 86 C7                    ..
        brk                                     ; B59D 00                       .
        db   $0B,$4F                         ; B59E 0B 4F                    .O
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_B5B8 ; B5A0 90 16                    ..
BattlePartyServices_Entry_B5A2:
        ldx     $96                             ; B5A2 A6 96                    ..
        lda     BattleSlotDescriptors,x         ; B5A4 BD F4 72                 ..r
        bmi     BattlePartyServices_Branch_B5BA ; B5A7 30 11                    0.
        and     #$0F                            ; B5A9 29 0F                    ).
        brk                                     ; B5AB 00                       .
        db   $67,$73                         ; B5AC 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; B5AE AA                       .
        lda     #$03                            ; B5AF A9 03                    ..
        sta     $6F                             ; B5B1 85 6F                    .o
        brk                                     ; B5B3 00                       .
        db   $6B,$73                         ; B5B4 6B 73                    ks
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_B5C6 ; B5B6 90 0E                    ..
BattlePartyServices_Branch_B5B8:
        clc                                     ; B5B8 18                       .
        rts                                     ; B5B9 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B5BA:
        and     #$0F                            ; B5BA 29 0F                    ).
        tax                                     ; B5BC AA                       .
        lda     #$03                            ; B5BD A9 03                    ..
        sta     $7C                             ; B5BF 85 7C                    .|
        brk                                     ; B5C1 00                       .
        db   $04,$B3                         ; B5C2 04 B3                    ..
; ----------------------------------------------------------------------------
        bcs     BattlePartyServices_Branch_B5B8 ; B5C4 B0 F2                    ..
BattlePartyServices_Branch_B5C6:
        sec                                     ; B5C6 38                       8
        rts                                     ; B5C7 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B5C8:
        pha                                     ; B5C8 48                       H
        cpy     #$03                            ; B5C9 C0 03                    ..
        bne     BattlePartyServices_Branch_B5DF ; B5CB D0 12                    ..
        tay                                     ; B5CD A8                       .
        bmi     BattlePartyServices_Branch_B5D7 ; B5CE 30 07                    0.
        lda     #$04                            ; B5D0 A9 04                    ..
        jsr     BattlePartyServices_Entry_B74F  ; B5D2 20 4F B7                  O.
        bcs     BattlePartyServices_Branch_B5DF ; B5D5 B0 08                    ..
BattlePartyServices_Branch_B5D7:
        lda     #$04                            ; B5D7 A9 04                    ..
        jsr     BattlePartyServices_Entry_B957  ; B5D9 20 57 B9                  W.
        jsr     BattlePartyServices_Entry_B8DA  ; B5DC 20 DA B8                  ..
BattlePartyServices_Branch_B5DF:
        pla                                     ; B5DF 68                       h
        ldx     #$13                            ; B5E0 A2 13                    ..
        stx     $0D                             ; B5E2 86 0D                    ..
        ldx     #$03                            ; B5E4 A2 03                    ..
        stx     $0E                             ; B5E6 86 0E                    ..
        jmp     BattlePartyServices_Branch_B8B8 ; B5E8 4C B8 B8                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B5EB:
        lda     $96                             ; B5EB A5 96                    ..
        cmp     #$04                            ; B5ED C9 04                    ..
        bcs     BattlePartyServices_Branch_B5F2 ; B5EF B0 01                    ..
        rts                                     ; B5F1 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B5F2:
        jsr     BattlePartyServices_Entry_AD4E  ; B5F2 20 4E AD                  N.
        brk                                     ; B5F5 00                       .
        db   $29,$C3,$0C                     ; B5F6 29 C3 0C                 )..
; ----------------------------------------------------------------------------
        bcs     BattlePartyServices_Branch_B5B8 ; B5F9 B0 BD                    ..
        ldx     #$07                            ; B5FB A2 07                    ..
BattlePartyServices_Branch_B5FD:
        brk                                     ; B5FD 00                       .
        db   $29,$C3,$0E                     ; B5FE 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_B61B ; B601 90 18                    ..
        brk                                     ; B603 00                       .
        db   $29,$C3,$0C                     ; B604 29 C3 0C                 )..
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_B61B ; B607 90 12                    ..
        sta     $6F                             ; B609 85 6F                    .o
        brk                                     ; B60B 00                       .
        db   $67,$33                         ; B60C 67 33                    g3
; ----------------------------------------------------------------------------
        bvc     BattlePartyServices_Branch_B61B ; B60E 50 0B                    P.
        tay                                     ; B610 A8                       .
        clc                                     ; B611 18                       .
        lda     #$FF                            ; B612 A9 FF                    ..
BattlePartyServices_Branch_B614:
        rol     a                               ; B614 2A                       *
        dey                                     ; B615 88                       .
        bpl     BattlePartyServices_Branch_B614 ; B616 10 FC                    ..
        jsr     BattlePartyServices_Entry_B91B  ; B618 20 1B B9                  ..
BattlePartyServices_Branch_B61B:
        dex                                     ; B61B CA                       .
        bpl     BattlePartyServices_Branch_B5FD ; B61C 10 DF                    ..
        lda     $09                             ; B61E A5 09                    ..
        ldx     #$07                            ; B620 A2 07                    ..
BattlePartyServices_Branch_B622:
        asl     a                               ; B622 0A                       .
        pha                                     ; B623 48                       H
        bcc     BattlePartyServices_Branch_B62D ; B624 90 07                    ..
        brk                                     ; B626 00                       .
        db   $2B,$73                         ; B627 2B 73                    +s
; ----------------------------------------------------------------------------
        lda     #$07                            ; B629 A9 07                    ..
        cmp     $72                             ; B62B C5 72                    .r
BattlePartyServices_Branch_B62D:
        rol     $09                             ; B62D 26 09                    &.
        pla                                     ; B62F 68                       h
        dex                                     ; B630 CA                       .
        bpl     BattlePartyServices_Branch_B622 ; B631 10 EF                    ..
        sec                                     ; B633 38                       8
        rts                                     ; B634 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B635:
        dey                                     ; B635 88                       .
        beq     BattlePartyServices_Branch_B63D ; B636 F0 05                    ..
        pha                                     ; B638 48                       H
        jsr     BattlePartyServices_Entry_B84E  ; B639 20 4E B8                  N.
        pla                                     ; B63C 68                       h
BattlePartyServices_Branch_B63D:
        tay                                     ; B63D A8                       .
        bmi     BattlePartyServices_Branch_B658 ; B63E 30 18                    0.
        lda     #$FF                            ; B640 A9 FF                    ..
        sta     $0D                             ; B642 85 0D                    ..
        ldx     $D6                             ; B644 A6 D6                    ..
BattlePartyServices_Branch_B646:
        brk                                     ; B646 00                       .
        db   $1C,$63,$01                     ; B647 1C 63 01                 .c.
; ----------------------------------------------------------------------------
        sec                                     ; B64A 38                       8
        bne     BattlePartyServices_Branch_B64E ; B64B D0 01                    ..
        clc                                     ; B64D 18                       .
BattlePartyServices_Branch_B64E:
        rol     $0D                             ; B64E 26 0D                    &.
        dex                                     ; B650 CA                       .
        bpl     BattlePartyServices_Branch_B646 ; B651 10 F3                    ..
        lda     $0D                             ; B653 A5 0D                    ..
        jmp     BattlePartyServices_Entry_B91B  ; B655 4C 1B B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B658:
        lda     #$FF                            ; B658 A9 FF                    ..
        sta     $0D                             ; B65A 85 0D                    ..
        ldx     #$07                            ; B65C A2 07                    ..
BattlePartyServices_Branch_B65E:
        brk                                     ; B65E 00                       .
        db   $16,$B3                         ; B65F 16 B3                    ..
; ----------------------------------------------------------------------------
        sec                                     ; B661 38                       8
        bne     BattlePartyServices_Branch_B665 ; B662 D0 01                    ..
        clc                                     ; B664 18                       .
BattlePartyServices_Branch_B665:
        rol     $0D                             ; B665 26 0D                    &.
        dex                                     ; B667 CA                       .
        bpl     BattlePartyServices_Branch_B65E ; B668 10 F4                    ..
        lda     $0D                             ; B66A A5 0D                    ..
        jmp     BattlePartyServices_Entry_B91B  ; B66C 4C 1B B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B66F:
        cpy     #$03                            ; B66F C0 03                    ..
        bne     BattlePartyServices_Branch_B67A ; B671 D0 07                    ..
        pha                                     ; B673 48                       H
        jsr     BattlePartyServices_Entry_B875  ; B674 20 75 B8                  u.
        pla                                     ; B677 68                       h
        bcc     BattlePartyServices_Branch_B688 ; B678 90 0E                    ..
BattlePartyServices_Branch_B67A:
        tay                                     ; B67A A8                       .
        bmi     BattlePartyServices_Branch_B68A ; B67B 30 0D                    0.
        ldx     $D6                             ; B67D A6 D6                    ..
BattlePartyServices_Branch_B67F:
        brk                                     ; B67F 00                       .
        db   $1C,$63,$01                     ; B680 1C 63 01                 .c.
; ----------------------------------------------------------------------------
        bne     BattlePartyServices_Branch_B6EF ; B683 D0 6A                    .j
        dex                                     ; B685 CA                       .
        bpl     BattlePartyServices_Branch_B67F ; B686 10 F7                    ..
BattlePartyServices_Branch_B688:
        clc                                     ; B688 18                       .
        rts                                     ; B689 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B68A:
        lda     #$FF                            ; B68A A9 FF                    ..
        sta     $0D                             ; B68C 85 0D                    ..
        ldx     #$07                            ; B68E A2 07                    ..
BattlePartyServices_Branch_B690:
        brk                                     ; B690 00                       .
        db   $16,$B3                         ; B691 16 B3                    ..
; ----------------------------------------------------------------------------
        sec                                     ; B693 38                       8
        bne     BattlePartyServices_Branch_B697 ; B694 D0 01                    ..
        clc                                     ; B696 18                       .
BattlePartyServices_Branch_B697:
        rol     $0D                             ; B697 26 0D                    &.
        dex                                     ; B699 CA                       .
        bpl     BattlePartyServices_Branch_B690 ; B69A 10 F4                    ..
        jmp     BattlePartyServices_Entry_B8DA  ; B69C 4C DA B8                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B69F:
        bmi     BattlePartyServices_Branch_B6BF ; B69F 30 1E                    0.
        lda     #$FF                            ; B6A1 A9 FF                    ..
        sta     $0D                             ; B6A3 85 0D                    ..
        ldx     $D6                             ; B6A5 A6 D6                    ..
BattlePartyServices_Branch_B6A7:
        brk                                     ; B6A7 00                       .
        db   $1C,$63,$01                     ; B6A8 1C 63 01                 .c.
; ----------------------------------------------------------------------------
        cmp     #$E7                            ; B6AB C9 E7                    ..
        bcc     BattlePartyServices_Branch_B6B3 ; B6AD 90 04                    ..
        lda     $73                             ; B6AF A5 73                    .s
        cmp     #$03                            ; B6B1 C9 03                    ..
BattlePartyServices_Branch_B6B3:
        rol     $0D                             ; B6B3 26 0D                    &.
        dex                                     ; B6B5 CA                       .
        bpl     BattlePartyServices_Branch_B6A7 ; B6B6 10 EF                    ..
        lda     $0D                             ; B6B8 A5 0D                    ..
        eor     #$0F                            ; B6BA 49 0F                    I.
        jmp     BattlePartyServices_Entry_B91B  ; B6BC 4C 1B B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B6BF:
        lda     #$FF                            ; B6BF A9 FF                    ..
        sta     $0D                             ; B6C1 85 0D                    ..
        ldx     #$07                            ; B6C3 A2 07                    ..
BattlePartyServices_Branch_B6C5:
        brk                                     ; B6C5 00                       .
        db   $16,$B3                         ; B6C6 16 B3                    ..
; ----------------------------------------------------------------------------
        cmp     #$E7                            ; B6C8 C9 E7                    ..
        bcc     BattlePartyServices_Branch_B6D0 ; B6CA 90 04                    ..
        lda     $7F                             ; B6CC A5 7F                    ..
        cmp     #$03                            ; B6CE C9 03                    ..
BattlePartyServices_Branch_B6D0:
        rol     $0D                             ; B6D0 26 0D                    &.
        dex                                     ; B6D2 CA                       .
        bpl     BattlePartyServices_Branch_B6C5 ; B6D3 10 F0                    ..
        lda     $0D                             ; B6D5 A5 0D                    ..
        eor     #$FF                            ; B6D7 49 FF                    I.
        jmp     BattlePartyServices_Entry_B91B  ; B6D9 4C 1B B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B6DC:
        tay                                     ; B6DC A8                       .
        bmi     BattlePartyServices_Branch_B6F6 ; B6DD 30 17                    0.
        ldx     $D6                             ; B6DF A6 D6                    ..
BattlePartyServices_Branch_B6E1:
        brk                                     ; B6E1 00                       .
        db   $1C,$63,$01                     ; B6E2 1C 63 01                 .c.
; ----------------------------------------------------------------------------
        cmp     #$E7                            ; B6E5 C9 E7                    ..
        bcc     BattlePartyServices_Branch_B6EF ; B6E7 90 06                    ..
        lda     $73                             ; B6E9 A5 73                    .s
        cmp     #$03                            ; B6EB C9 03                    ..
        bcs     BattlePartyServices_Branch_B6F1 ; B6ED B0 02                    ..
BattlePartyServices_Branch_B6EF:
        sec                                     ; B6EF 38                       8
        rts                                     ; B6F0 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B6F1:
        dex                                     ; B6F1 CA                       .
        bpl     BattlePartyServices_Branch_B6E1 ; B6F2 10 ED                    ..
        clc                                     ; B6F4 18                       .
        rts                                     ; B6F5 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B6F6:
        ldx     #$07                            ; B6F6 A2 07                    ..
        lda     $09                             ; B6F8 A5 09                    ..
        pha                                     ; B6FA 48                       H
BattlePartyServices_Branch_B6FB:
        asl     $09                             ; B6FB 06 09                    ..
        bcc     BattlePartyServices_Branch_B70C ; B6FD 90 0D                    ..
        brk                                     ; B6FF 00                       .
        db   $16,$B3                         ; B700 16 B3                    ..
; ----------------------------------------------------------------------------
        cmp     #$E7                            ; B702 C9 E7                    ..
        bcc     BattlePartyServices_Branch_B714 ; B704 90 0E                    ..
        lda     $7F                             ; B706 A5 7F                    ..
        cmp     #$03                            ; B708 C9 03                    ..
        bcc     BattlePartyServices_Branch_B714 ; B70A 90 08                    ..
BattlePartyServices_Branch_B70C:
        dex                                     ; B70C CA                       .
        bpl     BattlePartyServices_Branch_B6FB ; B70D 10 EC                    ..
        clc                                     ; B70F 18                       .
BattlePartyServices_Branch_B710:
        pla                                     ; B710 68                       h
        sta     $09                             ; B711 85 09                    ..
        rts                                     ; B713 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B714:
        sec                                     ; B714 38                       8
        bcs     BattlePartyServices_Branch_B710 ; B715 B0 F9                    ..
BattlePartyServices_Entry_B717:
        tay                                     ; B717 A8                       .
        bmi     BattlePartyServices_Branch_B729 ; B718 30 0F                    0.
        ldx     $D6                             ; B71A A6 D6                    ..
BattlePartyServices_Branch_B71C:
        brk                                     ; B71C 00                       .
        db   $14,$63,$01                     ; B71D 14 63 01                 .c.
; ----------------------------------------------------------------------------
        tay                                     ; B720 A8                       .
        iny                                     ; B721 C8                       .
        bne     BattlePartyServices_Branch_B6EF ; B722 D0 CB                    ..
        dex                                     ; B724 CA                       .
        bpl     BattlePartyServices_Branch_B71C ; B725 10 F5                    ..
        clc                                     ; B727 18                       .
        rts                                     ; B728 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B729:
        ldx     #$07                            ; B729 A2 07                    ..
        lda     $09                             ; B72B A5 09                    ..
        pha                                     ; B72D 48                       H
BattlePartyServices_Branch_B72E:
        asl     $09                             ; B72E 06 09                    ..
        bcc     BattlePartyServices_Branch_B73A ; B730 90 08                    ..
        brk                                     ; B732 00                       .
        db   $0E,$B3                         ; B733 0E B3                    ..
; ----------------------------------------------------------------------------
        sec                                     ; B735 38                       8
        tay                                     ; B736 A8                       .
        iny                                     ; B737 C8                       .
        bne     BattlePartyServices_Branch_B73E ; B738 D0 04                    ..
BattlePartyServices_Branch_B73A:
        dex                                     ; B73A CA                       .
        bpl     BattlePartyServices_Branch_B72E ; B73B 10 F1                    ..
        clc                                     ; B73D 18                       .
BattlePartyServices_Branch_B73E:
        pla                                     ; B73E 68                       h
        sta     $09                             ; B73F 85 09                    ..
        rts                                     ; B741 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B742:
        dey                                     ; B742 88                       .
        beq     BattlePartyServices_Entry_B74A  ; B743 F0 05                    ..
        pha                                     ; B745 48                       H
        jsr     BattlePartyServices_Entry_B84E  ; B746 20 4E B8                  N.
        pla                                     ; B749 68                       h
BattlePartyServices_Entry_B74A:
        tay                                     ; B74A A8                       .
        bmi     BattlePartyServices_Branch_B765 ; B74B 30 18                    0.
        lda     #$01                            ; B74D A9 01                    ..
BattlePartyServices_Entry_B74F:
        sta     $6F                             ; B74F 85 6F                    .o
        lda     #$00                            ; B751 A9 00                    ..
        sta     $0D                             ; B753 85 0D                    ..
        ldx     $D6                             ; B755 A6 D6                    ..
BattlePartyServices_Branch_B757:
        brk                                     ; B757 00                       .
        db   $0C,$43,$01                     ; B758 0C 43 01                 .C.
; ----------------------------------------------------------------------------
        rol     $0D                             ; B75B 26 0D                    &.
        dex                                     ; B75D CA                       .
        bpl     BattlePartyServices_Branch_B757 ; B75E 10 F7                    ..
        lda     $0D                             ; B760 A5 0D                    ..
        jmp     BattlePartyServices_Entry_B91B  ; B762 4C 1B B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B765:
        lda     #$01                            ; B765 A9 01                    ..
        jsr     BattlePartyServices_Entry_B957  ; B767 20 57 B9                  W.
        lda     $0D                             ; B76A A5 0D                    ..
        jmp     BattlePartyServices_Entry_B91B  ; B76C 4C 1B B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B76F:
        cpy     #$01                            ; B76F C0 01                    ..
        beq     BattlePartyServices_Branch_B779 ; B771 F0 06                    ..
        jsr     BattlePartyServices_Entry_B921  ; B773 20 21 B9                  !.
        bcs     BattlePartyServices_Branch_B779 ; B776 B0 01                    ..
        rts                                     ; B778 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B779:
        ldx     $96                             ; B779 A6 96                    ..
        lda     BattleSlotDescriptors,x         ; B77B BD F4 72                 ..r
        bmi     BattlePartyServices_Branch_B78E ; B77E 30 0E                    0.
        and     #$0F                            ; B780 29 0F                    ).
        brk                                     ; B782 00                       .
        db   $67,$73                         ; B783 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; B785 AA                       .
        brk                                     ; B786 00                       .
        db   $46,$93,$16                     ; B787 46 93 16                 F..
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_B79D ; B78A 90 11                    ..
        clc                                     ; B78C 18                       .
        rts                                     ; B78D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B78E:
        and     #$0F                            ; B78E 29 0F                    ).
        tax                                     ; B790 AA                       .
        brk                                     ; B791 00                       .
        db   $29,$C3,$06                     ; B792 29 C3 06                 )..
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_B79D ; B795 90 06                    ..
        clc                                     ; B797 18                       .
        rts                                     ; B798 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B799:
        cpy     #$01                            ; B799 C0 01                    ..
        bne     BattlePartyServices_Branch_B7D5 ; B79B D0 38                    .8
BattlePartyServices_Branch_B79D:
        sec                                     ; B79D 38                       8
        rts                                     ; B79E 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B79F:
        ldx     #$10                            ; B79F A2 10                    ..
        stx     $0D                             ; B7A1 86 0D                    ..
        ldx     #$00                            ; B7A3 A2 00                    ..
        beq     BattlePartyServices_Branch_B7F9 ; B7A5 F0 52                    .R
BattlePartyServices_Entry_B7A7:
        ldx     #$10                            ; B7A7 A2 10                    ..
        stx     $0D                             ; B7A9 86 0D                    ..
        ldx     #$00                            ; B7AB A2 00                    ..
        beq     BattlePartyServices_Branch_B7B5 ; B7AD F0 06                    ..
BattlePartyServices_Entry_B7AF:
        ldx     #$11                            ; B7AF A2 11                    ..
        stx     $0D                             ; B7B1 86 0D                    ..
        ldx     #$01                            ; B7B3 A2 01                    ..
BattlePartyServices_Branch_B7B5:
        stx     $0E                             ; B7B5 86 0E                    ..
        jsr     BattlePartyServices_Entry_B903  ; B7B7 20 03 B9                  ..
        lda     $09                             ; B7BA A5 09                    ..
        sec                                     ; B7BC 38                       8
        bne     BattlePartyServices_Branch_B7C0 ; B7BD D0 01                    ..
        clc                                     ; B7BF 18                       .
BattlePartyServices_Branch_B7C0:
        rts                                     ; B7C0 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B7C1:
        pha                                     ; B7C1 48                       H
        jsr     BattlePartyServices_Entry_AD4E  ; B7C2 20 4E AD                  N.
        brk                                     ; B7C5 00                       .
        db   $29,$C3,$07                     ; B7C6 29 C3 07                 )..
; ----------------------------------------------------------------------------
        pla                                     ; B7C9 68                       h
        bcs     BattlePartyServices_Branch_B7F1 ; B7CA B0 25                    .%
        cpy     #$01                            ; B7CC C0 01                    ..
        beq     BattlePartyServices_Branch_B7D5 ; B7CE F0 05                    ..
        pha                                     ; B7D0 48                       H
        jsr     BattlePartyServices_Entry_B921  ; B7D1 20 21 B9                  !.
        pla                                     ; B7D4 68                       h
BattlePartyServices_Branch_B7D5:
        bcs     BattlePartyServices_Entry_B84E  ; B7D5 B0 77                    .w
        rts                                     ; B7D7 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B7D8:
        cpy     #$03                            ; B7D8 C0 03                    ..
        bne     BattlePartyServices_Branch_B79D ; B7DA D0 C1                    ..
        jmp     BattlePartyServices_Entry_B875  ; B7DC 4C 75 B8                 Lu.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B7DF:
        cpy     #$03                            ; B7DF C0 03                    ..
        bne     BattlePartyServices_Branch_B79D ; B7E1 D0 BA                    ..
        tay                                     ; B7E3 A8                       .
        bmi     BattlePartyServices_Branch_B7E9 ; B7E4 30 03                    0.
        jmp     BattlePartyServices_Branch_B878 ; B7E6 4C 78 B8                 Lx.
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B7E9:
        ldx     #$FF                            ; B7E9 A2 FF                    ..
        brk                                     ; B7EB 00                       .
        db   $29,$C3,$06                     ; B7EC 29 C3 06                 )..
; ----------------------------------------------------------------------------
        beq     BattlePartyServices_Branch_B79D ; B7EF F0 AC                    ..
BattlePartyServices_Branch_B7F1:
        clc                                     ; B7F1 18                       .
        rts                                     ; B7F2 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B7F3:
        ldx     #$14                            ; B7F3 A2 14                    ..
        stx     $0D                             ; B7F5 86 0D                    ..
        ldx     #$04                            ; B7F7 A2 04                    ..
BattlePartyServices_Branch_B7F9:
        stx     $0E                             ; B7F9 86 0E                    ..
        jmp     BattlePartyServices_Branch_B831 ; B7FB 4C 31 B8                 L1.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B7FE:
        ldx     #$10                            ; B7FE A2 10                    ..
        stx     $0D                             ; B800 86 0D                    ..
        ldx     #$00                            ; B802 A2 00                    ..
        beq     BattlePartyServices_Branch_B80C ; B804 F0 06                    ..
BattlePartyServices_Entry_B806:
        ldx     #$12                            ; B806 A2 12                    ..
        stx     $0D                             ; B808 86 0D                    ..
        ldx     #$02                            ; B80A A2 02                    ..
BattlePartyServices_Branch_B80C:
        stx     $0E                             ; B80C 86 0E                    ..
        dey                                     ; B80E 88                       .
        beq     BattlePartyServices_Branch_B816 ; B80F F0 05                    ..
        pha                                     ; B811 48                       H
        jsr     BattlePartyServices_Entry_B84E  ; B812 20 4E B8                  N.
        pla                                     ; B815 68                       h
BattlePartyServices_Branch_B816:
        tay                                     ; B816 A8                       .
        bmi     BattlePartyServices_Branch_B823 ; B817 30 0A                    0.
        lda     $0D                             ; B819 A5 0D                    ..
        brk                                     ; B81B 00                       .
        db   $2C,$0F                         ; B81C 2C 0F                    ,.
; ----------------------------------------------------------------------------
        eor     #$0F                            ; B81E 49 0F                    I.
        jmp     BattlePartyServices_Entry_B91B  ; B820 4C 1B B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B823:
        ldx     #$FF                            ; B823 A2 FF                    ..
        lda     $0E                             ; B825 A5 0E                    ..
        sta     $7C                             ; B827 85 7C                    .|
        brk                                     ; B829 00                       .
        db   $29,$A3                         ; B82A 29 A3                    ).
; ----------------------------------------------------------------------------
        eor     #$FF                            ; B82C 49 FF                    I.
        jmp     BattlePartyServices_Entry_B91B  ; B82E 4C 1B B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B831:
        cpy     #$03                            ; B831 C0 03                    ..
        bne     BattlePartyServices_Branch_B84B ; B833 D0 16                    ..
        pha                                     ; B835 48                       H
        tax                                     ; B836 AA                       .
        lda     $0D                             ; B837 A5 0D                    ..
        pha                                     ; B839 48                       H
        lda     $0E                             ; B83A A5 0E                    ..
        pha                                     ; B83C 48                       H
        txa                                     ; B83D 8A                       .
        jsr     BattlePartyServices_Entry_B875  ; B83E 20 75 B8                  u.
        pla                                     ; B841 68                       h
        sta     $0E                             ; B842 85 0E                    ..
        pla                                     ; B844 68                       h
        sta     $0D                             ; B845 85 0D                    ..
        pla                                     ; B847 68                       h
        bcs     BattlePartyServices_Branch_B84B ; B848 B0 01                    ..
        rts                                     ; B84A 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B84B:
        jmp     BattlePartyServices_Branch_B8B8 ; B84B 4C B8 B8                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B84E:
        tax                                     ; B84E AA                       .
        lda     $0D                             ; B84F A5 0D                    ..
        pha                                     ; B851 48                       H
        lda     $0E                             ; B852 A5 0E                    ..
        pha                                     ; B854 48                       H
        txa                                     ; B855 8A                       .
        ldx     #$16                            ; B856 A2 16                    ..
        stx     $0D                             ; B858 86 0D                    ..
        ldx     #$06                            ; B85A A2 06                    ..
        stx     $0E                             ; B85C 86 0E                    ..
        pha                                     ; B85E 48                       H
        jsr     BattlePartyServices_Entry_B903  ; B85F 20 03 B9                  ..
        pla                                     ; B862 68                       h
        ldx     #$17                            ; B863 A2 17                    ..
        stx     $0D                             ; B865 86 0D                    ..
        ldx     #$07                            ; B867 A2 07                    ..
        stx     $0E                             ; B869 86 0E                    ..
        jsr     BattlePartyServices_Entry_B903  ; B86B 20 03 B9                  ..
        pla                                     ; B86E 68                       h
        sta     $0E                             ; B86F 85 0E                    ..
        pla                                     ; B871 68                       h
        sta     $0D                             ; B872 85 0D                    ..
        rts                                     ; B874 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B875:
        tay                                     ; B875 A8                       .
        bmi     BattlePartyServices_Branch_B882 ; B876 30 0A                    0.
BattlePartyServices_Branch_B878:
        lda     #$16                            ; B878 A9 16                    ..
        brk                                     ; B87A 00                       .
        db   $2C,$0F                         ; B87B 2C 0F                    ,.
; ----------------------------------------------------------------------------
        tay                                     ; B87D A8                       .
        beq     BattlePartyServices_Branch_B8B6 ; B87E F0 36                    .6
BattlePartyServices_Branch_B880:
        clc                                     ; B880 18                       .
        rts                                     ; B881 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B882:
        ldx     #$FF                            ; B882 A2 FF                    ..
        brk                                     ; B884 00                       .
        db   $29,$C3,$06                     ; B885 29 C3 06                 )..
; ----------------------------------------------------------------------------
        sta     $0D                             ; B888 85 0D                    ..
        lda     $09                             ; B88A A5 09                    ..
        sta     $0E                             ; B88C 85 0E                    ..
        lda     #$00                            ; B88E A9 00                    ..
        sta     $7C                             ; B890 85 7C                    .|
BattlePartyServices_Branch_B892:
        lsr     $0E                             ; B892 46 0E                    F.
        bcc     BattlePartyServices_Branch_B8AE ; B894 90 18                    ..
        brk                                     ; B896 00                       .
        db   $2D,$B3                         ; B897 2D B3                    -.
; ----------------------------------------------------------------------------
        beq     BattlePartyServices_Branch_B89F ; B899 F0 04                    ..
        and     $0D                             ; B89B 25 0D                    %.
        beq     BattlePartyServices_Branch_B8AE ; B89D F0 0F                    ..
BattlePartyServices_Branch_B89F:
        ldy     $7C                             ; B89F A4 7C                    .|
        clc                                     ; B8A1 18                       .
        lda     #$FF                            ; B8A2 A9 FF                    ..
BattlePartyServices_Branch_B8A4:
        rol     a                               ; B8A4 2A                       *
        dey                                     ; B8A5 88                       .
        bpl     BattlePartyServices_Branch_B8A4 ; B8A6 10 FC                    ..
        and     $09                             ; B8A8 25 09                    %.
        sta     $09                             ; B8AA 85 09                    ..
        beq     BattlePartyServices_Branch_B880 ; B8AC F0 D2                    ..
BattlePartyServices_Branch_B8AE:
        inc     $7C                             ; B8AE E6 7C                    .|
        lda     $7C                             ; B8B0 A5 7C                    .|
        cmp     #$04                            ; B8B2 C9 04                    ..
        bne     BattlePartyServices_Branch_B892 ; B8B4 D0 DC                    ..
BattlePartyServices_Branch_B8B6:
        sec                                     ; B8B6 38                       8
        rts                                     ; B8B7 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B8B8:
        tay                                     ; B8B8 A8                       .
        bmi     BattlePartyServices_Branch_B8C5 ; B8B9 30 0A                    0.
        lda     $0D                             ; B8BB A5 0D                    ..
        brk                                     ; B8BD 00                       .
        db   $2C,$0F                         ; B8BE 2C 0F                    ,.
; ----------------------------------------------------------------------------
        eor     #$0F                            ; B8C0 49 0F                    I.
        jmp     BattlePartyServices_Entry_B91B  ; B8C2 4C 1B B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B8C5:
        ldx     #$FF                            ; B8C5 A2 FF                    ..
        lda     $0E                             ; B8C7 A5 0E                    ..
        sta     $7C                             ; B8C9 85 7C                    .|
        brk                                     ; B8CB 00                       .
        db   $29,$B3                         ; B8CC 29 B3                    ).
; ----------------------------------------------------------------------------
        eor     #$FF                            ; B8CE 49 FF                    I.
        sta     $0D                             ; B8D0 85 0D                    ..
        brk                                     ; B8D2 00                       .
        db   $29,$C3,$0E                     ; B8D3 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        and     $0D                             ; B8D6 25 0D                    %.
        sta     $0D                             ; B8D8 85 0D                    ..
BattlePartyServices_Entry_B8DA:
        lda     $09                             ; B8DA A5 09                    ..
        sta     $0E                             ; B8DC 85 0E                    ..
        lda     #$00                            ; B8DE A9 00                    ..
        sta     $7C                             ; B8E0 85 7C                    .|
BattlePartyServices_Branch_B8E2:
        lsr     $0E                             ; B8E2 46 0E                    F.
        bcc     BattlePartyServices_Branch_B8F9 ; B8E4 90 13                    ..
        brk                                     ; B8E6 00                       .
        db   $2D,$B3                         ; B8E7 2D B3                    -.
; ----------------------------------------------------------------------------
        and     $0D                             ; B8E9 25 0D                    %.
        bne     BattlePartyServices_Branch_B8F9 ; B8EB D0 0C                    ..
        ldy     $7C                             ; B8ED A4 7C                    .|
        clc                                     ; B8EF 18                       .
        lda     #$FF                            ; B8F0 A9 FF                    ..
BattlePartyServices_Branch_B8F2:
        rol     a                               ; B8F2 2A                       *
        dey                                     ; B8F3 88                       .
        bpl     BattlePartyServices_Branch_B8F2 ; B8F4 10 FC                    ..
        jsr     BattlePartyServices_Entry_B91C  ; B8F6 20 1C B9                  ..
BattlePartyServices_Branch_B8F9:
        inc     $7C                             ; B8F9 E6 7C                    .|
        lda     $7C                             ; B8FB A5 7C                    .|
        cmp     #$04                            ; B8FD C9 04                    ..
        bne     BattlePartyServices_Branch_B8E2 ; B8FF D0 E1                    ..
        sec                                     ; B901 38                       8
        rts                                     ; B902 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B903:
        tay                                     ; B903 A8                       .
        bmi     BattlePartyServices_Branch_B910 ; B904 30 0A                    0.
        lda     $0D                             ; B906 A5 0D                    ..
        brk                                     ; B908 00                       .
        db   $2C,$0F                         ; B909 2C 0F                    ,.
; ----------------------------------------------------------------------------
        eor     #$0F                            ; B90B 49 0F                    I.
        jmp     BattlePartyServices_Entry_B91B  ; B90D 4C 1B B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B910:
        ldx     #$FF                            ; B910 A2 FF                    ..
        lda     $0E                             ; B912 A5 0E                    ..
        sta     $7C                             ; B914 85 7C                    .|
        brk                                     ; B916 00                       .
        db   $29,$B3                         ; B917 29 B3                    ).
; ----------------------------------------------------------------------------
        eor     #$FF                            ; B919 49 FF                    I.
BattlePartyServices_Entry_B91B:
        sec                                     ; B91B 38                       8
BattlePartyServices_Entry_B91C:
        and     $09                             ; B91C 25 09                    %.
        sta     $09                             ; B91E 85 09                    ..
        rts                                     ; B920 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B921:
        jsr     BattlePartyServices_Entry_AD57  ; B921 20 57 AD                  W.
        bcc     BattlePartyServices_Entry_B94C  ; B924 90 26                    .&
        jsr     BattlePartyServices_Entry_AD26  ; B926 20 26 AD                  &.
        bcs     BattlePartyServices_Branch_B940 ; B929 B0 15                    ..
        ldx     $D6                             ; B92B A6 D6                    ..
BattlePartyServices_Branch_B92D:
        lda     #$02                            ; B92D A9 02                    ..
        sta     $6F                             ; B92F 85 6F                    .o
BattlePartyServices_Branch_B931:
        brk                                     ; B931 00                       .
        db   $3C,$43,$01                     ; B932 3C 43 01                 <C.
; ----------------------------------------------------------------------------
        bne     BattlePartyServices_Branch_B955 ; B935 D0 1E                    ..
        dec     $6F                             ; B937 C6 6F                    .o
        bpl     BattlePartyServices_Branch_B931 ; B939 10 F6                    ..
        dex                                     ; B93B CA                       .
        bpl     BattlePartyServices_Branch_B92D ; B93C 10 EF                    ..
BattlePartyServices_Branch_B93E:
        clc                                     ; B93E 18                       .
        rts                                     ; B93F 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B940:
        jsr     BattlePartyServices_Entry_B94C  ; B940 20 4C B9                  L.
        lda     $09                             ; B943 A5 09                    ..
        eor     #$FF                            ; B945 49 FF                    I.
        and     $0D                             ; B947 25 0D                    %.
        beq     BattlePartyServices_Branch_B93E ; B949 F0 F3                    ..
        rts                                     ; B94B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B94C:
        lda     #$01                            ; B94C A9 01                    ..
        jsr     BattlePartyServices_Entry_B957  ; B94E 20 57 B9                  W.
        lda     $0D                             ; B951 A5 0D                    ..
        beq     BattlePartyServices_Branch_B93E ; B953 F0 E9                    ..
BattlePartyServices_Branch_B955:
        sec                                     ; B955 38                       8
        rts                                     ; B956 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B957:
        ldx     #$07                            ; B957 A2 07                    ..
BattlePartyServices_Branch_B959:
        pha                                     ; B959 48                       H
        brk                                     ; B95A 00                       .
        db   $29,$C3,$0E                     ; B95B 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        pla                                     ; B95E 68                       h
        bcc     BattlePartyServices_Branch_B966 ; B95F 90 05                    ..
        pha                                     ; B961 48                       H
        brk                                     ; B962 00                       .
        db   $0B,$B3                         ; B963 0B B3                    ..
; ----------------------------------------------------------------------------
        pla                                     ; B965 68                       h
BattlePartyServices_Branch_B966:
        rol     $0D                             ; B966 26 0D                    &.
        dex                                     ; B968 CA                       .
        bpl     BattlePartyServices_Branch_B959 ; B969 10 EE                    ..
        rts                                     ; B96B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B96C:
        tay                                     ; B96C A8                       .
        bmi     BattlePartyServices_Branch_B985 ; B96D 30 16                    0.
        brk                                     ; B96F 00                       .
        db   $62,$23,$40                     ; B970 62 23 40                 b#@
; ----------------------------------------------------------------------------
        tax                                     ; B973 AA                       .
        lda     #$00                            ; B974 A9 00                    ..
BattlePartyServices_Branch_B976:
        sec                                     ; B976 38                       8
        rol     a                               ; B977 2A                       *
        dex                                     ; B978 CA                       .
        bne     BattlePartyServices_Branch_B976 ; B979 D0 FB                    ..
        sta     $09                             ; B97B 85 09                    ..
        brk                                     ; B97D 00                       .
        db   $14,$3F                         ; B97E 14 3F                    .?
; ----------------------------------------------------------------------------
        eor     #$0F                            ; B980 49 0F                    I.
        jmp     BattlePartyServices_Branch_B993 ; B982 4C 93 B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B985:
        ldx     #$FF                            ; B985 A2 FF                    ..
        brk                                     ; B987 00                       .
        db   $29,$C3,$0F                     ; B988 29 C3 0F                 )..
; ----------------------------------------------------------------------------
        sta     $09                             ; B98B 85 09                    ..
        brk                                     ; B98D 00                       .
        db   $29,$C3,$0E                     ; B98E 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        eor     #$FF                            ; B991 49 FF                    I.
BattlePartyServices_Branch_B993:
        sec                                     ; B993 38                       8
        and     $09                             ; B994 25 09                    %.
        sta     $09                             ; B996 85 09                    ..
        rts                                     ; B998 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B999:
        jsr     BattlePartyServices_Entry_B96C  ; B999 20 6C B9                  l.
        ldx     #$02                            ; B99C A2 02                    ..
        lda     $09                             ; B99E A5 09                    ..
BattlePartyServices_Branch_B9A0:
        lsr     a                               ; B9A0 4A                       J
        bcs     BattlePartyServices_Branch_B9A7 ; B9A1 B0 04                    ..
        bne     BattlePartyServices_Branch_B9A0 ; B9A3 D0 FB                    ..
        clc                                     ; B9A5 18                       .
        rts                                     ; B9A6 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B9A7:
        dex                                     ; B9A7 CA                       .
        bne     BattlePartyServices_Branch_B9A0 ; B9A8 D0 F6                    ..
BattlePartyServices_Branch_B9AA:
        sec                                     ; B9AA 38                       8
        rts                                     ; B9AB 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B9AC:
        pha                                     ; B9AC 48                       H
        lda     #$22                            ; B9AD A9 22                    ."
        sta     $0A                             ; B9AF 85 0A                    ..
        pla                                     ; B9B1 68                       h
BattlePartyServices_Entry_B9B2:
        bmi     BattlePartyServices_Branch_BA1F ; B9B2 30 6B                    0k
        lda     $0A                             ; B9B4 A5 0A                    ..
        cmp     #$25                            ; B9B6 C9 25                    .%
        bcs     BattlePartyServices_Branch_B9CF ; B9B8 B0 15                    ..
        tya                                     ; B9BA 98                       .
        bne     BattlePartyServices_Branch_B9C0 ; B9BB D0 03                    ..
        jmp     BattlePartyServices_Entry_B9E4  ; B9BD 4C E4 B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B9C0:
        jsr     BattlePartyServices_Entry_B9E4  ; B9C0 20 E4 B9                  ..
        jsr     BattlePartyServices_Entry_BA02  ; B9C3 20 02 BA                  ..
        bcs     BattlePartyServices_Branch_B9AA ; B9C6 B0 E2                    ..
        jsr     BattlePartyServices_Entry_B9F5  ; B9C8 20 F5 B9                  ..
        jsr     BattlePartyServices_Entry_BA02  ; B9CB 20 02 BA                  ..
        rts                                     ; B9CE 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B9CF:
        tya                                     ; B9CF 98                       .
        bne     BattlePartyServices_Branch_B9D5 ; B9D0 D0 03                    ..
        jmp     BattlePartyServices_Entry_B9F5  ; B9D2 4C F5 B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_B9D5:
        jsr     BattlePartyServices_Entry_B9F5  ; B9D5 20 F5 B9                  ..
        jsr     BattlePartyServices_Entry_BA02  ; B9D8 20 02 BA                  ..
        bcs     BattlePartyServices_Branch_B9AA ; B9DB B0 CD                    ..
        jsr     BattlePartyServices_Entry_B9E4  ; B9DD 20 E4 B9                  ..
        jsr     BattlePartyServices_Entry_BA02  ; B9E0 20 02 BA                  ..
        rts                                     ; B9E3 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B9E4:
        jsr     BattlePartyServices_Entry_AD4E  ; B9E4 20 4E AD                  N.
        brk                                     ; B9E7 00                       .
        db   $67,$73                         ; B9E8 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; B9EA AA                       .
        lda     #$00                            ; B9EB A9 00                    ..
        sec                                     ; B9ED 38                       8
BattlePartyServices_Branch_B9EE:
        rol     a                               ; B9EE 2A                       *
        dex                                     ; B9EF CA                       .
        bpl     BattlePartyServices_Branch_B9EE ; B9F0 10 FC                    ..
        sta     $09                             ; B9F2 85 09                    ..
        rts                                     ; B9F4 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_B9F5:
        jsr     BattlePartyServices_Entry_B9E4  ; B9F5 20 E4 B9                  ..
        eor     #$FF                            ; B9F8 49 FF                    I.
        sta     $09                             ; B9FA 85 09                    ..
        brk                                     ; B9FC 00                       .
        db   $14,$3F                         ; B9FD 14 3F                    .?
; ----------------------------------------------------------------------------
        jmp     BattlePartyServices_Branch_B993 ; B9FF 4C 93 B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BA02:
        clc                                     ; BA02 18                       .
        ldx     #$08                            ; BA03 A2 08                    ..
BattlePartyServices_Branch_BA05:
        rol     $09                             ; BA05 26 09                    &.
        dex                                     ; BA07 CA                       .
        bmi     BattlePartyServices_Branch_BA18 ; BA08 30 0E                    0.
        bcc     BattlePartyServices_Branch_BA05 ; BA0A 90 F9                    ..
        brk                                     ; BA0C 00                       .
        db   $6B,$93,$02                     ; BA0D 6B 93 02                 k..
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_BA15 ; BA10 90 03                    ..
        clc                                     ; BA12 18                       .
        bcc     BattlePartyServices_Branch_BA05 ; BA13 90 F0                    ..
BattlePartyServices_Branch_BA15:
        sec                                     ; BA15 38                       8
        bcs     BattlePartyServices_Branch_BA05 ; BA16 B0 ED                    ..
BattlePartyServices_Branch_BA18:
        clc                                     ; BA18 18                       .
        lda     $09                             ; BA19 A5 09                    ..
        beq     BattlePartyServices_Branch_BA1E ; BA1B F0 01                    ..
        sec                                     ; BA1D 38                       8
BattlePartyServices_Branch_BA1E:
        rts                                     ; BA1E 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_BA1F:
        lda     $0A                             ; BA1F A5 0A                    ..
        cmp     #$25                            ; BA21 C9 25                    .%
        bcs     BattlePartyServices_Branch_BA4E ; BA23 B0 29                    .)
        tya                                     ; BA25 98                       .
        bne     BattlePartyServices_Branch_BA2E ; BA26 D0 06                    ..
BattlePartyServices_Entry_BA28:
        jsr     BattlePartyServices_Entry_AD43  ; BA28 20 43 AD                  C.
        jmp     BattlePartyServices_Branch_B993 ; BA2B 4C 93 B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_BA2E:
        jsr     BattlePartyServices_Entry_BA97  ; BA2E 20 97 BA                  ..
        beq     BattlePartyServices_Branch_BA4A ; BA31 F0 17                    ..
        pha                                     ; BA33 48                       H
        jsr     BattlePartyServices_Entry_BA28  ; BA34 20 28 BA                  (.
        bne     BattlePartyServices_Branch_BA4C ; BA37 D0 13                    ..
        pla                                     ; BA39 68                       h
        sta     $09                             ; BA3A 85 09                    ..
        pha                                     ; BA3C 48                       H
        jsr     BattlePartyServices_Entry_BA7E  ; BA3D 20 7E BA                  ~.
        bne     BattlePartyServices_Branch_BA4C ; BA40 D0 0A                    ..
        pla                                     ; BA42 68                       h
        sta     $09                             ; BA43 85 09                    ..
        jsr     BattlePartyServices_Entry_BA76  ; BA45 20 76 BA                  v.
        bne     BattlePartyServices_Branch_BA4D ; BA48 D0 03                    ..
BattlePartyServices_Branch_BA4A:
        clc                                     ; BA4A 18                       .
        rts                                     ; BA4B 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_BA4C:
        pla                                     ; BA4C 68                       h
BattlePartyServices_Branch_BA4D:
        rts                                     ; BA4D 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_BA4E:
        tya                                     ; BA4E 98                       .
        bne     BattlePartyServices_Branch_BA56 ; BA4F D0 05                    ..
        lda     $09                             ; BA51 A5 09                    ..
        jmp     BattlePartyServices_Branch_BA5B ; BA53 4C 5B BA                 L[.
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_BA56:
        jsr     BattlePartyServices_Entry_BA97  ; BA56 20 97 BA                  ..
        beq     BattlePartyServices_Branch_BA72 ; BA59 F0 17                    ..
BattlePartyServices_Branch_BA5B:
        pha                                     ; BA5B 48                       H
        jsr     BattlePartyServices_Entry_BA76  ; BA5C 20 76 BA                  v.
        bne     BattlePartyServices_Branch_BA74 ; BA5F D0 13                    ..
        pla                                     ; BA61 68                       h
        sta     $09                             ; BA62 85 09                    ..
        pha                                     ; BA64 48                       H
        jsr     BattlePartyServices_Entry_BA7E  ; BA65 20 7E BA                  ~.
        bne     BattlePartyServices_Branch_BA74 ; BA68 D0 0A                    ..
        pla                                     ; BA6A 68                       h
        sta     $09                             ; BA6B 85 09                    ..
        jsr     BattlePartyServices_Entry_BA28  ; BA6D 20 28 BA                  (.
        bne     BattlePartyServices_Branch_BA75 ; BA70 D0 03                    ..
BattlePartyServices_Branch_BA72:
        clc                                     ; BA72 18                       .
        rts                                     ; BA73 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_BA74:
        pla                                     ; BA74 68                       h
BattlePartyServices_Branch_BA75:
        rts                                     ; BA75 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BA76:
        jsr     BattlePartyServices_Entry_BA89  ; BA76 20 89 BA                  ..
        eor     #$FF                            ; BA79 49 FF                    I.
        jmp     BattlePartyServices_Branch_B993 ; BA7B 4C 93 B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BA7E:
        jsr     BattlePartyServices_Entry_BA89  ; BA7E 20 89 BA                  ..
        jsr     BattlePartyServices_Entry_AD32  ; BA81 20 32 AD                  2.
        and     $7E                             ; BA84 25 7E                    %~
        jmp     BattlePartyServices_Branch_B993 ; BA86 4C 93 B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BA89:
        jsr     BattlePartyServices_Entry_AD4E  ; BA89 20 4E AD                  N.
        brk                                     ; BA8C 00                       .
        db   $2D,$B3                         ; BA8D 2D B3                    -.
; ----------------------------------------------------------------------------
        stx     $7C                             ; BA8F 86 7C                    .|
        ldx     #$FF                            ; BA91 A2 FF                    ..
        brk                                     ; BA93 00                       .
        db   $2D,$B3                         ; BA94 2D B3                    -.
; ----------------------------------------------------------------------------
        rts                                     ; BA96 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BA97:
        ldx     #$FF                            ; BA97 A2 FF                    ..
        brk                                     ; BA99 00                       .
        db   $04,$C3,$02                     ; BA9A 04 C3 02                 ...
; ----------------------------------------------------------------------------
        eor     #$FF                            ; BA9D 49 FF                    I.
        and     $09                             ; BA9F 25 09                    %.
        sta     $09                             ; BAA1 85 09                    ..
        rts                                     ; BAA3 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BAA4:
        bmi     BattlePartyServices_Branch_BABB ; BAA4 30 15                    0.
        ldx     $D6                             ; BAA6 A6 D6                    ..
        ldy     #$00                            ; BAA8 A0 00                    ..
BattlePartyServices_Branch_BAAA:
        brk                                     ; BAAA 00                       .
        db   $6B,$83,$02,$01                 ; BAAB 6B 83 02 01              k...
; ----------------------------------------------------------------------------
        bcs     BattlePartyServices_Branch_BAB6 ; BAAF B0 05                    ..
        iny                                     ; BAB1 C8                       .
        cpy     #$02                            ; BAB2 C0 02                    ..
        bcs     BattlePartyServices_Branch_BABA ; BAB4 B0 04                    ..
BattlePartyServices_Branch_BAB6:
        dex                                     ; BAB6 CA                       .
        bpl     BattlePartyServices_Branch_BAAA ; BAB7 10 F1                    ..
        clc                                     ; BAB9 18                       .
BattlePartyServices_Branch_BABA:
        rts                                     ; BABA 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_BABB:
        ldx     #$07                            ; BABB A2 07                    ..
        ldy     #$00                            ; BABD A0 00                    ..
BattlePartyServices_Branch_BABF:
        asl     $09                             ; BABF 06 09                    ..
        bcc     BattlePartyServices_Branch_BAD3 ; BAC1 90 10                    ..
        brk                                     ; BAC3 00                       .
        db   $04,$C3,$02                     ; BAC4 04 C3 02                 ...
; ----------------------------------------------------------------------------
        bcs     BattlePartyServices_Branch_BAD3 ; BAC7 B0 0A                    ..
        jsr     BattlePartyServices_Entry_AD26  ; BAC9 20 26 AD                  &.
        bcs     BattlePartyServices_Branch_BAD7 ; BACC B0 09                    ..
        iny                                     ; BACE C8                       .
        cpy     #$02                            ; BACF C0 02                    ..
        bcs     BattlePartyServices_Branch_BAD7 ; BAD1 B0 04                    ..
BattlePartyServices_Branch_BAD3:
        dex                                     ; BAD3 CA                       .
        bpl     BattlePartyServices_Branch_BABF ; BAD4 10 E9                    ..
BattlePartyServices_Branch_BAD6:
        clc                                     ; BAD6 18                       .
BattlePartyServices_Branch_BAD7:
        rts                                     ; BAD7 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BAD8:
        jsr     BattlePartyServices_Entry_AD57  ; BAD8 20 57 AD                  W.
        bcs     BattlePartyServices_Branch_BAE8 ; BADB B0 0B                    ..
        jsr     BattlePartyServices_Entry_AD4E  ; BADD 20 4E AD                  N.
        brk                                     ; BAE0 00                       .
        db   $46,$93,$1B                     ; BAE1 46 93 1B                 F..
; ----------------------------------------------------------------------------
        bcs     BattlePartyServices_Branch_BAD6 ; BAE4 B0 F0                    ..
        sec                                     ; BAE6 38                       8
        rts                                     ; BAE7 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_BAE8:
        jsr     BattlePartyServices_Entry_AD4E  ; BAE8 20 4E AD                  N.
        brk                                     ; BAEB 00                       .
        db   $29,$C3,$0B                     ; BAEC 29 C3 0B                 )..
; ----------------------------------------------------------------------------
        bcs     BattlePartyServices_Branch_BAD6 ; BAEF B0 E5                    ..
BattlePartyServices_Branch_BAF1:
        sec                                     ; BAF1 38                       8
        rts                                     ; BAF2 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BAF3:
        bmi     BattlePartyServices_Branch_BAD6 ; BAF3 30 E1                    0.
        lda     #$05                            ; BAF5 A9 05                    ..
        brk                                     ; BAF7 00                       .
        db   $2C,$0F                         ; BAF8 2C 0F                    ,.
; ----------------------------------------------------------------------------
        eor     #$0F                            ; BAFA 49 0F                    I.
        jmp     BattlePartyServices_Branch_B993 ; BAFC 4C 93 B9                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BAFF:
        lda     $72E4                           ; BAFF AD E4 72                 ..r
        eor     #$FF                            ; BB02 49 FF                    I.
        asl     a                               ; BB04 0A                       .
        rts                                     ; BB05 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BB06:
        pha                                     ; BB06 48                       H
        tya                                     ; BB07 98                       .
        pha                                     ; BB08 48                       H
        jsr     BattlePartyServices_Entry_B5A2  ; BB09 20 A2 B5                  ..
        pla                                     ; BB0C 68                       h
        tay                                     ; BB0D A8                       .
        pla                                     ; BB0E 68                       h
        bcs     BattlePartyServices_Branch_BB12 ; BB0F B0 01                    ..
        rts                                     ; BB11 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_BB12:
        cpy     #$01                            ; BB12 C0 01                    ..
        beq     BattlePartyServices_Branch_BAF1 ; BB14 F0 DB                    ..
        asl     a                               ; BB16 0A                       .
        bcs     BattlePartyServices_Branch_BB41 ; BB17 B0 28                    .(
        ldx     $D6                             ; BB19 A6 D6                    ..
        lda     #$00                            ; BB1B A9 00                    ..
        sta     $7E                             ; BB1D 85 7E                    .~
        sta     $7F                             ; BB1F 85 7F                    ..
BattlePartyServices_Branch_BB21:
        brk                                     ; BB21 00                       .
        db   $00,$73                         ; BB22 00 73                    .s
; ----------------------------------------------------------------------------
        lda     $73                             ; BB24 A5 73                    .s
        cmp     $7F                             ; BB26 C5 7F                    ..
        bcc     BattlePartyServices_Branch_BB3C ; BB28 90 12                    ..
        bne     BattlePartyServices_Branch_BB32 ; BB2A D0 06                    ..
        lda     $72                             ; BB2C A5 72                    .r
        cmp     $7E                             ; BB2E C5 7E                    .~
        bcc     BattlePartyServices_Branch_BB3C ; BB30 90 0A                    ..
BattlePartyServices_Branch_BB32:
        lda     $72                             ; BB32 A5 72                    .r
        sta     $7E                             ; BB34 85 7E                    .~
        lda     $73                             ; BB36 A5 73                    .s
        sta     $7F                             ; BB38 85 7F                    ..
        stx     $0E                             ; BB3A 86 0E                    ..
BattlePartyServices_Branch_BB3C:
        dex                                     ; BB3C CA                       .
        bpl     BattlePartyServices_Branch_BB21 ; BB3D 10 E2                    ..
        bmi     BattlePartyServices_Branch_BB68 ; BB3F 30 27                    0'
BattlePartyServices_Branch_BB41:
        ldx     #$07                            ; BB41 A2 07                    ..
        lda     #$00                            ; BB43 A9 00                    ..
        sta     $72                             ; BB45 85 72                    .r
        sta     $72                             ; BB47 85 72                    .r
BattlePartyServices_Branch_BB49:
        asl     $09                             ; BB49 06 09                    ..
        bcc     BattlePartyServices_Branch_BB68 ; BB4B 90 1B                    ..
        brk                                     ; BB4D 00                       .
        db   $00,$B3                         ; BB4E 00 B3                    ..
; ----------------------------------------------------------------------------
        lda     $7E                             ; BB50 A5 7E                    .~
        cmp     $72                             ; BB52 C5 72                    .r
        bcc     BattlePartyServices_Branch_BB68 ; BB54 90 12                    ..
        bne     BattlePartyServices_Branch_BB5E ; BB56 D0 06                    ..
        lda     $7F                             ; BB58 A5 7F                    ..
        cmp     $73                             ; BB5A C5 73                    .s
        bcc     BattlePartyServices_Branch_BB68 ; BB5C 90 0A                    ..
BattlePartyServices_Branch_BB5E:
        lda     $7F                             ; BB5E A5 7F                    ..
        sta     $73                             ; BB60 85 73                    .s
        lda     $7E                             ; BB62 A5 7E                    .~
        sta     $72                             ; BB64 85 72                    .r
        stx     $0E                             ; BB66 86 0E                    ..
BattlePartyServices_Branch_BB68:
        dex                                     ; BB68 CA                       .
        bpl     BattlePartyServices_Branch_BB49 ; BB69 10 DE                    ..
        ldx     $0E                             ; BB6B A6 0E                    ..
        lda     #$00                            ; BB6D A9 00                    ..
        sec                                     ; BB6F 38                       8
BattlePartyServices_Branch_BB70:
        rol     a                               ; BB70 2A                       *
        dex                                     ; BB71 CA                       .
        bpl     BattlePartyServices_Branch_BB70 ; BB72 10 FC                    ..
        sta     $09                             ; BB74 85 09                    ..
        sec                                     ; BB76 38                       8
        rts                                     ; BB77 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BB78:
        lda     #$08                            ; BB78 A9 08                    ..
        sta     $0D                             ; BB7A 85 0D                    ..
        bne     BattlePartyServices_Branch_BB82 ; BB7C D0 04                    ..
BattlePartyServices_Entry_BB7E:
        lda     #$02                            ; BB7E A9 02                    ..
        sta     $0D                             ; BB80 85 0D                    ..
BattlePartyServices_Branch_BB82:
        jsr     BattlePartyServices_Entry_AD26  ; BB82 20 26 AD                  &.
        bcs     BattlePartyServices_Branch_BBC3 ; BB85 B0 3C                    .<
        jsr     BattlePartyServices_Entry_AD57  ; BB87 20 57 AD                  W.
        bcc     BattlePartyServices_Branch_BBC3 ; BB8A 90 37                    .7
        ldx     #$FF                            ; BB8C A2 FF                    ..
        brk                                     ; BB8E 00                       .
        db   $29,$C3,$0E                     ; BB8F 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        sta     $09                             ; BB92 85 09                    ..
        brk                                     ; BB94 00                       .
        db   $29,$C3,$0D                     ; BB95 29 C3 0D                 )..
; ----------------------------------------------------------------------------
        eor     #$FF                            ; BB98 49 FF                    I.
        and     $09                             ; BB9A 25 09                    %.
        sta     $09                             ; BB9C 85 09                    ..
        brk                                     ; BB9E 00                       .
        db   $29,$C3,$00                     ; BB9F 29 C3 00                 )..
; ----------------------------------------------------------------------------
        eor     #$FF                            ; BBA2 49 FF                    I.
        and     $09                             ; BBA4 25 09                    %.
        sta     $09                             ; BBA6 85 09                    ..
        jsr     BattlePartyServices_Entry_AD4E  ; BBA8 20 4E AD                  N.
        brk                                     ; BBAB 00                       .
        db   $2D,$B3                         ; BBAC 2D B3                    -.
; ----------------------------------------------------------------------------
        ldx     #$FF                            ; BBAE A2 FF                    ..
        brk                                     ; BBB0 00                       .
        db   $2D,$B3                         ; BBB1 2D B3                    -.
; ----------------------------------------------------------------------------
        and     $09                             ; BBB3 25 09                    %.
        ldx     #$00                            ; BBB5 A2 00                    ..
        ldy     #$07                            ; BBB7 A0 07                    ..
BattlePartyServices_Branch_BBB9:
        asl     a                               ; BBB9 0A                       .
        bcc     BattlePartyServices_Branch_BBBD ; BBBA 90 01                    ..
        inx                                     ; BBBC E8                       .
BattlePartyServices_Branch_BBBD:
        dey                                     ; BBBD 88                       .
        bpl     BattlePartyServices_Branch_BBB9 ; BBBE 10 F9                    ..
        cpx     $0D                             ; BBC0 E4 0D                    ..
        rts                                     ; BBC2 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_BBC3:
        clc                                     ; BBC3 18                       .
        rts                                     ; BBC4 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BBC5:
        tay                                     ; BBC5 A8                       .
        clc                                     ; BBC6 18                       .
        lda     #$FF                            ; BBC7 A9 FF                    ..
BattlePartyServices_Branch_BBC9:
        rol     a                               ; BBC9 2A                       *
        dey                                     ; BBCA 88                       .
        bpl     BattlePartyServices_Branch_BBC9 ; BBCB 10 FC                    ..
        and     $09                             ; BBCD 25 09                    %.
        sta     $09                             ; BBCF 85 09                    ..
        rts                                     ; BBD1 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BBD2:
        ldx     $96                             ; BBD2 A6 96                    ..
        lda     BattleSlotDescriptors,x         ; BBD4 BD F4 72                 ..r
        bmi     BattlePartyServices_Branch_BBDB ; BBD7 30 02                    0.
        clc                                     ; BBD9 18                       .
        rts                                     ; BBDA 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_BBDB:
        brk                                     ; BBDB 00                       .
        db   $62,$23,$49                     ; BBDC 62 23 49                 b#I
; ----------------------------------------------------------------------------
        bne     BattlePartyServices_Branch_BBE7 ; BBDF D0 06                    ..
        brk                                     ; BBE1 00                       .
        db   $64,$33                         ; BBE2 64 33                    d3
; ----------------------------------------------------------------------------
        jmp     BattlePartyServices_Branch_BBEB ; BBE4 4C EB BB                 L..
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_BBE7:
        brk                                     ; BBE7 00                       .
        db   $64,$23,$49                     ; BBE8 64 23 49                 d#I
; ----------------------------------------------------------------------------
BattlePartyServices_Branch_BBEB:
        lda     $75                             ; BBEB A5 75                    .u
        sec                                     ; BBED 38                       8
        sbc     $7396                           ; BBEE ED 96 73                 ..s
        bcc     BattlePartyServices_Branch_BBF5 ; BBF1 90 02                    ..
        cmp     #$05                            ; BBF3 C9 05                    ..
BattlePartyServices_Branch_BBF5:
        rts                                     ; BBF5 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BBF6:
        jsr     BattlePartyServices_Entry_AD57  ; BBF6 20 57 AD                  W.
        bcc     BattlePartyServices_Branch_BC33 ; BBF9 90 38                    .8
        brk                                     ; BBFB 00                       .
        db   $0F,$1F                         ; BBFC 0F 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_BC33 ; BBFE 90 33                    .3
        stx     $C7                             ; BC00 86 C7                    ..
        brk                                     ; BC02 00                       .
        db   $06,$1F                         ; BC03 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; BC05 00                       .
        db   $2D,$B3                         ; BC06 2D B3                    -.
; ----------------------------------------------------------------------------
        sta     $7C                             ; BC08 85 7C                    .|
        tax                                     ; BC0A AA                       .
        lda     $6E45,x                         ; BC0B BD 45 6E                 .En
        sta     $C4                             ; BC0E 85 C4                    ..
        lda     $00                           ; BC10 A5 00                    ..
        pha                                     ; BC12 48                       H
        lda     $01                             ; BC13 A5 01                    ..
        pha                                     ; BC15 48                       H
        lda     $D6                             ; BC16 A5 D6                    ..
        pha                                     ; BC18 48                       H
        brk                                     ; BC19 00                       .
        db   $05,$4F                         ; BC1A 05 4F                    .O
; ----------------------------------------------------------------------------
        pla                                     ; BC1C 68                       h
        sta     $D6                             ; BC1D 85 D6                    ..
        pla                                     ; BC1F 68                       h
        sta     $01                             ; BC20 85 01                    ..
        pla                                     ; BC22 68                       h
        sta     $00                           ; BC23 85 00                    ..
        bcc     BattlePartyServices_Branch_BC33 ; BC25 90 0C                    ..
        ldx     $C7                             ; BC27 A6 C7                    ..
        lda     #$00                            ; BC29 A9 00                    ..
        sec                                     ; BC2B 38                       8
BattlePartyServices_Branch_BC2C:
        rol     a                               ; BC2C 2A                       *
        dex                                     ; BC2D CA                       .
        bpl     BattlePartyServices_Branch_BC2C ; BC2E 10 FC                    ..
        sta     $09                             ; BC30 85 09                    ..
        sec                                     ; BC32 38                       8
BattlePartyServices_Branch_BC33:
        rts                                     ; BC33 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BC34:
        jsr     BattlePartyServices_Entry_AD57  ; BC34 20 57 AD                  W.
        bcc     BattlePartyServices_Branch_BC33 ; BC37 90 FA                    ..
        brk                                     ; BC39 00                       .
        db   $0F,$1F                         ; BC3A 0F 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattlePartyServices_Branch_BC33 ; BC3C 90 F5                    ..
        stx     $C7                             ; BC3E 86 C7                    ..
        jsr     BattlePartyServices_Entry_ACF0  ; BC40 20 F0 AC                  ..
        lda     $0B                             ; BC43 A5 0B                    ..
        sec                                     ; BC45 38                       8
        sbc     #$5C                            ; BC46 E9 5C                    .\
        tay                                     ; BC48 A8                       .
        brk                                     ; BC49 00                       .
        db   $09,$4F                         ; BC4A 09 4F                    .O
; ----------------------------------------------------------------------------
        brk                                     ; BC4C 00                       .
        db   $11,$4F                         ; BC4D 11 4F                    .O
; ----------------------------------------------------------------------------
        sta     $C4                             ; BC4F 85 C4                    ..
        lda     $00                           ; BC51 A5 00                    ..
        pha                                     ; BC53 48                       H
        lda     $01                             ; BC54 A5 01                    ..
        pha                                     ; BC56 48                       H
        lda     $D6                             ; BC57 A5 D6                    ..
        pha                                     ; BC59 48                       H
        brk                                     ; BC5A 00                       .
        db   $05,$4F                         ; BC5B 05 4F                    .O
; ----------------------------------------------------------------------------
        pla                                     ; BC5D 68                       h
        sta     $D6                             ; BC5E 85 D6                    ..
        pla                                     ; BC60 68                       h
        sta     $01                             ; BC61 85 01                    ..
        pla                                     ; BC63 68                       h
        sta     $00                           ; BC64 85 00                    ..
        bcc     BattlePartyServices_Branch_BC33 ; BC66 90 CB                    ..
        ldx     $C7                             ; BC68 A6 C7                    ..
        lda     #$00                            ; BC6A A9 00                    ..
        sec                                     ; BC6C 38                       8
        rol     a                               ; BC6D 2A                       *
        dex                                     ; BC6E CA                       .
        bpl     BattlePartyServices_Branch_BC2C ; BC6F 10 BB                    ..
        sta     $09                             ; BC71 85 09                    ..
        sec                                     ; BC73 38                       8
        rts                                     ; BC74 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BC75:
        sec                                     ; BC75 38                       8
        rts                                     ; BC76 60                       `
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BC77:
        bpl     BattlePartyServices_Entry_BC75  ; BC77 10 FC                    ..
BattlePartyServices_Entry_BC79:
        jmp     BattlePartyServices_Entry_AD57  ; BC79 4C 57 AD                 LW.
; ----------------------------------------------------------------------------
BattlePartyServices_Entry_BC7C:
        clc                                     ; BC7C 18                       .
        rts                                     ; BC7D 60                       `
; ----------------------------------------------------------------------------
        db   $64,$E1,$3E,$FB,$05,$94,$8C,$00 ; BC7E 64 E1 3E FB 05 94 8C 00  d.>.....
        db   $FF,$5A,$24,$FF,$5F,$24,$23,$FF ; BC86 FF 5A 24 FF 5F 24 23 FF  .Z$._$#.
        db   $64,$23,$21,$FF,$69,$21,$1F,$FF ; BC8E 64 23 21 FF 69 21 1F FF  d#!.i!..
        db   $6E,$49,$21,$FF,$73,$21,$1F,$FF ; BC96 6E 49 21 FF 73 21 1F FF  nI!.s!..
        db   $78,$1F,$1D,$FF,$7D,$1D,$1C,$FF ; BC9E 78 1F 1D FF 7D 1D 1C FF  x...}...
        db   $78,$65,$86,$00,$15,$17,$18,$1A ; BCA6 78 65 86 00 15 17 18 1A  xe......
        db   $1C,$1D,$B5,$00,$6C,$0C,$FF,$73 ; BCAE 1C 1D B5 00 6C 0C FF 73  ....l..s
        db   $1D,$FF,$6E,$21,$FF,$69,$24,$FF ; BCB6 1D FF 6E 21 FF 69 24 FF  ..n!.i$.
        db   $64,$73,$30,$26,$95,$98,$00,$94 ; BCBE 64 73 30 26 95 98 00 94  ds0&....
        db   $00,$E1,$3E,$F7,$FB,$05,$0C,$1C ; BCC6 00 E1 3E F7 FB 05 0C 1C  ..>.....
        db   $1C,$1F,$1F,$1D,$1D,$1C,$21,$1C ; BCCE 1C 1F 1F 1D 1D 1C 21 1C  ......!.
        db   $1C,$1C,$1C,$19,$19,$19,$15,$11 ; BCD6 1C 1C 1C 19 19 19 15 11  ........
        db   $13,$15,$17,$18,$1A,$1C,$1D,$21 ; BCDE 13 15 17 18 1A 1C 1D 21  .......!
        db   $18,$21,$20,$23,$4A,$49,$FB,$05 ; BCE6 18 21 20 23 4A 49 FB 05  .! #JI..
        db   $57,$0C,$B5,$0B,$1F,$24,$24,$24 ; BCEE 57 0C B5 0B 1F 24 24 24  W....$$$
        db   $24,$24,$21,$25,$25,$25,$25,$21 ; BCF6 24 24 21 25 25 25 25 21  $$!%%%%!
        db   $21,$1F,$65,$B0,$2F,$1A,$67,$8C ; BCFE 21 1F 65 B0 2F 1A 67 8C  !.e./.g.
        db   $00,$23,$14,$10,$5E,$3C,$94,$00 ; BD06 00 23 14 10 5E 3C 94 00  .#..^<..
        db   $50,$E1,$00,$74,$84,$04,$29,$29 ; BD0E 50 E1 00 74 84 04 29 29  P..t..))
        db   $74,$08,$27,$2B,$74,$A4,$18,$94 ; BD16 74 08 27 2B 74 A4 18 94  t.'+t...
        db   $00,$F7,$24,$23,$22,$21,$1F,$22 ; BD1E 00 F7 24 23 22 21 1F 22  ..$#"!."
        db   $21,$49,$94,$00,$C8,$20,$01,$01 ; BD26 21 49 94 00 C8 20 01 01  !I... ..
        db   $70,$10,$C8,$30,$E0,$E0,$98,$08 ; BD2E 70 10 C8 30 E0 E0 98 08  p..0....
        db   $10,$88,$08,$10,$C8,$31,$03,$00 ; BD36 10 88 08 10 C8 31 03 00  .....1..
        db   $60,$10,$C8,$41,$F9,$3F,$80,$40 ; BD3E 60 10 C8 41 F9 3F 80 40  `..A.?.@
        db   $20,$40,$30,$08,$60,$D0,$E8,$78 ; BD46 20 40 30 08 60 D0 E8 78   @0.`..x
        db   $30,$0C,$C8,$51,$80,$80,$04,$06 ; BD4E 30 0C C8 51 80 80 04 06  0..Q....
        db   $C8,$12,$01,$00,$05,$C8,$22,$FF ; BD56 C8 12 01 00 05 C8 22 FF  ......".
        db   $03,$08,$10,$0A,$16,$36,$0E,$26 ; BD5E 03 08 10 0A 16 36 0E 26  .....6.&
        db   $23,$43,$43,$C8,$32,$FD,$A1,$14 ; BD66 23 43 43 C8 32 FD A1 14  #CC.2...
        db   $20,$18,$23,$33,$3D,$3F,$1C,$07 ; BD6E 20 18 23 33 3D 3F 1C 07   .#3=?..
        db   $18,$C8,$42,$FE,$C6,$08,$05,$80 ; BD76 18 C8 42 FE C6 08 05 80  ..B.....
        db   $40,$38,$25,$43,$40,$80,$80,$40 ; BD7E 40 38 25 43 40 80 80 40  @8%C@..@
        db   $C8,$62,$00,$1C,$02,$06,$0C,$C8 ; BD86 C8 62 00 1C 02 06 0C C8  .b......
        db   $23,$FF,$03,$64,$98,$80,$A0,$A0 ; BD8E 23 FF 03 64 98 80 A0 A0  #..d....
        db   $A0,$90,$48,$E4,$9A,$C0,$33,$0A ; BD96 A0 90 48 E4 9A C0 33 0A  ..H...3.
        db   $1A,$14,$30,$60,$90,$2C,$12,$4A ; BD9E 1A 14 30 60 90 2C 12 4A  ..0`.,.J
        db   $FA,$F4,$F0,$E0,$80,$0C,$1E,$C8 ; BDA6 FA F4 F0 E0 80 0C 1E C8  ........
        db   $43,$FC,$FC,$09,$08,$04,$04,$02 ; BDAE 43 FC FC 09 08 04 04 02  C.......
        db   $01,$1F,$2F,$87,$07,$03,$01,$C8 ; BDB6 01 1F 2F 87 07 03 01 C8  ../.....
        db   $63,$00,$07,$02,$06,$0C,$C8,$34 ; BDBE 63 00 07 02 06 0C C8 34  c......4
        db   $3F,$03,$04,$08,$02,$04,$04,$0A ; BDC6 3F 03 04 08 02 04 04 0A  ?.......
        db   $0D,$09,$C8,$44,$BE,$FE,$16,$18 ; BDCE 0D 09 C8 44 BE FE 16 18  ...D....
        db   $0C,$10,$10,$30,$E0,$06,$A0,$B0 ; BDD6 0C 10 10 30 E0 06 A0 B0  ...0....
        db   $F0,$F0,$E0,$A8,$18,$01,$03,$01 ; BDDE F0 F0 E0 A8 18 01 03 01  ........
        db   $D0,$DC,$FF,$A8,$08,$02,$01,$00 ; BDE6 D0 DC FF A8 08 02 01 00  ........
        db   $02,$A8,$10,$02,$0F,$02,$20,$07 ; BDEE 02 A8 10 02 0F 02 20 07  ...... .
        db   $1F,$3F,$7F,$A8,$13,$09,$DF,$F2 ; BDF6 1F 3F 7F A8 13 09 DF F2  .?......
        db   $01,$7F,$FF,$C1,$80,$07,$80,$3E ; BDFE 01 7F FF C1 80 07 80 3E  .......>
        db   $FF,$FF,$D7,$AB,$A0,$1B,$09,$00 ; BE06 FF FF D7 AB A0 1B 09 00  ........
        db   $00,$80,$C0,$60,$20,$14,$12,$F8 ; BE0E 00 80 C0 60 20 14 12 F8  ...` ...
        db   $F8,$78,$38,$98,$DE,$EF,$EF,$A8 ; BE16 F8 78 38 98 DE EF EF A8  .x8.....
        db   $0B,$09,$7F,$1F,$19,$21,$02,$02 ; BE1E 0B 09 7F 1F 19 21 02 02  .....!..
        db   $21,$1F,$0F,$1E,$3E,$3D,$7D,$7F ; BE26 21 1F 0F 1E 3E 3D 7D 7F  !...>=}.
        db   $A8,$13,$11,$F8,$00,$4A,$4A,$0A ; BE2E A8 13 11 F8 00 4A 4A 0A  .....JJ.
        db   $88,$01,$A0,$1B,$11,$42,$42,$50 ; BE36 88 01 A0 1B 11 42 42 50  .....BBP
        db   $28,$10,$0C,$00,$00,$FF,$FF,$FE ; BE3E 28 10 0C 00 00 FF FF FE  (.......
        db   $7E,$1C,$CE,$04,$05,$A0,$0B,$11 ; BE46 7E 1C CE 04 05 A0 0B 11  ~.......
        db   $42,$52,$24,$24,$24,$10,$08,$04 ; BE4E 42 52 24 24 24 10 08 04  BR$$$...
        db   $7F,$7E,$7E,$7C,$7E,$3C,$08,$04 ; BE56 7F 7E 7E 7C 7E 3C 08 04  .~~|~<..
        db   $A0,$1D,$19,$00,$00,$40,$44,$20 ; BE5E A0 1D 19 00 00 40 44 20  .....@D
        db   $20,$10,$08,$1C,$3A,$6E,$EE,$74 ; BE66 20 10 08 1C 3A 6E EE 74   ...:n.t
        db   $34,$14,$08,$88,$10,$17,$E0,$00 ; BE6E 34 14 08 88 10 17 E0 00  4.......
        db   $0C,$08,$0C,$A0,$0C,$19,$18,$08 ; BE76 0C 08 0C A0 0C 19 18 08  ........
        db   $08,$14,$02,$02,$04,$08,$58,$38 ; BE7E 08 14 02 02 04 08 58 38  ......X8
        db   $58,$7C,$2A,$D6,$54,$58,$A8,$0C ; BE86 58 7C 2A D6 54 58 A8 0C  X|*.TX..
        db   $21,$E0,$E0,$20,$10,$10,$68,$30 ; BE8E 21 E0 E0 20 10 10 68 30  !.. ..h0
        db   $10,$88,$00,$18,$3F,$F8,$60,$F0 ; BE96 10 88 00 18 3F F8 60 F0  ....?.`.
        db   $E4,$6C,$18,$04,$0C,$1A,$06,$03 ; BE9E E4 6C 18 04 0C 1A 06 03  .l......
        db   $01,$88,$08,$1F,$87,$00,$80,$04 ; BEA6 01 88 08 1F 87 00 80 04  ........
        db   $06,$03,$88,$0F,$27,$F0,$00,$C0 ; BEAE 06 03 88 0F 27 F0 00 C0  ....'...
        db   $60,$30,$10,$88,$20,$38,$70,$00 ; BEB6 60 30 10 88 20 38 70 00  `0.. 8p.
        db   $10,$18,$0C,$98,$10,$1E,$00,$6F ; BEBE 10 18 0C 98 10 1E 00 6F  .......o
        db   $03,$02,$18,$3C,$3F,$3F,$98,$18 ; BEC6 03 02 18 3C 3F 3F 98 18  ...<??..
        db   $1E,$00,$EF,$40,$C0,$C0,$10,$70 ; BECE 1E 00 EF 40 C0 C0 10 70  ...@...p
        db   $F8,$F4,$98,$0F,$26,$07,$FD,$0F ; BED6 F8 F4 98 0F 26 07 FD 0F  ....&...
        db   $01,$03,$03,$07,$01,$01,$08,$3E ; BEDE 01 03 03 07 01 01 08 3E  .......>
        db   $FF,$98,$17,$26,$07,$FE,$76,$8E ; BEE6 FF 98 17 26 07 FE 76 8E  ...&..v.
        db   $FF,$FF,$F8,$E0,$80,$07,$1F,$7F ; BEEE FF FF F8 E0 80 07 1F 7F  ........
        db   $98,$1F,$26,$07,$1F,$80,$40,$80 ; BEF6 98 1F 26 07 1F 80 40 80  ..&...@.
        db   $40,$20,$80,$C0,$E0,$90,$0E,$2E ; BEFE 40 20 80 C0 E0 90 0E 2E  @ ......
        db   $03,$0F,$19,$06,$81,$60,$18,$00 ; BF06 03 0F 19 06 81 60 18 00  .....`..
        db   $FF,$FF,$F9,$FE,$FF,$7E,$1C,$00 ; BF0E FF FF F9 FE FF 7E 1C 00  .....~..
        db   $90,$17,$2E,$00,$0E,$0B,$05,$04 ; BF16 90 17 2E 00 0E 0B 05 04  ........
        db   $42,$22,$50,$FF,$FF,$FB,$FD,$7C ; BF1E 42 22 50 FF FF FB FD 7C  B"P....|
        db   $7E,$3E,$1C,$98,$1F,$2E,$F0,$F0 ; BF26 7E 3E 1C 98 1F 2E F0 F0  ~>......
        db   $20,$60,$E0,$C0,$E0,$E0,$E0,$C0 ; BF2E 20 60 E0 C0 E0 E0 E0 C0   `......
        db   $98,$16,$36,$F0,$F8,$24,$30,$10 ; BF36 98 16 36 F0 F8 24 30 10  ..6..$0.
        db   $10,$10,$C4,$40,$20,$20,$98,$1C ; BF3E 10 10 C4 40 20 20 98 1C  ...@  ..
        db   $37,$F8,$FC,$08,$0C,$14,$14,$30 ; BF46 37 F8 FC 08 0C 14 14 30  7......0
        db   $E0,$10,$30,$20,$20,$40,$FF,$FF ; BF4E E0 10 30 20 20 40 FF FF  ..0  @..
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF56 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF5E FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF66 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF6E FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF76 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF7E FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF86 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF8E FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF96 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BF9E FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFA6 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFAE FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFB6 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFBE FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFC6 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFCE FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$78,$EE,$DF,$BF,$4C,$8E ; BFD6 FF FF 78 EE DF BF 4C 8E  ..x...L.
        db   $FF,$80,$20,$44,$52,$41,$47,$4F ; BFDE FF 80 20 44 52 41 47 4F  .. DRAGO
        db   $4E,$20,$51,$55,$45,$53,$54,$20 ; BFE6 4E 20 51 55 45 53 54 20  N QUEST
        db   $49,$56,$00,$00,$00,$00,$48,$04 ; BFEE 49 56 00 00 00 00 48 04  IV....H.
        db   $01,$0E,$07,$9E,$D8,$BF,$D8,$BF ; BFF6 01 0E 07 9E D8 BF D8 BF  ........
        db   $D8,$BF                         ; BFFE D8 BF                    ..
Bank10_End:
