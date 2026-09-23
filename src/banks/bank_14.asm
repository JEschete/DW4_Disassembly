; PRG bank $14: ROM file $050010-$05400F
; CPU window $8000-$BFFF
; Disassembled by project-local da65 using generated code/data ranges.

base $8000
Bank14_Start:
; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------
Bank14_BattleTurnDirectory:
        db   $20,$82,$E9,$82,$C2,$83,$1C,$84 ; 8000 20 82 E9 82 C2 83 1C 84   .......
        db   $14,$84,$DF,$84,$2E,$85,$53,$86 ; 8008 14 84 DF 84 2E 85 53 86  ......S.
        db   $69,$86,$42,$86,$2F,$81,$37,$87 ; 8010 69 86 42 86 2F 81 37 87  i.B./.7.
        db   $ED,$86,$04,$8A,$7A,$8D,$C9,$87 ; 8018 ED 86 04 8A 7A 8D C9 87  ....z...
        db   $34,$80,$1A,$9F,$D8,$90,$CC,$88 ; 8020 34 80 1A 9F D8 90 CC 88  4.......
        db   $1B,$A0,$30,$90,$F1,$A3,$40,$9A ; 8028 1B A0 30 90 F1 A3 40 9A  ..0...@.
        db   $BE,$90,$54,$84                 ; 8030 BE 90 54 84              ..T.
; ----------------------------------------------------------------------------
Bank14_BattleTurnEngine:
        ldx     #$07                            ; 8034 A2 07                    ..
        stx     $C7                             ; 8036 86 C7                    ..
BattleTurnEngine_Branch_8038:
        jsr     BattleTurnEngine_Entry_8211     ; 8038 20 11 82                  ..
        dec     $C7                             ; 803B C6 C7                    ..
        bpl     BattleTurnEngine_Branch_8038    ; 803D 10 F9                    ..
        jsr     UpperFixedEngine_Entry_C5AF     ; 803F 20 AF C5                  ..
        lda     #$FF                            ; 8042 A9 FF                    ..
        ldx     #$07                            ; 8044 A2 07                    ..
BattleTurnEngine_Branch_8046:
        sta     $06A0,x                         ; 8046 9D A0 06                 ...
        dex                                     ; 8049 CA                       .
        bpl     BattleTurnEngine_Branch_8046    ; 804A 10 FA                    ..
        ldx     #$19                            ; 804C A2 19                    ..
BattleTurnEngine_Branch_804E:
        sta     $05FC,x                         ; 804E 9D FC 05                 ...
        dex                                     ; 8051 CA                       .
        bpl     BattleTurnEngine_Branch_804E    ; 8052 10 FA                    ..
        lda     $0514                           ; 8054 AD 14 05                 ...
        sta     $05FD                           ; 8057 8D FD 05                 ...
        lda     #$00                            ; 805A A9 00                    ..
        sta     $CA                             ; 805C 85 CA                    ..
        sta     $C9                             ; 805E 85 C9                    ..
        ldx     #$03                            ; 8060 A2 03                    ..
BattleTurnEngine_Branch_8062:
        sta     $6E49,x                         ; 8062 9D 49 6E                 .In
        dex                                     ; 8065 CA                       .
        bpl     BattleTurnEngine_Branch_8062    ; 8066 10 FA                    ..
        ldx     #$07                            ; 8068 A2 07                    ..
BattleTurnEngine_Branch_806A:
        sta     $0444,x                         ; 806A 9D 44 04                 .D.
        dex                                     ; 806D CA                       .
        bpl     BattleTurnEngine_Branch_806A    ; 806E 10 FA                    ..
        ldx     #$07                            ; 8070 A2 07                    ..
BattleTurnEngine_Branch_8072:
        brk                                     ; 8072 00                       .
        db   $29,$C3,$0E                     ; 8073 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        bcc     BattleTurnEngine_Branch_807F    ; 8076 90 07                    ..
        brk                                     ; 8078 00                       .
        db   $2D,$B3                         ; 8079 2D B3                    -.
; ----------------------------------------------------------------------------
        tax                                     ; 807B AA                       .
        inc     $6E49,x                         ; 807C FE 49 6E                 .In
BattleTurnEngine_Branch_807F:
        dec     $7B                             ; 807F C6 7B                    .{
        ldx     $7B                             ; 8081 A6 7B                    .{
        bpl     BattleTurnEngine_Branch_8072    ; 8083 10 ED                    ..
        ldx     #$00                            ; 8085 A2 00                    ..
        stx     $C6                             ; 8087 86 C6                    ..
        stx     $C7                             ; 8089 86 C7                    ..
BattleTurnEngine_Branch_808B:
        ldy     $6E45,x                         ; 808B BC 45 6E                 .En
        cpy     #$99                            ; 808E C0 99                    ..
        bne     BattleTurnEngine_Branch_80AD    ; 8090 D0 1B                    ..
        txa                                     ; 8092 8A                       .
        pha                                     ; 8093 48                       H
        ldx     #$03                            ; 8094 A2 03                    ..
        brk                                     ; 8096 00                       .
        db   $29,$C3,$0C                     ; 8097 29 C3 0C                 )..
; ----------------------------------------------------------------------------
        pla                                     ; 809A 68                       h
        tax                                     ; 809B AA                       .
        bcs     BattleTurnEngine_Branch_80AD    ; 809C B0 0F                    ..
        lda     #$1C                            ; 809E A9 1C                    ..
        sta     $0600                           ; 80A0 8D 00 06                 ...
        lda     #$39                            ; 80A3 A9 39                    .9
        sta     $0601                           ; 80A5 8D 01 06                 ...
        lda     #$13                            ; 80A8 A9 13                    ..
        sta     $0602                           ; 80AA 8D 02 06                 ...
BattleTurnEngine_Branch_80AD:
        sty     $C4                             ; 80AD 84 C4                    ..
        iny                                     ; 80AF C8                       .
        beq     BattleTurnEngine_Branch_80E4    ; 80B0 F0 32                    .2
        lda     $6E49,x                         ; 80B2 BD 49 6E                 .In
        beq     BattleTurnEngine_Branch_80E4    ; 80B5 F0 2D                    .-
        sta     $C5                             ; 80B7 85 C5                    ..
        jsr     BattleTurnEngine_Entry_9F0C     ; 80B9 20 0C 9F                  ..
        jsr     BattleTurnEngine_Entry_92EF     ; 80BC 20 EF 92                  ..
        jsr     BattleTurnEngine_Entry_9C54     ; 80BF 20 54 9C                  T.
        jsr     BattleTurnEngine_Entry_9496     ; 80C2 20 96 94                  ..
        lda     $C4                             ; 80C5 A5 C4                    ..
        ldx     $C6                             ; 80C7 A6 C6                    ..
        sta     $0440,x                         ; 80C9 9D 40 04                 .@.
        ldx     $C6                             ; 80CC A6 C6                    ..
        brk                                     ; 80CE 00                       .
        db   $29,$C3,$0C                     ; 80CF 29 C3 0C                 )..
; ----------------------------------------------------------------------------
        bcc     BattleTurnEngine_Branch_80E1    ; 80D2 90 0D                    ..
        brk                                     ; 80D4 00                       .
        db   $11,$1F                         ; 80D5 11 1F                    ..
; ----------------------------------------------------------------------------
        clc                                     ; 80D7 18                       .
        adc     #$F0                            ; 80D8 69 F0                    i.
        ldx     $C6                             ; 80DA A6 C6                    ..
        sta     $0440,x                         ; 80DC 9D 40 04                 .@.
        sta     $C4                             ; 80DF 85 C4                    ..
BattleTurnEngine_Branch_80E1:
        jsr     BattleTurnEngine_Entry_946E     ; 80E1 20 6E 94                  n.
BattleTurnEngine_Branch_80E4:
        inc     $C6                             ; 80E4 E6 C6                    ..
        ldx     $C6                             ; 80E6 A6 C6                    ..
        cpx     #$04                            ; 80E8 E0 04                    ..
        bcc     BattleTurnEngine_Branch_808B    ; 80EA 90 9F                    ..
        ldx     #$00                            ; 80EC A2 00                    ..
BattleTurnEngine_Branch_80EE:
        stx     $C7                             ; 80EE 86 C7                    ..
        brk                                     ; 80F0 00                       .
        db   $29,$C3,$0E                     ; 80F1 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        bcc     BattleTurnEngine_Branch_811E    ; 80F4 90 28                    .(
        brk                                     ; 80F6 00                       .
        db   $2D,$B3                         ; 80F7 2D B3                    -.
; ----------------------------------------------------------------------------
        sta     $C6                             ; 80F9 85 C6                    ..
        brk                                     ; 80FB 00                       .
        db   $2E,$B3                         ; 80FC 2E B3                    ..
; ----------------------------------------------------------------------------
        sta     $C5                             ; 80FE 85 C5                    ..
        jsr     BattleTurnEngine_Entry_9E8F     ; 8100 20 8F 9E                  ..
        jsr     BattleTurnEngine_Entry_9ED1     ; 8103 20 D1 9E                  ..
        jsr     BattleTurnEngine_Entry_93D2     ; 8106 20 D2 93                  ..
        jsr     BattleTurnEngine_Entry_9E7F     ; 8109 20 7F 9E                  ..
        lda     $7392,x                         ; 810C BD 92 73                 ..s
        beq     BattleTurnEngine_Branch_811E    ; 810F F0 0D                    ..
        lda     $C9                             ; 8111 A5 C9                    ..
        ldy     $C7                             ; 8113 A4 C7                    ..
        sta     $06A0,y                         ; 8115 99 A0 06                 ...
        clc                                     ; 8118 18                       .
        adc     $7392,x                         ; 8119 7D 92 73                 }.s
        sta     $C9                             ; 811C 85 C9                    ..
BattleTurnEngine_Branch_811E:
        inc     $7B                             ; 811E E6 7B                    .{
        ldx     $7B                             ; 8120 A6 7B                    .{
        cpx     #$08                            ; 8122 E0 08                    ..
        bcc     BattleTurnEngine_Branch_80EE    ; 8124 90 C8                    ..
        jsr     BattleTurnEngine_Entry_9C71     ; 8126 20 71 9C                  q.
        jsr     BattleTurnEngine_Entry_81CF     ; 8129 20 CF 81                  ..
        jmp     WaitForNmi                      ; 812C 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_812F:
        jsr     BattleTurnEngine_Entry_91D3     ; 812F 20 D3 91                  ..
        jsr     UpperFixedEngine_Entry_C5AF     ; 8132 20 AF C5                  ..
        jsr     BattleTurnEngine_Entry_9292     ; 8135 20 92 92                  ..
        jsr     BattleTurnEngine_Entry_926B     ; 8138 20 6B 92                  k.
        ldx     #$00                            ; 813B A2 00                    ..
        stx     $C6                             ; 813D 86 C6                    ..
        stx     $C7                             ; 813F 86 C7                    ..
BattleTurnEngine_Branch_8141:
        ldx     $C6                             ; 8141 A6 C6                    ..
        ldy     $6E45,x                         ; 8143 BC 45 6E                 .En
        sty     $C4                             ; 8146 84 C4                    ..
        iny                                     ; 8148 C8                       .
        beq     BattleTurnEngine_Branch_81B5    ; 8149 F0 6A                    .j
        jsr     BattleTurnEngine_Entry_9F0C     ; 814B 20 0C 9F                  ..
        lda     $6E49,x                         ; 814E BD 49 6E                 .In
        sta     $C5                             ; 8151 85 C5                    ..
        stx     $C6                             ; 8153 86 C6                    ..
        jsr     BattleTurnEngine_Entry_92EF     ; 8155 20 EF 92                  ..
        lda     $C4                             ; 8158 A5 C4                    ..
        cmp     #$AE                            ; 815A C9 AE                    ..
        beq     BattleTurnEngine_Branch_8184    ; 815C F0 26                    .&
        cmp     #$BC                            ; 815E C9 BC                    ..
        beq     BattleTurnEngine_Branch_8184    ; 8160 F0 22                    ."
        jsr     BattleTurnEngine_Entry_9ADD     ; 8162 20 DD 9A                  ..
        bcc     BattleTurnEngine_Branch_81AE    ; 8165 90 47                    .G
        jsr     BattleTurnEngine_Entry_9C4A     ; 8167 20 4A 9C                  J.
        bcc     BattleTurnEngine_Branch_81AE    ; 816A 90 42                    .B
        jsr     BattleTurnEngine_Entry_9439     ; 816C 20 39 94                  9.
        bcc     BattleTurnEngine_Branch_81AE    ; 816F 90 3D                    .=
        jsr     BattleTurnEngine_Entry_93F2     ; 8171 20 F2 93                  ..
        bcc     BattleTurnEngine_Branch_81AE    ; 8174 90 38                    .8
        lda     $C4                             ; 8176 A5 C4                    ..
        beq     BattleTurnEngine_Branch_8184    ; 8178 F0 0A                    ..
        jsr     BattleTurnEngine_Entry_9682     ; 817A 20 82 96                  ..
        bcc     BattleTurnEngine_Branch_81AE    ; 817D 90 2F                    ./
        jsr     BattleTurnEngine_Entry_9686     ; 817F 20 86 96                  ..
        bcc     BattleTurnEngine_Branch_81AE    ; 8182 90 2A                    .*
BattleTurnEngine_Branch_8184:
        jsr     BattleTurnEngine_Entry_9C54     ; 8184 20 54 9C                  T.
        bcc     BattleTurnEngine_Branch_81AE    ; 8187 90 25                    .%
        jsr     BattleTurnEngine_Entry_946E     ; 8189 20 6E 94                  n.
        jsr     BattleTurnEngine_Entry_9496     ; 818C 20 96 94                  ..
        lda     $C4                             ; 818F A5 C4                    ..
        cmp     #$AE                            ; 8191 C9 AE                    ..
        beq     BattleTurnEngine_Branch_8198    ; 8193 F0 03                    ..
        jsr     BattleTurnEngine_Entry_9B4E     ; 8195 20 4E 9B                  N.
BattleTurnEngine_Branch_8198:
        ldx     $C6                             ; 8198 A6 C6                    ..
        lda     $C4                             ; 819A A5 C4                    ..
        sta     $0440,x                         ; 819C 9D 40 04                 .@.
        beq     BattleTurnEngine_Branch_81A4    ; 819F F0 03                    ..
        jsr     BattleTurnEngine_Entry_969C     ; 81A1 20 9C 96                  ..
BattleTurnEngine_Branch_81A4:
        lda     $C5                             ; 81A4 A5 C5                    ..
        ldx     $C6                             ; 81A6 A6 C6                    ..
        sta     $6E49,x                         ; 81A8 9D 49 6E                 .In
        jmp     BattleTurnEngine_Branch_81B5    ; 81AB 4C B5 81                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_81AE:
        ldx     $C6                             ; 81AE A6 C6                    ..
        jsr     BattleTurnEngine_Entry_81F4     ; 81B0 20 F4 81                  ..
        dec     $C6                             ; 81B3 C6 C6                    ..
BattleTurnEngine_Branch_81B5:
        inc     $C6                             ; 81B5 E6 C6                    ..
        ldx     $C6                             ; 81B7 A6 C6                    ..
        cpx     #$04                            ; 81B9 E0 04                    ..
        bcc     BattleTurnEngine_Branch_8141    ; 81BB 90 84                    ..
        jsr     BattleTurnEngine_Entry_93AB     ; 81BD 20 AB 93                  ..
        jsr     BattleTurnEngine_Entry_9C71     ; 81C0 20 71 9C                  q.
        jsr     BattleTurnEngine_Entry_85AB     ; 81C3 20 AB 85                  ..
        jsr     BattleTurnEngine_Entry_81CF     ; 81C6 20 CF 81                  ..
        jsr     WaitForNmi                      ; 81C9 20 74 FF                  t.
        jmp     UpperFixedEngine_Entry_C5BF     ; 81CC 4C BF C5                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_81CF:
        ldx     #$00                            ; 81CF A2 00                    ..
        lda     #$F7                            ; 81D1 A9 F7                    ..
BattleTurnEngine_Branch_81D3:
        sta     $0200,x                         ; 81D3 9D 00 02                 ...
        inx                                     ; 81D6 E8                       .
        inx                                     ; 81D7 E8                       .
        inx                                     ; 81D8 E8                       .
        inx                                     ; 81D9 E8                       .
        bne     BattleTurnEngine_Branch_81D3    ; 81DA D0 F7                    ..
        lda     #$02                            ; 81DC A9 02                    ..
        sta     OAMDMA                          ; 81DE 8D 14 40                 ..@
        jsr     UpperFixedEngine_Entry_C58F     ; 81E1 20 8F C5                  ..
        lda     #$00                            ; 81E4 A9 00                    ..
        sta     $C7                             ; 81E6 85 C7                    ..
BattleTurnEngine_Branch_81E8:
        jsr     BattleTurnEngine_Entry_9822     ; 81E8 20 22 98                  ".
        inc     $C7                             ; 81EB E6 C7                    ..
        lda     $C7                             ; 81ED A5 C7                    ..
        cmp     #$08                            ; 81EF C9 08                    ..
        bne     BattleTurnEngine_Branch_81E8    ; 81F1 D0 F5                    ..
        rts                                     ; 81F3 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_81F4:
        lda     $6E46,x                         ; 81F4 BD 46 6E                 .Fn
        sta     $6E45,x                         ; 81F7 9D 45 6E                 .En
        lda     $6E4A,x                         ; 81FA BD 4A 6E                 .Jn
        sta     $6E49,x                         ; 81FD 9D 49 6E                 .In
        inx                                     ; 8200 E8                       .
        cpx     #$04                            ; 8201 E0 04                    ..
        bne     BattleTurnEngine_Entry_81F4     ; 8203 D0 EF                    ..
        dex                                     ; 8205 CA                       .
        lda     #$FF                            ; 8206 A9 FF                    ..
        sta     $6E45,x                         ; 8208 9D 45 6E                 .En
        lda     #$00                            ; 820B A9 00                    ..
        sta     $6E49,x                         ; 820D 9D 49 6E                 .In
        rts                                     ; 8210 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8211:
        lda     $C7                             ; 8211 A5 C7                    ..
        pha                                     ; 8213 48                       H
        jsr     BattleTurnEngine_Entry_9ED1     ; 8214 20 D1 9E                  ..
        jsr     BattleTurnEngine_Entry_82CC     ; 8217 20 CC 82                  ..
        pla                                     ; 821A 68                       h
        sta     $C7                             ; 821B 85 C7                    ..
        jmp     BattleTurnEngine_Branch_9EF4    ; 821D 4C F4 9E                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8220:
        lda     $C7                             ; 8220 A5 C7                    ..
        pha                                     ; 8222 48                       H
        jsr     BattleTurnEngine_Entry_9ED1     ; 8223 20 D1 9E                  ..
        jsr     BattleTurnEngine_Entry_822F     ; 8226 20 2F 82                  /.
        pla                                     ; 8229 68                       h
        sta     $C7                             ; 822A 85 C7                    ..
        jmp     BattleTurnEngine_Branch_9EF4    ; 822C 4C F4 9E                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_822F:
        jsr     BattleTurnEngine_Entry_8367     ; 822F 20 67 83                  g.
        bcs     BattleTurnEngine_Branch_8237    ; 8232 B0 03                    ..
        jmp     BattleTurnEngine_Entry_82CC     ; 8234 4C CC 82                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8237:
        ldx     $6E45                           ; 8237 AE 45 6E                 .En
        cpx     #$AE                            ; 823A E0 AE                    ..
        bne     BattleTurnEngine_Branch_8263    ; 823C D0 25                    .%
        lda     #$30                            ; 823E A9 30                    .0
        jsr     BattleTurnEngine_Entry_837F     ; 8240 20 7F 83                  ..
        lda     #$20                            ; 8243 A9 20                    .
        jsr     BattleTurnEngine_Entry_837F     ; 8245 20 7F 83                  ..
        lda     #$10                            ; 8248 A9 10                    ..
        jsr     BattleTurnEngine_Entry_837F     ; 824A 20 7F 83                  ..
        lda     #$00                            ; 824D A9 00                    ..
        jsr     BattleTurnEngine_Entry_837F     ; 824F 20 7F 83                  ..
        brk                                     ; 8252 00                       .
        db   $00,$FB                         ; 8253 00 FB                    ..
; ----------------------------------------------------------------------------
        ldy     #$00                            ; 8255 A0 00                    ..
        lda     #$3F                            ; 8257 A9 3F                    .?
        sta     $04                             ; 8259 85 04                    ..
        jsr     BattleTurnEngine_Entry_9C1D     ; 825B 20 1D 9C                  ..
        lda     #$0F                            ; 825E A9 0F                    ..
        jmp     BattleTurnEngine_Entry_837F     ; 8260 4C 7F 83                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8263:
        lda     #$FF                            ; 8263 A9 FF                    ..
        jsr     BattleTurnEngine_Entry_83B7     ; 8265 20 B7 83                  ..
        jsr     UpperFixedEngine_Entry_C5B9     ; 8268 20 B9 C5                  ..
        ldy     #$00                            ; 826B A0 00                    ..
        lda     #$3F                            ; 826D A9 3F                    .?
        sta     $04                             ; 826F 85 04                    ..
        jsr     BattleTurnEngine_Entry_9C1D     ; 8271 20 1D 9C                  ..
        jsr     WaitForNmi                      ; 8274 20 74 FF                  t.
        lda     $6E45                           ; 8277 AD 45 6E                 .En
        cmp     #$BC                            ; 827A C9 BC                    ..
        beq     BattleTurnEngine_Branch_82CF    ; 827C F0 51                    .Q
        lda     $1F                             ; 827E A5 1F                    ..
        ora     #$40                            ; 8280 09 40                    .@
        sta     $1F                             ; 8282 85 1F                    ..
        lda     #$A1                            ; 8284 A9 A1                    ..
        sta     $0300                           ; 8286 8D 00 03                 ...
        lda     #$80                            ; 8289 A9 80                    ..
        sta     $0301                           ; 828B 8D 01 03                 ...
        lda     #$40                            ; 828E A9 40                    .@
        sta     NextTextCharacter               ; 8290 8D 02 03                 ...
        lda     #$00                            ; 8293 A9 00                    ..
        ldx     #$7F                            ; 8295 A2 7F                    ..
BattleTurnEngine_Branch_8297:
        sta     $0303,x                         ; 8297 9D 03 03                 ...
        dex                                     ; 829A CA                       .
        bpl     BattleTurnEngine_Branch_8297    ; 829B 10 FA                    ..
        inc     $050B                           ; 829D EE 0B 05                 ...
        jsr     UpperFixedEngine_Entry_C62D     ; 82A0 20 2D C6                  -.
        lda     #$C0                            ; 82A3 A9 C0                    ..
        sta     NextTextCharacter               ; 82A5 8D 02 03                 ...
        inc     $050B                           ; 82A8 EE 0B 05                 ...
        jsr     UpperFixedEngine_Entry_C62D     ; 82AB 20 2D C6                  -.
        lda     #$A3                            ; 82AE A9 A3                    ..
        sta     $0300                           ; 82B0 8D 00 03                 ...
        lda     #$18                            ; 82B3 A9 18                    ..
        sta     $0301                           ; 82B5 8D 01 03                 ...
        lda     #$D0                            ; 82B8 A9 D0                    ..
        sta     NextTextCharacter               ; 82BA 8D 02 03                 ...
        inc     $050B                           ; 82BD EE 0B 05                 ...
        jsr     UpperFixedEngine_Entry_C62D     ; 82C0 20 2D C6                  -.
        lda     $1F                             ; 82C3 A5 1F                    ..
        and     #$BF                            ; 82C5 29 BF                    ).
        sta     $1F                             ; 82C7 85 1F                    ..
        jmp     BattleTurnEngine_Branch_82CF    ; 82C9 4C CF 82                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_82CC:
        jsr     BattleTurnEngine_Entry_9A40     ; 82CC 20 40 9A                  @.
BattleTurnEngine_Branch_82CF:
        jsr     BattleTurnEngine_Entry_9E7F     ; 82CF 20 7F 9E                  ..
        stx     $C6                             ; 82D2 86 C6                    ..
        jsr     BattleTurnEngine_Entry_9B8C     ; 82D4 20 8C 9B                  ..
        lda     #$00                            ; 82D7 A9 00                    ..
        ldx     $C7                             ; 82D9 A6 C7                    ..
        sta     $0690,x                         ; 82DB 9D 90 06                 ...
        sta     $0698,x                         ; 82DE 9D 98 06                 ...
        lda     #$FF                            ; 82E1 A9 FF                    ..
        sta     $06A0,x                         ; 82E3 9D A0 06                 ...
        jmp     BattleTurnEngine_Branch_9A92    ; 82E6 4C 92 9A                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_82E9:
        jsr     BattleTurnEngine_Entry_8367     ; 82E9 20 67 83                  g.
        bcc     BattleTurnEngine_Branch_8328    ; 82EC 90 3A                    .:
        ldx     #$04                            ; 82EE A2 04                    ..
BattleTurnEngine_Branch_82F0:
        txa                                     ; 82F0 8A                       .
        pha                                     ; 82F1 48                       H
        jsr     BattleTurnEngine_Entry_9653     ; 82F2 20 53 96                  S.
        ldy     #$03                            ; 82F5 A0 03                    ..
        lda     #$FF                            ; 82F7 A9 FF                    ..
        jsr     BattleTurnEngine_Entry_83B7     ; 82F9 20 B7 83                  ..
        ldx     $6E45                           ; 82FC AE 45 6E                 .En
        cpx     #$AE                            ; 82FF E0 AE                    ..
        bne     BattleTurnEngine_Branch_830F    ; 8301 D0 0C                    ..
        lda     $6E7E                           ; 8303 AD 7E 6E                 .~n
        cmp     #$07                            ; 8306 C9 07                    ..
        bne     BattleTurnEngine_Branch_830F    ; 8308 D0 05                    ..
        lda     #$30                            ; 830A A9 30                    .0
        jsr     BattleTurnEngine_Entry_83A5     ; 830C 20 A5 83                  ..
BattleTurnEngine_Branch_830F:
        jsr     UpperFixedEngine_Entry_C5B9     ; 830F 20 B9 C5                  ..
        ldx     #$03                            ; 8312 A2 03                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 8314 20 0C C9                  ..
        jsr     BattleTurnEngine_Entry_9665     ; 8317 20 65 96                  e.
        jsr     UpperFixedEngine_Entry_C5B9     ; 831A 20 B9 C5                  ..
        ldx     #$03                            ; 831D A2 03                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 831F 20 0C C9                  ..
        pla                                     ; 8322 68                       h
        tax                                     ; 8323 AA                       .
        dex                                     ; 8324 CA                       .
        bne     BattleTurnEngine_Branch_82F0    ; 8325 D0 C9                    ..
        rts                                     ; 8327 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8328:
        lda     $C7                             ; 8328 A5 C7                    ..
        pha                                     ; 832A 48                       H
        jsr     BattleTurnEngine_Entry_9ED1     ; 832B 20 D1 9E                  ..
        ldx     #$08                            ; 832E A2 08                    ..
BattleTurnEngine_Branch_8330:
        txa                                     ; 8330 8A                       .
        pha                                     ; 8331 48                       H
        and     #$01                            ; 8332 29 01                    ).
        asl     a                               ; 8334 0A                       .
        tax                                     ; 8335 AA                       .
        lda     $837B,x                         ; 8336 BD 7B 83                 .{.
        sta     $00                           ; 8339 85 00                    ..
        lda     $837C,x                         ; 833B BD 7C 83                 .|.
        sta     $01                             ; 833E 85 01                    ..
        lda     #$03                            ; 8340 A9 03                    ..
        clc                                     ; 8342 18                       .
        adc     $050C                           ; 8343 6D 0C 05                 m..
        pha                                     ; 8346 48                       H
        jsr     BattleTurnEngine_Entry_8364     ; 8347 20 64 83                  d.
        pla                                     ; 834A 68                       h
        sec                                     ; 834B 38                       8
        sbc     $050C                           ; 834C ED 0C 05                 ...
        beq     BattleTurnEngine_Branch_835B    ; 834F F0 0A                    ..
        bcc     BattleTurnEngine_Branch_835B    ; 8351 90 08                    ..
        cmp     #$03                            ; 8353 C9 03                    ..
        bcs     BattleTurnEngine_Branch_835B    ; 8355 B0 04                    ..
        tax                                     ; 8357 AA                       .
        jsr     UpperFixedEngine_Entry_C90C     ; 8358 20 0C C9                  ..
BattleTurnEngine_Branch_835B:
        pla                                     ; 835B 68                       h
        tax                                     ; 835C AA                       .
        dex                                     ; 835D CA                       .
        bne     BattleTurnEngine_Branch_8330    ; 835E D0 D0                    ..
        pla                                     ; 8360 68                       h
        sta     $C7                             ; 8361 85 C7                    ..
        rts                                     ; 8363 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8364:
        jmp     ($0000)                         ; 8364 6C 00 00                 l..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8367:
        ldx     #$80                            ; 8367 A2 80                    ..
        brk                                     ; 8369 00                       .
        db   $29,$C3,$0E                     ; 836A 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        cmp     #$01                            ; 836D C9 01                    ..
        beq     BattleTurnEngine_Branch_8373    ; 836F F0 02                    ..
BattleTurnEngine_Branch_8371:
        clc                                     ; 8371 18                       .
        rts                                     ; 8372 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8373:
        sec                                     ; 8373 38                       8
        ldx     $05FE                           ; 8374 AE FE 05                 ...
        inx                                     ; 8377 E8                       .
        bne     BattleTurnEngine_Branch_8371    ; 8378 D0 F7                    ..
        rts                                     ; 837A 60                       `
; ----------------------------------------------------------------------------
        db   $40                             ; 837B 40                       @
        db   $9A,$22,$98                     ; 837C 9A 22 98                 .".
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_837F:
        jsr     BattleTurnEngine_Entry_83A5     ; 837F 20 A5 83                  ..
        jsr     UpperFixedEngine_Entry_C5B9     ; 8382 20 B9 C5                  ..
        jsr     UpperFixedEngine_Entry_EEC6     ; 8385 20 C6 EE                  ..
        ldx     #$0E                            ; 8388 A2 0E                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 838A 20 0C C9                  ..
        jsr     UpperFixedEngine_Entry_EEC6     ; 838D 20 C6 EE                  ..
        ldx     #$0E                            ; 8390 A2 0E                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 8392 20 0C C9                  ..
        jsr     UpperFixedEngine_Entry_EEC6     ; 8395 20 C6 EE                  ..
        ldx     #$0E                            ; 8398 A2 0E                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 839A 20 0C C9                  ..
        jsr     UpperFixedEngine_Entry_EEC6     ; 839D 20 C6 EE                  ..
        ldx     #$0E                            ; 83A0 A2 0E                    ..
        jmp     UpperFixedEngine_Entry_C90C     ; 83A2 4C 0C C9                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_83A5:
        jsr     BattleTurnEngine_Entry_83B7     ; 83A5 20 B7 83                  ..
        lda     #$FF                            ; 83A8 A9 FF                    ..
        sta     $0606                           ; 83AA 8D 06 06                 ...
        sta     $060A                           ; 83AD 8D 0A 06                 ...
        sta     $060D                           ; 83B0 8D 0D 06                 ...
        sta     $060F                           ; 83B3 8D 0F 06                 ...
        rts                                     ; 83B6 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_83B7:
        ldy     #$03                            ; 83B7 A0 03                    ..
BattleTurnEngine_Branch_83B9:
        sta     $05FC,y                         ; 83B9 99 FC 05                 ...
        iny                                     ; 83BC C8                       .
        cpy     #$1A                            ; 83BD C0 1A                    ..
        bcc     BattleTurnEngine_Branch_83B9    ; 83BF 90 F8                    ..
        rts                                     ; 83C1 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_83C2:
        jsr     WaitForNmi                      ; 83C2 20 74 FF                  t.
        lda     #$02                            ; 83C5 A9 02                    ..
        sta     $D6                             ; 83C7 85 D6                    ..
        ldy     #$00                            ; 83C9 A0 00                    ..
BattleTurnEngine_Branch_83CB:
        sty     $D7                             ; 83CB 84 D7                    ..
        tya                                     ; 83CD 98                       .
        ldy     #$01                            ; 83CE A0 01                    ..
        and     #$02                            ; 83D0 29 02                    ).
        beq     BattleTurnEngine_Branch_83D7    ; 83D2 F0 03                    ..
        lda     #$03                            ; 83D4 A9 03                    ..
        dey                                     ; 83D6 88                       .
BattleTurnEngine_Branch_83D7:
        tax                                     ; 83D7 AA                       .
        lda     $0508,y                         ; 83D8 B9 08 05                 ...
        clc                                     ; 83DB 18                       .
        adc     $D6                             ; 83DC 65 D6                    e.
        sta     $0508,y                         ; 83DE 99 08 05                 ...
        ldy     #$3F                            ; 83E1 A0 3F                    .?
BattleTurnEngine_Branch_83E3:
        txa                                     ; 83E3 8A                       .
        pha                                     ; 83E4 48                       H
        ldx     #$00                            ; 83E5 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C770     ; 83E7 20 70 C7                  p.
        pla                                     ; 83EA 68                       h
        tax                                     ; 83EB AA                       .
        lda     $00,x                         ; 83EC B5 00                    ..
        sec                                     ; 83EE 38                       8
        sbc     $D6                             ; 83EF E5 D6                    ..
        sta     $00,x                         ; 83F1 95 00                    ..
        txa                                     ; 83F3 8A                       .
        pha                                     ; 83F4 48                       H
        ldx     #$00                            ; 83F5 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 83F7 20 3E C7                  >.
        pla                                     ; 83FA 68                       h
        tax                                     ; 83FB AA                       .
        dey                                     ; 83FC 88                       .
        bpl     BattleTurnEngine_Branch_83E3    ; 83FD 10 E4                    ..
        ldx     #$02                            ; 83FF A2 02                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 8401 20 0C C9                  ..
        lda     $D6                             ; 8404 A5 D6                    ..
        eor     #$FF                            ; 8406 49 FF                    I.
        sta     $D6                             ; 8408 85 D6                    ..
        inc     $D6                             ; 840A E6 D6                    ..
        ldy     $D7                             ; 840C A4 D7                    ..
        iny                                     ; 840E C8                       .
        cpy     #$0C                            ; 840F C0 0C                    ..
        bne     BattleTurnEngine_Branch_83CB    ; 8411 D0 B8                    ..
        rts                                     ; 8413 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8414:
        ldx     #$03                            ; 8414 A2 03                    ..
        stx     $D6                             ; 8416 86 D6                    ..
        ldx     #$05                            ; 8418 A2 05                    ..
        bne     BattleTurnEngine_Branch_8422    ; 841A D0 06                    ..
BattleTurnEngine_Entry_841C:
        ldx     #$01                            ; 841C A2 01                    ..
        stx     $D6                             ; 841E 86 D6                    ..
        ldx     #$08                            ; 8420 A2 08                    ..
BattleTurnEngine_Branch_8422:
        lda     #$98                            ; 8422 A9 98                    ..
        sta     PPUMASK                         ; 8424 8D 01 20                 ..
BattleTurnEngine_Branch_8427:
        txa                                     ; 8427 8A                       .
        pha                                     ; 8428 48                       H
        jsr     BattleTurnEngine_Entry_9653     ; 8429 20 53 96                  S.
        tya                                     ; 842C 98                       .
        pha                                     ; 842D 48                       H
BattleTurnEngine_Branch_842E:
        sta     $05FB,x                         ; 842E 9D FB 05                 ...
        dex                                     ; 8431 CA                       .
        bne     BattleTurnEngine_Branch_842E    ; 8432 D0 FA                    ..
        jsr     UpperFixedEngine_Entry_C5B9     ; 8434 20 B9 C5                  ..
        ldx     $D6                             ; 8437 A6 D6                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 8439 20 0C C9                  ..
        jsr     BattleTurnEngine_Entry_9665     ; 843C 20 65 96                  e.
        jsr     UpperFixedEngine_Entry_C5B9     ; 843F 20 B9 C5                  ..
        ldx     $D6                             ; 8442 A6 D6                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 8444 20 0C C9                  ..
        pla                                     ; 8447 68                       h
        tay                                     ; 8448 A8                       .
        pla                                     ; 8449 68                       h
        tax                                     ; 844A AA                       .
        dex                                     ; 844B CA                       .
        bne     BattleTurnEngine_Branch_8427    ; 844C D0 D9                    ..
        lda     #$18                            ; 844E A9 18                    ..
        sta     PPUMASK                         ; 8450 8D 01 20                 ..
        rts                                     ; 8453 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8454:
        brk                                     ; 8454 00                       .
        db   $A6,$FB                         ; 8455 A6 FB                    ..
; ----------------------------------------------------------------------------
        lda     #$06                            ; 8457 A9 06                    ..
        sta     $03                             ; 8459 85 03                    ..
        lda     #$06                            ; 845B A9 06                    ..
        jsr     BattleTurnEngine_Entry_8480     ; 845D 20 80 84                  ..
        brk                                     ; 8460 00                       .
        db   $A7,$FB                         ; 8461 A7 FB                    ..
; ----------------------------------------------------------------------------
        lda     #$09                            ; 8463 A9 09                    ..
        sta     $03                             ; 8465 85 03                    ..
        lda     #$02                            ; 8467 A9 02                    ..
        jsr     BattleTurnEngine_Entry_8480     ; 8469 20 80 84                  ..
        lda     #$0B                            ; 846C A9 0B                    ..
        sta     $03                             ; 846E 85 03                    ..
        lda     #$00                            ; 8470 A9 00                    ..
        sta     $01                             ; 8472 85 01                    ..
BattleTurnEngine_Branch_8474:
        jsr     BattleTurnEngine_Entry_8496     ; 8474 20 96 84                  ..
        inc     $01                             ; 8477 E6 01                    ..
        lda     $01                             ; 8479 A5 01                    ..
        cmp     #$03                            ; 847B C9 03                    ..
        bcc     BattleTurnEngine_Branch_8474    ; 847D 90 F5                    ..
        rts                                     ; 847F 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8480:
        sta     $00                           ; 8480 85 00                    ..
BattleTurnEngine_Branch_8482:
        lda     #$00                            ; 8482 A9 00                    ..
        sta     $01                             ; 8484 85 01                    ..
BattleTurnEngine_Branch_8486:
        jsr     BattleTurnEngine_Entry_8496     ; 8486 20 96 84                  ..
        inc     $01                             ; 8489 E6 01                    ..
        lda     $01                             ; 848B A5 01                    ..
        cmp     #$04                            ; 848D C9 04                    ..
        bcc     BattleTurnEngine_Branch_8486    ; 848F 90 F5                    ..
        dec     $00                           ; 8491 C6 00                    ..
        bne     BattleTurnEngine_Branch_8482    ; 8493 D0 ED                    ..
        rts                                     ; 8495 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8496:
        ldx     $01                             ; 8496 A6 01                    ..
        lda     $84C0,x                         ; 8498 BD C0 84                 ...
        sta     $02                             ; 849B 85 02                    ..
        asl     a                               ; 849D 0A                       .
        asl     a                               ; 849E 0A                       .
        asl     a                               ; 849F 0A                       .
        clc                                     ; 84A0 18                       .
        adc     $02                             ; 84A1 65 02                    e.
        tax                                     ; 84A3 AA                       .
        ldy     #$00                            ; 84A4 A0 00                    ..
BattleTurnEngine_Branch_84A6:
        lda     $84C4,x                         ; 84A6 BD C4 84                 ...
        sta     $0600,y                         ; 84A9 99 00 06                 ...
        inx                                     ; 84AC E8                       .
        iny                                     ; 84AD C8                       .
        cpy     #$03                            ; 84AE C0 03                    ..
        bne     BattleTurnEngine_Branch_84B4    ; 84B0 D0 02                    ..
        ldy     #$09                            ; 84B2 A0 09                    ..
BattleTurnEngine_Branch_84B4:
        cpy     #$0F                            ; 84B4 C0 0F                    ..
        bcc     BattleTurnEngine_Branch_84A6    ; 84B6 90 EE                    ..
        jsr     UpperFixedEngine_Entry_C5B9     ; 84B8 20 B9 C5                  ..
        ldx     $03                             ; 84BB A6 03                    ..
        jmp     UpperFixedEngine_Entry_C90C     ; 84BD 4C 0C C9                 L..
; ----------------------------------------------------------------------------
        db   $00,$01,$02,$01                 ; 84C0 00 01 02 01              ....
        db   $10,$00,$37,$2B,$13,$23,$30,$25 ; 84C4 10 00 37 2B 13 23 30 25  ..7+.#0%
        db   $14,$31,$32,$3A,$28,$17,$27,$30 ; 84CC 14 31 32 3A 28 17 27 30  .12:(.'0
        db   $28,$18,$20,$10,$35,$32,$29,$39 ; 84D4 28 18 20 10 35 32 29 39  (. .52)9
        db   $36,$30,$15                     ; 84DC 36 30 15                 60.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_84DF:
        lda     $C7                             ; 84DF A5 C7                    ..
        pha                                     ; 84E1 48                       H
        jsr     BattleTurnEngine_Entry_9ED1     ; 84E2 20 D1 9E                  ..
        bcs     BattleTurnEngine_Branch_852A    ; 84E5 B0 43                    .C
        jsr     BattleTurnEngine_Entry_9E5E     ; 84E7 20 5E 9E                  ^.
        bcc     BattleTurnEngine_Branch_852A    ; 84EA 90 3E                    .>
        lda     $C4                             ; 84EC A5 C4                    ..
        pha                                     ; 84EE 48                       H
        jsr     BattleTurnEngine_Entry_9F0C     ; 84EF 20 0C 9F                  ..
        lda     $C4                             ; 84F2 A5 C4                    ..
        cmp     #$7E                            ; 84F4 C9 7E                    .~
        beq     BattleTurnEngine_Branch_8501    ; 84F6 F0 09                    ..
        jsr     BattleTurnEngine_Entry_9E42     ; 84F8 20 42 9E                  B.
        bcs     BattleTurnEngine_Branch_8515    ; 84FB B0 18                    ..
        lda     $C4                             ; 84FD A5 C4                    ..
        beq     BattleTurnEngine_Branch_8506    ; 84FF F0 05                    ..
BattleTurnEngine_Branch_8501:
        jsr     BattleTurnEngine_Entry_9E1C     ; 8501 20 1C 9E                  ..
        bcc     BattleTurnEngine_Branch_8527    ; 8504 90 21                    .!
BattleTurnEngine_Branch_8506:
        jsr     BattleTurnEngine_Entry_9E34     ; 8506 20 34 9E                  4.
        bcc     BattleTurnEngine_Branch_8527    ; 8509 90 1C                    ..
        jsr     BattleTurnEngine_Entry_93F2     ; 850B 20 F2 93                  ..
        bcc     BattleTurnEngine_Branch_8527    ; 850E 90 17                    ..
        jsr     BattleTurnEngine_Entry_9439     ; 8510 20 39 94                  9.
        bcc     BattleTurnEngine_Branch_8527    ; 8513 90 12                    ..
BattleTurnEngine_Branch_8515:
        jsr     BattleTurnEngine_Entry_9320     ; 8515 20 20 93                   .
        lda     #$01                            ; 8518 A9 01                    ..
        sta     $C5                             ; 851A 85 C5                    ..
        jsr     BattleTurnEngine_Entry_9BE4     ; 851C 20 E4 9B                  ..
        jsr     BattleTurnEngine_Entry_9ADD     ; 851F 20 DD 9A                  ..
        bcc     BattleTurnEngine_Branch_8527    ; 8522 90 03                    ..
        jsr     BattleTurnEngine_Entry_9CBA     ; 8524 20 BA 9C                  ..
BattleTurnEngine_Branch_8527:
        pla                                     ; 8527 68                       h
        sta     $C4                             ; 8528 85 C4                    ..
BattleTurnEngine_Branch_852A:
        pla                                     ; 852A 68                       h
        sta     $C7                             ; 852B 85 C7                    ..
        rts                                     ; 852D 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_852E:
        lda     $C7                             ; 852E A5 C7                    ..
        pha                                     ; 8530 48                       H
        jsr     BattleTurnEngine_Entry_9E8F     ; 8531 20 8F 9E                  ..
        bcc     BattleTurnEngine_Branch_857F    ; 8534 90 49                    .I
        jsr     BattleTurnEngine_Entry_9ED1     ; 8536 20 D1 9E                  ..
        lda     $C4                             ; 8539 A5 C4                    ..
        pha                                     ; 853B 48                       H
        jsr     BattleTurnEngine_Entry_9F0C     ; 853C 20 0C 9F                  ..
        lda     $C4                             ; 853F A5 C4                    ..
        cmp     #$7E                            ; 8541 C9 7E                    .~
        beq     BattleTurnEngine_Branch_854A    ; 8543 F0 05                    ..
        jsr     BattleTurnEngine_Entry_9E42     ; 8545 20 42 9E                  B.
        bcs     BattleTurnEngine_Branch_8568    ; 8548 B0 1E                    ..
BattleTurnEngine_Branch_854A:
        ldx     $C6                             ; 854A A6 C6                    ..
        lda     $C4                             ; 854C A5 C4                    ..
        sta     $0440,x                         ; 854E 9D 40 04                 .@.
        lda     $D2                             ; 8551 A5 D2                    ..
        sta     $7385,x                         ; 8553 9D 85 73                 ..s
        lda     $D3                             ; 8556 A5 D3                    ..
        sta     $7392,x                         ; 8558 9D 92 73                 ..s
        jsr     BattleTurnEngine_Entry_946E     ; 855B 20 6E 94                  n.
        bcc     BattleTurnEngine_Branch_8572    ; 855E 90 12                    ..
        jsr     BattleTurnEngine_Entry_9496     ; 8560 20 96 94                  ..
        bcc     BattleTurnEngine_Branch_8572    ; 8563 90 0D                    ..
        jsr     UpperFixedEngine_Entry_C5B9     ; 8565 20 B9 C5                  ..
BattleTurnEngine_Branch_8568:
        jsr     BattleTurnEngine_Entry_9CBA     ; 8568 20 BA 9C                  ..
        bcc     BattleTurnEngine_Branch_8572    ; 856B 90 05                    ..
        jsr     BattleTurnEngine_Entry_8583     ; 856D 20 83 85                  ..
        bcs     BattleTurnEngine_Branch_857C    ; 8570 B0 0A                    ..
BattleTurnEngine_Branch_8572:
        ldx     $C7                             ; 8572 A6 C7                    ..
        lda     #$00                            ; 8574 A9 00                    ..
        sta     $0690,x                         ; 8576 9D 90 06                 ...
        sta     $0698,x                         ; 8579 9D 98 06                 ...
BattleTurnEngine_Branch_857C:
        pla                                     ; 857C 68                       h
        sta     $C4                             ; 857D 85 C4                    ..
BattleTurnEngine_Branch_857F:
        pla                                     ; 857F 68                       h
        sta     $C7                             ; 8580 85 C7                    ..
        rts                                     ; 8582 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8583:
        ldx     $C7                             ; 8583 A6 C7                    ..
        sta     $0698,x                         ; 8585 9D 98 06                 ...
        ldy     $C6                             ; 8588 A4 C6                    ..
        lda     $D2                             ; 858A A5 D2                    ..
        sta     $7385,y                         ; 858C 99 85 73                 ..s
        lda     $D3                             ; 858F A5 D3                    ..
        sta     $7392,y                         ; 8591 99 92 73                 ..s
        beq     BattleTurnEngine_Branch_859B    ; 8594 F0 05                    ..
        lda     $C9                             ; 8596 A5 C9                    ..
        jmp     BattleTurnEngine_Branch_859D    ; 8598 4C 9D 85                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_859B:
        lda     #$FF                            ; 859B A9 FF                    ..
BattleTurnEngine_Branch_859D:
        sta     $06A0,x                         ; 859D 9D A0 06                 ...
        jsr     BattleTurnEngine_Entry_9DCC     ; 85A0 20 CC 9D                  ..
        ldx     $C7                             ; 85A3 A6 C7                    ..
        sta     $0690,x                         ; 85A5 9D 90 06                 ...
        jmp     BattleTurnEngine_Entry_9822     ; 85A8 4C 22 98                 L".
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_85AB:
        lda     #$1E                            ; 85AB A9 1E                    ..
        sta     $6E59                           ; 85AD 8D 59 6E                 .Yn
        ldx     #$00                            ; 85B0 A2 00                    ..
        stx     $C8                             ; 85B2 86 C8                    ..
BattleTurnEngine_Branch_85B4:
        lda     $044C,x                         ; 85B4 BD 4C 04                 .L.
        cmp     #$FF                            ; 85B7 C9 FF                    ..
        beq     BattleTurnEngine_Branch_8606    ; 85B9 F0 4B                    .K
        cmp     #$7E                            ; 85BB C9 7E                    .~
        bne     BattleTurnEngine_Branch_85CF    ; 85BD D0 10                    ..
        lda     $1F                             ; 85BF A5 1F                    ..
        and     #$7F                            ; 85C1 29 7F                    ).
        sta     $1F                             ; 85C3 85 1F                    ..
        jsr     BattleTurnEngine_Entry_8625     ; 85C5 20 25 86                  %.
        lda     $1F                             ; 85C8 A5 1F                    ..
        ora     #$80                            ; 85CA 09 80                    ..
        sta     $1F                             ; 85CC 85 1F                    ..
        rts                                     ; 85CE 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_85CF:
        jsr     BattleTurnEngine_Entry_9F1A     ; 85CF 20 1A 9F                  ..
        brk                                     ; 85D2 00                       .
        db   $25,$0F                         ; 85D3 25 0F                    %.
; ----------------------------------------------------------------------------
        lda     #$00                            ; 85D5 A9 00                    ..
        sta     $01                             ; 85D7 85 01                    ..
BattleTurnEngine_Branch_85D9:
        lda     $01                             ; 85D9 A5 01                    ..
        clc                                     ; 85DB 18                       .
        adc     #$09                            ; 85DC 69 09                    i.
        tay                                     ; 85DE A8                       .
        lda     #$18                            ; 85DF A9 18                    ..
        ldx     #$02                            ; 85E1 A2 02                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; 85E3 20 EA C3                  ..
        and     #$7F                            ; 85E6 29 7F                    ).
        sec                                     ; 85E8 38                       8
        sbc     #$4B                            ; 85E9 E9 4B                    .K
        bcc     BattleTurnEngine_Branch_85F5    ; 85EB 90 08                    ..
        cmp     #$0B                            ; 85ED C9 0B                    ..
        bcs     BattleTurnEngine_Branch_85F5    ; 85EF B0 04                    ..
        tax                                     ; 85F1 AA                       .
        jsr     BattleTurnEngine_Entry_860A     ; 85F2 20 0A 86                  ..
BattleTurnEngine_Branch_85F5:
        inc     $01                             ; 85F5 E6 01                    ..
        lda     $01                             ; 85F7 A5 01                    ..
        cmp     #$06                            ; 85F9 C9 06                    ..
        bne     BattleTurnEngine_Branch_85D9    ; 85FB D0 DC                    ..
        inc     $C8                             ; 85FD E6 C8                    ..
        ldx     $C8                             ; 85FF A6 C8                    ..
        cpx     #$0E                            ; 8601 E0 0E                    ..
        bne     BattleTurnEngine_Branch_85B4    ; 8603 D0 AF                    ..
        rts                                     ; 8605 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8606:
        lda     #$31                            ; 8606 A9 31                    .1
        bne     BattleTurnEngine_Branch_860D    ; 8608 D0 03                    ..
BattleTurnEngine_Entry_860A:
        lda     $8646,x                         ; 860A BD 46 86                 .F.
BattleTurnEngine_Branch_860D:
        sta     $C4                             ; 860D 85 C4                    ..
        lda     $02                             ; 860F A5 02                    ..
        pha                                     ; 8611 48                       H
        lda     $03                             ; 8612 A5 03                    ..
        pha                                     ; 8614 48                       H
        lda     $C8                             ; 8615 A5 C8                    ..
        pha                                     ; 8617 48                       H
        jsr     BattleTurnEngine_Entry_969C     ; 8618 20 9C 96                  ..
        pla                                     ; 861B 68                       h
        sta     $C8                             ; 861C 85 C8                    ..
        pla                                     ; 861E 68                       h
        sta     $03                             ; 861F 85 03                    ..
        pla                                     ; 8621 68                       h
        sta     $02                             ; 8622 85 02                    ..
        rts                                     ; 8624 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8625:
        lda     $8651                           ; 8625 AD 51 86                 .Q.
        sta     $C0                             ; 8628 85 C0                    ..
        lda     $8652                           ; 862A AD 52 86                 .R.
        sta     $C1                             ; 862D 85 C1                    ..
        lda     #$80                            ; 862F A9 80                    ..
        sta     $16                             ; 8631 85 16                    ..
        lda     #$40                            ; 8633 A9 40                    .@
        sta     $17                             ; 8635 85 17                    ..
        lda     #$82                            ; 8637 A9 82                    ..
        sta     $18                             ; 8639 85 18                    ..
        lda     #$A0                            ; 863B A9 A0                    ..
        sta     $19                             ; 863D 85 19                    ..
        jmp     BattleTurnEngine_Branch_8CD5    ; 863F 4C D5 8C                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8642:
        lda     $8646,y                         ; 8642 B9 46 86                 .F.
        rts                                     ; 8645 60                       `
; ----------------------------------------------------------------------------
        db   $0F,$2D,$52,$3B,$37,$29,$4E,$41 ; 8646 0F 2D 52 3B 37 29 4E 41  .-R;7)NA
        db   $56,$53,$70                     ; 864E 56 53 70                 VSp
        db   $91                             ; 8651 91                       .
        db   $A1                             ; 8652 A1                       .
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8653:
        lda     #$00                            ; 8653 A9 00                    ..
        sta     $D6                             ; 8655 85 D6                    ..
        sta     $D8                             ; 8657 85 D8                    ..
        lda     #$4D                            ; 8659 A9 4D                    .M
        sta     $C4                             ; 865B 85 C4                    ..
        jsr     BattleTurnEngine_Entry_9593     ; 865D 20 93 95                  ..
        jsr     BattleTurnEngine_Entry_93F2     ; 8660 20 F2 93                  ..
        bcs     BattleTurnEngine_Branch_8666    ; 8663 B0 01                    ..
        rts                                     ; 8665 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8666:
        jmp     BattleTurnEngine_Entry_9E34     ; 8666 4C 34 9E                 L4.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8669:
        jsr     BattleTurnEngine_Entry_946E     ; 8669 20 6E 94                  n.
        jsr     UpperFixedEngine_Entry_C5B9     ; 866C 20 B9 C5                  ..
        ldx     $C6                             ; 866F A6 C6                    ..
        lda     #$4D                            ; 8671 A9 4D                    .M
        sta     $0440,x                         ; 8673 9D 40 04                 .@.
        lda     #$00                            ; 8676 A9 00                    ..
        sta     $7392,x                         ; 8678 9D 92 73                 ..s
        lda     #$02                            ; 867B A9 02                    ..
        sta     $7385,x                         ; 867D 9D 85 73                 ..s
        txa                                     ; 8680 8A                       .
        asl     a                               ; 8681 0A                       .
        asl     a                               ; 8682 0A                       .
        asl     a                               ; 8683 0A                       .
        ora     #$80                            ; 8684 09 80                    ..
        sta     $C5                             ; 8686 85 C5                    ..
        ldx     #$00                            ; 8688 A2 00                    ..
        stx     $C7                             ; 868A 86 C7                    ..
BattleTurnEngine_Branch_868C:
        lda     $0690,x                         ; 868C BD 90 06                 ...
        bpl     BattleTurnEngine_Branch_86BB    ; 868F 10 2A                    .*
        jsr     BattleTurnEngine_Entry_9E7F     ; 8691 20 7F 9E                  ..
        lda     $7385,x                         ; 8694 BD 85 73                 ..s
        lsr     a                               ; 8697 4A                       J
        sta     $D2                             ; 8698 85 D2                    ..
        ldy     $C7                             ; 869A A4 C7                    ..
        lda     $0698,y                         ; 869C B9 98 06                 ...
        sta     $0478                           ; 869F 8D 78 04                 .x.
        clc                                     ; 86A2 18                       .
        adc     $D2                             ; 86A3 65 D2                    e.
        sta     $0477                           ; 86A5 8D 77 04                 .w.
        dec     $0477                           ; 86A8 CE 77 04                 .w.
        ldx     #$07                            ; 86AB A2 07                    ..
BattleTurnEngine_Branch_86AD:
        jsr     BattleTurnEngine_Entry_86C5     ; 86AD 20 C5 86                  ..
        dex                                     ; 86B0 CA                       .
        bne     BattleTurnEngine_Branch_86AD    ; 86B1 D0 FA                    ..
        ldx     $C7                             ; 86B3 A6 C7                    ..
        ldy     $0690,x                         ; 86B5 BC 90 06                 ...
        iny                                     ; 86B8 C8                       .
        sty     $C5                             ; 86B9 84 C5                    ..
BattleTurnEngine_Branch_86BB:
        inc     $C7                             ; 86BB E6 C7                    ..
        ldx     $C7                             ; 86BD A6 C7                    ..
        cpx     #$08                            ; 86BF E0 08                    ..
        bne     BattleTurnEngine_Branch_868C    ; 86C1 D0 C9                    ..
        sec                                     ; 86C3 38                       8
        rts                                     ; 86C4 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_86C5:
        txa                                     ; 86C5 8A                       .
        pha                                     ; 86C6 48                       H
        jsr     BattleTurnEngine_Entry_9A40     ; 86C7 20 40 9A                  @.
        ldy     $C5                             ; 86CA A4 C5                    ..
        ldx     $C7                             ; 86CC A6 C7                    ..
        lda     $0690,x                         ; 86CE BD 90 06                 ...
        sta     $C5                             ; 86D1 85 C5                    ..
        tya                                     ; 86D3 98                       .
        sta     $0690,x                         ; 86D4 9D 90 06                 ...
        lda     $0477                           ; 86D7 AD 77 04                 .w.
        tay                                     ; 86DA A8                       .
        sta     $0698,x                         ; 86DB 9D 98 06                 ...
        lda     $0478                           ; 86DE AD 78 04                 .x.
        sta     $0477                           ; 86E1 8D 77 04                 .w.
        sty     $0478                           ; 86E4 8C 78 04                 .x.
        jsr     BattleTurnEngine_Entry_9822     ; 86E7 20 22 98                  ".
        pla                                     ; 86EA 68                       h
        tax                                     ; 86EB AA                       .
        rts                                     ; 86EC 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_86ED:
        lda     $C7                             ; 86ED A5 C7                    ..
        pha                                     ; 86EF 48                       H
        jsr     BattleTurnEngine_Entry_8737     ; 86F0 20 37 87                  7.
        bcs     BattleTurnEngine_Branch_86F7    ; 86F3 B0 02                    ..
        pla                                     ; 86F5 68                       h
        rts                                     ; 86F6 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_86F7:
        bne     BattleTurnEngine_Branch_8704    ; 86F7 D0 0B                    ..
        jsr     BattleTurnEngine_Entry_877A     ; 86F9 20 7A 87                  z.
        lda     #$04                            ; 86FC A9 04                    ..
        jsr     BattleTurnEngine_Entry_877A     ; 86FE 20 7A 87                  z.
        jsr     UpperFixedEngine_Entry_C5B9     ; 8701 20 B9 C5                  ..
BattleTurnEngine_Branch_8704:
        jsr     BattleTurnEngine_Entry_9DCC     ; 8704 20 CC 9D                  ..
        sta     $C5                             ; 8707 85 C5                    ..
        pla                                     ; 8709 68                       h
        sta     $C7                             ; 870A 85 C7                    ..
        jsr     BattleTurnEngine_Entry_9ED1     ; 870C 20 D1 9E                  ..
        jsr     BattleTurnEngine_Entry_9E7F     ; 870F 20 7F 9E                  ..
        ldy     $C6                             ; 8712 A4 C6                    ..
        lda     $7385,x                         ; 8714 BD 85 73                 ..s
        sta     $7385,y                         ; 8717 99 85 73                 ..s
        lda     $0440,x                         ; 871A BD 40 04                 .@.
        sta     $0440,y                         ; 871D 99 40 04                 .@.
        lda     $7392,x                         ; 8720 BD 92 73                 ..s
        sta     $7392,y                         ; 8723 99 92 73                 ..s
        sty     $C6                             ; 8726 84 C6                    ..
        lda     #$00                            ; 8728 A9 00                    ..
        ldx     $C7                             ; 872A A6 C7                    ..
        sta     $0690,x                         ; 872C 9D 90 06                 ...
        jsr     BattleTurnEngine_Entry_93D2     ; 872F 20 D2 93                  ..
        jsr     BattleTurnEngine_Entry_9822     ; 8732 20 22 98                  ".
        sec                                     ; 8735 38                       8
        rts                                     ; 8736 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8737:
        ldx     $C7                             ; 8737 A6 C7                    ..
        brk                                     ; 8739 00                       .
        db   $2D,$B3                         ; 873A 2D B3                    -.
; ----------------------------------------------------------------------------
        tay                                     ; 873C A8                       .
        lda     $6E45,y                         ; 873D B9 45 6E                 .En
        sta     $6F                             ; 8740 85 6F                    .o
        ldx     #$07                            ; 8742 A2 07                    ..
BattleTurnEngine_Branch_8744:
        brk                                     ; 8744 00                       .
        db   $29,$C3,$10                     ; 8745 29 C3 10                 )..
; ----------------------------------------------------------------------------
        bcc     BattleTurnEngine_Branch_8763    ; 8748 90 19                    ..
        brk                                     ; 874A 00                       .
        db   $2D,$B3                         ; 874B 2D B3                    -.
; ----------------------------------------------------------------------------
        tay                                     ; 874D A8                       .
        lda     $6E45,y                         ; 874E B9 45 6E                 .En
        cmp     $6F                             ; 8751 C5 6F                    .o
        bne     BattleTurnEngine_Branch_8763    ; 8753 D0 0E                    ..
        stx     $C7                             ; 8755 86 C7                    ..
        jsr     BattleTurnEngine_Entry_9ED1     ; 8757 20 D1 9E                  ..
        jsr     BattleTurnEngine_Entry_9E7F     ; 875A 20 7F 9E                  ..
        stx     $C6                             ; 875D 86 C6                    ..
        lda     #$01                            ; 875F A9 01                    ..
        sec                                     ; 8761 38                       8
        rts                                     ; 8762 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8763:
        dex                                     ; 8763 CA                       .
        bpl     BattleTurnEngine_Branch_8744    ; 8764 10 DE                    ..
        jsr     BattleTurnEngine_Entry_9E34     ; 8766 20 34 9E                  4.
        bcc     BattleTurnEngine_Branch_8777    ; 8769 90 0C                    ..
        lda     #$00                            ; 876B A9 00                    ..
        jsr     BattleTurnEngine_Entry_8784     ; 876D 20 84 87                  ..
        bcc     BattleTurnEngine_Branch_8777    ; 8770 90 05                    ..
        lda     #$04                            ; 8772 A9 04                    ..
        jsr     BattleTurnEngine_Entry_8784     ; 8774 20 84 87                  ..
BattleTurnEngine_Branch_8777:
        lda     #$00                            ; 8777 A9 00                    ..
        rts                                     ; 8779 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_877A:
        jsr     BattleTurnEngine_Entry_8784     ; 877A 20 84 87                  ..
        lda     #$00                            ; 877D A9 00                    ..
        sta     $D6                             ; 877F 85 D6                    ..
        jmp     BattleTurnEngine_Entry_952F     ; 8781 4C 2F 95                 L/.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8784:
        jsr     BattleTurnEngine_Entry_878F     ; 8784 20 8F 87                  ..
        jsr     BattleTurnEngine_Entry_94C5     ; 8787 20 C5 94                  ..
        bcs     BattleTurnEngine_Branch_87B0    ; 878A B0 24                    .$
        jmp     BattleTurnEngine_Entry_94EF     ; 878C 4C EF 94                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_878F:
        sta     $D8                             ; 878F 85 D8                    ..
        lda     $C4                             ; 8791 A5 C4                    ..
        sta     $00                           ; 8793 85 00                    ..
        asl     a                               ; 8795 0A                       .
        clc                                     ; 8796 18                       .
        adc     $00                           ; 8797 65 00                    e.
        asl     a                               ; 8799 0A                       .
        ldy     $D8                             ; 879A A4 D8                    ..
        beq     BattleTurnEngine_Branch_87A1    ; 879C F0 03                    ..
        clc                                     ; 879E 18                       .
        adc     #$03                            ; 879F 69 03                    i.
BattleTurnEngine_Branch_87A1:
        tax                                     ; 87A1 AA                       .
        ldy     #$00                            ; 87A2 A0 00                    ..
BattleTurnEngine_Branch_87A4:
        lda     $87B1,x                         ; 87A4 BD B1 87                 ...
        sta     $0477,y                         ; 87A7 99 77 04                 .w.
        inx                                     ; 87AA E8                       .
        iny                                     ; 87AB C8                       .
        cpy     #$03                            ; 87AC C0 03                    ..
        bcc     BattleTurnEngine_Branch_87A4    ; 87AE 90 F4                    ..
BattleTurnEngine_Branch_87B0:
        rts                                     ; 87B0 60                       `
; ----------------------------------------------------------------------------
        db   $26,$2C,$1C,$10,$00,$0F,$3C,$2C ; 87B1 26 2C 1C 10 00 0F 3C 2C  &,....<,
        db   $15,$22,$0F,$0F,$14,$17,$10,$30 ; 87B9 15 22 0F 0F 14 17 10 30  .".....0
        db   $11,$05,$00,$00,$00,$00,$00,$00 ; 87C1 11 05 00 00 00 00 00 00  ........
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_87C9:
        jsr     BattleTurnEngine_Entry_9ED1     ; 87C9 20 D1 9E                  ..
        jsr     BattleTurnEngine_Entry_9E7F     ; 87CC 20 7F 9E                  ..
        stx     $C6                             ; 87CF 86 C6                    ..
        jsr     BattleTurnEngine_Entry_89F0     ; 87D1 20 F0 89                  ..
        bcc     BattleTurnEngine_Branch_87D9    ; 87D4 90 03                    ..
        jmp     BattleTurnEngine_Branch_885A    ; 87D6 4C 5A 88                 LZ.
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_87D9:
        jsr     BattleTurnEngine_Entry_89DD     ; 87D9 20 DD 89                  ..
        lda     $C4                             ; 87DC A5 C4                    ..
        jsr     BattleTurnEngine_Entry_BD00     ; 87DE 20 00 BD                  ..
        lda     #$00                            ; 87E1 A9 00                    ..
        sta     $00                           ; 87E3 85 00                    ..
BattleTurnEngine_Branch_87E5:
        lda     #$00                            ; 87E5 A9 00                    ..
        sta     NextTextCharacter               ; 87E7 8D 02 03                 ...
        lda     $00                           ; 87EA A5 00                    ..
        lsr     a                               ; 87EC 4A                       J
        lsr     a                               ; 87ED 4A                       J
        ldx     $C8                             ; 87EE A6 C8                    ..
        clc                                     ; 87F0 18                       .
        adc     $0468,x                         ; 87F1 7D 68 04                 }h.
        ldy     #$04                            ; 87F4 A0 04                    ..
BattleTurnEngine_Branch_87F6:
        lsr     a                               ; 87F6 4A                       J
        ror     NextTextCharacter               ; 87F7 6E 02 03                 n..
        dey                                     ; 87FA 88                       .
        bne     BattleTurnEngine_Branch_87F6    ; 87FB D0 F9                    ..
        ora     #$90                            ; 87FD 09 90                    ..
        sta     $0300                           ; 87FF 8D 00 03                 ...
        lda     #$40                            ; 8802 A9 40                    .@
        sta     $0301                           ; 8804 8D 01 03                 ...
        lda     #$01                            ; 8807 A9 01                    ..
        sta     $050B                           ; 8809 8D 0B 05                 ...
BattleTurnEngine_Branch_880C:
        lda     $00                           ; 880C A5 00                    ..
        pha                                     ; 880E 48                       H
        asl     a                               ; 880F 0A                       .
        pha                                     ; 8810 48                       H
        asl     a                               ; 8811 0A                       .
        asl     a                               ; 8812 0A                       .
        and     #$20                            ; 8813 29 20                    )
        sta     $01                             ; 8815 85 01                    ..
        pla                                     ; 8817 68                       h
        and     #$06                            ; 8818 29 06                    ).
        ora     $01                             ; 881A 05 01                    ..
        sta     $01                             ; 881C 85 01                    ..
        pla                                     ; 881E 68                       h
        and     #$08                            ; 881F 29 08                    ).
        ora     $01                             ; 8821 05 01                    ..
        tax                                     ; 8823 AA                       .
        ldy     $00                           ; 8824 A4 00                    ..
        lda     $0650,y                         ; 8826 B9 50 06                 .P.
        ldy     #$08                            ; 8829 A0 08                    ..
BattleTurnEngine_Branch_882B:
        lsr     a                               ; 882B 4A                       J
        php                                     ; 882C 08                       .
        ror     $0303,x                         ; 882D 7E 03 03                 ~..
        ror     $0313,x                         ; 8830 7E 13 03                 ~..
        plp                                     ; 8833 28                       (
        ror     $0303,x                         ; 8834 7E 03 03                 ~..
        ror     $0313,x                         ; 8837 7E 13 03                 ~..
        dey                                     ; 883A 88                       .
        bne     BattleTurnEngine_Branch_882B    ; 883B D0 EE                    ..
        lda     $0303,x                         ; 883D BD 03 03                 ...
        sta     $0304,x                         ; 8840 9D 04 03                 ...
        lda     $0313,x                         ; 8843 BD 13 03                 ...
        sta     $0314,x                         ; 8846 9D 14 03                 ...
        inc     $00                           ; 8849 E6 00                    ..
        lda     $00                           ; 884B A5 00                    ..
        and     #$0F                            ; 884D 29 0F                    ).
        bne     BattleTurnEngine_Branch_880C    ; 884F D0 BB                    ..
        jsr     UpperFixedEngine_Entry_C62D     ; 8851 20 2D C6                  -.
        lda     $00                           ; 8854 A5 00                    ..
        cmp     #$40                            ; 8856 C9 40                    .@
        bne     BattleTurnEngine_Branch_87E5    ; 8858 D0 8B                    ..
BattleTurnEngine_Branch_885A:
        jsr     BattleTurnEngine_Entry_8921     ; 885A 20 21 89                  !.
        ldx     $C8                             ; 885D A6 C8                    ..
        lda     $0468,x                         ; 885F BD 68 04                 .h.
        clc                                     ; 8862 18                       .
        adc     #$10                            ; 8863 69 10                    i.
        sta     $0469,x                         ; 8865 9D 69 04                 .i.
        lda     $C4                             ; 8868 A5 C4                    ..
        clc                                     ; 886A 18                       .
        adc     #$F0                            ; 886B 69 F0                    i.
        sta     $C4                             ; 886D 85 C4                    ..
        sta     $044C,x                         ; 886F 9D 4C 04                 .L.
        brk                                     ; 8872 00                       .
        db   $A0,$FB                         ; 8873 A0 FB                    ..
; ----------------------------------------------------------------------------
        jsr     BattleTurnEngine_Entry_8933     ; 8875 20 33 89                  3.
        ldx     $C7                             ; 8878 A6 C7                    ..
        lda     $0698,x                         ; 887A BD 98 06                 ...
        pha                                     ; 887D 48                       H
        lda     $0690,x                         ; 887E BD 90 06                 ...
        pha                                     ; 8881 48                       H
        lda     $C4                             ; 8882 A5 C4                    ..
        pha                                     ; 8884 48                       H
        jsr     BattleTurnEngine_Entry_822F     ; 8885 20 2F 82                  /.
        pla                                     ; 8888 68                       h
        sta     $C4                             ; 8889 85 C4                    ..
        pla                                     ; 888B 68                       h
        ldx     $C7                             ; 888C A6 C7                    ..
        sta     $0690,x                         ; 888E 9D 90 06                 ...
        pla                                     ; 8891 68                       h
        sta     $0698,x                         ; 8892 9D 98 06                 ...
        ldx     $C8                             ; 8895 A6 C8                    ..
        lda     $044C,x                         ; 8897 BD 4C 04                 .L.
        ldx     $C6                             ; 889A A6 C6                    ..
        sta     $0440,x                         ; 889C 9D 40 04                 .@.
        jsr     BattleTurnEngine_Entry_946E     ; 889F 20 6E 94                  n.
        jsr     UpperFixedEngine_Entry_C5B9     ; 88A2 20 B9 C5                  ..
        jsr     WaitForNmi                      ; 88A5 20 74 FF                  t.
        jsr     BattleTurnEngine_Entry_9822     ; 88A8 20 22 98                  ".
        jsr     BattleTurnEngine_Entry_89C6     ; 88AB 20 C6 89                  ..
        jsr     BattleTurnEngine_Entry_8921     ; 88AE 20 21 89                  !.
        lda     #$00                            ; 88B1 A9 00                    ..
        sta     $02                             ; 88B3 85 02                    ..
        dec     $D6                             ; 88B5 C6 D6                    ..
        asl     $D6                             ; 88B7 06 D6                    ..
        asl     $D6                             ; 88B9 06 D6                    ..
        asl     $D6                             ; 88BB 06 D6                    ..
        lda     #$28                            ; 88BD A9 28                    .(
        jsr     BattleTurnEngine_Entry_899C     ; 88BF 20 9C 89                  ..
        lda     #$29                            ; 88C2 A9 29                    .)
        jsr     BattleTurnEngine_Entry_899C     ; 88C4 20 9C 89                  ..
        jsr     BattleTurnEngine_Entry_89C6     ; 88C7 20 C6 89                  ..
        sec                                     ; 88CA 38                       8
        rts                                     ; 88CB 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_88CC:
        jsr     BattleTurnEngine_Entry_9ED1     ; 88CC 20 D1 9E                  ..
        jsr     BattleTurnEngine_Entry_9E7F     ; 88CF 20 7F 9E                  ..
        stx     $C6                             ; 88D2 86 C6                    ..
        brk                                     ; 88D4 00                       .
        db   $A0,$FB                         ; 88D5 A0 FB                    ..
; ----------------------------------------------------------------------------
        jsr     BattleTurnEngine_Entry_8933     ; 88D7 20 33 89                  3.
        ldx     $C7                             ; 88DA A6 C7                    ..
        lda     $0698,x                         ; 88DC BD 98 06                 ...
        pha                                     ; 88DF 48                       H
        lda     $0690,x                         ; 88E0 BD 90 06                 ...
        pha                                     ; 88E3 48                       H
        jsr     BattleTurnEngine_Entry_822F     ; 88E4 20 2F 82                  /.
        pla                                     ; 88E7 68                       h
        ldx     $C7                             ; 88E8 A6 C7                    ..
        sta     $0690,x                         ; 88EA 9D 90 06                 ...
        pla                                     ; 88ED 68                       h
        sta     $0698,x                         ; 88EE 9D 98 06                 ...
        lda     #$7E                            ; 88F1 A9 7E                    .~
        ldx     $C6                             ; 88F3 A6 C6                    ..
        sta     $0440,x                         ; 88F5 9D 40 04                 .@.
        sta     $C4                             ; 88F8 85 C4                    ..
        jsr     BattleTurnEngine_Entry_946E     ; 88FA 20 6E 94                  n.
        jsr     BattleTurnEngine_Entry_9822     ; 88FD 20 22 98                  ".
        jsr     BattleTurnEngine_Entry_89C6     ; 8900 20 C6 89                  ..
        jsr     BattleTurnEngine_Entry_8921     ; 8903 20 21 89                  !.
        lda     #$00                            ; 8906 A9 00                    ..
        sta     $02                             ; 8908 85 02                    ..
        dec     $D6                             ; 890A C6 D6                    ..
        asl     $D6                             ; 890C 06 D6                    ..
        asl     $D6                             ; 890E 06 D6                    ..
        asl     $D6                             ; 8910 06 D6                    ..
        lda     #$28                            ; 8912 A9 28                    .(
        jsr     BattleTurnEngine_Entry_899C     ; 8914 20 9C 89                  ..
        lda     #$29                            ; 8917 A9 29                    .)
        jsr     BattleTurnEngine_Entry_899C     ; 8919 20 9C 89                  ..
        jsr     BattleTurnEngine_Entry_89C6     ; 891C 20 C6 89                  ..
        sec                                     ; 891F 38                       8
        rts                                     ; 8920 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8921:
        lda     #$30                            ; 8921 A9 30                    .0
        sta     $0609                           ; 8923 8D 09 06                 ...
        lda     #$3C                            ; 8926 A9 3C                    .<
        sta     $060A                           ; 8928 8D 0A 06                 ...
        lda     #$2C                            ; 892B A9 2C                    .,
        sta     $060B                           ; 892D 8D 0B 06                 ...
        jmp     UpperFixedEngine_Entry_C5B9     ; 8930 4C B9 C5                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8933:
        ldx     $C7                             ; 8933 A6 C7                    ..
        lda     $0698,x                         ; 8935 BD 98 06                 ...
        asl     a                               ; 8938 0A                       .
        asl     a                               ; 8939 0A                       .
        asl     a                               ; 893A 0A                       .
        sta     $D6                             ; 893B 85 D6                    ..
        ldy     #$00                            ; 893D A0 00                    ..
        sty     $02                             ; 893F 84 02                    ..
        ldy     #$03                            ; 8941 A0 03                    ..
BattleTurnEngine_Branch_8943:
        tya                                     ; 8943 98                       .
        and     #$01                            ; 8944 29 01                    ).
        asl     a                               ; 8946 0A                       .
        asl     a                               ; 8947 0A                       .
        asl     a                               ; 8948 0A                       .
        adc     $D6                             ; 8949 65 D6                    e.
        adc     #$08                            ; 894B 69 08                    i.
        sta     $03                             ; 894D 85 03                    ..
        tya                                     ; 894F 98                       .
        and     #$02                            ; 8950 29 02                    ).
        asl     a                               ; 8952 0A                       .
        asl     a                               ; 8953 0A                       .
        adc     #$6F                            ; 8954 69 6F                    io
        sta     $00                           ; 8956 85 00                    ..
        tya                                     ; 8958 98                       .
        adc     #$04                            ; 8959 69 04                    i.
        sta     $01                             ; 895B 85 01                    ..
        ldx     #$00                            ; 895D A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 895F 20 3E C7                  >.
        dey                                     ; 8962 88                       .
        bpl     BattleTurnEngine_Branch_8943    ; 8963 10 DE                    ..
        ldx     #$03                            ; 8965 A2 03                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 8967 20 0C C9                  ..
        lda     #$08                            ; 896A A9 08                    ..
        jsr     BattleTurnEngine_Entry_8974     ; 896C 20 74 89                  t.
        lda     #$18                            ; 896F A9 18                    ..
        jmp     BattleTurnEngine_Entry_8974     ; 8971 4C 74 89                 Lt.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8974:
        sta     $D8                             ; 8974 85 D8                    ..
        ldy     #$0F                            ; 8976 A0 0F                    ..
BattleTurnEngine_Branch_8978:
        tya                                     ; 8978 98                       .
        and     #$03                            ; 8979 29 03                    ).
        asl     a                               ; 897B 0A                       .
        asl     a                               ; 897C 0A                       .
        asl     a                               ; 897D 0A                       .
        adc     $D6                             ; 897E 65 D6                    e.
        sta     $03                             ; 8980 85 03                    ..
        tya                                     ; 8982 98                       .
        and     #$0C                            ; 8983 29 0C                    ).
        asl     a                               ; 8985 0A                       .
        adc     #$67                            ; 8986 69 67                    ig
        sta     $00                           ; 8988 85 00                    ..
        tya                                     ; 898A 98                       .
        adc     $D8                             ; 898B 65 D8                    e.
        sta     $01                             ; 898D 85 01                    ..
        ldx     #$00                            ; 898F A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 8991 20 3E C7                  >.
        dey                                     ; 8994 88                       .
        bpl     BattleTurnEngine_Branch_8978    ; 8995 10 E1                    ..
        ldx     #$03                            ; 8997 A2 03                    ..
        jmp     UpperFixedEngine_Entry_C90C     ; 8999 4C 0C C9                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_899C:
        sta     $01                             ; 899C 85 01                    ..
        ldy     #$03                            ; 899E A0 03                    ..
BattleTurnEngine_Branch_89A0:
        tya                                     ; 89A0 98                       .
        lsr     a                               ; 89A1 4A                       J
        lda     #$00                            ; 89A2 A9 00                    ..
        bcc     BattleTurnEngine_Branch_89A8    ; 89A4 90 02                    ..
        lda     #$28                            ; 89A6 A9 28                    .(
BattleTurnEngine_Branch_89A8:
        clc                                     ; 89A8 18                       .
        adc     $D6                             ; 89A9 65 D6                    e.
        sta     $03                             ; 89AB 85 03                    ..
        tya                                     ; 89AD 98                       .
        and     #$02                            ; 89AE 29 02                    ).
        beq     BattleTurnEngine_Branch_89B4    ; 89B0 F0 02                    ..
        lda     #$28                            ; 89B2 A9 28                    .(
BattleTurnEngine_Branch_89B4:
        clc                                     ; 89B4 18                       .
        adc     #$5F                            ; 89B5 69 5F                    i_
        sta     $00                           ; 89B7 85 00                    ..
        ldx     #$00                            ; 89B9 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 89BB 20 3E C7                  >.
        dey                                     ; 89BE 88                       .
        bpl     BattleTurnEngine_Branch_89A0    ; 89BF 10 DF                    ..
        ldx     #$03                            ; 89C1 A2 03                    ..
        jmp     UpperFixedEngine_Entry_C90C     ; 89C3 4C 0C C9                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_89C6:
        ldy     #$0F                            ; 89C6 A0 0F                    ..
BattleTurnEngine_Branch_89C8:
        lda     #$F7                            ; 89C8 A9 F7                    ..
        sta     $00                           ; 89CA 85 00                    ..
        sta     $01                             ; 89CC 85 01                    ..
        sta     $02                             ; 89CE 85 02                    ..
        sta     $03                             ; 89D0 85 03                    ..
        ldx     #$00                            ; 89D2 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 89D4 20 3E C7                  >.
        dey                                     ; 89D7 88                       .
        bpl     BattleTurnEngine_Branch_89C8    ; 89D8 10 EE                    ..
        rts                                     ; 89DA 60                       `
; ----------------------------------------------------------------------------
        db   $91,$A1                         ; 89DB 91 A1                    ..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_89DD:
        lda     $C4                             ; 89DD A5 C4                    ..
        pha                                     ; 89DF 48                       H
        clc                                     ; 89E0 18                       .
        adc     #$F0                            ; 89E1 69 F0                    i.
        sta     $C4                             ; 89E3 85 C4                    ..
        jsr     BattleTurnEngine_Entry_9E0C     ; 89E5 20 0C 9E                  ..
        lda     #$06                            ; 89E8 A9 06                    ..
        cmp     $C8                             ; 89EA C5 C8                    ..
        pla                                     ; 89EC 68                       h
        sta     $C4                             ; 89ED 85 C4                    ..
        rts                                     ; 89EF 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_89F0:
        lda     $C4                             ; 89F0 A5 C4                    ..
        cmp     #$09                            ; 89F2 C9 09                    ..
        bcs     BattleTurnEngine_Branch_8A02    ; 89F4 B0 0C                    ..
        pha                                     ; 89F6 48                       H
        adc     #$F0                            ; 89F7 69 F0                    i.
        sta     $C4                             ; 89F9 85 C4                    ..
        jsr     BattleTurnEngine_Entry_9E1C     ; 89FB 20 1C 9E                  ..
        pla                                     ; 89FE 68                       h
        sta     $C4                             ; 89FF 85 C4                    ..
        rts                                     ; 8A01 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8A02:
        clc                                     ; 8A02 18                       .
        rts                                     ; 8A03 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8A04:
        jsr     BattleTurnEngine_Entry_8A69     ; 8A04 20 69 8A                  i.
        lda     #$30                            ; 8A07 A9 30                    .0
        sta     $0609                           ; 8A09 8D 09 06                 ...
        lda     #$15                            ; 8A0C A9 15                    ..
        sta     $060A                           ; 8A0E 8D 0A 06                 ...
        lda     #$1C                            ; 8A11 A9 1C                    ..
        sta     $060B                           ; 8A13 8D 0B 06                 ...
        jsr     UpperFixedEngine_Entry_C5B9     ; 8A16 20 B9 C5                  ..
        ldx     #$07                            ; 8A19 A2 07                    ..
        lda     #$00                            ; 8A1B A9 00                    ..
        sta     $06                             ; 8A1D 85 06                    ..
BattleTurnEngine_Branch_8A1F:
        jsr     BattleTurnEngine_Entry_8AA7     ; 8A1F 20 A7 8A                  ..
        inc     $04                             ; 8A22 E6 04                    ..
        beq     BattleTurnEngine_Branch_8A42    ; 8A24 F0 1C                    ..
        txa                                     ; 8A26 8A                       .
        pha                                     ; 8A27 48                       H
        jsr     BattleTurnEngine_Entry_8ACB     ; 8A28 20 CB 8A                  ..
        lda     $06                             ; 8A2B A5 06                    ..
        pha                                     ; 8A2D 48                       H
        jsr     BattleTurnEngine_Entry_822F     ; 8A2E 20 2F 82                  /.
        pla                                     ; 8A31 68                       h
        sta     $06                             ; 8A32 85 06                    ..
        jsr     BattleTurnEngine_Entry_8AE2     ; 8A34 20 E2 8A                  ..
        brk                                     ; 8A37 00                       .
        db   $97,$FB                         ; 8A38 97 FB                    ..
; ----------------------------------------------------------------------------
        jsr     BattleTurnEngine_Entry_8B36     ; 8A3A 20 36 8B                  6.
        jsr     BattleTurnEngine_Entry_8B85     ; 8A3D 20 85 8B                  ..
        pla                                     ; 8A40 68                       h
        tax                                     ; 8A41 AA                       .
BattleTurnEngine_Branch_8A42:
        inc     $06                             ; 8A42 E6 06                    ..
        dex                                     ; 8A44 CA                       .
        bpl     BattleTurnEngine_Branch_8A1F    ; 8A45 10 D8                    ..
        jsr     BattleTurnEngine_Entry_8C07     ; 8A47 20 07 8C                  ..
        lda     #$30                            ; 8A4A A9 30                    .0
        sta     $C4                             ; 8A4C 85 C4                    ..
        lda     #$00                            ; 8A4E A9 00                    ..
        sta     $C7                             ; 8A50 85 C7                    ..
        ldx     #$03                            ; 8A52 A2 03                    ..
BattleTurnEngine_Branch_8A54:
        sta     $738D,x                         ; 8A54 9D 8D 73                 ..s
        dex                                     ; 8A57 CA                       .
        bpl     BattleTurnEngine_Branch_8A54    ; 8A58 10 FA                    ..
        jsr     BattleTurnEngine_Entry_84DF     ; 8A5A 20 DF 84                  ..
        brk                                     ; 8A5D 00                       .
        db   $98,$FB                         ; 8A5E 98 FB                    ..
; ----------------------------------------------------------------------------
        jsr     BattleTurnEngine_Entry_852E     ; 8A60 20 2E 85                  ..
        jsr     BattleTurnEngine_Entry_8A76     ; 8A63 20 76 8A                  v.
        jmp     BattleTurnEngine_Branch_8C1B    ; 8A66 4C 1B 8C                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8A69:
        lda     $8D76                           ; 8A69 AD 76 8D                 .v.
        sta     $C0                             ; 8A6C 85 C0                    ..
        lda     $8D77                           ; 8A6E AD 77 8D                 .w.
        sta     $C1                             ; 8A71 85 C1                    ..
        jmp     BattleTurnEngine_Branch_8A83    ; 8A73 4C 83 8A                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8A76:
        lda     $8D78                           ; 8A76 AD 78 8D                 .x.
        sta     $C0                             ; 8A79 85 C0                    ..
        lda     $8D79                           ; 8A7B AD 79 8D                 .y.
        sta     $C1                             ; 8A7E 85 C1                    ..
        jmp     BattleTurnEngine_Branch_8A83    ; 8A80 4C 83 8A                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8A83:
        jsr     BattleTurnEngine_Entry_9E0C     ; 8A83 20 0C 9E                  ..
        ldx     $C8                             ; 8A86 A6 C8                    ..
        lda     $045A,x                         ; 8A88 BD 5A 04                 .Z.
        ldx     #$08                            ; 8A8B A2 08                    ..
        stx     $16                             ; 8A8D 86 16                    ..
        ldx     #$03                            ; 8A8F A2 03                    ..
BattleTurnEngine_Branch_8A91:
        asl     a                               ; 8A91 0A                       .
        rol     $16                             ; 8A92 26 16                    &.
        dex                                     ; 8A94 CA                       .
        bpl     BattleTurnEngine_Branch_8A91    ; 8A95 10 FA                    ..
        sta     $17                             ; 8A97 85 17                    ..
        clc                                     ; 8A99 18                       .
        adc     #$80                            ; 8A9A 69 80                    i.
        sta     $19                             ; 8A9C 85 19                    ..
        lda     $16                             ; 8A9E A5 16                    ..
        adc     #$00                            ; 8AA0 69 00                    i.
        sta     $18                             ; 8AA2 85 18                    ..
        jmp     BattleTurnEngine_Branch_8CD5    ; 8AA4 4C D5 8C                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8AA7:
        ldy     #$FF                            ; 8AA7 A0 FF                    ..
        sty     $04                             ; 8AA9 84 04                    ..
        iny                                     ; 8AAB C8                       .
BattleTurnEngine_Branch_8AAC:
        lda     $0690,y                         ; 8AAC B9 90 06                 ...
        bpl     BattleTurnEngine_Branch_8AC5    ; 8AAF 10 14                    ..
        lda     $0698,y                         ; 8AB1 B9 98 06                 ...
        sec                                     ; 8AB4 38                       8
        sbc     #$0F                            ; 8AB5 E9 0F                    ..
        bcs     BattleTurnEngine_Branch_8ABD    ; 8AB7 B0 04                    ..
        eor     #$FF                            ; 8AB9 49 FF                    I.
        adc     #$01                            ; 8ABB 69 01                    i.
BattleTurnEngine_Branch_8ABD:
        cmp     $04                             ; 8ABD C5 04                    ..
        bcs     BattleTurnEngine_Branch_8AC5    ; 8ABF B0 04                    ..
        sta     $04                             ; 8AC1 85 04                    ..
        sty     $C7                             ; 8AC3 84 C7                    ..
BattleTurnEngine_Branch_8AC5:
        iny                                     ; 8AC5 C8                       .
        cpy     #$08                            ; 8AC6 C0 08                    ..
        bne     BattleTurnEngine_Branch_8AAC    ; 8AC8 D0 E2                    ..
        rts                                     ; 8ACA 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8ACB:
        lda     #$77                            ; 8ACB A9 77                    .w
        sta     $00                           ; 8ACD 85 00                    ..
        lda     #$00                            ; 8ACF A9 00                    ..
        sta     $01                             ; 8AD1 85 01                    ..
        sta     $02                             ; 8AD3 85 02                    ..
        ldx     $C7                             ; 8AD5 A6 C7                    ..
        lda     $0698,x                         ; 8AD7 BD 98 06                 ...
        asl     a                               ; 8ADA 0A                       .
        asl     a                               ; 8ADB 0A                       .
        asl     a                               ; 8ADC 0A                       .
        sta     $03                             ; 8ADD 85 03                    ..
        jmp     BattleTurnEngine_Entry_8C86     ; 8ADF 4C 86 8C                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8AE2:
        ldx     $06                             ; 8AE2 A6 06                    ..
        lda     $8D29,x                         ; 8AE4 BD 29 8D                 .).
        sta     $08                             ; 8AE7 85 08                    ..
        lda     #$01                            ; 8AE9 A9 01                    ..
        sta     $09                             ; 8AEB 85 09                    ..
BattleTurnEngine_Branch_8AED:
        lda     $09                             ; 8AED A5 09                    ..
        sta     $0A                             ; 8AEF 85 0A                    ..
        lda     $06                             ; 8AF1 A5 06                    ..
        asl     a                               ; 8AF3 0A                       .
        asl     a                               ; 8AF4 0A                       .
        tay                                     ; 8AF5 A8                       .
        ldx     #$00                            ; 8AF6 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C770     ; 8AF8 20 70 C7                  p.
        lda     $03                             ; 8AFB A5 03                    ..
        cmp     $08                             ; 8AFD C5 08                    ..
        beq     BattleTurnEngine_Branch_8B35    ; 8AFF F0 34                    .4
        bcc     BattleTurnEngine_Branch_8B0B    ; 8B01 90 08                    ..
        lda     $0A                             ; 8B03 A5 0A                    ..
        eor     #$FF                            ; 8B05 49 FF                    I.
        sta     $0A                             ; 8B07 85 0A                    ..
        inc     $0A                             ; 8B09 E6 0A                    ..
BattleTurnEngine_Branch_8B0B:
        jsr     BattleTurnEngine_Entry_8B13     ; 8B0B 20 13 8B                  ..
        inc     $09                             ; 8B0E E6 09                    ..
        jmp     BattleTurnEngine_Branch_8AED    ; 8B10 4C ED 8A                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8B13:
        lda     $06                             ; 8B13 A5 06                    ..
        asl     a                               ; 8B15 0A                       .
        asl     a                               ; 8B16 0A                       .
        tay                                     ; 8B17 A8                       .
        ldx     #$00                            ; 8B18 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C770     ; 8B1A 20 70 C7                  p.
        lda     $03                             ; 8B1D A5 03                    ..
        clc                                     ; 8B1F 18                       .
        adc     $0A                             ; 8B20 65 0A                    e.
        bcs     BattleTurnEngine_Branch_8B2A    ; 8B22 B0 06                    ..
        cmp     $08                             ; 8B24 C5 08                    ..
        bcc     BattleTurnEngine_Branch_8B30    ; 8B26 90 08                    ..
        bcs     BattleTurnEngine_Branch_8B2E    ; 8B28 B0 04                    ..
BattleTurnEngine_Branch_8B2A:
        cmp     $08                             ; 8B2A C5 08                    ..
        bcs     BattleTurnEngine_Branch_8B30    ; 8B2C B0 02                    ..
BattleTurnEngine_Branch_8B2E:
        lda     $08                             ; 8B2E A5 08                    ..
BattleTurnEngine_Branch_8B30:
        sta     $03                             ; 8B30 85 03                    ..
        jsr     BattleTurnEngine_Entry_8C86     ; 8B32 20 86 8C                  ..
BattleTurnEngine_Branch_8B35:
        rts                                     ; 8B35 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8B36:
        ldx     $06                             ; 8B36 A6 06                    ..
        lda     $8D42,x                         ; 8B38 BD 42 8D                 .B.
        sta     $08                             ; 8B3B 85 08                    ..
        ldy     #$00                            ; 8B3D A0 00                    ..
BattleTurnEngine_Branch_8B3F:
        tya                                     ; 8B3F 98                       .
        pha                                     ; 8B40 48                       H
        ldx     #$00                            ; 8B41 A2 00                    ..
        lda     $06                             ; 8B43 A5 06                    ..
        asl     a                               ; 8B45 0A                       .
        asl     a                               ; 8B46 0A                       .
        tay                                     ; 8B47 A8                       .
        jsr     UpperFixedEngine_Entry_C770     ; 8B48 20 70 C7                  p.
        lda     $03                             ; 8B4B A5 03                    ..
        cmp     $08                             ; 8B4D C5 08                    ..
        bne     BattleTurnEngine_Branch_8B53    ; 8B4F D0 02                    ..
        pla                                     ; 8B51 68                       h
        rts                                     ; 8B52 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8B53:
        cmp     #$78                            ; 8B53 C9 78                    .x
        bcs     BattleTurnEngine_Branch_8B5D    ; 8B55 B0 06                    ..
        inc     $03                             ; 8B57 E6 03                    ..
        inc     $03                             ; 8B59 E6 03                    ..
        bne     BattleTurnEngine_Branch_8B61    ; 8B5B D0 04                    ..
BattleTurnEngine_Branch_8B5D:
        dec     $03                             ; 8B5D C6 03                    ..
        dec     $03                             ; 8B5F C6 03                    ..
BattleTurnEngine_Branch_8B61:
        pla                                     ; 8B61 68                       h
        tay                                     ; 8B62 A8                       .
        lda     $00                           ; 8B63 A5 00                    ..
        clc                                     ; 8B65 18                       .
        adc     $8D31,y                         ; 8B66 79 31 8D                 y1.
        ldx     $06                             ; 8B69 A6 06                    ..
        cpx     #$07                            ; 8B6B E0 07                    ..
        bne     BattleTurnEngine_Branch_8B73    ; 8B6D D0 04                    ..
        clc                                     ; 8B6F 18                       .
        adc     $8D31,y                         ; 8B70 79 31 8D                 y1.
BattleTurnEngine_Branch_8B73:
        sta     $00                           ; 8B73 85 00                    ..
        ldx     $C8                             ; 8B75 A6 C8                    ..
        lda     $045A,x                         ; 8B77 BD 5A 04                 .Z.
        clc                                     ; 8B7A 18                       .
        adc     #$04                            ; 8B7B 69 04                    i.
        sta     $01                             ; 8B7D 85 01                    ..
        jsr     BattleTurnEngine_Entry_8C86     ; 8B7F 20 86 8C                  ..
        iny                                     ; 8B82 C8                       .
        bne     BattleTurnEngine_Branch_8B3F    ; 8B83 D0 BA                    ..
BattleTurnEngine_Entry_8B85:
        lda     $06                             ; 8B85 A5 06                    ..
        pha                                     ; 8B87 48                       H
        cmp     #$02                            ; 8B88 C9 02                    ..
        bcc     BattleTurnEngine_Branch_8BC2    ; 8B8A 90 36                    .6
        asl     a                               ; 8B8C 0A                       .
        asl     a                               ; 8B8D 0A                       .
        tay                                     ; 8B8E A8                       .
        ldx     #$00                            ; 8B8F A2 00                    ..
        jsr     UpperFixedEngine_Entry_C770     ; 8B91 20 70 C7                  p.
        ldx     $06                             ; 8B94 A6 06                    ..
        lda     $8D4A,x                         ; 8B96 BD 4A 8D                 .J.
        sta     $00                           ; 8B99 85 00                    ..
        lda     #$00                            ; 8B9B A9 00                    ..
        sta     $01                             ; 8B9D 85 01                    ..
        jsr     BattleTurnEngine_Entry_8C86     ; 8B9F 20 86 8C                  ..
        lda     $06                             ; 8BA2 A5 06                    ..
        cmp     #$07                            ; 8BA4 C9 07                    ..
        bne     BattleTurnEngine_Branch_8BC2    ; 8BA6 D0 1A                    ..
        lda     #$04                            ; 8BA8 A9 04                    ..
        sta     $0C                             ; 8BAA 85 0C                    ..
        jsr     BattleTurnEngine_Entry_8BC9     ; 8BAC 20 C9 8B                  ..
        jsr     WaitForNmi                      ; 8BAF 20 74 FF                  t.
        ldx     #$07                            ; 8BB2 A2 07                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 8BB4 20 0C C9                  ..
        lda     #$07                            ; 8BB7 A9 07                    ..
        sta     $06                             ; 8BB9 85 06                    ..
        lda     #$FC                            ; 8BBB A9 FC                    ..
        sta     $0C                             ; 8BBD 85 0C                    ..
        jsr     BattleTurnEngine_Entry_8BC9     ; 8BBF 20 C9 8B                  ..
BattleTurnEngine_Branch_8BC2:
        jsr     WaitForNmi                      ; 8BC2 20 74 FF                  t.
        pla                                     ; 8BC5 68                       h
        sta     $06                             ; 8BC6 85 06                    ..
        rts                                     ; 8BC8 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8BC9:
        lda     #$00                            ; 8BC9 A9 00                    ..
        ldy     $06                             ; 8BCB A4 06                    ..
        ldx     $0C                             ; 8BCD A6 0C                    ..
        bmi     BattleTurnEngine_Branch_8BDA    ; 8BCF 30 09                    0.
        cpy     #$07                            ; 8BD1 C0 07                    ..
        beq     BattleTurnEngine_Branch_8BDA    ; 8BD3 F0 05                    ..
        ldx     $C8                             ; 8BD5 A6 C8                    ..
        lda     $045A,x                         ; 8BD7 BD 5A 04                 .Z.
BattleTurnEngine_Branch_8BDA:
        ldx     $8D6E,y                         ; 8BDA BE 6E 8D                 .n.
BattleTurnEngine_Branch_8BDD:
        jsr     BattleTurnEngine_Entry_8BE8     ; 8BDD 20 E8 8B                  ..
        dex                                     ; 8BE0 CA                       .
        bne     BattleTurnEngine_Branch_8BDD    ; 8BE1 D0 FA                    ..
        dec     $06                             ; 8BE3 C6 06                    ..
        bpl     BattleTurnEngine_Entry_8BC9     ; 8BE5 10 E2                    ..
        rts                                     ; 8BE7 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8BE8:
        pha                                     ; 8BE8 48                       H
        pha                                     ; 8BE9 48                       H
        txa                                     ; 8BEA 8A                       .
        pha                                     ; 8BEB 48                       H
        lda     $06                             ; 8BEC A5 06                    ..
        asl     a                               ; 8BEE 0A                       .
        asl     a                               ; 8BEF 0A                       .
        tay                                     ; 8BF0 A8                       .
        ldx     #$00                            ; 8BF1 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C770     ; 8BF3 20 70 C7                  p.
        lda     $00                           ; 8BF6 A5 00                    ..
        clc                                     ; 8BF8 18                       .
        adc     $0C                             ; 8BF9 65 0C                    e.
        sta     $00                           ; 8BFB 85 00                    ..
        pla                                     ; 8BFD 68                       h
        tax                                     ; 8BFE AA                       .
        pla                                     ; 8BFF 68                       h
        sta     $01                             ; 8C00 85 01                    ..
        jsr     BattleTurnEngine_Entry_8C8C     ; 8C02 20 8C 8C                  ..
        pla                                     ; 8C05 68                       h
        rts                                     ; 8C06 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8C07:
        ldx     #$02                            ; 8C07 A2 02                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 8C09 20 0C C9                  ..
        ldy     #$1F                            ; 8C0C A0 1F                    ..
BattleTurnEngine_Branch_8C0E:
        ldx     #$00                            ; 8C0E A2 00                    ..
        lda     #$F7                            ; 8C10 A9 F7                    ..
        sta     $00                           ; 8C12 85 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 8C14 20 3E C7                  >.
        dey                                     ; 8C17 88                       .
        bpl     BattleTurnEngine_Branch_8C0E    ; 8C18 10 F4                    ..
        rts                                     ; 8C1A 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8C1B:
        lda     #$30                            ; 8C1B A9 30                    .0
        sta     $060F                           ; 8C1D 8D 0F 06                 ...
        lda     #$3C                            ; 8C20 A9 3C                    .<
        sta     $0610                           ; 8C22 8D 10 06                 ...
        lda     #$2C                            ; 8C25 A9 2C                    .,
        sta     $0611                           ; 8C27 8D 11 06                 ...
        jsr     UpperFixedEngine_Entry_C5B9     ; 8C2A 20 B9 C5                  ..
        jsr     BattleTurnEngine_Entry_9E0C     ; 8C2D 20 0C 9E                  ..
        ldx     $C8                             ; 8C30 A6 C8                    ..
        lda     $045A,x                         ; 8C32 BD 5A 04                 .Z.
        sta     $01                             ; 8C35 85 01                    ..
        jsr     BattleTurnEngine_Entry_8C5C     ; 8C37 20 5C 8C                  \.
        ldx     #$05                            ; 8C3A A2 05                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 8C3C 20 0C C9                  ..
        inc     $01                             ; 8C3F E6 01                    ..
        jsr     BattleTurnEngine_Entry_8C5C     ; 8C41 20 5C 8C                  \.
        ldx     #$03                            ; 8C44 A2 03                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 8C46 20 0C C9                  ..
        ldy     #$05                            ; 8C49 A0 05                    ..
BattleTurnEngine_Branch_8C4B:
        lda     #$F7                            ; 8C4B A9 F7                    ..
        sta     $00                           ; 8C4D 85 00                    ..
        ldx     #$00                            ; 8C4F A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 8C51 20 3E C7                  >.
        iny                                     ; 8C54 C8                       .
        cpy     #$0C                            ; 8C55 C0 0C                    ..
        bne     BattleTurnEngine_Branch_8C4B    ; 8C57 D0 F2                    ..
        jmp     WaitForNmi                      ; 8C59 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8C5C:
        lda     #$02                            ; 8C5C A9 02                    ..
        sta     $02                             ; 8C5E 85 02                    ..
        ldy     #$05                            ; 8C60 A0 05                    ..
BattleTurnEngine_Branch_8C62:
        tya                                     ; 8C62 98                       .
        sec                                     ; 8C63 38                       8
        sbc     #$05                            ; 8C64 E9 05                    ..
        ldx     $01                             ; 8C66 A6 01                    ..
        cpx     #$0C                            ; 8C68 E0 0C                    ..
        beq     BattleTurnEngine_Branch_8C6F    ; 8C6A F0 03                    ..
        clc                                     ; 8C6C 18                       .
        adc     #$07                            ; 8C6D 69 07                    i.
BattleTurnEngine_Branch_8C6F:
        asl     a                               ; 8C6F 0A                       .
        tax                                     ; 8C70 AA                       .
        lda     $8D52,x                         ; 8C71 BD 52 8D                 .R.
        sta     $00                           ; 8C74 85 00                    ..
        lda     $8D53,x                         ; 8C76 BD 53 8D                 .S.
        sta     $03                             ; 8C79 85 03                    ..
        ldx     #$00                            ; 8C7B A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 8C7D 20 3E C7                  >.
        iny                                     ; 8C80 C8                       .
        cpy     #$0C                            ; 8C81 C0 0C                    ..
        bne     BattleTurnEngine_Branch_8C62    ; 8C83 D0 DD                    ..
        rts                                     ; 8C85 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8C86:
        jsr     BattleTurnEngine_Entry_8C8C     ; 8C86 20 8C 8C                  ..
        jmp     WaitForNmi                      ; 8C89 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8C8C:
        txa                                     ; 8C8C 8A                       .
        pha                                     ; 8C8D 48                       H
        tya                                     ; 8C8E 98                       .
        pha                                     ; 8C8F 48                       H
        ldx     #$03                            ; 8C90 A2 03                    ..
        stx     $07                             ; 8C92 86 07                    ..
BattleTurnEngine_Branch_8C94:
        lda     $00                           ; 8C94 A5 00                    ..
        pha                                     ; 8C96 48                       H
        lda     $01                             ; 8C97 A5 01                    ..
        pha                                     ; 8C99 48                       H
        lda     $03                             ; 8C9A A5 03                    ..
        pha                                     ; 8C9C 48                       H
        lda     $07                             ; 8C9D A5 07                    ..
        pha                                     ; 8C9F 48                       H
        clc                                     ; 8CA0 18                       .
        adc     $01                             ; 8CA1 65 01                    e.
        sta     $01                             ; 8CA3 85 01                    ..
        pla                                     ; 8CA5 68                       h
        asl     a                               ; 8CA6 0A                       .
        asl     a                               ; 8CA7 0A                       .
        pha                                     ; 8CA8 48                       H
        and     #$08                            ; 8CA9 29 08                    ).
        adc     $03                             ; 8CAB 65 03                    e.
        sta     $03                             ; 8CAD 85 03                    ..
        pla                                     ; 8CAF 68                       h
        asl     a                               ; 8CB0 0A                       .
        and     #$08                            ; 8CB1 29 08                    ).
        adc     $00                           ; 8CB3 65 00                    e.
        sta     $00                           ; 8CB5 85 00                    ..
        lda     $06                             ; 8CB7 A5 06                    ..
        asl     a                               ; 8CB9 0A                       .
        asl     a                               ; 8CBA 0A                       .
        adc     $07                             ; 8CBB 65 07                    e.
        tay                                     ; 8CBD A8                       .
        ldx     #$00                            ; 8CBE A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 8CC0 20 3E C7                  >.
        pla                                     ; 8CC3 68                       h
        sta     $03                             ; 8CC4 85 03                    ..
        pla                                     ; 8CC6 68                       h
        sta     $01                             ; 8CC7 85 01                    ..
        pla                                     ; 8CC9 68                       h
        sta     $00                           ; 8CCA 85 00                    ..
        dec     $07                             ; 8CCC C6 07                    ..
        bpl     BattleTurnEngine_Branch_8C94    ; 8CCE 10 C4                    ..
        pla                                     ; 8CD0 68                       h
        tay                                     ; 8CD1 A8                       .
        pla                                     ; 8CD2 68                       h
        tax                                     ; 8CD3 AA                       .
        rts                                     ; 8CD4 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8CD5:
        lda     $1F                             ; 8CD5 A5 1F                    ..
        ora     #$40                            ; 8CD7 09 40                    .@
        sta     $1F                             ; 8CD9 85 1F                    ..
        lda     $16                             ; 8CDB A5 16                    ..
        sta     $0300                           ; 8CDD 8D 00 03                 ...
        lda     #$40                            ; 8CE0 A9 40                    .@
        sta     $0301                           ; 8CE2 8D 01 03                 ...
        lda     $17                             ; 8CE5 A5 17                    ..
        sta     NextTextCharacter               ; 8CE7 8D 02 03                 ...
BattleTurnEngine_Branch_8CEA:
        ldx     #$00                            ; 8CEA A2 00                    ..
        ldy     #$00                            ; 8CEC A0 00                    ..
BattleTurnEngine_Branch_8CEE:
        lda     ($C0),y                         ; 8CEE B1 C0                    ..
        sta     $0303,x                         ; 8CF0 9D 03 03                 ...
        inc     $C0                             ; 8CF3 E6 C0                    ..
        bne     BattleTurnEngine_Branch_8CF9    ; 8CF5 D0 02                    ..
        inc     $C1                             ; 8CF7 E6 C1                    ..
BattleTurnEngine_Branch_8CF9:
        inx                                     ; 8CF9 E8                       .
        cpx     #$40                            ; 8CFA E0 40                    .@
        bne     BattleTurnEngine_Branch_8CEE    ; 8CFC D0 F0                    ..
        lda     #$01                            ; 8CFE A9 01                    ..
        sta     $050B                           ; 8D00 8D 0B 05                 ...
        jsr     UpperFixedEngine_Entry_C62D     ; 8D03 20 2D C6                  -.
        lda     NextTextCharacter               ; 8D06 AD 02 03                 ...
        clc                                     ; 8D09 18                       .
        adc     #$40                            ; 8D0A 69 40                    i@
        sta     NextTextCharacter               ; 8D0C 8D 02 03                 ...
        bcc     BattleTurnEngine_Branch_8D14    ; 8D0F 90 03                    ..
        inc     $0300                           ; 8D11 EE 00 03                 ...
BattleTurnEngine_Branch_8D14:
        lda     $0300                           ; 8D14 AD 00 03                 ...
        cmp     $18                             ; 8D17 C5 18                    ..
        bcc     BattleTurnEngine_Branch_8CEA    ; 8D19 90 CF                    ..
        lda     NextTextCharacter               ; 8D1B AD 02 03                 ...
        cmp     $19                             ; 8D1E C5 19                    ..
        bcc     BattleTurnEngine_Branch_8CEA    ; 8D20 90 C8                    ..
        lda     $1F                             ; 8D22 A5 1F                    ..
        and     #$BF                            ; 8D24 29 BF                    ).
        sta     $1F                             ; 8D26 85 1F                    ..
        rts                                     ; 8D28 60                       `
; ----------------------------------------------------------------------------
        db   $70,$80,$58,$98,$58,$98,$58,$90 ; 8D29 70 80 58 98 58 98 58 90  p.X.X.X.
        db   $F8,$F8,$FB,$FC,$FD,$FE,$FF,$FF ; 8D31 F8 F8 FB FC FD FE FF FF  ........
        db   $00,$00,$01,$01,$02,$03,$04,$05 ; 8D39 00 00 01 01 02 03 04 05  ........
        db   $00                             ; 8D41 00                       .
        db   $70,$80,$78,$88,$68,$80,$70,$78 ; 8D42 70 80 78 88 68 80 70 78  p.x.h.px
        db   $77,$77,$67,$67,$67,$57,$57,$47 ; 8D4A 77 77 67 67 67 57 57 47  wwgggWWG
        db   $78                             ; 8D52 78                       x
        db   $58,$60,$60,$50,$70,$48,$7C,$50 ; 8D53 58 60 60 50 70 48 7C 50  X``PpH|P
        db   $88,$60,$98,$78,$A0,$80,$48,$58 ; 8D5B 88 60 98 78 A0 80 48 58  .`.x..HX
        db   $50,$40,$68,$38,$7C,$40,$90,$58 ; 8D63 50 40 68 38 7C 40 90 58  P@h8|@.X
        db   $A8,$80,$B0                     ; 8D6B A8 80 B0                 ...
        db   $01,$01,$03,$03,$03,$05,$05,$07 ; 8D6E 01 01 03 03 03 05 05 07  ........
        db   $11                             ; 8D76 11                       .
        db   $A1                             ; 8D77 A1                       .
        db   $D1                             ; 8D78 D1                       .
        db   $A3                             ; 8D79 A3                       .
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8D7A:
        brk                                     ; 8D7A 00                       .
        db   $AB,$FB                         ; 8D7B AB FB                    ..
; ----------------------------------------------------------------------------
        inc     $C7                             ; 8D7D E6 C7                    ..
        bne     BattleTurnEngine_Branch_8DF1    ; 8D7F D0 70                    .p
        lda     $C7                             ; 8D81 A5 C7                    ..
        pha                                     ; 8D83 48                       H
        ldx     #$01                            ; 8D84 A2 01                    ..
BattleTurnEngine_Branch_8D86:
        lda     #$BA                            ; 8D86 A9 BA                    ..
        sta     $6E45,x                         ; 8D88 9D 45 6E                 .En
        sta     $7206,x                         ; 8D8B 9D 06 72                 ..r
        lda     #$01                            ; 8D8E A9 01                    ..
        sta     $6E49,x                         ; 8D90 9D 49 6E                 .In
        stx     $C6                             ; 8D93 86 C6                    ..
        stx     $C7                             ; 8D95 86 C7                    ..
        lda     $7385                           ; 8D97 AD 85 73                 ..s
        sta     $7385,x                         ; 8D9A 9D 85 73                 ..s
        lda     $7392                           ; 8D9D AD 92 73                 ..s
        sta     $7392,x                         ; 8DA0 9D 92 73                 ..s
        lda     $0440                           ; 8DA3 AD 40 04                 .@.
        sta     $0440,x                         ; 8DA6 9D 40 04                 .@.
        lda     $0448                           ; 8DA9 AD 48 04                 .H.
        sta     $0448,x                         ; 8DAC 9D 48 04                 .H.
        lda     $0444                           ; 8DAF AD 44 04                 .D.
        sta     $0444,x                         ; 8DB2 9D 44 04                 .D.
        txa                                     ; 8DB5 8A                       .
        asl     a                               ; 8DB6 0A                       .
        sta     $06A0,x                         ; 8DB7 9D A0 06                 ...
        jsr     BattleTurnEngine_Entry_93D2     ; 8DBA 20 D2 93                  ..
        inc     $C6                             ; 8DBD E6 C6                    ..
        inc     $C7                             ; 8DBF E6 C7                    ..
        ldx     $C7                             ; 8DC1 A6 C7                    ..
        cpx     #$04                            ; 8DC3 E0 04                    ..
        bcc     BattleTurnEngine_Branch_8D86    ; 8DC5 90 BF                    ..
        pla                                     ; 8DC7 68                       h
        sta     $C7                             ; 8DC8 85 C7                    ..
        jsr     BattleTurnEngine_Entry_8E2F     ; 8DCA 20 2F 8E                  /.
        jsr     BattleTurnEngine_Entry_8E6B     ; 8DCD 20 6B 8E                  k.
        jsr     BattleTurnEngine_Entry_8E9D     ; 8DD0 20 9D 8E                  ..
        lda     #$00                            ; 8DD3 A9 00                    ..
        sta     $00                           ; 8DD5 85 00                    ..
        jsr     BattleTurnEngine_Entry_8F9C     ; 8DD7 20 9C 8F                  ..
        lda     #$B0                            ; 8DDA A9 B0                    ..
        sta     $02                             ; 8DDC 85 02                    ..
        jsr     BattleTurnEngine_Entry_8DFE     ; 8DDE 20 FE 8D                  ..
        ldx     #$00                            ; 8DE1 A2 00                    ..
        lda     #$FC                            ; 8DE3 A9 FC                    ..
BattleTurnEngine_Branch_8DE5:
        clc                                     ; 8DE5 18                       .
        adc     #$07                            ; 8DE6 69 07                    i.
        sta     $0698,x                         ; 8DE8 9D 98 06                 ...
        inx                                     ; 8DEB E8                       .
        cpx     #$04                            ; 8DEC E0 04                    ..
        bcc     BattleTurnEngine_Branch_8DE5    ; 8DEE 90 F5                    ..
        rts                                     ; 8DF0 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8DF1:
        jsr     BattleTurnEngine_Entry_8E6B     ; 8DF1 20 6B 8E                  k.
        jsr     BattleTurnEngine_Entry_8E9D     ; 8DF4 20 9D 8E                  ..
        lda     #$00                            ; 8DF7 A9 00                    ..
        sta     $02                             ; 8DF9 85 02                    ..
        jmp     BattleTurnEngine_Entry_8DFE     ; 8DFB 4C FE 8D                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8DFE:
        lda     #$00                            ; 8DFE A9 00                    ..
        sta     $01                             ; 8E00 85 01                    ..
        lda     #$01                            ; 8E02 A9 01                    ..
        sta     $00                           ; 8E04 85 00                    ..
BattleTurnEngine_Branch_8E06:
        lda     $02                             ; 8E06 A5 02                    ..
        sta     $03                             ; 8E08 85 03                    ..
BattleTurnEngine_Branch_8E0A:
        lda     $00                           ; 8E0A A5 00                    ..
        lsr     a                               ; 8E0C 4A                       J
        bcs     BattleTurnEngine_Branch_8E15    ; 8E0D B0 06                    ..
        jsr     BattleTurnEngine_Entry_8F9C     ; 8E0F 20 9C 8F                  ..
        jmp     BattleTurnEngine_Branch_8E18    ; 8E12 4C 18 8E                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8E15:
        jsr     BattleTurnEngine_Entry_8F3A     ; 8E15 20 3A 8F                  :.
BattleTurnEngine_Branch_8E18:
        php                                     ; 8E18 08                       .
        jsr     BattleTurnEngine_Entry_8ED9     ; 8E19 20 D9 8E                  ..
        plp                                     ; 8E1C 28                       (
        bcc     BattleTurnEngine_Branch_8E0A    ; 8E1D 90 EB                    ..
        inc     $00                           ; 8E1F E6 00                    ..
        lda     $00                           ; 8E21 A5 00                    ..
        cmp     #$05                            ; 8E23 C9 05                    ..
        bcc     BattleTurnEngine_Branch_8E06    ; 8E25 90 DF                    ..
        inc     $00                           ; 8E27 E6 00                    ..
        jsr     BattleTurnEngine_Entry_8F9C     ; 8E29 20 9C 8F                  ..
        jmp     BattleTurnEngine_Entry_8ED9     ; 8E2C 4C D9 8E                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8E2F:
        ldx     #$00                            ; 8E2F A2 00                    ..
        lda     #$A1                            ; 8E31 A9 A1                    ..
        sta     $04                             ; 8E33 85 04                    ..
        lda     #$6D                            ; 8E35 A9 6D                    .m
        sta     $05                             ; 8E37 85 05                    ..
BattleTurnEngine_Branch_8E39:
        lda     $04                             ; 8E39 A5 04                    ..
        sta     $0300,x                         ; 8E3B 9D 00 03                 ...
        inx                                     ; 8E3E E8                       .
        lda     #$06                            ; 8E3F A9 06                    ..
        sta     $0300,x                         ; 8E41 9D 00 03                 ...
        inx                                     ; 8E44 E8                       .
        lda     $05                             ; 8E45 A5 05                    ..
        sta     $0300,x                         ; 8E47 9D 00 03                 ...
        clc                                     ; 8E4A 18                       .
        adc     #$20                            ; 8E4B 69 20                    i
        sta     $05                             ; 8E4D 85 05                    ..
        bcc     BattleTurnEngine_Branch_8E53    ; 8E4F 90 02                    ..
        inc     $04                             ; 8E51 E6 04                    ..
BattleTurnEngine_Branch_8E53:
        inx                                     ; 8E53 E8                       .
        lda     #$00                            ; 8E54 A9 00                    ..
        ldy     #$06                            ; 8E56 A0 06                    ..
BattleTurnEngine_Branch_8E58:
        sta     $0300,x                         ; 8E58 9D 00 03                 ...
        inx                                     ; 8E5B E8                       .
        dey                                     ; 8E5C 88                       .
        bne     BattleTurnEngine_Branch_8E58    ; 8E5D D0 F9                    ..
        cpx     #$36                            ; 8E5F E0 36                    .6
        bcc     BattleTurnEngine_Branch_8E39    ; 8E61 90 D6                    ..
        lda     #$06                            ; 8E63 A9 06                    ..
        sta     $050B                           ; 8E65 8D 0B 05                 ...
        jmp     UpperFixedEngine_Entry_C62D     ; 8E68 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8E6B:
        lda     #$A3                            ; 8E6B A9 A3                    ..
        sta     $0300                           ; 8E6D 8D 00 03                 ...
        lda     #$18                            ; 8E70 A9 18                    ..
        sta     $0301                           ; 8E72 8D 01 03                 ...
        lda     #$D0                            ; 8E75 A9 D0                    ..
        sta     NextTextCharacter               ; 8E77 8D 02 03                 ...
        lda     #$50                            ; 8E7A A9 50                    .P
        ldx     #$00                            ; 8E7C A2 00                    ..
BattleTurnEngine_Branch_8E7E:
        sta     $0303,x                         ; 8E7E 9D 03 03                 ...
        sta     $0410,x                         ; 8E81 9D 10 04                 ...
        inx                                     ; 8E84 E8                       .
        cpx     #$08                            ; 8E85 E0 08                    ..
        bcc     BattleTurnEngine_Branch_8E7E    ; 8E87 90 F5                    ..
        lda     #$55                            ; 8E89 A9 55                    .U
        cpx     #$10                            ; 8E8B E0 10                    ..
        bcc     BattleTurnEngine_Branch_8E7E    ; 8E8D 90 EF                    ..
        lda     #$05                            ; 8E8F A9 05                    ..
        cpx     #$18                            ; 8E91 E0 18                    ..
        bcc     BattleTurnEngine_Branch_8E7E    ; 8E93 90 E9                    ..
        lda     #$01                            ; 8E95 A9 01                    ..
        sta     $050B                           ; 8E97 8D 0B 05                 ...
        jmp     UpperFixedEngine_Entry_C62D     ; 8E9A 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8E9D:
        ldx     #$03                            ; 8E9D A2 03                    ..
BattleTurnEngine_Branch_8E9F:
        lda     $8ECD,x                         ; 8E9F BD CD 8E                 ...
        sta     $0200,x                         ; 8EA2 9D 00 02                 ...
        dex                                     ; 8EA5 CA                       .
        bpl     BattleTurnEngine_Branch_8E9F    ; 8EA6 10 F7                    ..
        lda     #$80                            ; 8EA8 A9 80                    ..
        sta     $0300                           ; 8EAA 8D 00 03                 ...
        lda     #$10                            ; 8EAD A9 10                    ..
        sta     $0301                           ; 8EAF 8D 01 03                 ...
        lda     #$00                            ; 8EB2 A9 00                    ..
        sta     NextTextCharacter               ; 8EB4 8D 02 03                 ...
        ldx     #$07                            ; 8EB7 A2 07                    ..
BattleTurnEngine_Branch_8EB9:
        lda     $8ED1,x                         ; 8EB9 BD D1 8E                 ...
        sta     $0303,x                         ; 8EBC 9D 03 03                 ...
        sta     $030B,x                         ; 8EBF 9D 0B 03                 ...
        dex                                     ; 8EC2 CA                       .
        bpl     BattleTurnEngine_Branch_8EB9    ; 8EC3 10 F4                    ..
        lda     #$01                            ; 8EC5 A9 01                    ..
        sta     $050B                           ; 8EC7 8D 0B 05                 ...
        jmp     UpperFixedEngine_Entry_C62D     ; 8ECA 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
        db   $4A,$00,$20,$20                 ; 8ECD 4A 00 20 20              J.
        db   $00,$00,$00,$FF,$00,$00,$00,$00 ; 8ED1 00 00 00 FF 00 00 00 00  ........
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8ED9:
        jsr     WaitForNmi                      ; 8ED9 20 74 FF                  t.
        ldy     #$01                            ; 8EDC A0 01                    ..
        ldx     #$80                            ; 8EDE A2 80                    ..
BattleTurnEngine_Branch_8EE0:
        nop                                     ; 8EE0 EA                       .
        dex                                     ; 8EE1 CA                       .
        bne     BattleTurnEngine_Branch_8EE0    ; 8EE2 D0 FC                    ..
        dey                                     ; 8EE4 88                       .
        bne     BattleTurnEngine_Branch_8EE0    ; 8EE5 D0 F9                    ..
BattleTurnEngine_Branch_8EE7:
        bit     PPUSTATUS                       ; 8EE7 2C 02 20                 ,.
        bvc     BattleTurnEngine_Branch_8EE7    ; 8EEA 50 FB                    P.
        ldx     #$20                            ; 8EEC A2 20                    .
BattleTurnEngine_Branch_8EEE:
        dex                                     ; 8EEE CA                       .
        bpl     BattleTurnEngine_Branch_8EEE    ; 8EEF 10 FD                    ..
        ldx     $01                             ; 8EF1 A6 01                    ..
        lda     $02,x                           ; 8EF3 B5 02                    ..
        sta     PPUSCROLL                       ; 8EF5 8D 05 20                 ..
        lda     $0509                           ; 8EF8 AD 09 05                 ...
        sta     PPUSCROLL                       ; 8EFB 8D 05 20                 ..
        lda     $C7                             ; 8EFE A5 C7                    ..
        bne     BattleTurnEngine_Branch_8F0A    ; 8F00 D0 08                    ..
        lda     #$91                            ; 8F02 A9 91                    ..
        ldy     $00                           ; 8F04 A4 00                    ..
        cpy     #$01                            ; 8F06 C0 01                    ..
        beq     BattleTurnEngine_Branch_8F14    ; 8F08 F0 0A                    ..
BattleTurnEngine_Branch_8F0A:
        lda     $0505                           ; 8F0A AD 05 05                 ...
        lsr     a                               ; 8F0D 4A                       J
        pha                                     ; 8F0E 48                       H
        lda     $02,x                           ; 8F0F B5 02                    ..
        asl     a                               ; 8F11 0A                       .
        pla                                     ; 8F12 68                       h
        rol     a                               ; 8F13 2A                       *
BattleTurnEngine_Branch_8F14:
        sta     PPUCTRL                         ; 8F14 8D 00 20                 ..
        ldx     #$06                            ; 8F17 A2 06                    ..
        ldy     #$80                            ; 8F19 A0 80                    ..
BattleTurnEngine_Branch_8F1B:
        dey                                     ; 8F1B 88                       .
        bne     BattleTurnEngine_Branch_8F1B    ; 8F1C D0 FD                    ..
        dex                                     ; 8F1E CA                       .
        bne     BattleTurnEngine_Branch_8F1B    ; 8F1F D0 FA                    ..
        lda     $0508                           ; 8F21 AD 08 05                 ...
        sta     PPUSCROLL                       ; 8F24 8D 05 20                 ..
        lda     $0509                           ; 8F27 AD 09 05                 ...
        sta     PPUSCROLL                       ; 8F2A 8D 05 20                 ..
        lda     $0505                           ; 8F2D AD 05 05                 ...
        sta     PPUCTRL                         ; 8F30 8D 00 20                 ..
        lda     $01                             ; 8F33 A5 01                    ..
        eor     #$01                            ; 8F35 49 01                    I.
        sta     $01                             ; 8F37 85 01                    ..
        rts                                     ; 8F39 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8F3A:
        lda     $C7                             ; 8F3A A5 C7                    ..
        bne     BattleTurnEngine_Branch_8F5C    ; 8F3C D0 1E                    ..
        lda     $00                           ; 8F3E A5 00                    ..
        and     #$06                            ; 8F40 29 06                    ).
        ora     $01                             ; 8F42 05 01                    ..
        tay                                     ; 8F44 A8                       .
        ldx     $01                             ; 8F45 A6 01                    ..
        lda     $8F90,y                         ; 8F47 B9 90 8F                 ...
        cmp     $02,x                           ; 8F4A D5 02                    ..
        bne     BattleTurnEngine_Branch_8F54    ; 8F4C D0 06                    ..
        cpx     #$00                            ; 8F4E E0 00                    ..
        beq     BattleTurnEngine_Branch_8F5A    ; 8F50 F0 08                    ..
        sec                                     ; 8F52 38                       8
        rts                                     ; 8F53 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8F54:
        cpx     #$00                            ; 8F54 E0 00                    ..
        bne     BattleTurnEngine_Branch_8F74    ; 8F56 D0 1C                    ..
        inc     $02                             ; 8F58 E6 02                    ..
BattleTurnEngine_Branch_8F5A:
        clc                                     ; 8F5A 18                       .
        rts                                     ; 8F5B 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8F5C:
        sta     $04                             ; 8F5C 85 04                    ..
        dec     $04                             ; 8F5E C6 04                    ..
        asl     $04                             ; 8F60 06 04                    ..
        lda     $00                           ; 8F62 A5 00                    ..
        lsr     a                               ; 8F64 4A                       J
        clc                                     ; 8F65 18                       .
        adc     $04                             ; 8F66 65 04                    e.
        tay                                     ; 8F68 A8                       .
        lda     $8F94,y                         ; 8F69 B9 94 8F                 ...
        cmp     $03                             ; 8F6C C5 03                    ..
        beq     BattleTurnEngine_Branch_8F8F    ; 8F6E F0 1F                    ..
        cpy     #$02                            ; 8F70 C0 02                    ..
        bcs     BattleTurnEngine_Branch_8F78    ; 8F72 B0 04                    ..
BattleTurnEngine_Branch_8F74:
        dec     $03                             ; 8F74 C6 03                    ..
        clc                                     ; 8F76 18                       .
        rts                                     ; 8F77 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_8F78:
        cpy     #$04                            ; 8F78 C0 04                    ..
        bcs     BattleTurnEngine_Branch_8F82    ; 8F7A B0 06                    ..
        cpy     #$02                            ; 8F7C C0 02                    ..
        beq     BattleTurnEngine_Branch_8F74    ; 8F7E F0 F4                    ..
        bne     BattleTurnEngine_Branch_8F8C    ; 8F80 D0 0A                    ..
BattleTurnEngine_Branch_8F82:
        cpy     #$06                            ; 8F82 C0 06                    ..
        bcs     BattleTurnEngine_Branch_8F8C    ; 8F84 B0 06                    ..
        cpy     #$04                            ; 8F86 C0 04                    ..
        beq     BattleTurnEngine_Branch_8F8C    ; 8F88 F0 02                    ..
        bne     BattleTurnEngine_Branch_8F74    ; 8F8A D0 E8                    ..
BattleTurnEngine_Branch_8F8C:
        inc     $03                             ; 8F8C E6 03                    ..
        clc                                     ; 8F8E 18                       .
BattleTurnEngine_Branch_8F8F:
        rts                                     ; 8F8F 60                       `
; ----------------------------------------------------------------------------
        db   $E8,$78,$00,$C8                 ; 8F90 E8 78 00 C8              .x..
        db   $90,$C8,$90,$38,$70,$C8,$70,$38 ; 8F94 90 C8 90 38 70 C8 70 38  ...8p.p8
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_8F9C:
        lda     $C7                             ; 8F9C A5 C7                    ..
        asl     a                               ; 8F9E 0A                       .
        asl     a                               ; 8F9F 0A                       .
        sta     $04                             ; 8FA0 85 04                    ..
        lda     $00                           ; 8FA2 A5 00                    ..
        lsr     a                               ; 8FA4 4A                       J
        clc                                     ; 8FA5 18                       .
        adc     $04                             ; 8FA6 65 04                    e.
        tax                                     ; 8FA8 AA                       .
        lda     $8FE6,x                         ; 8FA9 BD E6 8F                 ...
        sta     $04                             ; 8FAC 85 04                    ..
        ldx     #$00                            ; 8FAE A2 00                    ..
        ldy     #$00                            ; 8FB0 A0 00                    ..
BattleTurnEngine_Branch_8FB2:
        lda     #$00                            ; 8FB2 A9 00                    ..
        sta     $05                             ; 8FB4 85 05                    ..
BattleTurnEngine_Branch_8FB6:
        lda     $8FFA,x                         ; 8FB6 BD FA 8F                 ...
        sta     $0300,y                         ; 8FB9 99 00 03                 ...
        lda     $05                             ; 8FBC A5 05                    ..
        cmp     #$02                            ; 8FBE C9 02                    ..
        bne     BattleTurnEngine_Branch_8FCB    ; 8FC0 D0 09                    ..
        lda     $8FFA,x                         ; 8FC2 BD FA 8F                 ...
        clc                                     ; 8FC5 18                       .
        adc     $04                             ; 8FC6 65 04                    e.
        sta     $0300,y                         ; 8FC8 99 00 03                 ...
BattleTurnEngine_Branch_8FCB:
        inx                                     ; 8FCB E8                       .
        iny                                     ; 8FCC C8                       .
        inc     $05                             ; 8FCD E6 05                    ..
        lda     $05                             ; 8FCF A5 05                    ..
        cmp     #$09                            ; 8FD1 C9 09                    ..
        bcc     BattleTurnEngine_Branch_8FB6    ; 8FD3 90 E1                    ..
        cpx     #$36                            ; 8FD5 E0 36                    .6
        bcc     BattleTurnEngine_Branch_8FB2    ; 8FD7 90 D9                    ..
        lda     #$06                            ; 8FD9 A9 06                    ..
        sta     $050B                           ; 8FDB 8D 0B 05                 ...
        lda     $1F                             ; 8FDE A5 1F                    ..
        ora     #$20                            ; 8FE0 09 20                    .
        sta     $1F                             ; 8FE2 85 1F                    ..
        sec                                     ; 8FE4 38                       8
        rts                                     ; 8FE5 60                       `
; ----------------------------------------------------------------------------
        db   $00,$0E,$07,$15,$00,$0E,$07,$15 ; 8FE6 00 0E 07 15 00 0E 07 15  ........
        db   $07,$15,$00,$0E,$0E,$00,$07,$15 ; 8FEE 07 15 00 0E 0E 00 07 15  ........
        db   $15,$07,$00,$0E                 ; 8FF6 15 07 00 0E              ....
        db   $A1,$06,$63,$92,$9E,$AA,$A9,$9D ; 8FFA A1 06 63 92 9E AA A9 9D  ..c.....
        db   $91,$A1,$06,$83,$94,$A0,$AC,$AB ; 9002 91 A1 06 83 94 A0 AC AB  ........
        db   $9F,$93,$A1,$06,$A3,$96,$A2,$AE ; 900A 9F 93 A1 06 A3 96 A2 AE  ........
        db   $AD,$A1,$95,$A1,$06,$C3,$98,$A4 ; 9012 AD A1 95 A1 06 C3 98 A4  ........
        db   $B0,$AF,$A3,$97,$A1,$06,$E3,$9A ; 901A B0 AF A3 97 A1 06 E3 9A  ........
        db   $A6,$B2,$B1,$A5,$99,$A2,$06,$03 ; 9022 A6 B2 B1 A5 99 A2 06 03  ........
        db   $9C,$A8,$B4,$B3,$A7,$9B         ; 902A 9C A8 B4 B3 A7 9B        ......
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9030:
        jsr     BattleTurnEngine_Entry_A0B4     ; 9030 20 B4 A0                  ..
        jsr     BattleTurnEngine_Entry_9ED1     ; 9033 20 D1 9E                  ..
        ldx     $C7                             ; 9036 A6 C7                    ..
        lda     $0698,x                         ; 9038 BD 98 06                 ...
        asl     a                               ; 903B 0A                       .
        asl     a                               ; 903C 0A                       .
        asl     a                               ; 903D 0A                       .
        sta     $04                             ; 903E 85 04                    ..
        ldy     #$07                            ; 9040 A0 07                    ..
BattleTurnEngine_Branch_9042:
        tya                                     ; 9042 98                       .
        and     #$02                            ; 9043 29 02                    ).
        pha                                     ; 9045 48                       H
        asl     a                               ; 9046 0A                       .
        asl     a                               ; 9047 0A                       .
        adc     #$5A                            ; 9048 69 5A                    iZ
        sta     $00                           ; 904A 85 00                    ..
        pla                                     ; 904C 68                       h
        lsr     a                               ; 904D 4A                       J
        adc     #$08                            ; 904E 69 08                    i.
        cpy     #$04                            ; 9050 C0 04                    ..
        bcc     BattleTurnEngine_Branch_905A    ; 9052 90 06                    ..
        sty     $01                             ; 9054 84 01                    ..
        lda     #$01                            ; 9056 A9 01                    ..
        bne     BattleTurnEngine_Branch_9063    ; 9058 D0 09                    ..
BattleTurnEngine_Branch_905A:
        sta     $01                             ; 905A 85 01                    ..
        tya                                     ; 905C 98                       .
        and     #$01                            ; 905D 29 01                    ).
        beq     BattleTurnEngine_Branch_9063    ; 905F F0 02                    ..
        lda     #$40                            ; 9061 A9 40                    .@
BattleTurnEngine_Branch_9063:
        sta     $02                             ; 9063 85 02                    ..
        tya                                     ; 9065 98                       .
        and     #$01                            ; 9066 29 01                    ).
        asl     a                               ; 9068 0A                       .
        asl     a                               ; 9069 0A                       .
        asl     a                               ; 906A 0A                       .
        adc     #$10                            ; 906B 69 10                    i.
        adc     $04                             ; 906D 65 04                    e.
        sta     $03                             ; 906F 85 03                    ..
        ldx     #$00                            ; 9071 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 9073 20 3E C7                  >.
        dey                                     ; 9076 88                       .
        bpl     BattleTurnEngine_Branch_9042    ; 9077 10 C9                    ..
        jsr     WaitForNmi                      ; 9079 20 74 FF                  t.
        lda     #$02                            ; 907C A9 02                    ..
        ldx     #$06                            ; 907E A2 06                    ..
        jsr     BattleTurnEngine_Entry_9099     ; 9080 20 99 90                  ..
        ldx     #$2D                            ; 9083 A2 2D                    .-
        jsr     UpperFixedEngine_Entry_C90C     ; 9085 20 0C C9                  ..
        lda     #$FC                            ; 9088 A9 FC                    ..
        ldx     #$02                            ; 908A A2 02                    ..
        jsr     BattleTurnEngine_Entry_9099     ; 908C 20 99 90                  ..
        jsr     BattleTurnEngine_Entry_9C17     ; 908F 20 17 9C                  ..
        lda     $1F                             ; 9092 A5 1F                    ..
        and     #$F7                            ; 9094 29 F7                    ).
        sta     $1F                             ; 9096 85 1F                    ..
        rts                                     ; 9098 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9099:
        sta     $04                             ; 9099 85 04                    ..
BattleTurnEngine_Branch_909B:
        txa                                     ; 909B 8A                       .
        pha                                     ; 909C 48                       H
        ldy     #$04                            ; 909D A0 04                    ..
BattleTurnEngine_Branch_909F:
        ldx     #$00                            ; 909F A2 00                    ..
        jsr     UpperFixedEngine_Entry_C770     ; 90A1 20 70 C7                  p.
        lda     $00                           ; 90A4 A5 00                    ..
        clc                                     ; 90A6 18                       .
        adc     $04                             ; 90A7 65 04                    e.
        sta     $00                           ; 90A9 85 00                    ..
        ldx     #$00                            ; 90AB A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 90AD 20 3E C7                  >.
        iny                                     ; 90B0 C8                       .
        cpy     #$08                            ; 90B1 C0 08                    ..
        bcc     BattleTurnEngine_Branch_909F    ; 90B3 90 EA                    ..
        jsr     WaitForNmi                      ; 90B5 20 74 FF                  t.
        pla                                     ; 90B8 68                       h
        tax                                     ; 90B9 AA                       .
        dex                                     ; 90BA CA                       .
        bpl     BattleTurnEngine_Branch_909B    ; 90BB 10 DE                    ..
        rts                                     ; 90BD 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_90BE:
        lda     $C7                             ; 90BE A5 C7                    ..
        pha                                     ; 90C0 48                       H
        jsr     BattleTurnEngine_Entry_9ED1     ; 90C1 20 D1 9E                  ..
        ldy     #$32                            ; 90C4 A0 32                    .2
        jsr     BattleTurnEngine_Entry_9E76     ; 90C6 20 76 9E                  v.
        cmp     #$0B                            ; 90C9 C9 0B                    ..
        beq     BattleTurnEngine_Branch_90CF    ; 90CB F0 02                    ..
        ldy     #$29                            ; 90CD A0 29                    .)
BattleTurnEngine_Branch_90CF:
        jsr     BattleTurnEngine_Entry_9BE4     ; 90CF 20 E4 9B                  ..
        cpy     $C9                             ; 90D2 C4 C9                    ..
        pla                                     ; 90D4 68                       h
        sta     $C7                             ; 90D5 85 C7                    ..
        rts                                     ; 90D7 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_90D8:
        jsr     BattleTurnEngine_Entry_9ED1     ; 90D8 20 D1 9E                  ..
        jsr     BattleTurnEngine_Entry_9E76     ; 90DB 20 76 9E                  v.
        stx     $C6                             ; 90DE 86 C6                    ..
        sta     $C4                             ; 90E0 85 C4                    ..
        jsr     BattleTurnEngine_Entry_9320     ; 90E2 20 20 93                   .
        lda     $D3                             ; 90E5 A5 D3                    ..
        sta     $7392,x                         ; 90E7 9D 92 73                 ..s
        ldx     $C7                             ; 90EA A6 C7                    ..
        lda     #$26                            ; 90EC A9 26                    .&
        sta     $06A0,x                         ; 90EE 9D A0 06                 ...
        jsr     BattleTurnEngine_Entry_9822     ; 90F1 20 22 98                  ".
        jsr     BattleTurnEngine_Entry_9CBA     ; 90F4 20 BA 9C                  ..
        bcc     BattleTurnEngine_Branch_911F    ; 90F7 90 26                    .&
        sta     $05                             ; 90F9 85 05                    ..
        jsr     UpperFixedEngine_Entry_C891     ; 90FB 20 91 C8                  ..
        cmp     #$98                            ; 90FE C9 98                    ..
        bcc     BattleTurnEngine_Branch_911F    ; 9100 90 1D                    ..
        jsr     BattleTurnEngine_Entry_914E     ; 9102 20 4E 91                  N.
        lda     $C7                             ; 9105 A5 C7                    ..
        pha                                     ; 9107 48                       H
        lda     $7B                             ; 9108 A5 7B                    .{
        sta     $C7                             ; 910A 85 C7                    ..
        jsr     BattleTurnEngine_Entry_9E8F     ; 910C 20 8F 9E                  ..
        jsr     BattleTurnEngine_Entry_9ED1     ; 910F 20 D1 9E                  ..
        lda     $05                             ; 9112 A5 05                    ..
        jsr     BattleTurnEngine_Entry_8583     ; 9114 20 83 85                  ..
        pla                                     ; 9117 68                       h
        sta     $C7                             ; 9118 85 C7                    ..
        jsr     BattleTurnEngine_Entry_913F     ; 911A 20 3F 91                  ?.
        sec                                     ; 911D 38                       8
        rts                                     ; 911E 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_911F:
        lda     $D3                             ; 911F A5 D3                    ..
        pha                                     ; 9121 48                       H
        lda     #$00                            ; 9122 A9 00                    ..
        ldx     $C6                             ; 9124 A6 C6                    ..
        sta     $7392,x                         ; 9126 9D 92 73                 ..s
        jsr     BattleTurnEngine_Entry_9A40     ; 9129 20 40 9A                  @.
        ldx     $C6                             ; 912C A6 C6                    ..
        pla                                     ; 912E 68                       h
        sta     $7392,x                         ; 912F 9D 92 73                 ..s
        lda     #$00                            ; 9132 A9 00                    ..
        jsr     BattleTurnEngine_Entry_915D     ; 9134 20 5D 91                  ].
        jsr     BattleTurnEngine_Entry_913F     ; 9137 20 3F 91                  ?.
        jsr     BattleTurnEngine_Entry_9822     ; 913A 20 22 98                  ".
        clc                                     ; 913D 18                       .
        rts                                     ; 913E 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_913F:
        lda     #$00                            ; 913F A9 00                    ..
        ldx     $C6                             ; 9141 A6 C6                    ..
        sta     $7392,x                         ; 9143 9D 92 73                 ..s
        lda     #$FF                            ; 9146 A9 FF                    ..
        ldx     $C7                             ; 9148 A6 C7                    ..
        sta     $06A0,x                         ; 914A 9D A0 06                 ...
        rts                                     ; 914D 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_914E:
        lda     $05                             ; 914E A5 05                    ..
        ldx     $C7                             ; 9150 A6 C7                    ..
        sec                                     ; 9152 38                       8
        sbc     $0698,x                         ; 9153 FD 98 06                 ...
        bcs     BattleTurnEngine_Entry_915D     ; 9156 B0 05                    ..
        eor     #$FF                            ; 9158 49 FF                    I.
        tax                                     ; 915A AA                       .
        inx                                     ; 915B E8                       .
        txa                                     ; 915C 8A                       .
BattleTurnEngine_Entry_915D:
        lsr     a                               ; 915D 4A                       J
        sta     $04                             ; 915E 85 04                    ..
        lda     #$00                            ; 9160 A9 00                    ..
        sta     $06                             ; 9162 85 06                    ..
BattleTurnEngine_Branch_9164:
        ldx     $C6                             ; 9164 A6 C6                    ..
        lda     $7392,x                         ; 9166 BD 92 73                 ..s
        sta     $07                             ; 9169 85 07                    ..
        ldx     $C7                             ; 916B A6 C7                    ..
        lda     $06A0,x                         ; 916D BD A0 06                 ...
        sta     $08                             ; 9170 85 08                    ..
BattleTurnEngine_Branch_9172:
        ldy     $08                             ; 9172 A4 08                    ..
        ldx     #$00                            ; 9174 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C770     ; 9176 20 70 C7                  p.
        lda     $05                             ; 9179 A5 05                    ..
        ldx     $C7                             ; 917B A6 C7                    ..
        cmp     $0698,x                         ; 917D DD 98 06                 ...
        lda     $04                             ; 9180 A5 04                    ..
        bcs     BattleTurnEngine_Branch_9189    ; 9182 B0 05                    ..
        eor     #$FF                            ; 9184 49 FF                    I.
        tax                                     ; 9186 AA                       .
        inx                                     ; 9187 E8                       .
        txa                                     ; 9188 8A                       .
BattleTurnEngine_Branch_9189:
        clc                                     ; 9189 18                       .
        adc     $03                             ; 918A 65 03                    e.
        sta     $03                             ; 918C 85 03                    ..
        ldx     $06                             ; 918E A6 06                    ..
        lda     $91C1,x                         ; 9190 BD C1 91                 ...
        clc                                     ; 9193 18                       .
        adc     $00                           ; 9194 65 00                    e.
        sta     $00                           ; 9196 85 00                    ..
        ldy     $08                             ; 9198 A4 08                    ..
        ldx     #$00                            ; 919A A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 919C 20 3E C7                  >.
        inc     $08                             ; 919F E6 08                    ..
        dec     $07                             ; 91A1 C6 07                    ..
        bne     BattleTurnEngine_Branch_9172    ; 91A3 D0 CD                    ..
        jsr     WaitForNmi                      ; 91A5 20 74 FF                  t.
        inc     $06                             ; 91A8 E6 06                    ..
        lda     $06                             ; 91AA A5 06                    ..
        cmp     #$10                            ; 91AC C9 10                    ..
        bne     BattleTurnEngine_Branch_9164    ; 91AE D0 B4                    ..
        ldy     #$26                            ; 91B0 A0 26                    .&
        lda     #$1A                            ; 91B2 A9 1A                    ..
        sta     $04                             ; 91B4 85 04                    ..
        jsr     BattleTurnEngine_Entry_9C1D     ; 91B6 20 1D 9C                  ..
        jsr     WaitForNmi                      ; 91B9 20 74 FF                  t.
        lda     #$00                            ; 91BC A9 00                    ..
        sta     $D3                             ; 91BE 85 D3                    ..
        rts                                     ; 91C0 60                       `
; ----------------------------------------------------------------------------
        db   $E4,$E7,$F4,$F7,$FB,$FF,$FF,$FF ; 91C1 E4 E7 F4 F7 FB FF FF FF  ........
        db   $01,$01,$01,$05,$09,$0C,$19,$1C ; 91C9 01 01 01 05 09 0C 19 1C  ........
        db   $50,$06                         ; 91D1 50 06                    P.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_91D3:
        lda     #$F7                            ; 91D3 A9 F7                    ..
        sta     $00                           ; 91D5 85 00                    ..
        sta     $01                             ; 91D7 85 01                    ..
        sta     $02                             ; 91D9 85 02                    ..
        sta     $03                             ; 91DB 85 03                    ..
        ldy     #$3F                            ; 91DD A0 3F                    .?
BattleTurnEngine_Branch_91DF:
        ldx     #$00                            ; 91DF A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 91E1 20 3E C7                  >.
        dey                                     ; 91E4 88                       .
        bpl     BattleTurnEngine_Branch_91DF    ; 91E5 10 F8                    ..
        lda     #$FF                            ; 91E7 A9 FF                    ..
        ldx     #$18                            ; 91E9 A2 18                    ..
BattleTurnEngine_Branch_91EB:
        sta     $05FC,x                         ; 91EB 9D FC 05                 ...
        dex                                     ; 91EE CA                       .
        bpl     BattleTurnEngine_Branch_91EB    ; 91EF 10 FA                    ..
        jsr     WaitForNmi                      ; 91F1 20 74 FF                  t.
        jsr     UpperFixedEngine_Entry_C5B9     ; 91F4 20 B9 C5                  ..
        jsr     WaitForNmi                      ; 91F7 20 74 FF                  t.
        lda     $0514                           ; 91FA AD 14 05                 ...
        sta     $05FD                           ; 91FD 8D FD 05                 ...
        lda     #$00                            ; 9200 A9 00                    ..
        ldx     #$19                            ; 9202 A2 19                    ..
BattleTurnEngine_Branch_9204:
        sta     $C0,x                           ; 9204 95 C0                    ..
        dex                                     ; 9206 CA                       .
        bpl     BattleTurnEngine_Branch_9204    ; 9207 10 FB                    ..
        ldx     #$03                            ; 9209 A2 03                    ..
BattleTurnEngine_Branch_920B:
        sta     $738D,x                         ; 920B 9D 8D 73                 ..s
        dex                                     ; 920E CA                       .
        bpl     BattleTurnEngine_Branch_920B    ; 920F 10 FA                    ..
        ldx     #$59                            ; 9211 A2 59                    .Y
BattleTurnEngine_Branch_9213:
        sta     $0650,x                         ; 9213 9D 50 06                 .P.
        dex                                     ; 9216 CA                       .
        bpl     BattleTurnEngine_Branch_9213    ; 9217 10 FA                    ..
        ldx     #$3F                            ; 9219 A2 3F                    .?
BattleTurnEngine_Branch_921B:
        sta     $0440,x                         ; 921B 9D 40 04                 .@.
        dex                                     ; 921E CA                       .
        bpl     BattleTurnEngine_Branch_921B    ; 921F 10 FA                    ..
        ldx     #$0B                            ; 9221 A2 0B                    ..
BattleTurnEngine_Branch_9223:
        sta     $6E4D,x                         ; 9223 9D 4D 6E                 .Mn
        dex                                     ; 9226 CA                       .
        bpl     BattleTurnEngine_Branch_9223    ; 9227 10 FA                    ..
        sta     $0508                           ; 9229 8D 08 05                 ...
        sta     $0509                           ; 922C 8D 09 05                 ...
        lda     #$8D                            ; 922F A9 8D                    ..
        sta     $CC                             ; 9231 85 CC                    ..
        sta     $0468                           ; 9233 8D 68 04                 .h.
        lda     #$01                            ; 9236 A9 01                    ..
        sta     $CB                             ; 9238 85 CB                    ..
        sta     $045A                           ; 923A 8D 5A 04                 .Z.
        lda     #$FF                            ; 923D A9 FF                    ..
        ldx     #$03                            ; 923F A2 03                    ..
BattleTurnEngine_Branch_9241:
        sta     $0440,x                         ; 9241 9D 40 04                 .@.
        dex                                     ; 9244 CA                       .
        bpl     BattleTurnEngine_Branch_9241    ; 9245 10 FA                    ..
        ldx     #$0D                            ; 9247 A2 0D                    ..
BattleTurnEngine_Branch_9249:
        sta     $044C,x                         ; 9249 9D 4C 04                 .L.
        dex                                     ; 924C CA                       .
        bpl     BattleTurnEngine_Branch_9249    ; 924D 10 FA                    ..
BattleTurnEngine_Entry_924F:
        lda     #$00                            ; 924F A9 00                    ..
        tax                                     ; 9251 AA                       .
BattleTurnEngine_Branch_9252:
        sta     $0480,x                         ; 9252 9D 80 04                 ...
        inx                                     ; 9255 E8                       .
        cpx     #$70                            ; 9256 E0 70                    .p
        bcc     BattleTurnEngine_Branch_9252    ; 9258 90 F8                    ..
        ldx     #$12                            ; 925A A2 12                    ..
BattleTurnEngine_Branch_925C:
        sta     $064F,x                         ; 925C 9D 4F 06                 .O.
        dex                                     ; 925F CA                       .
        bne     BattleTurnEngine_Branch_925C    ; 9260 D0 FA                    ..
        ldx     #$90                            ; 9262 A2 90                    ..
BattleTurnEngine_Branch_9264:
        sta     $75FF,x                         ; 9264 9D FF 75                 ..u
        dex                                     ; 9267 CA                       .
        bne     BattleTurnEngine_Branch_9264    ; 9268 D0 FA                    ..
        rts                                     ; 926A 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_926B:
        ldx     #$00                            ; 926B A2 00                    ..
        lda     #$08                            ; 926D A9 08                    ..
BattleTurnEngine_Branch_926F:
        sec                                     ; 926F 38                       8
        sbc     $6E49,x                         ; 9270 FD 49 6E                 .In
        bcs     BattleTurnEngine_Branch_927D    ; 9273 B0 08                    ..
        adc     $6E49,x                         ; 9275 7D 49 6E                 }In
        sta     $6E49,x                         ; 9278 9D 49 6E                 .In
        lda     #$00                            ; 927B A9 00                    ..
BattleTurnEngine_Branch_927D:
        inx                                     ; 927D E8                       .
        cpx     #$04                            ; 927E E0 04                    ..
        bne     BattleTurnEngine_Branch_926F    ; 9280 D0 ED                    ..
        ldx     #$03                            ; 9282 A2 03                    ..
BattleTurnEngine_Branch_9284:
        lda     $6E49,x                         ; 9284 BD 49 6E                 .In
        bne     BattleTurnEngine_Branch_928E    ; 9287 D0 05                    ..
        lda     #$FF                            ; 9289 A9 FF                    ..
        sta     $6E45,x                         ; 928B 9D 45 6E                 .En
BattleTurnEngine_Branch_928E:
        dex                                     ; 928E CA                       .
        bpl     BattleTurnEngine_Branch_9284    ; 928F 10 F3                    ..
BattleTurnEngine_Branch_9291:
        rts                                     ; 9291 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9292:
        lda     $6E45                           ; 9292 AD 45 6E                 .En
        cmp     #$AE                            ; 9295 C9 AE                    ..
        beq     BattleTurnEngine_Branch_9291    ; 9297 F0 F8                    ..
        lda     #$00                            ; 9299 A9 00                    ..
        sta     $C4                             ; 929B 85 C4                    ..
        jsr     BattleTurnEngine_Entry_969C     ; 929D 20 9C 96                  ..
        lda     #$91                            ; 92A0 A9 91                    ..
        sta     $0468                           ; 92A2 8D 68 04                 .h.
        lda     #$04                            ; 92A5 A9 04                    ..
        sta     $CB                             ; 92A7 85 CB                    ..
        sta     $045A                           ; 92A9 8D 5A 04                 .Z.
        lda     #$D0                            ; 92AC A9 D0                    ..
        sta     $00                           ; 92AE 85 00                    ..
        lda     #$18                            ; 92B0 A9 18                    ..
        sta     $01                             ; 92B2 85 01                    ..
        lda     #$80                            ; 92B4 A9 80                    ..
        sta     $02                             ; 92B6 85 02                    ..
        lda     #$40                            ; 92B8 A9 40                    .@
        sta     $03                             ; 92BA 85 03                    ..
        lda     #$00                            ; 92BC A9 00                    ..
        sta     $04                             ; 92BE 85 04                    ..
        ldx     #$00                            ; 92C0 A2 00                    ..
        lda     PPUSTATUS                       ; 92C2 AD 02 20                 ..
        lda     $01                             ; 92C5 A5 01                    ..
        sta     PPUADDR                         ; 92C7 8D 06 20                 ..
        lda     $00                           ; 92CA A5 00                    ..
        sta     PPUADDR                         ; 92CC 8D 06 20                 ..
        lda     PPUDATA                         ; 92CF AD 07 20                 ..
BattleTurnEngine_Branch_92D2:
        lda     PPUDATA                         ; 92D2 AD 07 20                 ..
        sta     $0303,x                         ; 92D5 9D 03 03                 ...
        inx                                     ; 92D8 E8                       .
        cpx     $03                             ; 92D9 E4 03                    ..
        bcc     BattleTurnEngine_Branch_92D2    ; 92DB 90 F5                    ..
        ldx     #$02                            ; 92DD A2 02                    ..
BattleTurnEngine_Branch_92DF:
        lda     $02,x                           ; 92DF B5 02                    ..
        sta     $0300,x                         ; 92E1 9D 00 03                 ...
        dex                                     ; 92E4 CA                       .
        bpl     BattleTurnEngine_Branch_92DF    ; 92E5 10 F8                    ..
        lda     #$01                            ; 92E7 A9 01                    ..
        sta     $050B                           ; 92E9 8D 0B 05                 ...
        jmp     UpperFixedEngine_Entry_C62D     ; 92EC 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_92EF:
        jsr     BattleTurnEngine_Entry_9320     ; 92EF 20 20 93                   .
        tya                                     ; 92F2 98                       .
        pha                                     ; 92F3 48                       H
        lda     $C4                             ; 92F4 A5 C4                    ..
        cmp     #$0B                            ; 92F6 C9 0B                    ..
        beq     BattleTurnEngine_Branch_930D    ; 92F8 F0 13                    ..
        cmp     #$4B                            ; 92FA C9 4B                    .K
        beq     BattleTurnEngine_Branch_930D    ; 92FC F0 0F                    ..
        cmp     #$AE                            ; 92FE C9 AE                    ..
        bne     BattleTurnEngine_Branch_9306    ; 9300 D0 04                    ..
        lda     #$0D                            ; 9302 A9 0D                    ..
        bne     BattleTurnEngine_Branch_930F    ; 9304 D0 09                    ..
BattleTurnEngine_Branch_9306:
        lda     $6E45                           ; 9306 AD 45 6E                 .En
        cmp     #$BA                            ; 9309 C9 BA                    ..
        bne     BattleTurnEngine_Branch_9311    ; 930B D0 04                    ..
BattleTurnEngine_Branch_930D:
        lda     #$00                            ; 930D A9 00                    ..
BattleTurnEngine_Branch_930F:
        sta     $D3                             ; 930F 85 D3                    ..
BattleTurnEngine_Branch_9311:
        ldy     $C6                             ; 9311 A4 C6                    ..
        lda     $D2                             ; 9313 A5 D2                    ..
        sta     $7385,y                         ; 9315 99 85 73                 ..s
        lda     $D3                             ; 9318 A5 D3                    ..
        sta     $7392,y                         ; 931A 99 92 73                 ..s
        pla                                     ; 931D 68                       h
        tay                                     ; 931E A8                       .
        rts                                     ; 931F 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9320:
        txa                                     ; 9320 8A                       .
        pha                                     ; 9321 48                       H
        tya                                     ; 9322 98                       .
        pha                                     ; 9323 48                       H
        lda     $C4                             ; 9324 A5 C4                    ..
        cmp     #$AE                            ; 9326 C9 AE                    ..
        bne     BattleTurnEngine_Branch_933C    ; 9328 D0 12                    ..
        lda     #$0E                            ; 932A A9 0E                    ..
        sta     $D2                             ; 932C 85 D2                    ..
        lda     #$00                            ; 932E A9 00                    ..
        sta     $D3                             ; 9330 85 D3                    ..
        lda     #$73                            ; 9332 A9 73                    .s
        sta     $D4                             ; 9334 85 D4                    ..
        lda     #$2E                            ; 9336 A9 2E                    ..
        sta     $D5                             ; 9338 85 D5                    ..
        bne     BattleTurnEngine_Branch_93A6    ; 933A D0 6A                    .j
BattleTurnEngine_Branch_933C:
        jsr     Bank14_LoadMonsterGraphicsDescriptor; 933C 20 A9 9F              ..
        lda     $CD                             ; 933F A5 CD                    ..
        sta     $C0                             ; 9341 85 C0                    ..
        lda     $CE                             ; 9343 A5 CE                    ..
        sta     $C1                             ; 9345 85 C1                    ..
        ldx     #$00                            ; 9347 A2 00                    ..
        stx     $D4                             ; 9349 86 D4                    ..
        stx     $D5                             ; 934B 86 D5                    ..
        stx     $D3                             ; 934D 86 D3                    ..
        stx     $D2                             ; 934F 86 D2                    ..
BattleTurnEngine_Branch_9351:
        jsr     Bank14_SelectMonsterGraphicsBank; 9351 20 26 9F                  &.
        jsr     Bank14_RefillMonsterGraphicsInput; 9354 20 66 9F                 f.
        jsr     Bank14_ReadMonsterGraphicsByte  ; 9357 20 8D 9F                  ..
        pha                                     ; 935A 48                       H
        and     #$40                            ; 935B 29 40                    )@
        beq     BattleTurnEngine_Branch_9371    ; 935D F0 12                    ..
        jsr     Bank14_ReadMonsterGraphicsByte  ; 935F 20 8D 9F                  ..
        and     #$0F                            ; 9362 29 0F                    ).
        cmp     $D2                             ; 9364 C5 D2                    ..
        bcc     BattleTurnEngine_Branch_936A    ; 9366 90 02                    ..
        sta     $D2                             ; 9368 85 D2                    ..
BattleTurnEngine_Branch_936A:
        inc     $D5                             ; 936A E6 D5                    ..
        pla                                     ; 936C 68                       h
        bpl     BattleTurnEngine_Branch_9351    ; 936D 10 E2                    ..
        bmi     BattleTurnEngine_Branch_9389    ; 936F 30 18                    0.
BattleTurnEngine_Branch_9371:
        jsr     BattleTurnEngine_Entry_9F9F     ; 9371 20 9F 9F                  ..
        jsr     Bank14_ReadMonsterGraphicsByte  ; 9374 20 8D 9F                  ..
        clc                                     ; 9377 18                       .
        adc     #$4F                            ; 9378 69 4F                    iO
        cpx     #$40                            ; 937A E0 40                    .@
        bcs     BattleTurnEngine_Branch_9381    ; 937C B0 03                    ..
        sta     $0650,x                         ; 937E 9D 50 06                 .P.
BattleTurnEngine_Branch_9381:
        inx                                     ; 9381 E8                       .
        inc     $D3                             ; 9382 E6 D3                    ..
        pla                                     ; 9384 68                       h
        bpl     BattleTurnEngine_Branch_9351    ; 9385 10 CA                    ..
        inc     $D4                             ; 9387 E6 D4                    ..
BattleTurnEngine_Branch_9389:
        jsr     BattleTurnEngine_Entry_9FEB     ; 9389 20 EB 9F                  ..
        dec     $D1                             ; 938C C6 D1                    ..
        bne     BattleTurnEngine_Branch_9351    ; 938E D0 C1                    ..
        inc     $D2                             ; 9390 E6 D2                    ..
        lda     $C4                             ; 9392 A5 C4                    ..
        cmp     #$58                            ; 9394 C9 58                    .X
        beq     BattleTurnEngine_Branch_93A4    ; 9396 F0 0C                    ..
        cmp     #$6C                            ; 9398 C9 6C                    .l
        beq     BattleTurnEngine_Branch_93A4    ; 939A F0 08                    ..
        cmp     #$83                            ; 939C C9 83                    ..
        beq     BattleTurnEngine_Branch_93A4    ; 939E F0 04                    ..
        cmp     #$7E                            ; 93A0 C9 7E                    .~
        bne     BattleTurnEngine_Branch_93A6    ; 93A2 D0 02                    ..
BattleTurnEngine_Branch_93A4:
        inc     $D2                             ; 93A4 E6 D2                    ..
BattleTurnEngine_Branch_93A6:
        pla                                     ; 93A6 68                       h
        tay                                     ; 93A7 A8                       .
        pla                                     ; 93A8 68                       h
        tax                                     ; 93A9 AA                       .
        rts                                     ; 93AA 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_93AB:
        ldx     #$00                            ; 93AB A2 00                    ..
        stx     $C7                             ; 93AD 86 C7                    ..
BattleTurnEngine_Branch_93AF:
        ldy     $6E45,x                         ; 93AF BC 45 6E                 .En
        stx     $C6                             ; 93B2 86 C6                    ..
        iny                                     ; 93B4 C8                       .
        beq     BattleTurnEngine_Branch_93CC    ; 93B5 F0 15                    ..
        ldy     #$00                            ; 93B7 A0 00                    ..
        sty     $C5                             ; 93B9 84 C5                    ..
BattleTurnEngine_Branch_93BB:
        jsr     BattleTurnEngine_Entry_9E8F     ; 93BB 20 8F 9E                  ..
        jsr     BattleTurnEngine_Entry_93D2     ; 93BE 20 D2 93                  ..
        inc     $C7                             ; 93C1 E6 C7                    ..
        inc     $C5                             ; 93C3 E6 C5                    ..
        lda     $C5                             ; 93C5 A5 C5                    ..
        cmp     $6E49,x                         ; 93C7 DD 49 6E                 .In
        bcc     BattleTurnEngine_Branch_93BB    ; 93CA 90 EF                    ..
BattleTurnEngine_Branch_93CC:
        inx                                     ; 93CC E8                       .
        cpx     #$04                            ; 93CD E0 04                    ..
        bne     BattleTurnEngine_Branch_93AF    ; 93CF D0 DE                    ..
        rts                                     ; 93D1 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_93D2:
        txa                                     ; 93D2 8A                       .
        pha                                     ; 93D3 48                       H
        tya                                     ; 93D4 98                       .
        pha                                     ; 93D5 48                       H
        ldx     $C7                             ; 93D6 A6 C7                    ..
        lda     $C6                             ; 93D8 A5 C6                    ..
        asl     a                               ; 93DA 0A                       .
        asl     a                               ; 93DB 0A                       .
        asl     a                               ; 93DC 0A                       .
        ora     $0690,x                         ; 93DD 1D 90 06                 ...
        sta     $0690,x                         ; 93E0 9D 90 06                 ...
        lda     $C5                             ; 93E3 A5 C5                    ..
        ora     $0690,x                         ; 93E5 1D 90 06                 ...
        ora     #$80                            ; 93E8 09 80                    ..
        sta     $0690,x                         ; 93EA 9D 90 06                 ...
        pla                                     ; 93ED 68                       h
        tay                                     ; 93EE A8                       .
        pla                                     ; 93EF 68                       h
        tax                                     ; 93F0 AA                       .
        rts                                     ; 93F1 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_93F2:
        jsr     BattleTurnEngine_Entry_94B1     ; 93F2 20 B1 94                  ..
BattleTurnEngine_Branch_93F5:
        jsr     BattleTurnEngine_Entry_9593     ; 93F5 20 93 95                  ..
        jsr     BattleTurnEngine_Entry_94C5     ; 93F8 20 C5 94                  ..
        bcc     BattleTurnEngine_Branch_9400    ; 93FB 90 03                    ..
        dec     $0476                           ; 93FD CE 76 04                 .v.
BattleTurnEngine_Branch_9400:
        dec     $D6                             ; 9400 C6 D6                    ..
        bpl     BattleTurnEngine_Branch_93F5    ; 9402 10 F1                    ..
        jsr     BattleTurnEngine_Entry_944D     ; 9404 20 4D 94                  M.
        bcs     BattleTurnEngine_Branch_942F    ; 9407 B0 26                    .&
        ldx     $0476                           ; 9409 AE 76 04                 .v.
        dex                                     ; 940C CA                       .
        bne     BattleTurnEngine_Branch_9437    ; 940D D0 28                    .(
BattleTurnEngine_Entry_940F:
        lda     $05FD                           ; 940F AD FD 05                 ...
        cmp     #$30                            ; 9412 C9 30                    .0
        bne     BattleTurnEngine_Branch_9431    ; 9414 D0 1B                    ..
        cmp     $0477                           ; 9416 CD 77 04                 .w.
        bne     BattleTurnEngine_Branch_9431    ; 9419 D0 16                    ..
BattleTurnEngine_Branch_941B:
        lda     $05FE                           ; 941B AD FE 05                 ...
        cmp     #$FF                            ; 941E C9 FF                    ..
        beq     BattleTurnEngine_Branch_942F    ; 9420 F0 0D                    ..
        cmp     $0478                           ; 9422 CD 78 04                 .x.
        bne     BattleTurnEngine_Branch_9437    ; 9425 D0 10                    ..
        lda     $05FF                           ; 9427 AD FF 05                 ...
        cmp     $0479                           ; 942A CD 79 04                 .y.
        bne     BattleTurnEngine_Branch_9437    ; 942D D0 08                    ..
BattleTurnEngine_Branch_942F:
        sec                                     ; 942F 38                       8
        rts                                     ; 9430 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9431:
        lda     $C4                             ; 9431 A5 C4                    ..
        cmp     #$F0                            ; 9433 C9 F0                    ..
        bcs     BattleTurnEngine_Branch_941B    ; 9435 B0 E4                    ..
BattleTurnEngine_Branch_9437:
        clc                                     ; 9437 18                       .
        rts                                     ; 9438 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9439:
        jsr     BattleTurnEngine_Entry_94B5     ; 9439 20 B5 94                  ..
        beq     BattleTurnEngine_Branch_942F    ; 943C F0 F1                    ..
BattleTurnEngine_Branch_943E:
        jsr     BattleTurnEngine_Entry_9593     ; 943E 20 93 95                  ..
        jsr     BattleTurnEngine_Entry_94C5     ; 9441 20 C5 94                  ..
        bcc     BattleTurnEngine_Branch_9449    ; 9444 90 03                    ..
        dec     $0476                           ; 9446 CE 76 04                 .v.
BattleTurnEngine_Branch_9449:
        dec     $D6                             ; 9449 C6 D6                    ..
        bpl     BattleTurnEngine_Branch_943E    ; 944B 10 F1                    ..
BattleTurnEngine_Entry_944D:
        ldx     #$00                            ; 944D A2 00                    ..
        stx     $D9                             ; 944F 86 D9                    ..
        lda     $D8                             ; 9451 A5 D8                    ..
        asl     a                               ; 9453 0A                       .
        adc     $D8                             ; 9454 65 D8                    e.
        tay                                     ; 9456 A8                       .
BattleTurnEngine_Branch_9457:
        lda     $05FD,y                         ; 9457 B9 FD 05                 ...
        cmp     #$FF                            ; 945A C9 FF                    ..
        bne     BattleTurnEngine_Branch_9460    ; 945C D0 02                    ..
        inc     $D9                             ; 945E E6 D9                    ..
BattleTurnEngine_Branch_9460:
        iny                                     ; 9460 C8                       .
        iny                                     ; 9461 C8                       .
        iny                                     ; 9462 C8                       .
        inx                                     ; 9463 E8                       .
        cpx     #$04                            ; 9464 E0 04                    ..
        bne     BattleTurnEngine_Branch_9457    ; 9466 D0 EF                    ..
        lda     $D9                             ; 9468 A5 D9                    ..
        cmp     $0476                           ; 946A CD 76 04                 .v.
        rts                                     ; 946D 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_946E:
        jsr     BattleTurnEngine_Entry_94B1     ; 946E 20 B1 94                  ..
BattleTurnEngine_Branch_9471:
        jsr     BattleTurnEngine_Entry_9593     ; 9471 20 93 95                  ..
        jsr     BattleTurnEngine_Entry_94C5     ; 9474 20 C5 94                  ..
        bcs     BattleTurnEngine_Branch_9487    ; 9477 B0 0E                    ..
        jsr     BattleTurnEngine_Entry_94EF     ; 9479 20 EF 94                  ..
        bcs     BattleTurnEngine_Branch_9487    ; 947C B0 09                    ..
        jsr     BattleTurnEngine_Entry_940F     ; 947E 20 0F 94                  ..
        bcc     BattleTurnEngine_Branch_9495    ; 9481 90 12                    ..
        lda     #$00                            ; 9483 A9 00                    ..
        sta     $D9                             ; 9485 85 D9                    ..
BattleTurnEngine_Branch_9487:
        jsr     BattleTurnEngine_Entry_952F     ; 9487 20 2F 95                  /.
        dec     $D6                             ; 948A C6 D6                    ..
        bpl     BattleTurnEngine_Branch_9471    ; 948C 10 E3                    ..
        lda     $0514                           ; 948E AD 14 05                 ...
        sta     $05FD                           ; 9491 8D FD 05                 ...
        sec                                     ; 9494 38                       8
BattleTurnEngine_Branch_9495:
        rts                                     ; 9495 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9496:
        jsr     BattleTurnEngine_Entry_94B5     ; 9496 20 B5 94                  ..
        beq     BattleTurnEngine_Branch_94AF    ; 9499 F0 14                    ..
BattleTurnEngine_Branch_949B:
        jsr     BattleTurnEngine_Entry_9593     ; 949B 20 93 95                  ..
        jsr     BattleTurnEngine_Entry_94C5     ; 949E 20 C5 94                  ..
        bcs     BattleTurnEngine_Branch_94A8    ; 94A1 B0 05                    ..
        jsr     BattleTurnEngine_Entry_94EF     ; 94A3 20 EF 94                  ..
        bcc     BattleTurnEngine_Branch_94B0    ; 94A6 90 08                    ..
BattleTurnEngine_Branch_94A8:
        jsr     BattleTurnEngine_Entry_952F     ; 94A8 20 2F 95                  /.
        dec     $D6                             ; 94AB C6 D6                    ..
        bpl     BattleTurnEngine_Branch_949B    ; 94AD 10 EC                    ..
BattleTurnEngine_Branch_94AF:
        sec                                     ; 94AF 38                       8
BattleTurnEngine_Branch_94B0:
        rts                                     ; 94B0 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_94B1:
        lda     #$00                            ; 94B1 A9 00                    ..
        beq     BattleTurnEngine_Branch_94B7    ; 94B3 F0 02                    ..
BattleTurnEngine_Entry_94B5:
        lda     #$04                            ; 94B5 A9 04                    ..
BattleTurnEngine_Branch_94B7:
        sta     $D8                             ; 94B7 85 D8                    ..
        jsr     BattleTurnEngine_Entry_9557     ; 94B9 20 57 95                  W.
        ldy     $0476                           ; 94BC AC 76 04                 .v.
        php                                     ; 94BF 08                       .
        dey                                     ; 94C0 88                       .
        sty     $D6                             ; 94C1 84 D6                    ..
        plp                                     ; 94C3 28                       (
        rts                                     ; 94C4 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_94C5:
        lda     #$00                            ; 94C5 A9 00                    ..
        sta     $D9                             ; 94C7 85 D9                    ..
BattleTurnEngine_Branch_94C9:
        lda     $D9                             ; 94C9 A5 D9                    ..
        asl     a                               ; 94CB 0A                       .
        adc     $D9                             ; 94CC 65 D9                    e.
        ldy     $D8                             ; 94CE A4 D8                    ..
        beq     BattleTurnEngine_Branch_94D4    ; 94D0 F0 02                    ..
        adc     #$0C                            ; 94D2 69 0C                    i.
BattleTurnEngine_Branch_94D4:
        tay                                     ; 94D4 A8                       .
        ldx     #$00                            ; 94D5 A2 00                    ..
BattleTurnEngine_Branch_94D7:
        lda     $0477,x                         ; 94D7 BD 77 04                 .w.
        cmp     $05FD,y                         ; 94DA D9 FD 05                 ...
        bne     BattleTurnEngine_Branch_94E6    ; 94DD D0 07                    ..
        iny                                     ; 94DF C8                       .
        inx                                     ; 94E0 E8                       .
        cpx     #$03                            ; 94E1 E0 03                    ..
        bcc     BattleTurnEngine_Branch_94D7    ; 94E3 90 F2                    ..
        rts                                     ; 94E5 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_94E6:
        inc     $D9                             ; 94E6 E6 D9                    ..
        lda     #$03                            ; 94E8 A9 03                    ..
        cmp     $D9                             ; 94EA C5 D9                    ..
        bcs     BattleTurnEngine_Branch_94C9    ; 94EC B0 DB                    ..
        rts                                     ; 94EE 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_94EF:
        ldy     #$00                            ; 94EF A0 00                    ..
        sty     $D9                             ; 94F1 84 D9                    ..
BattleTurnEngine_Branch_94F3:
        lda     $D9                             ; 94F3 A5 D9                    ..
        asl     a                               ; 94F5 0A                       .
        adc     $D9                             ; 94F6 65 D9                    e.
        ldy     $D8                             ; 94F8 A4 D8                    ..
        beq     BattleTurnEngine_Branch_94FE    ; 94FA F0 02                    ..
        adc     #$0C                            ; 94FC 69 0C                    i.
BattleTurnEngine_Branch_94FE:
        tax                                     ; 94FE AA                       .
        ldy     $05FD,x                         ; 94FF BC FD 05                 ...
        iny                                     ; 9502 C8                       .
        bne     BattleTurnEngine_Branch_9507    ; 9503 D0 02                    ..
        sec                                     ; 9505 38                       8
        rts                                     ; 9506 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9507:
        inc     $D9                             ; 9507 E6 D9                    ..
        lda     #$03                            ; 9509 A9 03                    ..
        cmp     $D9                             ; 950B C5 D9                    ..
        bcs     BattleTurnEngine_Branch_94F3    ; 950D B0 E4                    ..
        rts                                     ; 950F 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9510:
        lda     $0444,x                         ; 9510 BD 44 04                 .D.
        iny                                     ; 9513 C8                       .
BattleTurnEngine_Branch_9514:
        dey                                     ; 9514 88                       .
        beq     BattleTurnEngine_Branch_951C    ; 9515 F0 05                    ..
        lsr     a                               ; 9517 4A                       J
        lsr     a                               ; 9518 4A                       J
        jmp     BattleTurnEngine_Branch_9514    ; 9519 4C 14 95                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_951C:
        and     #$03                            ; 951C 29 03                    ).
        rts                                     ; 951E 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_951F:
        iny                                     ; 951F C8                       .
BattleTurnEngine_Branch_9520:
        dey                                     ; 9520 88                       .
        beq     BattleTurnEngine_Branch_9528    ; 9521 F0 05                    ..
        asl     a                               ; 9523 0A                       .
        asl     a                               ; 9524 0A                       .
        jmp     BattleTurnEngine_Branch_9520    ; 9525 4C 20 95                 L .
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9528:
        ora     $0444,x                         ; 9528 1D 44 04                 .D.
        sta     $0444,x                         ; 952B 9D 44 04                 .D.
        rts                                     ; 952E 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_952F:
        lda     $C6                             ; 952F A5 C6                    ..
        clc                                     ; 9531 18                       .
        adc     $D8                             ; 9532 65 D8                    e.
        tax                                     ; 9534 AA                       .
        ldy     $D6                             ; 9535 A4 D6                    ..
        lda     $D9                             ; 9537 A5 D9                    ..
        jsr     BattleTurnEngine_Entry_951F     ; 9539 20 1F 95                  ..
        ldx     #$00                            ; 953C A2 00                    ..
        lda     $D9                             ; 953E A5 D9                    ..
        asl     a                               ; 9540 0A                       .
        adc     $D9                             ; 9541 65 D9                    e.
        ldy     $D8                             ; 9543 A4 D8                    ..
        beq     BattleTurnEngine_Branch_9549    ; 9545 F0 02                    ..
        adc     #$0C                            ; 9547 69 0C                    i.
BattleTurnEngine_Branch_9549:
        tay                                     ; 9549 A8                       .
BattleTurnEngine_Branch_954A:
        lda     $0477,x                         ; 954A BD 77 04                 .w.
        sta     $05FD,y                         ; 954D 99 FD 05                 ...
        iny                                     ; 9550 C8                       .
        inx                                     ; 9551 E8                       .
        cpx     #$03                            ; 9552 E0 03                    ..
        bne     BattleTurnEngine_Branch_954A    ; 9554 D0 F4                    ..
        rts                                     ; 9556 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9557:
        txa                                     ; 9557 8A                       .
        pha                                     ; 9558 48                       H
        tya                                     ; 9559 98                       .
        pha                                     ; 955A 48                       H
        lda     $C4                             ; 955B A5 C4                    ..
        cmp     #$F0                            ; 955D C9 F0                    ..
        bcc     BattleTurnEngine_Branch_9565    ; 955F 90 04                    ..
        lda     #$01                            ; 9561 A9 01                    ..
        bne     BattleTurnEngine_Branch_9589    ; 9563 D0 24                    .$
BattleTurnEngine_Branch_9565:
        jsr     Bank14_LoadMonsterGraphicsDescriptor; 9565 20 A9 9F              ..
        lda     $CF                             ; 9568 A5 CF                    ..
        sta     $C0                             ; 956A 85 C0                    ..
        lda     $D0                             ; 956C A5 D0                    ..
        sta     $C1                             ; 956E 85 C1                    ..
        ldy     #$00                            ; 9570 A0 00                    ..
        lda     ($C0),y                         ; 9572 B1 C0                    ..
        jsr     BattleTurnEngine_Entry_9F9F     ; 9574 20 9F 9F                  ..
        ldx     $D8                             ; 9577 A6 D8                    ..
        bne     BattleTurnEngine_Branch_9589    ; 9579 D0 0E                    ..
        and     #$F0                            ; 957B 29 F0                    ).
        lsr     a                               ; 957D 4A                       J
        lsr     a                               ; 957E 4A                       J
        lsr     a                               ; 957F 4A                       J
        lsr     a                               ; 9580 4A                       J
        sta     $0476                           ; 9581 8D 76 04                 .v.
        pla                                     ; 9584 68                       h
        tay                                     ; 9585 A8                       .
        pla                                     ; 9586 68                       h
        tax                                     ; 9587 AA                       .
        rts                                     ; 9588 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9589:
        and     #$0F                            ; 9589 29 0F                    ).
        sta     $0476                           ; 958B 8D 76 04                 .v.
        pla                                     ; 958E 68                       h
        tay                                     ; 958F A8                       .
        pla                                     ; 9590 68                       h
        tax                                     ; 9591 AA                       .
        rts                                     ; 9592 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9593:
        lda     $C4                             ; 9593 A5 C4                    ..
        sbc     #$F0                            ; 9595 E9 F0                    ..
        bcc     BattleTurnEngine_Branch_95B1    ; 9597 90 18                    ..
        tax                                     ; 9599 AA                       .
        lda     $9673,x                         ; 959A BD 73 96                 .s.
        asl     a                               ; 959D 0A                       .
        tax                                     ; 959E AA                       .
        lda     $967C,x                         ; 959F BD 7C 96                 .|.
        sta     $0478                           ; 95A2 8D 78 04                 .x.
        lda     $967D,x                         ; 95A5 BD 7D 96                 .}.
        sta     $0479                           ; 95A8 8D 79 04                 .y.
        lda     #$30                            ; 95AB A9 30                    .0
        sta     $0477                           ; 95AD 8D 77 04                 .w.
        rts                                     ; 95B0 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_95B1:
        lda     $0476                           ; 95B1 AD 76 04                 .v.
        pha                                     ; 95B4 48                       H
        lda     $D6                             ; 95B5 A5 D6                    ..
        pha                                     ; 95B7 48                       H
        ldx     $D8                             ; 95B8 A6 D8                    ..
        bne     BattleTurnEngine_Branch_95CF    ; 95BA D0 13                    ..
        lda     #$04                            ; 95BC A9 04                    ..
        sta     $D8                             ; 95BE 85 D8                    ..
        jsr     BattleTurnEngine_Entry_9557     ; 95C0 20 57 95                  W.
        lda     #$00                            ; 95C3 A9 00                    ..
        sta     $D8                             ; 95C5 85 D8                    ..
        lda     $0476                           ; 95C7 AD 76 04                 .v.
        clc                                     ; 95CA 18                       .
        adc     $D6                             ; 95CB 65 D6                    e.
        sta     $D6                             ; 95CD 85 D6                    ..
BattleTurnEngine_Branch_95CF:
        asl     a                               ; 95CF 0A                       .
        adc     $D6                             ; 95D0 65 D6                    e.
        tay                                     ; 95D2 A8                       .
        ldx     #$00                            ; 95D3 A2 00                    ..
BattleTurnEngine_Branch_95D5:
        lda     ($C0),y                         ; 95D5 B1 C0                    ..
        sta     $0477,x                         ; 95D7 9D 77 04                 .w.
        iny                                     ; 95DA C8                       .
        inx                                     ; 95DB E8                       .
        cpx     #$03                            ; 95DC E0 03                    ..
        bne     BattleTurnEngine_Branch_95D5    ; 95DE D0 F5                    ..
        pla                                     ; 95E0 68                       h
        sta     $D6                             ; 95E1 85 D6                    ..
        pla                                     ; 95E3 68                       h
        sta     $0476                           ; 95E4 8D 76 04                 .v.
        rts                                     ; 95E7 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_95E8:
        jsr     BattleTurnEngine_Entry_9557     ; 95E8 20 57 95                  W.
        ldy     $0476                           ; 95EB AC 76 04                 .v.
        beq     BattleTurnEngine_Branch_964E    ; 95EE F0 5E                    .^
        dey                                     ; 95F0 88                       .
BattleTurnEngine_Branch_95F1:
        tya                                     ; 95F1 98                       .
        pha                                     ; 95F2 48                       H
        lda     $C6                             ; 95F3 A5 C6                    ..
        clc                                     ; 95F5 18                       .
        adc     $D8                             ; 95F6 65 D8                    e.
        tax                                     ; 95F8 AA                       .
        jsr     BattleTurnEngine_Entry_9510     ; 95F9 20 10 95                  ..
        sta     $D9                             ; 95FC 85 D9                    ..
        ldx     #$03                            ; 95FE A2 03                    ..
BattleTurnEngine_Branch_9600:
        cpx     $C6                             ; 9600 E4 C6                    ..
        beq     BattleTurnEngine_Branch_962A    ; 9602 F0 26                    .&
        ldy     $0440,x                         ; 9604 BC 40 04                 .@.
        sty     $C4                             ; 9607 84 C4                    ..
        iny                                     ; 9609 C8                       .
        beq     BattleTurnEngine_Branch_962A    ; 960A F0 1E                    ..
        jsr     BattleTurnEngine_Entry_9557     ; 960C 20 57 95                  W.
BattleTurnEngine_Branch_960F:
        dec     $0476                           ; 960F CE 76 04                 .v.
        lda     $0476                           ; 9612 AD 76 04                 .v.
        bmi     BattleTurnEngine_Branch_962A    ; 9615 30 13                    0.
        tay                                     ; 9617 A8                       .
        txa                                     ; 9618 8A                       .
        pha                                     ; 9619 48                       H
        clc                                     ; 961A 18                       .
        adc     $D8                             ; 961B 65 D8                    e.
        tax                                     ; 961D AA                       .
        jsr     BattleTurnEngine_Entry_9510     ; 961E 20 10 95                  ..
        tay                                     ; 9621 A8                       .
        pla                                     ; 9622 68                       h
        tax                                     ; 9623 AA                       .
        cpy     $D9                             ; 9624 C4 D9                    ..
        beq     BattleTurnEngine_Branch_9649    ; 9626 F0 21                    .!
        bne     BattleTurnEngine_Branch_960F    ; 9628 D0 E5                    ..
BattleTurnEngine_Branch_962A:
        dex                                     ; 962A CA                       .
        bpl     BattleTurnEngine_Branch_9600    ; 962B 10 D3                    ..
        txa                                     ; 962D 8A                       .
        pha                                     ; 962E 48                       H
        lda     $D9                             ; 962F A5 D9                    ..
        asl     a                               ; 9631 0A                       .
        clc                                     ; 9632 18                       .
        adc     $D9                             ; 9633 65 D9                    e.
        ldy     $D8                             ; 9635 A4 D8                    ..
        beq     BattleTurnEngine_Branch_963B    ; 9637 F0 02                    ..
        adc     #$0C                            ; 9639 69 0C                    i.
BattleTurnEngine_Branch_963B:
        tay                                     ; 963B A8                       .
        ldx     #$03                            ; 963C A2 03                    ..
        lda     #$FF                            ; 963E A9 FF                    ..
BattleTurnEngine_Branch_9640:
        sta     $05FD,y                         ; 9640 99 FD 05                 ...
        iny                                     ; 9643 C8                       .
        dex                                     ; 9644 CA                       .
        bne     BattleTurnEngine_Branch_9640    ; 9645 D0 F9                    ..
        pla                                     ; 9647 68                       h
        tax                                     ; 9648 AA                       .
BattleTurnEngine_Branch_9649:
        pla                                     ; 9649 68                       h
        tay                                     ; 964A A8                       .
        dey                                     ; 964B 88                       .
        bpl     BattleTurnEngine_Branch_95F1    ; 964C 10 A3                    ..
BattleTurnEngine_Branch_964E:
        rts                                     ; 964E 60                       `
; ----------------------------------------------------------------------------
        db   $A2,$03,$D0,$02                 ; 964F A2 03 D0 02              ....
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9653:
        ldx     #$00                            ; 9653 A2 00                    ..
BattleTurnEngine_Branch_9655:
        lda     $05FC,x                         ; 9655 BD FC 05                 ...
        sta     $0650,x                         ; 9658 9D 50 06                 .P.
        inx                                     ; 965B E8                       .
        cpx     #$19                            ; 965C E0 19                    ..
        bne     BattleTurnEngine_Branch_9655    ; 965E D0 F5                    ..
        rts                                     ; 9660 60                       `
; ----------------------------------------------------------------------------
        db   $A2,$03,$D0,$02                 ; 9661 A2 03 D0 02              ....
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9665:
        ldx     #$00                            ; 9665 A2 00                    ..
BattleTurnEngine_Branch_9667:
        lda     $0650,x                         ; 9667 BD 50 06                 .P.
        sta     $05FC,x                         ; 966A 9D FC 05                 ...
        inx                                     ; 966D E8                       .
        cpx     #$19                            ; 966E E0 19                    ..
        bne     BattleTurnEngine_Branch_9667    ; 9670 D0 F5                    ..
        rts                                     ; 9672 60                       `
; ----------------------------------------------------------------------------
        db   $00,$00,$02,$02,$01,$02,$02,$01 ; 9673 00 00 02 02 01 02 02 01  ........
        db   $00                             ; 967B 00                       .
        db   $12                             ; 967C 12                       .
        db   $1B,$06,$27,$25,$13             ; 967D 1B 06 27 25 13           ..'%.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9682:
        ldx     #$01                            ; 9682 A2 01                    ..
        bne     BattleTurnEngine_Branch_9688    ; 9684 D0 02                    ..
BattleTurnEngine_Entry_9686:
        ldx     #$00                            ; 9686 A2 00                    ..
BattleTurnEngine_Branch_9688:
        txa                                     ; 9688 8A                       .
        pha                                     ; 9689 48                       H
        jsr     BattleTurnEngine_Entry_9E1C     ; 968A 20 1C 9E                  ..
        pla                                     ; 968D 68                       h
        tax                                     ; 968E AA                       .
        bcs     BattleTurnEngine_Branch_969A    ; 968F B0 09                    ..
        lda     $CB,x                           ; 9691 B5 CB                    ..
        clc                                     ; 9693 18                       .
        adc     $D4,x                           ; 9694 75 D4                    u.
        bcc     BattleTurnEngine_Branch_969A    ; 9696 90 02                    ..
        clc                                     ; 9698 18                       .
        rts                                     ; 9699 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_969A:
        sec                                     ; 969A 38                       8
        rts                                     ; 969B 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_969C:
        jsr     BattleTurnEngine_Entry_9E1C     ; 969C 20 1C 9E                  ..
        bcs     BattleTurnEngine_Branch_9711    ; 969F B0 70                    .p
        jsr     BattleTurnEngine_Entry_9E0C     ; 96A1 20 0C 9E                  ..
        bcc     BattleTurnEngine_Branch_9711    ; 96A4 90 6B                    .k
        jsr     Bank14_LoadMonsterGraphicsDescriptor; 96A6 20 A9 9F              ..
        lda     $CD                             ; 96A9 A5 CD                    ..
        sta     $C0                             ; 96AB 85 C0                    ..
        lda     $CE                             ; 96AD A5 CE                    ..
        sta     $C1                             ; 96AF 85 C1                    ..
        ldx     $C8                             ; 96B1 A6 C8                    ..
        lda     $0468,x                         ; 96B3 BD 68 04                 .h.
        sta     $CC                             ; 96B6 85 CC                    ..
        lda     $045A,x                         ; 96B8 BD 5A 04                 .Z.
        sta     $CB                             ; 96BB 85 CB                    ..
        lda     $C4                             ; 96BD A5 C4                    ..
        bne     BattleTurnEngine_Branch_96C5    ; 96BF D0 04                    ..
        lda     #$8D                            ; 96C1 A9 8D                    ..
        sta     $CC                             ; 96C3 85 CC                    ..
BattleTurnEngine_Branch_96C5:
        jsr     Bank14_SelectMonsterGraphicsBank; 96C5 20 26 9F                  &.
        lda     $29                             ; 96C8 A5 29                    .)
        pha                                     ; 96CA 48                       H
BattleTurnEngine_Branch_96CB:
        lda     $C0                             ; 96CB A5 C0                    ..
        pha                                     ; 96CD 48                       H
        lda     $C1                             ; 96CE A5 C1                    ..
        pha                                     ; 96D0 48                       H
        lda     #$00                            ; 96D1 A9 00                    ..
        sta     $29                             ; 96D3 85 29                    .)
        lda     $C4                             ; 96D5 A5 C4                    ..
        cmp     #$AE                            ; 96D7 C9 AE                    ..
        bne     BattleTurnEngine_Branch_96E3    ; 96D9 D0 08                    ..
        lda     $D1                             ; 96DB A5 D1                    ..
        cmp     #$6A                            ; 96DD C9 6A                    .j
        bcs     BattleTurnEngine_Branch_96E3    ; 96DF B0 02                    ..
        inc     $29                             ; 96E1 E6 29                    .)
BattleTurnEngine_Branch_96E3:
        jsr     Bank14_DecodeMonsterGraphicsBitplanes; 96E3 20 12 97             ..
        pla                                     ; 96E6 68                       h
        sta     $C1                             ; 96E7 85 C1                    ..
        pla                                     ; 96E9 68                       h
        sta     $C0                             ; 96EA 85 C0                    ..
        jsr     BattleTurnEngine_Entry_9783     ; 96EC 20 83 97                  ..
        bcc     BattleTurnEngine_Branch_970E    ; 96EF 90 1D                    ..
        dec     $D1                             ; 96F1 C6 D1                    ..
        bne     BattleTurnEngine_Branch_96CB    ; 96F3 D0 D6                    ..
        ldx     $C8                             ; 96F5 A6 C8                    ..
        lda     $C4                             ; 96F7 A5 C4                    ..
        beq     BattleTurnEngine_Branch_96FE    ; 96F9 F0 03                    ..
        sta     $044C,x                         ; 96FB 9D 4C 04                 .L.
BattleTurnEngine_Branch_96FE:
        inx                                     ; 96FE E8                       .
        cpx     #$0E                            ; 96FF E0 0E                    ..
        beq     BattleTurnEngine_Branch_970D    ; 9701 F0 0A                    ..
        lda     $CB                             ; 9703 A5 CB                    ..
        sta     $045A,x                         ; 9705 9D 5A 04                 .Z.
        lda     $CC                             ; 9708 A5 CC                    ..
        sta     $0468,x                         ; 970A 9D 68 04                 .h.
BattleTurnEngine_Branch_970D:
        sec                                     ; 970D 38                       8
BattleTurnEngine_Branch_970E:
        pla                                     ; 970E 68                       h
        sta     $29                             ; 970F 85 29                    .)
BattleTurnEngine_Branch_9711:
        rts                                     ; 9711 60                       `
; ----------------------------------------------------------------------------
Bank14_DecodeMonsterGraphicsBitplanes:
        lda     #$00                            ; 9712 A9 00                    ..
        sta     $D6                             ; 9714 85 D6                    ..
        lda     #$FF                            ; 9716 A9 FF                    ..
        sta     $D7                             ; 9718 85 D7                    ..
        sta     $D8                             ; 971A 85 D8                    ..
BattleTurnEngine_Branch_971C:
        jsr     Bank14_RefillMonsterGraphicsInput; 971C 20 66 9F                 f.
        jsr     Bank14_ReadMonsterGraphicsByte  ; 971F 20 8D 9F                  ..
        tax                                     ; 9722 AA                       .
        ldy     $29                             ; 9723 A4 29                    .)
        bne     BattleTurnEngine_Branch_9731    ; 9725 D0 0A                    ..
        and     #$40                            ; 9727 29 40                    )@
        bne     BattleTurnEngine_Branch_972E    ; 9729 D0 03                    ..
        jsr     BattleTurnEngine_Entry_9F9F     ; 972B 20 9F 9F                  ..
BattleTurnEngine_Branch_972E:
        jsr     BattleTurnEngine_Entry_9F9F     ; 972E 20 9F 9F                  ..
BattleTurnEngine_Branch_9731:
        txa                                     ; 9731 8A                       .
        bpl     BattleTurnEngine_Branch_971C    ; 9732 10 E8                    ..
        lsr     a                               ; 9734 4A                       J
        and     #$04                            ; 9735 29 04                    ).
        beq     BattleTurnEngine_Branch_974A    ; 9737 F0 11                    ..
        bcc     BattleTurnEngine_Branch_9740    ; 9739 90 05                    ..
        jsr     Bank14_ReadMonsterGraphicsByte  ; 973B 20 8D 9F                  ..
        sta     $D6                             ; 973E 85 D6                    ..
BattleTurnEngine_Branch_9740:
        jsr     Bank14_ReadMonsterGraphicsByte  ; 9740 20 8D 9F                  ..
        sta     $D7                             ; 9743 85 D7                    ..
        jsr     Bank14_ReadMonsterGraphicsByte  ; 9745 20 8D 9F                  ..
        sta     $D8                             ; 9748 85 D8                    ..
BattleTurnEngine_Branch_974A:
        ldx     #$00                            ; 974A A2 00                    ..
        jsr     Bank14_RefillMonsterGraphicsInput; 974C 20 66 9F                 f.
BattleTurnEngine_Branch_974F:
        lda     $D6                             ; 974F A5 D6                    ..
        asl     $D7                             ; 9751 06 D7                    ..
        rol     $D8                             ; 9753 26 D8                    &.
        bcc     BattleTurnEngine_Branch_975A    ; 9755 90 03                    ..
        jsr     Bank14_ReadMonsterGraphicsByte  ; 9757 20 8D 9F                  ..
BattleTurnEngine_Branch_975A:
        sta     $0650,x                         ; 975A 9D 50 06                 .P.
        ldy     #$08                            ; 975D A0 08                    ..
BattleTurnEngine_Branch_975F:
        asl     a                               ; 975F 0A                       .
        ror     $0660,x                         ; 9760 7E 60 06                 ~`.
        dey                                     ; 9763 88                       .
        bne     BattleTurnEngine_Branch_975F    ; 9764 D0 F9                    ..
        inx                                     ; 9766 E8                       .
        cpx     #$10                            ; 9767 E0 10                    ..
        bne     BattleTurnEngine_Branch_974F    ; 9769 D0 E4                    ..
        ldx     #$00                            ; 976B A2 00                    ..
BattleTurnEngine_Branch_976D:
        txa                                     ; 976D 8A                       .
        ora     #$07                            ; 976E 09 07                    ..
        tay                                     ; 9770 A8                       .
BattleTurnEngine_Branch_9771:
        lda     $0650,x                         ; 9771 BD 50 06                 .P.
        sta     $0670,y                         ; 9774 99 70 06                 .p.
        inx                                     ; 9777 E8                       .
        dey                                     ; 9778 88                       .
        txa                                     ; 9779 8A                       .
        and     #$07                            ; 977A 29 07                    ).
        bne     BattleTurnEngine_Branch_9771    ; 977C D0 F3                    ..
        cpx     #$20                            ; 977E E0 20                    .
        bne     BattleTurnEngine_Branch_976D    ; 9780 D0 EB                    ..
        rts                                     ; 9782 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9783:
        lda     #$00                            ; 9783 A9 00                    ..
        sta     $D6                             ; 9785 85 D6                    ..
        jsr     Bank14_RefillMonsterGraphicsInput; 9787 20 66 9F                 f.
BattleTurnEngine_Branch_978A:
        jsr     Bank14_ReadMonsterGraphicsByte  ; 978A 20 8D 9F                  ..
        sta     $17                             ; 978D 85 17                    ..
        lsr     a                               ; 978F 4A                       J
        and     #$03                            ; 9790 29 03                    ).
        tax                                     ; 9792 AA                       .
        inx                                     ; 9793 E8                       .
        lda     $17                             ; 9794 A5 17                    ..
        and     #$40                            ; 9796 29 40                    )@
        bne     BattleTurnEngine_Branch_979B    ; 9798 D0 01                    ..
        tax                                     ; 979A AA                       .
BattleTurnEngine_Branch_979B:
        ldy     $29                             ; 979B A4 29                    .)
        bne     BattleTurnEngine_Branch_97A8    ; 979D D0 09                    ..
        txa                                     ; 979F 8A                       .
        bne     BattleTurnEngine_Branch_97A5    ; 97A0 D0 03                    ..
        jsr     BattleTurnEngine_Entry_9F9F     ; 97A2 20 9F 9F                  ..
BattleTurnEngine_Branch_97A5:
        jsr     BattleTurnEngine_Entry_9F9F     ; 97A5 20 9F 9F                  ..
BattleTurnEngine_Branch_97A8:
        txa                                     ; 97A8 8A                       .
        tay                                     ; 97A9 A8                       .
        iny                                     ; 97AA C8                       .
        lda     #$20                            ; 97AB A9 20                    .
BattleTurnEngine_Branch_97AD:
        lsr     a                               ; 97AD 4A                       J
        dey                                     ; 97AE 88                       .
        bne     BattleTurnEngine_Branch_97AD    ; 97AF D0 FC                    ..
        tay                                     ; 97B1 A8                       .
        and     $D6                             ; 97B2 25 D6                    %.
        bne     BattleTurnEngine_Branch_9814    ; 97B4 D0 5E                    .^
        tya                                     ; 97B6 98                       .
        ora     $D6                             ; 97B7 05 D6                    ..
        sta     $D6                             ; 97B9 85 D6                    ..
        ldy     #$10                            ; 97BB A0 10                    ..
        txa                                     ; 97BD 8A                       .
        bne     BattleTurnEngine_Branch_97C2    ; 97BE D0 02                    ..
        tay                                     ; 97C0 A8                       .
        inx                                     ; 97C1 E8                       .
BattleTurnEngine_Branch_97C2:
        sty     $1C                             ; 97C2 84 1C                    ..
        dex                                     ; 97C4 CA                       .
        txa                                     ; 97C5 8A                       .
        asl     a                               ; 97C6 0A                       .
        asl     a                               ; 97C7 0A                       .
        asl     a                               ; 97C8 0A                       .
        asl     a                               ; 97C9 0A                       .
        sta     $16                             ; 97CA 85 16                    ..
        lda     #$00                            ; 97CC A9 00                    ..
        sta     $1D                             ; 97CE 85 1D                    ..
        lda     $1C                             ; 97D0 A5 1C                    ..
        lsr     a                               ; 97D2 4A                       J
        lsr     a                               ; 97D3 4A                       J
        lsr     a                               ; 97D4 4A                       J
        lsr     a                               ; 97D5 4A                       J
        and     #$01                            ; 97D6 29 01                    ).
        tax                                     ; 97D8 AA                       .
        lda     $CB,x                           ; 97D9 B5 CB                    ..
        inc     $CB,x                           ; 97DB F6 CB                    ..
        bne     BattleTurnEngine_Branch_97E1    ; 97DD D0 02                    ..
        clc                                     ; 97DF 18                       .
        rts                                     ; 97E0 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_97E1:
        ldy     #$04                            ; 97E1 A0 04                    ..
BattleTurnEngine_Branch_97E3:
        lsr     a                               ; 97E3 4A                       J
        ror     $1D                             ; 97E4 66 1D                    f.
        dey                                     ; 97E6 88                       .
        bne     BattleTurnEngine_Branch_97E3    ; 97E7 D0 FA                    ..
        ora     $1C                             ; 97E9 05 1C                    ..
        sta     $1C                             ; 97EB 85 1C                    ..
        lda     PPUSTATUS                       ; 97ED AD 02 20                 ..
        lda     $1C                             ; 97F0 A5 1C                    ..
        sta     PPUADDR                         ; 97F2 8D 06 20                 ..
        lda     $1D                             ; 97F5 A5 1D                    ..
        sta     PPUADDR                         ; 97F7 8D 06 20                 ..
        ldx     $16                             ; 97FA A6 16                    ..
        ldy     #$10                            ; 97FC A0 10                    ..
BattleTurnEngine_Branch_97FE:
        lda     $0650,x                         ; 97FE BD 50 06                 .P.
        sta     PPUDATA                         ; 9801 8D 07 20                 ..
        inx                                     ; 9804 E8                       .
        dey                                     ; 9805 88                       .
        bne     BattleTurnEngine_Branch_97FE    ; 9806 D0 F6                    ..
        lda     $0508                           ; 9808 AD 08 05                 ...
        sta     PPUSCROLL                       ; 980B 8D 05 20                 ..
        lda     $0509                           ; 980E AD 09 05                 ...
        sta     PPUSCROLL                       ; 9811 8D 05 20                 ..
BattleTurnEngine_Branch_9814:
        lda     $17                             ; 9814 A5 17                    ..
        bmi     BattleTurnEngine_Branch_981B    ; 9816 30 03                    0.
        jmp     BattleTurnEngine_Branch_978A    ; 9818 4C 8A 97                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_981B:
        jsr     BattleTurnEngine_Entry_9FEB     ; 981B 20 EB 9F                  ..
        sec                                     ; 981E 38                       8
        rts                                     ; 981F 60                       `
; ----------------------------------------------------------------------------
        db   $50,$06                         ; 9820 50 06                    P.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9822:
        lda     $C9                             ; 9822 A5 C9                    ..
        pha                                     ; 9824 48                       H
        ldy     $C7                             ; 9825 A4 C7                    ..
        lda     $0690,y                         ; 9827 B9 90 06                 ...
        bpl     BattleTurnEngine_Branch_987F    ; 982A 10 53                    .S
        jsr     BattleTurnEngine_Entry_9E76     ; 982C 20 76 9E                  v.
        sta     $C4                             ; 982F 85 C4                    ..
        stx     $C6                             ; 9831 86 C6                    ..
        lda     $7385,x                         ; 9833 BD 85 73                 ..s
        sta     $D2                             ; 9836 85 D2                    ..
        lda     $0698,y                         ; 9838 B9 98 06                 ...
        sta     $D6                             ; 983B 85 D6                    ..
        lda     $06A0,y                         ; 983D B9 A0 06                 ...
        sta     $C9                             ; 9840 85 C9                    ..
        lda     $C4                             ; 9842 A5 C4                    ..
        cmp     #$F0                            ; 9844 C9 F0                    ..
        bcs     BattleTurnEngine_Branch_9873    ; 9846 B0 2B                    .+
        jsr     Bank14_LoadMonsterGraphicsDescriptor; 9848 20 A9 9F              ..
        lda     $6E45                           ; 984B AD 45 6E                 .En
        cmp     #$AE                            ; 984E C9 AE                    ..
        bne     BattleTurnEngine_Branch_9856    ; 9850 D0 04                    ..
        lda     #$36                            ; 9852 A9 36                    .6
        sta     $D1                             ; 9854 85 D1                    ..
BattleTurnEngine_Branch_9856:
        lda     $CD                             ; 9856 A5 CD                    ..
        sta     $C0                             ; 9858 85 C0                    ..
        lda     $CE                             ; 985A A5 CE                    ..
        sta     $C1                             ; 985C 85 C1                    ..
        lda     $C4                             ; 985E A5 C4                    ..
        beq     BattleTurnEngine_Branch_986A    ; 9860 F0 08                    ..
        cmp     #$A9                            ; 9862 C9 A9                    ..
        beq     BattleTurnEngine_Branch_986A    ; 9864 F0 04                    ..
        cmp     #$4D                            ; 9866 C9 4D                    .M
        bne     BattleTurnEngine_Branch_9873    ; 9868 D0 09                    ..
BattleTurnEngine_Branch_986A:
        lda     #$8D                            ; 986A A9 8D                    ..
        sta     $CC                             ; 986C 85 CC                    ..
        dec     $CC                             ; 986E C6 CC                    ..
        jmp     BattleTurnEngine_Branch_9891    ; 9870 4C 91 98                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9873:
        ldy     #$00                            ; 9873 A0 00                    ..
BattleTurnEngine_Branch_9875:
        cmp     $044C,y                         ; 9875 D9 4C 04                 .L.
        beq     BattleTurnEngine_Branch_9883    ; 9878 F0 09                    ..
        iny                                     ; 987A C8                       .
        cpy     #$0D                            ; 987B C0 0D                    ..
        bne     BattleTurnEngine_Branch_9875    ; 987D D0 F6                    ..
BattleTurnEngine_Branch_987F:
        clc                                     ; 987F 18                       .
        jmp     BattleTurnEngine_Branch_9A38    ; 9880 4C 38 9A                 L8.
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9883:
        lda     $045A,y                         ; 9883 B9 5A 04                 .Z.
        sta     $CB                             ; 9886 85 CB                    ..
        dec     $CB                             ; 9888 C6 CB                    ..
        lda     $0468,y                         ; 988A B9 68 04                 .h.
        sta     $CC                             ; 988D 85 CC                    ..
        dec     $CC                             ; 988F C6 CC                    ..
BattleTurnEngine_Branch_9891:
        jsr     BattleTurnEngine_Entry_9D21     ; 9891 20 21 9D                  !.
        jsr     BattleTurnEngine_Entry_924F     ; 9894 20 4F 92                  O.
        lda     $C4                             ; 9897 A5 C4                    ..
        cmp     #$F0                            ; 9899 C9 F0                    ..
        bcc     BattleTurnEngine_Branch_98F5    ; 989B 90 58                    .X
        inc     $CC                             ; 989D E6 CC                    ..
        ldy     #$00                            ; 989F A0 00                    ..
        sty     $00                           ; 98A1 84 00                    ..
        sty     $01                             ; 98A3 84 01                    ..
BattleTurnEngine_Branch_98A5:
        ldx     #$00                            ; 98A5 A2 00                    ..
        stx     $02                             ; 98A7 86 02                    ..
BattleTurnEngine_Branch_98A9:
        ldy     $00                           ; 98A9 A4 00                    ..
        lda     $9A3C,y                         ; 98AB B9 3C 9A                 .<.
        asl     a                               ; 98AE 0A                       .
        ldx     $02                             ; 98AF A6 02                    ..
        ora     $9A3C,x                         ; 98B1 1D 3C 9A                 .<.
        ldx     $C8                             ; 98B4 A6 C8                    ..
        clc                                     ; 98B6 18                       .
        adc     $CC                             ; 98B7 65 CC                    e.
        ldy     $01                             ; 98B9 A4 01                    ..
        pha                                     ; 98BB 48                       H
        lda     $D6                             ; 98BC A5 D6                    ..
        lsr     a                               ; 98BE 4A                       J
        bcc     BattleTurnEngine_Branch_98CA    ; 98BF 90 09                    ..
        lda     $00                           ; 98C1 A5 00                    ..
        asl     a                               ; 98C3 0A                       .
        clc                                     ; 98C4 18                       .
        adc     #$07                            ; 98C5 69 07                    i.
        adc     $01                             ; 98C7 65 01                    e.
        tay                                     ; 98C9 A8                       .
BattleTurnEngine_Branch_98CA:
        pla                                     ; 98CA 68                       h
        sta     $760C,y                         ; 98CB 99 0C 76                 ..v
        inc     $01                             ; 98CE E6 01                    ..
        inc     $02                             ; 98D0 E6 02                    ..
        lda     $02                             ; 98D2 A5 02                    ..
        cmp     #$04                            ; 98D4 C9 04                    ..
        bcc     BattleTurnEngine_Branch_98A9    ; 98D6 90 D1                    ..
        inc     $00                           ; 98D8 E6 00                    ..
        lda     $00                           ; 98DA A5 00                    ..
        cmp     #$04                            ; 98DC C9 04                    ..
        bcc     BattleTurnEngine_Branch_98A5    ; 98DE 90 C5                    ..
        ldx     $C6                             ; 98E0 A6 C6                    ..
        ldy     #$00                            ; 98E2 A0 00                    ..
        jsr     BattleTurnEngine_Entry_9510     ; 98E4 20 10 95                  ..
        ldx     #$0B                            ; 98E7 A2 0B                    ..
BattleTurnEngine_Branch_98E9:
        sta     $0650,x                         ; 98E9 9D 50 06                 .P.
        dex                                     ; 98EC CA                       .
        bpl     BattleTurnEngine_Branch_98E9    ; 98ED 10 FA                    ..
        jsr     BattleTurnEngine_Entry_9D4B     ; 98EF 20 4B 9D                  K.
        jmp     BattleTurnEngine_Branch_9A38    ; 98F2 4C 38 9A                 L8.
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_98F5:
        lda     #$00                            ; 98F5 A9 00                    ..
        sta     $06A8                           ; 98F7 8D A8 06                 ...
BattleTurnEngine_Branch_98FA:
        jsr     Bank14_SelectMonsterGraphicsBank; 98FA 20 26 9F                  &.
        jsr     Bank14_RefillMonsterGraphicsInput; 98FD 20 66 9F                 f.
        jsr     Bank14_ReadMonsterGraphicsByte  ; 9900 20 8D 9F                  ..
        sta     $06A9                           ; 9903 8D A9 06                 ...
        and     #$40                            ; 9906 29 40                    )@
        bne     BattleTurnEngine_Branch_9973    ; 9908 D0 69                    .i
        ldx     $C6                             ; 990A A6 C6                    ..
        lda     $7392,x                         ; 990C BD 92 73                 ..s
        bne     BattleTurnEngine_Branch_9914    ; 990F D0 03                    ..
        jmp     BattleTurnEngine_Branch_9A34    ; 9911 4C 34 9A                 L4.
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9914:
        lda     $06A8                           ; 9914 AD A8 06                 ...
        and     #$10                            ; 9917 29 10                    ).
        bne     BattleTurnEngine_Branch_9925    ; 9919 D0 0A                    ..
        inc     $CB                             ; 991B E6 CB                    ..
        lda     $06A8                           ; 991D AD A8 06                 ...
        ora     #$10                            ; 9920 09 10                    ..
        sta     $06A8                           ; 9922 8D A8 06                 ...
BattleTurnEngine_Branch_9925:
        lda     $CB                             ; 9925 A5 CB                    ..
        sta     $01                             ; 9927 85 01                    ..
        lda     $06A9                           ; 9929 AD A9 06                 ...
        ror     a                               ; 992C 6A                       j
        ror     a                               ; 992D 6A                       j
        ror     a                               ; 992E 6A                       j
        ror     a                               ; 992F 6A                       j
        pha                                     ; 9930 48                       H
        and     #$03                            ; 9931 29 03                    ).
        sta     $D7                             ; 9933 85 D7                    ..
        ldy     $C6                             ; 9935 A4 C6                    ..
        lda     $0448,y                         ; 9937 B9 48 04                 .H.
        ldy     $D7                             ; 993A A4 D7                    ..
        iny                                     ; 993C C8                       .
BattleTurnEngine_Branch_993D:
        dey                                     ; 993D 88                       .
        beq     BattleTurnEngine_Branch_9945    ; 993E F0 05                    ..
        lsr     a                               ; 9940 4A                       J
        lsr     a                               ; 9941 4A                       J
        jmp     BattleTurnEngine_Branch_993D    ; 9942 4C 3D 99                 L=.
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9945:
        and     #$03                            ; 9945 29 03                    ).
        sta     $D7                             ; 9947 85 D7                    ..
        pla                                     ; 9949 68                       h
        and     #$C0                            ; 994A 29 C0                    ).
        ora     $D7                             ; 994C 05 D7                    ..
        sta     $02                             ; 994E 85 02                    ..
        lda     $D6                             ; 9950 A5 D6                    ..
        asl     a                               ; 9952 0A                       .
        asl     a                               ; 9953 0A                       .
        asl     a                               ; 9954 0A                       .
        sta     $D7                             ; 9955 85 D7                    ..
        jsr     Bank14_ReadMonsterGraphicsByte  ; 9957 20 8D 9F                  ..
        clc                                     ; 995A 18                       .
        adc     $D7                             ; 995B 65 D7                    e.
        sta     $03                             ; 995D 85 03                    ..
        jsr     Bank14_ReadMonsterGraphicsByte  ; 995F 20 8D 9F                  ..
        clc                                     ; 9962 18                       .
        adc     #$4F                            ; 9963 69 4F                    iO
        sta     $00                           ; 9965 85 00                    ..
        ldy     $C9                             ; 9967 A4 C9                    ..
        ldx     #$00                            ; 9969 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 996B 20 3E C7                  >.
        inc     $C9                             ; 996E E6 C9                    ..
        jmp     BattleTurnEngine_Branch_9A22    ; 9970 4C 22 9A                 L".
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9973:
        lda     $06A9                           ; 9973 AD A9 06                 ...
        lsr     a                               ; 9976 4A                       J
        lsr     a                               ; 9977 4A                       J
        lsr     a                               ; 9978 4A                       J
        lsr     a                               ; 9979 4A                       J
        and     #$03                            ; 997A 29 03                    ).
        tay                                     ; 997C A8                       .
        ldx     $C6                             ; 997D A6 C6                    ..
        lda     $0444,x                         ; 997F BD 44 04                 .D.
        iny                                     ; 9982 C8                       .
BattleTurnEngine_Branch_9983:
        dey                                     ; 9983 88                       .
        beq     BattleTurnEngine_Branch_998B    ; 9984 F0 05                    ..
        lsr     a                               ; 9986 4A                       J
        lsr     a                               ; 9987 4A                       J
        jmp     BattleTurnEngine_Branch_9983    ; 9988 4C 83 99                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_998B:
        and     #$03                            ; 998B 29 03                    ).
        sta     $047E                           ; 998D 8D 7E 04                 .~.
        jsr     Bank14_ReadMonsterGraphicsByte  ; 9990 20 8D 9F                  ..
        pha                                     ; 9993 48                       H
        and     #$0F                            ; 9994 29 0F                    ).
        sta     $00                           ; 9996 85 00                    ..
        lda     $04F3                           ; 9998 AD F3 04                 ...
        and     #$0F                            ; 999B 29 0F                    ).
        sta     $01                             ; 999D 85 01                    ..
        pla                                     ; 999F 68                       h
        lsr     a                               ; 99A0 4A                       J
        lsr     a                               ; 99A1 4A                       J
        lsr     a                               ; 99A2 4A                       J
        lsr     a                               ; 99A3 4A                       J
        and     #$0F                            ; 99A4 29 0F                    ).
        tax                                     ; 99A6 AA                       .
        beq     BattleTurnEngine_Branch_99B7    ; 99A7 F0 0E                    ..
        lda     #$00                            ; 99A9 A9 00                    ..
BattleTurnEngine_Branch_99AB:
        clc                                     ; 99AB 18                       .
        adc     $01                             ; 99AC 65 01                    e.
        dex                                     ; 99AE CA                       .
        bne     BattleTurnEngine_Branch_99AB    ; 99AF D0 FA                    ..
        asl     a                               ; 99B1 0A                       .
        clc                                     ; 99B2 18                       .
        adc     $00                           ; 99B3 65 00                    e.
        sta     $00                           ; 99B5 85 00                    ..
BattleTurnEngine_Branch_99B7:
        lda     $D6                             ; 99B7 A5 D6                    ..
        and     #$01                            ; 99B9 29 01                    ).
        clc                                     ; 99BB 18                       .
        adc     $00                           ; 99BC 65 00                    e.
        sta     $D8                             ; 99BE 85 D8                    ..
        lda     $01                             ; 99C0 A5 01                    ..
        asl     a                               ; 99C2 0A                       .
        asl     a                               ; 99C3 0A                       .
        sta     $02                             ; 99C4 85 02                    ..
        lda     $D8                             ; 99C6 A5 D8                    ..
        ldx     #$00                            ; 99C8 A2 00                    ..
BattleTurnEngine_Branch_99CA:
        sta     $03                             ; 99CA 85 03                    ..
        inx                                     ; 99CC E8                       .
        sec                                     ; 99CD 38                       8
        sbc     $02                             ; 99CE E5 02                    ..
        bcs     BattleTurnEngine_Branch_99CA    ; 99D0 B0 F8                    ..
        dex                                     ; 99D2 CA                       .
        lda     #$00                            ; 99D3 A9 00                    ..
BattleTurnEngine_Branch_99D5:
        clc                                     ; 99D5 18                       .
        adc     $01                             ; 99D6 65 01                    e.
        dex                                     ; 99D8 CA                       .
        bne     BattleTurnEngine_Branch_99D5    ; 99D9 D0 FA                    ..
        sta     $02                             ; 99DB 85 02                    ..
        asl     $01                             ; 99DD 06 01                    ..
        lda     $03                             ; 99DF A5 03                    ..
        sec                                     ; 99E1 38                       8
        sbc     $01                             ; 99E2 E5 01                    ..
        bcc     BattleTurnEngine_Branch_99E8    ; 99E4 90 02                    ..
        sta     $03                             ; 99E6 85 03                    ..
BattleTurnEngine_Branch_99E8:
        lda     $03                             ; 99E8 A5 03                    ..
        lsr     a                               ; 99EA 4A                       J
        clc                                     ; 99EB 18                       .
        adc     $02                             ; 99EC 65 02                    e.
        tax                                     ; 99EE AA                       .
        lda     $047E                           ; 99EF AD 7E 04                 .~.
        sta     $0650,x                         ; 99F2 9D 50 06                 .P.
        lda     $06A9                           ; 99F5 AD A9 06                 ...
        lsr     a                               ; 99F8 4A                       J
        and     #$03                            ; 99F9 29 03                    ).
        tax                                     ; 99FB AA                       .
        tay                                     ; 99FC A8                       .
        iny                                     ; 99FD C8                       .
        lda     #$10                            ; 99FE A9 10                    ..
BattleTurnEngine_Branch_9A00:
        lsr     a                               ; 9A00 4A                       J
        dey                                     ; 9A01 88                       .
        bne     BattleTurnEngine_Branch_9A00    ; 9A02 D0 FC                    ..
        sta     $D7                             ; 9A04 85 D7                    ..
        and     $06A8                           ; 9A06 2D A8 06                 -..
        bne     BattleTurnEngine_Branch_9A1A    ; 9A09 D0 0F                    ..
        lda     $06A8                           ; 9A0B AD A8 06                 ...
        ora     $D7                             ; 9A0E 05 D7                    ..
        sta     $06A8                           ; 9A10 8D A8 06                 ...
        inc     $CC                             ; 9A13 E6 CC                    ..
        lda     $CC                             ; 9A15 A5 CC                    ..
        sta     $047A,x                         ; 9A17 9D 7A 04                 .z.
BattleTurnEngine_Branch_9A1A:
        lda     $047A,x                         ; 9A1A BD 7A 04                 .z.
        ldx     $D8                             ; 9A1D A6 D8                    ..
        sta     $7600,x                         ; 9A1F 9D 00 76                 ..v
BattleTurnEngine_Branch_9A22:
        lda     $06A9                           ; 9A22 AD A9 06                 ...
        bmi     BattleTurnEngine_Branch_9A2A    ; 9A25 30 03                    0.
        jmp     BattleTurnEngine_Branch_98FA    ; 9A27 4C FA 98                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9A2A:
        jsr     BattleTurnEngine_Entry_9FEB     ; 9A2A 20 EB 9F                  ..
        dec     $D1                             ; 9A2D C6 D1                    ..
        beq     BattleTurnEngine_Branch_9A34    ; 9A2F F0 03                    ..
        jmp     BattleTurnEngine_Branch_98F5    ; 9A31 4C F5 98                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9A34:
        jsr     BattleTurnEngine_Entry_9D4B     ; 9A34 20 4B 9D                  K.
        sec                                     ; 9A37 38                       8
BattleTurnEngine_Branch_9A38:
        pla                                     ; 9A38 68                       h
        sta     $C9                             ; 9A39 85 C9                    ..
        rts                                     ; 9A3B 60                       `
; ----------------------------------------------------------------------------
        db   $00,$01,$04,$05                 ; 9A3C 00 01 04 05              ....
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9A40:
        ldy     $C7                             ; 9A40 A4 C7                    ..
        lda     $0690,y                         ; 9A42 B9 90 06                 ...
        bpl     BattleTurnEngine_Branch_9A90    ; 9A45 10 49                    .I
        pha                                     ; 9A47 48                       H
        lda     $0698,y                         ; 9A48 B9 98 06                 ...
        sta     $D6                             ; 9A4B 85 D6                    ..
        lda     $06A0,y                         ; 9A4D B9 A0 06                 ...
        sta     $D7                             ; 9A50 85 D7                    ..
        pla                                     ; 9A52 68                       h
        and     #$18                            ; 9A53 29 18                    ).
        lsr     a                               ; 9A55 4A                       J
        lsr     a                               ; 9A56 4A                       J
        lsr     a                               ; 9A57 4A                       J
        tay                                     ; 9A58 A8                       .
        lda     $0440,y                         ; 9A59 B9 40 04                 .@.
        sta     $C4                             ; 9A5C 85 C4                    ..
        lda     $7385,y                         ; 9A5E B9 85 73                 ..s
        sta     $D2                             ; 9A61 85 D2                    ..
        lda     $7392,y                         ; 9A63 B9 92 73                 ..s
        sta     $D3                             ; 9A66 85 D3                    ..
        jsr     BattleTurnEngine_Entry_9D21     ; 9A68 20 21 9D                  !.
        lda     $D3                             ; 9A6B A5 D3                    ..
        beq     BattleTurnEngine_Branch_9A85    ; 9A6D F0 16                    ..
BattleTurnEngine_Branch_9A6F:
        ldy     $D7                             ; 9A6F A4 D7                    ..
        ldx     #$00                            ; 9A71 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C770     ; 9A73 20 70 C7                  p.
        lda     #$F7                            ; 9A76 A9 F7                    ..
        sta     $00                           ; 9A78 85 00                    ..
        ldx     #$00                            ; 9A7A A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 9A7C 20 3E C7                  >.
        inc     $D7                             ; 9A7F E6 D7                    ..
        dec     $D3                             ; 9A81 C6 D3                    ..
        bne     BattleTurnEngine_Branch_9A6F    ; 9A83 D0 EA                    ..
BattleTurnEngine_Branch_9A85:
        jsr     BattleTurnEngine_Entry_924F     ; 9A85 20 4F 92                  O.
        jsr     WaitForNmi                      ; 9A88 20 74 FF                  t.
        jsr     BattleTurnEngine_Entry_9D4B     ; 9A8B 20 4B 9D                  K.
        sec                                     ; 9A8E 38                       8
        rts                                     ; 9A8F 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9A90:
        clc                                     ; 9A90 18                       .
        rts                                     ; 9A91 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9A92:
        ldx     #$07                            ; 9A92 A2 07                    ..
BattleTurnEngine_Branch_9A94:
        lda     $0690,x                         ; 9A94 BD 90 06                 ...
        bpl     BattleTurnEngine_Branch_9AA2    ; 9A97 10 09                    ..
        and     #$18                            ; 9A99 29 18                    ).
        lsr     a                               ; 9A9B 4A                       J
        lsr     a                               ; 9A9C 4A                       J
        lsr     a                               ; 9A9D 4A                       J
        cmp     $C6                             ; 9A9E C5 C6                    ..
        beq     BattleTurnEngine_Branch_9AC4    ; 9AA0 F0 22                    ."
BattleTurnEngine_Branch_9AA2:
        dex                                     ; 9AA2 CA                       .
        bpl     BattleTurnEngine_Branch_9A94    ; 9AA3 10 EF                    ..
        ldx     $C6                             ; 9AA5 A6 C6                    ..
        lda     $0440,x                         ; 9AA7 BD 40 04                 .@.
        cmp     #$7E                            ; 9AAA C9 7E                    .~
        beq     BattleTurnEngine_Branch_9AB3    ; 9AAC F0 05                    ..
        sta     $C4                             ; 9AAE 85 C4                    ..
        jsr     BattleTurnEngine_Entry_9AC6     ; 9AB0 20 C6 9A                  ..
BattleTurnEngine_Branch_9AB3:
        ldx     $C6                             ; 9AB3 A6 C6                    ..
        lda     #$FF                            ; 9AB5 A9 FF                    ..
        sta     $0440,x                         ; 9AB7 9D 40 04                 .@.
        lda     #$00                            ; 9ABA A9 00                    ..
        sta     $0444,x                         ; 9ABC 9D 44 04                 .D.
        sta     $0448,x                         ; 9ABF 9D 48 04                 .H.
        sec                                     ; 9AC2 38                       8
        rts                                     ; 9AC3 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9AC4:
        clc                                     ; 9AC4 18                       .
        rts                                     ; 9AC5 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9AC6:
        lda     #$00                            ; 9AC6 A9 00                    ..
        sta     $D8                             ; 9AC8 85 D8                    ..
        jsr     BattleTurnEngine_Entry_95E8     ; 9ACA 20 E8 95                  ..
        lda     #$04                            ; 9ACD A9 04                    ..
        sta     $D8                             ; 9ACF 85 D8                    ..
        jsr     BattleTurnEngine_Entry_95E8     ; 9AD1 20 E8 95                  ..
        lda     $0514                           ; 9AD4 AD 14 05                 ...
        sta     $05FD                           ; 9AD7 8D FD 05                 ...
        rts                                     ; 9ADA 60                       `
; ----------------------------------------------------------------------------
        db   $50,$06                         ; 9ADB 50 06                    P.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9ADD:
        lda     $C9                             ; 9ADD A5 C9                    ..
        pha                                     ; 9ADF 48                       H
        lda     $D3                             ; 9AE0 A5 D3                    ..
        beq     BattleTurnEngine_Branch_9B49    ; 9AE2 F0 65                    .e
        sta     $D6                             ; 9AE4 85 D6                    ..
        lda     #$48                            ; 9AE6 A9 48                    .H
        sta     $D8                             ; 9AE8 85 D8                    ..
BattleTurnEngine_Branch_9AEA:
        lda     #$00                            ; 9AEA A9 00                    ..
        sta     $D9                             ; 9AEC 85 D9                    ..
        lda     $C9                             ; 9AEE A5 C9                    ..
        beq     BattleTurnEngine_Branch_9B0B    ; 9AF0 F0 19                    ..
        sta     $D7                             ; 9AF2 85 D7                    ..
        ldy     #$00                            ; 9AF4 A0 00                    ..
BattleTurnEngine_Branch_9AF6:
        ldx     #$00                            ; 9AF6 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C770     ; 9AF8 20 70 C7                  p.
        lda     $00                           ; 9AFB A5 00                    ..
        sec                                     ; 9AFD 38                       8
        sbc     $D8                             ; 9AFE E5 D8                    ..
        cmp     #$08                            ; 9B00 C9 08                    ..
        bcs     BattleTurnEngine_Branch_9B06    ; 9B02 B0 02                    ..
        inc     $D9                             ; 9B04 E6 D9                    ..
BattleTurnEngine_Branch_9B06:
        iny                                     ; 9B06 C8                       .
        cpy     $D7                             ; 9B07 C4 D7                    ..
        bne     BattleTurnEngine_Branch_9AF6    ; 9B09 D0 EB                    ..
BattleTurnEngine_Branch_9B0B:
        ldx     #$00                            ; 9B0B A2 00                    ..
BattleTurnEngine_Branch_9B0D:
        ldy     #$00                            ; 9B0D A0 00                    ..
BattleTurnEngine_Branch_9B0F:
        lda     $0650,y                         ; 9B0F B9 50 06                 .P.
        sec                                     ; 9B12 38                       8
        sbc     $D8                             ; 9B13 E5 D8                    ..
        cmp     #$08                            ; 9B15 C9 08                    ..
        bcs     BattleTurnEngine_Branch_9B2E    ; 9B17 B0 15                    ..
        inc     $D9                             ; 9B19 E6 D9                    ..
        lda     $D9                             ; 9B1B A5 D9                    ..
        cmp     #$09                            ; 9B1D C9 09                    ..
        bcc     BattleTurnEngine_Branch_9B2E    ; 9B1F 90 0D                    ..
BattleTurnEngine_Branch_9B21:
        stx     $C5                             ; 9B21 86 C5                    ..
        txa                                     ; 9B23 8A                       .
        bne     BattleTurnEngine_Branch_9B41    ; 9B24 D0 1B                    ..
        dex                                     ; 9B26 CA                       .
        stx     $C4                             ; 9B27 86 C4                    ..
        pla                                     ; 9B29 68                       h
        sta     $C9                             ; 9B2A 85 C9                    ..
        clc                                     ; 9B2C 18                       .
        rts                                     ; 9B2D 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9B2E:
        iny                                     ; 9B2E C8                       .
        cpy     $D6                             ; 9B2F C4 D6                    ..
        bne     BattleTurnEngine_Branch_9B0F    ; 9B31 D0 DC                    ..
        lda     $C9                             ; 9B33 A5 C9                    ..
        clc                                     ; 9B35 18                       .
        adc     $D6                             ; 9B36 65 D6                    e.
        cmp     #$41                            ; 9B38 C9 41                    .A
        bcs     BattleTurnEngine_Branch_9B21    ; 9B3A B0 E5                    ..
        inx                                     ; 9B3C E8                       .
        cpx     $C5                             ; 9B3D E4 C5                    ..
        bne     BattleTurnEngine_Branch_9B0D    ; 9B3F D0 CC                    ..
BattleTurnEngine_Branch_9B41:
        inc     $D8                             ; 9B41 E6 D8                    ..
        lda     $D8                             ; 9B43 A5 D8                    ..
        cmp     #$C8                            ; 9B45 C9 C8                    ..
        bne     BattleTurnEngine_Branch_9AEA    ; 9B47 D0 A1                    ..
BattleTurnEngine_Branch_9B49:
        pla                                     ; 9B49 68                       h
        sta     $C9                             ; 9B4A 85 C9                    ..
        sec                                     ; 9B4C 38                       8
        rts                                     ; 9B4D 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9B4E:
        ldx     $C5                             ; 9B4E A6 C5                    ..
BattleTurnEngine_Branch_9B50:
        txa                                     ; 9B50 8A                       .
        pha                                     ; 9B51 48                       H
        ldx     $C7                             ; 9B52 A6 C7                    ..
        ldy     $D3                             ; 9B54 A4 D3                    ..
        bne     BattleTurnEngine_Branch_9B5F    ; 9B56 D0 07                    ..
        lda     #$FF                            ; 9B58 A9 FF                    ..
        sta     $06A0,x                         ; 9B5A 9D A0 06                 ...
        bne     BattleTurnEngine_Branch_9B84    ; 9B5D D0 25                    .%
BattleTurnEngine_Branch_9B5F:
        lda     $C9                             ; 9B5F A5 C9                    ..
        sta     $06A0,x                         ; 9B61 9D A0 06                 ...
        ldx     #$00                            ; 9B64 A2 00                    ..
BattleTurnEngine_Branch_9B66:
        lda     $0650,x                         ; 9B66 BD 50 06                 .P.
        sta     $00                           ; 9B69 85 00                    ..
        lda     #$00                            ; 9B6B A9 00                    ..
        sta     $01                             ; 9B6D 85 01                    ..
        tya                                     ; 9B6F 98                       .
        pha                                     ; 9B70 48                       H
        ldy     $C9                             ; 9B71 A4 C9                    ..
        txa                                     ; 9B73 8A                       .
        pha                                     ; 9B74 48                       H
        ldx     #$00                            ; 9B75 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 9B77 20 3E C7                  >.
        pla                                     ; 9B7A 68                       h
        tax                                     ; 9B7B AA                       .
        inx                                     ; 9B7C E8                       .
        inc     $C9                             ; 9B7D E6 C9                    ..
        pla                                     ; 9B7F 68                       h
        tay                                     ; 9B80 A8                       .
        dey                                     ; 9B81 88                       .
        bne     BattleTurnEngine_Branch_9B66    ; 9B82 D0 E2                    ..
BattleTurnEngine_Branch_9B84:
        inc     $C7                             ; 9B84 E6 C7                    ..
        pla                                     ; 9B86 68                       h
        tax                                     ; 9B87 AA                       .
        dex                                     ; 9B88 CA                       .
        bne     BattleTurnEngine_Branch_9B50    ; 9B89 D0 C5                    ..
        rts                                     ; 9B8B 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9B8C:
        jsr     BattleTurnEngine_Entry_9BE4     ; 9B8C 20 E4 9B                  ..
        lda     $C9                             ; 9B8F A5 C9                    ..
        ldy     $C6                             ; 9B91 A4 C6                    ..
        sec                                     ; 9B93 38                       8
        sbc     $7392,y                         ; 9B94 F9 92 73                 ..s
        sta     $04                             ; 9B97 85 04                    ..
        ldx     $C7                             ; 9B99 A6 C7                    ..
        lda     $06A0,x                         ; 9B9B BD A0 06                 ...
        cmp     #$FF                            ; 9B9E C9 FF                    ..
        beq     BattleTurnEngine_Branch_9BE3    ; 9BA0 F0 41                    .A
        sta     $05                             ; 9BA2 85 05                    ..
        pha                                     ; 9BA4 48                       H
        clc                                     ; 9BA5 18                       .
        adc     $7392,y                         ; 9BA6 79 92 73                 y.s
        tay                                     ; 9BA9 A8                       .
        jsr     BattleTurnEngine_Entry_9C32     ; 9BAA 20 32 9C                  2.
        pla                                     ; 9BAD 68                       h
        sta     $05                             ; 9BAE 85 05                    ..
        ldy     $C6                             ; 9BB0 A4 C6                    ..
        lda     $7392,y                         ; 9BB2 B9 92 73                 ..s
        sta     $04                             ; 9BB5 85 04                    ..
        pha                                     ; 9BB7 48                       H
        lda     $C9                             ; 9BB8 A5 C9                    ..
        sec                                     ; 9BBA 38                       8
        sbc     $04                             ; 9BBB E5 04                    ..
        tay                                     ; 9BBD A8                       .
        jsr     BattleTurnEngine_Entry_9C1D     ; 9BBE 20 1D 9C                  ..
        pla                                     ; 9BC1 68                       h
        sta     $04                             ; 9BC2 85 04                    ..
        ldx     #$07                            ; 9BC4 A2 07                    ..
BattleTurnEngine_Branch_9BC6:
        lda     $06A0,x                         ; 9BC6 BD A0 06                 ...
        cmp     #$FF                            ; 9BC9 C9 FF                    ..
        beq     BattleTurnEngine_Branch_9BE0    ; 9BCB F0 13                    ..
        cmp     $05                             ; 9BCD C5 05                    ..
        bne     BattleTurnEngine_Branch_9BD8    ; 9BCF D0 07                    ..
        lda     #$FF                            ; 9BD1 A9 FF                    ..
        sta     $06A0,x                         ; 9BD3 9D A0 06                 ...
        bne     BattleTurnEngine_Branch_9BE0    ; 9BD6 D0 08                    ..
BattleTurnEngine_Branch_9BD8:
        bcc     BattleTurnEngine_Branch_9BE0    ; 9BD8 90 06                    ..
        sec                                     ; 9BDA 38                       8
        sbc     $04                             ; 9BDB E5 04                    ..
        sta     $06A0,x                         ; 9BDD 9D A0 06                 ...
BattleTurnEngine_Branch_9BE0:
        dex                                     ; 9BE0 CA                       .
        bpl     BattleTurnEngine_Branch_9BC6    ; 9BE1 10 E3                    ..
BattleTurnEngine_Branch_9BE3:
        rts                                     ; 9BE3 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9BE4:
        pha                                     ; 9BE4 48                       H
        txa                                     ; 9BE5 8A                       .
        pha                                     ; 9BE6 48                       H
        tya                                     ; 9BE7 98                       .
        pha                                     ; 9BE8 48                       H
        ldx     #$00                            ; 9BE9 A2 00                    ..
        stx     $C9                             ; 9BEB 86 C9                    ..
        dex                                     ; 9BED CA                       .
        ldy     #$07                            ; 9BEE A0 07                    ..
BattleTurnEngine_Branch_9BF0:
        lda     $06A0,y                         ; 9BF0 B9 A0 06                 ...
        cmp     #$FF                            ; 9BF3 C9 FF                    ..
        beq     BattleTurnEngine_Branch_9BFF    ; 9BF5 F0 08                    ..
        cmp     $C9                             ; 9BF7 C5 C9                    ..
        bcc     BattleTurnEngine_Branch_9BFF    ; 9BF9 90 04                    ..
        sta     $C9                             ; 9BFB 85 C9                    ..
        tya                                     ; 9BFD 98                       .
        tax                                     ; 9BFE AA                       .
BattleTurnEngine_Branch_9BFF:
        dey                                     ; 9BFF 88                       .
        bpl     BattleTurnEngine_Branch_9BF0    ; 9C00 10 EE                    ..
        inx                                     ; 9C02 E8                       .
        beq     BattleTurnEngine_Branch_9C11    ; 9C03 F0 0C                    ..
        dex                                     ; 9C05 CA                       .
        jsr     BattleTurnEngine_Entry_9E81     ; 9C06 20 81 9E                  ..
        lda     $7392,x                         ; 9C09 BD 92 73                 ..s
        clc                                     ; 9C0C 18                       .
        adc     $C9                             ; 9C0D 65 C9                    e.
        sta     $C9                             ; 9C0F 85 C9                    ..
BattleTurnEngine_Branch_9C11:
        pla                                     ; 9C11 68                       h
        tay                                     ; 9C12 A8                       .
        pla                                     ; 9C13 68                       h
        tax                                     ; 9C14 AA                       .
        pla                                     ; 9C15 68                       h
        rts                                     ; 9C16 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9C17:
        ldy     #$00                            ; 9C17 A0 00                    ..
        lda     #$40                            ; 9C19 A9 40                    .@
        sta     $04                             ; 9C1B 85 04                    ..
BattleTurnEngine_Entry_9C1D:
        lda     #$F7                            ; 9C1D A9 F7                    ..
        sta     $00                           ; 9C1F 85 00                    ..
        sta     $01                             ; 9C21 85 01                    ..
        sta     $02                             ; 9C23 85 02                    ..
        sta     $03                             ; 9C25 85 03                    ..
BattleTurnEngine_Branch_9C27:
        ldx     #$00                            ; 9C27 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 9C29 20 3E C7                  >.
        iny                                     ; 9C2C C8                       .
        dec     $04                             ; 9C2D C6 04                    ..
        bne     BattleTurnEngine_Branch_9C27    ; 9C2F D0 F6                    ..
        rts                                     ; 9C31 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9C32:
        ldx     #$00                            ; 9C32 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C770     ; 9C34 20 70 C7                  p.
        tay                                     ; 9C37 A8                       .
        pha                                     ; 9C38 48                       H
        ldy     $05                             ; 9C39 A4 05                    ..
        ldx     #$00                            ; 9C3B A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 9C3D 20 3E C7                  >.
        pla                                     ; 9C40 68                       h
        tay                                     ; 9C41 A8                       .
        iny                                     ; 9C42 C8                       .
        inc     $05                             ; 9C43 E6 05                    ..
        dec     $04                             ; 9C45 C6 04                    ..
        bne     BattleTurnEngine_Entry_9C32     ; 9C47 D0 E9                    ..
        rts                                     ; 9C49 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9C4A:
        lda     $CA                             ; 9C4A A5 CA                    ..
        pha                                     ; 9C4C 48                       H
        jsr     BattleTurnEngine_Entry_9C54     ; 9C4D 20 54 9C                  T.
        pla                                     ; 9C50 68                       h
        sta     $CA                             ; 9C51 85 CA                    ..
        rts                                     ; 9C53 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9C54:
        ldx     #$00                            ; 9C54 A2 00                    ..
BattleTurnEngine_Branch_9C56:
        ldy     $C6                             ; 9C56 A4 C6                    ..
        lda     $7385,y                         ; 9C58 B9 85 73                 ..s
        sec                                     ; 9C5B 38                       8
        adc     $CA                             ; 9C5C 65 CA                    e.
        cmp     #$20                            ; 9C5E C9 20                    .
        bcs     BattleTurnEngine_Branch_9C69    ; 9C60 B0 07                    ..
        sta     $CA                             ; 9C62 85 CA                    ..
        inx                                     ; 9C64 E8                       .
        cpx     $C5                             ; 9C65 E4 C5                    ..
        bne     BattleTurnEngine_Branch_9C56    ; 9C67 D0 ED                    ..
BattleTurnEngine_Branch_9C69:
        stx     $C5                             ; 9C69 86 C5                    ..
        txa                                     ; 9C6B 8A                       .
        sec                                     ; 9C6C 38                       8
        bne     BattleTurnEngine_Branch_9C70    ; 9C6D D0 01                    ..
        clc                                     ; 9C6F 18                       .
BattleTurnEngine_Branch_9C70:
        rts                                     ; 9C70 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9C71:
        lda     $6E45                           ; 9C71 AD 45 6E                 .En
        cmp     #$AD                            ; 9C74 C9 AD                    ..
        bne     BattleTurnEngine_Branch_9C7C    ; 9C76 D0 04                    ..
        lda     #$02                            ; 9C78 A9 02                    ..
        bne     BattleTurnEngine_Branch_9C86    ; 9C7A D0 0A                    ..
BattleTurnEngine_Branch_9C7C:
        cmp     #$AE                            ; 9C7C C9 AE                    ..
        beq     BattleTurnEngine_Branch_9C84    ; 9C7E F0 04                    ..
        cmp     #$BC                            ; 9C80 C9 BC                    ..
        bne     BattleTurnEngine_Branch_9C8A    ; 9C82 D0 06                    ..
BattleTurnEngine_Branch_9C84:
        lda     #$0A                            ; 9C84 A9 0A                    ..
BattleTurnEngine_Branch_9C86:
        sta     $0698                           ; 9C86 8D 98 06                 ...
        rts                                     ; 9C89 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9C8A:
        dec     $CA                             ; 9C8A C6 CA                    ..
        lda     $CA                             ; 9C8C A5 CA                    ..
        lsr     a                               ; 9C8E 4A                       J
        sta     $CA                             ; 9C8F 85 CA                    ..
        lda     #$10                            ; 9C91 A9 10                    ..
        sec                                     ; 9C93 38                       8
        sbc     $CA                             ; 9C94 E5 CA                    ..
        sta     $CA                             ; 9C96 85 CA                    ..
        ldy     #$00                            ; 9C98 A0 00                    ..
        sty     $C7                             ; 9C9A 84 C7                    ..
BattleTurnEngine_Branch_9C9C:
        jsr     BattleTurnEngine_Entry_9E76     ; 9C9C 20 76 9E                  v.
        bcc     BattleTurnEngine_Branch_9CB2    ; 9C9F 90 11                    ..
        cmp     #$FF                            ; 9CA1 C9 FF                    ..
        beq     BattleTurnEngine_Branch_9CB2    ; 9CA3 F0 0D                    ..
        lda     $CA                             ; 9CA5 A5 CA                    ..
        sta     $0698,y                         ; 9CA7 99 98 06                 ...
        lda     $7385,x                         ; 9CAA BD 85 73                 ..s
        sec                                     ; 9CAD 38                       8
        adc     $CA                             ; 9CAE 65 CA                    e.
        sta     $CA                             ; 9CB0 85 CA                    ..
BattleTurnEngine_Branch_9CB2:
        inc     $C7                             ; 9CB2 E6 C7                    ..
        iny                                     ; 9CB4 C8                       .
        cpy     #$08                            ; 9CB5 C0 08                    ..
        bne     BattleTurnEngine_Branch_9C9C    ; 9CB7 D0 E3                    ..
        rts                                     ; 9CB9 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9CBA:
        lda     $D2                             ; 9CBA A5 D2                    ..
        sta     $D8                             ; 9CBC 85 D8                    ..
        lsr     $D8                             ; 9CBE 46 D8                    F.
        lda     #$10                            ; 9CC0 A9 10                    ..
        sec                                     ; 9CC2 38                       8
        sbc     $D8                             ; 9CC3 E5 D8                    ..
        sta     $D6                             ; 9CC5 85 D6                    ..
        lda     #$01                            ; 9CC7 A9 01                    ..
        sta     $D7                             ; 9CC9 85 D7                    ..
BattleTurnEngine_Branch_9CCB:
        jsr     BattleTurnEngine_Entry_9CEB     ; 9CCB 20 EB 9C                  ..
        bcc     BattleTurnEngine_Branch_9CD1    ; 9CCE 90 01                    ..
        rts                                     ; 9CD0 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9CD1:
        lda     $D7                             ; 9CD1 A5 D7                    ..
        eor     #$01                            ; 9CD3 49 01                    I.
        lsr     a                               ; 9CD5 4A                       J
        lda     $D7                             ; 9CD6 A5 D7                    ..
        bcc     BattleTurnEngine_Branch_9CDC    ; 9CD8 90 02                    ..
        eor     #$FF                            ; 9CDA 49 FF                    I.
BattleTurnEngine_Branch_9CDC:
        adc     $D6                             ; 9CDC 65 D6                    e.
        beq     BattleTurnEngine_Branch_9D1F    ; 9CDE F0 3F                    .?
        cmp     #$20                            ; 9CE0 C9 20                    .
        bcs     BattleTurnEngine_Branch_9D1F    ; 9CE2 B0 3B                    .;
        sta     $D6                             ; 9CE4 85 D6                    ..
        inc     $D7                             ; 9CE6 E6 D7                    ..
        jmp     BattleTurnEngine_Branch_9CCB    ; 9CE8 4C CB 9C                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9CEB:
        ldx     #$00                            ; 9CEB A2 00                    ..
BattleTurnEngine_Branch_9CED:
        lda     $0690,x                         ; 9CED BD 90 06                 ...
        bpl     BattleTurnEngine_Branch_9D0D    ; 9CF0 10 1B                    ..
        and     #$18                            ; 9CF2 29 18                    ).
        lsr     a                               ; 9CF4 4A                       J
        lsr     a                               ; 9CF5 4A                       J
        lsr     a                               ; 9CF6 4A                       J
        tay                                     ; 9CF7 A8                       .
        lda     $0698,x                         ; 9CF8 BD 98 06                 ...
        clc                                     ; 9CFB 18                       .
        adc     $7385,y                         ; 9CFC 79 85 73                 y.s
        cmp     $D6                             ; 9CFF C5 D6                    ..
        bcc     BattleTurnEngine_Branch_9D0D    ; 9D01 90 0A                    ..
        lda     $D6                             ; 9D03 A5 D6                    ..
        clc                                     ; 9D05 18                       .
        adc     $D2                             ; 9D06 65 D2                    e.
        cmp     $0698,x                         ; 9D08 DD 98 06                 ...
        bcs     BattleTurnEngine_Branch_9D1F    ; 9D0B B0 12                    ..
BattleTurnEngine_Branch_9D0D:
        inx                                     ; 9D0D E8                       .
        cpx     #$08                            ; 9D0E E0 08                    ..
        bne     BattleTurnEngine_Branch_9CED    ; 9D10 D0 DB                    ..
        lda     $D6                             ; 9D12 A5 D6                    ..
        clc                                     ; 9D14 18                       .
        adc     $D2                             ; 9D15 65 D2                    e.
        cmp     #$20                            ; 9D17 C9 20                    .
        bcs     BattleTurnEngine_Branch_9D1F    ; 9D19 B0 04                    ..
        lda     $D6                             ; 9D1B A5 D6                    ..
        sec                                     ; 9D1D 38                       8
        rts                                     ; 9D1E 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9D1F:
        clc                                     ; 9D1F 18                       .
        rts                                     ; 9D20 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9D21:
        txa                                     ; 9D21 8A                       .
        pha                                     ; 9D22 48                       H
        lda     $D6                             ; 9D23 A5 D6                    ..
        lsr     a                               ; 9D25 4A                       J
        ora     #$50                            ; 9D26 09 50                    .P
        sta     $04F2                           ; 9D28 8D F2 04                 ...
        php                                     ; 9D2B 08                       .
        ldx     $C4                             ; 9D2C A6 C4                    ..
        cpx     #$AE                            ; 9D2E E0 AE                    ..
        beq     BattleTurnEngine_Branch_9D36    ; 9D30 F0 04                    ..
        cpx     #$BC                            ; 9D32 E0 BC                    ..
        bne     BattleTurnEngine_Branch_9D3B    ; 9D34 D0 05                    ..
BattleTurnEngine_Branch_9D36:
        and     #$EF                            ; 9D36 29 EF                    ).
        sta     $04F2                           ; 9D38 8D F2 04                 ...
BattleTurnEngine_Branch_9D3B:
        plp                                     ; 9D3B 28                       (
        lda     #$00                            ; 9D3C A9 00                    ..
        rol     a                               ; 9D3E 2A                       *
        sec                                     ; 9D3F 38                       8
        adc     $D2                             ; 9D40 65 D2                    e.
        lsr     a                               ; 9D42 4A                       J
        ora     #$40                            ; 9D43 09 40                    .@
        sta     $04F3                           ; 9D45 8D F3 04                 ...
        pla                                     ; 9D48 68                       h
        tax                                     ; 9D49 AA                       .
        rts                                     ; 9D4A 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9D4B:
        lda     $04F3                           ; 9D4B AD F3 04                 ...
        and     #$0F                            ; 9D4E 29 0F                    ).
        cmp     #$04                            ; 9D50 C9 04                    ..
        bcs     BattleTurnEngine_Branch_9D59    ; 9D52 B0 05                    ..
        asl     a                               ; 9D54 0A                       .
        asl     a                               ; 9D55 0A                       .
        tax                                     ; 9D56 AA                       .
        bne     BattleTurnEngine_Branch_9D73    ; 9D57 D0 1A                    ..
BattleTurnEngine_Branch_9D59:
        pha                                     ; 9D59 48                       H
        ora     #$20                            ; 9D5A 09 20                    .
        sta     $04F3                           ; 9D5C 8D F3 04                 ...
        pla                                     ; 9D5F 68                       h
        asl     a                               ; 9D60 0A                       .
        tax                                     ; 9D61 AA                       .
        tay                                     ; 9D62 A8                       .
        pha                                     ; 9D63 48                       H
        jsr     BattleTurnEngine_Entry_9DA2     ; 9D64 20 A2 9D                  ..
        lda     $04F2                           ; 9D67 AD F2 04                 ...
        clc                                     ; 9D6A 18                       .
        adc     #$20                            ; 9D6B 69 20                    i
        sta     $04F2                           ; 9D6D 8D F2 04                 ...
        pla                                     ; 9D70 68                       h
        tax                                     ; 9D71 AA                       .
        asl     a                               ; 9D72 0A                       .
BattleTurnEngine_Branch_9D73:
        tay                                     ; 9D73 A8                       .
        jsr     BattleTurnEngine_Entry_9DA2     ; 9D74 20 A2 9D                  ..
        lda     $C4                             ; 9D77 A5 C4                    ..
        cmp     #$AE                            ; 9D79 C9 AE                    ..
        beq     BattleTurnEngine_Branch_9D81    ; 9D7B F0 04                    ..
        cmp     #$BC                            ; 9D7D C9 BC                    ..
        bne     BattleTurnEngine_Branch_9DCB    ; 9D7F D0 4A                    .J
BattleTurnEngine_Branch_9D81:
        lda     $04F3                           ; 9D81 AD F3 04                 ...
        ora     #$10                            ; 9D84 09 10                    ..
        and     #$1F                            ; 9D86 29 1F                    ).
        sta     $04F3                           ; 9D88 8D F3 04                 ...
        and     #$0F                            ; 9D8B 29 0F                    ).
        sta     $00                           ; 9D8D 85 00                    ..
        tax                                     ; 9D8F AA                       .
        asl     a                               ; 9D90 0A                       .
        asl     a                               ; 9D91 0A                       .
        clc                                     ; 9D92 18                       .
        adc     $00                           ; 9D93 65 00                    e.
        tay                                     ; 9D95 A8                       .
        lda     $04F2                           ; 9D96 AD F2 04                 ...
        clc                                     ; 9D99 18                       .
        adc     #$20                            ; 9D9A 69 20                    i
        sta     $04F2                           ; 9D9C 8D F2 04                 ...
        jmp     BattleTurnEngine_Entry_9DA2     ; 9D9F 4C A2 9D                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9DA2:
        lda     $064F,y                         ; 9DA2 B9 4F 06                 .O.
        sta     $04DF,x                         ; 9DA5 9D DF 04                 ...
        tya                                     ; 9DA8 98                       .
        pha                                     ; 9DA9 48                       H
        txa                                     ; 9DAA 8A                       .
        pha                                     ; 9DAB 48                       H
        asl     a                               ; 9DAC 0A                       .
        asl     a                               ; 9DAD 0A                       .
        tax                                     ; 9DAE AA                       .
        tya                                     ; 9DAF 98                       .
        asl     a                               ; 9DB0 0A                       .
        asl     a                               ; 9DB1 0A                       .
        tay                                     ; 9DB2 A8                       .
BattleTurnEngine_Branch_9DB3:
        lda     $75FF,y                         ; 9DB3 B9 FF 75                 ..u
        sta     $047F,x                         ; 9DB6 9D 7F 04                 ...
        dey                                     ; 9DB9 88                       .
        dex                                     ; 9DBA CA                       .
        txa                                     ; 9DBB 8A                       .
        and     #$03                            ; 9DBC 29 03                    ).
        bne     BattleTurnEngine_Branch_9DB3    ; 9DBE D0 F3                    ..
        pla                                     ; 9DC0 68                       h
        tax                                     ; 9DC1 AA                       .
        pla                                     ; 9DC2 68                       h
        tay                                     ; 9DC3 A8                       .
        dey                                     ; 9DC4 88                       .
        dex                                     ; 9DC5 CA                       .
        bne     BattleTurnEngine_Entry_9DA2     ; 9DC6 D0 DA                    ..
        brk                                     ; 9DC8 00                       .
        db   $12,$DF                         ; 9DC9 12 DF                    ..
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9DCB:
        rts                                     ; 9DCB 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9DCC:
        lda     $C6                             ; 9DCC A5 C6                    ..
        pha                                     ; 9DCE 48                       H
        asl     a                               ; 9DCF 0A                       .
        asl     a                               ; 9DD0 0A                       .
        asl     a                               ; 9DD1 0A                       .
        ora     #$80                            ; 9DD2 09 80                    ..
        sta     $C6                             ; 9DD4 85 C6                    ..
        ldx     #$07                            ; 9DD6 A2 07                    ..
BattleTurnEngine_Branch_9DD8:
        lda     $0690,x                         ; 9DD8 BD 90 06                 ...
        and     #$98                            ; 9DDB 29 98                    ).
        cmp     $C6                             ; 9DDD C5 C6                    ..
        beq     BattleTurnEngine_Branch_9DEC    ; 9DDF F0 0B                    ..
        dex                                     ; 9DE1 CA                       .
        bpl     BattleTurnEngine_Branch_9DD8    ; 9DE2 10 F4                    ..
        ldy     $C6                             ; 9DE4 A4 C6                    ..
        pla                                     ; 9DE6 68                       h
        sta     $C6                             ; 9DE7 85 C6                    ..
        tya                                     ; 9DE9 98                       .
        sec                                     ; 9DEA 38                       8
        rts                                     ; 9DEB 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9DEC:
        ldx     #$07                            ; 9DEC A2 07                    ..
BattleTurnEngine_Branch_9DEE:
        lda     $0690,x                         ; 9DEE BD 90 06                 ...
        and     #$9F                            ; 9DF1 29 9F                    ).
        cmp     $C6                             ; 9DF3 C5 C6                    ..
        beq     BattleTurnEngine_Branch_9E02    ; 9DF5 F0 0B                    ..
        dex                                     ; 9DF7 CA                       .
        bpl     BattleTurnEngine_Branch_9DEE    ; 9DF8 10 F4                    ..
        ldy     $C6                             ; 9DFA A4 C6                    ..
        pla                                     ; 9DFC 68                       h
        sta     $C6                             ; 9DFD 85 C6                    ..
        tya                                     ; 9DFF 98                       .
        sec                                     ; 9E00 38                       8
        rts                                     ; 9E01 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9E02:
        inc     $C6                             ; 9E02 E6 C6                    ..
        lda     $C6                             ; 9E04 A5 C6                    ..
        and     #$07                            ; 9E06 29 07                    ).
        bne     BattleTurnEngine_Branch_9DEC    ; 9E08 D0 E2                    ..
        clc                                     ; 9E0A 18                       .
        rts                                     ; 9E0B 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9E0C:
        pha                                     ; 9E0C 48                       H
        lda     $C4                             ; 9E0D A5 C4                    ..
        pha                                     ; 9E0F 48                       H
        lda     #$FF                            ; 9E10 A9 FF                    ..
        sta     $C4                             ; 9E12 85 C4                    ..
        jsr     BattleTurnEngine_Entry_9E1C     ; 9E14 20 1C 9E                  ..
        pla                                     ; 9E17 68                       h
        sta     $C4                             ; 9E18 85 C4                    ..
        pla                                     ; 9E1A 68                       h
        rts                                     ; 9E1B 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9E1C:
        pha                                     ; 9E1C 48                       H
        tya                                     ; 9E1D 98                       .
        pha                                     ; 9E1E 48                       H
        lda     $C4                             ; 9E1F A5 C4                    ..
        ldy     #$00                            ; 9E21 A0 00                    ..
BattleTurnEngine_Branch_9E23:
        cmp     $044C,y                         ; 9E23 D9 4C 04                 .L.
        beq     BattleTurnEngine_Branch_9E2F    ; 9E26 F0 07                    ..
        iny                                     ; 9E28 C8                       .
        cpy     #$0E                            ; 9E29 C0 0E                    ..
        bne     BattleTurnEngine_Branch_9E23    ; 9E2B D0 F6                    ..
        beq     BattleTurnEngine_Branch_9E53    ; 9E2D F0 24                    .$
BattleTurnEngine_Branch_9E2F:
        sty     $C8                             ; 9E2F 84 C8                    ..
        jmp     BattleTurnEngine_Branch_9E5A    ; 9E31 4C 5A 9E                 LZ.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9E34:
        lda     $C4                             ; 9E34 A5 C4                    ..
        pha                                     ; 9E36 48                       H
        lda     #$FF                            ; 9E37 A9 FF                    ..
        sta     $C4                             ; 9E39 85 C4                    ..
        jsr     BattleTurnEngine_Entry_9E42     ; 9E3B 20 42 9E                  B.
        pla                                     ; 9E3E 68                       h
        sta     $C4                             ; 9E3F 85 C4                    ..
        rts                                     ; 9E41 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9E42:
        pha                                     ; 9E42 48                       H
        tya                                     ; 9E43 98                       .
        pha                                     ; 9E44 48                       H
        lda     $C4                             ; 9E45 A5 C4                    ..
        ldy     #$00                            ; 9E47 A0 00                    ..
BattleTurnEngine_Branch_9E49:
        cmp     $0440,y                         ; 9E49 D9 40 04                 .@.
        beq     BattleTurnEngine_Branch_9E58    ; 9E4C F0 0A                    ..
        iny                                     ; 9E4E C8                       .
        cpy     #$04                            ; 9E4F C0 04                    ..
        bne     BattleTurnEngine_Branch_9E49    ; 9E51 D0 F6                    ..
BattleTurnEngine_Branch_9E53:
        pla                                     ; 9E53 68                       h
        tay                                     ; 9E54 A8                       .
        pla                                     ; 9E55 68                       h
        clc                                     ; 9E56 18                       .
        rts                                     ; 9E57 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9E58:
        sty     $C6                             ; 9E58 84 C6                    ..
BattleTurnEngine_Branch_9E5A:
        pla                                     ; 9E5A 68                       h
        tay                                     ; 9E5B A8                       .
        pla                                     ; 9E5C 68                       h
        rts                                     ; 9E5D 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9E5E:
        tya                                     ; 9E5E 98                       .
        pha                                     ; 9E5F 48                       H
        ldy     #$00                            ; 9E60 A0 00                    ..
BattleTurnEngine_Branch_9E62:
        lda     $0690,y                         ; 9E62 B9 90 06                 ...
        bpl     BattleTurnEngine_Branch_9E70    ; 9E65 10 09                    ..
        iny                                     ; 9E67 C8                       .
        cpy     #$08                            ; 9E68 C0 08                    ..
        bne     BattleTurnEngine_Branch_9E62    ; 9E6A D0 F6                    ..
        pla                                     ; 9E6C 68                       h
        tay                                     ; 9E6D A8                       .
        clc                                     ; 9E6E 18                       .
        rts                                     ; 9E6F 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9E70:
        sty     $C7                             ; 9E70 84 C7                    ..
        pla                                     ; 9E72 68                       h
        tay                                     ; 9E73 A8                       .
        sec                                     ; 9E74 38                       8
        rts                                     ; 9E75 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9E76:
        ldx     $C7                             ; 9E76 A6 C7                    ..
        jsr     BattleTurnEngine_Entry_9E81     ; 9E78 20 81 9E                  ..
        lda     $0440,x                         ; 9E7B BD 40 04                 .@.
        rts                                     ; 9E7E 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9E7F:
        ldx     $C7                             ; 9E7F A6 C7                    ..
BattleTurnEngine_Entry_9E81:
        lda     $0690,x                         ; 9E81 BD 90 06                 ...
        asl     a                               ; 9E84 0A                       .
        php                                     ; 9E85 08                       .
        lsr     a                               ; 9E86 4A                       J
        and     #$18                            ; 9E87 29 18                    ).
        lsr     a                               ; 9E89 4A                       J
        lsr     a                               ; 9E8A 4A                       J
        lsr     a                               ; 9E8B 4A                       J
        tax                                     ; 9E8C AA                       .
        plp                                     ; 9E8D 28                       (
        rts                                     ; 9E8E 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9E8F:
        txa                                     ; 9E8F 8A                       .
        pha                                     ; 9E90 48                       H
        tya                                     ; 9E91 98                       .
        pha                                     ; 9E92 48                       H
        lda     $C7                             ; 9E93 A5 C7                    ..
        lsr     a                               ; 9E95 4A                       J
        tax                                     ; 9E96 AA                       .
        lda     $738D,x                         ; 9E97 BD 8D 73                 ..s
        bcs     BattleTurnEngine_Branch_9EA4    ; 9E9A B0 08                    ..
        and     #$08                            ; 9E9C 29 08                    ).
        beq     BattleTurnEngine_Branch_9EA7    ; 9E9E F0 07                    ..
BattleTurnEngine_Branch_9EA0:
        pla                                     ; 9EA0 68                       h
        pla                                     ; 9EA1 68                       h
        clc                                     ; 9EA2 18                       .
        rts                                     ; 9EA3 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9EA4:
        asl     a                               ; 9EA4 0A                       .
        bcs     BattleTurnEngine_Branch_9EA0    ; 9EA5 B0 F9                    ..
BattleTurnEngine_Branch_9EA7:
        ldy     #$00                            ; 9EA7 A0 00                    ..
BattleTurnEngine_Branch_9EA9:
        lda     $0690,y                         ; 9EA9 B9 90 06                 ...
        bpl     BattleTurnEngine_Branch_9EB5    ; 9EAC 10 07                    ..
        iny                                     ; 9EAE C8                       .
        cpy     #$08                            ; 9EAF C0 08                    ..
        bcc     BattleTurnEngine_Branch_9EA9    ; 9EB1 90 F6                    ..
        clc                                     ; 9EB3 18                       .
        rts                                     ; 9EB4 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9EB5:
        tya                                     ; 9EB5 98                       .
        ora     #$08                            ; 9EB6 09 08                    ..
        tay                                     ; 9EB8 A8                       .
        lda     $C7                             ; 9EB9 A5 C7                    ..
        lsr     a                               ; 9EBB 4A                       J
        bcc     BattleTurnEngine_Branch_9EC4    ; 9EBC 90 06                    ..
        tya                                     ; 9EBE 98                       .
        asl     a                               ; 9EBF 0A                       .
        asl     a                               ; 9EC0 0A                       .
        asl     a                               ; 9EC1 0A                       .
        asl     a                               ; 9EC2 0A                       .
        tay                                     ; 9EC3 A8                       .
BattleTurnEngine_Branch_9EC4:
        tya                                     ; 9EC4 98                       .
        ora     $738D,x                         ; 9EC5 1D 8D 73                 ..s
        sta     $738D,x                         ; 9EC8 9D 8D 73                 ..s
        pla                                     ; 9ECB 68                       h
        tay                                     ; 9ECC A8                       .
        pla                                     ; 9ECD 68                       h
        tax                                     ; 9ECE AA                       .
        sec                                     ; 9ECF 38                       8
        rts                                     ; 9ED0 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9ED1:
        txa                                     ; 9ED1 8A                       .
        pha                                     ; 9ED2 48                       H
        lda     $C7                             ; 9ED3 A5 C7                    ..
        lsr     a                               ; 9ED5 4A                       J
        tax                                     ; 9ED6 AA                       .
        lda     $738D,x                         ; 9ED7 BD 8D 73                 ..s
        bcc     BattleTurnEngine_Branch_9EE0    ; 9EDA 90 04                    ..
        lsr     a                               ; 9EDC 4A                       J
        lsr     a                               ; 9EDD 4A                       J
        lsr     a                               ; 9EDE 4A                       J
        lsr     a                               ; 9EDF 4A                       J
BattleTurnEngine_Branch_9EE0:
        pha                                     ; 9EE0 48                       H
        sec                                     ; 9EE1 38                       8
        and     #$08                            ; 9EE2 29 08                    ).
        bne     BattleTurnEngine_Branch_9EEB    ; 9EE4 D0 05                    ..
        pla                                     ; 9EE6 68                       h
        pla                                     ; 9EE7 68                       h
        tax                                     ; 9EE8 AA                       .
        clc                                     ; 9EE9 18                       .
        rts                                     ; 9EEA 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9EEB:
        pla                                     ; 9EEB 68                       h
        and     #$07                            ; 9EEC 29 07                    ).
        sta     $C7                             ; 9EEE 85 C7                    ..
        pla                                     ; 9EF0 68                       h
        tax                                     ; 9EF1 AA                       .
        sec                                     ; 9EF2 38                       8
        rts                                     ; 9EF3 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9EF4:
        txa                                     ; 9EF4 8A                       .
        pha                                     ; 9EF5 48                       H
        lda     a:$C7                           ; 9EF6 AD C7 00                 ...
        lsr     a                               ; 9EF9 4A                       J
        tax                                     ; 9EFA AA                       .
        lda     #$F0                            ; 9EFB A9 F0                    ..
        bcc     BattleTurnEngine_Branch_9F03    ; 9EFD 90 04                    ..
        lsr     a                               ; 9EFF 4A                       J
        lsr     a                               ; 9F00 4A                       J
        lsr     a                               ; 9F01 4A                       J
        lsr     a                               ; 9F02 4A                       J
BattleTurnEngine_Branch_9F03:
        and     $738D,x                         ; 9F03 3D 8D 73                 =.s
        sta     $738D,x                         ; 9F06 9D 8D 73                 ..s
        pla                                     ; 9F09 68                       h
        tax                                     ; 9F0A AA                       .
        rts                                     ; 9F0B 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9F0C:
        pha                                     ; 9F0C 48                       H
        txa                                     ; 9F0D 8A                       .
        pha                                     ; 9F0E 48                       H
        ldx     $C4                             ; 9F0F A6 C4                    ..
        lda     Bank14_MonsterIdMap,x           ; 9F11 BD D5 B2                 ...
        sta     $C4                             ; 9F14 85 C4                    ..
        pla                                     ; 9F16 68                       h
        tax                                     ; 9F17 AA                       .
        pla                                     ; 9F18 68                       h
        rts                                     ; 9F19 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9F1A:
        ldx     #$00                            ; 9F1A A2 00                    ..
BattleTurnEngine_Branch_9F1C:
        cmp     Bank14_MonsterIdMap,x           ; 9F1C DD D5 B2                 ...
        beq     BattleTurnEngine_Branch_9F24    ; 9F1F F0 03                    ..
        inx                                     ; 9F21 E8                       .
        bne     BattleTurnEngine_Branch_9F1C    ; 9F22 D0 F8                    ..
BattleTurnEngine_Branch_9F24:
        txa                                     ; 9F24 8A                       .
        rts                                     ; 9F25 60                       `
; ----------------------------------------------------------------------------
Bank14_SelectMonsterGraphicsBank:
        tya                                     ; 9F26 98                       .
        pha                                     ; 9F27 48                       H
        txa                                     ; 9F28 8A                       .
        pha                                     ; 9F29 48                       H
        ldy     #$14                            ; 9F2A A0 14                    ..
        lda     $C4                             ; 9F2C A5 C4                    ..
        cmp     #$14                            ; 9F2E C9 14                    ..
        beq     BattleTurnEngine_Branch_9F5F    ; 9F30 F0 2D                    .-
        cmp     #$2E                            ; 9F32 C9 2E                    ..
        beq     BattleTurnEngine_Branch_9F5F    ; 9F34 F0 29                    .)
        cmp     #$3F                            ; 9F36 C9 3F                    .?
        beq     BattleTurnEngine_Branch_9F5F    ; 9F38 F0 25                    .%
        cmp     #$B2                            ; 9F3A C9 B2                    ..
        beq     BattleTurnEngine_Branch_9F5F    ; 9F3C F0 21                    .!
        cmp     #$C0                            ; 9F3E C9 C0                    ..
        beq     BattleTurnEngine_Branch_9F5F    ; 9F40 F0 1D                    ..
        cmp     #$B1                            ; 9F42 C9 B1                    ..
        bne     BattleTurnEngine_Branch_9F4A    ; 9F44 D0 04                    ..
        ldy     #$10                            ; 9F46 A0 10                    ..
        bne     BattleTurnEngine_Branch_9F5F    ; 9F48 D0 15                    ..
BattleTurnEngine_Branch_9F4A:
        pha                                     ; 9F4A 48                       H
        and     #$07                            ; 9F4B 29 07                    ).
        tax                                     ; 9F4D AA                       .
        pla                                     ; 9F4E 68                       h
        lsr     a                               ; 9F4F 4A                       J
        lsr     a                               ; 9F50 4A                       J
        lsr     a                               ; 9F51 4A                       J
        tay                                     ; 9F52 A8                       .
        lda     Bank14_MonsterGraphicsBankBitmap,y; 9F53 B9 98 B3               ...
BattleTurnEngine_Branch_9F56:
        asl     a                               ; 9F56 0A                       .
        dex                                     ; 9F57 CA                       .
        bpl     BattleTurnEngine_Branch_9F56    ; 9F58 10 FC                    ..
        ldy     #$06                            ; 9F5A A0 06                    ..
        bcc     BattleTurnEngine_Branch_9F5F    ; 9F5C 90 01                    ..
        iny                                     ; 9F5E C8                       .
BattleTurnEngine_Branch_9F5F:
        sty     $C2                             ; 9F5F 84 C2                    ..
        pla                                     ; 9F61 68                       h
        tax                                     ; 9F62 AA                       .
        pla                                     ; 9F63 68                       h
        tay                                     ; 9F64 A8                       .
        rts                                     ; 9F65 60                       `
; ----------------------------------------------------------------------------
Bank14_RefillMonsterGraphicsInput:
        txa                                     ; 9F66 8A                       .
        pha                                     ; 9F67 48                       H
        tya                                     ; 9F68 98                       .
        pha                                     ; 9F69 48                       H
        lda     $00                           ; 9F6A A5 00                    ..
        pha                                     ; 9F6C 48                       H
        lda     $01                             ; 9F6D A5 01                    ..
        pha                                     ; 9F6F 48                       H
        lda     #$00                            ; 9F70 A9 00                    ..
        sta     $6DF8                           ; 9F72 8D F8 6D                 ..m
        lda     $C0                             ; 9F75 A5 C0                    ..
        sta     $00                           ; 9F77 85 00                    ..
        lda     $C1                             ; 9F79 A5 C1                    ..
        sta     $01                             ; 9F7B 85 01                    ..
        lda     $C2                             ; 9F7D A5 C2                    ..
        jsr     UpperFixedEngine_Entry_C7E1     ; 9F7F 20 E1 C7                  ..
        pla                                     ; 9F82 68                       h
        sta     $01                             ; 9F83 85 01                    ..
        pla                                     ; 9F85 68                       h
        sta     $00                           ; 9F86 85 00                    ..
        pla                                     ; 9F88 68                       h
        tay                                     ; 9F89 A8                       .
        pla                                     ; 9F8A 68                       h
        tax                                     ; 9F8B AA                       .
        rts                                     ; 9F8C 60                       `
; ----------------------------------------------------------------------------
Bank14_ReadMonsterGraphicsByte:
        txa                                     ; 9F8D 8A                       .
        pha                                     ; 9F8E 48                       H
        tya                                     ; 9F8F 98                       .
        pha                                     ; 9F90 48                       H
        ldx     $6DF8                           ; 9F91 AE F8 6D                 ..m
        lda     $0108,x                         ; 9F94 BD 08 01                 ...
        sta     $C3                             ; 9F97 85 C3                    ..
        pla                                     ; 9F99 68                       h
        tay                                     ; 9F9A A8                       .
        pla                                     ; 9F9B 68                       h
        tax                                     ; 9F9C AA                       .
        lda     $C3                             ; 9F9D A5 C3                    ..
BattleTurnEngine_Entry_9F9F:
        inc     $6DF8                           ; 9F9F EE F8 6D                 ..m
        inc     $C0                             ; 9FA2 E6 C0                    ..
        bne     BattleTurnEngine_Branch_9FA8    ; 9FA4 D0 02                    ..
        inc     $C1                             ; 9FA6 E6 C1                    ..
BattleTurnEngine_Branch_9FA8:
        rts                                     ; 9FA8 60                       `
; ----------------------------------------------------------------------------
Bank14_LoadMonsterGraphicsDescriptor:
        txa                                     ; 9FA9 8A                       .
        pha                                     ; 9FAA 48                       H
        lda     #$00                            ; 9FAB A9 00                    ..
        sta     $C1                             ; 9FAD 85 C1                    ..
        lda     $C4                             ; 9FAF A5 C4                    ..
        asl     a                               ; 9FB1 0A                       .
        rol     $C1                             ; 9FB2 26 C1                    &.
        asl     a                               ; 9FB4 0A                       .
        rol     $C1                             ; 9FB5 26 C1                    &.
        clc                                     ; 9FB7 18                       .
        adc     $C4                             ; 9FB8 65 C4                    e.
        bcc     BattleTurnEngine_Branch_9FBE    ; 9FBA 90 02                    ..
        inc     $C1                             ; 9FBC E6 C1                    ..
BattleTurnEngine_Branch_9FBE:
        clc                                     ; 9FBE 18                       .
        adc     $A019                           ; 9FBF 6D 19 A0                 m..
        sta     $C0                             ; 9FC2 85 C0                    ..
        lda     $A01A                           ; 9FC4 AD 1A A0                 ...
        adc     $C1                             ; 9FC7 65 C1                    e.
        sta     $C1                             ; 9FC9 85 C1                    ..
        ldx     #$C0                            ; 9FCB A2 C0                    ..
        jsr     UpperFixedEngine_Entry_C888     ; 9FCD 20 88 C8                  ..
        sta     a:$D1                           ; 9FD0 8D D1 00                 ...
        jsr     UpperFixedEngine_Entry_C888     ; 9FD3 20 88 C8                  ..
        sta     $CD                             ; 9FD6 85 CD                    ..
        jsr     UpperFixedEngine_Entry_C888     ; 9FD8 20 88 C8                  ..
        sta     $CE                             ; 9FDB 85 CE                    ..
        jsr     UpperFixedEngine_Entry_C888     ; 9FDD 20 88 C8                  ..
        sta     $CF                             ; 9FE0 85 CF                    ..
        jsr     UpperFixedEngine_Entry_C888     ; 9FE2 20 88 C8                  ..
        sta     a:$D0                           ; 9FE5 8D D0 00                 ...
        pla                                     ; 9FE8 68                       h
        tax                                     ; 9FE9 AA                       .
        rts                                     ; 9FEA 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_9FEB:
        lsr     a                               ; 9FEB 4A                       J
        and     #$04                            ; 9FEC 29 04                    ).
        bne     BattleTurnEngine_Branch_9FFC    ; 9FEE D0 0C                    ..
        lda     #$10                            ; 9FF0 A9 10                    ..
        clc                                     ; 9FF2 18                       .
        adc     $C0                             ; 9FF3 65 C0                    e.
        sta     $C0                             ; 9FF5 85 C0                    ..
        bcc     BattleTurnEngine_Branch_A018    ; 9FF7 90 1F                    ..
        inc     $C1                             ; 9FF9 E6 C1                    ..
        rts                                     ; 9FFB 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_9FFC:
        bcc     BattleTurnEngine_Branch_A001    ; 9FFC 90 03                    ..
        jsr     BattleTurnEngine_Entry_9F9F     ; 9FFE 20 9F 9F                  ..
BattleTurnEngine_Branch_A001:
        jsr     Bank14_ReadMonsterGraphicsByte  ; A001 20 8D 9F                  ..
        pha                                     ; A004 48                       H
        jsr     Bank14_ReadMonsterGraphicsByte  ; A005 20 8D 9F                  ..
        tay                                     ; A008 A8                       .
        pla                                     ; A009 68                       h
        jsr     BattleTurnEngine_Entry_A00E     ; A00A 20 0E A0                  ..
        tya                                     ; A00D 98                       .
BattleTurnEngine_Entry_A00E:
        asl     a                               ; A00E 0A                       .
        bcc     BattleTurnEngine_Branch_A016    ; A00F 90 05                    ..
        pha                                     ; A011 48                       H
        jsr     BattleTurnEngine_Entry_9F9F     ; A012 20 9F 9F                  ..
        pla                                     ; A015 68                       h
BattleTurnEngine_Branch_A016:
        bne     BattleTurnEngine_Entry_A00E     ; A016 D0 F6                    ..
BattleTurnEngine_Branch_A018:
        rts                                     ; A018 60                       `
; ----------------------------------------------------------------------------
        db   $B1                             ; A019 B1                       .
        db   $B3                             ; A01A B3                       .
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A01B:
        jsr     BattleTurnEngine_Entry_A07C     ; A01B 20 7C A0                  |.
        jsr     BattleTurnEngine_Entry_A0D5     ; A01E 20 D5 A0                  ..
        jsr     BattleTurnEngine_Entry_A02E     ; A021 20 2E A0                  ..
        jsr     BattleTurnEngine_Entry_9A40     ; A024 20 40 9A                  @.
        jmp     BattleTurnEngine_Entry_9C17     ; A027 4C 17 9C                 L..
; ----------------------------------------------------------------------------
        db   $A9,$00,$F0,$02                 ; A02A A9 00 F0 02              ....
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A02E:
        lda     #$FF                            ; A02E A9 FF                    ..
        sta     $00                           ; A030 85 00                    ..
BattleTurnEngine_Branch_A032:
        lda     #$03                            ; A032 A9 03                    ..
        sta     $02                             ; A034 85 02                    ..
        jsr     BattleTurnEngine_Entry_A042     ; A036 20 42 A0                  B.
        bcc     BattleTurnEngine_Branch_A03C    ; A039 90 01                    ..
        rts                                     ; A03B 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_A03C:
        jsr     BattleTurnEngine_Entry_A092     ; A03C 20 92 A0                  ..
        jmp     BattleTurnEngine_Branch_A032    ; A03F 4C 32 A0                 L2.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A042:
        lda     #$00                            ; A042 A9 00                    ..
        sta     $01                             ; A044 85 01                    ..
        ldx     #$07                            ; A046 A2 07                    ..
BattleTurnEngine_Branch_A048:
        lda     $0650,x                         ; A048 BD 50 06                 .P.
        cmp     $00                           ; A04B C5 00                    ..
        clc                                     ; A04D 18                       .
        beq     BattleTurnEngine_Branch_A051    ; A04E F0 01                    ..
        sec                                     ; A050 38                       8
BattleTurnEngine_Branch_A051:
        rol     $01                             ; A051 26 01                    &.
        dex                                     ; A053 CA                       .
        bpl     BattleTurnEngine_Branch_A048    ; A054 10 F2                    ..
        lda     $01                             ; A056 A5 01                    ..
        bne     BattleTurnEngine_Branch_A05C    ; A058 D0 02                    ..
        sec                                     ; A05A 38                       8
        rts                                     ; A05B 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_A05C:
        brk                                     ; A05C 00                       .
        db   $2B,$0F                         ; A05D 2B 0F                    +.
; ----------------------------------------------------------------------------
        tax                                     ; A05F AA                       .
        lda     $0650,x                         ; A060 BD 50 06                 .P.
        eor     $00                           ; A063 45 00                    E.
        brk                                     ; A065 00                       .
        db   $2B,$0F                         ; A066 2B 0F                    +.
; ----------------------------------------------------------------------------
        tay                                     ; A068 A8                       .
        lda     #$00                            ; A069 A9 00                    ..
        sec                                     ; A06B 38                       8
BattleTurnEngine_Branch_A06C:
        rol     a                               ; A06C 2A                       *
        dey                                     ; A06D 88                       .
        bpl     BattleTurnEngine_Branch_A06C    ; A06E 10 FC                    ..
        eor     $0650,x                         ; A070 5D 50 06                 ]P.
        sta     $0650,x                         ; A073 9D 50 06                 .P.
        dec     $02                             ; A076 C6 02                    ..
        bne     BattleTurnEngine_Entry_A042     ; A078 D0 C8                    ..
        clc                                     ; A07A 18                       .
        rts                                     ; A07B 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A07C:
        lda     #$00                            ; A07C A9 00                    ..
        beq     BattleTurnEngine_Branch_A082    ; A07E F0 02                    ..
BattleTurnEngine_Entry_A080:
        lda     #$FF                            ; A080 A9 FF                    ..
BattleTurnEngine_Branch_A082:
        ldx     #$0F                            ; A082 A2 0F                    ..
        ldy     #$00                            ; A084 A0 00                    ..
BattleTurnEngine_Branch_A086:
        pha                                     ; A086 48                       H
        sta     $0650,x                         ; A087 9D 50 06                 .P.
        tya                                     ; A08A 98                       .
        sta     $0658,x                         ; A08B 9D 58 06                 .X.
        pla                                     ; A08E 68                       h
        dex                                     ; A08F CA                       .
        bpl     BattleTurnEngine_Branch_A086    ; A090 10 F4                    ..
BattleTurnEngine_Entry_A092:
        lda     #$80                            ; A092 A9 80                    ..
        sta     $0300                           ; A094 8D 00 03                 ...
        lda     #$00                            ; A097 A9 00                    ..
        sta     NextTextCharacter               ; A099 8D 02 03                 ...
        lda     #$10                            ; A09C A9 10                    ..
        sta     $0301                           ; A09E 8D 01 03                 ...
        lda     #$01                            ; A0A1 A9 01                    ..
        sta     $050B                           ; A0A3 8D 0B 05                 ...
        ldx     #$0F                            ; A0A6 A2 0F                    ..
BattleTurnEngine_Branch_A0A8:
        lda     $0650,x                         ; A0A8 BD 50 06                 .P.
        sta     $0303,x                         ; A0AB 9D 03 03                 ...
        dex                                     ; A0AE CA                       .
        bpl     BattleTurnEngine_Branch_A0A8    ; A0AF 10 F7                    ..
        jmp     UpperFixedEngine_Entry_C62D     ; A0B1 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A0B4:
        lda     $1F                             ; A0B4 A5 1F                    ..
        and     #$7F                            ; A0B6 29 7F                    ).
        sta     $1F                             ; A0B8 85 1F                    ..
        lda     $1F                             ; A0BA A5 1F                    ..
        and     #$BF                            ; A0BC 29 BF                    ).
        sta     $1F                             ; A0BE 85 1F                    ..
        lda     $1F                             ; A0C0 A5 1F                    ..
        and     #$F7                            ; A0C2 29 F7                    ).
        sta     $1F                             ; A0C4 85 1F                    ..
BattleTurnEngine_Branch_A0C6:
        jsr     WaitForNmi                      ; A0C6 20 74 FF                  t.
        lda     $0513                           ; A0C9 AD 13 05                 ...
        bne     BattleTurnEngine_Branch_A0C6    ; A0CC D0 F8                    ..
        lda     $1F                             ; A0CE A5 1F                    ..
        ora     #$08                            ; A0D0 09 08                    ..
        sta     $1F                             ; A0D2 85 1F                    ..
        rts                                     ; A0D4 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A0D5:
        ldy     #$23                            ; A0D5 A0 23                    .#
        lda     #$00                            ; A0D7 A9 00                    ..
        sta     $01                             ; A0D9 85 01                    ..
        lda     #$02                            ; A0DB A9 02                    ..
        sta     $02                             ; A0DD 85 02                    ..
BattleTurnEngine_Branch_A0DF:
        ldx     $C7                             ; A0DF A6 C7                    ..
        lda     $0698,x                         ; A0E1 BD 98 06                 ...
        asl     a                               ; A0E4 0A                       .
        asl     a                               ; A0E5 0A                       .
        asl     a                               ; A0E6 0A                       .
        sta     $06                             ; A0E7 85 06                    ..
        sty     $04                             ; A0E9 84 04                    ..
        lda     #$00                            ; A0EB A9 00                    ..
        sta     $05                             ; A0ED 85 05                    ..
        ldx     #$04                            ; A0EF A2 04                    ..
        lda     #$06                            ; A0F1 A9 06                    ..
        jsr     UpperFixedEngine_Entry_C851     ; A0F3 20 51 C8                  Q.
        asl     a                               ; A0F6 0A                       .
        asl     a                               ; A0F7 0A                       .
        asl     a                               ; A0F8 0A                       .
        adc     $06                             ; A0F9 65 06                    e.
        sta     $03                             ; A0FB 85 03                    ..
        lda     $04                             ; A0FD A5 04                    ..
        asl     a                               ; A0FF 0A                       .
        asl     a                               ; A100 0A                       .
        asl     a                               ; A101 0A                       .
        adc     #$57                            ; A102 69 57                    iW
        sta     $00                           ; A104 85 00                    ..
        ldx     #$00                            ; A106 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; A108 20 3E C7                  >.
        dey                                     ; A10B 88                       .
        bpl     BattleTurnEngine_Branch_A0DF    ; A10C 10 D1                    ..
        jmp     WaitForNmi                      ; A10E 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; A111 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; A119 00 00 00 00 00 00 00 00  ........
        db   $01,$1F,$7F,$FF,$FF,$FF,$67,$10 ; A121 01 1F 7F FF FF FF 67 10  ......g.
        db   $01,$1F,$1F,$3B,$F5,$FB,$7F,$1F ; A129 01 1F 1F 3B F5 FB 7F 1F  ...;....
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; A131 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; A139 00 00 00 00 00 00 00 00  ........
        db   $80,$F8,$FE,$FF,$FF,$FF,$E6,$08 ; A141 80 F8 FE FF FF FF E6 08  ........
        db   $80,$F8,$FE,$DF,$AF,$DF,$FE,$F8 ; A149 80 F8 FE DF AF DF FE F8  ........
        db   $01,$03,$07,$0F,$1F,$1F,$1F,$3F ; A151 01 03 07 0F 1F 1F 1F 3F  .......?
        db   $01,$03,$07,$03,$07,$0F,$1B,$35 ; A159 01 03 07 03 07 0F 1B 35  .......5
        db   $3F,$3F,$3F,$3E,$1C,$1C,$0E,$07 ; A161 3F 3F 3F 3E 1C 1C 0E 07  ???>....
        db   $35,$35,$3B,$3F,$1F,$1F,$0F,$07 ; A169 35 35 3B 3F 1F 1F 0F 07  55;?....
        db   $00,$80,$C0,$E0,$F0,$F0,$F0,$F8 ; A171 00 80 C0 E0 F0 F0 F0 F8  ........
        db   $00,$80,$C0,$E0,$F0,$F0,$B0,$58 ; A179 00 80 C0 E0 F0 F0 B0 58  .......X
        db   $F8,$F8,$F8,$F8,$70,$70,$E0,$C0 ; A181 F8 F8 F8 F8 70 70 E0 C0  ....pp..
        db   $58,$58,$B8,$F8,$F0,$F0,$E0,$C0 ; A189 58 58 B8 F8 F0 F0 E0 C0  XX......
        db   $00,$00,$01,$02,$05,$19,$3D,$2F ; A191 00 00 01 02 05 19 3D 2F  ......=/
        db   $00,$00,$01,$03,$06,$16,$23,$32 ; A199 00 00 01 03 06 16 23 32  ......#2
        db   $00,$00,$C0,$E0,$F0,$F0,$C8,$3C ; A1A1 00 00 C0 E0 F0 F0 C8 3C  .......<
        db   $00,$00,$80,$00,$20,$20,$B0,$F0 ; A1A9 00 00 80 00 20 20 B0 F0  ....  ..
        db   $33,$1D,$04,$06,$03,$00,$00,$00 ; A1B1 33 1D 04 06 03 00 00 00  3.......
        db   $3E,$1E,$07,$07,$03,$00,$00,$00 ; A1B9 3E 1E 07 07 03 00 00 00  >.......
        db   $78,$E4,$F8,$20,$C0,$00,$00,$00 ; A1C1 78 E4 F8 20 C0 00 00 00  x.. ....
        db   $C4,$5C,$38,$E0,$C0,$00,$00,$00 ; A1C9 C4 5C 38 E0 C0 00 00 00  .\8.....
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; A1D1 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; A1D9 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$03,$07,$0F,$0F,$EF ; A1E1 00 00 00 03 07 0F 0F EF  ........
        db   $00,$00,$00,$02,$04,$08,$08,$88 ; A1E9 00 00 00 02 04 08 08 88  ........
        db   $00,$00,$00,$E0,$F0,$F8,$F8,$FC ; A1F1 00 00 00 E0 F0 F8 F8 FC  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; A1F9 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; A201 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; A209 00 00 00 00 00 00 00 00  ........
        db   $03,$07,$0B,$0B,$09,$0C,$06,$03 ; A211 03 07 0B 0B 09 0C 06 03  ........
        db   $02,$04,$0C,$0C,$0E,$0F,$07,$03 ; A219 02 04 0C 0C 0E 0F 07 03  ........
        db   $EF,$F7,$FB,$F8,$E1,$F9,$5D,$BD ; A221 EF F7 FB F8 E1 F9 5D BD  ......].
        db   $1C,$1E,$0F,$0F,$1F,$3F,$E7,$C3 ; A229 1C 1E 0F 0F 1F 3F E7 C3  .....?..
        db   $FD,$FF,$FF,$FD,$FD,$FC,$FE,$FF ; A231 FD FF FF FD FD FC FE FF  ........
        db   $04,$16,$FC,$86,$06,$07,$03,$81 ; A239 04 16 FC 86 06 07 03 81  ........
        db   $C0,$E0,$F0,$F0,$F0,$F0,$20,$E0 ; A241 C0 E0 F0 F0 F0 F0 20 E0  ...... .
        db   $00,$00,$00,$00,$00,$10,$E0,$E0 ; A249 00 00 00 00 00 10 E0 E0  ........
        db   $00,$01,$01,$02,$05,$0B,$0B,$09 ; A251 00 01 01 02 05 0B 0B 09  ........
        db   $00,$01,$01,$03,$06,$0C,$0C,$0E ; A259 00 01 01 03 06 0C 0C 0E  ........
        db   $B8,$0F,$DF,$EF,$EF,$E7,$F3,$F8 ; A261 B8 0F DF EF EF E7 F3 F8  ........
        db   $C7,$FF,$F0,$70,$30,$38,$3C,$1F ; A269 C7 FF F0 70 30 38 3C 1F  ...p08<.
        db   $FE,$7C,$9F,$CF,$DF,$FF,$FF,$EF ; A271 FE 7C 9F CF DF FF FF EF  .|......
        db   $C1,$F3,$E7,$78,$70,$10,$20,$30 ; A279 C1 F3 E7 78 70 10 20 30  ...xp. 0
        db   $C0,$00,$C0,$E0,$F0,$F0,$E0,$E0 ; A281 C0 00 C0 E0 F0 F0 E0 E0  ........
        db   $C0,$80,$80,$00,$00,$00,$10,$10 ; A289 C0 80 80 00 00 00 10 10  ........
        db   $0C,$06,$03,$00,$00,$00,$00,$00 ; A291 0C 06 03 00 00 00 00 00  ........
        db   $0F,$07,$03,$00,$00,$00,$00,$00 ; A299 0F 07 03 00 00 00 00 00  ........
        db   $C7,$3B,$EF,$00,$00,$00,$00,$00 ; A2A1 C7 3B EF 00 00 00 00 00  .;......
        db   $38,$FC,$EF,$00,$00,$00,$00,$00 ; A2A9 38 FC EF 00 00 00 00 00  8.......
        db   $B7,$73,$D8,$0F,$00,$00,$00,$00 ; A2B1 B7 73 D8 0F 00 00 00 00  .s......
        db   $78,$FC,$DF,$0F,$00,$00,$00,$00 ; A2B9 78 FC DF 0F 00 00 00 00  x.......
        db   $D0,$20,$60,$C0,$00,$00,$00,$00 ; A2C1 D0 20 60 C0 00 00 00 00  . `.....
        db   $30,$E0,$E0,$C0,$00,$00,$00,$00 ; A2C9 30 E0 E0 C0 00 00 00 00  0.......
        db   $02,$05,$05,$25,$43,$AB,$AD,$BE ; A2D1 02 05 05 25 43 AB AD BE  ...%C...
        db   $03,$06,$06,$3E,$7C,$DC,$DE,$C7 ; A2D9 03 06 06 3E 7C DC DE C7  ...>|...
        db   $F0,$F8,$B8,$BD,$9D,$C5,$F4,$1A ; A2E1 F0 F8 B8 BD 9D C5 F4 1A  ........
        db   $00,$00,$60,$61,$7B,$3F,$0F,$FD ; A2E9 00 00 60 61 7B 3F 0F FD  ..`a{?..
        db   $5C,$BE,$BE,$5E,$65,$B9,$C5,$79 ; A2F1 5C BE BE 5E 65 B9 C5 79  \..^e..y
        db   $60,$C0,$C1,$A1,$9B,$C7,$FF,$FF ; A2F9 60 C0 C1 A1 9B C7 FF FF  `.......
        db   $00,$3C,$7E,$BF,$7F,$6F,$72,$BC ; A301 00 3C 7E BF 7F 6F 72 BC  .<~..or.
        db   $00,$20,$40,$C0,$80,$90,$8D,$C3 ; A309 00 20 40 C0 80 90 8D C3  . @.....
        db   $DB,$6E,$30,$1E,$2F,$5F,$AF,$AF ; A311 DB 6E 30 1E 2F 5F AF AF  .n0./_..
        db   $E7,$71,$3F,$1F,$31,$60,$D8,$D8 ; A319 E7 71 3F 1F 31 60 D8 D8  .q?.1`..
        db   $E0,$1F,$2F,$5F,$5F,$57,$D7,$CB ; A321 E0 1F 2F 5F 5F 57 D7 CB  ../__W..
        db   $FF,$FF,$F0,$E0,$E0,$EC,$6C,$77 ; A329 FF FF F0 E0 E0 EC 6C 77  ......lw
        db   $8A,$6F,$97,$9B,$8E,$BD,$7D,$7D ; A331 8A 6F 97 9B 8E BD 7D 7D  .o....}}
        db   $7D,$98,$EE,$65,$73,$76,$C6,$C6 ; A339 7D 98 EE 65 73 76 C6 C6  }..esv..
        db   $C2,$7C,$80,$E6,$FF,$F7,$D7,$D7 ; A341 C2 7C 80 E6 FF F7 D7 D7  .|......
        db   $FE,$FC,$7C,$FC,$08,$18,$38,$38 ; A349 FE FC 7C FC 08 18 38 38  ..|...88
        db   $B7,$DF,$63,$3F,$10,$2F,$5F,$BF ; A351 B7 DF 63 3F 10 2F 5F BF  ..c?./_.
        db   $CE,$E0,$7C,$3F,$1F,$30,$60,$C0 ; A359 CE E0 7C 3F 1F 30 60 C0  ..|?.0`.
        db   $A7,$9F,$2F,$5F,$DB,$5C,$4F,$AE ; A361 A7 9F 2F 5F DB 5C 4F AE  ../_.\O.
        db   $78,$7F,$F0,$E0,$E4,$E3,$F0,$71 ; A369 78 7F F0 E0 E4 E3 F0 71  x......q
        db   $5D,$3E,$87,$CC,$DF,$D5,$AF,$17 ; A371 5D 3E 87 CC DF D5 AF 17  ]>......
        db   $E6,$F7,$FB,$73,$70,$7B,$5E,$EC ; A379 E6 F7 FB 73 70 7B 5E EC  ...sp{^.
        db   $C9,$66,$98,$F0,$00,$FC,$BF,$BF ; A381 C9 66 98 F0 00 FC BF BF  .f......
        db   $3F,$9E,$F8,$F0,$FC,$82,$60,$60 ; A389 3F 9E F8 F0 FC 82 60 60  ?.....``
        db   $BF,$B7,$AF,$CF,$57,$6F,$30,$1F ; A391 BF B7 AF CF 57 6F 30 1F  ....Wo0.
        db   $C0,$CC,$D8,$F8,$6E,$70,$3F,$1F ; A399 C0 CC D8 F8 6E 70 3F 1F  ....np?.
        db   $A1,$D2,$ED,$EB,$CB,$AD,$46,$83 ; A3A1 A1 D2 ED EB CB AD 46 83  ......F.
        db   $7F,$3F,$1E,$1C,$2C,$6E,$C7,$83 ; A3A9 7F 3F 1E 1C 2C 6E C7 83  .?..,n..
        db   $C5,$F5,$F5,$FE,$EB,$F9,$10,$E0 ; A3B1 C5 F5 F5 FE EB F9 10 E0  ........
        db   $FE,$2E,$0E,$0F,$1B,$19,$F0,$E0 ; A3B9 FE 2E 0E 0F 1B 19 F0 E0  ........
        db   $DE,$E6,$FD,$FB,$66,$9C,$F0,$00 ; A3C1 DE E6 FD FB 66 9C F0 00  ....f...
        db   $39,$19,$03,$07,$9E,$FC,$F0,$00 ; A3C9 39 19 03 07 9E FC F0 00  9.......
        db   $00,$18,$2C,$56,$5E,$64,$1C,$00 ; A3D1 00 18 2C 56 5E 64 1C 00  ..,V^d..
        db   $00,$10,$30,$68,$62,$7C,$1C,$00 ; A3D9 00 10 30 68 62 7C 1C 00  ..0hb|..
        db   $00,$00,$18,$34,$28,$18,$00,$00 ; A3E1 00 00 18 34 28 18 00 00  ...4(...
        db   $00,$00,$10,$28,$34,$18,$00,$00 ; A3E9 00 00 10 28 34 18 00 00  ...(4...
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A3F1:
        jsr     BattleTurnEngine_Entry_A0B4     ; A3F1 20 B4 A0                  ..
        lda     $6E7E                           ; A3F4 AD 7E 6E                 .~n
        asl     a                               ; A3F7 0A                       .
        tax                                     ; A3F8 AA                       .
        lda     Bank14_BattlePresentationSubdirectory,x; A3F9 BD 0D A4          ...
        sta     $00                           ; A3FC 85 00                    ..
        lda     $A40E,x                         ; A3FE BD 0E A4                 ...
        sta     $01                             ; A401 85 01                    ..
        jsr     BattleTurnEngine_Entry_8364     ; A403 20 64 83                  d.
        lda     $1F                             ; A406 A5 1F                    ..
        and     #$F7                            ; A408 29 F7                    ).
        sta     $1F                             ; A40A 85 1F                    ..
        rts                                     ; A40C 60                       `
; ----------------------------------------------------------------------------
Bank14_BattlePresentationSubdirectory:
        db   $1B                             ; A40D 1B                       .
        db   $A4,$6A,$A4,$99,$A4,$D0,$A4,$7F ; A40E A4 6A A4 99 A4 D0 A4 7F  .j......
        db   $A6,$36,$A7,$88,$A8             ; A416 A6 36 A7 88 A8           .6...
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A41B:
        lda     #$A3                            ; A41B A9 A3                    ..
        sta     $0300                           ; A41D 8D 00 03                 ...
        lda     #$18                            ; A420 A9 18                    ..
        sta     $0301                           ; A422 8D 01 03                 ...
        lda     #$D0                            ; A425 A9 D0                    ..
        sta     NextTextCharacter               ; A427 8D 02 03                 ...
        ldx     #$17                            ; A42A A2 17                    ..
BattleTurnEngine_Branch_A42C:
        lda     #$55                            ; A42C A9 55                    .U
        cpx     #$10                            ; A42E E0 10                    ..
        bcc     BattleTurnEngine_Branch_A434    ; A430 90 02                    ..
        lda     #$05                            ; A432 A9 05                    ..
BattleTurnEngine_Branch_A434:
        sta     $0303,x                         ; A434 9D 03 03                 ...
        dex                                     ; A437 CA                       .
        bpl     BattleTurnEngine_Branch_A42C    ; A438 10 F2                    ..
        inc     $050B                           ; A43A EE 0B 05                 ...
        jsr     UpperFixedEngine_Entry_C62D     ; A43D 20 2D C6                  -.
        ldx     #$00                            ; A440 A2 00                    ..
        jsr     BattleTurnEngine_Entry_B0ED     ; A442 20 ED B0                  ..
        ldy     #$01                            ; A445 A0 01                    ..
        lda     #$EE                            ; A447 A9 EE                    ..
        sta     $04                             ; A449 85 04                    ..
BattleTurnEngine_Branch_A44B:
        ldx     #$00                            ; A44B A2 00                    ..
        jsr     UpperFixedEngine_Entry_C770     ; A44D 20 70 C7                  p.
        lda     $04                             ; A450 A5 04                    ..
        sta     $01                             ; A452 85 01                    ..
        ldx     #$00                            ; A454 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; A456 20 3E C7                  >.
        inc     $04                             ; A459 E6 04                    ..
        iny                                     ; A45B C8                       .
        iny                                     ; A45C C8                       .
        cpy     #$0D                            ; A45D C0 0D                    ..
        bcc     BattleTurnEngine_Branch_A44B    ; A45F 90 EA                    ..
        jsr     WaitForNmi                      ; A461 20 74 FF                  t.
        lda     #$00                            ; A464 A9 00                    ..
        sta     $0F                             ; A466 85 0F                    ..
        beq     BattleTurnEngine_Branch_A46E    ; A468 F0 04                    ..
BattleTurnEngine_Entry_A46A:
        lda     #$01                            ; A46A A9 01                    ..
        sta     $0F                             ; A46C 85 0F                    ..
BattleTurnEngine_Branch_A46E:
        ldx     #$00                            ; A46E A2 00                    ..
        jsr     BattleTurnEngine_Entry_B100     ; A470 20 00 B1                  ..
        jsr     BattleTurnEngine_Entry_A07C     ; A473 20 7C A0                  |.
        ldx     $0F                             ; A476 A6 0F                    ..
        jsr     BattleTurnEngine_Entry_AC1A     ; A478 20 1A AC                  ..
        brk                                     ; A47B 00                       .
        db   $A7,$FB                         ; A47C A7 FB                    ..
; ----------------------------------------------------------------------------
        jsr     BattleTurnEngine_Entry_AE7C     ; A47E 20 7C AE                  |.
        ldx     $0F                             ; A481 A6 0F                    ..
        jsr     BattleTurnEngine_Entry_AA43     ; A483 20 43 AA                  C.
        ldy     #$0D                            ; A486 A0 0D                    ..
        lda     #$12                            ; A488 A9 12                    ..
        sta     $04                             ; A48A 85 04                    ..
        lda     $0F                             ; A48C A5 0F                    ..
        beq     BattleTurnEngine_Branch_A496    ; A48E F0 06                    ..
        ldy     #$01                            ; A490 A0 01                    ..
        lda     #$1E                            ; A492 A9 1E                    ..
        sta     $04                             ; A494 85 04                    ..
BattleTurnEngine_Branch_A496:
        jmp     BattleTurnEngine_Entry_9C1D     ; A496 4C 1D 9C                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A499:
        lda     #$02                            ; A499 A9 02                    ..
        sta     $0F                             ; A49B 85 0F                    ..
        ldx     #$02                            ; A49D A2 02                    ..
        jsr     BattleTurnEngine_Entry_AC1A     ; A49F 20 1A AC                  ..
        jsr     BattleTurnEngine_Entry_A07C     ; A4A2 20 7C A0                  |.
        inc     $0F                             ; A4A5 E6 0F                    ..
        ldx     $0F                             ; A4A7 A6 0F                    ..
        jsr     BattleTurnEngine_Entry_AC1A     ; A4A9 20 1A AC                  ..
        dec     $0F                             ; A4AC C6 0F                    ..
        brk                                     ; A4AE 00                       .
        db   $A7,$FB                         ; A4AF A7 FB                    ..
; ----------------------------------------------------------------------------
        jsr     BattleTurnEngine_Entry_AE7C     ; A4B1 20 7C AE                  |.
        inc     $0F                             ; A4B4 E6 0F                    ..
        ldx     $0F                             ; A4B6 A6 0F                    ..
        jsr     BattleTurnEngine_Entry_AA43     ; A4B8 20 43 AA                  C.
        dec     $0F                             ; A4BB C6 0F                    ..
        ldx     #$01                            ; A4BD A2 01                    ..
        jsr     BattleTurnEngine_Entry_B0ED     ; A4BF 20 ED B0                  ..
        ldx     #$04                            ; A4C2 A2 04                    ..
        jsr     BattleTurnEngine_Entry_AA43     ; A4C4 20 43 AA                  C.
        ldy     #$00                            ; A4C7 A0 00                    ..
        lda     #$14                            ; A4C9 A9 14                    ..
        sta     $04                             ; A4CB 85 04                    ..
        jmp     BattleTurnEngine_Entry_9C1D     ; A4CD 4C 1D 9C                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A4D0:
        brk                                     ; A4D0 00                       .
        db   $B0,$FB                         ; A4D1 B0 FB                    ..
; ----------------------------------------------------------------------------
        jsr     BattleTurnEngine_Entry_A07C     ; A4D3 20 7C A0                  |.
        ldy     #$01                            ; A4D6 A0 01                    ..
        sty     $0F                             ; A4D8 84 0F                    ..
BattleTurnEngine_Branch_A4DA:
        dey                                     ; A4DA 88                       .
        ldx     $A621,y                         ; A4DB BE 21 A6                 .!.
BattleTurnEngine_Branch_A4DE:
        txa                                     ; A4DE 8A                       .
        pha                                     ; A4DF 48                       H
        jsr     BattleTurnEngine_Entry_A5F8     ; A4E0 20 F8 A5                  ..
        ldy     $0F                             ; A4E3 A4 0F                    ..
        dey                                     ; A4E5 88                       .
        ldx     $A631,y                         ; A4E6 BE 31 A6                 .1.
        jsr     UpperFixedEngine_Entry_C90C     ; A4E9 20 0C C9                  ..
        dec     $0F                             ; A4EC C6 0F                    ..
        jsr     BattleTurnEngine_Entry_A5F8     ; A4EE 20 F8 A5                  ..
        ldy     $0F                             ; A4F1 A4 0F                    ..
        ldx     $A629,y                         ; A4F3 BE 29 A6                 .).
        jsr     UpperFixedEngine_Entry_C90C     ; A4F6 20 0C C9                  ..
        inc     $0F                             ; A4F9 E6 0F                    ..
        pla                                     ; A4FB 68                       h
        tax                                     ; A4FC AA                       .
        dex                                     ; A4FD CA                       .
        bne     BattleTurnEngine_Branch_A4DE    ; A4FE D0 DE                    ..
        jsr     BattleTurnEngine_Entry_A5F8     ; A500 20 F8 A5                  ..
        ldy     $0F                             ; A503 A4 0F                    ..
        dey                                     ; A505 88                       .
        ldx     $A641,y                         ; A506 BE 41 A6                 .A.
        beq     BattleTurnEngine_Branch_A50E    ; A509 F0 03                    ..
        jsr     BattleTurnEngine_Entry_AA43     ; A50B 20 43 AA                  C.
BattleTurnEngine_Branch_A50E:
        inc     $0F                             ; A50E E6 0F                    ..
        ldy     $0F                             ; A510 A4 0F                    ..
        cpy     #$08                            ; A512 C0 08                    ..
        bcc     BattleTurnEngine_Branch_A4DA    ; A514 90 C4                    ..
        ldy     #$00                            ; A516 A0 00                    ..
        lda     #$10                            ; A518 A9 10                    ..
        sta     $04                             ; A51A 85 04                    ..
        jsr     BattleTurnEngine_Entry_9C1D     ; A51C 20 1D 9C                  ..
        ldy     #$03                            ; A51F A0 03                    ..
BattleTurnEngine_Branch_A521:
        tya                                     ; A521 98                       .
        pha                                     ; A522 48                       H
        lda     #$00                            ; A523 A9 00                    ..
        sta     $00                           ; A525 85 00                    ..
BattleTurnEngine_Branch_A527:
        jsr     BattleTurnEngine_Entry_A609     ; A527 20 09 A6                  ..
        inc     $00                           ; A52A E6 00                    ..
        lda     $00                           ; A52C A5 00                    ..
        cmp     #$04                            ; A52E C9 04                    ..
        bcc     BattleTurnEngine_Branch_A527    ; A530 90 F5                    ..
        pla                                     ; A532 68                       h
        tay                                     ; A533 A8                       .
        dey                                     ; A534 88                       .
        bne     BattleTurnEngine_Branch_A521    ; A535 D0 EA                    ..
        lda     #$00                            ; A537 A9 00                    ..
        sta     $00                           ; A539 85 00                    ..
BattleTurnEngine_Branch_A53B:
        jsr     BattleTurnEngine_Entry_A609     ; A53B 20 09 A6                  ..
        inc     $00                           ; A53E E6 00                    ..
        lda     $00                           ; A540 A5 00                    ..
        cmp     #$03                            ; A542 C9 03                    ..
        bcc     BattleTurnEngine_Branch_A53B    ; A544 90 F5                    ..
        ldx     #$0E                            ; A546 A2 0E                    ..
BattleTurnEngine_Branch_A548:
        lda     $A650,x                         ; A548 BD 50 A6                 .P.
        sta     $0606,x                         ; A54B 9D 06 06                 ...
        dex                                     ; A54E CA                       .
        bpl     BattleTurnEngine_Branch_A548    ; A54F 10 F7                    ..
        jsr     UpperFixedEngine_Entry_C5B9     ; A551 20 B9 C5                  ..
        jsr     WaitForNmi                      ; A554 20 74 FF                  t.
        ldx     #$02                            ; A557 A2 02                    ..
BattleTurnEngine_Branch_A559:
        jsr     BattleTurnEngine_Entry_B0ED     ; A559 20 ED B0                  ..
        inx                                     ; A55C E8                       .
        cpx     #$09                            ; A55D E0 09                    ..
        bcc     BattleTurnEngine_Branch_A559    ; A55F 90 F8                    ..
        ldx     #$0B                            ; A561 A2 0B                    ..
BattleTurnEngine_Branch_A563:
        txa                                     ; A563 8A                       .
        pha                                     ; A564 48                       H
        jsr     BattleTurnEngine_Entry_AA43     ; A565 20 43 AA                  C.
        ldx     #$04                            ; A568 A2 04                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A56A 20 0C C9                  ..
        pla                                     ; A56D 68                       h
        tax                                     ; A56E AA                       .
        inx                                     ; A56F E8                       .
        cpx     #$11                            ; A570 E0 11                    ..
        bcc     BattleTurnEngine_Branch_A563    ; A572 90 EF                    ..
        ldx     #$09                            ; A574 A2 09                    ..
BattleTurnEngine_Branch_A576:
        jsr     BattleTurnEngine_Entry_B0ED     ; A576 20 ED B0                  ..
        inx                                     ; A579 E8                       .
        cpx     #$0B                            ; A57A E0 0B                    ..
        bcc     BattleTurnEngine_Branch_A576    ; A57C 90 F8                    ..
        ldx     #$11                            ; A57E A2 11                    ..
BattleTurnEngine_Branch_A580:
        txa                                     ; A580 8A                       .
        pha                                     ; A581 48                       H
        jsr     BattleTurnEngine_Entry_AA43     ; A582 20 43 AA                  C.
        ldx     #$02                            ; A585 A2 02                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A587 20 0C C9                  ..
        pla                                     ; A58A 68                       h
        tax                                     ; A58B AA                       .
        inx                                     ; A58C E8                       .
        cpx     #$13                            ; A58D E0 13                    ..
        bcc     BattleTurnEngine_Branch_A580    ; A58F 90 EF                    ..
        jsr     BattleTurnEngine_Entry_A5ED     ; A591 20 ED A5                  ..
        ldx     #$13                            ; A594 A2 13                    ..
        jsr     BattleTurnEngine_Entry_AA43     ; A596 20 43 AA                  C.
        ldy     #$00                            ; A599 A0 00                    ..
BattleTurnEngine_Branch_A59B:
        ldx     $A65F,y                         ; A59B BE 5F A6                 ._.
        tya                                     ; A59E 98                       .
        pha                                     ; A59F 48                       H
        jsr     BattleTurnEngine_Entry_B0ED     ; A5A0 20 ED B0                  ..
        ldx     #$0C                            ; A5A3 A2 0C                    ..
        jsr     BattleTurnEngine_Entry_AC1A     ; A5A5 20 1A AC                  ..
        pla                                     ; A5A8 68                       h
        tay                                     ; A5A9 A8                       .
        ldx     #$0F                            ; A5AA A2 0F                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A5AC 20 0C C9                  ..
        iny                                     ; A5AF C8                       .
        cpy     #$03                            ; A5B0 C0 03                    ..
        bcc     BattleTurnEngine_Branch_A59B    ; A5B2 90 E7                    ..
        ldx     #$19                            ; A5B4 A2 19                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A5B6 20 0C C9                  ..
        ldx     #$01                            ; A5B9 A2 01                    ..
BattleTurnEngine_Branch_A5BB:
        txa                                     ; A5BB 8A                       .
        pha                                     ; A5BC 48                       H
        ldy     #$00                            ; A5BD A0 00                    ..
BattleTurnEngine_Branch_A5BF:
        tya                                     ; A5BF 98                       .
        pha                                     ; A5C0 48                       H
        ldx     $A662,y                         ; A5C1 BE 62 A6                 .b.
        cpx     #$0D                            ; A5C4 E0 0D                    ..
        bne     BattleTurnEngine_Branch_A5CB    ; A5C6 D0 03                    ..
        jsr     BattleTurnEngine_Entry_A5ED     ; A5C8 20 ED A5                  ..
BattleTurnEngine_Branch_A5CB:
        jsr     BattleTurnEngine_Entry_B0ED     ; A5CB 20 ED B0                  ..
        pla                                     ; A5CE 68                       h
        tay                                     ; A5CF A8                       .
        iny                                     ; A5D0 C8                       .
        cpy     #$05                            ; A5D1 C0 05                    ..
        bcc     BattleTurnEngine_Branch_A5BF    ; A5D3 90 EA                    ..
        pla                                     ; A5D5 68                       h
        tax                                     ; A5D6 AA                       .
        dex                                     ; A5D7 CA                       .
        bpl     BattleTurnEngine_Branch_A5BB    ; A5D8 10 E1                    ..
        ldx     #$17                            ; A5DA A2 17                    ..
BattleTurnEngine_Branch_A5DC:
        lda     $A667,x                         ; A5DC BD 67 A6                 .g.
        sta     $0300,x                         ; A5DF 9D 00 03                 ...
        dex                                     ; A5E2 CA                       .
        bpl     BattleTurnEngine_Branch_A5DC    ; A5E3 10 F7                    ..
        lda     #$08                            ; A5E5 A9 08                    ..
        sta     $050B                           ; A5E7 8D 0B 05                 ...
        jmp     UpperFixedEngine_Entry_C62D     ; A5EA 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A5ED:
        ldx     #$0B                            ; A5ED A2 0B                    ..
BattleTurnEngine_Branch_A5EF:
        jsr     BattleTurnEngine_Entry_B0ED     ; A5EF 20 ED B0                  ..
        inx                                     ; A5F2 E8                       .
        cpx     #$0E                            ; A5F3 E0 0E                    ..
        bcc     BattleTurnEngine_Branch_A5EF    ; A5F5 90 F8                    ..
        rts                                     ; A5F7 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A5F8:
        ldy     #$00                            ; A5F8 A0 00                    ..
        lda     #$14                            ; A5FA A9 14                    ..
        sta     $04                             ; A5FC 85 04                    ..
        jsr     BattleTurnEngine_Entry_9C1D     ; A5FE 20 1D 9C                  ..
        ldy     $0F                             ; A601 A4 0F                    ..
        ldx     $A639,y                         ; A603 BE 39 A6                 .9.
        jmp     BattleTurnEngine_Entry_AC1A     ; A606 4C 1A AC                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A609:
        lda     $00                           ; A609 A5 00                    ..
        asl     a                               ; A60B 0A                       .
        tax                                     ; A60C AA                       .
        lda     $A648,x                         ; A60D BD 48 A6                 .H.
        sta     $0601                           ; A610 8D 01 06                 ...
        lda     $A649,x                         ; A613 BD 49 A6                 .I.
        sta     $0602                           ; A616 8D 02 06                 ...
        jsr     UpperFixedEngine_Entry_C5B9     ; A619 20 B9 C5                  ..
        ldx     #$05                            ; A61C A2 05                    ..
        jmp     UpperFixedEngine_Entry_C90C     ; A61E 4C 0C C9                 L..
; ----------------------------------------------------------------------------
        db   $04,$04,$04,$06,$08,$14,$24,$01 ; A621 04 04 04 06 08 14 24 01  ......$.
        db   $16,$12,$0E,$0A,$07,$03,$02,$01 ; A629 16 12 0E 0A 07 03 02 01  ........
        db   $0B,$09,$07,$05,$03,$02,$01,$01 ; A631 0B 09 07 05 03 02 01 01  ........
        db   $04,$05,$06,$07,$08,$09,$0A,$0B ; A639 04 05 06 07 08 09 0A 0B  ........
        db   $05,$06,$07,$08,$00,$09,$0A     ; A641 05 06 07 08 00 09 0A     .......
        db   $27                             ; A648 27                       '
        db   $17,$28,$18,$29,$19,$28,$18     ; A649 17 28 18 29 19 28 18     .(.).(.
        db   $0F,$29,$19,$30,$0F,$16,$30,$0F ; A650 0F 29 19 30 0F 16 30 0F  .).0..0.
        db   $19,$0F,$29,$19,$30,$29,$19     ; A658 19 0F 29 19 30 29 19     ..).0).
        db   $0E,$0F,$10                     ; A65F 0E 0F 10                 ...
        db   $0F,$0E,$0D,$0F,$10             ; A662 0F 0E 0D 0F 10           .....
        db   $18,$D6,$40,$18,$D7,$00,$18,$DF ; A667 18 D6 40 18 D7 00 18 DF  ..@.....
        db   $98,$18,$E6,$02,$18,$E7,$00,$18 ; A66F 98 18 E6 02 18 E7 00 18  ........
        db   $EF,$19,$18,$FF,$7C,$19,$0F,$3E ; A677 EF 19 18 FF 7C 19 0F 3E  ....|..>
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A67F:
        ldx     #$12                            ; A67F A2 12                    ..
BattleTurnEngine_Branch_A681:
        jsr     BattleTurnEngine_Entry_B0ED     ; A681 20 ED B0                  ..
        inx                                     ; A684 E8                       .
        cpx     #$1C                            ; A685 E0 1C                    ..
        bcc     BattleTurnEngine_Branch_A681    ; A687 90 F8                    ..
        ldx     #$0D                            ; A689 A2 0D                    ..
BattleTurnEngine_Branch_A68B:
        jsr     BattleTurnEngine_Entry_AC1A     ; A68B 20 1A AC                  ..
        inx                                     ; A68E E8                       .
        cpx     #$10                            ; A68F E0 10                    ..
        bcc     BattleTurnEngine_Branch_A68B    ; A691 90 F8                    ..
        lda     #$FF                            ; A693 A9 FF                    ..
        sta     $05                             ; A695 85 05                    ..
        lda     #$00                            ; A697 A9 00                    ..
        sta     $04                             ; A699 85 04                    ..
        lda     #$02                            ; A69B A9 02                    ..
        sta     $0B                             ; A69D 85 0B                    ..
        lda     #$04                            ; A69F A9 04                    ..
        sta     $08                             ; A6A1 85 08                    ..
        lda     #$03                            ; A6A3 A9 03                    ..
        sta     $09                             ; A6A5 85 09                    ..
        lda     #$09                            ; A6A7 A9 09                    ..
        sta     $0A                             ; A6A9 85 0A                    ..
        brk                                     ; A6AB 00                       .
        db   $B1,$FB                         ; A6AC B1 FB                    ..
; ----------------------------------------------------------------------------
        jsr     BattleTurnEngine_Entry_AECD     ; A6AE 20 CD AE                  ..
        brk                                     ; A6B1 00                       .
        db   $80,$FB                         ; A6B2 80 FB                    ..
; ----------------------------------------------------------------------------
        ldx     #$13                            ; A6B4 A2 13                    ..
        jsr     BattleTurnEngine_Entry_AC1A     ; A6B6 20 1A AC                  ..
        jsr     BattleTurnEngine_Entry_A080     ; A6B9 20 80 A0                  ..
        ldx     #$14                            ; A6BC A2 14                    ..
        jsr     BattleTurnEngine_Entry_AC1A     ; A6BE 20 1A AC                  ..
        ldx     #$14                            ; A6C1 A2 14                    ..
BattleTurnEngine_Branch_A6C3:
        jsr     BattleTurnEngine_Entry_AA43     ; A6C3 20 43 AA                  C.
        inx                                     ; A6C6 E8                       .
        cpx     #$1C                            ; A6C7 E0 1C                    ..
        bcc     BattleTurnEngine_Branch_A6C3    ; A6C9 90 F8                    ..
        lda     #$03                            ; A6CB A9 03                    ..
        sta     $0F                             ; A6CD 85 0F                    ..
        jsr     BattleTurnEngine_Entry_AE80     ; A6CF 20 80 AE                  ..
        ldy     #$02                            ; A6D2 A0 02                    ..
        lda     #$18                            ; A6D4 A9 18                    ..
        sta     $04                             ; A6D6 85 04                    ..
        jsr     BattleTurnEngine_Entry_9C1D     ; A6D8 20 1D 9C                  ..
        ldx     #$10                            ; A6DB A2 10                    ..
BattleTurnEngine_Branch_A6DD:
        jsr     BattleTurnEngine_Entry_AC1A     ; A6DD 20 1A AC                  ..
        inx                                     ; A6E0 E8                       .
        cpx     #$13                            ; A6E1 E0 13                    ..
        bcc     BattleTurnEngine_Branch_A6DD    ; A6E3 90 F8                    ..
        lda     #$01                            ; A6E5 A9 01                    ..
        sta     $05                             ; A6E7 85 05                    ..
        lda     #$04                            ; A6E9 A9 04                    ..
        sta     $04                             ; A6EB 85 04                    ..
        lda     #$02                            ; A6ED A9 02                    ..
        sta     $0B                             ; A6EF 85 0B                    ..
        lda     #$04                            ; A6F1 A9 04                    ..
        sta     $08                             ; A6F3 85 08                    ..
        lda     #$03                            ; A6F5 A9 03                    ..
        sta     $09                             ; A6F7 85 09                    ..
        lda     #$09                            ; A6F9 A9 09                    ..
        sta     $0A                             ; A6FB 85 0A                    ..
        brk                                     ; A6FD 00                       .
        db   $B1,$FB                         ; A6FE B1 FB                    ..
; ----------------------------------------------------------------------------
        jsr     BattleTurnEngine_Entry_AECD     ; A700 20 CD AE                  ..
        brk                                     ; A703 00                       .
        db   $80,$FB                         ; A704 80 FB                    ..
; ----------------------------------------------------------------------------
        ldy     #$02                            ; A706 A0 02                    ..
        lda     #$07                            ; A708 A9 07                    ..
        sta     $04                             ; A70A 85 04                    ..
        jsr     BattleTurnEngine_Entry_9C1D     ; A70C 20 1D 9C                  ..
        ldx     #$15                            ; A70F A2 15                    ..
        jsr     BattleTurnEngine_Entry_AC1A     ; A711 20 1A AC                  ..
        ldx     #$16                            ; A714 A2 16                    ..
        jsr     BattleTurnEngine_Entry_AC1A     ; A716 20 1A AC                  ..
        jsr     BattleTurnEngine_Entry_A080     ; A719 20 80 A0                  ..
        ldx     #$1C                            ; A71C A2 1C                    ..
BattleTurnEngine_Branch_A71E:
        jsr     BattleTurnEngine_Entry_AA43     ; A71E 20 43 AA                  C.
        inx                                     ; A721 E8                       .
        cpx     #$24                            ; A722 E0 24                    .$
        bcc     BattleTurnEngine_Branch_A71E    ; A724 90 F8                    ..
        lda     #$04                            ; A726 A9 04                    ..
        sta     $0F                             ; A728 85 0F                    ..
        jsr     BattleTurnEngine_Entry_AE80     ; A72A 20 80 AE                  ..
        ldy     #$09                            ; A72D A0 09                    ..
        lda     #$18                            ; A72F A9 18                    ..
        sta     $04                             ; A731 85 04                    ..
        jmp     BattleTurnEngine_Entry_9C1D     ; A733 4C 1D 9C                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A736:
        ldx     #$1C                            ; A736 A2 1C                    ..
BattleTurnEngine_Branch_A738:
        jsr     BattleTurnEngine_Entry_B0ED     ; A738 20 ED B0                  ..
        inx                                     ; A73B E8                       .
        cpx     #$1F                            ; A73C E0 1F                    ..
        bcc     BattleTurnEngine_Branch_A738    ; A73E 90 F8                    ..
        ldx     #$17                            ; A740 A2 17                    ..
        jsr     BattleTurnEngine_Entry_AC1A     ; A742 20 1A AC                  ..
        ldx     #$24                            ; A745 A2 24                    .$
        jsr     BattleTurnEngine_Entry_AA43     ; A747 20 43 AA                  C.
        ldx     #$1F                            ; A74A A2 1F                    ..
BattleTurnEngine_Branch_A74C:
        jsr     BattleTurnEngine_Entry_B0ED     ; A74C 20 ED B0                  ..
        inx                                     ; A74F E8                       .
        cpx     #$29                            ; A750 E0 29                    .)
        bcc     BattleTurnEngine_Branch_A74C    ; A752 90 F8                    ..
        ldx     #$18                            ; A754 A2 18                    ..
        jsr     BattleTurnEngine_Entry_AC1A     ; A756 20 1A AC                  ..
        ldx     #$25                            ; A759 A2 25                    .%
        jsr     BattleTurnEngine_Entry_AA43     ; A75B 20 43 AA                  C.
        ldx     #$1C                            ; A75E A2 1C                    ..
        jsr     BattleTurnEngine_Entry_B100     ; A760 20 00 B1                  ..
        jsr     BattleTurnEngine_Entry_A07C     ; A763 20 7C A0                  |.
        ldx     #$19                            ; A766 A2 19                    ..
        jsr     BattleTurnEngine_Entry_AC1A     ; A768 20 1A AC                  ..
        lda     #$05                            ; A76B A9 05                    ..
        sta     $0F                             ; A76D 85 0F                    ..
        brk                                     ; A76F 00                       .
        db   $A7,$FB                         ; A770 A7 FB                    ..
; ----------------------------------------------------------------------------
        jsr     BattleTurnEngine_Entry_AE7C     ; A772 20 7C AE                  |.
        ldx     #$26                            ; A775 A2 26                    .&
        jsr     BattleTurnEngine_Entry_AA43     ; A777 20 43 AA                  C.
        lda     $0514                           ; A77A AD 14 05                 ...
        sta     $0609                           ; A77D 8D 09 06                 ...
        jsr     UpperFixedEngine_Entry_C5B9     ; A780 20 B9 C5                  ..
        ldx     #$1A                            ; A783 A2 1A                    ..
        jsr     BattleTurnEngine_Entry_AC1A     ; A785 20 1A AC                  ..
        lda     #$FF                            ; A788 A9 FF                    ..
        sta     $05                             ; A78A 85 05                    ..
        lda     #$08                            ; A78C A9 08                    ..
        sta     $04                             ; A78E 85 04                    ..
        lda     #$01                            ; A790 A9 01                    ..
        sta     $0B                             ; A792 85 0B                    ..
        lda     #$03                            ; A794 A9 03                    ..
        sta     $08                             ; A796 85 08                    ..
        lda     #$03                            ; A798 A9 03                    ..
        sta     $09                             ; A79A 85 09                    ..
        lda     #$06                            ; A79C A9 06                    ..
        sta     $0A                             ; A79E 85 0A                    ..
        brk                                     ; A7A0 00                       .
        db   $B1,$FB                         ; A7A1 B1 FB                    ..
; ----------------------------------------------------------------------------
        jsr     BattleTurnEngine_Entry_AECD     ; A7A3 20 CD AE                  ..
        ldx     #$1B                            ; A7A6 A2 1B                    ..
BattleTurnEngine_Branch_A7A8:
        jsr     BattleTurnEngine_Entry_AC1A     ; A7A8 20 1A AC                  ..
        inx                                     ; A7AB E8                       .
        cpx     #$1F                            ; A7AC E0 1F                    ..
        bcc     BattleTurnEngine_Branch_A7A8    ; A7AE 90 F8                    ..
        ldx     #$27                            ; A7B0 A2 27                    .'
BattleTurnEngine_Branch_A7B2:
        jsr     BattleTurnEngine_Entry_AA43     ; A7B2 20 43 AA                  C.
        inx                                     ; A7B5 E8                       .
        cpx     #$2F                            ; A7B6 E0 2F                    ./
        bcc     BattleTurnEngine_Branch_A7B2    ; A7B8 90 F8                    ..
        ldx     #$1D                            ; A7BA A2 1D                    ..
        jsr     BattleTurnEngine_Entry_B100     ; A7BC 20 00 B1                  ..
        jsr     BattleTurnEngine_Entry_A080     ; A7BF 20 80 A0                  ..
        lda     #$06                            ; A7C2 A9 06                    ..
        sta     $0F                             ; A7C4 85 0F                    ..
        jsr     BattleTurnEngine_Entry_AE80     ; A7C6 20 80 AE                  ..
        ldy     #$06                            ; A7C9 A0 06                    ..
        lda     #$10                            ; A7CB A9 10                    ..
        sta     $04                             ; A7CD 85 04                    ..
        jsr     BattleTurnEngine_Entry_9C1D     ; A7CF 20 1D 9C                  ..
        ldx     #$1F                            ; A7D2 A2 1F                    ..
        jsr     BattleTurnEngine_Entry_AC1A     ; A7D4 20 1A AC                  ..
        inx                                     ; A7D7 E8                       .
        jsr     BattleTurnEngine_Entry_AC1A     ; A7D8 20 1A AC                  ..
        ldx     #$1E                            ; A7DB A2 1E                    ..
        jsr     BattleTurnEngine_Entry_B100     ; A7DD 20 00 B1                  ..
        jsr     BattleTurnEngine_Entry_A080     ; A7E0 20 80 A0                  ..
        lda     #$07                            ; A7E3 A9 07                    ..
        sta     $0F                             ; A7E5 85 0F                    ..
        jsr     BattleTurnEngine_Entry_AE80     ; A7E7 20 80 AE                  ..
        ldx     #$21                            ; A7EA A2 21                    .!
        jsr     BattleTurnEngine_Entry_AC1A     ; A7EC 20 1A AC                  ..
        ldx     #$2F                            ; A7EF A2 2F                    ./
        jsr     BattleTurnEngine_Entry_AA43     ; A7F1 20 43 AA                  C.
        ldx     #$1C                            ; A7F4 A2 1C                    ..
        jsr     BattleTurnEngine_Entry_B100     ; A7F6 20 00 B1                  ..
        jsr     BattleTurnEngine_Entry_A07C     ; A7F9 20 7C A0                  |.
        ldx     #$22                            ; A7FC A2 22                    ."
        jsr     BattleTurnEngine_Entry_AC1A     ; A7FE 20 1A AC                  ..
        lda     #$08                            ; A801 A9 08                    ..
        sta     $0F                             ; A803 85 0F                    ..
        brk                                     ; A805 00                       .
        db   $A7,$FB                         ; A806 A7 FB                    ..
; ----------------------------------------------------------------------------
        jsr     BattleTurnEngine_Entry_AE7C     ; A808 20 7C AE                  |.
        ldx     #$30                            ; A80B A2 30                    .0
        jsr     BattleTurnEngine_Entry_AA43     ; A80D 20 43 AA                  C.
        ldx     #$23                            ; A810 A2 23                    .#
        jsr     BattleTurnEngine_Entry_AC1A     ; A812 20 1A AC                  ..
        lda     #$01                            ; A815 A9 01                    ..
        sta     $05                             ; A817 85 05                    ..
        lda     #$0B                            ; A819 A9 0B                    ..
        sta     $04                             ; A81B 85 04                    ..
        lda     #$01                            ; A81D A9 01                    ..
        sta     $0B                             ; A81F 85 0B                    ..
        lda     #$03                            ; A821 A9 03                    ..
        sta     $08                             ; A823 85 08                    ..
        lda     #$03                            ; A825 A9 03                    ..
        sta     $09                             ; A827 85 09                    ..
        lda     #$06                            ; A829 A9 06                    ..
        sta     $0A                             ; A82B 85 0A                    ..
        brk                                     ; A82D 00                       .
        db   $B1,$FB                         ; A82E B1 FB                    ..
; ----------------------------------------------------------------------------
        jsr     BattleTurnEngine_Entry_AECD     ; A830 20 CD AE                  ..
        ldx     #$24                            ; A833 A2 24                    .$
BattleTurnEngine_Branch_A835:
        jsr     BattleTurnEngine_Entry_AC1A     ; A835 20 1A AC                  ..
        inx                                     ; A838 E8                       .
        cpx     #$28                            ; A839 E0 28                    .(
        bcc     BattleTurnEngine_Branch_A835    ; A83B 90 F8                    ..
        ldx     #$31                            ; A83D A2 31                    .1
BattleTurnEngine_Branch_A83F:
        jsr     BattleTurnEngine_Entry_AA43     ; A83F 20 43 AA                  C.
        inx                                     ; A842 E8                       .
        cpx     #$39                            ; A843 E0 39                    .9
        bcc     BattleTurnEngine_Branch_A83F    ; A845 90 F8                    ..
        ldx     #$1D                            ; A847 A2 1D                    ..
        jsr     BattleTurnEngine_Entry_B100     ; A849 20 00 B1                  ..
        jsr     BattleTurnEngine_Entry_A080     ; A84C 20 80 A0                  ..
        lda     #$09                            ; A84F A9 09                    ..
        sta     $0F                             ; A851 85 0F                    ..
        jsr     BattleTurnEngine_Entry_AE80     ; A853 20 80 AE                  ..
        ldy     #$06                            ; A856 A0 06                    ..
        lda     #$10                            ; A858 A9 10                    ..
        sta     $04                             ; A85A 85 04                    ..
        jsr     BattleTurnEngine_Entry_9C1D     ; A85C 20 1D 9C                  ..
        ldx     #$28                            ; A85F A2 28                    .(
        jsr     BattleTurnEngine_Entry_AC1A     ; A861 20 1A AC                  ..
        inx                                     ; A864 E8                       .
        jsr     BattleTurnEngine_Entry_AC1A     ; A865 20 1A AC                  ..
        ldx     #$1E                            ; A868 A2 1E                    ..
        jsr     BattleTurnEngine_Entry_B100     ; A86A 20 00 B1                  ..
        jsr     BattleTurnEngine_Entry_A080     ; A86D 20 80 A0                  ..
        lda     #$0A                            ; A870 A9 0A                    ..
        sta     $0F                             ; A872 85 0F                    ..
        jsr     BattleTurnEngine_Entry_AE80     ; A874 20 80 AE                  ..
        ldy     #$16                            ; A877 A0 16                    ..
        lda     #$02                            ; A879 A9 02                    ..
        sta     $04                             ; A87B 85 04                    ..
        jsr     BattleTurnEngine_Entry_9C1D     ; A87D 20 1D 9C                  ..
        lda     #$30                            ; A880 A9 30                    .0
        sta     $0609                           ; A882 8D 09 06                 ...
        jmp     UpperFixedEngine_Entry_C5B9     ; A885 4C B9 C5                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A888:
        brk                                     ; A888 00                       .
        db   $04,$9F                         ; A889 04 9F                    ..
; ----------------------------------------------------------------------------
        ldx     #$29                            ; A88B A2 29                    .)
        ldy     #$00                            ; A88D A0 00                    ..
BattleTurnEngine_Branch_A88F:
        tya                                     ; A88F 98                       .
        pha                                     ; A890 48                       H
        jsr     BattleTurnEngine_Entry_B0ED     ; A891 20 ED B0                  ..
        pla                                     ; A894 68                       h
        tay                                     ; A895 A8                       .
        inx                                     ; A896 E8                       .
        txa                                     ; A897 8A                       .
        cmp     $AA36,y                         ; A898 D9 36 AA                 .6.
        bcc     BattleTurnEngine_Branch_A88F    ; A89B 90 F2                    ..
        iny                                     ; A89D C8                       .
        cpy     #$05                            ; A89E C0 05                    ..
        bcs     BattleTurnEngine_Branch_A8AE    ; A8A0 B0 0C                    ..
        txa                                     ; A8A2 8A                       .
        pha                                     ; A8A3 48                       H
        ldx     #$08                            ; A8A4 A2 08                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A8A6 20 0C C9                  ..
        pla                                     ; A8A9 68                       h
        tax                                     ; A8AA AA                       .
        jmp     BattleTurnEngine_Branch_A88F    ; A8AB 4C 8F A8                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_A8AE:
        ldx     #$2A                            ; A8AE A2 2A                    .*
        jsr     BattleTurnEngine_Entry_AC1A     ; A8B0 20 1A AC                  ..
        inx                                     ; A8B3 E8                       .
        jsr     BattleTurnEngine_Entry_AC1A     ; A8B4 20 1A AC                  ..
        lda     #$0A                            ; A8B7 A9 0A                    ..
        sta     $01                             ; A8B9 85 01                    ..
BattleTurnEngine_Branch_A8BB:
        lda     #$0E                            ; A8BB A9 0E                    ..
        sta     $00                           ; A8BD 85 00                    ..
BattleTurnEngine_Branch_A8BF:
        lda     #$03                            ; A8BF A9 03                    ..
        jsr     UpperFixedEngine_Entry_C727     ; A8C1 20 27 C7                  '.
        inc     $00                           ; A8C4 E6 00                    ..
        lda     $00                           ; A8C6 A5 00                    ..
        cmp     #$14                            ; A8C8 C9 14                    ..
        bcc     BattleTurnEngine_Branch_A8BF    ; A8CA 90 F3                    ..
        inc     $01                             ; A8CC E6 01                    ..
        lda     $01                             ; A8CE A5 01                    ..
        cmp     #$0E                            ; A8D0 C9 0E                    ..
        bcc     BattleTurnEngine_Branch_A8BB    ; A8D2 90 E7                    ..
        lda     #$D5                            ; A8D4 A9 D5                    ..
        sta     $0317                           ; A8D6 8D 17 03                 ...
        jsr     UpperFixedEngine_Entry_C62D     ; A8D9 20 2D C6                  -.
        ldx     #$36                            ; A8DC A2 36                    .6
BattleTurnEngine_Branch_A8DE:
        jsr     BattleTurnEngine_Entry_B0ED     ; A8DE 20 ED B0                  ..
        inx                                     ; A8E1 E8                       .
        cpx     #$3A                            ; A8E2 E0 3A                    .:
        bcc     BattleTurnEngine_Branch_A8DE    ; A8E4 90 F8                    ..
        ldx     #$2C                            ; A8E6 A2 2C                    .,
BattleTurnEngine_Branch_A8E8:
        jsr     BattleTurnEngine_Entry_AC1A     ; A8E8 20 1A AC                  ..
        inx                                     ; A8EB E8                       .
        cpx     #$30                            ; A8EC E0 30                    .0
        bcc     BattleTurnEngine_Branch_A8E8    ; A8EE 90 F8                    ..
        lda     #$FF                            ; A8F0 A9 FF                    ..
        sta     $05                             ; A8F2 85 05                    ..
        lda     #$0E                            ; A8F4 A9 0E                    ..
        sta     $04                             ; A8F6 85 04                    ..
        lda     #$05                            ; A8F8 A9 05                    ..
        sta     $0B                             ; A8FA 85 0B                    ..
        lda     #$04                            ; A8FC A9 04                    ..
        sta     $08                             ; A8FE 85 08                    ..
        lda     #$00                            ; A900 A9 00                    ..
        sta     $09                             ; A902 85 09                    ..
        lda     #$1E                            ; A904 A9 1E                    ..
        sta     $0A                             ; A906 85 0A                    ..
        brk                                     ; A908 00                       .
        db   $A8,$FB                         ; A909 A8 FB                    ..
; ----------------------------------------------------------------------------
        jsr     BattleTurnEngine_Entry_AECD     ; A90B 20 CD AE                  ..
        brk                                     ; A90E 00                       .
        db   $80,$FB                         ; A90F 80 FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A911 00                       .
        db   $35,$FB                         ; A912 35 FB                    5.
; ----------------------------------------------------------------------------
        ldx     #$3A                            ; A914 A2 3A                    .:
        jsr     BattleTurnEngine_Entry_B0ED     ; A916 20 ED B0                  ..
        ldx     #$39                            ; A919 A2 39                    .9
        jsr     BattleTurnEngine_Entry_AA43     ; A91B 20 43 AA                  C.
        ldx     #$0A                            ; A91E A2 0A                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A920 20 0C C9                  ..
        ldx     #$3B                            ; A923 A2 3B                    .;
        jsr     BattleTurnEngine_Entry_B0ED     ; A925 20 ED B0                  ..
        inx                                     ; A928 E8                       .
        jsr     BattleTurnEngine_Entry_B0ED     ; A929 20 ED B0                  ..
        ldx     #$3A                            ; A92C A2 3A                    .:
        jsr     BattleTurnEngine_Entry_AA43     ; A92E 20 43 AA                  C.
        inx                                     ; A931 E8                       .
        jsr     BattleTurnEngine_Entry_AA43     ; A932 20 43 AA                  C.
        ldx     #$0A                            ; A935 A2 0A                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A937 20 0C C9                  ..
        ldx     #$3D                            ; A93A A2 3D                    .=
        jsr     BattleTurnEngine_Entry_B0ED     ; A93C 20 ED B0                  ..
        inx                                     ; A93F E8                       .
        jsr     BattleTurnEngine_Entry_B0ED     ; A940 20 ED B0                  ..
        ldx     #$0A                            ; A943 A2 0A                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A945 20 0C C9                  ..
        ldx     #$3F                            ; A948 A2 3F                    .?
        jsr     BattleTurnEngine_Entry_B0ED     ; A94A 20 ED B0                  ..
        inx                                     ; A94D E8                       .
        jsr     BattleTurnEngine_Entry_B0ED     ; A94E 20 ED B0                  ..
        ldx     #$30                            ; A951 A2 30                    .0
        jsr     BattleTurnEngine_Entry_AC1A     ; A953 20 1A AC                  ..
        ldx     #$3C                            ; A956 A2 3C                    .<
        jsr     BattleTurnEngine_Entry_AA43     ; A958 20 43 AA                  C.
        ldx     #$0A                            ; A95B A2 0A                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A95D 20 0C C9                  ..
        lda     #$00                            ; A960 A9 00                    ..
        jsr     BattleTurnEngine_Entry_A9FD     ; A962 20 FD A9                  ..
        ldx     #$41                            ; A965 A2 41                    .A
        jsr     BattleTurnEngine_Entry_B0ED     ; A967 20 ED B0                  ..
        inx                                     ; A96A E8                       .
        jsr     BattleTurnEngine_Entry_B0ED     ; A96B 20 ED B0                  ..
        ldx     #$0A                            ; A96E A2 0A                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A970 20 0C C9                  ..
        ldx     #$43                            ; A973 A2 43                    .C
        jsr     BattleTurnEngine_Entry_B0ED     ; A975 20 ED B0                  ..
        inx                                     ; A978 E8                       .
        jsr     BattleTurnEngine_Entry_B0ED     ; A979 20 ED B0                  ..
        lda     #$01                            ; A97C A9 01                    ..
        jsr     BattleTurnEngine_Entry_A9FD     ; A97E 20 FD A9                  ..
        ldx     #$3D                            ; A981 A2 3D                    .=
        jsr     BattleTurnEngine_Entry_AA43     ; A983 20 43 AA                  C.
        ldx     #$0A                            ; A986 A2 0A                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A988 20 0C C9                  ..
        lda     #$02                            ; A98B A9 02                    ..
        jsr     BattleTurnEngine_Entry_A9FD     ; A98D 20 FD A9                  ..
        ldx     #$45                            ; A990 A2 45                    .E
        jsr     BattleTurnEngine_Entry_B0ED     ; A992 20 ED B0                  ..
        inx                                     ; A995 E8                       .
        jsr     BattleTurnEngine_Entry_B0ED     ; A996 20 ED B0                  ..
        ldx     #$0A                            ; A999 A2 0A                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A99B 20 0C C9                  ..
        lda     #$03                            ; A99E A9 03                    ..
        jsr     BattleTurnEngine_Entry_A9FD     ; A9A0 20 FD A9                  ..
        ldx     #$47                            ; A9A3 A2 47                    .G
        jsr     BattleTurnEngine_Entry_B0ED     ; A9A5 20 ED B0                  ..
        inx                                     ; A9A8 E8                       .
        jsr     BattleTurnEngine_Entry_B0ED     ; A9A9 20 ED B0                  ..
        inx                                     ; A9AC E8                       .
        jsr     BattleTurnEngine_Entry_B0ED     ; A9AD 20 ED B0                  ..
        ldx     #$3E                            ; A9B0 A2 3E                    .>
        jsr     BattleTurnEngine_Entry_AA43     ; A9B2 20 43 AA                  C.
        ldx     #$0A                            ; A9B5 A2 0A                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A9B7 20 0C C9                  ..
        ldx     #$4A                            ; A9BA A2 4A                    .J
        jsr     BattleTurnEngine_Entry_B0ED     ; A9BC 20 ED B0                  ..
        ldx     #$0F                            ; A9BF A2 0F                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A9C1 20 0C C9                  ..
        ldx     #$4B                            ; A9C4 A2 4B                    .K
        jsr     BattleTurnEngine_Entry_B0ED     ; A9C6 20 ED B0                  ..
        inx                                     ; A9C9 E8                       .
        jsr     BattleTurnEngine_Entry_B0ED     ; A9CA 20 ED B0                  ..
        ldx     #$0F                            ; A9CD A2 0F                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A9CF 20 0C C9                  ..
        ldx     #$4D                            ; A9D2 A2 4D                    .M
        jsr     BattleTurnEngine_Entry_B0ED     ; A9D4 20 ED B0                  ..
        inx                                     ; A9D7 E8                       .
        jsr     BattleTurnEngine_Entry_B0ED     ; A9D8 20 ED B0                  ..
        ldx     #$31                            ; A9DB A2 31                    .1
        jsr     BattleTurnEngine_Entry_AC1A     ; A9DD 20 1A AC                  ..
        inx                                     ; A9E0 E8                       .
        jsr     BattleTurnEngine_Entry_AC1A     ; A9E1 20 1A AC                  ..
        ldx     #$0F                            ; A9E4 A2 0F                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A9E6 20 0C C9                  ..
        ldx     #$4F                            ; A9E9 A2 4F                    .O
        jsr     BattleTurnEngine_Entry_B0ED     ; A9EB 20 ED B0                  ..
        ldx     #$0F                            ; A9EE A2 0F                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; A9F0 20 0C C9                  ..
        ldx     #$50                            ; A9F3 A2 50                    .P
        jsr     BattleTurnEngine_Entry_B0ED     ; A9F5 20 ED B0                  ..
        ldx     #$0F                            ; A9F8 A2 0F                    ..
        jmp     UpperFixedEngine_Entry_C90C     ; A9FA 4C 0C C9                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_A9FD:
        asl     a                               ; A9FD 0A                       .
        tax                                     ; A9FE AA                       .
        lda     $AA3B,x                         ; A9FF BD 3B AA                 .;.
        sta     $04                             ; AA02 85 04                    ..
        lda     $AA3C,x                         ; AA04 BD 3C AA                 .<.
        sta     $05                             ; AA07 85 05                    ..
        ldy     #$08                            ; AA09 A0 08                    ..
BattleTurnEngine_Branch_AA0B:
        ldx     #$00                            ; AA0B A2 00                    ..
        jsr     UpperFixedEngine_Entry_C770     ; AA0D 20 70 C7                  p.
        lda     $00                           ; AA10 A5 00                    ..
        sec                                     ; AA12 38                       8
        sbc     $04                             ; AA13 E5 04                    ..
        sta     $00                           ; AA15 85 00                    ..
        lda     $05                             ; AA17 A5 05                    ..
        pha                                     ; AA19 48                       H
        cpy     #$09                            ; AA1A C0 09                    ..
        clc                                     ; AA1C 18                       .
        beq     BattleTurnEngine_Branch_AA24    ; AA1D F0 05                    ..
        eor     #$FF                            ; AA1F 49 FF                    I.
        sta     $05                             ; AA21 85 05                    ..
        sec                                     ; AA23 38                       8
BattleTurnEngine_Branch_AA24:
        adc     $03                             ; AA24 65 03                    e.
        sta     $03                             ; AA26 85 03                    ..
        pla                                     ; AA28 68                       h
        sta     $05                             ; AA29 85 05                    ..
        ldx     #$00                            ; AA2B A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; AA2D 20 3E C7                  >.
        iny                                     ; AA30 C8                       .
        cpy     #$0A                            ; AA31 C0 0A                    ..
        bcc     BattleTurnEngine_Branch_AA0B    ; AA33 90 D6                    ..
        rts                                     ; AA35 60                       `
; ----------------------------------------------------------------------------
        db   $2B,$2C,$2F,$32,$36             ; AA36 2B 2C 2F 32 36           +,/26
        db   $02                             ; AA3B 02                       .
        db   $03,$01,$03,$01,$03,$00,$02     ; AA3C 03 01 03 01 03 00 02     .......
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_AA43:
        lda     $AA66,x                         ; AA43 BD 66 AA                 .f.
        sta     $05                             ; AA46 85 05                    ..
        lda     $AAA5,x                         ; AA48 BD A5 AA                 ...
        sta     $08                             ; AA4B 85 08                    ..
        lda     $AAE4,x                         ; AA4D BD E4 AA                 ...
        sta     $09                             ; AA50 85 09                    ..
        txa                                     ; AA52 8A                       .
        pha                                     ; AA53 48                       H
        asl     a                               ; AA54 0A                       .
        tax                                     ; AA55 AA                       .
        lda     $AB23,x                         ; AA56 BD 23 AB                 .#.
        sta     $06                             ; AA59 85 06                    ..
        lda     $AB24,x                         ; AA5B BD 24 AB                 .$.
        sta     $07                             ; AA5E 85 07                    ..
        jsr     BattleTurnEngine_Entry_AFEA     ; AA60 20 EA AF                  ..
        pla                                     ; AA63 68                       h
        tax                                     ; AA64 AA                       .
        rts                                     ; AA65 60                       `
; ----------------------------------------------------------------------------
        db   $12,$12,$02,$08,$02,$06,$01,$02 ; AA66 12 12 02 08 02 06 01 02  ........
        db   $01,$03,$06,$01,$01,$02,$05,$02 ; AA6E 01 03 06 01 01 02 05 02  ........
        db   $03,$04,$02,$04,$01,$01,$02,$03 ; AA76 03 04 02 04 01 01 02 03  ........
        db   $02,$02,$08,$04,$01,$01,$02,$03 ; AA7E 02 02 08 04 01 01 02 03  ........
        db   $02,$02,$08,$04,$02,$02,$06,$01 ; AA86 02 02 08 04 02 02 06 01  ........
        db   $02,$01,$01,$05,$01,$01,$01,$02 ; AA8E 02 01 01 05 01 01 01 02  ........
        db   $06,$01,$02,$01,$01,$05,$01,$01 ; AA96 06 01 02 01 01 05 01 01  ........
        db   $01,$01,$01,$01,$01,$01,$01     ; AA9E 01 01 01 01 01 01 01     .......
        db   $00,$01,$02,$02,$02,$02,$02,$02 ; AAA5 00 01 02 02 02 02 02 02  ........
        db   $02,$02,$02,$02,$02,$02,$02,$02 ; AAAD 02 02 02 02 02 02 02 02  ........
        db   $02,$02,$02,$02,$00,$00,$00,$00 ; AAB5 02 02 02 02 00 00 00 00  ........
        db   $00,$00,$00,$00,$01,$01,$01,$01 ; AABD 00 00 00 00 01 01 01 01  ........
        db   $01,$01,$01,$01,$02,$00,$00,$00 ; AAC5 01 01 01 01 02 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$01 ; AACD 00 00 00 00 00 00 00 01  ........
        db   $01,$01,$01,$01,$01,$01,$01,$01 ; AAD5 01 01 01 01 01 01 01 01  ........
        db   $01,$02,$02,$02,$02,$02,$02     ; AADD 01 02 02 02 02 02 02     .......
        db   $00,$00,$00,$00,$8D,$00,$00,$00 ; AAE4 00 00 00 00 8D 00 00 00  ........
        db   $EB,$ED,$F3,$91,$93,$95,$99,$A3 ; AAEC EB ED F3 91 93 95 99 A3  ........
        db   $AD,$91,$A3,$CB,$93,$97,$A7,$AD ; AAF4 AD 91 A3 CB 93 97 A7 AD  ........
        db   $B5,$C7,$D9,$ED,$93,$97,$A7,$AD ; AAFC B5 C7 D9 ED 93 97 A7 AD  ........
        db   $B5,$C7,$D9,$ED,$00,$F5,$00,$91 ; AB04 B5 C7 D9 ED 00 F5 00 91  ........
        db   $99,$9F,$AB,$B9,$CB,$CF,$EB,$F5 ; AB0C 99 9F AB B9 CB CF EB F5  ........
        db   $00,$91,$99,$9F,$AB,$B9,$CB,$CF ; AB14 00 91 99 9F AB B9 CB CF  ........
        db   $EB,$D5,$C5,$95,$D7,$C3,$B3     ; AB1C EB D5 C5 95 D7 C3 B3     .......
        db   $A1                             ; AB23 A1                       .
        db   $AB,$A1,$AB,$B9,$AB,$B3,$AB,$B9 ; AB24 AB A1 AB B9 AB B3 AB B9  ........
        db   $AB,$BB,$AB,$C1,$AB,$C2,$AB,$C4 ; AB2C AB BB AB C1 AB C2 AB C4  ........
        db   $AB,$C5,$AB,$C8,$AB,$CE,$AB,$CF ; AB34 AB C5 AB C8 AB CE AB CF  ........
        db   $AB,$D0,$AB,$D2,$AB,$D7,$AB,$D9 ; AB3C AB D0 AB D2 AB D7 AB D9  ........
        db   $AB,$DC,$AB,$E0,$AB,$E2,$AB,$E6 ; AB44 AB DC AB E0 AB E2 AB E6  ........
        db   $AB,$E7,$AB,$E8,$AB,$EA,$AB,$ED ; AB4C AB E7 AB E8 AB EA AB ED  ........
        db   $AB,$EF,$AB,$F1,$AB,$F9,$AB,$E6 ; AB54 AB EF AB F1 AB F9 AB E6  ........
        db   $AB,$E7,$AB,$E8,$AB,$EA,$AB,$ED ; AB5C AB E7 AB E8 AB EA AB ED  ........
        db   $AB,$EF,$AB,$F1,$AB,$F9,$AB,$FD ; AB64 AB EF AB F1 AB F9 AB FD  ........
        db   $AB,$FF,$AB,$01,$AC,$07,$AC,$08 ; AB6C AB FF AB 01 AC 07 AC 08  ........
        db   $AC,$0A,$AC,$0B,$AC,$0C,$AC,$11 ; AB74 AC 0A AC 0B AC 0C AC 11  ........
        db   $AC,$12,$AC,$13,$AC,$FF,$AB,$01 ; AB7C AC 12 AC 13 AC FF AB 01  ........
        db   $AC,$07,$AC,$08,$AC,$0A,$AC,$0B ; AB84 AC 07 AC 08 AC 0A AC 0B  ........
        db   $AC,$0C,$AC,$11,$AC,$12,$AC,$13 ; AB8C AC 0C AC 11 AC 12 AC 13  ........
        db   $AC,$14,$AC,$15,$AC,$16,$AC,$17 ; AB94 AC 14 AC 15 AC 16 AC 17  ........
        db   $AC,$18,$AC,$19,$AC,$00,$01,$10 ; AB9C AC 18 AC 19 AC 00 01 10  ........
        db   $11,$20,$21,$22,$30,$31,$32,$41 ; ABA4 11 20 21 22 30 31 32 41  . !"012A
        db   $42,$43,$51,$52,$53,$62,$63,$04 ; ABAC 42 43 51 52 53 62 63 04  BCQRSbc.
        db   $14,$15,$16,$25,$26,$35,$36,$46 ; ABB4 14 15 16 25 26 35 36 46  ...%&56F
        db   $55,$56,$65,$66,$76,$45,$54,$64 ; ABBC 55 56 65 66 76 45 54 64  UVefvETd
        db   $86,$54,$55,$64,$45,$46,$56,$65 ; ABC4 86 54 55 64 45 46 56 65  .TUdEFVe
        db   $66,$76,$64,$64,$64,$74,$54,$63 ; ABCC 66 76 64 64 64 74 54 63  fvdddtTc
        db   $64,$73,$74,$63,$73,$63,$72,$73 ; ABD4 64 73 74 63 73 63 72 73  dstcscrs
        db   $63,$72,$73,$82,$72,$82,$45,$46 ; ABDC 63 72 73 82 72 82 45 46  crs.r.EF
        db   $55,$56,$21,$22,$30,$31,$32,$33 ; ABE4 55 56 21 22 30 31 32 33  UV!"0123
        db   $34,$40,$41,$42,$43,$44,$45,$50 ; ABEC 34 40 41 42 43 44 45 50  4@ABCDEP
        db   $51,$52,$53,$54,$55,$60,$61,$62 ; ABF4 51 52 53 54 55 60 61 62  QRSTU`ab
        db   $63,$76,$86,$74,$75,$84,$85,$93 ; ABFC 63 76 86 74 75 84 85 93  cv.tu...
        db   $94,$95,$96,$73,$74,$75,$76,$83 ; AC04 94 95 96 73 74 75 76 83  ...stuv.
        db   $84,$85,$91,$92,$93,$94,$95,$96 ; AC0C 84 85 91 92 93 94 95 96  ........
        db   $04,$03,$14,$13,$02,$12         ; AC14 04 03 14 13 02 12        ......
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_AC1A:
        txa                                     ; AC1A 8A                       .
        pha                                     ; AC1B 48                       H
        lda     $AD32,x                         ; AC1C BD 32 AD                 .2.
        sta     $0B                             ; AC1F 85 0B                    ..
        lda     $AC66,x                         ; AC21 BD 66 AC                 .f.
        sta     $04                             ; AC24 85 04                    ..
        lda     $AC99,x                         ; AC26 BD 99 AC                 ...
        sta     $05                             ; AC29 85 05                    ..
        lda     $ACCC,x                         ; AC2B BD CC AC                 ...
        pha                                     ; AC2E 48                       H
        pha                                     ; AC2F 48                       H
        pha                                     ; AC30 48                       H
        and     #$03                            ; AC31 29 03                    ).
        sta     $08                             ; AC33 85 08                    ..
        pla                                     ; AC35 68                       h
        lsr     a                               ; AC36 4A                       J
        lsr     a                               ; AC37 4A                       J
        lsr     a                               ; AC38 4A                       J
        lsr     a                               ; AC39 4A                       J
        sta     $0A                             ; AC3A 85 0A                    ..
        pla                                     ; AC3C 68                       h
        and     #$80                            ; AC3D 29 80                    ).
        lsr     a                               ; AC3F 4A                       J
        lsr     a                               ; AC40 4A                       J
        ora     $0A                             ; AC41 05 0A                    ..
        sta     $0A                             ; AC43 85 0A                    ..
        pla                                     ; AC45 68                       h
        and     #$08                            ; AC46 29 08                    ).
        asl     a                               ; AC48 0A                       .
        asl     a                               ; AC49 0A                       .
        asl     a                               ; AC4A 0A                       .
        asl     a                               ; AC4B 0A                       .
        sta     $0C                             ; AC4C 85 0C                    ..
        lda     $ACFF,x                         ; AC4E BD FF AC                 ...
        sta     $09                             ; AC51 85 09                    ..
        txa                                     ; AC53 8A                       .
        asl     a                               ; AC54 0A                       .
        tax                                     ; AC55 AA                       .
        lda     $AD65,x                         ; AC56 BD 65 AD                 .e.
        sta     $06                             ; AC59 85 06                    ..
        lda     $AD66,x                         ; AC5B BD 66 AD                 .f.
        sta     $07                             ; AC5E 85 07                    ..
        jsr     BattleTurnEngine_Entry_AFA8     ; AC60 20 A8 AF                  ..
        pla                                     ; AC63 68                       h
        tax                                     ; AC64 AA                       .
        rts                                     ; AC65 60                       `
; ----------------------------------------------------------------------------
        db   $0D,$0D,$00,$04,$00,$00,$00,$00 ; AC66 0D 0D 00 04 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$02,$03,$09 ; AC6E 00 00 00 00 00 02 03 09  ........
        db   $02,$03,$09,$0F,$11,$0F,$11,$02 ; AC76 02 03 09 0F 11 0F 11 02  ........
        db   $06,$08,$06,$0B,$0D,$16,$18,$16 ; AC7E 06 08 06 0B 0D 16 18 16  ........
        db   $1A,$06,$08,$06,$0B,$0D,$16,$1B ; AC86 1A 06 08 06 0B 0D 16 1B  ........
        db   $16,$1D,$00,$06,$1E,$24,$2A,$30 ; AC8E 16 1D 00 06 1E 24 2A 30  .....$*0
        db   $08,$0A,$0C                     ; AC96 08 0A 0C                 ...
        db   $12,$12,$02,$08,$06,$06,$08,$0A ; AC99 12 12 02 08 06 06 08 0A  ........
        db   $0A,$09,$09,$06,$01,$01,$06,$06 ; ACA1 0A 09 09 06 01 01 06 06  ........
        db   $01,$06,$06,$02,$10,$02,$10,$02 ; ACA9 01 06 06 02 10 02 10 02  ........
        db   $02,$06,$05,$02,$09,$02,$02,$01 ; ACB1 02 06 05 02 09 02 02 01  ........
        db   $01,$02,$06,$05,$02,$09,$02,$02 ; ACB9 01 02 06 05 02 09 02 02  ........
        db   $01,$01,$01,$01,$03,$03,$03,$03 ; ACC1 01 01 01 01 03 03 03 03  ........
        db   $01,$01,$01                     ; ACC9 01 01 01                 ...
        db   $10,$11,$12,$12,$02,$12,$02,$02 ; ACCC 10 11 12 12 02 12 02 02  ........
        db   $02,$02,$02,$02,$02,$00,$20,$20 ; ACD4 02 02 02 02 02 00 20 20  ......
        db   $01,$21,$21,$20,$20,$21,$21,$22 ; ACDC 01 21 21 20 20 21 21 22  .!!  !!"
        db   $20,$20,$20,$20,$20,$00,$10,$00 ; ACE4 20 20 20 20 20 00 10 00       ...
        db   $10,$21,$21,$21,$21,$21,$01,$11 ; ACEC 10 21 21 21 21 21 01 11  .!!!!!..
        db   $01,$11,$02,$02,$B2,$B2,$B2,$B2 ; ACF4 01 11 02 02 B2 B2 B2 B2  ........
        db   $02,$0A,$00                     ; ACFC 02 0A 00                 ...
        db   $00,$00,$08,$00,$00,$0A,$10,$18 ; ACFF 00 00 08 00 00 0A 10 18  ........
        db   $22,$2C,$35,$3E,$44,$45,$46,$4C ; AD07 22 2C 35 3E 44 45 46 4C  ",5>DEFL
        db   $45,$46,$F8,$52,$00,$FE,$00,$54 ; AD0F 45 46 F8 52 00 FE 00 54  EF.R...T
        db   $56,$00,$58,$5D,$00,$5F,$61,$60 ; AD17 56 00 58 5D 00 5F 61 60  V.X]._a`
        db   $63,$F5,$00,$F7,$FC,$00,$FE,$61 ; AD1F 63 F5 00 F7 FC 00 FE 61  c......a
        db   $FF,$63,$45,$64,$65,$68,$6B,$6E ; AD27 FF 63 45 64 65 68 6B 6E  .cEdehkn
        db   $71,$44,$72                     ; AD2F 71 44 72                 qDr
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; AD32 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$01,$01,$01 ; AD3A 00 00 00 00 00 01 01 01  ........
        db   $01,$01,$01,$00,$00,$00,$00,$00 ; AD42 01 01 01 00 00 00 00 00  ........
        db   $00,$00,$01,$00,$00,$01,$01,$01 ; AD4A 00 00 01 00 00 01 01 01  ........
        db   $01,$00,$00,$01,$00,$00,$01,$01 ; AD52 01 00 00 01 00 00 01 01  ........
        db   $01,$01,$01,$01,$00,$00,$00,$00 ; AD5A 01 01 01 01 00 00 00 00  ........
        db   $01,$01,$01                     ; AD62 01 01 01                 ...
        db   $CB                             ; AD65 CB                       .
        db   $AD,$CB,$AD,$E3,$AD,$DD,$AD,$E5 ; AD66 AD CB AD E3 AD DD AD E5  ........
        db   $AD,$E5,$AD,$EB,$AD,$F3,$AD,$FD ; AD6E AD E5 AD EB AD F3 AD FD  ........
        db   $AD,$07,$AE,$10,$AE,$19,$AE,$1F ; AD76 AD 07 AE 10 AE 19 AE 1F  ........
        db   $AE,$20,$AE,$22,$AE,$2E,$AE,$20 ; AD7E AE 20 AE 22 AE 2E AE 20  . ."...
        db   $AE,$22,$AE,$2E,$AE,$3A,$AE,$3C ; AD86 AE 22 AE 2E AE 3A AE 3C  ."...:.<
        db   $AE,$3A,$AE,$3C,$AE,$4C,$AE,$4E ; AD8E AE 3A AE 3C AE 4C AE 4E  .:.<.L.N
        db   $AE,$50,$AE,$56,$AE,$60,$AE,$62 ; AD96 AE 50 AE 56 AE 60 AE 62  .P.V.`.b
        db   $AE,$6B,$AE,$6B,$AE,$6F,$AE,$6F ; AD9E AE 6B AE 6B AE 6F AE 6F  .k.k.o.o
        db   $AE,$4E,$AE,$50,$AE,$56,$AE,$60 ; ADA6 AE 4E AE 50 AE 56 AE 60  .N.P.V.`
        db   $AE,$62,$AE,$6B,$AE,$6B,$AE,$6F ; ADAE AE 62 AE 6B AE 6B AE 6F  .b.k.k.o
        db   $AE,$6F,$AE,$20,$AE,$71,$AE,$73 ; ADB6 AE 6F AE 20 AE 71 AE 73  .o. .q.s
        db   $AE,$73,$AE,$73,$AE,$73,$AE,$76 ; ADBE AE 73 AE 73 AE 73 AE 76  .s.s.s.v
        db   $AE,$78,$AE,$7A,$AE,$00,$01,$10 ; ADC6 AE 78 AE 7A AE 00 01 10  .x.z....
        db   $11,$20,$21,$22,$30,$31,$32,$41 ; ADCE 11 20 21 22 30 31 32 41  . !"012A
        db   $42,$43,$51,$52,$53,$62,$63,$04 ; ADD6 42 43 51 52 53 62 63 04  BCQRSbc.
        db   $14,$15,$16,$25,$26,$35,$36,$46 ; ADDE 14 15 16 25 26 35 36 46  ...%&56F
        db   $55,$56,$65,$66,$76,$45,$46,$55 ; ADE6 55 56 65 66 76 45 46 55  UVefvEFU
        db   $56,$65,$66,$76,$86,$45,$46,$54 ; ADEE 56 65 66 76 86 45 46 54  Vefv.EFT
        db   $55,$56,$64,$65,$66,$76,$86,$45 ; ADF6 55 56 64 65 66 76 86 45  UVdefv.E
        db   $46,$54,$55,$56,$64,$65,$66,$75 ; ADFE 46 54 55 56 64 65 66 75  FTUVdefu
        db   $76,$45,$46,$54,$55,$56,$64,$65 ; AE06 76 45 46 54 55 56 64 65  vEFTUVde
        db   $66,$76,$45,$46,$54,$55,$56,$64 ; AE0E 66 76 45 46 54 55 56 64  fvEFTUVd
        db   $65,$66,$76,$45,$46,$56,$65,$66 ; AE16 65 66 76 45 46 56 65 66  efvEFVef
        db   $76,$46,$22,$2E,$1E,$22,$26,$22 ; AE1E 76 46 22 2E 1E 22 26 22  vF".."&"
        db   $2E,$22,$1E,$2A,$26,$2A,$2E,$2A ; AE26 2E 22 1E 2A 26 2A 2E 2A  .".*&*.*
        db   $2B,$2A,$23,$2A,$1B,$2A,$2B,$2A ; AE2E 2B 2A 23 2A 1B 2A 2B 2A  +*#*.*+*
        db   $23,$2A,$1B,$2A,$33,$63,$21,$22 ; AE36 23 2A 1B 2A 33 63 21 22  #*.*3c!"
        db   $30,$31,$32,$40,$41,$42,$43,$50 ; AE3E 30 31 32 40 41 42 43 50  012@ABCP
        db   $51,$52,$53,$60,$61,$62,$76,$86 ; AE46 51 52 53 60 61 62 76 86  QRS`abv.
        db   $74,$75,$84,$85,$93,$94,$95,$96 ; AE4E 74 75 84 85 93 94 95 96  tu......
        db   $38,$34,$40,$34,$38,$34,$40,$34 ; AE56 38 34 40 34 38 34 40 34  84@484@4
        db   $38,$34,$73,$74,$83,$84,$85,$91 ; AE5E 38 34 73 74 83 84 85 91  84st....
        db   $92,$93,$94,$95,$96,$50,$0D,$50 ; AE66 92 93 94 95 96 50 0D 50  .....P.P
        db   $15,$50,$2D,$2D,$30,$44,$45,$46 ; AE6E 15 50 2D 2D 30 44 45 46  .P--0DEF
        db   $FC,$1A,$09,$2C,$FD,$34         ; AE76 FC 1A 09 2C FD 34        ...,.4
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_AE7C:
        lda     #$FF                            ; AE7C A9 FF                    ..
        bne     BattleTurnEngine_Branch_AE82    ; AE7E D0 02                    ..
BattleTurnEngine_Entry_AE80:
        lda     #$00                            ; AE80 A9 00                    ..
BattleTurnEngine_Branch_AE82:
        sta     $00                           ; AE82 85 00                    ..
BattleTurnEngine_Branch_AE84:
        lda     #$01                            ; AE84 A9 01                    ..
        sta     $02                             ; AE86 85 02                    ..
        lda     $0F                             ; AE88 A5 0F                    ..
        pha                                     ; AE8A 48                       H
        jsr     BattleTurnEngine_Entry_A042     ; AE8B 20 42 A0                  B.
        pla                                     ; AE8E 68                       h
        sta     $0F                             ; AE8F 85 0F                    ..
        bcs     BattleTurnEngine_Branch_AEE9    ; AE91 B0 56                    .V
        stx     $03                             ; AE93 86 03                    ..
        ldy     $0F                             ; AE95 A4 0F                    ..
        lda     $AEC2,y                         ; AE97 B9 C2 AE                 ...
        pha                                     ; AE9A 48                       H
        and     #$0F                            ; AE9B 29 0F                    ).
        sta     $01                             ; AE9D 85 01                    ..
        pla                                     ; AE9F 68                       h
        and     #$F0                            ; AEA0 29 F0                    ).
        sta     $02                             ; AEA2 85 02                    ..
        lda     $AEB7,y                         ; AEA4 B9 B7 AE                 ...
        pha                                     ; AEA7 48                       H
        and     #$0F                            ; AEA8 29 0F                    ).
        sta     $05                             ; AEAA 85 05                    ..
        pla                                     ; AEAC 68                       h
        and     #$80                            ; AEAD 29 80                    ).
        sta     $06                             ; AEAF 85 06                    ..
        jsr     BattleTurnEngine_Entry_B07A     ; AEB1 20 7A B0                  z.
        jmp     BattleTurnEngine_Branch_AE84    ; AEB4 4C 84 AE                 L..
; ----------------------------------------------------------------------------
        db   $06,$06,$00,$88,$88,$02,$88,$81 ; AEB7 06 06 00 88 88 02 88 81  ........
        db   $02,$88,$81                     ; AEBF 02 88 81                 ...
        db   $20,$EE,$80,$C4,$8F,$65,$85,$06 ; AEC2 20 EE 80 C4 8F 65 85 06   ....e..
        db   $5F,$7F,$FF                     ; AECA 5F 7F FF                 _..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_AECD:
        ldx     #$00                            ; AECD A2 00                    ..
BattleTurnEngine_Branch_AECF:
        txa                                     ; AECF 8A                       .
        pha                                     ; AED0 48                       H
        cpx     $0B                             ; AED1 E4 0B                    ..
        bcc     BattleTurnEngine_Branch_AEDB    ; AED3 90 06                    ..
        inx                                     ; AED5 E8                       .
        cpx     $08                             ; AED6 E4 08                    ..
        dex                                     ; AED8 CA                       .
        beq     BattleTurnEngine_Branch_AEDB    ; AED9 F0 00                    ..
BattleTurnEngine_Branch_AEDB:
        jsr     BattleTurnEngine_Entry_AEEA     ; AEDB 20 EA AE                  ..
        pla                                     ; AEDE 68                       h
        tax                                     ; AEDF AA                       .
        bcc     BattleTurnEngine_Branch_AECF    ; AEE0 90 ED                    ..
        inc     $04                             ; AEE2 E6 04                    ..
        inx                                     ; AEE4 E8                       .
        cpx     $08                             ; AEE5 E4 08                    ..
        bcc     BattleTurnEngine_Branch_AECF    ; AEE7 90 E6                    ..
BattleTurnEngine_Branch_AEE9:
        rts                                     ; AEE9 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_AEEA:
        ldy     $0A                             ; AEEA A4 0A                    ..
BattleTurnEngine_Branch_AEEC:
        ldx     #$00                            ; AEEC A2 00                    ..
        jsr     UpperFixedEngine_Entry_C770     ; AEEE 20 70 C7                  p.
        ldx     $09                             ; AEF1 A6 09                    ..
        lda     $00,x                         ; AEF3 B5 00                    ..
        clc                                     ; AEF5 18                       .
        adc     $05                             ; AEF6 65 05                    e.
        sta     $00,x                         ; AEF8 95 00                    ..
        ldx     #$00                            ; AEFA A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; AEFC 20 3E C7                  >.
        iny                                     ; AEFF C8                       .
        tya                                     ; AF00 98                       .
        ldx     $04                             ; AF01 A6 04                    ..
        cmp     $AF1D,x                         ; AF03 DD 1D AF                 ...
        bcc     BattleTurnEngine_Branch_AEEC    ; AF06 90 E4                    ..
        lda     $AF41,x                         ; AF08 BD 41 AF                 .A.
        tax                                     ; AF0B AA                       .
        jsr     UpperFixedEngine_Entry_C90C     ; AF0C 20 0C C9                  ..
        ldx     $09                             ; AF0F A6 09                    ..
        lda     $00,x                         ; AF11 B5 00                    ..
        ldx     $04                             ; AF13 A6 04                    ..
        cmp     $AF2F,x                         ; AF15 DD 2F AF                 ./.
        sec                                     ; AF18 38                       8
        beq     BattleTurnEngine_Branch_AF1C    ; AF19 F0 01                    ..
        clc                                     ; AF1B 18                       .
BattleTurnEngine_Branch_AF1C:
        rts                                     ; AF1C 60                       `
; ----------------------------------------------------------------------------
        db   $0A,$0C,$0D,$0F,$0A,$0C,$0D,$0F ; AF1D 0A 0C 0D 0F 0A 0C 0D 0F  ........
        db   $08,$0A,$0B,$08,$0A,$0B,$24,$2A ; AF25 08 0A 0B 08 0A 0B 24 2A  ......$*
        db   $30,$36                         ; AF2D 30 36                    06
        db   $75,$78,$75,$73,$93,$90,$93,$95 ; AF2F 75 78 75 73 93 90 93 95  uxus....
        db   $7C,$7C,$80,$8C,$8C,$88,$57,$57 ; AF37 7C 7C 80 8C 8C 88 57 57  ||....WW
        db   $57,$57                         ; AF3F 57 57                    WW
        db   $01,$09,$14,$14,$01,$09,$14,$14 ; AF41 01 09 14 14 01 09 14 14  ........
        db   $0A,$14,$14,$0A,$14,$14,$0A,$14 ; AF49 0A 14 14 0A 14 14 0A 14  ........
        db   $14,$14,$20,$91,$C8,$29,$01,$F0 ; AF51 14 14 20 91 C8 29 01 F0  .. ..)..
        db   $02,$09,$03,$85,$06,$20,$91,$C8 ; AF59 02 09 03 85 06 20 91 C8  ..... ..
        db   $48,$29,$01,$85,$07,$E6,$07,$68 ; AF61 48 29 01 85 07 E6 07 68  H).....h
        db   $30,$08,$A5,$05,$49,$FF,$85,$07 ; AF69 30 08 A5 05 49 FF 85 07  0...I...
        db   $E6,$07,$20,$89,$AF,$A2,$0A,$20 ; AF71 E6 07 20 89 AF A2 0A 20  .. ....
        db   $0C,$C9,$A5,$07,$49,$FF,$85,$07 ; AF79 0C C9 A5 07 49 FF 85 07  ....I...
        db   $E6,$07,$20,$89,$AF,$4C,$74,$FF ; AF81 E6 07 20 89 AF 4C 74 FF  .. ..Lt.
        db   $A4,$0A,$A2,$00,$20,$70,$C7,$A6 ; AF89 A4 0A A2 00 20 70 C7 A6  .... p..
        db   $06,$B5,$00,$18,$65,$07,$95,$00 ; AF91 06 B5 00 18 65 07 95 00  ....e...
        db   $A2,$00,$20,$3E,$C7,$C8,$98,$A6 ; AF99 A2 00 20 3E C7 C8 98 A6  .. >....
        db   $04,$DD,$1D,$AF,$90,$E4,$60     ; AFA1 04 DD 1D AF 90 E4 60     ......`
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_AFA8:
        lda     $08                             ; AFA8 A5 08                    ..
        beq     BattleTurnEngine_Branch_AFB7    ; AFAA F0 0B                    ..
        and     #$01                            ; AFAC 29 01                    ).
        bne     BattleTurnEngine_Branch_AFB7    ; AFAE D0 07                    ..
        sta     $08                             ; AFB0 85 08                    ..
        jsr     BattleTurnEngine_Entry_AFBA     ; AFB2 20 BA AF                  ..
        inc     $08                             ; AFB5 E6 08                    ..
BattleTurnEngine_Branch_AFB7:
        jmp     BattleTurnEngine_Entry_AFBA     ; AFB7 4C BA AF                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_AFBA:
        ldy     #$00                            ; AFBA A0 00                    ..
BattleTurnEngine_Branch_AFBC:
        tya                                     ; AFBC 98                       .
        pha                                     ; AFBD 48                       H
        pha                                     ; AFBE 48                       H
        jsr     BattleTurnEngine_Entry_B018     ; AFBF 20 18 B0                  ..
        ldy     $04                             ; AFC2 A4 04                    ..
        pla                                     ; AFC4 68                       h
        ldx     $09                             ; AFC5 A6 09                    ..
        beq     BattleTurnEngine_Branch_AFCD    ; AFC7 F0 04                    ..
        clc                                     ; AFC9 18                       .
        adc     $09                             ; AFCA 65 09                    e.
        tax                                     ; AFCC AA                       .
BattleTurnEngine_Branch_AFCD:
        stx     $01                             ; AFCD 86 01                    ..
        lda     $0A                             ; AFCF A5 0A                    ..
        ldx     $08                             ; AFD1 A6 08                    ..
        beq     BattleTurnEngine_Branch_AFD7    ; AFD3 F0 02                    ..
        ora     #$40                            ; AFD5 09 40                    .@
BattleTurnEngine_Branch_AFD7:
        ora     $0C                             ; AFD7 05 0C                    ..
        sta     $02                             ; AFD9 85 02                    ..
        ldx     #$00                            ; AFDB A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; AFDD 20 3E C7                  >.
        inc     $04                             ; AFE0 E6 04                    ..
        pla                                     ; AFE2 68                       h
        tay                                     ; AFE3 A8                       .
        iny                                     ; AFE4 C8                       .
        cpy     $05                             ; AFE5 C4 05                    ..
        bcc     BattleTurnEngine_Branch_AFBC    ; AFE7 90 D3                    ..
        rts                                     ; AFE9 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_AFEA:
        lda     $08                             ; AFEA A5 08                    ..
        beq     BattleTurnEngine_Branch_AFF9    ; AFEC F0 0B                    ..
        and     #$01                            ; AFEE 29 01                    ).
        bne     BattleTurnEngine_Branch_AFF9    ; AFF0 D0 07                    ..
        sta     $08                             ; AFF2 85 08                    ..
        jsr     BattleTurnEngine_Entry_AFFF     ; AFF4 20 FF AF                  ..
        inc     $08                             ; AFF7 E6 08                    ..
BattleTurnEngine_Branch_AFF9:
        jsr     BattleTurnEngine_Entry_AFFF     ; AFF9 20 FF AF                  ..
        jmp     UpperFixedEngine_Entry_C62D     ; AFFC 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_AFFF:
        ldy     #$00                            ; AFFF A0 00                    ..
BattleTurnEngine_Branch_B001:
        jsr     BattleTurnEngine_Entry_B054     ; B001 20 54 B0                  T.
        lda     $09                             ; B004 A5 09                    ..
        beq     BattleTurnEngine_Branch_B00F    ; B006 F0 07                    ..
        tya                                     ; B008 98                       .
        clc                                     ; B009 18                       .
        asl     a                               ; B00A 0A                       .
        adc     $08                             ; B00B 65 08                    e.
        adc     $09                             ; B00D 65 09                    e.
BattleTurnEngine_Branch_B00F:
        jsr     UpperFixedEngine_Entry_C65A     ; B00F 20 5A C6                  Z.
        iny                                     ; B012 C8                       .
        cpy     $05                             ; B013 C4 05                    ..
        bcc     BattleTurnEngine_Branch_B001    ; B015 90 EA                    ..
        rts                                     ; B017 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_B018:
        lda     $0B                             ; B018 A5 0B                    ..
        bne     BattleTurnEngine_Branch_B034    ; B01A D0 18                    ..
        jsr     BattleTurnEngine_Entry_B054     ; B01C 20 54 B0                  T.
        lda     $00                           ; B01F A5 00                    ..
        asl     a                               ; B021 0A                       .
        asl     a                               ; B022 0A                       .
        asl     a                               ; B023 0A                       .
        sta     $03                             ; B024 85 03                    ..
        lda     $01                             ; B026 A5 01                    ..
        sec                                     ; B028 38                       8
        sbc     #$08                            ; B029 E9 08                    ..
        asl     a                               ; B02B 0A                       .
        asl     a                               ; B02C 0A                       .
        asl     a                               ; B02D 0A                       .
        clc                                     ; B02E 18                       .
        adc     #$3F                            ; B02F 69 3F                    i?
        sta     $00                           ; B031 85 00                    ..
        rts                                     ; B033 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_B034:
        tya                                     ; B034 98                       .
        asl     a                               ; B035 0A                       .
        tay                                     ; B036 A8                       .
        lda     ($06),y                         ; B037 B1 06                    ..
        clc                                     ; B039 18                       .
        adc     #$3F                            ; B03A 69 3F                    i?
        sta     $00                           ; B03C 85 00                    ..
        iny                                     ; B03E C8                       .
        lda     ($06),y                         ; B03F B1 06                    ..
        ldx     $08                             ; B041 A6 08                    ..
        beq     BattleTurnEngine_Branch_B04E    ; B043 F0 09                    ..
        lda     #$34                            ; B045 A9 34                    .4
        sec                                     ; B047 38                       8
        sbc     ($06),y                         ; B048 F1 06                    ..
        asl     a                               ; B04A 0A                       .
        clc                                     ; B04B 18                       .
        adc     ($06),y                         ; B04C 71 06                    q.
BattleTurnEngine_Branch_B04E:
        clc                                     ; B04E 18                       .
        adc     #$50                            ; B04F 69 50                    iP
        sta     $03                             ; B051 85 03                    ..
        rts                                     ; B053 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_B054:
        lda     ($06),y                         ; B054 B1 06                    ..
        pha                                     ; B056 48                       H
        and     #$F0                            ; B057 29 F0                    ).
        lsr     a                               ; B059 4A                       J
        lsr     a                               ; B05A 4A                       J
        lsr     a                               ; B05B 4A                       J
        lsr     a                               ; B05C 4A                       J
        clc                                     ; B05D 18                       .
        adc     #$08                            ; B05E 69 08                    i.
        sta     $01                             ; B060 85 01                    ..
        pla                                     ; B062 68                       h
        and     #$0F                            ; B063 29 0F                    ).
        ldx     $08                             ; B065 A6 08                    ..
        beq     BattleTurnEngine_Branch_B074    ; B067 F0 0B                    ..
        sta     $00                           ; B069 85 00                    ..
        lda     #$06                            ; B06B A9 06                    ..
        sec                                     ; B06D 38                       8
        sbc     $00                           ; B06E E5 00                    ..
        asl     a                               ; B070 0A                       .
        sec                                     ; B071 38                       8
        adc     $00                           ; B072 65 00                    e.
BattleTurnEngine_Branch_B074:
        clc                                     ; B074 18                       .
        adc     #$0A                            ; B075 69 0A                    i.
        sta     $00                           ; B077 85 00                    ..
        rts                                     ; B079 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_B07A:
        lda     $0650,x                         ; B07A BD 50 06                 .P.
        sta     NextTextCharacter               ; B07D 8D 02 03                 ...
        lda     #$00                            ; B080 A9 00                    ..
        sta     $0300                           ; B082 8D 00 03                 ...
        stx     $0301                           ; B085 8E 01 03                 ...
        ldx     #$00                            ; B088 A2 00                    ..
        stx     $04                             ; B08A 86 04                    ..
BattleTurnEngine_Branch_B08C:
        lda     $01                             ; B08C A5 01                    ..
        sta     $0303,x                         ; B08E 9D 03 03                 ...
        sta     $0306,x                         ; B091 9D 06 03                 ...
        lda     $04                             ; B094 A5 04                    ..
        asl     a                               ; B096 0A                       .
        asl     a                               ; B097 0A                       .
        asl     a                               ; B098 0A                       .
        asl     a                               ; B099 0A                       .
        pha                                     ; B09A 48                       H
        adc     $02                             ; B09B 65 02                    e.
        bcc     BattleTurnEngine_Branch_B0A6    ; B09D 90 07                    ..
        inc     $0303,x                         ; B09F FE 03 03                 ...
        inc     $0306,x                         ; B0A2 FE 06 03                 ...
        clc                                     ; B0A5 18                       .
BattleTurnEngine_Branch_B0A6:
        adc     $03                             ; B0A6 65 03                    e.
        sta     $0304,x                         ; B0A8 9D 04 03                 ...
        adc     #$08                            ; B0AB 69 08                    i.
        sta     $0307,x                         ; B0AD 9D 07 03                 ...
        pla                                     ; B0B0 68                       h
        clc                                     ; B0B1 18                       .
        adc     $03                             ; B0B2 65 03                    e.
        tay                                     ; B0B4 A8                       .
        lda     NextTextCharacter               ; B0B5 AD 02 03                 ...
        pha                                     ; B0B8 48                       H
        lda     $06                             ; B0B9 A5 06                    ..
        bmi     BattleTurnEngine_Branch_B0C1    ; B0BB 30 04                    0.
        pla                                     ; B0BD 68                       h
        eor     #$FF                            ; B0BE 49 FF                    I.
        pha                                     ; B0C0 48                       H
BattleTurnEngine_Branch_B0C1:
        pla                                     ; B0C1 68                       h
        pha                                     ; B0C2 48                       H
        and     $7600,y                         ; B0C3 39 00 76                 9.v
        sta     $0305,x                         ; B0C6 9D 05 03                 ...
        tya                                     ; B0C9 98                       .
        adc     #$08                            ; B0CA 69 08                    i.
        tay                                     ; B0CC A8                       .
        pla                                     ; B0CD 68                       h
        and     $7600,y                         ; B0CE 39 00 76                 9.v
        sta     $0308,x                         ; B0D1 9D 08 03                 ...
        txa                                     ; B0D4 8A                       .
        clc                                     ; B0D5 18                       .
        adc     #$06                            ; B0D6 69 06                    i.
        tax                                     ; B0D8 AA                       .
        inc     $04                             ; B0D9 E6 04                    ..
        lda     $04                             ; B0DB A5 04                    ..
        cmp     $05                             ; B0DD C5 05                    ..
        bcc     BattleTurnEngine_Branch_B08C    ; B0DF 90 AB                    ..
        lda     $05                             ; B0E1 A5 05                    ..
        asl     a                               ; B0E3 0A                       .
        sta     $050B                           ; B0E4 8D 0B 05                 ...
        inc     $050B                           ; B0E7 EE 0B 05                 ...
        jmp     UpperFixedEngine_Entry_C62D     ; B0EA 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_B0ED:
        jsr     BattleTurnEngine_Entry_B100     ; B0ED 20 00 B1                  ..
        lda     $1F                             ; B0F0 A5 1F                    ..
        ora     #$40                            ; B0F2 09 40                    .@
        sta     $1F                             ; B0F4 85 1F                    ..
        jsr     UpperFixedEngine_Entry_C62D     ; B0F6 20 2D C6                  -.
        lda     $1F                             ; B0F9 A5 1F                    ..
        and     #$BF                            ; B0FB 29 BF                    ).
        sta     $1F                             ; B0FD 85 1F                    ..
        rts                                     ; B0FF 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_B100:
        txa                                     ; B100 8A                       .
        pha                                     ; B101 48                       H
        lda     #$07                            ; B102 A9 07                    ..
        sta     $C2                             ; B104 85 C2                    ..
        lda     $B169,x                         ; B106 BD 69 B1                 .i.
        pha                                     ; B109 48                       H
        and     #$0F                            ; B10A 29 0F                    ).
        sta     $05                             ; B10C 85 05                    ..
        pla                                     ; B10E 68                       h
        and     #$10                            ; B10F 29 10                    ).
        pha                                     ; B111 48                       H
        lsr     a                               ; B112 4A                       J
        lsr     a                               ; B113 4A                       J
        lsr     a                               ; B114 4A                       J
        lsr     a                               ; B115 4A                       J
        sta     $08                             ; B116 85 08                    ..
        lda     $B169,x                         ; B118 BD 69 B1                 .i.
        and     #$0F                            ; B11B 29 0F                    ).
        asl     a                               ; B11D 0A                       .
        asl     a                               ; B11E 0A                       .
        asl     a                               ; B11F 0A                       .
        asl     a                               ; B120 0A                       .
        sta     $0301                           ; B121 8D 01 03                 ...
        pla                                     ; B124 68                       h
        beq     BattleTurnEngine_Branch_B12A    ; B125 F0 03                    ..
        asl     $0301                           ; B127 0E 01 03                 ...
BattleTurnEngine_Branch_B12A:
        sta     $0300                           ; B12A 8D 00 03                 ...
        lda     $B25C,x                         ; B12D BD 5C B2                 .\.
        pha                                     ; B130 48                       H
        and     #$0F                            ; B131 29 0F                    ).
        ora     $0300                           ; B133 0D 00 03                 ...
        ora     #$80                            ; B136 09 80                    ..
        sta     $0300                           ; B138 8D 00 03                 ...
        pla                                     ; B13B 68                       h
        and     #$F0                            ; B13C 29 F0                    ).
        sta     NextTextCharacter               ; B13E 8D 02 03                 ...
        lda     #$01                            ; B141 A9 01                    ..
        sta     $050B                           ; B143 8D 0B 05                 ...
        lda     $29                             ; B146 A5 29                    .)
        pha                                     ; B148 48                       H
        lda     #$00                            ; B149 A9 00                    ..
        sta     $29                             ; B14B 85 29                    .)
        cpx     #$02                            ; B14D E0 02                    ..
        bcc     BattleTurnEngine_Branch_B153    ; B14F 90 02                    ..
        inc     $29                             ; B151 E6 29                    .)
BattleTurnEngine_Branch_B153:
        txa                                     ; B153 8A                       .
        asl     a                               ; B154 0A                       .
        tax                                     ; B155 AA                       .
        lda     $B1BA,x                         ; B156 BD BA B1                 ...
        sta     $C0                             ; B159 85 C0                    ..
        lda     $B1BB,x                         ; B15B BD BB B1                 ...
        sta     $C1                             ; B15E 85 C1                    ..
        jsr     BattleTurnEngine_Entry_B2AD     ; B160 20 AD B2                  ..
        pla                                     ; B163 68                       h
        sta     $29                             ; B164 85 29                    .)
        pla                                     ; B166 68                       h
        tax                                     ; B167 AA                       .
        rts                                     ; B168 60                       `
; ----------------------------------------------------------------------------
        db   $06,$12,$11,$11,$12,$14,$11,$12 ; B169 06 12 11 11 12 14 11 12  ........
        db   $13,$14,$12,$12,$11,$11,$14,$14 ; B171 13 14 12 12 11 11 14 14  ........
        db   $14,$12,$11,$11,$12,$13,$12,$12 ; B179 14 12 11 11 12 13 12 12  ........
        db   $14,$14,$14,$08,$02,$08,$01,$12 ; B181 14 14 14 08 02 08 01 12  ........
        db   $11,$12,$11,$11,$14,$11,$11,$11 ; B189 11 12 11 11 14 11 11 11  ........
        db   $11,$11,$11,$11,$11,$11,$11,$11 ; B191 11 11 11 11 11 11 11 11  ........
        db   $11,$11,$11,$11,$11,$11,$11,$12 ; B199 11 11 11 11 11 11 11 12  ........
        db   $12,$11,$11,$11,$11,$11,$11,$11 ; B1A1 12 11 11 11 11 11 11 11  ........
        db   $12,$11,$12,$12,$12,$12,$11,$12 ; B1A9 12 11 12 12 12 12 11 12  ........
        db   $12,$11,$06,$03,$02,$02,$02,$05 ; B1B1 12 11 06 03 02 02 02 05  ........
        db   $06                             ; B1B9 06                       .
        db   $96                             ; B1BA 96                       .
        db   $B1,$13,$B2,$61,$B8,$72,$B8,$82 ; B1BB B1 13 B2 61 B8 72 B8 82  ...a.r..
        db   $B8,$A3,$B8,$D5,$B8,$E6,$B8,$FC ; B1C3 B8 A3 B8 D5 B8 E6 B8 FC  ........
        db   $B8,$21,$B9,$51,$B9,$80,$B5,$18 ; B1CB B8 21 B9 51 B9 80 B5 18  .!.Q....
        db   $B5,$A4,$B5,$67,$B9,$AA,$B9,$FD ; B1D3 B5 A4 B5 67 B9 AA B9 FD  ...g....
        db   $B9,$EE,$B9,$41,$BA,$4C,$BA,$59 ; B1DB B9 EE B9 41 BA 4C BA 59  ...A.L.Y
        db   $BA,$6D,$BA,$9C,$BA,$BA,$BA,$DA ; B1E3 BA 6D BA 9C BA BA BA DA  .m......
        db   $BA,$1A,$BB,$5D,$BB,$60,$B6,$EB ; B1EB BA 1A BB 5D BB 60 B6 EB  ...].`..
        db   $B6,$0D,$B7,$71,$B7,$B7,$BD,$83 ; B1F3 B6 0D B7 71 B7 B7 BD 83  ...q....
        db   $BB,$94,$BB,$B6,$BB,$C7,$BB,$D4 ; B1FB BB 94 BB B6 BB C7 BB D4  ........
        db   $BB,$0A,$BC,$1B,$BC,$2B,$BC,$3C ; B203 BB 0A BC 1B BC 2B BC 3C  .....+.<
        db   $BC,$CF,$BD,$E0,$BD,$EE,$BD,$FF ; B20B BC CF BD E0 BD EE BD FF  ........
        db   $BD,$0A,$BE,$1B,$BE,$2A,$BE,$3A ; B213 BD 0A BE 1B BE 2A BE 3A  .....*.:
        db   $BE,$4A,$BE,$5A,$BE,$64,$BE,$75 ; B21B BE 4A BE 5A BE 64 BE 75  .J.Z.d.u
        db   $BE,$84,$BE,$95,$BE,$A6,$BE,$BC ; B223 BE 84 BE 95 BE A6 BE BC  ........
        db   $BE,$DE,$BE,$EF,$BE,$F8,$BE,$FE ; B22B BE DE BE EF BE F8 BE FE  ........
        db   $BE,$0F,$BF,$19,$BF,$22,$BF,$2D ; B233 BE 0F BF 19 BF 22 BF 2D  .....".-
        db   $BF,$3C,$BF,$47,$BF,$59,$BF,$6A ; B23B BF 3C BF 47 BF 59 BF 6A  .<.G.Y.j
        db   $BF,$7C,$BF,$91,$BF,$99,$BF,$AD ; B243 BF 7C BF 91 BF 99 BF AD  .|......
        db   $BF,$BF,$BF,$43,$BC,$94,$BC,$B5 ; B24B BF BF BF 43 BC 94 BC B5  ...C....
        db   $BC,$D7,$BC,$F2,$BC,$14,$BD,$5C ; B253 BC D7 BC F2 BC 14 BD 5C  .......\
        db   $BD                             ; B25B BD                       .
        db   $EE,$D8,$19,$39,$59,$99,$1A,$3A ; B25C EE D8 19 39 59 99 1A 3A  ...9Y..:
        db   $DA,$19,$3A,$BC,$FC,$1D,$BC,$BC ; B264 DA 19 3A BC FC 1D BC BC  ..:.....
        db   $BC,$7C,$39,$79,$7A,$DA,$5B,$7C ; B26C BC 7C 39 79 7A DA 5B 7C  .|9yz.[|
        db   $9D,$1E,$DE,$8F,$5F,$7F,$FF,$5F ; B274 9D 1E DE 8F 5F 7F FF 5F  ...._.._
        db   $19,$99,$F9,$BA,$9B,$1C,$BC,$FC ; B27C 19 99 F9 BA 9B 1C BC FC  ........
        db   $BE,$19,$BA,$19,$3A,$19,$BA,$3A ; B284 BE 19 BA 19 3A 19 BA 3A  ....:..:
        db   $19,$BA,$1F,$3A,$19,$9B,$1B,$D8 ; B28C 19 BA 1F 3A 19 9B 1B D8  ...:....
        db   $9D,$DC,$5D,$5C,$59,$5C,$5D,$5C ; B294 9D DC 5D 5C 59 5C 5D 5C  ..]\Y\]\
        db   $5D,$5C,$5D,$3C,$5D,$3C,$7D,$3C ; B29C 5D 5C 5D 3C 5D 3C 7D 3C  ]\]<]<}<
        db   $5D,$3B,$56,$56,$96,$66,$96,$56 ; B2A4 5D 3B 56 56 96 66 96 56  ];VV.f.V
        db   $56                             ; B2AC 56                       V
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_B2AD:
        lda     #$00                            ; B2AD A9 00                    ..
        sta     $01                             ; B2AF 85 01                    ..
BattleTurnEngine_Branch_B2B1:
        jsr     Bank14_DecodeMonsterGraphicsBitplanes; B2B1 20 12 97             ..
        ldx     #$00                            ; B2B4 A2 00                    ..
BattleTurnEngine_Branch_B2B6:
        ldy     $01                             ; B2B6 A4 01                    ..
        lda     $0650,x                         ; B2B8 BD 50 06                 .P.
        sta     $0303,y                         ; B2BB 99 03 03                 ...
        sta     $7600,y                         ; B2BE 99 00 76                 ..v
        inc     $01                             ; B2C1 E6 01                    ..
        inx                                     ; B2C3 E8                       .
        cpx     #$10                            ; B2C4 E0 10                    ..
        bcc     BattleTurnEngine_Branch_B2B6    ; B2C6 90 EE                    ..
        lda     $08                             ; B2C8 A5 08                    ..
        beq     BattleTurnEngine_Branch_B2D0    ; B2CA F0 04                    ..
        cpx     #$20                            ; B2CC E0 20                    .
        bcc     BattleTurnEngine_Branch_B2B6    ; B2CE 90 E6                    ..
BattleTurnEngine_Branch_B2D0:
        dec     $05                             ; B2D0 C6 05                    ..
        bne     BattleTurnEngine_Branch_B2B1    ; B2D2 D0 DD                    ..
        rts                                     ; B2D4 60                       `
; ----------------------------------------------------------------------------
Bank14_MonsterIdMap:
        db   $00,$01,$02,$04,$A9,$B6,$16,$03 ; B2D5 00 01 02 04 A9 B6 16 03  ........
        db   $05,$1A,$07,$08,$0C,$0B,$18,$B7 ; B2DD 05 1A 07 08 0C 0B 18 B7  ........
        db   $0A,$13,$28,$15,$0F,$12,$B9,$72 ; B2E5 0A 13 28 15 0F 12 B9 72  ..(....r
        db   $1E,$06,$1C,$B8,$2C,$1D,$09,$1F ; B2ED 1E 06 1C B8 2C 1D 09 1F  ....,...
        db   $5C,$11,$2B,$20,$2D,$0D,$0E,$24 ; B2F5 5C 11 2B 20 2D 0D 0E 24  \.+ -..$
        db   $17,$22,$27,$25,$43,$1B,$49,$BA ; B2FD 17 22 27 25 43 1B 49 BA  ."'%C.I.
        db   $70,$21,$30,$39,$9E,$A4,$47,$33 ; B305 70 21 30 39 9E A4 47 33  p!09..G3
        db   $32,$94,$98,$99,$35,$36,$34,$A7 ; B30D 32 94 98 99 35 36 34 A7  2...564.
        db   $37,$96,$3A,$3B,$9A,$3C,$14,$2A ; B315 37 96 3A 3B 9A 3C 14 2A  7.:;.<.*
        db   $10,$2E,$48,$97,$3D,$19,$26,$3E ; B31D 10 2E 48 97 3D 19 26 3E  ..H.=.&>
        db   $46,$45,$44,$A0,$9B,$4C,$42,$95 ; B325 46 45 44 A0 9B 4C 42 95  FED..LB.
        db   $51,$2F,$53,$52,$4D,$3F,$4E,$55 ; B32D 51 2F 53 52 4D 3F 4E 55  Q/SRM?NU
        db   $56,$57,$50,$5B,$54,$40,$38,$58 ; B335 56 57 50 5B 54 40 38 58  VWP[T@8X
        db   $5A,$9D,$5D,$5F,$A2,$7B,$62,$4F ; B33D 5A 9D 5D 5F A2 7B 62 4F  Z.]_.{bO
        db   $64,$65,$9C,$67,$68,$59,$A8,$66 ; B345 64 65 9C 67 68 59 A8 66  de.ghY.f
        db   $4A,$A6,$69,$6A,$A3,$9F,$6C,$A1 ; B34D 4A A6 69 6A A3 9F 6C A1  J.ij..l.
        db   $6D,$6B,$6F,$60,$31,$6E,$A5,$73 ; B355 6D 6B 6F 60 31 6E A5 73  mko`1n.s
        db   $29,$75,$76,$77,$71,$74,$7A,$61 ; B35D 29 75 76 77 71 74 7A 61  )uvwqtza
        db   $7C,$23,$78,$79,$81,$7D,$7F,$80 ; B365 7C 23 78 79 81 7D 7F 80  |#xy.}..
        db   $84,$7E,$82,$83,$41,$85,$63,$4B ; B36D 84 7E 82 83 41 85 63 4B  .~..A.cK
        db   $87,$88,$5E,$8B,$89,$86,$8A,$91 ; B375 87 88 5E 8B 89 86 8A 91  ..^.....
        db   $8C,$8D,$8E,$BB,$AC,$AD,$AE,$AF ; B37D 8C 8D 8E BB AC AD AE AF  ........
        db   $B0,$B1,$B2,$B3,$B4,$B5,$92,$93 ; B385 B0 B1 B2 B3 B4 B5 92 93  ........
        db   $90,$8F,$AA,$AB,$BC,$BD,$AB,$BE ; B38D 90 8F AA AB BC BD AB BE  ........
        db   $BF,$C0,$C1                     ; B395 BF C0 C1                 ...
Bank14_MonsterGraphicsBankBitmap:
        db   $80,$80,$48,$90,$03,$0A,$00,$0D ; B398 80 80 48 90 03 0A 00 0D  ..H.....
        db   $AC,$14,$00,$AD,$60,$AC,$02,$D8 ; B3A0 AC 14 00 AD 60 AC 02 D8  ....`...
        db   $30,$E3,$C3,$CD,$9B,$5A,$E6,$8E ; B3A8 30 E3 C3 CD 9B 5A E6 8E  0....Z..
        db   $80                             ; B3B0 80                       .
Bank14_MonsterGraphicsDescriptors:
        db   $04,$00,$80,$7B,$B7,$0E,$D6,$8E ; B3B1 04 00 80 7B B7 0E D6 8E  ...{....
        db   $B4,$B8,$0F,$B8,$A8,$F8,$B7,$10 ; B3B9 B4 B8 0F B8 A8 F8 B7 10  ........
        db   $77,$B6,$16,$BA,$07,$63,$8E,$95 ; B3C1 77 B6 16 BA 07 63 8E 95  w....c..
        db   $B7,$13,$18,$A4,$7C,$B8,$17,$7B ; B3C9 B7 13 18 A4 7C B8 17 7B  ....|..{
        db   $A7,$BC,$B8,$06,$EB,$81,$0E,$BA ; B3D1 A7 BC B8 06 EB 81 0E BA  ........
        db   $0F,$11,$91,$FC,$B8,$16,$E4,$B2 ; B3D9 0F 11 91 FC B8 16 E4 B2  ........
        db   $2B,$BA,$1D,$BD,$AA,$3C,$B9,$1E ; B3E1 2B BA 1D BD AA 3C B9 1E  +....<..
        db   $35,$9D,$D4,$B7,$13,$34,$95,$9C ; B3E9 35 9D D4 B7 13 34 95 9C  5....4..
        db   $B9,$19,$98,$92,$54,$B8,$07,$63 ; B3F1 B9 19 98 92 54 B8 07 63  ....T..c
        db   $8E,$9C,$B7,$06,$9E,$81,$AA,$B9 ; B3F9 8E 9C B7 06 9E 81 AA B9  ........
        db   $28,$2F,$AC,$40,$BA,$22,$FE,$AB ; B401 28 2F AC 40 BA 22 FE AB  (/.@."..
        db   $55,$BA,$16,$E4,$B2,$32,$BA,$13 ; B409 55 BA 16 E4 B2 32 BA 13  U....2..
        db   $3B,$82,$BA,$B9,$19,$53,$BE,$C8 ; B411 3B 82 BA B9 19 53 BE C8  ;....S..
        db   $B9,$0F,$B8,$A8,$FC,$B7,$17,$7B ; B419 B9 0F B8 A8 FC B7 17 7B  .......{
        db   $A7,$C3,$B8,$10,$77,$B6,$1D,$BA ; B421 A7 C3 B8 10 77 B6 1D BA  ....w...
        db   $18,$94,$92,$6A,$BA,$17,$D5,$A2 ; B429 18 94 92 6A BA 17 D5 A2  ...j....
        db   $87,$B9,$13,$18,$A4,$83,$B8,$0F ; B431 87 B9 13 18 A4 83 B8 0F  ........
        db   $11,$91,$00,$B9,$10,$7D,$B0,$78 ; B439 11 91 00 B9 10 7D B0 78  .....}.x
        db   $BA,$1D,$BD,$AA,$43,$B9,$18,$DF ; B441 BA 1D BD AA 43 B9 18 DF  ....C...
        db   $93,$BF,$B7,$1B,$86,$8F,$19,$B9 ; B449 93 BF B7 1B 86 8F 19 B9  ........
        db   $07,$63,$8E,$A3,$B7,$13,$34,$95 ; B451 07 63 8E A3 B7 13 34 95  .c....4.
        db   $A3,$B9,$0C,$24,$AA,$91,$B8,$0C ; B459 A3 B9 0C 24 AA 91 B8 0C  ...$....
        db   $AF,$8D,$F0,$B8,$17,$7B,$A7,$CA ; B461 AF 8D F0 B8 17 7B A7 CA  .....{..
        db   $B8,$16,$E4,$B2,$39,$BA,$22,$FE ; B469 B8 16 E4 B2 39 BA 22 FE  ....9.".
        db   $AB,$5C,$BA,$20,$19,$99,$8D,$BA ; B471 AB 5C BA 20 19 99 8D BA  .\. ....
        db   $1F,$4F,$96,$15,$B8,$25,$E1,$BD ; B479 1F 4F 96 15 B8 25 E1 BD  .O...%..
        db   $A2,$BA,$13,$3B,$82,$C1,$B9,$19 ; B481 A2 BA 13 3B 82 C1 B9 19  ...;....
        db   $98,$92,$5B,$B8,$25,$06,$8A,$B7 ; B489 98 92 5B B8 25 06 8A B7  ..[.%...
        db   $BA,$0C,$7F,$A9,$70,$B8,$19,$53 ; B491 BA 0C 7F A9 70 B8 19 53  ....p..S
        db   $BE,$CF,$B9,$1A,$4F,$83,$E4,$B9 ; B499 BE CF B9 1A 4F 83 E4 B9  ....O...
        db   $13,$18,$A4,$8A,$B8,$28,$2F,$AC ; B4A1 13 18 A4 8A B8 28 2F AC  .....(/.
        db   $47,$BA,$1B,$8D,$9E,$9F,$B8,$17 ; B4A9 47 BA 1B 8D 9E 9F B8 17  G.......
        db   $D5,$A2,$8E,$B9,$1B,$5C,$B7,$D5 ; B4B1 D5 A2 8E B9 1B 5C B7 D5  .....\..
        db   $BA,$10,$7D,$B0,$7F,$BA,$1D,$BD ; B4B9 BA 10 7D B0 7F BA 1D BD  ..}.....
        db   $AA,$4A,$B9,$21,$08,$88,$27,$B9 ; B4C1 AA 4A B9 21 08 88 27 B9  .J.!..'.
        db   $16,$E9,$B4,$D1,$B8,$13,$F1,$86 ; B4C9 16 E9 B4 D1 B8 13 F1 86  ........
        db   $E3,$B7,$1B,$86,$8F,$20,$B9,$0F ; B4D1 E3 B7 1B 86 8F 20 B9 0F  ..... ..
        db   $35,$9D,$DB,$B7,$25,$3C,$97,$EA ; B4D9 35 9D DB B7 25 3C 97 EA  5...%<..
        db   $BA,$20,$19,$99,$94,$BA,$1F,$4F ; B4E1 BA 20 19 99 94 BA 1F 4F  . .....O
        db   $96,$1C,$B8,$19,$53,$BE,$D6,$B9 ; B4E9 96 1C B8 19 53 BE D6 B9  ....S...
        db   $22,$FE,$AB,$63,$BA,$19,$98,$92 ; B4F1 22 FE AB 63 BA 19 98 92  "..c....
        db   $62,$B8,$18,$94,$92,$71,$BA,$25 ; B4F9 62 B8 18 94 92 71 BA 25  b....q.%
        db   $E1,$BD,$B0,$BA,$25,$06,$8A,$C1 ; B501 E1 BD B0 BA 25 06 8A C1  ....%...
        db   $BA,$15,$94,$AD,$EB,$B9,$16,$E9 ; B509 BA 15 94 AD EB B9 16 E9  ........
        db   $B4,$D8,$B8,$15,$ED,$B3,$FF,$BA ; B511 B4 D8 B8 15 ED B3 FF BA  ........
        db   $10,$7D,$B0,$86,$BA,$0C,$24,$AA ; B519 10 7D B0 86 BA 0C 24 AA  .}....$.
        db   $98,$B8,$15,$9D,$84,$00,$BA,$1E ; B521 98 B8 15 9D 84 00 BA 1E  ........
        db   $11,$91,$04,$B9,$15,$5E,$9A,$51 ; B529 11 91 04 B9 15 5E 9A 51  .....^.Q
        db   $B9,$04,$00,$80,$7F,$B7,$06,$9E ; B531 B9 04 00 80 7F B7 06 9E  ........
        db   $81,$AE,$B9,$21,$08,$88,$2E,$B9 ; B539 81 AE B9 21 08 88 2E B9  ...!....
        db   $1A,$4F,$83,$07,$BA,$0C,$AF,$8D ; B541 1A 4F 83 07 BA 0C AF 8D  .O......
        db   $F4,$B8,$28,$2F,$AC,$4E,$BA,$0C ; B549 F4 B8 28 2F AC 4E BA 0C  ..(/.N..
        db   $7F,$A9,$74,$B8,$1A,$00,$80,$14 ; B551 7F A9 74 B8 1A 00 80 14  ..t.....
        db   $BB,$32,$E0,$97,$79,$B9,$1B,$5C ; B559 BB 32 E0 97 79 B9 1B 5C  .2..y..\
        db   $B7,$DC,$BA,$18,$DF,$93,$C6,$B7 ; B561 B7 DC BA 18 DF 93 C6 B7  ........
        db   $3E,$B3,$A3,$29,$BB,$06,$EB,$81 ; B569 3E B3 A3 29 BB 06 EB 81  >..)....
        db   $12,$BA,$25,$3C,$97,$F1,$BA,$25 ; B571 12 BA 25 3C 97 F1 BA 25  ..%<...%
        db   $E1,$BD,$A9,$BA,$1D,$C8,$83,$47 ; B579 E1 BD A9 BA 1D C8 83 47  .......G
        db   $BB,$41,$A7,$9A,$5C,$BB,$16,$E9 ; B581 BB 41 A7 9A 5C BB 16 E9  .A..\...
        db   $B4,$DF,$B8,$25,$06,$8A,$CB,$BA ; B589 B4 DF B8 25 06 8A CB BA  ...%....
        db   $13,$F1,$86,$EA,$B7,$47,$79,$8D ; B591 13 F1 86 EA B7 47 79 8D  .....Gy.
        db   $7B,$BB,$2D,$57,$A1,$8F,$BB,$21 ; B599 7B BB 2D 57 A1 8F BB 21  {.-W...!
        db   $08,$88,$35,$B9,$15,$5E,$9A,$5B ; B5A1 08 88 35 B9 15 5E 9A 5B  ..5..^.[
        db   $B9,$15,$ED,$B3,$06,$BB,$2B,$01 ; B5A9 B9 15 ED B3 06 BB 2B 01  ......+.
        db   $A5,$AA,$B7,$18,$B2,$9B,$0B,$B9 ; B5B1 A5 AA B7 18 B2 9B 0B B9  ........
        db   $15,$94,$AD,$F2,$B9,$1A,$00,$80 ; B5B9 15 94 AD F2 B9 1A 00 80  ........
        db   $1B,$BB,$21,$C9,$9D,$9B,$BB,$1F ; B5C1 1B BB 21 C9 9D 9B BB 1F  ..!.....
        db   $4F,$96,$23,$B8,$3E,$B3,$A3,$33 ; B5C9 4F 96 23 B8 3E B3 A3 33  O.#.>..3
        db   $BB,$24,$1A,$88,$B0,$BB,$32,$E0 ; B5D1 BB 24 1A 88 B0 BB 32 E0  .$....2.
        db   $97,$80,$B9,$12,$D4,$85,$31,$B8 ; B5D9 97 80 B9 12 D4 85 31 B8  ......1.
        db   $19,$25,$91,$3F,$B8,$47,$BA,$89 ; B5E1 19 25 91 3F B8 47 BA 89  .%.?.G..
        db   $87,$B7,$14,$CF,$9F,$00,$B8,$0E ; B5E9 87 B7 14 CF 9F 00 B8 0E  ........
        db   $D6,$8E,$B8,$B8,$2B,$01,$A5,$B1 ; B5F1 D6 8E B8 B8 2B 01 A5 B1  ....+...
        db   $B7,$2B,$24,$AE,$BE,$BB,$41,$BA ; B5F9 B7 2B 24 AE BE BB 41 BA  .+$...A.
        db   $93,$D3,$BB,$1B,$8D,$9E,$A6,$B8 ; B601 93 D3 BB 1B 8D 9E A6 B8  ........
        db   $41,$A7,$9A,$63,$BB,$33,$64,$85 ; B609 41 A7 9A 63 BB 33 64 85  A..c.3d.
        db   $F3,$BB,$1A,$00,$80,$22,$BB,$47 ; B611 F3 BB 1A 00 80 22 BB 47  .....".G
        db   $79,$8D,$71,$BB,$21,$C9,$9D,$A2 ; B619 79 8D 71 BB 21 C9 9D A2  y.q.!...
        db   $BB,$18,$B2,$9B,$12,$B9,$0F,$35 ; B621 BB 18 B2 9B 12 B9 0F 35  .......5
        db   $9D,$DF,$B7,$15,$5E,$9A,$65,$B9 ; B629 9D DF B7 15 5E 9A 65 B9  ....^.e.
        db   $19,$25,$91,$46,$B8,$13,$F1,$86 ; B631 19 25 91 46 B8 13 F1 86  .%.F....
        db   $F1,$B7,$1D,$C8,$83,$4E,$BB,$3E ; B639 F1 B7 1D C8 83 4E BB 3E  .....N.>
        db   $B3,$A3,$3D,$BB,$12,$D4,$85,$38 ; B641 B3 A3 3D BB 12 D4 85 38  ..=....8
        db   $B8,$18,$DF,$93,$CD,$B7,$39,$CF ; B649 B8 18 DF 93 CD B7 39 CF  ......9.
        db   $B8,$08,$BC,$2B,$24,$AE,$C5,$BB ; B651 B8 08 BC 2B 24 AE C5 BB  ...+$...
        db   $33,$64,$85,$FA,$BB,$41,$BA,$93 ; B659 33 64 85 FA BB 41 BA 93  3d...A..
        db   $E3,$BB,$41,$A7,$9A,$6A,$BB,$47 ; B661 E3 BB 41 A7 9A 6A BB 47  ..A..j.G
        db   $BA,$89,$8E,$B7,$19,$25,$91,$4D ; B669 BA 89 8E B7 19 25 91 4D  .....%.M
        db   $B8,$2B,$01,$A5,$B8,$B7,$24,$1A ; B671 B8 2B 01 A5 B8 B7 24 1A  .+....$.
        db   $88,$B7,$BB,$6E,$BC,$A6,$22,$BC ; B679 88 B7 BB 6E BC A6 22 BC  ...n..".
        db   $33,$64,$85,$01,$BC,$47,$79,$8D ; B681 33 64 85 01 BC 47 79 8D  3d...Gy.
        db   $85,$BB,$39,$CF,$B8,$15,$BC,$2B ; B689 85 BB 39 CF B8 15 BC 2B  ..9....+
        db   $24,$AE,$CC,$BB,$06,$9E,$81,$B2 ; B691 24 AE CC BB 06 9E 81 B2  $.......
        db   $B9,$10,$77,$B6,$24,$BA,$1C,$64 ; B699 B9 10 77 B6 24 BA 1C 64  ..w.$..d
        db   $82,$52,$BC,$20,$19,$99,$9B,$BA ; B6A1 82 52 BC 20 19 99 9B BA  .R. ....
        db   $1F,$D1,$9F,$67,$BC,$22,$C9,$8B ; B6A9 1F D1 9F 67 BC 22 C9 8B  ...g."..
        db   $7C,$BC,$17,$D5,$A2,$95,$B9,$14 ; B6B1 7C BC 17 D5 A2 95 B9 14  |.......
        db   $CF,$9F,$07,$B8,$1C,$64,$82,$59 ; B6B9 CF 9F 07 B8 1C 64 82 59  .....d.Y
        db   $BC,$2D,$57,$A1,$93,$BB,$1A,$6C ; B6C1 BC 2D 57 A1 93 BB 1A 6C  .-W....l
        db   $B1,$8A,$BC,$1D,$C8,$83,$55,$BB ; B6C9 B1 8A BC 1D C8 83 55 BB  ......U.
        db   $1F,$D1,$9F,$6E,$BC,$1B,$5C,$B7 ; B6D1 1F D1 9F 6E BC 1B 5C B7  ...n..\.
        db   $E3,$BA,$1B,$8D,$9E,$AD,$B8,$22 ; B6D9 E3 BA 1B 8D 9E AD B8 22  ......."
        db   $C9,$8B,$83,$BC,$1C,$64,$82,$60 ; B6E1 C9 8B 83 BC 1C 64 82 60  .....d.`
        db   $BC,$14,$CF,$9F,$0E,$B8,$1F,$D1 ; B6E9 BC 14 CF 9F 0E B8 1F D1  ........
        db   $9F,$75,$BC,$2D,$57,$A1,$97,$BB ; B6F1 9F 75 BC 2D 57 A1 97 BB  .u.-W...
        db   $1A,$6C,$B1,$91,$BC,$04,$00,$80 ; B6F9 1A 6C B1 91 BC 04 00 80  .l......
        db   $7B,$B7,$18,$E9,$B4,$E6,$B8,$21 ; B701 7B B7 18 E9 B4 E6 B8 21  {......!
        db   $C9,$9D,$A9,$BB,$6E,$BC,$A6,$32 ; B709 C9 9D A9 BB 6E BC A6 32  ....n..2
        db   $BC,$27,$0E,$A1,$98,$BC,$A1,$A3 ; B711 BC 27 0E A1 98 BC A1 A3  .'......
        db   $AE,$9F,$BC,$23,$37,$BC,$B9,$BC ; B719 AE 9F BC 23 37 BC B9 BC  ...#7...
        db   $2D,$3B,$80,$D3,$BC,$2B,$2A,$BD ; B721 2D 3B 80 D3 BC 2B 2A BD  -;...+*.
        db   $F3,$BC,$19,$53,$BE,$DD,$B9,$1F ; B729 F3 BC 19 53 BE DD B9 1F  ...S....
        db   $4F,$96,$2A,$B8,$15,$5E,$9A,$6F ; B731 4F 96 2A B8 15 5E 9A 6F  O.*..^.o
        db   $B9,$6E,$BC,$A6,$22,$BC,$04,$00 ; B739 B9 6E BC A6 22 BC 04 00  .n.."...
        db   $80,$83,$B7,$0C,$7F,$A9,$78,$B8 ; B741 80 83 B7 0C 7F A9 78 B8  ......x.
        db   $15,$94,$AD,$F9,$B9,$0C,$AF,$8D ; B749 15 94 AD F9 B9 0C AF 8D  ........
        db   $F8,$B8,$15,$ED,$B3,$0D,$BB,$06 ; B751 F8 B8 15 ED B3 0D BB 06  ........
        db   $9E,$81,$B6,$B9,$35,$A3,$AE,$AC ; B759 9E 81 B6 B9 35 A3 AE AC  ....5...
        db   $BC,$2D,$3B,$80,$E3,$BC,$25,$3C ; B761 BC 2D 3B 80 E3 BC 25 3C  .-;...%<
        db   $97,$F8,$BA,$19,$98,$92,$69,$B8 ; B769 97 F8 BA 19 98 92 69 B8  ......i.
        db   $19,$53,$BE,$DD,$B9,$23,$37,$BC ; B771 19 53 BE DD B9 23 37 BC  .S...#7.
        db   $C6,$BC                         ; B779 C6 BC                    ..
Bank14_CompressedGraphicsStreams:
        db   $10,$30,$15,$1C,$10,$30,$0F,$00 ; B77B 10 30 15 1C 10 30 0F 00  .0...0..
        db   $10,$30,$12,$16,$11,$27,$13,$17 ; B783 10 30 12 16 11 27 13 17  .0...'..
        db   $31,$2C,$1C,$11,$37,$15,$17,$30 ; B78B 31 2C 1C 11 37 15 17 30  1,..7..0
        db   $10,$23,$11,$30,$11,$11,$11,$26 ; B793 10 23 11 30 11 11 11 26  .#.0...&
        db   $17,$11,$30,$19,$12,$15,$23,$1C ; B79B 17 11 30 19 12 15 23 1C  ..0...#.
        db   $11,$30,$15,$1C,$13,$10,$00,$11 ; B7A3 11 30 15 1C 13 10 00 11  .0......
        db   $15,$26,$0F,$38,$18,$10,$11,$24 ; B7AB 15 26 0F 38 18 10 11 24  .&.8...$
        db   $30,$0F,$30,$10,$28,$11,$14,$37 ; B7B3 30 0F 30 10 28 11 14 37  0.0.(..7
        db   $0F,$3A,$2B,$2C,$11,$14,$26,$0F ; B7BB 0F 3A 2B 2C 11 14 26 0F  .:+,..&.
        db   $18,$10,$00,$11,$15,$37,$0F,$30 ; B7C3 18 10 00 11 15 37 0F 30  .....7.0
        db   $24,$00,$11,$13,$2A,$0F,$37,$26 ; B7CB 24 00 11 13 2A 0F 37 26  $...*.7&
        db   $16,$11,$0F,$26,$0F,$38,$26,$02 ; B7D3 16 11 0F 26 0F 38 26 02  ...&.8&.
        db   $10,$15,$2C,$02,$10,$1C,$39,$13 ; B7DB 10 15 2C 02 10 1C 39 13  ..,...9.
        db   $11,$15,$22,$05,$30,$26,$2A,$11 ; B7E3 11 15 22 05 30 26 2A 11  ..".0&*.
        db   $1A,$16,$0A,$30,$22,$2C,$11,$26 ; B7EB 1A 16 0A 30 22 2C 11 26  ...0",.&
        db   $00,$16,$37,$14,$24,$10,$30,$14 ; B7F3 00 16 37 14 24 10 30 14  ..7.$.0.
        db   $00,$10,$3A,$00,$1C,$11,$26,$1C ; B7FB 00 10 3A 00 1C 11 26 1C  ..:...&.
        db   $36,$10,$00,$18,$11,$30,$10,$25 ; B803 36 10 00 18 11 30 10 25  6....0.%
        db   $23,$13,$16,$11,$30,$16,$37,$2B ; B80B 23 13 16 11 30 16 37 2B  #...0.7+
        db   $1B,$1C,$11,$26,$29,$2B,$30,$27 ; B813 1B 1C 11 26 29 2B 30 27  ...&)+0'
        db   $11,$11,$10,$25,$27,$3C,$2C,$00 ; B81B 11 11 10 25 27 3C 2C 00  ...%'<,.
        db   $11,$27,$22,$23,$37,$25,$14,$11 ; B823 11 27 22 23 37 25 14 11  .'"#7%..
        db   $24,$28,$37,$31,$2B,$13,$11,$27 ; B82B 24 28 37 31 2B 13 11 27  $(71+..'
        db   $0F,$0F,$30,$1A,$15,$11,$1C,$0F ; B833 0F 0F 30 1A 15 11 1C 0F  ..0.....
        db   $0F,$30,$38,$18,$11,$14,$2A,$25 ; B83B 0F 30 38 18 11 14 2A 25  .08...*%
        db   $30,$2C,$10,$11,$15,$23,$24,$30 ; B843 30 2C 10 11 15 23 24 30  0,...#$0
        db   $29,$37,$11,$2C,$13,$23,$30,$10 ; B84B 29 37 11 2C 13 23 30 10  )7.,.#0.
        db   $3C,$11,$15,$30,$1A,$31,$13,$26 ; B853 3C 11 15 30 1A 31 13 26  <..0.1.&
        db   $11,$11,$37,$2C,$30,$26,$2C,$11 ; B85B 11 11 37 2C 30 26 2C 11  ..7,0&,.
        db   $14,$35,$25,$2A,$18,$23,$11,$00 ; B863 14 35 25 2A 18 23 11 00  .5%*.#..
        db   $3A,$15,$2C,$12,$10,$10,$30,$27 ; B86B 3A 15 2C 12 10 10 30 27  :.,...0'
        db   $23,$10,$30,$26,$15,$10,$30,$2C ; B873 23 10 30 26 15 10 30 2C  #.0&..0,
        db   $1B,$11,$30,$36,$0F,$10,$24,$00 ; B87B 1B 11 30 36 0F 10 24 00  ..06..$.
        db   $11,$30,$25,$0F,$31,$1C,$21,$11 ; B883 11 30 25 0F 31 1C 21 11  .0%.1.!.
        db   $30,$2A,$0F,$37,$26,$17,$11,$17 ; B88B 30 2A 0F 37 26 17 11 17  0*.7&...
        db   $06,$0F,$30,$2C,$1C,$11,$2C,$1C ; B893 06 0F 30 2C 1C 11 2C 1C  ..0,..,.
        db   $0F,$37,$15,$05,$11,$30,$15,$25 ; B89B 0F 37 15 05 11 30 15 25  .7...0.%
        db   $30,$21,$11,$11,$30,$12,$2B,$25 ; B8A3 30 21 11 11 30 12 2B 25  0!..0.+%
        db   $26,$16,$11,$30,$14,$23,$2C,$2A ; B8AB 26 16 11 30 14 23 2C 2A  &..0.#,*
        db   $1A,$10,$30,$29,$16,$10,$3C,$11 ; B8B3 1A 10 30 29 16 10 3C 11  ..0)..<.
        db   $23,$11,$30,$0F,$0F,$36,$27,$17 ; B8BB 23 11 30 0F 0F 36 27 17  #.0..6'.
        db   $11,$30,$0F,$0F,$26,$30,$00,$11 ; B8C3 11 30 0F 0F 26 30 00 11  .0..&0..
        db   $30,$0F,$0F,$37,$2B,$1C,$11,$10 ; B8CB 30 0F 0F 37 2B 1C 11 10  0..7+...
        db   $0F,$0F,$37,$28,$17,$11,$24,$0F ; B8D3 0F 0F 37 28 17 11 24 0F  ..7(..$.
        db   $0F,$30,$10,$18,$11,$22,$0F,$0F ; B8DB 0F 30 10 18 11 22 0F 0F  .0..."..
        db   $3C,$2C,$00,$12,$26,$0F,$0F,$33 ; B8E3 3C 2C 00 12 26 0F 0F 33  <,..&..3
        db   $0F,$14,$33,$23,$14,$10,$30,$17 ; B8EB 0F 14 33 23 14 10 30 17  ..3#..0.
        db   $07,$10,$37,$14,$04,$10,$30,$10 ; B8F3 07 10 37 14 04 10 30 10  ..7...0.
        db   $00,$10,$28,$17,$23,$10,$26,$15 ; B8FB 00 10 28 17 23 10 26 15  ..(.#.&.
        db   $21,$11,$00,$0F,$0F,$10,$00,$24 ; B903 21 11 00 0F 0F 10 00 24  !......$
        db   $11,$30,$0C,$0F,$1C,$17,$07,$11 ; B90B 11 30 0C 0F 1C 17 07 11  .0......
        db   $37,$04,$0F,$14,$1C,$0C,$11,$30 ; B913 37 04 0F 14 1C 0C 11 30  7......0
        db   $15,$25,$10,$00,$17,$11,$36,$13 ; B91B 15 25 10 00 17 11 36 13  .%....6.
        db   $23,$18,$07,$1C,$11,$37,$24,$11 ; B923 23 18 07 1C 11 37 24 11  #....7$.
        db   $21,$2B,$30,$11,$30,$17,$19,$29 ; B92B 21 2B 30 11 30 17 19 29  !+0.0..)
        db   $15,$12,$11,$30,$14,$17,$27,$10 ; B933 15 12 11 30 14 17 27 10  ...0..'.
        db   $3A,$11,$24,$21,$15,$28,$1B,$2A ; B93B 3A 11 24 21 15 28 1B 2A  :.$!.(.*
        db   $11,$27,$10,$11,$2A,$1C,$21,$11 ; B943 11 27 10 11 2A 1C 21 11  .'..*.!.
        db   $30,$27,$1A,$2C,$15,$26,$12,$30 ; B94B 30 27 1A 2C 15 26 12 30  0'.,.&.0
        db   $35,$16,$2A,$1C,$2C,$27,$17,$10 ; B953 35 16 2A 1C 2C 27 17 10  5.*.,'..
        db   $12,$30,$26,$15,$30,$00,$10,$21 ; B95B 12 30 26 15 30 00 10 21  .0&.0..!
        db   $11,$38,$12,$30,$2A,$14,$22,$27 ; B963 11 38 12 30 2A 14 22 27  .8.0*."'
        db   $37,$25,$15,$32,$12,$30,$25,$14 ; B96B 37 25 15 32 12 30 25 14  7%.2.0%.
        db   $2B,$13,$23,$10,$00,$37,$11,$37 ; B973 2B 13 23 10 00 37 11 37  +.#..7.7
        db   $15,$0F,$30,$1C,$26,$11,$26,$11 ; B97B 15 0F 30 1C 26 11 26 11  ..0.&.&.
        db   $0F,$30,$1B,$2C,$11,$30,$10,$00 ; B983 0F 30 1B 2C 11 30 10 00  .0.,.0..
        db   $30,$16,$27,$11,$3C,$2C,$0C,$37 ; B98B 30 16 27 11 3C 2C 0C 37  0.'.<,.7
        db   $00,$10,$11,$36,$26,$06,$30,$1A ; B993 00 10 11 36 26 06 30 1A  ...6&.0.
        db   $2A,$11,$30,$15,$1A,$17,$07,$37 ; B99B 2A 11 30 15 1A 17 07 37  *.0....7
        db   $11,$38,$15,$12,$1B,$0B,$3A,$10 ; B9A3 11 38 15 12 1B 0B 3A 10  .8....:.
        db   $11,$27,$30,$10,$15,$2B,$30,$10 ; B9AB 11 27 30 10 15 2B 30 10  .'0..+0.
        db   $30,$2C,$10,$10,$18,$23,$30,$11 ; B9B3 30 2C 10 10 18 23 30 11  0,...#0.
        db   $0F,$36,$0F,$38,$18,$16,$11,$0F ; B9BB 0F 36 0F 38 18 16 11 0F  .6.8....
        db   $26,$0F,$3B,$2B,$13,$11,$15,$0F ; B9C3 26 0F 3B 2B 13 11 15 0F  &.;+....
        db   $0F,$30,$26,$11,$11,$22,$0F,$0F ; B9CB 0F 30 26 11 11 22 0F 0F  .0&.."..
        db   $10,$37,$00,$11,$2B,$0F,$0F,$26 ; B9D3 10 37 00 11 2B 0F 0F 26  .7..+..&
        db   $30,$15,$11,$18,$0F,$0F,$2A,$39 ; B9DB 30 15 11 18 0F 0F 2A 39  0.....*9
        db   $1B,$11,$01,$15,$26,$30,$1C,$17 ; B9E3 1B 11 01 15 26 30 1C 17  ....&0..
        db   $11,$0F,$15,$0F,$30,$13,$26,$11 ; B9EB 11 0F 15 0F 30 13 26 11  ....0.&.
        db   $0F,$21,$0F,$37,$1B,$00,$11,$0F ; B9F3 0F 21 0F 37 1B 00 11 0F  .!.7....
        db   $26,$0F,$3A,$2C,$14,$11,$30,$15 ; B9FB 26 0F 3A 2C 14 11 30 15  &.:,..0.
        db   $0F,$1C,$0C,$03,$11,$08,$23,$30 ; BA03 0F 1C 0C 03 11 08 23 30  ......#0
        db   $31,$10,$0C,$10,$30,$29,$1A,$10 ; BA0B 31 10 0C 10 30 29 1A 10  1...0)..
        db   $30,$10,$00,$11,$16,$24,$0F,$30 ; BA13 30 10 00 11 16 24 0F 30  0....$.0
        db   $24,$14,$11,$12,$27,$0F,$38,$27 ; BA1B 24 14 11 12 27 0F 38 27  $...'.8'
        db   $17,$11,$25,$2C,$0F,$3C,$2C,$0C ; BA23 17 11 25 2C 0F 3C 2C 0C  ..%,.<,.
        db   $11,$30,$29,$37,$18,$27,$00,$11 ; BA2B 11 30 29 37 18 27 00 11  .0)7.'..
        db   $30,$23,$37,$1B,$2C,$1C,$11,$30 ; BA33 30 23 37 1B 2C 1C 11 30  0#7.,..0
        db   $23,$37,$26,$2A,$17,$11,$13,$27 ; BA3B 23 37 26 2A 17 11 13 27  #7&*...'
        db   $10,$30,$17,$15,$11,$1C,$2B,$25 ; BA43 10 30 17 15 11 1C 2B 25  .0....+%
        db   $33,$14,$23,$11,$15,$26,$2C,$3C ; BA4B 33 14 23 11 15 26 2C 3C  3.#..&,<
        db   $1B,$00,$11,$16,$14,$30,$36,$27 ; BA53 1B 00 11 16 14 30 36 27  .....06'
        db   $17,$11,$13,$15,$36,$30,$27,$00 ; BA5B 17 11 13 15 36 30 27 00  ....60'.
        db   $11,$14,$1B,$37,$2C,$27,$2A,$11 ; BA63 11 14 1B 37 2C 27 2A 11  ...7,'*.
        db   $15,$11,$01,$30,$17,$27,$11,$25 ; BA6B 15 11 01 30 17 27 11 25  ...0.'.%
        db   $14,$04,$30,$1C,$2C,$20,$30,$29 ; BA73 14 04 30 1C 2C 20 30 29  ..0., 0)
        db   $1A,$16,$29,$1A,$20,$39,$10,$00 ; BA7B 1A 16 29 1A 20 39 10 00  ..). 9..
        db   $1C,$10,$00,$20,$23,$26,$1B,$15 ; BA83 1C 10 00 20 23 26 1B 15  ... #&..
        db   $26,$1B,$11,$27,$30,$0F,$10,$18 ; BA8B 26 1B 11 27 30 0F 10 18  &..'0...
        db   $13,$11,$23,$30,$0F,$26,$15,$1B ; BA93 13 11 23 30 0F 26 15 1B  ..#0.&..
        db   $11,$2C,$30,$0F,$30,$29,$17,$11 ; BA9B 11 2C 30 0F 30 29 17 11  .,0.0)..
        db   $15,$17,$0F,$37,$19,$2A,$11,$1C ; BAA3 15 17 0F 37 19 2A 11 1C  ...7.*..
        db   $13,$0F,$33,$14,$24,$11,$01,$11 ; BAAB 13 0F 33 14 24 11 01 11  ..3.$...
        db   $0F,$30,$16,$27,$12,$30,$37,$26 ; BAB3 0F 30 16 27 12 30 37 26  .0.'.07&
        db   $30,$37,$21,$00,$18,$07,$12,$30 ; BABB 30 37 21 00 18 07 12 30  07!....0
        db   $26,$15,$30,$26,$29,$1B,$1C,$0B ; BAC3 26 15 30 26 29 1B 1C 0B  &.0&)...
        db   $12,$30,$27,$16,$30,$27,$1B,$13 ; BACB 12 30 27 16 30 27 1B 13  .0'.0'..
        db   $37,$18,$11,$26,$15,$0F,$30,$00 ; BAD3 37 18 11 26 15 0F 30 00  7..&..0.
        db   $27,$11,$27,$13,$0F,$2C,$1C,$2A ; BADB 27 11 27 13 0F 2C 1C 2A  '.'..,.*
        db   $11,$37,$00,$0F,$24,$14,$2C,$11 ; BAE3 11 37 00 0F 24 14 2C 11  .7..$.,.
        db   $15,$35,$26,$30,$27,$17,$11,$16 ; BAEB 15 35 26 30 27 17 11 16  .5&0'...
        db   $26,$1B,$3C,$2B,$1C,$11,$11,$27 ; BAF3 26 1B 3C 2B 1C 11 11 27  &.<+...'
        db   $04,$33,$14,$05,$11,$37,$15,$13 ; BAFB 04 33 14 05 11 37 15 13  .3...7..
        db   $30,$00,$27,$11,$30,$1A,$11,$26 ; BB03 30 00 27 11 30 1A 11 26  0.'.0..&
        db   $15,$10,$11,$39,$15,$16,$3B,$1C ; BB0B 15 10 11 39 15 16 3B 1C  ...9..;.
        db   $24,$11,$12,$16,$13,$30,$38,$17 ; BB13 24 11 12 16 13 30 38 17  $....08.
        db   $11,$1B,$2C,$17,$31,$34,$14,$11 ; BB1B 11 1B 2C 17 31 34 14 11  ..,.14..
        db   $18,$27,$1B,$38,$10,$00,$12,$37 ; BB23 18 27 1B 38 10 00 12 37  .'.8...7
        db   $13,$1A,$37,$1C,$0F,$30,$10,$11 ; BB2B 13 1A 37 1C 0F 30 10 11  ..7..0..
        db   $12,$37,$13,$16,$37,$00,$0F,$30 ; BB33 12 37 13 16 37 00 0F 30  .7..7..0
        db   $2C,$15,$12,$25,$00,$1C,$25,$15 ; BB3B 2C 15 12 25 00 1C 25 15  ,..%..%.
        db   $0F,$30,$2B,$14,$11,$13,$36,$10 ; BB43 0F 30 2B 14 11 13 36 10  .0+...6.
        db   $30,$15,$1A,$11,$15,$36,$18,$3C ; BB4B 30 15 1A 11 15 36 18 3C  0....6.<
        db   $1B,$12,$11,$1C,$30,$10,$37,$13 ; BB53 1B 12 11 1C 30 10 37 13  ....0.7.
        db   $15,$11,$17,$1C,$0F,$30,$1B,$10 ; BB5B 15 11 17 1C 0F 30 1B 10  .....0..
        db   $11,$11,$00,$0F,$30,$23,$29,$11 ; BB63 11 11 00 0F 30 23 29 11  ....0#).
        db   $1B,$13,$0F,$30,$15,$26,$12,$04 ; BB6B 1B 13 0F 30 15 26 12 04  ...0.&..
        db   $15,$19,$03,$1B,$19,$3B,$06,$17 ; BB73 15 19 03 1B 19 3B 06 17  .....;..
        db   $12,$16,$27,$15,$00,$10,$15,$30 ; BB7B 12 16 27 15 00 10 15 30  ..'....0
        db   $01,$11,$12,$1A,$2B,$26,$1C,$12 ; BB83 01 11 12 1A 2B 26 1C 12  ....+&..
        db   $26,$32,$05,$15,$10,$30,$2C,$1C ; BB8B 26 32 05 15 10 30 2C 1C  &2...0,.
        db   $10,$30,$10,$00,$10,$30,$37,$26 ; BB93 10 30 10 00 10 30 37 26  .0...07&
        db   $11,$30,$15,$0F,$37,$27,$11,$11 ; BB9B 11 30 15 0F 37 27 11 11  .0..7'..
        db   $31,$13,$0F,$10,$00,$15,$11,$30 ; BBA3 31 13 0F 10 00 15 11 30  1......0
        db   $14,$0F,$2C,$1C,$00,$11,$14,$2B ; BBAB 14 0F 2C 1C 00 11 14 2B  ..,....+
        db   $13,$30,$27,$16,$11,$15,$27,$16 ; BBB3 13 30 27 16 11 15 27 16  .0'...'.
        db   $30,$23,$13,$11,$30,$15,$18,$37 ; BBBB 30 23 13 11 30 15 18 37  0#..0..7
        db   $17,$1C,$11,$30,$11,$06,$15,$17 ; BBC3 17 1C 11 30 11 06 15 17  ...0....
        db   $10,$11,$37,$14,$0C,$2C,$23,$26 ; BBCB 10 11 37 14 0C 2C 23 26  ..7..,#&
        db   $23,$10,$00,$0F,$27,$0A,$17,$30 ; BBD3 23 10 00 0F 27 0A 17 30  #...'..0
        db   $26,$0F,$10,$00,$0F,$30,$2A,$11 ; BBDB 26 0F 10 00 0F 30 2A 11  &....0*.
        db   $23,$1C,$0C,$0F,$27,$03,$10,$30 ; BBE3 23 1C 0C 0F 27 03 10 30  #...'..0
        db   $26,$0F,$1C,$0C,$0F,$30,$23,$00 ; BBEB 26 0F 1C 0C 0F 30 23 00  &....0#.
        db   $11,$30,$25,$09,$19,$37,$17,$11 ; BBF3 11 30 25 09 19 37 17 11  .0%..7..
        db   $30,$1B,$05,$15,$33,$13,$11,$37 ; BBFB 30 1B 05 15 33 13 11 37  0...3..7
        db   $15,$0C,$00,$3C,$1C,$13,$18,$15 ; BC03 15 0C 00 3C 1C 13 18 15  ...<....
        db   $04,$30,$1B,$0F,$28,$0F,$0F,$30 ; BC0B 04 30 1B 0F 28 0F 0F 30  .0..(..0
        db   $1B,$28,$13,$13,$19,$09,$30,$15 ; BC13 1B 28 13 13 19 09 30 15  .(....0.
        db   $0F,$23,$0F,$0F,$30,$15,$23,$14 ; BC1B 0F 23 0F 0F 30 15 23 14  .#..0.#.
        db   $30,$2C,$15,$30,$2C,$1C,$30,$37 ; BC23 30 2C 15 30 2C 1C 30 37  0,.0,.07
        db   $26,$1C,$2C,$15,$17,$22,$02,$14 ; BC2B 26 1C 2C 15 17 22 02 14  &.,.."..
        db   $38,$26,$2C,$38,$26,$16,$38,$30 ; BC33 38 26 2C 38 26 16 38 30  8&,8&.80
        db   $10,$16,$26,$2C,$00,$15,$05,$14 ; BC3B 10 16 26 2C 00 15 05 14  ..&,....
        db   $38,$26,$2C,$38,$26,$16,$38,$30 ; BC43 38 26 2C 38 26 16 38 30  8&,8&.80
        db   $10,$16,$26,$2C,$00,$15,$05,$11 ; BC4B 10 16 26 2C 00 15 05 11  ..&,....
        db   $30,$24,$05,$17,$07,$1C,$11,$30 ; BC53 30 24 05 17 07 1C 11 30  0$.....0
        db   $2B,$0B,$23,$13,$27,$11,$30,$22 ; BC5B 2B 0B 23 13 27 11 30 22  +.#.'.0"
        db   $03,$15,$05,$1C,$11,$37,$0C,$26 ; BC63 03 15 05 1C 11 37 0C 26  .....7.&
        db   $30,$21,$1C,$11,$30,$08,$10,$3A ; BC6B 30 21 1C 11 30 08 10 3A  0!..0..:
        db   $2B,$18,$11,$31,$05,$34,$37,$26 ; BC73 2B 18 11 31 05 34 37 26  +..1.47&
        db   $15,$11,$30,$10,$15,$01,$1C,$38 ; BC7B 15 11 30 10 15 01 1C 38  ..0....8
        db   $11,$30,$10,$1C,$05,$16,$3C,$11 ; BC83 11 30 10 1C 05 16 3C 11  .0....<.
        db   $34,$15,$0F,$37,$27,$17,$11,$37 ; BC8B 34 15 0F 37 27 17 11 37  4..7'..7
        db   $12,$0F,$30,$21,$11,$11,$16,$17 ; BC93 12 0F 30 21 11 11 16 17  ..0!....
        db   $01,$30,$00,$27,$13,$0F,$0F,$11 ; BC9B 01 30 00 27 13 0F 0F 11  .0.'....
        db   $0F,$27,$17,$30,$27,$17,$30,$27 ; BCA3 0F 27 17 30 27 17 30 27  .'.0'.0'
        db   $17,$13,$0F,$0F,$15,$0F,$2C,$1C ; BCAB 17 13 0F 0F 15 0F 2C 1C  ......,.
        db   $31,$2C,$1C,$31,$2C,$1C,$13,$17 ; BCB3 31 2C 1C 31 2C 1C 13 17  1,.1,...
        db   $00,$10,$13,$2A,$0A,$11,$1C,$30 ; BCBB 00 10 13 2A 0A 11 1C 30  ...*...0
        db   $19,$37,$26,$13,$11,$07,$30,$13 ; BCC3 19 37 26 13 11 07 30 13  .7&...0.
        db   $2A,$0A,$10,$1C,$2B,$00,$28,$17 ; BCCB 2A 0A 10 1C 2B 00 28 17  *...+.(.
        db   $14,$06,$37,$26,$11,$30,$2C,$10 ; BCD3 14 06 37 26 11 30 2C 10  ..7&.0,.
        db   $00,$14,$28,$38,$18,$2B,$13,$1B ; BCDB 00 14 28 38 18 2B 13 1B  ..(8.+..
        db   $14,$03,$37,$26,$1A,$30,$27,$24 ; BCE3 14 03 37 26 1A 30 27 24  ..7&.0'$
        db   $14,$16,$0F,$0F,$0F,$25,$15,$00 ; BCEB 14 16 0F 0F 0F 25 15 00  .....%..
        db   $13,$15,$1A,$2C,$11,$10,$00,$11 ; BCF3 13 15 1A 2C 11 10 00 11  ...,....
        db   $14,$04,$30,$37,$26             ; BCFB 14 04 30 37 26           ..07&
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_BD00:
        pha                                     ; BD00 48                       H
        sta     $0E                             ; BD01 85 0E                    ..
        lda     #$00                            ; BD03 A9 00                    ..
        sta     $0F                             ; BD05 85 0F                    ..
        sta     $09                             ; BD07 85 09                    ..
        ldx     #$0E                            ; BD09 A2 0E                    ..
        lda     #$18                            ; BD0B A9 18                    ..
        sta     $24                             ; BD0D 85 24                    .$
        jsr     MultiplyPointerWord             ; BD0F 20 27 C8                  '.
        ldx     #$00                            ; BD12 A2 00                    ..
        ldy     #$16                            ; BD14 A0 16                    ..
        jsr     BattleTurnEngine_Entry_BE19     ; BD16 20 19 BE                  ..
        ldx     #$06                            ; BD19 A2 06                    ..
        iny                                     ; BD1B C8                       .
        jsr     BattleTurnEngine_Entry_BE19     ; BD1C 20 19 BE                  ..
        ldy     #$1A                            ; BD1F A0 1A                    ..
        pla                                     ; BD21 68                       h
        cmp     #$08                            ; BD22 C9 08                    ..
        bne     BattleTurnEngine_Branch_BD29    ; BD24 D0 03                    ..
        iny                                     ; BD26 C8                       .
        iny                                     ; BD27 C8                       .
        iny                                     ; BD28 C8                       .
BattleTurnEngine_Branch_BD29:
        ldx     #$0A                            ; BD29 A2 0A                    ..
        jsr     BattleTurnEngine_Entry_BE19     ; BD2B 20 19 BE                  ..
        lda     $00                           ; BD2E A5 00                    ..
        clc                                     ; BD30 18                       .
        adc     #$0C                            ; BD31 69 0C                    i.
        bcc     BattleTurnEngine_Branch_BD37    ; BD33 90 02                    ..
        inc     $01                             ; BD35 E6 01                    ..
BattleTurnEngine_Branch_BD37:
        adc     $0E                             ; BD37 65 0E                    e.
        sta     $00                           ; BD39 85 00                    ..
        lda     $01                             ; BD3B A5 01                    ..
        adc     $0F                             ; BD3D 65 0F                    e.
        sta     $01                             ; BD3F 85 01                    ..
        ldx     #$00                            ; BD41 A2 00                    ..
        ldy     #$00                            ; BD43 A0 00                    ..
        lda     #$08                            ; BD45 A9 08                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; BD47 20 EA C3                  ..
        sta     $02                             ; BD4A 85 02                    ..
        ldx     #$00                            ; BD4C A2 00                    ..
        iny                                     ; BD4E C8                       .
        lda     #$08                            ; BD4F A9 08                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; BD51 20 EA C3                  ..
        sta     $0F                             ; BD54 85 0F                    ..
        pha                                     ; BD56 48                       H
        ldx     #$0D                            ; BD57 A2 0D                    ..
        and     #$04                            ; BD59 29 04                    ).
        beq     BattleTurnEngine_Branch_BD5E    ; BD5B F0 01                    ..
        inx                                     ; BD5D E8                       .
BattleTurnEngine_Branch_BD5E:
        stx     $0C                             ; BD5E 86 0C                    ..
        pla                                     ; BD60 68                       h
        and     #$03                            ; BD61 29 03                    ).
        sta     $03                             ; BD63 85 03                    ..
        asl     $02                             ; BD65 06 02                    ..
        rol     $03                             ; BD67 26 03                    &.
        asl     $02                             ; BD69 06 02                    ..
        rol     $03                             ; BD6B 26 03                    &.
        asl     $02                             ; BD6D 06 02                    ..
        rol     $03                             ; BD6F 26 03                    &.
        asl     $02                             ; BD71 06 02                    ..
        rol     $03                             ; BD73 26 03                    &.
        lda     $0A                             ; BD75 A5 0A                    ..
        clc                                     ; BD77 18                       .
        adc     $02                             ; BD78 65 02                    e.
        sta     $02                             ; BD7A 85 02                    ..
        lda     $0B                             ; BD7C A5 0B                    ..
        adc     $03                             ; BD7E 65 03                    e.
        sta     $03                             ; BD80 85 03                    ..
        ldy     #$00                            ; BD82 A0 00                    ..
        txa                                     ; BD84 8A                       .
        jsr     BattleTurnEngine_Entry_BE27     ; BD85 20 27 BE                  '.
        ldy     #$02                            ; BD88 A0 02                    ..
        ldx     #$00                            ; BD8A A2 00                    ..
        lda     #$08                            ; BD8C A9 08                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; BD8E 20 EA C3                  ..
        lsr     a                               ; BD91 4A                       J
        lsr     a                               ; BD92 4A                       J
        pha                                     ; BD93 48                       H
        asl     a                               ; BD94 0A                       .
        clc                                     ; BD95 18                       .
        adc     $06                             ; BD96 65 06                    e.
        sta     $06                             ; BD98 85 06                    ..
        bcc     BattleTurnEngine_Branch_BD9E    ; BD9A 90 02                    ..
        inc     $07                             ; BD9C E6 07                    ..
BattleTurnEngine_Branch_BD9E:
        pla                                     ; BD9E 68                       h
        clc                                     ; BD9F 18                       .
        adc     $06                             ; BDA0 65 06                    e.
        sta     $06                             ; BDA2 85 06                    ..
        bcc     BattleTurnEngine_Branch_BDA8    ; BDA4 90 02                    ..
        inc     $07                             ; BDA6 E6 07                    ..
BattleTurnEngine_Branch_BDA8:
        ldx     #$00                            ; BDA8 A2 00                    ..
        ldy     #$00                            ; BDAA A0 00                    ..
BattleTurnEngine_Branch_BDAC:
        tya                                     ; BDAC 98                       .
        pha                                     ; BDAD 48                       H
        txa                                     ; BDAE 8A                       .
        pha                                     ; BDAF 48                       H
        ldx     #$06                            ; BDB0 A2 06                    ..
        lda     #$08                            ; BDB2 A9 08                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; BDB4 20 EA C3                  ..
        pha                                     ; BDB7 48                       H
        and     #$3F                            ; BDB8 29 3F                    )?
        asl     a                               ; BDBA 0A                       .
        asl     a                               ; BDBB 0A                       .
        asl     a                               ; BDBC 0A                       .
        asl     a                               ; BDBD 0A                       .
        sta     $0D                             ; BDBE 85 0D                    ..
        pla                                     ; BDC0 68                       h
        bmi     BattleTurnEngine_Branch_BDD1    ; BDC1 30 0E                    0.
        lda     $0D                             ; BDC3 A5 0D                    ..
        clc                                     ; BDC5 18                       .
        adc     $02                             ; BDC6 65 02                    e.
        sta     $02                             ; BDC8 85 02                    ..
        bcc     BattleTurnEngine_Branch_BDCE    ; BDCA 90 02                    ..
        inc     $03                             ; BDCC E6 03                    ..
BattleTurnEngine_Branch_BDCE:
        jmp     BattleTurnEngine_Branch_BDDC    ; BDCE 4C DC BD                 L..
; ----------------------------------------------------------------------------
BattleTurnEngine_Branch_BDD1:
        lda     $0D                             ; BDD1 A5 0D                    ..
        sec                                     ; BDD3 38                       8
        sbc     $02                             ; BDD4 E5 02                    ..
        sta     $02                             ; BDD6 85 02                    ..
        bcs     BattleTurnEngine_Branch_BDDC    ; BDD8 B0 02                    ..
        dec     $03                             ; BDDA C6 03                    ..
BattleTurnEngine_Branch_BDDC:
        pla                                     ; BDDC 68                       h
        tax                                     ; BDDD AA                       .
        pla                                     ; BDDE 68                       h
        tay                                     ; BDDF A8                       .
        iny                                     ; BDE0 C8                       .
        jsr     BattleTurnEngine_Entry_BE27     ; BDE1 20 27 BE                  '.
        inx                                     ; BDE4 E8                       .
        cpy     #$03                            ; BDE5 C0 03                    ..
        bne     BattleTurnEngine_Branch_BDAC    ; BDE7 D0 C3                    ..
        ldx     #$00                            ; BDE9 A2 00                    ..
BattleTurnEngine_Branch_BDEB:
        asl     $0F                             ; BDEB 06 0F                    ..
        bcc     BattleTurnEngine_Branch_BDF9    ; BDED 90 0A                    ..
        ldy     $BE4F,x                         ; BDEF BC 4F BE                 .O.
        txa                                     ; BDF2 8A                       .
        pha                                     ; BDF3 48                       H
        jsr     BattleTurnEngine_Entry_BDFF     ; BDF4 20 FF BD                  ..
        pla                                     ; BDF7 68                       h
        tax                                     ; BDF8 AA                       .
BattleTurnEngine_Branch_BDF9:
        inx                                     ; BDF9 E8                       .
        cpx     #$04                            ; BDFA E0 04                    ..
        bne     BattleTurnEngine_Branch_BDEB    ; BDFC D0 ED                    ..
        rts                                     ; BDFE 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_BDFF:
        lda     #$10                            ; BDFF A9 10                    ..
        sta     $09                             ; BE01 85 09                    ..
BattleTurnEngine_Branch_BE03:
        ldx     #$08                            ; BE03 A2 08                    ..
        lda     $0650,y                         ; BE05 B9 50 06                 .P.
BattleTurnEngine_Branch_BE08:
        lsr     a                               ; BE08 4A                       J
        rol     $0D                             ; BE09 26 0D                    &.
        dex                                     ; BE0B CA                       .
        bne     BattleTurnEngine_Branch_BE08    ; BE0C D0 FA                    ..
        lda     $0D                             ; BE0E A5 0D                    ..
        sta     $0650,y                         ; BE10 99 50 06                 .P.
        iny                                     ; BE13 C8                       .
        dec     $09                             ; BE14 C6 09                    ..
        bne     BattleTurnEngine_Branch_BE03    ; BE16 D0 EB                    ..
        rts                                     ; BE18 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_BE19:
        tya                                     ; BE19 98                       .
        pha                                     ; BE1A 48                       H
        lda     #$08                            ; BE1B A9 08                    ..
        sta     $23                             ; BE1D 85 23                    .#
        sty     $24                             ; BE1F 84 24                    .$
        jsr     UpperFixedEngine_Entry_C3CE     ; BE21 20 CE C3                  ..
        pla                                     ; BE24 68                       h
        tay                                     ; BE25 A8                       .
        rts                                     ; BE26 60                       `
; ----------------------------------------------------------------------------
BattleTurnEngine_Entry_BE27:
        tya                                     ; BE27 98                       .
        pha                                     ; BE28 48                       H
        txa                                     ; BE29 8A                       .
        pha                                     ; BE2A 48                       H
        lda     $0C                             ; BE2B A5 0C                    ..
        sta     $C2                             ; BE2D 85 C2                    ..
        lda     $02                             ; BE2F A5 02                    ..
        sta     $C0                             ; BE31 85 C0                    ..
        lda     $03                             ; BE33 A5 03                    ..
        sta     $C1                             ; BE35 85 C1                    ..
        jsr     Bank14_RefillMonsterGraphicsInput; BE37 20 66 9F                 f.
        lda     $BE4F,y                         ; BE3A B9 4F BE                 .O.
        tay                                     ; BE3D A8                       .
        ldx     #$0F                            ; BE3E A2 0F                    ..
BattleTurnEngine_Branch_BE40:
        jsr     Bank14_ReadMonsterGraphicsByte  ; BE40 20 8D 9F                  ..
        sta     $0650,y                         ; BE43 99 50 06                 .P.
        iny                                     ; BE46 C8                       .
        dex                                     ; BE47 CA                       .
        bpl     BattleTurnEngine_Branch_BE40    ; BE48 10 F6                    ..
        pla                                     ; BE4A 68                       h
        tax                                     ; BE4B AA                       .
        pla                                     ; BE4C 68                       h
        tay                                     ; BE4D A8                       .
        rts                                     ; BE4E 60                       `
; ----------------------------------------------------------------------------
        db   $00,$10,$20,$30,$C8,$30,$1E,$7E ; BE4F 00 10 20 30 C8 30 1E 7E  .. 0.0.~
        db   $03,$0F,$1F,$13,$09,$05,$05,$03 ; BE57 03 0F 1F 13 09 05 05 03  ........
        db   $09,$05,$C9,$40,$0F,$FC,$9C,$06 ; BE5F 09 05 C9 40 0F FC 9C 06  ...@....
        db   $1C,$13,$07,$00,$03,$03,$0C,$10 ; BE67 1C 13 07 00 03 03 0C 10  ........
        db   $04,$C0,$50,$02,$10,$30,$00,$05 ; BE6F 04 C0 50 02 10 30 00 05  ..P..0..
        db   $0F,$17,$33,$02,$14,$36,$0A,$00 ; BE77 0F 17 33 02 14 36 0A 00  ..3..6..
        db   $08,$04,$03,$C0,$60,$39,$3C,$1F ; BE7F 08 04 03 C0 60 39 3C 1F  ....`9<.
        db   $1F,$07,$3B,$7D,$FE,$09,$04,$07 ; BE87 1F 07 3B 7D FE 09 04 07  ..;}....
        db   $1F,$07,$03,$1D,$3E,$C0,$31,$01 ; BE8F 1F 07 03 1D 3E C0 31 01  ....>.1.
        db   $83,$E6,$F3,$F5,$F4,$F4,$EE,$00 ; BE97 83 E6 F3 F5 F4 F4 EE 00  ........
        db   $01,$02,$83,$E1,$F0,$F4,$EE,$C0 ; BE9F 01 02 83 E1 F0 F4 EE C0  ........
        db   $41,$1F,$7F,$7B,$78,$A1,$D8,$B0 ; BEA7 41 1F 7F 7B 78 A1 D8 B0  A..{x...
        db   $60,$1E,$63,$45,$66,$22,$13,$25 ; BEAF 60 1E 63 45 66 22 13 25  `.cEf".%
        db   $6D,$C0,$51,$02,$07,$29,$FE,$3F ; BEB7 6D C0 51 02 07 29 FE 3F  m.Q..).?
        db   $DF,$EF,$C7,$3A,$17,$01,$C2,$23 ; BEBF DF EF C7 3A 17 01 C2 23  ...:...#
        db   $57,$EF,$C7,$C9,$61,$80,$E2,$E2 ; BEC7 57 EF C7 C9 61 80 E2 E2  W...a...
        db   $03,$00,$00,$00,$03,$00,$00,$00 ; BECF 03 00 00 00 03 00 00 00  ........
        db   $C8,$22,$13,$3F,$10,$38,$0C,$7E ; BED7 C8 22 13 3F 10 38 0C 7E  .".?.8.~
        db   $F8,$F0,$10,$30,$F7,$C0,$32,$A0 ; BEDF F8 F0 10 30 F7 C0 32 A0  ...0..2.
        db   $00,$40,$00,$A1,$FF,$7F,$1F,$AD ; BEE7 00 40 00 A1 FF 7F 1F AD  .@......
        db   $55,$BF,$50,$80,$E0,$7C,$1C,$C8 ; BEEF 55 BF 50 80 E0 7C 1C C8  U.P..|..
        db   $42,$3F,$7F,$C3,$1E,$F0,$80,$87 ; BEF7 42 3F 7F C3 1E F0 80 87  B?......
        db   $33,$3C,$01,$0F,$78,$47,$32,$BC ; BEFF 33 3C 01 0F 78 47 32 BC  3<..xG2.
        db   $C0,$52,$3F,$70,$CF,$3E,$F8,$F7 ; BF07 C0 52 3F 70 CF 3E F8 F7  .R?p.>..
        db   $F7,$EE,$BC,$70,$C1,$26,$F8,$F4 ; BF0F F7 EE BC 70 C1 26 F8 F4  ...p.&..
        db   $F6,$EE,$C9,$62,$03,$9F,$9F,$C5 ; BF17 F6 EE C9 62 03 9F 9F C5  ...b....
        db   $07,$07,$0B,$1C,$00,$C5,$07,$07 ; BF1F 07 07 0B 1C 00 C5 07 07  ........
        db   $0B,$1C,$00,$C8,$23,$01,$00,$80 ; BF27 0B 1C 00 C8 23 01 00 80  ....#...
        db   $C0,$33,$00,$01,$03,$B3,$7D,$BC ; BF2F C0 33 00 01 03 B3 7D BC  .3....}.
        db   $B1,$0E,$43,$47,$8F,$03,$01,$30 ; BF37 B1 0E 43 47 8F 03 01 30  ..CG...0
        db   $30,$01,$C0,$43,$70,$C1,$04,$1E ; BF3F 30 01 C0 43 70 C1 04 1E  0..Cp...
        db   $DC,$C8,$B2,$34,$0E,$39,$E0,$10 ; BF47 DC C8 B2 34 0E 39 E0 10  ...4.9..
        db   $98,$09,$33,$77,$C0,$53,$38,$3C ; BF4F 98 09 33 77 C0 53 38 3C  ..3w.S8<
        db   $7D,$BD,$3D,$B9,$5F,$DF,$7B,$7F ; BF57 7D BD 3D B9 5F DF 7B 7F  }.=._.{.
        db   $7F,$BB,$3B,$3F,$1F,$1F,$C9,$63 ; BF5F 7F BB 3B 3F 1F 1F C9 63  ..;?...c
        db   $EF,$EF,$1F,$E6,$80,$70,$F8,$00 ; BF67 EF EF 1F E6 80 70 F8 00  .....p..
        db   $8F,$AF,$AF,$8F,$40,$E0,$00,$C9 ; BF6F 8F AF AF 8F 40 E0 00 C9  ....@...
        db   $34,$F0,$6F,$CF,$00,$E0,$C6,$38 ; BF77 34 F0 6F CF 00 E0 C6 38  4.o....8
        db   $C4,$1C,$F8,$FC,$C0,$00,$26,$9E ; BF7F C4 1C F8 FC C0 00 26 9E  ......&.
        db   $C0,$44,$7C,$DE,$A6,$2E,$46,$1A ; BF87 C0 44 7C DE A6 2E 46 1A  .D|...F.
        db   $0A,$1A,$7F,$BF,$7F,$FF,$C7,$BB ; BF8F 0A 1A 7F BF 7F FF C7 BB  ........
        db   $DB,$7B,$C0,$54,$16,$34,$8C,$BC ; BF97 DB 7B C0 54 16 34 8C BC  .{.T.4..
        db   $98,$F8,$F0,$F0,$B7,$77,$8E,$FE ; BF9F 98 F8 F0 F0 B7 77 8E FE  .....w..
        db   $FE,$FC,$FC,$F8,$C8,$64,$F0,$E0 ; BFA7 FE FC FC F8 C8 64 F0 E0  .....d..
        db   $E0,$C0,$80,$F8,$F0,$E0,$C0,$88 ; BFAF E0 C0 80 F8 F0 E0 C0 88  ........
        db   $06,$28,$00,$E0,$20,$F0,$40,$88 ; BFB7 06 28 00 E0 20 F0 40 88  .(.. .@.
        db   $0B,$0F,$00,$FC,$78,$AE,$7B,$9E ; BFBF 0B 0F 00 FC 78 AE 7B 9E  ....x.{.
        db   $70,$C0,$88,$03,$0F,$00,$0A,$01 ; BFC7 70 C0 88 03 0F 00 0A 01  p.......
        db   $01,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFCF 01 FF FF FF FF FF FF FF  ........
        db   $FF,$78,$EE,$DF,$BF,$4C,$8E,$FF ; BFD7 FF 78 EE DF BF 4C 8E FF  .x...L..
        db   $80,$20,$44,$52,$41,$47,$4F,$4E ; BFDF 80 20 44 52 41 47 4F 4E  . DRAGON
        db   $20,$51,$55,$45,$53,$54,$20,$49 ; BFE7 20 51 55 45 53 54 20 49   QUEST I
        db   $56,$00,$00,$00,$00,$48,$04,$01 ; BFEF 56 00 00 00 00 48 04 01  V....H..
        db   $0E,$07,$9E,$D8,$BF,$D8,$BF,$D8 ; BFF7 0E 07 9E D8 BF D8 BF D8  ........
        db   $BF                             ; BFFF BF                       .
Bank14_End:
