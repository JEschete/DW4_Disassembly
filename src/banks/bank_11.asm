; PRG bank $11: ROM file $044010-$04800F
; CPU window $8000-$BFFF
; Disassembled by project-local da65 using generated code/data ranges.

base $8000
Bank11_Start:
; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------
Bank11_BattleActionDirectory:
        db   $32,$80,$D8,$A2,$04,$A3,$2E,$A3 ; 8000 32 80 D8 A2 04 A3 2E A3  2.......
        db   $4A,$A3,$54,$A3,$E4,$A2,$11,$A3 ; 8008 4A A3 54 A3 E4 A2 11 A3  J.T.....
        db   $6B,$A3,$94,$A3,$39,$A3,$1A,$A3 ; 8010 6B A3 94 A3 39 A3 1A A3  k...9...
        db   $7E,$A3,$5C,$AC,$DF,$A3,$B4,$A1 ; 8018 7E A3 5C AC DF A3 B4 A1  ~.\.....
        db   $F7,$A3,$4C,$9E,$C4,$80,$0A,$AE ; 8020 F7 A3 4C 9E C4 80 0A AE  ..L.....
        db   $5C,$BF,$00,$00,$36,$80,$79,$90 ; 8028 5C BF 00 00 36 80 79 90  \...6.y.
        db   $3A,$80                         ; 8030 3A 80                    :.
; ----------------------------------------------------------------------------
Bank11_BattleActionServices:
        lda     #$00                            ; 8032 A9 00                    ..
        beq     BattleActionServices_Branch_803C; 8034 F0 06                    ..
BattleActionServices_Entry_8036:
        lda     #$80                            ; 8036 A9 80                    ..
        bne     BattleActionServices_Branch_803C; 8038 D0 02                    ..
BattleActionServices_Entry_803A:
        lda     #$40                            ; 803A A9 40                    .@
BattleActionServices_Branch_803C:
        sta     $72E9                           ; 803C 8D E9 72                 ..r
        lda     #$00                            ; 803F A9 00                    ..
        sta     $6E81                           ; 8041 8D 81 6E                 ..n
        brk                                     ; 8044 00                       .
        db   $24,$2F                         ; 8045 24 2F                    $/
; ----------------------------------------------------------------------------
        brk                                     ; 8047 00                       .
        db   $00,$2F                         ; 8048 00 2F                    ./
; ----------------------------------------------------------------------------
        brk                                     ; 804A 00                       .
        db   $27,$0F                         ; 804B 27 0F                    '.
; ----------------------------------------------------------------------------
        brk                                     ; 804D 00                       .
        db   $03,$2F                         ; 804E 03 2F                    ./
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_B9FB ; 8050 20 FB B9                  ..
BattleActionServices_Branch_8053:
        brk                                     ; 8053 00                       .
        db   $04,$2F                         ; 8054 04 2F                    ./
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_80CF ; 8056 20 CF 80                  ..
        brk                                     ; 8059 00                       .
        db   $13,$2F                         ; 805A 13 2F                    ./
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_80C4 ; 805C 20 C4 80                  ..
        bcc     BattleActionServices_Branch_808B; 805F 90 2A                    .*
        brk                                     ; 8061 00                       .
        db   $07,$6F,$3D                     ; 8062 07 6F 3D                 .o=
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_BB86 ; 8065 20 86 BB                  ..
        jsr     BattleActionServices_Entry_B9F6 ; 8068 20 F6 B9                  ..
        jsr     BattleActionServices_Entry_9223 ; 806B 20 23 92                  #.
        brk                                     ; 806E 00                       .
        db   $30,$0F                         ; 806F 30 0F                    0.
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_BEB2 ; 8071 20 B2 BE                  ..
        jsr     BattleActionServices_Entry_A8EC ; 8074 20 EC A8                  ..
        jsr     BattleActionServices_Entry_885B ; 8077 20 5B 88                  [.
        brk                                     ; 807A 00                       .
        db   $13,$2F                         ; 807B 13 2F                    ./
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_AA4C ; 807D 20 4C AA                  L.
        brk                                     ; 8080 00                       .
        db   $0B,$3F                         ; 8081 0B 3F                    .?
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_92CF ; 8083 20 CF 92                  ..
        jsr     BattleActionServices_Entry_80C4 ; 8086 20 C4 80                  ..
        bcs     BattleActionServices_Branch_8053; 8089 B0 C8                    ..
BattleActionServices_Branch_808B:
        brk                                     ; 808B 00                       .
        db   $13,$2F                         ; 808C 13 2F                    ./
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_AB2A ; 808E 20 2A AB                  *.
        brk                                     ; 8091 00                       .
        db   $05,$2F                         ; 8092 05 2F                    ./
; ----------------------------------------------------------------------------
        lda     $6E45                           ; 8094 AD 45 6E                 .En
        cmp     #$BB                            ; 8097 C9 BB                    ..
        beq     BattleActionServices_Branch_809C; 8099 F0 01                    ..
BattleActionServices_Branch_809B:
        rts                                     ; 809B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_809C:
        lda     SaveCurrentChapterMinus1        ; 809C AD 5A 61                 .Za
        cmp     #$03                            ; 809F C9 03                    ..
        bne     BattleActionServices_Branch_809B; 80A1 D0 F8                    ..
        jsr     UpperFixedEngine_Entry_C5C5     ; 80A3 20 C5 C5                  ..
        jsr     UpperFixedEngine_Entry_C54E     ; 80A6 20 4E C5                  N.
        ldx     #$01                            ; 80A9 A2 01                    ..
        stx     $6E49                           ; 80AB 8E 49 6E                 .In
        dex                                     ; 80AE CA                       .
        stx     $6E4A                           ; 80AF 8E 4A 6E                 .Jn
        stx     $6E4B                           ; 80B2 8E 4B 6E                 .Kn
        stx     $6E4C                           ; 80B5 8E 4C 6E                 .Ln
        brk                                     ; 80B8 00                       .
        db   $0D,$FB                         ; 80B9 0D FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 80BB 00                       .
        db   $27,$0F                         ; 80BC 27 0F                    '.
; ----------------------------------------------------------------------------
        brk                                     ; 80BE 00                       .
        db   $0A,$4F                         ; 80BF 0A 4F                    .O
; ----------------------------------------------------------------------------
        jmp     Bank11_BattleActionServices     ; 80C1 4C 32 80                 L2.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_80C4:
        lda     $72E7                           ; 80C4 AD E7 72                 ..r
        and     #$60                            ; 80C7 29 60                    )`
        beq     BattleActionServices_Branch_80CD; 80C9 F0 02                    ..
        clc                                     ; 80CB 18                       .
        rts                                     ; 80CC 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_80CD:
        sec                                     ; 80CD 38                       8
        rts                                     ; 80CE 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_80CF:
        lda     $0553                           ; 80CF AD 53 05                 .S.
        and     #$7F                            ; 80D2 29 7F                    ).
        sta     $0553                           ; 80D4 8D 53 05                 .S.
        ldx     #$0B                            ; 80D7 A2 0B                    ..
BattleActionServices_Branch_80D9:
        lda     #$70                            ; 80D9 A9 70                    .p
        sta     BattleSlotDescriptors,x         ; 80DB 9D F4 72                 ..r
        lda     #$00                            ; 80DE A9 00                    ..
        sta     $7300,x                         ; 80E0 9D 00 73                 ..s
        sta     $730C,x                         ; 80E3 9D 0C 73                 ..s
        sta     $7318,x                         ; 80E6 9D 18 73                 ..s
        lda     #$F7                            ; 80E9 A9 F7                    ..
        sta     $7324,x                         ; 80EB 9D 24 73                 .$s
        sta     $7330,x                         ; 80EE 9D 30 73                 .0s
        sta     $733C,x                         ; 80F1 9D 3C 73                 .<s
        dex                                     ; 80F4 CA                       .
        bpl     BattleActionServices_Branch_80D9; 80F5 10 E2                    ..
        jsr     BattleActionServices_Entry_87FB ; 80F7 20 FB 87                  ..
        lda     $72E9                           ; 80FA AD E9 72                 ..r
        bmi     BattleActionServices_Branch_8117; 80FD 30 18                    0.
        lda     $6E44                           ; 80FF AD 44 6E                 .Dn
        and     #$03                            ; 8102 29 03                    ).
        cmp     #$01                            ; 8104 C9 01                    ..
        beq     BattleActionServices_Branch_8117; 8106 F0 0F                    ..
        lda     $72E6                           ; 8108 AD E6 72                 ..r
        and     #$30                            ; 810B 29 30                    )0
        bne     BattleActionServices_Branch_8117; 810D D0 08                    ..
        jsr     BattleActionServices_Entry_AE0A ; 810F 20 0A AE                  ..
        bcs     BattleActionServices_Branch_8118; 8112 B0 04                    ..
        jmp     BattleActionServices_Branch_82E8; 8114 4C E8 82                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8117:
        rts                                     ; 8117 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8118:
        jsr     BattleActionServices_Entry_87FB ; 8118 20 FB 87                  ..
        brk                                     ; 811B 00                       .
        db   $62,$23,$41                     ; 811C 62 23 41                 b#A
; ----------------------------------------------------------------------------
        sta     $00                           ; 811F 85 00                    ..
        lda     #$10                            ; 8121 A9 10                    ..
        jsr     BattleActionServices_Entry_880A ; 8123 20 0A 88                  ..
        bcs     BattleActionServices_Branch_815F; 8126 B0 37                    .7
        lda     #$11                            ; 8128 A9 11                    ..
        jsr     BattleActionServices_Entry_880A ; 812A 20 0A 88                  ..
        bcs     BattleActionServices_Branch_815F; 812D B0 30                    .0
        jsr     BattleActionServices_Entry_87BB ; 812F 20 BB 87                  ..
        lda     $03D4                           ; 8132 AD D4 03                 ...
        and     #$1F                            ; 8135 29 1F                    ).
        sta     $03D4                           ; 8137 8D D4 03                 ...
        brk                                     ; 813A 00                       .
        db   $07,$6F,$2D                     ; 813B 07 6F 2D                 .o-
; ----------------------------------------------------------------------------
        brk                                     ; 813E 00                       .
        db   $07,$6F,$2C                     ; 813F 07 6F 2C                 .o,
; ----------------------------------------------------------------------------
        cmp     #$00                            ; 8142 C9 00                    ..
        beq     BattleActionServices_Branch_815F; 8144 F0 19                    ..
        cmp     #$03                            ; 8146 C9 03                    ..
        beq     BattleActionServices_Branch_815C; 8148 F0 12                    ..
        cmp     #$01                            ; 814A C9 01                    ..
        beq     BattleActionServices_Branch_8162; 814C F0 14                    ..
        cmp     #$02                            ; 814E C9 02                    ..
        beq     BattleActionServices_Branch_8168; 8150 F0 16                    ..
        cmp     #$FD                            ; 8152 C9 FD                    ..
        beq     BattleActionServices_Branch_8165; 8154 F0 0F                    ..
        jmp     BattleActionServices_Branch_8118; 8156 4C 18 81                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8159:
        jmp     BattleActionServices_Entry_80CF ; 8159 4C CF 80                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_815C:
        jmp     BattleActionServices_Branch_82D4; 815C 4C D4 82                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_815F:
        jmp     BattleActionServices_Branch_81FD; 815F 4C FD 81                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8162:
        jmp     BattleActionServices_Branch_8293; 8162 4C 93 82                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8165:
        jmp     BattleActionServices_Branch_82D8; 8165 4C D8 82                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8168:
        brk                                     ; 8168 00                       .
        db   $5D,$33                         ; 8169 5D 33                    ]3
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8174; 816B 90 07                    ..
        lda     SaveGameStateFlags              ; 816D AD 8E 61                 ..a
        and     #$07                            ; 8170 29 07                    ).
        beq     BattleActionServices_Branch_8183; 8172 F0 0F                    ..
BattleActionServices_Branch_8174:
        brk                                     ; 8174 00                       .
        db   $07,$6F,$3D                     ; 8175 07 6F 3D                 .o=
; ----------------------------------------------------------------------------
        brk                                     ; 8178 00                       .
        db   $00,$0B                         ; 8179 00 0B                    ..
; ----------------------------------------------------------------------------
        ldx     #$28                            ; 817B A2 28                    .(
        jsr     UpperFixedEngine_Entry_C90C     ; 817D 20 0C C9                  ..
        jmp     BattleActionServices_Entry_80CF ; 8180 4C CF 80                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8183:
        brk                                     ; 8183 00                       .
        db   $07,$6F,$2D                     ; 8184 07 6F 2D                 .o-
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8187:
        jsr     BattleActionServices_Entry_87FB ; 8187 20 FB 87                  ..
        brk                                     ; 818A 00                       .
        db   $62,$23,$40                     ; 818B 62 23 40                 b#@
; ----------------------------------------------------------------------------
        cmp     #$04                            ; 818E C9 04                    ..
        beq     BattleActionServices_Branch_819E; 8190 F0 0C                    ..
        cmp     #$01                            ; 8192 C9 01                    ..
        beq     BattleActionServices_Branch_81A6; 8194 F0 10                    ..
        brk                                     ; 8196 00                       .
        db   $07,$6F,$65                     ; 8197 07 6F 65                 .oe
; ----------------------------------------------------------------------------
        ldx     #$00                            ; 819A A2 00                    ..
        beq     BattleActionServices_Branch_81AC; 819C F0 0E                    ..
BattleActionServices_Branch_819E:
        brk                                     ; 819E 00                       .
        db   $07,$6F,$66                     ; 819F 07 6F 66                 .of
; ----------------------------------------------------------------------------
        ldx     #$03                            ; 81A2 A2 03                    ..
        bne     BattleActionServices_Branch_81AC; 81A4 D0 06                    ..
BattleActionServices_Branch_81A6:
        brk                                     ; 81A6 00                       .
        db   $07,$6F,$67                     ; 81A7 07 6F 67                 .og
; ----------------------------------------------------------------------------
        ldx     #$05                            ; 81AA A2 05                    ..
BattleActionServices_Branch_81AC:
        stx     $00                           ; 81AC 86 00                    ..
        cmp     #$FF                            ; 81AE C9 FF                    ..
        beq     BattleActionServices_Branch_8159; 81B0 F0 A7                    ..
        clc                                     ; 81B2 18                       .
        adc     $00                           ; 81B3 65 00                    e.
        tax                                     ; 81B5 AA                       .
        lda     $884B,x                         ; 81B6 BD 4B 88                 .K.
        beq     BattleActionServices_Branch_81D7; 81B9 F0 1C                    ..
        cmp     #$01                            ; 81BB C9 01                    ..
        beq     BattleActionServices_Branch_81CD; 81BD F0 0E                    ..
        brk                                     ; 81BF 00                       .
        db   $62,$23,$80                     ; 81C0 62 23 80                 b#.
; ----------------------------------------------------------------------------
        beq     BattleActionServices_Branch_81EE; 81C3 F0 29                    .)
        jsr     BattleActionServices_Entry_8757 ; 81C5 20 57 87                  W.
        bcc     BattleActionServices_Branch_8187; 81C8 90 BD                    ..
        jmp     BattleActionServices_Branch_81FD; 81CA 4C FD 81                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_81CD:
        lda     #$39                            ; 81CD A9 39                    .9
        jsr     BattleActionServices_Entry_8778 ; 81CF 20 78 87                  x.
        bcc     BattleActionServices_Branch_8187; 81D2 90 B3                    ..
        jmp     BattleActionServices_Branch_81FD; 81D4 4C FD 81                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_81D7:
        brk                                     ; 81D7 00                       .
        db   $62,$23,$80                     ; 81D8 62 23 80                 b#.
; ----------------------------------------------------------------------------
        beq     BattleActionServices_Branch_81EE; 81DB F0 11                    ..
        lda     #$3A                            ; 81DD A9 3A                    .:
        jsr     BattleActionServices_Entry_8778 ; 81DF 20 78 87                  x.
        bcc     BattleActionServices_Branch_8187; 81E2 90 A3                    ..
        lda     #$3B                            ; 81E4 A9 3B                    .;
        jsr     BattleActionServices_Entry_8757 ; 81E6 20 57 87                  W.
        bcc     BattleActionServices_Branch_81D7; 81E9 90 EC                    ..
        jmp     BattleActionServices_Branch_81FD; 81EB 4C FD 81                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_81EE:
        brk                                     ; 81EE 00                       .
        db   $07,$6F,$3D                     ; 81EF 07 6F 3D                 .o=
; ----------------------------------------------------------------------------
        brk                                     ; 81F2 00                       .
        db   $6F,$0B                         ; 81F3 6F 0B                    o.
; ----------------------------------------------------------------------------
        ldx     #$32                            ; 81F5 A2 32                    .2
        jsr     UpperFixedEngine_Entry_C90C     ; 81F7 20 0C C9                  ..
        jmp     BattleActionServices_Entry_80CF ; 81FA 4C CF 80                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_81FD:
        lda     $03D4                           ; 81FD AD D4 03                 ...
        and     #$1F                            ; 8200 29 1F                    ).
        sta     $03D4                           ; 8202 8D D4 03                 ...
        jsr     BattleActionServices_Entry_8720 ; 8205 20 20 87                   .
        lda     $7357                           ; 8208 AD 57 73                 .Ws
        cmp     #$FF                            ; 820B C9 FF                    ..
        sta     $735A                           ; 820D 8D 5A 73                 .Zs
        bne     BattleActionServices_Branch_822F; 8210 D0 1D                    ..
        ldx     #$00                            ; 8212 A2 00                    ..
BattleActionServices_Branch_8214:
        lda     BattleSlotDescriptors,x         ; 8214 BD F4 72                 ..r
        and     #$70                            ; 8217 29 70                    )p
        cmp     #$70                            ; 8219 C9 70                    .p
        beq     BattleActionServices_Branch_822C; 821B F0 0F                    ..
        inx                                     ; 821D E8                       .
        cpx     #$04                            ; 821E E0 04                    ..
        bcc     BattleActionServices_Branch_8214; 8220 90 F2                    ..
        lda     #$FF                            ; 8222 A9 FF                    ..
        sta     $7359                           ; 8224 8D 59 73                 .Ys
        sta     $7358                           ; 8227 8D 58 73                 .Xs
        bne     BattleActionServices_Branch_8241; 822A D0 15                    ..
BattleActionServices_Branch_822C:
        stx     $735A                           ; 822C 8E 5A 73                 .Zs
BattleActionServices_Branch_822F:
        ldx     $7358                           ; 822F AE 58 73                 .Xs
        cpx     #$FF                            ; 8232 E0 FF                    ..
        beq     BattleActionServices_Branch_8241; 8234 F0 0B                    ..
        brk                                     ; 8236 00                       .
        db   $68,$53                         ; 8237 68 53                    hS
; ----------------------------------------------------------------------------
        ora     #$10                            ; 8239 09 10                    ..
        ldx     $735A                           ; 823B AE 5A 73                 .Zs
        sta     BattleSlotDescriptors,x         ; 823E 9D F4 72                 ..r
BattleActionServices_Branch_8241:
        jsr     BattleActionServices_Entry_870C ; 8241 20 0C 87                  ..
        bcc     BattleActionServices_Branch_824B; 8244 90 05                    ..
        cpx     $7357                           ; 8246 EC 57 73                 .Ws
        bne     BattleActionServices_Branch_8260; 8249 D0 15                    ..
BattleActionServices_Branch_824B:
        ldx     $7358                           ; 824B AE 58 73                 .Xs
        cpx     #$FF                            ; 824E E0 FF                    ..
        beq     BattleActionServices_Branch_8275; 8250 F0 23                    .#
        brk                                     ; 8252 00                       .
        db   $2B,$73                         ; 8253 2B 73                    +s
; ----------------------------------------------------------------------------
        bne     BattleActionServices_Branch_8275; 8255 D0 1E                    ..
        stx     $7356                           ; 8257 8E 56 73                 .Vs
        ldx     $735A                           ; 825A AE 5A 73                 .Zs
        jmp     BattleActionServices_Branch_8263; 825D 4C 63 82                 Lc.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8260:
        stx     $7356                           ; 8260 8E 56 73                 .Vs
BattleActionServices_Branch_8263:
        stx     $96                             ; 8263 86 96                    ..
        jsr     BattleActionServices_Entry_86F4 ; 8265 20 F4 86                  ..
        jsr     BattleActionServices_Entry_8321 ; 8268 20 21 83                  !.
        bcc     BattleActionServices_Branch_8275; 826B 90 08                    ..
        jsr     BattleActionServices_Entry_8371 ; 826D 20 71 83                  q.
        bcs     BattleActionServices_Branch_8275; 8270 B0 03                    ..
        jmp     BattleActionServices_Entry_80CF ; 8272 4C CF 80                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8275:
        ldx     $96                             ; 8275 A6 96                    ..
        lda     $7324,x                         ; 8277 BD 24 73                 .$s
        sta     $75EA                           ; 827A 8D EA 75                 ..u
        lda     $7300,x                         ; 827D BD 00 73                 ..s
        bmi     BattleActionServices_Branch_8292; 8280 30 10                    0.
        pha                                     ; 8282 48                       H
        and     #$F0                            ; 8283 29 F0                    ).
        sta     $00                           ; 8285 85 00                    ..
        pla                                     ; 8287 68                       h
        and     #$0F                            ; 8288 29 0F                    ).
        brk                                     ; 828A 00                       .
        db   $67,$73                         ; 828B 67 73                    gs
; ----------------------------------------------------------------------------
        ora     $00                           ; 828D 05 00                    ..
        sta     $75EB                           ; 828F 8D EB 75                 ..u
BattleActionServices_Branch_8292:
        rts                                     ; 8292 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8293:
        brk                                     ; 8293 00                       .
        db   $07,$6F,$2D                     ; 8294 07 6F 2D                 .o-
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8297:
        brk                                     ; 8297 00                       .
        db   $07,$6F,$64                     ; 8298 07 6F 64                 .od
; ----------------------------------------------------------------------------
        cmp     #$00                            ; 829B C9 00                    ..
        beq     BattleActionServices_Branch_82B5; 829D F0 16                    ..
        cmp     #$01                            ; 829F C9 01                    ..
        beq     BattleActionServices_Branch_82AE; 82A1 F0 0B                    ..
        cmp     #$02                            ; 82A3 C9 02                    ..
        bne     BattleActionServices_Branch_82E5; 82A5 D0 3E                    .>
        brk                                     ; 82A7 00                       .
        db   $07,$6F,$5D                     ; 82A8 07 6F 5D                 .o]
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_8297; 82AB 4C 97 82                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_82AE:
        brk                                     ; 82AE 00                       .
        db   $07,$6F,$5B                     ; 82AF 07 6F 5B                 .o[
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_8297; 82B2 4C 97 82                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_82B5:
        brk                                     ; 82B5 00                       .
        db   $07,$6F,$4C                     ; 82B6 07 6F 4C                 .oL
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 82B9 C9 FF                    ..
        beq     BattleActionServices_Branch_82D1; 82BB F0 14                    ..
        cmp     #$06                            ; 82BD C9 06                    ..
        bcs     BattleActionServices_Branch_82D1; 82BF B0 10                    ..
        brk                                     ; 82C1 00                       .
        db   $4E,$73                         ; 82C2 4E 73                    Ns
; ----------------------------------------------------------------------------
        brk                                     ; 82C4 00                       .
        db   $07,$6F,$4D                     ; 82C5 07 6F 4D                 .oM
; ----------------------------------------------------------------------------
        lda     $03D4                           ; 82C8 AD D4 03                 ...
        sec                                     ; 82CB 38                       8
        sbc     #$20                            ; 82CC E9 20                    .
        sta     $03D4                           ; 82CE 8D D4 03                 ...
BattleActionServices_Branch_82D1:
        jmp     BattleActionServices_Branch_8118; 82D1 4C 18 81                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_82D4:
        jsr     BattleActionServices_Entry_8403 ; 82D4 20 03 84                  ..
        rts                                     ; 82D7 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_82D8:
        ldx     #$03                            ; 82D8 A2 03                    ..
        brk                                     ; 82DA 00                       .
        db   $01,$6F,$61                     ; 82DB 01 6F 61                 .oa
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 82DE C9 FF                    ..
        beq     BattleActionServices_Branch_82E5; 82E0 F0 03                    ..
        sta     $62EE                           ; 82E2 8D EE 62                 ..b
BattleActionServices_Branch_82E5:
        jmp     BattleActionServices_Branch_8118; 82E5 4C 18 81                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_82E8:
        ldx     #$00                            ; 82E8 A2 00                    ..
        stx     $96                             ; 82EA 86 96                    ..
        stx     $7356                           ; 82EC 8E 56 73                 .Vs
BattleActionServices_Branch_82EF:
        jsr     BattleActionServices_Entry_86F4 ; 82EF 20 F4 86                  ..
        jsr     BattleActionServices_Entry_8321 ; 82F2 20 21 83                  !.
        bcc     BattleActionServices_Branch_82FF; 82F5 90 08                    ..
        jsr     BattleActionServices_Entry_8371 ; 82F7 20 71 83                  q.
        bcs     BattleActionServices_Branch_82FF; 82FA B0 03                    ..
        jsr     BattleActionServices_Entry_830D ; 82FC 20 0D 83                  ..
BattleActionServices_Branch_82FF:
        inc     $7356                           ; 82FF EE 56 73                 .Vs
        inc     $96                             ; 8302 E6 96                    ..
        brk                                     ; 8304 00                       .
        db   $62,$23,$40                     ; 8305 62 23 40                 b#@
; ----------------------------------------------------------------------------
        cmp     $96                             ; 8308 C5 96                    ..
        bne     BattleActionServices_Branch_82EF; 830A D0 E3                    ..
        rts                                     ; 830C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_830D:
        lda     $96                             ; 830D A5 96                    ..
        beq     BattleActionServices_Branch_831B; 830F F0 0A                    ..
        dec     $96                             ; 8311 C6 96                    ..
        dec     $7356                           ; 8313 CE 56 73                 .Vs
        jsr     BattleActionServices_Entry_8321 ; 8316 20 21 83                  !.
        bcc     BattleActionServices_Entry_830D ; 8319 90 F2                    ..
BattleActionServices_Branch_831B:
        dec     $96                             ; 831B C6 96                    ..
        dec     $7356                           ; 831D CE 56 73                 .Vs
        rts                                     ; 8320 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8321:
        ldx     $7356                           ; 8321 AE 56 73                 .Vs
BattleActionServices_Entry_8324:
        brk                                     ; 8324 00                       .
        db   $46,$93,$07                     ; 8325 46 93 07                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8362; 8328 90 38                    .8
        brk                                     ; 832A 00                       .
        db   $46,$93,$06                     ; 832B 46 93 06                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8362; 832E B0 32                    .2
        brk                                     ; 8330 00                       .
        db   $46,$93,$10                     ; 8331 46 93 10                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8362; 8334 B0 2C                    .,
        brk                                     ; 8336 00                       .
        db   $46,$93,$11                     ; 8337 46 93 11                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8362; 833A B0 26                    .&
        brk                                     ; 833C 00                       .
        db   $46,$93,$18                     ; 833D 46 93 18                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8362; 8340 B0 20                    .
        brk                                     ; 8342 00                       .
        db   $46,$93,$26                     ; 8343 46 93 26                 F.&
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8362; 8346 B0 1A                    ..
        brk                                     ; 8348 00                       .
        db   $2B,$73                         ; 8349 2B 73                    +s
; ----------------------------------------------------------------------------
        cmp     #$08                            ; 834B C9 08                    ..
        bcs     BattleActionServices_Entry_8364 ; 834D B0 15                    ..
        lda     $72E5                           ; 834F AD E5 72                 ..r
        bpl     BattleActionServices_Branch_8360; 8352 10 0C                    ..
        brk                                     ; 8354 00                       .
        db   $68,$73                         ; 8355 68 73                    hs
; ----------------------------------------------------------------------------
        lda     $72E6                           ; 8357 AD E6 72                 ..r
        and     #$0F                            ; 835A 29 0F                    ).
        cmp     $72                             ; 835C C5 72                    .r
        bne     BattleActionServices_Branch_8362; 835E D0 02                    ..
BattleActionServices_Branch_8360:
        sec                                     ; 8360 38                       8
        rts                                     ; 8361 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8362:
        clc                                     ; 8362 18                       .
        rts                                     ; 8363 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8364:
        tya                                     ; 8364 98                       .
        pha                                     ; 8365 48                       H
        txa                                     ; 8366 8A                       .
        pha                                     ; 8367 48                       H
        brk                                     ; 8368 00                       .
        db   $32,$0F                         ; 8369 32 0F                    2.
; ----------------------------------------------------------------------------
        pla                                     ; 836B 68                       h
        tax                                     ; 836C AA                       .
        pla                                     ; 836D 68                       h
        tay                                     ; 836E A8                       .
        clc                                     ; 836F 18                       .
        rts                                     ; 8370 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8371:
        jsr     BattleActionServices_Entry_87BB ; 8371 20 BB 87                  ..
        brk                                     ; 8374 00                       .
        db   $07,$6F,$2D                     ; 8375 07 6F 2D                 .o-
; ----------------------------------------------------------------------------
        ldy     #$00                            ; 8378 A0 00                    ..
        jsr     BattleActionServices_Entry_AE0A ; 837A 20 0A AE                  ..
        bcc     BattleActionServices_Branch_8383; 837D 90 04                    ..
        ldy     #$02                            ; 837F A0 02                    ..
        bne     BattleActionServices_Branch_8390; 8381 D0 0D                    ..
BattleActionServices_Branch_8383:
        ldx     $7356                           ; 8383 AE 56 73                 .Vs
BattleActionServices_Branch_8386:
        dex                                     ; 8386 CA                       .
        bmi     BattleActionServices_Branch_8390; 8387 30 07                    0.
        jsr     BattleActionServices_Entry_8324 ; 8389 20 24 83                  $.
        bcc     BattleActionServices_Branch_8386; 838C 90 F8                    ..
        ldy     #$02                            ; 838E A0 02                    ..
BattleActionServices_Branch_8390:
        jsr     BattleActionServices_Entry_86E2 ; 8390 20 E2 86                  ..
        brk                                     ; 8393 00                       .
        db   $3C,$93,$00                     ; 8394 3C 93 00                 <..
; ----------------------------------------------------------------------------
        sta     $00                           ; 8397 85 00                    ..
        brk                                     ; 8399 00                       .
        db   $3C,$93,$01                     ; 839A 3C 93 01                 <..
; ----------------------------------------------------------------------------
        ora     $00                           ; 839D 05 00                    ..
        sta     $00                           ; 839F 85 00                    ..
        brk                                     ; 83A1 00                       .
        db   $2B,$73                         ; 83A2 2B 73                    +s
; ----------------------------------------------------------------------------
        bne     BattleActionServices_Branch_83AE; 83A4 D0 08                    ..
        brk                                     ; 83A6 00                       .
        db   $3C,$93,$02                     ; 83A7 3C 93 02                 <..
; ----------------------------------------------------------------------------
        ora     $00                           ; 83AA 05 00                    ..
        sta     $00                           ; 83AC 85 00                    ..
BattleActionServices_Branch_83AE:
        lda     $00                           ; 83AE A5 00                    ..
        bne     BattleActionServices_Branch_83B3; 83B0 D0 01                    ..
        iny                                     ; 83B2 C8                       .
BattleActionServices_Branch_83B3:
        tya                                     ; 83B3 98                       .
        pha                                     ; 83B4 48                       H
        ldx     $7356                           ; 83B5 AE 56 73                 .Vs
        lda     $8827,y                         ; 83B8 B9 27 88                 .'.
        brk                                     ; 83BB 00                       .
        db   $00,$6F                         ; 83BC 00 6F                    .o
; ----------------------------------------------------------------------------
        sta     $00                           ; 83BE 85 00                    ..
        tax                                     ; 83C0 AA                       .
        pla                                     ; 83C1 68                       h
        cpx     #$FF                            ; 83C2 E0 FF                    ..
        beq     BattleActionServices_Branch_83E8; 83C4 F0 22                    ."
        cpx     #$FD                            ; 83C6 E0 FD                    ..
        beq     BattleActionServices_Branch_83F3; 83C8 F0 29                    .)
        asl     a                               ; 83CA 0A                       .
        asl     a                               ; 83CB 0A                       .
        asl     a                               ; 83CC 0A                       .
        adc     $00                           ; 83CD 65 00                    e.
        tax                                     ; 83CF AA                       .
        lda     $882B,x                         ; 83D0 BD 2B 88                 .+.
        beq     BattleActionServices_Branch_83F0; 83D3 F0 1B                    ..
        cmp     #$01                            ; 83D5 C9 01                    ..
        beq     BattleActionServices_Branch_83ED; 83D7 F0 14                    ..
        cmp     #$02                            ; 83D9 C9 02                    ..
        beq     BattleActionServices_Branch_83EA; 83DB F0 0D                    ..
        cmp     #$03                            ; 83DD C9 03                    ..
        beq     BattleActionServices_Branch_8458; 83DF F0 77                    .w
        cmp     #$04                            ; 83E1 C9 04                    ..
        beq     BattleActionServices_Entry_8403 ; 83E3 F0 1E                    ..
        sec                                     ; 83E5 38                       8
        sbc     #$01                            ; 83E6 E9 01                    ..
BattleActionServices_Branch_83E8:
        clc                                     ; 83E8 18                       .
        rts                                     ; 83E9 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_83EA:
        jmp     BattleActionServices_Branch_8530; 83EA 4C 30 85                 L0.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_83ED:
        jmp     BattleActionServices_Branch_8479; 83ED 4C 79 84                 Ly.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_83F0:
        jmp     BattleActionServices_Branch_8464; 83F0 4C 64 84                 Ld.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_83F3:
        ldx     #$03                            ; 83F3 A2 03                    ..
        brk                                     ; 83F5 00                       .
        db   $01,$6F,$61                     ; 83F6 01 6F 61                 .oa
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 83F9 C9 FF                    ..
        beq     BattleActionServices_Branch_8400; 83FB F0 03                    ..
        sta     $62EE                           ; 83FD 8D EE 62                 ..b
BattleActionServices_Branch_8400:
        jmp     BattleActionServices_Entry_8371 ; 8400 4C 71 83                 Lq.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8403:
        brk                                     ; 8403 00                       .
        db   $07,$6F,$3D                     ; 8404 07 6F 3D                 .o=
; ----------------------------------------------------------------------------
        brk                                     ; 8407 00                       .
        db   $83,$FB                         ; 8408 83 FB                    ..
; ----------------------------------------------------------------------------
        lda     #$00                            ; 840A A9 00                    ..
        sta     $6E                             ; 840C 85 6E                    .n
        lda     #$03                            ; 840E A9 03                    ..
        brk                                     ; 8410 00                       .
        db   $2D,$0F                         ; 8411 2D 0F                    -.
; ----------------------------------------------------------------------------
        sta     $F9                             ; 8413 85 F9                    ..
        brk                                     ; 8415 00                       .
        db   $62,$33                         ; 8416 62 33                    b3
; ----------------------------------------------------------------------------
        ldy     #$1D                            ; 8418 A0 1D                    ..
        cmp     #$01                            ; 841A C9 01                    ..
        beq     BattleActionServices_Branch_8420; 841C F0 02                    ..
        ldy     #$1E                            ; 841E A0 1E                    ..
BattleActionServices_Branch_8420:
        tya                                     ; 8420 98                       .
        brk                                     ; 8421 00                       .
        db   $80,$E3                         ; 8422 80 E3                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_8637 ; 8424 20 37 86                  7.
        bcs     BattleActionServices_Branch_844D; 8427 B0 24                    .$
        lda     $72E4                           ; 8429 AD E4 72                 ..r
        pha                                     ; 842C 48                       H
        and     #$FC                            ; 842D 29 FC                    ).
        sta     $00                           ; 842F 85 00                    ..
        pla                                     ; 8431 68                       h
        clc                                     ; 8432 18                       .
        adc     #$01                            ; 8433 69 01                    i.
        and     #$03                            ; 8435 29 03                    ).
        ora     $00                           ; 8437 05 00                    ..
        sta     $72E4                           ; 8439 8D E4 72                 ..r
        lda     $6E44                           ; 843C AD 44 6E                 .Dn
        and     #$FC                            ; 843F 29 FC                    ).
        ora     #$01                            ; 8441 09 01                    ..
        sta     $6E44                           ; 8443 8D 44 6E                 .Dn
        brk                                     ; 8446 00                       .
        db   $E4,$D3,$04                     ; 8447 E4 D3 04                 ...
; ----------------------------------------------------------------------------
        pla                                     ; 844A 68                       h
        pla                                     ; 844B 68                       h
        rts                                     ; 844C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_844D:
        lda     $72E7                           ; 844D AD E7 72                 ..r
        ora     #$60                            ; 8450 09 60                    .`
        sta     $72E7                           ; 8452 8D E7 72                 ..r
        pla                                     ; 8455 68                       h
        pla                                     ; 8456 68                       h
        rts                                     ; 8457 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8458:
        lda     #$41                            ; 8458 A9 41                    .A
        jsr     BattleActionServices_Entry_8706 ; 845A 20 06 87                  ..
        lda     #$00                            ; 845D A9 00                    ..
        jsr     BattleActionServices_Entry_8700 ; 845F 20 00 87                  ..
        sec                                     ; 8462 38                       8
        rts                                     ; 8463 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8464:
        jsr     BattleActionServices_Entry_85EA ; 8464 20 EA 85                  ..
        bcc     BattleActionServices_Branch_8476; 8467 90 0D                    ..
        jsr     BattleActionServices_Entry_8700 ; 8469 20 00 87                  ..
        jsr     BattleActionServices_Entry_86F4 ; 846C 20 F4 86                  ..
        lda     #$43                            ; 846F A9 43                    .C
        jsr     BattleActionServices_Entry_8706 ; 8471 20 06 87                  ..
        sec                                     ; 8474 38                       8
        rts                                     ; 8475 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8476:
        jmp     BattleActionServices_Entry_8371 ; 8476 4C 71 83                 Lq.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8479:
        ldx     $7356                           ; 8479 AE 56 73                 .Vs
        brk                                     ; 847C 00                       .
        db   $2B,$73                         ; 847D 2B 73                    +s
; ----------------------------------------------------------------------------
        tax                                     ; 847F AA                       .
        tay                                     ; 8480 A8                       .
        lda     $6BDF,x                         ; 8481 BD DF 6B                 ..k
        sta     $00                           ; 8484 85 00                    ..
        lda     #$00                            ; 8486 A9 00                    ..
        sta     $01                             ; 8488 85 01                    ..
        lda     #$06                            ; 848A A9 06                    ..
        ldx     #$00                            ; 848C A2 00                    ..
        jsr     UpperFixedEngine_Entry_C851     ; 848E 20 51 C8                  Q.
        tya                                     ; 8491 98                       .
        ldy     #$01                            ; 8492 A0 01                    ..
        cmp     #$00                            ; 8494 C9 00                    ..
        bne     BattleActionServices_Branch_849A; 8496 D0 02                    ..
        ldy     #$02                            ; 8498 A0 02                    ..
BattleActionServices_Branch_849A:
        ldx     $7356                           ; 849A AE 56 73                 .Vs
        cpy     $00                           ; 849D C4 00                    ..
        bcc     BattleActionServices_Branch_84A8; 849F 90 07                    ..
        lda     $00                           ; 84A1 A5 00                    ..
        brk                                     ; 84A3 00                       .
        db   $3C,$73                         ; 84A4 3C 73                    <s
; ----------------------------------------------------------------------------
        bne     BattleActionServices_Branch_84BE; 84A6 D0 16                    ..
BattleActionServices_Branch_84A8:
        ldy     #$02                            ; 84A8 A0 02                    ..
        brk                                     ; 84AA 00                       .
        db   $2B,$53                         ; 84AB 2B 53                    +S
; ----------------------------------------------------------------------------
        beq     BattleActionServices_Branch_84B1; 84AD F0 02                    ..
        ldy     #$01                            ; 84AF A0 01                    ..
BattleActionServices_Branch_84B1:
        sty     $6F                             ; 84B1 84 6F                    .o
BattleActionServices_Branch_84B3:
        brk                                     ; 84B3 00                       .
        db   $3C,$53                         ; 84B4 3C 53                    <S
; ----------------------------------------------------------------------------
        bne     BattleActionServices_Branch_84BE; 84B6 D0 06                    ..
        dec     $6F                             ; 84B8 C6 6F                    .o
        bpl     BattleActionServices_Branch_84B3; 84BA 10 F7                    ..
        bmi     BattleActionServices_Branch_852D; 84BC 30 6F                    0o
BattleActionServices_Branch_84BE:
        ldx     $6F                             ; 84BE A6 6F                    .o
        lda     Bank11_BattleValues,x           ; 84C0 BD 24 88                 .$.
        jsr     BattleActionServices_Entry_86E2 ; 84C3 20 E2 86                  ..
        brk                                     ; 84C6 00                       .
        db   $00,$6F                         ; 84C7 00 6F                    .o
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 84C9 C9 FF                    ..
        beq     BattleActionServices_Branch_852D; 84CB F0 60                    .`
        pha                                     ; 84CD 48                       H
        ldx     $7356                           ; 84CE AE 56 73                 .Vs
        brk                                     ; 84D1 00                       .
        db   $2B,$73                         ; 84D2 2B 73                    +s
; ----------------------------------------------------------------------------
        tax                                     ; 84D4 AA                       .
        pla                                     ; 84D5 68                       h
        sta     $6BDF,x                         ; 84D6 9D DF 6B                 ..k
        jsr     BattleActionServices_Entry_86E2 ; 84D9 20 E2 86                  ..
        brk                                     ; 84DC 00                       .
        db   $3F,$73                         ; 84DD 3F 73                    ?s
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_852D; 84DF 90 4C                    .L
        pha                                     ; 84E1 48                       H
        jsr     BattleActionServices_Entry_8706 ; 84E2 20 06 87                  ..
        ldx     $7356                           ; 84E5 AE 56 73                 .Vs
        tay                                     ; 84E8 A8                       .
        brk                                     ; 84E9 00                       .
        db   $68,$73                         ; 84EA 68 73                    hs
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_AB49 ; 84EC 20 49 AB                  I.
        pla                                     ; 84EF 68                       h
        bcc     BattleActionServices_Branch_850F; 84F0 90 1D                    ..
        pha                                     ; 84F2 48                       H
        brk                                     ; 84F3 00                       .
        db   $0C,$3F                         ; 84F4 0C 3F                    .?
; ----------------------------------------------------------------------------
        ror     a                               ; 84F6 6A                       j
        and     #$80                            ; 84F7 29 80                    ).
        sta     $7354                           ; 84F9 8D 54 73                 .Ts
        pla                                     ; 84FC 68                       h
        brk                                     ; 84FD 00                       .
        db   $0D,$3F                         ; 84FE 0D 3F                    .?
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8507; 8500 90 05                    ..
        jsr     BattleActionServices_Entry_85F6 ; 8502 20 F6 85                  ..
        bcc     BattleActionServices_Branch_852D; 8505 90 26                    .&
BattleActionServices_Branch_8507:
        lda     $7354                           ; 8507 AD 54 73                 .Ts
        jsr     BattleActionServices_Entry_8700 ; 850A 20 00 87                  ..
        sec                                     ; 850D 38                       8
        rts                                     ; 850E 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_850F:
        pha                                     ; 850F 48                       H
        brk                                     ; 8510 00                       .
        db   $07,$6F,$3D                     ; 8511 07 6F 3D                 .o=
; ----------------------------------------------------------------------------
        pla                                     ; 8514 68                       h
        cmp     #$12                            ; 8515 C9 12                    ..
        bne     BattleActionServices_Branch_8527; 8517 D0 0E                    ..
        brk                                     ; 8519 00                       .
        db   $62,$23,$43                     ; 851A 62 23 43                 b#C
; ----------------------------------------------------------------------------
        cmp     #$04                            ; 851D C9 04                    ..
        bcs     BattleActionServices_Branch_8527; 851F B0 06                    ..
        brk                                     ; 8521 00                       .
        db   $60,$1B                         ; 8522 60 1B                    `.
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_852A; 8524 4C 2A 85                 L*.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8527:
        brk                                     ; 8527 00                       .
        db   $01,$0B                         ; 8528 01 0B                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_852A:
        jsr     BattleActionServices_Entry_8752 ; 852A 20 52 87                  R.
BattleActionServices_Branch_852D:
        jmp     BattleActionServices_Entry_8371 ; 852D 4C 71 83                 Lq.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8530:
        lda     #$00                            ; 8530 A9 00                    ..
        sta     $7354                           ; 8532 8D 54 73                 .Ts
        ldx     $7356                           ; 8535 AE 56 73                 .Vs
        brk                                     ; 8538 00                       .
        db   $2D,$73                         ; 8539 2D 73                    -s
; ----------------------------------------------------------------------------
        bne     BattleActionServices_Branch_854F; 853B D0 12                    ..
        brk                                     ; 853D 00                       .
        db   $07,$6F,$3D                     ; 853E 07 6F 3D                 .o=
; ----------------------------------------------------------------------------
        lda     $7356                           ; 8541 AD 56 73                 .Vs
        sta     $F9                             ; 8544 85 F9                    ..
        brk                                     ; 8546 00                       .
        db   $02,$0B                         ; 8547 02 0B                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_8752 ; 8549 20 52 87                  R.
        jmp     BattleActionServices_Branch_852D; 854C 4C 2D 85                 L-.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_854F:
        ldx     $7356                           ; 854F AE 56 73                 .Vs
        brk                                     ; 8552 00                       .
        db   $01,$6F,$37                     ; 8553 01 6F 37                 .o7
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 8556 C9 FF                    ..
        beq     BattleActionServices_Branch_852D; 8558 F0 D3                    ..
        ldx     $7356                           ; 855A AE 56 73                 .Vs
        brk                                     ; 855D 00                       .
        db   $2C,$73                         ; 855E 2C 73                    ,s
; ----------------------------------------------------------------------------
        sta     $7355                           ; 8560 8D 55 73                 .Us
        jsr     BattleActionServices_Entry_8706 ; 8563 20 06 87                  ..
        brk                                     ; 8566 00                       .
        db   $0B,$0F                         ; 8567 0B 0F                    ..
; ----------------------------------------------------------------------------
        cpx     #$00                            ; 8569 E0 00                    ..
        bne     BattleActionServices_Branch_85A9; 856B D0 3C                    .<
        pha                                     ; 856D 48                       H
        brk                                     ; 856E 00                       .
        db   $2B,$33                         ; 856F 2B 33                    +3
; ----------------------------------------------------------------------------
        tax                                     ; 8571 AA                       .
        pla                                     ; 8572 68                       h
        brk                                     ; 8573 00                       .
        db   $0A,$0F                         ; 8574 0A 0F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_85A9; 8576 90 31                    .1
        brk                                     ; 8578 00                       .
        db   $07,$6F,$38                     ; 8579 07 6F 38                 .o8
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 857C C9 FF                    ..
        beq     BattleActionServices_Branch_852D; 857E F0 AD                    ..
        cmp     #$00                            ; 8580 C9 00                    ..
        beq     BattleActionServices_Branch_85A9; 8582 F0 25                    .%
        ldx     $7356                           ; 8584 AE 56 73                 .Vs
        brk                                     ; 8587 00                       .
        db   $3B,$93,$00                     ; 8588 3B 93 00                 ;..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8592; 858B 90 05                    ..
        brk                                     ; 858D 00                       .
        db   $0C,$0F                         ; 858E 0C 0F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_85D0; 8590 B0 3E                    .>
BattleActionServices_Branch_8592:
        brk                                     ; 8592 00                       .
        db   $2B,$53                         ; 8593 2B 53                    +S
; ----------------------------------------------------------------------------
        tax                                     ; 8595 AA                       .
        lda     $7355                           ; 8596 AD 55 73                 .Us
        brk                                     ; 8599 00                       .
        db   $0A,$0F                         ; 859A 0A 0F                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_85EA ; 859C 20 EA 85                  ..
        lda     $7354                           ; 859F AD 54 73                 .Ts
        ora     #$10                            ; 85A2 09 10                    ..
        jsr     BattleActionServices_Entry_8700 ; 85A4 20 00 87                  ..
        sec                                     ; 85A7 38                       8
        rts                                     ; 85A8 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_85A9:
        lda     $7355                           ; 85A9 AD 55 73                 .Us
        brk                                     ; 85AC 00                       .
        db   $15,$0F                         ; 85AD 15 0F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_85C6; 85AF 90 15                    ..
        brk                                     ; 85B1 00                       .
        db   $16,$0F                         ; 85B2 16 0F                    ..
; ----------------------------------------------------------------------------
        pha                                     ; 85B4 48                       H
        ror     a                               ; 85B5 6A                       j
        and     #$80                            ; 85B6 29 80                    ).
        sta     $7354                           ; 85B8 8D 54 73                 .Ts
        pla                                     ; 85BB 68                       h
        brk                                     ; 85BC 00                       .
        db   $14,$0F                         ; 85BD 14 0F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_85C6; 85BF 90 05                    ..
        jsr     BattleActionServices_Entry_85F6 ; 85C1 20 F6 85                  ..
        bcc     BattleActionServices_Branch_85E7; 85C4 90 21                    .!
BattleActionServices_Branch_85C6:
        lda     $7354                           ; 85C6 AD 54 73                 .Ts
        ora     #$20                            ; 85C9 09 20                    .
        jsr     BattleActionServices_Entry_8700 ; 85CB 20 00 87                  ..
        sec                                     ; 85CE 38                       8
        rts                                     ; 85CF 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_85D0:
        brk                                     ; 85D0 00                       .
        db   $07,$6F,$3D                     ; 85D1 07 6F 3D                 .o=
; ----------------------------------------------------------------------------
        lda     $7356                           ; 85D4 AD 56 73                 .Vs
        sta     $F9                             ; 85D7 85 F9                    ..
        lda     $7355                           ; 85D9 AD 55 73                 .Us
        sta     $FA                             ; 85DC 85 FA                    ..
        brk                                     ; 85DE 00                       .
        db   $03,$0B                         ; 85DF 03 0B                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_8752 ; 85E1 20 52 87                  R.
        jmp     BattleActionServices_Branch_8530; 85E4 4C 30 85                 L0.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_85E7:
        jmp     BattleActionServices_Entry_8371 ; 85E7 4C 71 83                 Lq.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_85EA:
        lda     #$80                            ; 85EA A9 80                    ..
        sta     $7354                           ; 85EC 8D 54 73                 .Ts
        bne     BattleActionServices_Entry_85F6 ; 85EF D0 05                    ..
        db   $A9,$00,$8D,$54,$73             ; 85F1 A9 00 8D 54 73           ...Ts
; ----------------------------------------------------------------------------
BattleActionServices_Entry_85F6:
        lda     #$33                            ; 85F6 A9 33                    .3
        ldx     $7354                           ; 85F8 AE 54 73                 .Ts
        bpl     BattleActionServices_Branch_85FF; 85FB 10 02                    ..
        lda     #$2E                            ; 85FD A9 2E                    ..
BattleActionServices_Branch_85FF:
        ldx     #$FF                            ; 85FF A2 FF                    ..
        brk                                     ; 8601 00                       .
        db   $00,$6F                         ; 8602 00 6F                    .o
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 8604 C9 FF                    ..
        beq     BattleActionServices_Branch_8635; 8606 F0 2D                    .-
        cmp     #$FE                            ; 8608 C9 FE                    ..
        bne     BattleActionServices_Branch_8617; 860A D0 0B                    ..
        lda     $7354                           ; 860C AD 54 73                 .Ts
        eor     #$80                            ; 860F 49 80                    I.
        sta     $7354                           ; 8611 8D 54 73                 .Ts
        jmp     BattleActionServices_Entry_85F6 ; 8614 4C F6 85                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8617:
        pha                                     ; 8617 48                       H
        lda     $7354                           ; 8618 AD 54 73                 .Ts
        bmi     BattleActionServices_Branch_8627; 861B 30 0A                    0.
        pla                                     ; 861D 68                       h
        tax                                     ; 861E AA                       .
        brk                                     ; 861F 00                       .
        db   $68,$73                         ; 8620 68 73                    hs
; ----------------------------------------------------------------------------
        sta     $7354                           ; 8622 8D 54 73                 .Ts
        bpl     BattleActionServices_Branch_8633; 8625 10 0C                    ..
BattleActionServices_Branch_8627:
        pla                                     ; 8627 68                       h
        brk                                     ; 8628 00                       .
        db   $32,$B3                         ; 8629 32 B3                    2.
; ----------------------------------------------------------------------------
        ora     #$80                            ; 862B 09 80                    ..
        clc                                     ; 862D 18                       .
        adc     #$08                            ; 862E 69 08                    i.
        sta     $7354                           ; 8630 8D 54 73                 .Ts
BattleActionServices_Branch_8633:
        sec                                     ; 8633 38                       8
        rts                                     ; 8634 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8635:
        clc                                     ; 8635 18                       .
        rts                                     ; 8636 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8637:
        bit     $6E44                           ; 8637 2C 44 6E                 ,Dn
        bvs     BattleActionServices_Branch_86B3; 863A 70 77                    pw
        ldx     #$FF                            ; 863C A2 FF                    ..
        brk                                     ; 863E 00                       .
        db   $29,$C3,$0E                     ; 863F 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        sta     $00                           ; 8642 85 00                    ..
        brk                                     ; 8644 00                       .
        db   $29,$C3,$00                     ; 8645 29 C3 00                 )..
; ----------------------------------------------------------------------------
        sta     $01                             ; 8648 85 01                    ..
        brk                                     ; 864A 00                       .
        db   $29,$C3,$0D                     ; 864B 29 C3 0D                 )..
; ----------------------------------------------------------------------------
        ora     $01                             ; 864E 05 01                    ..
        sta     $01                             ; 8650 85 01                    ..
        brk                                     ; 8652 00                       .
        db   $29,$C3,$02                     ; 8653 29 C3 02                 )..
; ----------------------------------------------------------------------------
        ora     $01                             ; 8656 05 01                    ..
        sta     $01                             ; 8658 85 01                    ..
        brk                                     ; 865A 00                       .
        db   $29,$C3,$11                     ; 865B 29 C3 11                 )..
; ----------------------------------------------------------------------------
        ora     $01                             ; 865E 05 01                    ..
        and     $00                           ; 8660 25 00                    %.
        cmp     $00                           ; 8662 C5 00                    ..
        beq     BattleActionServices_Branch_86B1; 8664 F0 4B                    .K
        lda     $6E44                           ; 8666 AD 44 6E                 .Dn
        and     #$03                            ; 8669 29 03                    ).
        cmp     #$02                            ; 866B C9 02                    ..
        beq     BattleActionServices_Branch_86B1; 866D F0 42                    .B
        lda     $72E4                           ; 866F AD E4 72                 ..r
        and     #$03                            ; 8672 29 03                    ).
        cmp     #$03                            ; 8674 C9 03                    ..
        beq     BattleActionServices_Branch_86B1; 8676 F0 39                    .9
        tax                                     ; 8678 AA                       .
        lda     $8852,x                         ; 8679 BD 52 88                 .R.
        sta     $01                             ; 867C 85 01                    ..
        lda     #$00                            ; 867E A9 00                    ..
        sta     $00                           ; 8680 85 00                    ..
        lsr     $01                             ; 8682 46 01                    F.
        ror     $00                           ; 8684 66 00                    f.
        lsr     $01                             ; 8686 46 01                    F.
        ror     $00                           ; 8688 66 00                    f.
        lsr     $01                             ; 868A 46 01                    F.
        ror     $00                           ; 868C 66 00                    f.
        jsr     BattleActionServices_Entry_86B5 ; 868E 20 B5 86                  ..
        lda     $75                             ; 8691 A5 75                    .u
        sec                                     ; 8693 38                       8
        sbc     $7396                           ; 8694 ED 96 73                 ..s
        bcs     BattleActionServices_Branch_869D; 8697 B0 04                    ..
        lda     #$08                            ; 8699 A9 08                    ..
        bne     BattleActionServices_Branch_86A5; 869B D0 08                    ..
BattleActionServices_Branch_869D:
        cmp     #$05                            ; 869D C9 05                    ..
        bcs     BattleActionServices_Branch_86B1; 869F B0 10                    ..
        tax                                     ; 86A1 AA                       .
        lda     $8856,x                         ; 86A2 BD 56 88                 .V.
BattleActionServices_Branch_86A5:
        ldx     #$00                            ; 86A5 A2 00                    ..
        jsr     MultiplyPointerWord             ; 86A7 20 27 C8                  '.
        brk                                     ; 86AA 00                       .
        db   $1B,$0F                         ; 86AB 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     $01                             ; 86AD C5 01                    ..
        bcc     BattleActionServices_Branch_86B3; 86AF 90 02                    ..
BattleActionServices_Branch_86B1:
        sec                                     ; 86B1 38                       8
        rts                                     ; 86B2 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_86B3:
        clc                                     ; 86B3 18                       .
        rts                                     ; 86B4 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_86B5:
        brk                                     ; 86B5 00                       .
        db   $64,$63,$09                     ; 86B6 64 63 09                 dc.
; ----------------------------------------------------------------------------
        lda     SaveCurrentChapterMinus1        ; 86B9 AD 5A 61                 .Za
        cmp     #$04                            ; 86BC C9 04                    ..
        bcc     BattleActionServices_Branch_86E1; 86BE 90 21                    .!
        lda     $00                           ; 86C0 A5 00                    ..
        pha                                     ; 86C2 48                       H
        lda     $01                             ; 86C3 A5 01                    ..
        pha                                     ; 86C5 48                       H
        lda     #$00                            ; 86C6 A9 00                    ..
        brk                                     ; 86C8 00                       .
        db   $0A,$2F                         ; 86C9 0A 2F                    ./
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_86D5; 86CB B0 08                    ..
        brk                                     ; 86CD 00                       .
        db   $64,$63,$09                     ; 86CE 64 63 09                 dc.
; ----------------------------------------------------------------------------
        ldx     $75                             ; 86D1 A6 75                    .u
        bne     BattleActionServices_Branch_86D9; 86D3 D0 04                    ..
BattleActionServices_Branch_86D5:
        brk                                     ; 86D5 00                       .
        db   $0F,$53                         ; 86D6 0F 53                    .S
; ----------------------------------------------------------------------------
        tax                                     ; 86D8 AA                       .
BattleActionServices_Branch_86D9:
        stx     $75                             ; 86D9 86 75                    .u
        pla                                     ; 86DB 68                       h
        sta     $01                             ; 86DC 85 01                    ..
        pla                                     ; 86DE 68                       h
        sta     $00                           ; 86DF 85 00                    ..
BattleActionServices_Branch_86E1:
        rts                                     ; 86E1 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_86E2:
        pha                                     ; 86E2 48                       H
        ldx     $7356                           ; 86E3 AE 56 73                 .Vs
        brk                                     ; 86E6 00                       .
        db   $46,$93,$1C                     ; 86E7 46 93 1C                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_86F2; 86EA 90 06                    ..
        lda     $73                             ; 86EC A5 73                    .s
        brk                                     ; 86EE 00                       .
        db   $67,$73                         ; 86EF 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; 86F1 AA                       .
BattleActionServices_Branch_86F2:
        pla                                     ; 86F2 68                       h
        rts                                     ; 86F3 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_86F4:
        ldx     $7356                           ; 86F4 AE 56 73                 .Vs
        brk                                     ; 86F7 00                       .
        db   $68,$73                         ; 86F8 68 73                    hs
; ----------------------------------------------------------------------------
        ldx     $96                             ; 86FA A6 96                    ..
        sta     BattleSlotDescriptors,x         ; 86FC 9D F4 72                 ..r
        rts                                     ; 86FF 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8700:
        ldx     $96                             ; 8700 A6 96                    ..
        sta     $7300,x                         ; 8702 9D 00 73                 ..s
        rts                                     ; 8705 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8706:
        ldx     $96                             ; 8706 A6 96                    ..
        sta     $7324,x                         ; 8708 9D 24 73                 .$s
        rts                                     ; 870B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_870C:
        ldx     #$00                            ; 870C A2 00                    ..
BattleActionServices_Branch_870E:
        brk                                     ; 870E 00                       .
        db   $2B,$73                         ; 870F 2B 73                    +s
; ----------------------------------------------------------------------------
        beq     BattleActionServices_Branch_871E; 8711 F0 0B                    ..
        brk                                     ; 8713 00                       .
        db   $62,$63,$40                     ; 8714 62 63 40                 bc@
; ----------------------------------------------------------------------------
        inx                                     ; 8717 E8                       .
        cpx     $72                             ; 8718 E4 72                    .r
        bne     BattleActionServices_Branch_870E; 871A D0 F2                    ..
        clc                                     ; 871C 18                       .
        rts                                     ; 871D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_871E:
        sec                                     ; 871E 38                       8
        rts                                     ; 871F 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8720:
        ldx     #$00                            ; 8720 A2 00                    ..
BattleActionServices_Branch_8722:
        brk                                     ; 8722 00                       .
        db   $68,$73                         ; 8723 68 73                    hs
; ----------------------------------------------------------------------------
        sta     BattleSlotDescriptors,x         ; 8725 9D F4 72                 ..r
        brk                                     ; 8728 00                       .
        db   $46,$93,$18                     ; 8729 46 93 18                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8748; 872C B0 1A                    ..
        brk                                     ; 872E 00                       .
        db   $46,$93,$26                     ; 872F 46 93 26                 F.&
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8748; 8732 B0 14                    ..
        brk                                     ; 8734 00                       .
        db   $2B,$53                         ; 8735 2B 53                    +S
; ----------------------------------------------------------------------------
        cmp     #$08                            ; 8737 C9 08                    ..
        bcc     BattleActionServices_Branch_8740; 8739 90 05                    ..
        stx     $96                             ; 873B 86 96                    ..
        jsr     BattleActionServices_Entry_8364 ; 873D 20 64 83                  d.
BattleActionServices_Branch_8740:
        lda     BattleSlotDescriptors,x         ; 8740 BD F4 72                 ..r
        ora     #$10                            ; 8743 09 10                    ..
        sta     BattleSlotDescriptors,x         ; 8745 9D F4 72                 ..r
BattleActionServices_Branch_8748:
        inx                                     ; 8748 E8                       .
        brk                                     ; 8749 00                       .
        db   $62,$63,$40                     ; 874A 62 63 40                 bc@
; ----------------------------------------------------------------------------
        cpx     $72                             ; 874D E4 72                    .r
        bne     BattleActionServices_Branch_8722; 874F D0 D1                    ..
        rts                                     ; 8751 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8752:
        ldx     #$39                            ; 8752 A2 39                    .9
        jmp     UpperFixedEngine_Entry_C90C     ; 8754 4C 0C C9                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8757:
        brk                                     ; 8757 00                       .
        db   $07,$6F,$3B                     ; 8758 07 6F 3B                 .o;
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 875B C9 FF                    ..
        beq     BattleActionServices_Branch_8776; 875D F0 17                    ..
        sta     $7358                           ; 875F 8D 58 73                 .Xs
        lda     $7357                           ; 8762 AD 57 73                 .Ws
        cmp     #$FF                            ; 8765 C9 FF                    ..
        bne     BattleActionServices_Branch_8771; 8767 D0 08                    ..
        brk                                     ; 8769 00                       .
        db   $07,$6F,$3C                     ; 876A 07 6F 3C                 .o<
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 876D C9 FF                    ..
        beq     BattleActionServices_Branch_8776; 876F F0 05                    ..
BattleActionServices_Branch_8771:
        sta     $7359                           ; 8771 8D 59 73                 .Ys
        sec                                     ; 8774 38                       8
        rts                                     ; 8775 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8776:
        clc                                     ; 8776 18                       .
        rts                                     ; 8777 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8778:
        brk                                     ; 8778 00                       .
        db   $00,$6F                         ; 8779 00 6F                    .o
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 877B C9 FF                    ..
        beq     BattleActionServices_Branch_8784; 877D F0 05                    ..
        sta     $7357                           ; 877F 8D 57 73                 .Ws
        sec                                     ; 8782 38                       8
        rts                                     ; 8783 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8784:
        clc                                     ; 8784 18                       .
        rts                                     ; 8785 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8786:
        pha                                     ; 8786 48                       H
        txa                                     ; 8787 8A                       .
        pha                                     ; 8788 48                       H
        tya                                     ; 8789 98                       .
        pha                                     ; 878A 48                       H
        jsr     BattleActionServices_Entry_87E6 ; 878B 20 E6 87                  ..
        ldx     #$04                            ; 878E A2 04                    ..
        lda     $6E45                           ; 8790 AD 45 6E                 .En
        cmp     #$AE                            ; 8793 C9 AE                    ..
        beq     BattleActionServices_Branch_879B; 8795 F0 04                    ..
        cmp     #$BC                            ; 8797 C9 BC                    ..
        bne     BattleActionServices_Branch_879C; 8799 D0 01                    ..
BattleActionServices_Branch_879B:
        dex                                     ; 879B CA                       .
BattleActionServices_Branch_879C:
        txa                                     ; 879C 8A                       .
        asl     a                               ; 879D 0A                       .
        asl     a                               ; 879E 0A                       .
        asl     a                               ; 879F 0A                       .
        asl     a                               ; 87A0 0A                       .
        ora     #$01                            ; 87A1 09 01                    ..
        sta     $04F2                           ; 87A3 8D F2 04                 ...
        lda     #$1E                            ; 87A6 A9 1E                    ..
        sta     $04F3                           ; 87A8 8D F3 04                 ...
        txa                                     ; 87AB 8A                       .
        pha                                     ; 87AC 48                       H
        brk                                     ; 87AD 00                       .
        db   $12,$DF                         ; 87AE 12 DF                    ..
; ----------------------------------------------------------------------------
        pla                                     ; 87B0 68                       h
        tax                                     ; 87B1 AA                       .
        dex                                     ; 87B2 CA                       .
        bne     BattleActionServices_Branch_879C; 87B3 D0 E7                    ..
        pla                                     ; 87B5 68                       h
        tay                                     ; 87B6 A8                       .
        pla                                     ; 87B7 68                       h
        tax                                     ; 87B8 AA                       .
        pla                                     ; 87B9 68                       h
        rts                                     ; 87BA 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_87BB:
        pha                                     ; 87BB 48                       H
        txa                                     ; 87BC 8A                       .
        pha                                     ; 87BD 48                       H
        tya                                     ; 87BE 98                       .
        pha                                     ; 87BF 48                       H
        jsr     BattleActionServices_Entry_87E6 ; 87C0 20 E6 87                  ..
        ldx     #$0D                            ; 87C3 A2 0D                    ..
BattleActionServices_Branch_87C5:
        txa                                     ; 87C5 8A                       .
        asl     a                               ; 87C6 0A                       .
        asl     a                               ; 87C7 0A                       .
        asl     a                               ; 87C8 0A                       .
        asl     a                               ; 87C9 0A                       .
        ora     #$01                            ; 87CA 09 01                    ..
        sta     $04F2                           ; 87CC 8D F2 04                 ...
        lda     #$1E                            ; 87CF A9 1E                    ..
        sta     $04F3                           ; 87D1 8D F3 04                 ...
        txa                                     ; 87D4 8A                       .
        pha                                     ; 87D5 48                       H
        brk                                     ; 87D6 00                       .
        db   $13,$DF                         ; 87D7 13 DF                    ..
; ----------------------------------------------------------------------------
        pla                                     ; 87D9 68                       h
        tax                                     ; 87DA AA                       .
        dex                                     ; 87DB CA                       .
        cpx     #$08                            ; 87DC E0 08                    ..
        bne     BattleActionServices_Branch_87C5; 87DE D0 E5                    ..
        pla                                     ; 87E0 68                       h
        tay                                     ; 87E1 A8                       .
        pla                                     ; 87E2 68                       h
        tax                                     ; 87E3 AA                       .
        pla                                     ; 87E4 68                       h
        rts                                     ; 87E5 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_87E6:
        lda     #$00                            ; 87E6 A9 00                    ..
        tax                                     ; 87E8 AA                       .
BattleActionServices_Branch_87E9:
        sta     $0480,x                         ; 87E9 9D 80 04                 ...
        inx                                     ; 87EC E8                       .
        cpx     #$40                            ; 87ED E0 40                    .@
        bne     BattleActionServices_Branch_87E9; 87EF D0 F8                    ..
        tax                                     ; 87F1 AA                       .
BattleActionServices_Branch_87F2:
        sta     $04E0,x                         ; 87F2 9D E0 04                 ...
        inx                                     ; 87F5 E8                       .
        cpx     #$10                            ; 87F6 E0 10                    ..
        bne     BattleActionServices_Branch_87F2; 87F8 D0 F8                    ..
        rts                                     ; 87FA 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_87FB:
        lda     #$FF                            ; 87FB A9 FF                    ..
        sta     $7357                           ; 87FD 8D 57 73                 .Ws
        sta     $7358                           ; 8800 8D 58 73                 .Xs
        sta     $7359                           ; 8803 8D 59 73                 .Ys
        sta     $735A                           ; 8806 8D 5A 73                 .Zs
        rts                                     ; 8809 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_880A:
        sta     $01                             ; 880A 85 01                    ..
        ldx     #$00                            ; 880C A2 00                    ..
        stx     $02                           ; 880E 86 02                    ..
BattleActionServices_Branch_8810:
        lda     $01                             ; 8810 A5 01                    ..
        brk                                     ; 8812 00                       .
        db   $46,$63,$41                     ; 8813 46 63 41                 FcA
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_881A; 8816 90 02                    ..
        inc     $02                           ; 8818 E6 02                    ..
BattleActionServices_Branch_881A:
        inx                                     ; 881A E8                       .
        cpx     $00                           ; 881B E4 00                    ..
        bcc     BattleActionServices_Branch_8810; 881D 90 F1                    ..
        lda     $02                           ; 881F A5 02                    ..
        cmp     $00                           ; 8821 C5 00                    ..
        rts                                     ; 8823 60                       `
; ----------------------------------------------------------------------------
Bank11_BattleValues:
        db   $36,$35,$34                     ; 8824 36 35 34                 654
        db   $2F,$30,$31,$32                 ; 8827 2F 30 31 32              /012
        db   $00,$01,$04,$02,$05,$06,$07,$08 ; 882B 00 01 04 02 05 06 07 08  ........
        db   $00,$04,$03,$02,$05,$06,$07,$08 ; 8833 00 04 03 02 05 06 07 08  ........
        db   $00,$01,$03,$02,$05,$06,$07,$08 ; 883B 00 01 03 02 05 06 07 08  ........
        db   $00,$03,$02,$08,$05,$06,$07,$00 ; 8843 00 03 02 08 05 06 07 00  ........
        db   $00,$01,$02,$00,$01,$00,$02     ; 884B 00 01 02 00 01 00 02     .......
        db   $80,$80,$40,$00                 ; 8852 80 80 40 00              ..@.
        db   $08,$07,$06,$05,$04             ; 8856 08 07 06 05 04           .....
; ----------------------------------------------------------------------------
BattleActionServices_Entry_885B:
        jsr     BattleActionServices_Entry_80C4 ; 885B 20 C4 80                  ..
        bcc     BattleActionServices_Branch_887D; 885E 90 1D                    ..
        brk                                     ; 8860 00                       .
        db   $07,$6F,$3D                     ; 8861 07 6F 3D                 .o=
; ----------------------------------------------------------------------------
        lda     #$00                            ; 8864 A9 00                    ..
        sta     $735B                           ; 8866 8D 5B 73                 .[s
BattleActionServices_Branch_8869:
        ldx     #$00                            ; 8869 A2 00                    ..
BattleActionServices_Branch_886B:
        lda     $7348,x                         ; 886B BD 48 73                 .Hs
        and     #$0F                            ; 886E 29 0F                    ).
        cmp     $735B                           ; 8870 CD 5B 73                 .[s
        beq     BattleActionServices_Branch_887E; 8873 F0 09                    ..
        inx                                     ; 8875 E8                       .
        cpx     #$0C                            ; 8876 E0 0C                    ..
        bne     BattleActionServices_Branch_886B; 8878 D0 F1                    ..
        jsr     BattleActionServices_Entry_BC5A ; 887A 20 5A BC                  Z.
BattleActionServices_Branch_887D:
        rts                                     ; 887D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_887E:
        stx     $96                             ; 887E 86 96                    ..
        inc     $735B                           ; 8880 EE 5B 73                 .[s
        brk                                     ; 8883 00                       .
        db   $2B,$2F                         ; 8884 2B 2F                    +/
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_80C4 ; 8886 20 C4 80                  ..
        bcc     BattleActionServices_Branch_887D; 8889 90 F2                    ..
        jsr     BattleActionServices_Entry_BC5A ; 888B 20 5A BC                  Z.
        jsr     BattleActionServices_Entry_8894 ; 888E 20 94 88                  ..
        jmp     BattleActionServices_Branch_8869; 8891 4C 69 88                 Li.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8894:
        jsr     BattleActionServices_Entry_8D9D ; 8894 20 9D 8D                  ..
        bcc     BattleActionServices_Branch_88C6; 8897 90 2D                    .-
        jsr     BattleActionServices_Entry_8DAB ; 8899 20 AB 8D                  ..
        bcc     BattleActionServices_Branch_88C6; 889C 90 28                    .(
        jsr     BattleActionServices_Entry_8DCC ; 889E 20 CC 8D                  ..
        bcc     BattleActionServices_Branch_88C6; 88A1 90 23                    .#
        brk                                     ; 88A3 00                       .
        db   $04,$1F                         ; 88A4 04 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$02                            ; 88A6 C9 02                    ..
        bcs     BattleActionServices_Branch_88C6; 88A8 B0 1C                    ..
        jsr     BattleActionServices_Entry_8DDC ; 88AA 20 DC 8D                  ..
        jsr     BattleActionServices_Entry_89F1 ; 88AD 20 F1 89                  ..
        bcc     BattleActionServices_Branch_88C6; 88B0 90 14                    ..
        jsr     BattleActionServices_Entry_BBA1 ; 88B2 20 A1 BB                  ..
        jsr     BattleActionServices_Entry_BBDF ; 88B5 20 DF BB                  ..
        bcc     BattleActionServices_Branch_88C6; 88B8 90 0C                    ..
        jsr     BattleActionServices_Entry_BBED ; 88BA 20 ED BB                  ..
        bcc     BattleActionServices_Branch_88C6; 88BD 90 07                    ..
        jsr     BattleActionServices_Entry_88CA ; 88BF 20 CA 88                  ..
        jsr     BattleActionServices_Entry_A3F7 ; 88C2 20 F7 A3                  ..
        rts                                     ; 88C5 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_88C6:
        jsr     BattleActionServices_Entry_AC4D ; 88C6 20 4D AC                  M.
        rts                                     ; 88C9 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_88CA:
        lda     SaveCurrentChapterMinus1        ; 88CA AD 5A 61                 .Za
        cmp     #$04                            ; 88CD C9 04                    ..
        bcc     BattleActionServices_Branch_88D4; 88CF 90 03                    ..
        brk                                     ; 88D1 00                       .
        db   $00,$3F                         ; 88D2 00 3F                    .?
; ----------------------------------------------------------------------------
BattleActionServices_Branch_88D4:
        jsr     BattleActionServices_Entry_8A3A ; 88D4 20 3A 8A                  :.
BattleActionServices_Branch_88D7:
        jsr     BattleActionServices_Entry_8DDC ; 88D7 20 DC 8D                  ..
        jsr     BattleActionServices_Entry_8A55 ; 88DA 20 55 8A                  U.
        jsr     BattleActionServices_Entry_8ACF ; 88DD 20 CF 8A                  ..
        bcc     BattleActionServices_Branch_8924; 88E0 90 42                    .B
        jsr     BattleActionServices_Entry_AD25 ; 88E2 20 25 AD                  %.
        bcc     BattleActionServices_Branch_8924; 88E5 90 3D                    .=
        jsr     BattleActionServices_Entry_B286 ; 88E7 20 86 B2                  ..
        jsr     BattleActionServices_Entry_B52D ; 88EA 20 2D B5                  -.
        jsr     BattleActionServices_Entry_B871 ; 88ED 20 71 B8                  q.
        bcc     BattleActionServices_Branch_8924; 88F0 90 32                    .2
        jsr     BattleActionServices_Entry_BCF1 ; 88F2 20 F1 BC                  ..
        bcc     BattleActionServices_Branch_8924; 88F5 90 2D                    .-
        jsr     BattleActionServices_Entry_8DE5 ; 88F7 20 E5 8D                  ..
        jsr     BattleActionServices_Entry_ABB5 ; 88FA 20 B5 AB                  ..
        bcc     BattleActionServices_Branch_8924; 88FD 90 25                    .%
        jsr     BattleActionServices_Entry_AFFF ; 88FF 20 FF AF                  ..
        jsr     BattleActionServices_Entry_8C49 ; 8902 20 49 8C                  I.
        bcc     BattleActionServices_Branch_8924; 8905 90 1D                    ..
        jsr     BattleActionServices_Entry_B2F5 ; 8907 20 F5 B2                  ..
        bcc     BattleActionServices_Branch_8924; 890A 90 18                    ..
        jsr     BattleActionServices_Entry_893A ; 890C 20 3A 89                  :.
        jsr     BattleActionServices_Entry_AC3A ; 890F 20 3A AC                  :.
        jsr     BattleActionServices_Entry_80C4 ; 8912 20 C4 80                  ..
        bcc     BattleActionServices_Branch_8924; 8915 90 0D                    ..
        inc     $735C                           ; 8917 EE 5C 73                 .\s
        lda     $735C                           ; 891A AD 5C 73                 .\s
        cmp     $735D                           ; 891D CD 5D 73                 .]s
        bcc     BattleActionServices_Branch_88D7; 8920 90 B5                    ..
        bcs     BattleActionServices_Branch_8927; 8922 B0 03                    ..
BattleActionServices_Branch_8924:
        jsr     BattleActionServices_Entry_AC4D ; 8924 20 4D AC                  M.
BattleActionServices_Branch_8927:
        brk                                     ; 8927 00                       .
        db   $06,$1F                         ; 8928 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8939; 892A 90 0D                    ..
        brk                                     ; 892C 00                       .
        db   $23,$A3                         ; 892D 23 A3                    #.
; ----------------------------------------------------------------------------
        cmp     #$02                            ; 892F C9 02                    ..
        bcs     BattleActionServices_Branch_8939; 8931 B0 06                    ..
        brk                                     ; 8933 00                       .
        db   $1D,$0F                         ; 8934 1D 0F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8936 00                       .
        db   $1E,$0F                         ; 8937 1E 0F                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8939:
        rts                                     ; 8939 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_893A:
        brk                                     ; 893A 00                       .
        db   $03,$1F                         ; 893B 03 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 893D 00                       .
        db   $0E,$3F                         ; 893E 0E 3F                    .?
; ----------------------------------------------------------------------------
        cmp     #$02                            ; 8940 C9 02                    ..
        bcc     BattleActionServices_Branch_89A7; 8942 90 63                    .c
        cmp     #$03                            ; 8944 C9 03                    ..
        beq     BattleActionServices_Branch_8952; 8946 F0 0A                    ..
        brk                                     ; 8948 00                       .
        db   $01,$1F                         ; 8949 01 1F                    ..
; ----------------------------------------------------------------------------
        bmi     BattleActionServices_Branch_8952; 894B 30 05                    0.
        brk                                     ; 894D 00                       .
        db   $0E,$1F                         ; 894E 0E 1F                    ..
; ----------------------------------------------------------------------------
        bmi     BattleActionServices_Branch_89A7; 8950 30 55                    0U
BattleActionServices_Branch_8952:
        jsr     BattleActionServices_Entry_ACDC ; 8952 20 DC AC                  ..
        bcc     BattleActionServices_Branch_89A1; 8955 90 4A                    .J
        lda     #$00                            ; 8957 A9 00                    ..
        sta     $735E                           ; 8959 8D 5E 73                 .^s
BattleActionServices_Branch_895C:
        jsr     BattleActionServices_Entry_904A ; 895C 20 4A 90                  J.
        jsr     BattleActionServices_Entry_9611 ; 895F 20 11 96                  ..
        bcc     BattleActionServices_Branch_8989; 8962 90 25                    .%
        jsr     BattleActionServices_Entry_ACBF ; 8964 20 BF AC                  ..
        bcc     BattleActionServices_Branch_8989; 8967 90 20                    .
        jsr     BattleActionServices_Entry_AC79 ; 8969 20 79 AC                  y.
        bcc     BattleActionServices_Branch_8989; 896C 90 1B                    ..
        jsr     BattleActionServices_Entry_8D0D ; 896E 20 0D 8D                  ..
        bcc     BattleActionServices_Branch_8989; 8971 90 16                    ..
        jsr     BattleActionServices_Entry_AD51 ; 8973 20 51 AD                  Q.
        bcc     BattleActionServices_Branch_8989; 8976 90 11                    ..
        jsr     BattleActionServices_Entry_8C88 ; 8978 20 88 8C                  ..
        jsr     BattleActionServices_Entry_80C4 ; 897B 20 C4 80                  ..
        bcc     BattleActionServices_Branch_8986; 897E 90 06                    ..
        jsr     BattleActionServices_Entry_A873 ; 8980 20 73 A8                  s.
        jsr     BattleActionServices_Entry_A8BC ; 8983 20 BC A8                  ..
BattleActionServices_Branch_8986:
        jsr     BattleActionServices_Entry_A3F7 ; 8986 20 F7 A3                  ..
BattleActionServices_Branch_8989:
        jsr     BattleActionServices_Entry_80C4 ; 8989 20 C4 80                  ..
        bcc     BattleActionServices_Branch_89A1; 898C 90 13                    ..
        brk                                     ; 898E 00                       .
        db   $02,$1F                         ; 898F 02 1F                    ..
; ----------------------------------------------------------------------------
        bmi     BattleActionServices_Branch_8997; 8991 30 04                    0.
        lda     #$04                            ; 8993 A9 04                    ..
        bne     BattleActionServices_Branch_8999; 8995 D0 02                    ..
BattleActionServices_Branch_8997:
        lda     #$08                            ; 8997 A9 08                    ..
BattleActionServices_Branch_8999:
        inc     $735E                           ; 8999 EE 5E 73                 .^s
        cmp     $735E                           ; 899C CD 5E 73                 .^s
        bne     BattleActionServices_Branch_895C; 899F D0 BB                    ..
BattleActionServices_Branch_89A1:
        jsr     BattleActionServices_Entry_A3F7 ; 89A1 20 F7 A3                  ..
        jmp     BattleActionServices_Branch_8CAF; 89A4 4C AF 8C                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_89A7:
        jsr     BattleActionServices_Entry_904A ; 89A7 20 4A 90                  J.
        jsr     BattleActionServices_Entry_9518 ; 89AA 20 18 95                  ..
        bcc     BattleActionServices_Branch_89EB; 89AD 90 3C                    .<
        brk                                     ; 89AF 00                       .
        db   $07,$1F                         ; 89B0 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_89BD; 89B2 B0 09                    ..
        bvs     BattleActionServices_Branch_89BD; 89B4 70 07                    p.
        brk                                     ; 89B6 00                       .
        db   $E4,$D3,$6D                     ; 89B7 E4 D3 6D                 ..m
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_89EB; 89BA 4C EB 89                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_89BD:
        brk                                     ; 89BD 00                       .
        db   $03,$1F                         ; 89BE 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$43                            ; 89C0 C9 43                    .C
        bne     BattleActionServices_Branch_89C9; 89C2 D0 05                    ..
        brk                                     ; 89C4 00                       .
        db   $07,$1F                         ; 89C5 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_89CE; 89C7 B0 05                    ..
BattleActionServices_Branch_89C9:
        jsr     BattleActionServices_Entry_ACBF ; 89C9 20 BF AC                  ..
        bcc     BattleActionServices_Branch_89EB; 89CC 90 1D                    ..
BattleActionServices_Branch_89CE:
        jsr     BattleActionServices_Entry_AC79 ; 89CE 20 79 AC                  y.
        bcc     BattleActionServices_Branch_89EB; 89D1 90 18                    ..
        jsr     BattleActionServices_Entry_8D0D ; 89D3 20 0D 8D                  ..
        bcc     BattleActionServices_Branch_89EB; 89D6 90 13                    ..
        jsr     BattleActionServices_Entry_AD51 ; 89D8 20 51 AD                  Q.
        bcc     BattleActionServices_Branch_89EB; 89DB 90 0E                    ..
        jsr     BattleActionServices_Entry_8C88 ; 89DD 20 88 8C                  ..
        jsr     BattleActionServices_Entry_80C4 ; 89E0 20 C4 80                  ..
        bcc     BattleActionServices_Branch_89EB; 89E3 90 06                    ..
        jsr     BattleActionServices_Entry_A873 ; 89E5 20 73 A8                  s.
        jsr     BattleActionServices_Entry_A8BC ; 89E8 20 BC A8                  ..
BattleActionServices_Branch_89EB:
        jsr     BattleActionServices_Entry_A3F7 ; 89EB 20 F7 A3                  ..
        jmp     BattleActionServices_Branch_8CAF; 89EE 4C AF 8C                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_89F1:
        lda     $72E5                           ; 89F1 AD E5 72                 ..r
        bpl     BattleActionServices_Branch_8A1F; 89F4 10 29                    .)
        lda     $72E6                           ; 89F6 AD E6 72                 ..r
        and     #$0F                            ; 89F9 29 0F                    ).
        sta     $00                           ; 89FB 85 00                    ..
        brk                                     ; 89FD 00                       .
        db   $67,$73                         ; 89FE 67 73                    gs
; ----------------------------------------------------------------------------
        bvc     BattleActionServices_Branch_8A21; 8A00 50 1F                    P.
        brk                                     ; 8A02 00                       .
        db   $01,$1F                         ; 8A03 01 1F                    ..
; ----------------------------------------------------------------------------
        cmp     $00                           ; 8A05 C5 00                    ..
        bne     BattleActionServices_Branch_8A38; 8A07 D0 2F                    ./
        lda     $72E6                           ; 8A09 AD E6 72                 ..r
        and     #$C0                            ; 8A0C 29 C0                    ).
        beq     BattleActionServices_Branch_8A21; 8A0E F0 11                    ..
        sec                                     ; 8A10 38                       8
        sbc     #$40                            ; 8A11 E9 40                    .@
        sta     $00                           ; 8A13 85 00                    ..
        lda     $72E6                           ; 8A15 AD E6 72                 ..r
        and     #$3F                            ; 8A18 29 3F                    )?
        ora     $00                           ; 8A1A 05 00                    ..
        sta     $72E6                           ; 8A1C 8D E6 72                 ..r
BattleActionServices_Branch_8A1F:
        sec                                     ; 8A1F 38                       8
        rts                                     ; 8A20 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8A21:
        lda     $72E5                           ; 8A21 AD E5 72                 ..r
        and     #$7F                            ; 8A24 29 7F                    ).
        sta     $72E5                           ; 8A26 8D E5 72                 ..r
        brk                                     ; 8A29 00                       .
        db   $E1,$D3,$89                     ; 8A2A E1 D3 89                 ...
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_9053 ; 8A2D 20 53 90                  S.
        lda     $6E44                           ; 8A30 AD 44 6E                 .Dn
        ora     #$03                            ; 8A33 09 03                    ..
        sta     $6E44                           ; 8A35 8D 44 6E                 .Dn
BattleActionServices_Branch_8A38:
        clc                                     ; 8A38 18                       .
        rts                                     ; 8A39 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8A3A:
        ldx     #$00                            ; 8A3A A2 00                    ..
        stx     $735C                           ; 8A3C 8E 5C 73                 .\s
        inx                                     ; 8A3F E8                       .
        lda     $96                             ; 8A40 A5 96                    ..
        cmp     #$04                            ; 8A42 C9 04                    ..
        bcc     BattleActionServices_Branch_8A51; 8A44 90 0B                    ..
        tax                                     ; 8A46 AA                       .
        lda     $7348,x                         ; 8A47 BD 48 73                 .Hs
        and     #$F0                            ; 8A4A 29 F0                    ).
        lsr     a                               ; 8A4C 4A                       J
        lsr     a                               ; 8A4D 4A                       J
        lsr     a                               ; 8A4E 4A                       J
        lsr     a                               ; 8A4F 4A                       J
        tax                                     ; 8A50 AA                       .
BattleActionServices_Branch_8A51:
        stx     $735D                           ; 8A51 8E 5D 73                 .]s
        rts                                     ; 8A54 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8A55:
        brk                                     ; 8A55 00                       .
        db   $06,$1F                         ; 8A56 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8A76; 8A58 90 1C                    ..
        brk                                     ; 8A5A 00                       .
        db   $29,$C3,$02                     ; 8A5B 29 C3 02                 )..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8A67; 8A5E B0 07                    ..
        brk                                     ; 8A60 00                       .
        db   $23,$A3                         ; 8A61 23 A3                    #.
; ----------------------------------------------------------------------------
        cmp     #$02                            ; 8A63 C9 02                    ..
        bcc     BattleActionServices_Branch_8AAF; 8A65 90 48                    .H
BattleActionServices_Branch_8A67:
        lda     $735C                           ; 8A67 AD 5C 73                 .\s
        sta     $01                             ; 8A6A 85 01                    ..
        brk                                     ; 8A6C 00                       .
        db   $33,$0F                         ; 8A6D 33 0F                    3.
; ----------------------------------------------------------------------------
        brk                                     ; 8A6F 00                       .
        db   $1D,$0F                         ; 8A70 1D 0F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8A72 00                       .
        db   $1E,$0F                         ; 8A73 1E 0F                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 8A75 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8A76:
        brk                                     ; 8A76 00                       .
        db   $2B,$53                         ; 8A77 2B 53                    +S
; ----------------------------------------------------------------------------
        cmp     #$08                            ; 8A79 C9 08                    ..
        bcc     BattleActionServices_Branch_8AB0; 8A7B 90 33                    .3
        brk                                     ; 8A7D 00                       .
        db   $46,$93,$12                     ; 8A7E 46 93 12                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8AA7; 8A81 B0 24                    .$
        brk                                     ; 8A83 00                       .
        db   $46,$93,$18                     ; 8A84 46 93 18                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8ABD; 8A87 B0 34                    .4
        brk                                     ; 8A89 00                       .
        db   $46,$93,$26                     ; 8A8A 46 93 26                 F.&
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8AC2; 8A8D B0 33                    .3
        lda     #$23                            ; 8A8F A9 23                    .#
        sta     $6E59                           ; 8A91 8D 59 6E                 .Yn
        brk                                     ; 8A94 00                       .
        db   $00,$53                         ; 8A95 00 53                    .S
; ----------------------------------------------------------------------------
        ldy     #$05                            ; 8A97 A0 05                    ..
        lda     ($79),y                         ; 8A99 B1 79                    .y
        brk                                     ; 8A9B 00                       .
        db   $25,$0F                         ; 8A9C 25 0F                    %.
; ----------------------------------------------------------------------------
        and     #$C0                            ; 8A9E 29 C0                    ).
        asl     a                               ; 8AA0 0A                       .
        rol     a                               ; 8AA1 2A                       *
        rol     a                               ; 8AA2 2A                       *
        cmp     #$02                            ; 8AA3 C9 02                    ..
        bcc     BattleActionServices_Branch_8AAF; 8AA5 90 08                    ..
BattleActionServices_Branch_8AA7:
        lda     $735C                           ; 8AA7 AD 5C 73                 .\s
        sta     $01                             ; 8AAA 85 01                    ..
        brk                                     ; 8AAC 00                       .
        db   $34,$0F                         ; 8AAD 34 0F                    4.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8AAF:
        rts                                     ; 8AAF 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8AB0:
        brk                                     ; 8AB0 00                       .
        db   $46,$93,$18                     ; 8AB1 46 93 18                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8ABD; 8AB4 B0 07                    ..
        brk                                     ; 8AB6 00                       .
        db   $46,$93,$26                     ; 8AB7 46 93 26                 F.&
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8AC2; 8ABA B0 06                    ..
        rts                                     ; 8ABC 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8ABD:
        lda     #$C3                            ; 8ABD A9 C3                    ..
        jmp     BattleActionServices_Branch_8AC4; 8ABF 4C C4 8A                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8AC2:
        lda     #$C4                            ; 8AC2 A9 C4                    ..
BattleActionServices_Branch_8AC4:
        pha                                     ; 8AC4 48                       H
        lda     $735C                           ; 8AC5 AD 5C 73                 .\s
        sta     $01                             ; 8AC8 85 01                    ..
        pla                                     ; 8ACA 68                       h
        brk                                     ; 8ACB 00                       .
        db   $39,$0F                         ; 8ACC 39 0F                    9.
; ----------------------------------------------------------------------------
        rts                                     ; 8ACE 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8ACF:
        brk                                     ; 8ACF 00                       .
        db   $06,$1F                         ; 8AD0 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8B1F; 8AD2 B0 4B                    .K
        brk                                     ; 8AD4 00                       .
        db   $04,$1F                         ; 8AD5 04 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$02                            ; 8AD7 C9 02                    ..
        bcs     BattleActionServices_Branch_8B17; 8AD9 B0 3C                    .<
        brk                                     ; 8ADB 00                       .
        db   $46,$93,$07                     ; 8ADC 46 93 07                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8B17; 8ADF 90 36                    .6
        brk                                     ; 8AE1 00                       .
        db   $46,$93,$06                     ; 8AE2 46 93 06                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8B29; 8AE5 B0 42                    .B
        brk                                     ; 8AE7 00                       .
        db   $46,$93,$10                     ; 8AE8 46 93 10                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8B19; 8AEB B0 2C                    .,
        brk                                     ; 8AED 00                       .
        db   $45,$93,$11                     ; 8AEE 45 93 11                 E..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8B3B; 8AF1 B0 48                    .H
        brk                                     ; 8AF3 00                       .
        db   $45,$93,$23                     ; 8AF4 45 93 23                 E.#
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8B6D; 8AF7 B0 74                    .t
        brk                                     ; 8AF9 00                       .
        db   $45,$93,$24                     ; 8AFA 45 93 24                 E.$
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8B73; 8AFD B0 74                    .t
        brk                                     ; 8AFF 00                       .
        db   $45,$93,$25                     ; 8B00 45 93 25                 E.%
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8B79; 8B03 B0 74                    .t
        brk                                     ; 8B05 00                       .
        db   $46,$93,$12                     ; 8B06 46 93 12                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8B59; 8B09 B0 4E                    .N
        brk                                     ; 8B0B 00                       .
        db   $3B,$93,$03                     ; 8B0C 3B 93 03                 ;..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8B15; 8B0F 90 04                    ..
        cmp     #$CC                            ; 8B11 C9 CC                    ..
        beq     BattleActionServices_Entry_8B91 ; 8B13 F0 7C                    .|
BattleActionServices_Branch_8B15:
        sec                                     ; 8B15 38                       8
        rts                                     ; 8B16 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B17:
        clc                                     ; 8B17 18                       .
        rts                                     ; 8B18 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B19:
        jmp     BattleActionServices_Branch_8B97; 8B19 4C 97 8B                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B1C:
        jmp     BattleActionServices_Branch_8BBE; 8B1C 4C BE 8B                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B1F:
        brk                                     ; 8B1F 00                       .
        db   $29,$C3,$0E                     ; 8B20 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8B17; 8B23 90 F2                    ..
        brk                                     ; 8B25 00                       .
        db   $29,$C3,$0D                     ; 8B26 29 C3 0D                 )..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B29:
        bcs     BattleActionServices_Branch_8B8B; 8B29 B0 60                    .`
        brk                                     ; 8B2B 00                       .
        db   $29,$C3,$11                     ; 8B2C 29 C3 11                 )..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8B5D; 8B2F B0 2C                    .,
        brk                                     ; 8B31 00                       .
        db   $29,$C3,$00                     ; 8B32 29 C3 00                 )..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8B1C; 8B35 B0 E5                    ..
        brk                                     ; 8B37 00                       .
        db   $2B,$C3,$01                     ; 8B38 2B C3 01                 +..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B3B:
        bcs     BattleActionServices_Branch_8B85; 8B3B B0 48                    .H
        brk                                     ; 8B3D 00                       .
        db   $2B,$C3,$14                     ; 8B3E 2B C3 14                 +..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8B6D; 8B41 B0 2A                    .*
        brk                                     ; 8B43 00                       .
        db   $2B,$C3,$15                     ; 8B44 2B C3 15                 +..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8B73; 8B47 B0 2A                    .*
        brk                                     ; 8B49 00                       .
        db   $2B,$C3,$16                     ; 8B4A 2B C3 16                 +..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8B79; 8B4D B0 2A                    .*
        brk                                     ; 8B4F 00                       .
        db   $2B,$C3,$17                     ; 8B50 2B C3 17                 +..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8B7F; 8B53 B0 2A                    .*
        brk                                     ; 8B55 00                       .
        db   $29,$C3,$02                     ; 8B56 29 C3 02                 )..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B59:
        bcs     BattleActionServices_Entry_8B91 ; 8B59 B0 36                    .6
        sec                                     ; 8B5B 38                       8
        rts                                     ; 8B5C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B5D:
        brk                                     ; 8B5D 00                       .
        db   $2C,$C3,$11                     ; 8B5E 2C C3 11                 ,..
; ----------------------------------------------------------------------------
        brk                                     ; 8B61 00                       .
        db   $29,$C3,$11                     ; 8B62 29 C3 11                 )..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8B6B; 8B65 B0 04                    ..
        brk                                     ; 8B67 00                       .
        db   $E1,$D3,$FA                     ; 8B68 E1 D3 FA                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B6B:
        clc                                     ; 8B6B 18                       .
        rts                                     ; 8B6C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B6D:
        brk                                     ; 8B6D 00                       .
        db   $E1,$D3,$E9                     ; 8B6E E1 D3 E9                 ...
; ----------------------------------------------------------------------------
        clc                                     ; 8B71 18                       .
        rts                                     ; 8B72 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B73:
        brk                                     ; 8B73 00                       .
        db   $E0,$D3,$24                     ; 8B74 E0 D3 24                 ..$
; ----------------------------------------------------------------------------
        clc                                     ; 8B77 18                       .
        rts                                     ; 8B78 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B79:
        brk                                     ; 8B79 00                       .
        db   $E0,$D3,$25                     ; 8B7A E0 D3 25                 ..%
; ----------------------------------------------------------------------------
        clc                                     ; 8B7D 18                       .
        rts                                     ; 8B7E 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B7F:
        brk                                     ; 8B7F 00                       .
        db   $E0,$D3,$26                     ; 8B80 E0 D3 26                 ..&
; ----------------------------------------------------------------------------
        clc                                     ; 8B83 18                       .
        rts                                     ; 8B84 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B85:
        brk                                     ; 8B85 00                       .
        db   $E0,$D3,$27                     ; 8B86 E0 D3 27                 ..'
; ----------------------------------------------------------------------------
        clc                                     ; 8B89 18                       .
        rts                                     ; 8B8A 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B8B:
        brk                                     ; 8B8B 00                       .
        db   $E0,$D3,$11                     ; 8B8C E0 D3 11                 ...
; ----------------------------------------------------------------------------
        clc                                     ; 8B8F 18                       .
        rts                                     ; 8B90 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8B91:
        brk                                     ; 8B91 00                       .
        db   $E0,$D3,$14                     ; 8B92 E0 D3 14                 ...
; ----------------------------------------------------------------------------
        sec                                     ; 8B95 38                       8
        rts                                     ; 8B96 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8B97:
        ldx     $73                             ; 8B97 A6 73                    .s
        brk                                     ; 8B99 00                       .
        db   $03,$3F                         ; 8B9A 03 3F                    .?
; ----------------------------------------------------------------------------
        sta     $00                           ; 8B9C 85 00                    ..
        brk                                     ; 8B9E 00                       .
        db   $1B,$0F                         ; 8B9F 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     $00                           ; 8BA1 C5 00                    ..
        beq     BattleActionServices_Branch_8BA7; 8BA3 F0 02                    ..
        bcs     BattleActionServices_Branch_8BB1; 8BA5 B0 0A                    ..
BattleActionServices_Branch_8BA7:
        brk                                     ; 8BA7 00                       .
        db   $06,$1F                         ; 8BA8 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8BAA 00                       .
        db   $45,$93,$10                     ; 8BAB 45 93 10                 E..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_8BD5; 8BAE 4C D5 8B                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8BB1:
        brk                                     ; 8BB1 00                       .
        db   $06,$1F                         ; 8BB2 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8BB4 00                       .
        db   $69,$93,$10                     ; 8BB5 69 93 10                 i..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8BB8:
        brk                                     ; 8BB8 00                       .
        db   $E0,$D3,$13                     ; 8BB9 E0 D3 13                 ...
; ----------------------------------------------------------------------------
        clc                                     ; 8BBC 18                       .
        rts                                     ; 8BBD 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8BBE:
        ldx     $7E                             ; 8BBE A6 7E                    .~
        brk                                     ; 8BC0 00                       .
        db   $04,$3F                         ; 8BC1 04 3F                    .?
; ----------------------------------------------------------------------------
        sta     $00                           ; 8BC3 85 00                    ..
        brk                                     ; 8BC5 00                       .
        db   $1B,$0F                         ; 8BC6 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     $00                           ; 8BC8 C5 00                    ..
        beq     BattleActionServices_Branch_8BCE; 8BCA F0 02                    ..
        bcs     BattleActionServices_Branch_8BDB; 8BCC B0 0D                    ..
BattleActionServices_Branch_8BCE:
        brk                                     ; 8BCE 00                       .
        db   $06,$1F                         ; 8BCF 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8BD1 00                       .
        db   $2B,$C3,$00                     ; 8BD2 2B C3 00                 +..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8BD5:
        brk                                     ; 8BD5 00                       .
        db   $E0,$D3,$12                     ; 8BD6 E0 D3 12                 ...
; ----------------------------------------------------------------------------
        clc                                     ; 8BD9 18                       .
        rts                                     ; 8BDA 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8BDB:
        brk                                     ; 8BDB 00                       .
        db   $06,$1F                         ; 8BDC 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8BDE 00                       .
        db   $2C,$C3,$00                     ; 8BDF 2C C3 00                 ,..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_8BB8 ; 8BE2 20 B8 8B                  ..
        clc                                     ; 8BE5 18                       .
        lda     $72E9                           ; 8BE6 AD E9 72                 ..r
        bmi     BattleActionServices_Branch_8C20; 8BE9 30 35                    05
        brk                                     ; 8BEB 00                       .
        db   $06,$1F                         ; 8BEC 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8BEE 00                       .
        db   $2D,$B3                         ; 8BEF 2D B3                    -.
; ----------------------------------------------------------------------------
        tax                                     ; 8BF1 AA                       .
        lda     $6E45,x                         ; 8BF2 BD 45 6E                 .En
        ldx     #$01                            ; 8BF5 A2 01                    ..
BattleActionServices_Branch_8BF7:
        cmp     $8C47,x                         ; 8BF7 DD 47 8C                 .G.
        beq     BattleActionServices_Branch_8C02; 8BFA F0 06                    ..
        dex                                     ; 8BFC CA                       .
        bpl     BattleActionServices_Branch_8BF7; 8BFD 10 F8                    ..
        clc                                     ; 8BFF 18                       .
        bmi     BattleActionServices_Branch_8C20; 8C00 30 1E                    0.
BattleActionServices_Branch_8C02:
        txa                                     ; 8C02 8A                       .
        lsr     a                               ; 8C03 4A                       J
        bcc     BattleActionServices_Branch_8C21; 8C04 90 1B                    ..
        lda     #$80                            ; 8C06 A9 80                    ..
        brk                                     ; 8C08 00                       .
        db   $0A,$1F                         ; 8C09 0A 1F                    ..
; ----------------------------------------------------------------------------
        lda     #$00                            ; 8C0B A9 00                    ..
        sta     $00                           ; 8C0D 85 00                    ..
BattleActionServices_Branch_8C0F:
        brk                                     ; 8C0F 00                       .
        db   $01,$1F                         ; 8C10 01 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8C12 00                       .
        db   $09,$1F                         ; 8C13 09 1F                    ..
; ----------------------------------------------------------------------------
        lda     $00                           ; 8C15 A5 00                    ..
        brk                                     ; 8C17 00                       .
        db   $0B,$1F                         ; 8C18 0B 1F                    ..
; ----------------------------------------------------------------------------
        lda     #$01                            ; 8C1A A9 01                    ..
        sta     $735D                           ; 8C1C 8D 5D 73                 .]s
        sec                                     ; 8C1F 38                       8
BattleActionServices_Branch_8C20:
        rts                                     ; 8C20 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8C21:
        lda     #$81                            ; 8C21 A9 81                    ..
        brk                                     ; 8C23 00                       .
        db   $0A,$1F                         ; 8C24 0A 1F                    ..
; ----------------------------------------------------------------------------
        lda     #$07                            ; 8C26 A9 07                    ..
        brk                                     ; 8C28 00                       .
        db   $2C,$0F                         ; 8C29 2C 0F                    ,.
; ----------------------------------------------------------------------------
        sta     $00                           ; 8C2B 85 00                    ..
        brk                                     ; 8C2D 00                       .
        db   $62,$23,$40                     ; 8C2E 62 23 40                 b#@
; ----------------------------------------------------------------------------
        tax                                     ; 8C31 AA                       .
        dex                                     ; 8C32 CA                       .
        lda     #$00                            ; 8C33 A9 00                    ..
BattleActionServices_Branch_8C35:
        sec                                     ; 8C35 38                       8
        rol     a                               ; 8C36 2A                       *
        dex                                     ; 8C37 CA                       .
        bpl     BattleActionServices_Branch_8C35; 8C38 10 FB                    ..
        and     $00                           ; 8C3A 25 00                    %.
        brk                                     ; 8C3C 00                       .
        db   $2A,$0F                         ; 8C3D 2A 0F                    *.
; ----------------------------------------------------------------------------
        brk                                     ; 8C3F 00                       .
        db   $67,$73                         ; 8C40 67 73                    gs
; ----------------------------------------------------------------------------
        sta     $00                           ; 8C42 85 00                    ..
        jmp     BattleActionServices_Branch_8C0F; 8C44 4C 0F 8C                 L..
; ----------------------------------------------------------------------------
        db   $1C,$BC                         ; 8C47 1C BC                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8C49:
        brk                                     ; 8C49 00                       .
        db   $03,$1F                         ; 8C4A 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$3C                            ; 8C4C C9 3C                    .<
        bcs     BattleActionServices_Branch_8C68; 8C4E B0 18                    ..
BattleActionServices_Entry_8C50:
        brk                                     ; 8C50 00                       .
        db   $06,$1F                         ; 8C51 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8C5D; 8C53 90 08                    ..
        brk                                     ; 8C55 00                       .
        db   $29,$C3,$03                     ; 8C56 29 C3 03                 )..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8C6A; 8C59 B0 0F                    ..
        bcc     BattleActionServices_Branch_8C63; 8C5B 90 06                    ..
BattleActionServices_Branch_8C5D:
        brk                                     ; 8C5D 00                       .
        db   $46,$93,$13                     ; 8C5E 46 93 13                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8C6A; 8C61 B0 07                    ..
BattleActionServices_Branch_8C63:
        lda     $72E4                           ; 8C63 AD E4 72                 ..r
        bmi     BattleActionServices_Branch_8C79; 8C66 30 11                    0.
BattleActionServices_Branch_8C68:
        sec                                     ; 8C68 38                       8
        rts                                     ; 8C69 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8C6A:
        brk                                     ; 8C6A 00                       .
        db   $06,$1F                         ; 8C6B 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8C73; 8C6D 90 04                    ..
        brk                                     ; 8C6F 00                       .
        db   $2A,$C3,$13                     ; 8C70 2A C3 13                 *..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8C73:
        brk                                     ; 8C73 00                       .
        db   $E4,$D3,$10                     ; 8C74 E4 D3 10                 ...
; ----------------------------------------------------------------------------
        clc                                     ; 8C77 18                       .
        rts                                     ; 8C78 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8C79:
        brk                                     ; 8C79 00                       .
        db   $06,$1F                         ; 8C7A 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8C82; 8C7C 90 04                    ..
        brk                                     ; 8C7E 00                       .
        db   $2A,$C3,$13                     ; 8C7F 2A C3 13                 *..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8C82:
        brk                                     ; 8C82 00                       .
        db   $E5,$D3,$6D                     ; 8C83 E5 D3 6D                 ..m
; ----------------------------------------------------------------------------
        clc                                     ; 8C86 18                       .
        rts                                     ; 8C87 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8C88:
        lda     $8CAD                           ; 8C88 AD AD 8C                 ...
        sta     $00                           ; 8C8B 85 00                    ..
        lda     $8CAE                           ; 8C8D AD AE 8C                 ...
        sta     $01                             ; 8C90 85 01                    ..
        brk                                     ; 8C92 00                       .
        db   $03,$1F                         ; 8C93 03 1F                    ..
; ----------------------------------------------------------------------------
        ldx     #$00                            ; 8C95 A2 00                    ..
        pha                                     ; 8C97 48                       H
        jsr     AddByteToPointer                ; 8C98 20 13 C8                  ..
        pla                                     ; 8C9B 68                       h
        jsr     AddByteToPointer                ; 8C9C 20 13 C8                  ..
        ldy     #$00                            ; 8C9F A0 00                    ..
        lda     ($00),y                       ; 8CA1 B1 00                    ..
        sta     $02                           ; 8CA3 85 02                    ..
        iny                                     ; 8CA5 C8                       .
        lda     ($00),y                       ; 8CA6 B1 00                    ..
        sta     $03                             ; 8CA8 85 03                    ..
        jmp     ($0002)                         ; 8CAA 6C 02 00                 l..
; ----------------------------------------------------------------------------
        db   $0A                             ; 8CAD 0A                       .
        db   $A4                             ; 8CAE A4                       .
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8CAF:
        jsr     BattleActionServices_Entry_80C4 ; 8CAF 20 C4 80                  ..
        bcc     BattleActionServices_Branch_8CFB; 8CB2 90 47                    .G
        brk                                     ; 8CB4 00                       .
        db   $03,$1F                         ; 8CB5 03 1F                    ..
; ----------------------------------------------------------------------------
        pha                                     ; 8CB7 48                       H
        and     #$07                            ; 8CB8 29 07                    ).
        sta     $00                           ; 8CBA 85 00                    ..
        pla                                     ; 8CBC 68                       h
        lsr     a                               ; 8CBD 4A                       J
        lsr     a                               ; 8CBE 4A                       J
        lsr     a                               ; 8CBF 4A                       J
        tax                                     ; 8CC0 AA                       .
        lda     Bank11_BattleActionMasks,x      ; 8CC1 BD 1E A6                 ...
        pha                                     ; 8CC4 48                       H
        ldx     $00                           ; 8CC5 A6 00                    ..
        brk                                     ; 8CC7 00                       .
        db   $29,$0F                         ; 8CC8 29 0F                    ).
; ----------------------------------------------------------------------------
        sta     $00                           ; 8CCA 85 00                    ..
        pla                                     ; 8CCC 68                       h
        and     $00                           ; 8CCD 25 00                    %.
        beq     BattleActionServices_Branch_8CFB; 8CCF F0 2A                    .*
        ldx     #$FF                            ; 8CD1 A2 FF                    ..
        stx     $00                           ; 8CD3 86 00                    ..
        inx                                     ; 8CD5 E8                       .
        stx     $02                           ; 8CD6 86 02                    ..
        brk                                     ; 8CD8 00                       .
        db   $03,$1F                         ; 8CD9 03 1F                    ..
; ----------------------------------------------------------------------------
        sta     $01                             ; 8CDB 85 01                    ..
BattleActionServices_Branch_8CDD:
        ldx     $02                           ; 8CDD A6 02                    ..
        lda     Bank11_BattleActionMasks,x      ; 8CDF BD 1E A6                 ...
        sta     $03                             ; 8CE2 85 03                    ..
        ldy     #$07                            ; 8CE4 A0 07                    ..
BattleActionServices_Branch_8CE6:
        lsr     $03                             ; 8CE6 46 03                    F.
        lda     #$00                            ; 8CE8 A9 00                    ..
        adc     $00                           ; 8CEA 65 00                    e.
        sta     $00                           ; 8CEC 85 00                    ..
        lda     $01                             ; 8CEE A5 01                    ..
        beq     BattleActionServices_Branch_8CFC; 8CF0 F0 0A                    ..
        dec     $01                             ; 8CF2 C6 01                    ..
        dey                                     ; 8CF4 88                       .
        bpl     BattleActionServices_Branch_8CE6; 8CF5 10 EF                    ..
        inc     $02                           ; 8CF7 E6 02                    ..
        bne     BattleActionServices_Branch_8CDD; 8CF9 D0 E2                    ..
BattleActionServices_Branch_8CFB:
        rts                                     ; 8CFB 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8CFC:
        lda     $00                           ; 8CFC A5 00                    ..
        asl     a                               ; 8CFE 0A                       .
        tax                                     ; 8CFF AA                       .
        lda     $A60A,x                         ; 8D00 BD 0A A6                 ...
        sta     $00                           ; 8D03 85 00                    ..
        lda     $A60B,x                         ; 8D05 BD 0B A6                 ...
        sta     $01                             ; 8D08 85 01                    ..
        jmp     ($0000)                         ; 8D0A 6C 00 00                 l..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8D0D:
        brk                                     ; 8D0D 00                       .
        db   $03,$1F                         ; 8D0E 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$27                            ; 8D10 C9 27                    .'
        beq     BattleActionServices_Branch_8D3B; 8D12 F0 27                    .'
        brk                                     ; 8D14 00                       .
        db   $09,$3F                         ; 8D15 09 3F                    .?
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8D3B; 8D17 B0 22                    ."
        brk                                     ; 8D19 00                       .
        db   $01,$1F                         ; 8D1A 01 1F                    ..
; ----------------------------------------------------------------------------
        cmp     $7363                           ; 8D1C CD 63 73                 .cs
        beq     BattleActionServices_Branch_8D3B; 8D1F F0 1A                    ..
        lda     $7363                           ; 8D21 AD 63 73                 .cs
        bpl     BattleActionServices_Branch_8D3D; 8D24 10 17                    ..
        and     #$07                            ; 8D26 29 07                    ).
        tax                                     ; 8D28 AA                       .
        brk                                     ; 8D29 00                       .
        db   $29,$C3,$0E                     ; 8D2A 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8D3B; 8D2D 90 0C                    ..
        brk                                     ; 8D2F 00                       .
        db   $29,$C3,$06                     ; 8D30 29 C3 06                 )..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8D6E; 8D33 B0 39                    .9
BattleActionServices_Branch_8D35:
        brk                                     ; 8D35 00                       .
        db   $29,$C3,$07                     ; 8D36 29 C3 07                 )..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8D64; 8D39 B0 29                    .)
BattleActionServices_Branch_8D3B:
        sec                                     ; 8D3B 38                       8
        rts                                     ; 8D3C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8D3D:
        brk                                     ; 8D3D 00                       .
        db   $67,$73                         ; 8D3E 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; 8D40 AA                       .
        brk                                     ; 8D41 00                       .
        db   $46,$93,$07                     ; 8D42 46 93 07                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8D3B; 8D45 90 F4                    ..
        brk                                     ; 8D47 00                       .
        db   $46,$93,$16                     ; 8D48 46 93 16                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8D6E; 8D4B B0 21                    .!
        brk                                     ; 8D4D 00                       .
        db   $3B,$93,$01                     ; 8D4E 3B 93 01                 ;..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8D5E; 8D51 90 0B                    ..
        cmp     #$BB                            ; 8D53 C9 BB                    ..
        bne     BattleActionServices_Branch_8D5E; 8D55 D0 07                    ..
        brk                                     ; 8D57 00                       .
        db   $1B,$0F                         ; 8D58 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$55                            ; 8D5A C9 55                    .U
        bcc     BattleActionServices_Branch_8D6E; 8D5C 90 10                    ..
BattleActionServices_Branch_8D5E:
        brk                                     ; 8D5E 00                       .
        db   $46,$93,$17                     ; 8D5F 46 93 17                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8D3B; 8D62 90 D7                    ..
BattleActionServices_Branch_8D64:
        jsr     BattleActionServices_Entry_BF2E ; 8D64 20 2E BF                  ..
        db   $AC                             ; 8D67 AC                       .
; ----------------------------------------------------------------------------
        brk                                     ; 8D68 00                       .
        db   $E8,$D3,$0E                     ; 8D69 E8 D3 0E                 ...
; ----------------------------------------------------------------------------
        clc                                     ; 8D6C 18                       .
        rts                                     ; 8D6D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8D6E:
        lda     $72E7                           ; 8D6E AD E7 72                 ..r
        ora     #$02                            ; 8D71 09 02                    ..
        sta     $72E7                           ; 8D73 8D E7 72                 ..r
        brk                                     ; 8D76 00                       .
        db   $01,$1F                         ; 8D77 01 1F                    ..
; ----------------------------------------------------------------------------
        sta     $7363                           ; 8D79 8D 63 73                 .cs
        pha                                     ; 8D7C 48                       H
        jsr     BattleActionServices_Entry_BF2E ; 8D7D 20 2E BF                  ..
        db   $9A                             ; 8D80 9A                       .
; ----------------------------------------------------------------------------
        brk                                     ; 8D81 00                       .
        db   $E8,$D3,$0F                     ; 8D82 E8 D3 0F                 ...
; ----------------------------------------------------------------------------
        pla                                     ; 8D85 68                       h
        bpl     BattleActionServices_Branch_8D92; 8D86 10 0A                    ..
        and     #$07                            ; 8D88 29 07                    ).
        tax                                     ; 8D8A AA                       .
        brk                                     ; 8D8B 00                       .
        db   $29,$C3,$0E                     ; 8D8C 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8D35; 8D8F B0 A4                    ..
        rts                                     ; 8D91 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8D92:
        brk                                     ; 8D92 00                       .
        db   $67,$73                         ; 8D93 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; 8D95 AA                       .
        brk                                     ; 8D96 00                       .
        db   $46,$93,$07                     ; 8D97 46 93 07                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8D5E; 8D9A B0 C2                    ..
        rts                                     ; 8D9C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8D9D:
        lda     $72E9                           ; 8D9D AD E9 72                 ..r
        bpl     BattleActionServices_Branch_8DA9; 8DA0 10 07                    ..
        brk                                     ; 8DA2 00                       .
        db   $01,$1F                         ; 8DA3 01 1F                    ..
; ----------------------------------------------------------------------------
        bmi     BattleActionServices_Branch_8DA9; 8DA5 30 02                    0.
        clc                                     ; 8DA7 18                       .
        rts                                     ; 8DA8 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8DA9:
        sec                                     ; 8DA9 38                       8
        rts                                     ; 8DAA 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8DAB:
        lda     $6E44                           ; 8DAB AD 44 6E                 .Dn
        and     #$03                            ; 8DAE 29 03                    ).
        cmp     #$02                            ; 8DB0 C9 02                    ..
        beq     BattleActionServices_Branch_8DC5; 8DB2 F0 11                    ..
        cmp     #$01                            ; 8DB4 C9 01                    ..
        beq     BattleActionServices_Branch_8DBE; 8DB6 F0 06                    ..
        cmp     #$03                            ; 8DB8 C9 03                    ..
        beq     BattleActionServices_Branch_8DC3; 8DBA F0 07                    ..
BattleActionServices_Branch_8DBC:
        sec                                     ; 8DBC 38                       8
        rts                                     ; 8DBD 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8DBE:
        brk                                     ; 8DBE 00                       .
        db   $01,$1F                         ; 8DBF 01 1F                    ..
; ----------------------------------------------------------------------------
        bmi     BattleActionServices_Branch_8DBC; 8DC1 30 F9                    0.
BattleActionServices_Branch_8DC3:
        clc                                     ; 8DC3 18                       .
        rts                                     ; 8DC4 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8DC5:
        brk                                     ; 8DC5 00                       .
        db   $01,$1F                         ; 8DC6 01 1F                    ..
; ----------------------------------------------------------------------------
        bpl     BattleActionServices_Branch_8DBC; 8DC8 10 F2                    ..
        clc                                     ; 8DCA 18                       .
        rts                                     ; 8DCB 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8DCC:
        lda     $72E6                           ; 8DCC AD E6 72                 ..r
        and     #$30                            ; 8DCF 29 30                    )0
        beq     BattleActionServices_Branch_8DDA; 8DD1 F0 07                    ..
        brk                                     ; 8DD3 00                       .
        db   $01,$1F                         ; 8DD4 01 1F                    ..
; ----------------------------------------------------------------------------
        bmi     BattleActionServices_Branch_8DDA; 8DD6 30 02                    0.
        clc                                     ; 8DD8 18                       .
        rts                                     ; 8DD9 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8DDA:
        sec                                     ; 8DDA 38                       8
        rts                                     ; 8DDB 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8DDC:
        brk                                     ; 8DDC 00                       .
        db   $13,$2F                         ; 8DDD 13 2F                    ./
; ----------------------------------------------------------------------------
        lda     #$00                            ; 8DDF A9 00                    ..
        brk                                     ; 8DE1 00                       .
        db   $06,$6F                         ; 8DE2 06 6F                    .o
; ----------------------------------------------------------------------------
        rts                                     ; 8DE4 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8DE5:
        brk                                     ; 8DE5 00                       .
        db   $06,$1F                         ; 8DE6 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_8DF0; 8DE8 B0 06                    ..
        jsr     BattleActionServices_Entry_8F3B ; 8DEA 20 3B 8F                  ;.
        jsr     BattleActionServices_Entry_8F8B ; 8DED 20 8B 8F                  ..
BattleActionServices_Branch_8DF0:
        brk                                     ; 8DF0 00                       .
        db   $03,$1F                         ; 8DF1 03 1F                    ..
; ----------------------------------------------------------------------------
        ldx     #$00                            ; 8DF3 A2 00                    ..
BattleActionServices_Branch_8DF5:
        cmp     Bank11_BattleActionIds,x        ; 8DF5 DD A5 8F                 ...
        bcc     BattleActionServices_Branch_8DFE; 8DF8 90 04                    ..
        inx                                     ; 8DFA E8                       .
        bne     BattleActionServices_Branch_8DF5; 8DFB D0 F8                    ..
        rts                                     ; 8DFD 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8DFE:
        txa                                     ; 8DFE 8A                       .
        asl     a                               ; 8DFF 0A                       .
        tax                                     ; 8E00 AA                       .
        lda     Bank11_BattleHandlerPointers,x  ; 8E01 BD DC 8F                 ...
        sta     $00                           ; 8E04 85 00                    ..
        lda     $8FDD,x                         ; 8E06 BD DD 8F                 ...
        sta     $01                             ; 8E09 85 01                    ..
        jmp     ($0000)                         ; 8E0B 6C 00 00                 l..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8E0E:
        lda     $72E4                           ; 8E0E AD E4 72                 ..r
        bmi     BattleActionServices_Branch_8E17; 8E11 30 04                    0.
        jsr     BattleActionServices_Entry_BF2E ; 8E13 20 2E BF                  ..
        db   $8E                             ; 8E16 8E                       .
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8E17:
        brk                                     ; 8E17 00                       .
        db   $03,$1F                         ; 8E18 03 1F                    ..
; ----------------------------------------------------------------------------
        ldy     #$10                            ; 8E1A A0 10                    ..
        cmp     #$03                            ; 8E1C C9 03                    ..
        bcc     BattleActionServices_Branch_8E3C; 8E1E 90 1C                    ..
        cmp     #$09                            ; 8E20 C9 09                    ..
        bcc     BattleActionServices_Branch_8E40; 8E22 90 1C                    ..
        cmp     #$0D                            ; 8E24 C9 0D                    ..
        bcc     BattleActionServices_Branch_8E44; 8E26 90 1C                    ..
        cmp     #$10                            ; 8E28 C9 10                    ..
        bcc     BattleActionServices_Branch_8E4C; 8E2A 90 20                    .
        cmp     #$13                            ; 8E2C C9 13                    ..
        bcc     BattleActionServices_Branch_8E4E; 8E2E 90 1E                    ..
        cmp     #$15                            ; 8E30 C9 15                    ..
        beq     BattleActionServices_Branch_8E48; 8E32 F0 14                    ..
        cmp     #$16                            ; 8E34 C9 16                    ..
        bcs     BattleActionServices_Branch_8E4E; 8E36 B0 16                    ..
        ldy     #$14                            ; 8E38 A0 14                    ..
        bne     BattleActionServices_Branch_8E4E; 8E3A D0 12                    ..
BattleActionServices_Branch_8E3C:
        ldy     #$26                            ; 8E3C A0 26                    .&
        bne     BattleActionServices_Branch_8E4E; 8E3E D0 0E                    ..
BattleActionServices_Branch_8E40:
        ldy     #$28                            ; 8E40 A0 28                    .(
        bne     BattleActionServices_Branch_8E4E; 8E42 D0 0A                    ..
BattleActionServices_Branch_8E44:
        ldy     #$12                            ; 8E44 A0 12                    ..
        bne     BattleActionServices_Branch_8E4E; 8E46 D0 06                    ..
BattleActionServices_Branch_8E48:
        ldy     #$2A                            ; 8E48 A0 2A                    .*
        bne     BattleActionServices_Branch_8E4E; 8E4A D0 02                    ..
BattleActionServices_Branch_8E4C:
        ldy     #$20                            ; 8E4C A0 20                    .
BattleActionServices_Branch_8E4E:
        brk                                     ; 8E4E 00                       .
        db   $03,$4F                         ; 8E4F 03 4F                    .O
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_8E96 ; 8E51 4C 96 8E                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8E54:
        ldy     #$89                            ; 8E54 A0 89                    ..
        brk                                     ; 8E56 00                       .
        db   $06,$1F                         ; 8E57 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8E70; 8E59 90 15                    ..
        ldy     #$8B                            ; 8E5B A0 8B                    ..
        lda     $72E9                           ; 8E5D AD E9 72                 ..r
        bpl     BattleActionServices_Branch_8E70; 8E60 10 0E                    ..
        brk                                     ; 8E62 00                       .
        db   $2D,$A3                         ; 8E63 2D A3                    -.
; ----------------------------------------------------------------------------
        lda     $6E7F                           ; 8E65 AD 7F 6E                 ..n
        and     #$03                            ; 8E68 29 03                    ).
        cmp     $7E                             ; 8E6A C5 7E                    .~
        bne     BattleActionServices_Branch_8E70; 8E6C D0 02                    ..
        ldy     #$89                            ; 8E6E A0 89                    ..
BattleActionServices_Branch_8E70:
        jmp     BattleActionServices_Branch_8E92; 8E70 4C 92 8E                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8E73:
        ldy     #$91                            ; 8E73 A0 91                    ..
        bne     BattleActionServices_Branch_8E92; 8E75 D0 1B                    ..
BattleActionServices_Entry_8E77:
        jsr     BattleActionServices_Entry_BF2E ; 8E77 20 2E BF                  ..
        db   $10                             ; 8E7A 10                       .
; ----------------------------------------------------------------------------
        brk                                     ; 8E7B 00                       .
        db   $62,$D3,$00                     ; 8E7C 62 D3 00                 b..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_9053 ; 8E7F 20 53 90                  S.
        brk                                     ; 8E82 00                       .
        db   $06,$2F                         ; 8E83 06 2F                    ./
; ----------------------------------------------------------------------------
        rts                                     ; 8E85 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8E86:
        jsr     BattleActionServices_Entry_BF2E ; 8E86 20 2E BF                  ..
        db   $9C                             ; 8E89 9C                       .
; ----------------------------------------------------------------------------
        ldy     #$20                            ; 8E8A A0 20                    .
        brk                                     ; 8E8C 00                       .
        db   $03,$4F                         ; 8E8D 03 4F                    .O
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_8E96 ; 8E8F 4C 96 8E                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8E92:
        tya                                     ; 8E92 98                       .
        jsr     BattleActionServices_Entry_BF55 ; 8E93 20 55 BF                  U.
BattleActionServices_Entry_8E96:
        brk                                     ; 8E96 00                       .
        db   $E2,$D3,$00                     ; 8E97 E2 D3 00                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 8E9A 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8E9B:
        jsr     BattleActionServices_Entry_8E96 ; 8E9B 20 96 8E                  ..
BattleActionServices_Branch_8E9E:
        brk                                     ; 8E9E 00                       .
        db   $F2,$D3,$04                     ; 8E9F F2 D3 04                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 8EA2 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8EA3:
        lda     #$28                            ; 8EA3 A9 28                    .(
        bne     BattleActionServices_Branch_8EAF; 8EA5 D0 08                    ..
BattleActionServices_Entry_8EA7:
        lda     #$10                            ; 8EA7 A9 10                    ..
        bne     BattleActionServices_Branch_8EAF; 8EA9 D0 04                    ..
        lda     #$26                            ; 8EAB A9 26                    .&
        bne     BattleActionServices_Branch_8EAF; 8EAD D0 00                    ..
BattleActionServices_Branch_8EAF:
        pha                                     ; 8EAF 48                       H
        jsr     BattleActionServices_Entry_8E96 ; 8EB0 20 96 8E                  ..
        jsr     BattleActionServices_Entry_BF2E ; 8EB3 20 2E BF                  ..
        db   $9D                             ; 8EB6 9D                       .
; ----------------------------------------------------------------------------
        pla                                     ; 8EB7 68                       h
        tay                                     ; 8EB8 A8                       .
BattleActionServices_Branch_8EB9:
        brk                                     ; 8EB9 00                       .
        db   $03,$4F                         ; 8EBA 03 4F                    .O
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_8E9E; 8EBC 4C 9E 8E                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8EBF:
        jsr     BattleActionServices_Entry_8E96 ; 8EBF 20 96 8E                  ..
        jsr     BattleActionServices_Entry_BF2E ; 8EC2 20 2E BF                  ..
        db   $91                             ; 8EC5 91                       .
; ----------------------------------------------------------------------------
        ldy     #$12                            ; 8EC6 A0 12                    ..
        bne     BattleActionServices_Branch_8EB9; 8EC8 D0 EF                    ..
BattleActionServices_Entry_8ECA:
        lda     #$88                            ; 8ECA A9 88                    ..
        bne     BattleActionServices_Branch_8EE6; 8ECC D0 18                    ..
BattleActionServices_Entry_8ECE:
        jsr     BattleActionServices_Entry_BF2E ; 8ECE 20 2E BF                  ..
        db   $8E                             ; 8ED1 8E                       .
; ----------------------------------------------------------------------------
        ldy     #$10                            ; 8ED2 A0 10                    ..
        brk                                     ; 8ED4 00                       .
        db   $03,$4F                         ; 8ED5 03 4F                    .O
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_8EE9 ; 8ED7 4C E9 8E                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8EDA:
        jsr     BattleActionServices_Entry_BF2E ; 8EDA 20 2E BF                  ..
        db   $8F                             ; 8EDD 8F                       .
; ----------------------------------------------------------------------------
        brk                                     ; 8EDE 00                       .
        db   $02,$4F                         ; 8EDF 02 4F                    .O
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_8EE9 ; 8EE1 4C E9 8E                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8EE4:
        lda     #$83                            ; 8EE4 A9 83                    ..
BattleActionServices_Branch_8EE6:
        jsr     BattleActionServices_Entry_BF55 ; 8EE6 20 55 BF                  U.
BattleActionServices_Entry_8EE9:
        brk                                     ; 8EE9 00                       .
        db   $F2,$D3,$00                     ; 8EEA F2 D3 00                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 8EED 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8EEE:
        jsr     BattleActionServices_Entry_BF2E ; 8EEE 20 2E BF                  ..
        db   $98                             ; 8EF1 98                       .
; ----------------------------------------------------------------------------
        brk                                     ; 8EF2 00                       .
        db   $F1,$D3,$8F                     ; 8EF3 F1 D3 8F                 ...
; ----------------------------------------------------------------------------
        brk                                     ; 8EF6 00                       .
        db   $02,$4F                         ; 8EF7 02 4F                    .O
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_BF2E ; 8EF9 20 2E BF                  ..
        db   $88                             ; 8EFC 88                       .
; ----------------------------------------------------------------------------
        brk                                     ; 8EFD 00                       .
        db   $E5,$D3,$90                     ; 8EFE E5 D3 90                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 8F01 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8F02:
        jsr     BattleActionServices_Entry_BF2E ; 8F02 20 2E BF                  ..
        db   $98                             ; 8F05 98                       .
; ----------------------------------------------------------------------------
        brk                                     ; 8F06 00                       .
        db   $E5,$D3,$8F                     ; 8F07 E5 D3 8F                 ...
; ----------------------------------------------------------------------------
        brk                                     ; 8F0A 00                       .
        db   $02,$4F                         ; 8F0B 02 4F                    .O
; ----------------------------------------------------------------------------
        brk                                     ; 8F0D 00                       .
        db   $03,$4F                         ; 8F0E 03 4F                    .O
; ----------------------------------------------------------------------------
        brk                                     ; 8F10 00                       .
        db   $E9,$D3,$91                     ; 8F11 E9 D3 91                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 8F14 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8F15:
        brk                                     ; 8F15 00                       .
        db   $E5,$D3,$84                     ; 8F16 E5 D3 84                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 8F19 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8F1A:
        brk                                     ; 8F1A 00                       .
        db   $E5,$D3,$98                     ; 8F1B E5 D3 98                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 8F1E 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8F1F:
        jsr     BattleActionServices_Entry_BF2E ; 8F1F 20 2E BF                  ..
        db   $9C                             ; 8F22 9C                       .
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_8E9B ; 8F23 4C 9B 8E                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8F26:
        brk                                     ; 8F26 00                       .
        db   $F2,$D3,$04                     ; 8F27 F2 D3 04                 ...
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_BDBC; 8F2A 4C BC BD                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8F2D:
        jsr     BattleActionServices_Entry_BF2E ; 8F2D 20 2E BF                  ..
        db   $88                             ; 8F30 88                       .
; ----------------------------------------------------------------------------
        ldy     #$20                            ; 8F31 A0 20                    .
        brk                                     ; 8F33 00                       .
        db   $03,$4F                         ; 8F34 03 4F                    .O
; ----------------------------------------------------------------------------
        brk                                     ; 8F36 00                       .
        db   $F0,$D3,$76                     ; 8F37 F0 D3 76                 ..v
; ----------------------------------------------------------------------------
        rts                                     ; 8F3A 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8F3B:
        brk                                     ; 8F3B 00                       .
        db   $05,$1F                         ; 8F3C 05 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$01                            ; 8F3E C9 01                    ..
        bne     BattleActionServices_Branch_8F8A; 8F40 D0 48                    .H
        jsr     BattleActionServices_Entry_8F9C ; 8F42 20 9C 8F                  ..
        pha                                     ; 8F45 48                       H
        brk                                     ; 8F46 00                       .
        db   $E0,$D3,$2D                     ; 8F47 E0 D3 2D                 ..-
; ----------------------------------------------------------------------------
        brk                                     ; 8F4A 00                       .
        db   $06,$1F                         ; 8F4B 06 1F                    ..
; ----------------------------------------------------------------------------
        tax                                     ; 8F4D AA                       .
        pla                                     ; 8F4E 68                       h
        brk                                     ; 8F4F 00                       .
        db   $31,$73                         ; 8F50 31 73                    1s
; ----------------------------------------------------------------------------
        brk                                     ; 8F52 00                       .
        db   $32,$73                         ; 8F53 32 73                    2s
; ----------------------------------------------------------------------------
        lda     #$FF                            ; 8F55 A9 FF                    ..
        sta     $70                             ; 8F57 85 70                    .p
        brk                                     ; 8F59 00                       .
        db   $1A,$73                         ; 8F5A 1A 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; 8F5C 00                       .
        db   $17,$73                         ; 8F5D 17 73                    .s
; ----------------------------------------------------------------------------
        ldy     $73                             ; 8F5F A4 73                    .s
        sty     $70                             ; 8F61 84 70                    .p
        brk                                     ; 8F63 00                       .
        db   $19,$73                         ; 8F64 19 73                    .s
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_8F9C ; 8F66 20 9C 8F                  ..
        cmp     #$1F                            ; 8F69 C9 1F                    ..
        bne     BattleActionServices_Branch_8F74; 8F6B D0 07                    ..
        lda     #$FF                            ; 8F6D A9 FF                    ..
        sta     $70                             ; 8F6F 85 70                    .p
        brk                                     ; 8F71 00                       .
        db   $1E,$73                         ; 8F72 1E 73                    .s
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8F74:
        jsr     BattleActionServices_Entry_8F9C ; 8F74 20 9C 8F                  ..
        brk                                     ; 8F77 00                       .
        db   $0C,$0F                         ; 8F78 0C 0F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_8F85; 8F7A 90 09                    ..
        brk                                     ; 8F7C 00                       .
        db   $12,$FB                         ; 8F7D 12 FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8F7F 00                       .
        db   $07,$9F                         ; 8F80 07 9F                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_9053 ; 8F82 20 53 90                  S.
BattleActionServices_Branch_8F85:
        lda     #$43                            ; 8F85 A9 43                    .C
        brk                                     ; 8F87 00                       .
        db   $0A,$1F                         ; 8F88 0A 1F                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8F8A:
        rts                                     ; 8F8A 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8F8B:
        brk                                     ; 8F8B 00                       .
        db   $05,$1F                         ; 8F8C 05 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$02                            ; 8F8E C9 02                    ..
        bne     BattleActionServices_Branch_8F9B; 8F90 D0 09                    ..
        jsr     BattleActionServices_Entry_8F9C ; 8F92 20 9C 8F                  ..
        jsr     BattleActionServices_Entry_9079 ; 8F95 20 79 90                  y.
        brk                                     ; 8F98 00                       .
        db   $0A,$1F                         ; 8F99 0A 1F                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_8F9B:
        rts                                     ; 8F9B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_8F9C:
        brk                                     ; 8F9C 00                       .
        db   $03,$1F                         ; 8F9D 03 1F                    ..
; ----------------------------------------------------------------------------
        and     #$7F                            ; 8F9F 29 7F                    ).
        sta     $7355                           ; 8FA1 8D 55 73                 .Us
        rts                                     ; 8FA4 60                       `
; ----------------------------------------------------------------------------
Bank11_BattleActionIds:
        db   $3C,$43,$49,$4C,$4D,$53,$67,$68 ; 8FA5 3C 43 49 4C 4D 53 67 68  <CILMSgh
        db   $6F,$70,$73,$74,$75,$77,$78,$7A ; 8FAD 6F 70 73 74 75 77 78 7A  opstuwxz
        db   $7B,$83,$84,$85,$86,$87,$88,$89 ; 8FB5 7B 83 84 85 86 87 88 89  {.......
        db   $8A,$8C,$8D,$8E,$8F,$A8,$AC,$AD ; 8FBD 8A 8C 8D 8E 8F A8 AC AD  ........
        db   $AE,$AF,$BF,$C1,$CB,$CC,$D5,$DD ; 8FC5 AE AF BF C1 CB CC D5 DD  ........
        db   $DE,$E2,$E3,$E9,$EA,$F1,$F2,$F8 ; 8FCD DE E2 E3 E9 EA F1 F2 F8  ........
        db   $F9,$FA,$FB,$FC,$FD,$FE,$FF     ; 8FD5 F9 FA FB FC FD FE FF     .......
Bank11_BattleHandlerPointers:
        db   $0E                             ; 8FDC 0E                       .
        db   $8E,$96,$8E,$54,$8E,$96,$8E,$9B ; 8FDD 8E 96 8E 54 8E 96 8E 9B  ...T....
        db   $8E,$73,$8E,$96,$8E,$73,$8E,$96 ; 8FE5 8E 73 8E 96 8E 73 8E 96  .s...s..
        db   $8E,$86,$8E,$96,$8E,$9B,$8E,$A3 ; 8FED 8E 86 8E 96 8E 9B 8E A3  ........
        db   $8E,$96,$8E,$9B,$8E,$96,$8E,$77 ; 8FF5 8E 96 8E 9B 8E 96 8E 77  .......w
        db   $8E,$96,$8E,$A3,$8E,$A7,$8E,$9B ; 8FFD 8E 96 8E A3 8E A7 8E 9B  ........
        db   $8E,$A3,$8E,$BF,$8E,$9B,$8E,$A3 ; 9005 8E A3 8E BF 8E 9B 8E A3  ........
        db   $8E,$9B,$8E,$86,$8E,$9B,$8E,$A3 ; 900D 8E 9B 8E 86 8E 9B 8E A3  ........
        db   $8E,$9B,$8E,$96,$8E,$E9,$8E,$E4 ; 9015 8E 9B 8E 96 8E E9 8E E4  ........
        db   $8E,$DA,$8E,$E9,$8E,$CE,$8E,$E9 ; 901D 8E DA 8E E9 8E CE 8E E9  ........
        db   $8E,$CA,$8E,$E9,$8E,$96,$8E,$02 ; 9025 8E CA 8E E9 8E 96 8E 02  ........
        db   $8F,$96,$8E,$1A,$8F,$96,$8E,$15 ; 902D 8F 96 8E 1A 8F 96 8E 15  ........
        db   $8F,$96,$8E,$EE,$8E,$96,$8E,$1F ; 9035 8F 96 8E EE 8E 96 8E 1F  ........
        db   $8F,$26,$8F,$1F,$8F,$2D,$8F,$96 ; 903D 8F 26 8F 1F 8F 2D 8F 96  .&...-..
        db   $8E,$9B,$8E,$9B,$8E             ; 9045 8E 9B 8E 9B 8E           .....
; ----------------------------------------------------------------------------
BattleActionServices_Entry_904A:
        lda     $72E7                           ; 904A AD E7 72                 ..r
        and     #$7C                            ; 904D 29 7C                    )|
        sta     $72E7                           ; 904F 8D E7 72                 ..r
        rts                                     ; 9052 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9053:
        brk                                     ; 9053 00                       .
        db   $07,$9F                         ; 9054 07 9F                    ..
; ----------------------------------------------------------------------------
        lda     $72E5                           ; 9056 AD E5 72                 ..r
        bmi     BattleActionServices_Branch_9078; 9059 30 1D                    0.
BattleActionServices_Entry_905B:
        lda     #$0D                            ; 905B A9 0D                    ..
        ldx     $6E45                           ; 905D AE 45 6E                 .En
        cpx     #$BC                            ; 9060 E0 BC                    ..
        beq     BattleActionServices_Branch_906F; 9062 F0 0B                    ..
        cpx     #$AE                            ; 9064 E0 AE                    ..
        bne     BattleActionServices_Branch_9075; 9066 D0 0D                    ..
        ldx     $7206                           ; 9068 AE 06 72                 ..r
        cpx     #$D2                            ; 906B E0 D2                    ..
        beq     BattleActionServices_Branch_9073; 906D F0 04                    ..
BattleActionServices_Branch_906F:
        lda     #$1E                            ; 906F A9 1E                    ..
        bne     BattleActionServices_Branch_9075; 9071 D0 02                    ..
BattleActionServices_Branch_9073:
        lda     #$35                            ; 9073 A9 35                    .5
BattleActionServices_Branch_9075:
        brk                                     ; 9075 00                       .
        db   $03,$9F                         ; 9076 03 9F                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9078:
        rts                                     ; 9078 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9079:
        ldx     #$27                            ; 9079 A2 27                    .'
BattleActionServices_Branch_907B:
        cmp     Bank11_ActionLookupIds,x        ; 907B DD 8B 90                 ...
        beq     BattleActionServices_Branch_9087; 907E F0 07                    ..
        dex                                     ; 9080 CA                       .
        bpl     BattleActionServices_Branch_907B; 9081 10 F8                    ..
        lda     #$7F                            ; 9083 A9 7F                    ..
        bne     BattleActionServices_Branch_908A; 9085 D0 03                    ..
BattleActionServices_Branch_9087:
        lda     Bank11_ActionLookupResults,x    ; 9087 BD B3 90                 ...
BattleActionServices_Branch_908A:
        rts                                     ; 908A 60                       `
; ----------------------------------------------------------------------------
Bank11_ActionLookupIds:
        db   $0B,$11,$17,$18,$1A,$1B,$1D,$1E ; 908B 0B 11 17 18 1A 1B 1D 1E  ........
        db   $1F,$20,$21,$22,$23,$40,$42,$44 ; 9093 1F 20 21 22 23 40 42 44  . !"#@BD
        db   $45,$50,$74,$53,$55,$56,$57,$58 ; 909B 45 50 74 53 55 56 57 58  EPtSUVWX
        db   $59,$5A,$5B,$0C,$5D,$5E,$5F,$60 ; 90A3 59 5A 5B 0C 5D 5E 5F 60  YZ[.]^_`
        db   $61,$62,$63,$64,$65,$54,$08,$66 ; 90AB 61 62 63 64 65 54 08 66  abcdeT.f
Bank11_ActionLookupResults:
        db   $82,$83,$84,$85,$86,$87,$88,$89 ; 90B3 82 83 84 85 86 87 88 89  ........
        db   $8A,$8B,$8C,$8D,$8E,$8F,$90,$91 ; 90BB 8A 8B 8C 8D 8E 8F 90 91  ........
        db   $92,$93,$94,$94,$95,$96,$97,$98 ; 90C3 92 93 94 94 95 96 97 98  ........
        db   $99,$9A,$9B,$9C,$9D,$9E,$9F,$A0 ; 90CB 99 9A 9B 9C 9D 9E 9F A0  ........
        db   $A1,$A2,$A3,$A4,$A5,$A7,$F8,$A6 ; 90D3 A1 A2 A3 A4 A5 A7 F8 A6  ........
; ----------------------------------------------------------------------------
BattleActionServices_Entry_90DB:
        jsr     BattleActionServices_Entry_9393 ; 90DB 20 93 93                  ..
        jsr     BattleActionServices_Entry_AC5C ; 90DE 20 5C AC                  \.
        bcc     BattleActionServices_Branch_90E9; 90E1 90 06                    ..
        asl     $7361                           ; 90E3 0E 61 73                 .as
        rol     $7362                           ; 90E6 2E 62 73                 .bs
BattleActionServices_Branch_90E9:
        lda     $7363                           ; 90E9 AD 63 73                 .cs
        bmi     BattleActionServices_Branch_914B; 90EC 30 5D                    0]
        jsr     BattleActionServices_Entry_A8D5 ; 90EE 20 D5 A8                  ..
        brk                                     ; 90F1 00                       .
        db   $07,$1F                         ; 90F2 07 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 90F4 00                       .
        db   $46,$93,$19                     ; 90F5 46 93 19                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9106; 90F8 90 0C                    ..
        ldx     #$80                            ; 90FA A2 80                    ..
        lda     $73                             ; 90FC A5 73                    .s
        beq     BattleActionServices_Branch_9102; 90FE F0 02                    ..
        ldx     #$33                            ; 9100 A2 33                    .3
BattleActionServices_Branch_9102:
        txa                                     ; 9102 8A                       .
        brk                                     ; 9103 00                       .
        db   $08,$3F                         ; 9104 08 3F                    .?
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9106:
        jsr     BattleActionServices_Entry_9383 ; 9106 20 83 93                  ..
        beq     BattleActionServices_Branch_913F; 9109 F0 34                    .4
        ldx     $6E                             ; 910B A6 6E                    .n
        lda     $7362                           ; 910D AD 62 73                 .bs
        sta     $70                             ; 9110 85 70                    .p
        lda     $7361                           ; 9112 AD 61 73                 .as
        brk                                     ; 9115 00                       .
        db   $04,$73                         ; 9116 04 73                    .s
; ----------------------------------------------------------------------------
        txa                                     ; 9118 8A                       .
        pha                                     ; 9119 48                       H
        jsr     BattleActionServices_Entry_BF2E ; 911A 20 2E BF                  ..
        db   $8A                             ; 911D 8A                       .
; ----------------------------------------------------------------------------
        brk                                     ; 911E 00                       .
        db   $64,$D3,$17                     ; 911F 64 D3 17                 d..
; ----------------------------------------------------------------------------
        brk                                     ; 9122 00                       .
        db   $02,$4F                         ; 9123 02 4F                    .O
; ----------------------------------------------------------------------------
        brk                                     ; 9125 00                       .
        db   $07,$2F                         ; 9126 07 2F                    ./
; ----------------------------------------------------------------------------
        brk                                     ; 9128 00                       .
        db   $27,$0F                         ; 9129 27 0F                    '.
; ----------------------------------------------------------------------------
        pla                                     ; 912B 68                       h
        tax                                     ; 912C AA                       .
        brk                                     ; 912D 00                       .
        db   $00,$73                         ; 912E 00 73                    .s
; ----------------------------------------------------------------------------
        ora     $73                             ; 9130 05 73                    .s
        bne     BattleActionServices_Branch_913E; 9132 D0 0A                    ..
        jsr     BattleActionServices_Entry_9272 ; 9134 20 72 92                  r.
        brk                                     ; 9137 00                       .
        db   $E8,$D3,$1B                     ; 9138 E8 D3 1B                 ...
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_938A ; 913B 20 8A 93                  ..
BattleActionServices_Branch_913E:
        rts                                     ; 913E 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_913F:
        jsr     BattleActionServices_Entry_BF2E ; 913F 20 2E BF                  ..
        db   $8D                             ; 9142 8D                       .
; ----------------------------------------------------------------------------
        brk                                     ; 9143 00                       .
        db   $E4,$D3,$06                     ; 9144 E4 D3 06                 ...
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_938A ; 9147 20 8A 93                  ..
        rts                                     ; 914A 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_914B:
        brk                                     ; 914B 00                       .
        db   $07,$1F                         ; 914C 07 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 914E 00                       .
        db   $29,$C3,$0E                     ; 914F 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_91C9; 9152 90 75                    .u
        brk                                     ; 9154 00                       .
        db   $29,$C3,$09                     ; 9155 29 C3 09                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9166; 9158 90 0C                    ..
        ldx     #$80                            ; 915A A2 80                    ..
        lda     $7E                             ; 915C A5 7E                    .~
        beq     BattleActionServices_Branch_9162; 915E F0 02                    ..
        ldx     #$33                            ; 9160 A2 33                    .3
BattleActionServices_Branch_9162:
        txa                                     ; 9162 8A                       .
        brk                                     ; 9163 00                       .
        db   $08,$3F                         ; 9164 08 3F                    .?
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9166:
        jsr     BattleActionServices_Entry_9383 ; 9166 20 83 93                  ..
        beq     BattleActionServices_Branch_91CD; 9169 F0 62                    .b
        ldx     $7B                             ; 916B A6 7B                    .{
        lda     $7362                           ; 916D AD 62 73                 .bs
        sta     $7D                             ; 9170 85 7D                    .}
        lda     $7361                           ; 9172 AD 61 73                 .as
        brk                                     ; 9175 00                       .
        db   $03,$B3                         ; 9176 03 B3                    ..
; ----------------------------------------------------------------------------
        txa                                     ; 9178 8A                       .
        pha                                     ; 9179 48                       H
        lda     $72E9                           ; 917A AD E9 72                 ..r
        bpl     BattleActionServices_Branch_9192; 917D 10 13                    ..
        brk                                     ; 917F 00                       .
        db   $2D,$A3                         ; 9180 2D A3                    -.
; ----------------------------------------------------------------------------
        lda     $6E7F                           ; 9182 AD 7F 6E                 ..n
        and     #$03                            ; 9185 29 03                    ).
        cmp     $7E                             ; 9187 C5 7E                    .~
        bne     BattleActionServices_Branch_9192; 9189 D0 07                    ..
        jsr     BattleActionServices_Entry_BF2E ; 918B 20 2E BF                  ..
        db   $8A                             ; 918E 8A                       .
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_91A4; 918F 4C A4 91                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9192:
        lda     $7206                           ; 9192 AD 06 72                 ..r
        cmp     #$D2                            ; 9195 C9 D2                    ..
        bne     BattleActionServices_Branch_91A0; 9197 D0 07                    ..
        jsr     BattleActionServices_Entry_BF2E ; 9199 20 2E BF                  ..
        db   $81                             ; 919C 81                       .
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_91A4; 919D 4C A4 91                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_91A0:
        jsr     BattleActionServices_Entry_BF2E ; 91A0 20 2E BF                  ..
        db   $87                             ; 91A3 87                       .
; ----------------------------------------------------------------------------
BattleActionServices_Branch_91A4:
        brk                                     ; 91A4 00                       .
        db   $64,$D3,$16                     ; 91A5 64 D3 16                 d..
; ----------------------------------------------------------------------------
        pla                                     ; 91A8 68                       h
        tax                                     ; 91A9 AA                       .
        pha                                     ; 91AA 48                       H
        jsr     BattleActionServices_Entry_9286 ; 91AB 20 86 92                  ..
        brk                                     ; 91AE 00                       .
        db   $07,$2F                         ; 91AF 07 2F                    ./
; ----------------------------------------------------------------------------
        pla                                     ; 91B1 68                       h
        tax                                     ; 91B2 AA                       .
        brk                                     ; 91B3 00                       .
        db   $00,$B3                         ; 91B4 00 B3                    ..
; ----------------------------------------------------------------------------
        ora     $7F                             ; 91B6 05 7F                    ..
        bne     BattleActionServices_Branch_91CC; 91B8 D0 12                    ..
        brk                                     ; 91BA 00                       .
        db   $13,$2F                         ; 91BB 13 2F                    ./
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_91F3 ; 91BD 20 F3 91                  ..
        brk                                     ; 91C0 00                       .
        db   $1A,$2F                         ; 91C1 1A 2F                    ./
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_91CC; 91C3 B0 07                    ..
        brk                                     ; 91C5 00                       .
        db   $E8,$D3,$08                     ; 91C6 E8 D3 08                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_91C9:
        jsr     BattleActionServices_Entry_938A ; 91C9 20 8A 93                  ..
BattleActionServices_Branch_91CC:
        rts                                     ; 91CC 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_91CD:
        brk                                     ; 91CD 00                       .
        db   $07,$1F                         ; 91CE 07 1F                    ..
; ----------------------------------------------------------------------------
        lda     $72E9                           ; 91D0 AD E9 72                 ..r
        bpl     BattleActionServices_Branch_91E8; 91D3 10 13                    ..
        brk                                     ; 91D5 00                       .
        db   $2D,$A3                         ; 91D6 2D A3                    -.
; ----------------------------------------------------------------------------
        lda     $6E7F                           ; 91D8 AD 7F 6E                 ..n
        and     #$03                            ; 91DB 29 03                    ).
        cmp     $7E                             ; 91DD C5 7E                    .~
        bne     BattleActionServices_Branch_91E8; 91DF D0 07                    ..
        jsr     BattleActionServices_Entry_BF2E ; 91E1 20 2E BF                  ..
        db   $8D                             ; 91E4 8D                       .
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_91EC; 91E5 4C EC 91                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_91E8:
        jsr     BattleActionServices_Entry_BF2E ; 91E8 20 2E BF                  ..
        db   $8C                             ; 91EB 8C                       .
; ----------------------------------------------------------------------------
BattleActionServices_Branch_91EC:
        brk                                     ; 91EC 00                       .
        db   $E4,$D3,$07                     ; 91ED E4 D3 07                 ...
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_938A ; 91F0 4C 8A 93                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_91F3:
        jsr     BattleActionServices_Entry_9290 ; 91F3 20 90 92                  ..
        lda     $72E4                           ; 91F6 AD E4 72                 ..r
        ora     #$10                            ; 91F9 09 10                    ..
        sta     $72E4                           ; 91FB 8D E4 72                 ..r
BattleActionServices_Entry_91FE:
        jsr     BattleActionServices_Entry_92AE ; 91FE 20 AE 92                  ..
        stx     $7200                           ; 9201 8E 00 72                 ..r
BattleActionServices_Entry_9204:
        lda     $6E45                           ; 9204 AD 45 6E                 .En
        cmp     #$AE                            ; 9207 C9 AE                    ..
        bne     BattleActionServices_Branch_9215; 9209 D0 0A                    ..
        lda     $7206                           ; 920B AD 06 72                 ..r
        cmp     #$D2                            ; 920E C9 D2                    ..
        bne     BattleActionServices_Branch_9235; 9210 D0 23                    .#
        inc     $6E7E                           ; 9212 EE 7E 6E                 .~n
BattleActionServices_Branch_9215:
        jsr     BattleActionServices_Entry_927C ; 9215 20 7C 92                  |.
        jsr     BattleActionServices_Entry_92C7 ; 9218 20 C7 92                  ..
        brk                                     ; 921B 00                       .
        db   $2B,$C3,$0E                     ; 921C 2B C3 0E                 +..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_92CF ; 921F 20 CF 92                  ..
        rts                                     ; 9222 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9223:
        lda     $6E45                           ; 9223 AD 45 6E                 .En
        cmp     #$AE                            ; 9226 C9 AE                    ..
        bne     BattleActionServices_Branch_926A; 9228 D0 40                    .@
        lda     $6E7E                           ; 922A AD 7E 6E                 .~n
        cmp     #$03                            ; 922D C9 03                    ..
        bne     BattleActionServices_Branch_926A; 922F D0 39                    .9
        brk                                     ; 9231 00                       .
        db   $E0,$D3,$88                     ; 9232 E0 D3 88                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9235:
        brk                                     ; 9235 00                       .
        db   $16,$4F                         ; 9236 16 4F                    .O
; ----------------------------------------------------------------------------
        inc     $6E7E                           ; 9238 EE 7E 6E                 .~n
        ldx     $6E7E                           ; 923B AE 7E 6E                 .~n
        lda     BattleActionServices_Branch_926A,x; 923E BD 6A 92               .j.
        sta     $7206                           ; 9241 8D 06 72                 ..r
        ldx     #$00                            ; 9244 A2 00                    ..
        stx     $720A                           ; 9246 8E 0A 72                 ..r
        txa                                     ; 9249 8A                       .
        brk                                     ; 924A 00                       .
        db   $31,$B3                         ; 924B 31 B3                    1.
; ----------------------------------------------------------------------------
        brk                                     ; 924D 00                       .
        db   $19,$2F                         ; 924E 19 2F                    ./
; ----------------------------------------------------------------------------
        lda     $6E7E                           ; 9250 AD 7E 6E                 .~n
        cmp     #$04                            ; 9253 C9 04                    ..
        beq     BattleActionServices_Branch_9260; 9255 F0 09                    ..
        lda     $6E44                           ; 9257 AD 44 6E                 .Dn
        ora     #$03                            ; 925A 09 03                    ..
        sta     $6E44                           ; 925C 8D 44 6E                 .Dn
        rts                                     ; 925F 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9260:
        lda     $6E44                           ; 9260 AD 44 6E                 .Dn
        and     #$FC                            ; 9263 29 FC                    ).
        ora     #$02                            ; 9265 09 02                    ..
        sta     $6E44                           ; 9267 8D 44 6E                 .Dn
BattleActionServices_Branch_926A:
        rts                                     ; 926A 60                       `
; ----------------------------------------------------------------------------
        db   $CD,$CE,$CE,$CF,$D0,$D1,$D2     ; 926B CD CE CE CF D0 D1 D2     .......
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9272:
        brk                                     ; 9272 00                       .
        db   $45,$93,$07                     ; 9273 45 93 07                 E..
; ----------------------------------------------------------------------------
        brk                                     ; 9276 00                       .
        db   $27,$0F                         ; 9277 27 0F                    '.
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_92CF ; 9279 4C CF 92                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_927C:
        txa                                     ; 927C 8A                       .
        pha                                     ; 927D 48                       H
        sta     $C7                             ; 927E 85 C7                    ..
        brk                                     ; 9280 00                       .
        db   $00,$4F                         ; 9281 00 4F                    .O
; ----------------------------------------------------------------------------
        pla                                     ; 9283 68                       h
        tax                                     ; 9284 AA                       .
        rts                                     ; 9285 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9286:
        txa                                     ; 9286 8A                       .
        pha                                     ; 9287 48                       H
        sta     $C7                             ; 9288 85 C7                    ..
        brk                                     ; 928A 00                       .
        db   $01,$4F                         ; 928B 01 4F                    .O
; ----------------------------------------------------------------------------
        pla                                     ; 928D 68                       h
        tax                                     ; 928E AA                       .
        rts                                     ; 928F 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9290:
        brk                                     ; 9290 00                       .
        db   $29,$C3,$08                     ; 9291 29 C3 08                 )..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_92C6; 9294 B0 30                    .0
        brk                                     ; 9296 00                       .
        db   $1A,$B3                         ; 9297 1A B3                    ..
; ----------------------------------------------------------------------------
        clc                                     ; 9299 18                       .
        adc     $7203                           ; 929A 6D 03 72                 m.r
        sta     $7203                           ; 929D 8D 03 72                 ..r
        lda     $7F                             ; 92A0 A5 7F                    ..
        adc     $7204                           ; 92A2 6D 04 72                 m.r
        sta     $7204                           ; 92A5 8D 04 72                 ..r
        bcc     BattleActionServices_Branch_92C6; 92A8 90 1C                    ..
        inc     $7205                           ; 92AA EE 05 72                 ..r
        rts                                     ; 92AD 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_92AE:
        brk                                     ; 92AE 00                       .
        db   $29,$C3,$08                     ; 92AF 29 C3 08                 )..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_92C6; 92B2 B0 12                    ..
        brk                                     ; 92B4 00                       .
        db   $1B,$B3                         ; 92B5 1B B3                    ..
; ----------------------------------------------------------------------------
        clc                                     ; 92B7 18                       .
        adc     $7201                           ; 92B8 6D 01 72                 m.r
        sta     $7201                           ; 92BB 8D 01 72                 ..r
        lda     $7F                             ; 92BE A5 7F                    ..
        adc     $7202                           ; 92C0 6D 02 72                 m.r
        sta     $7202                           ; 92C3 8D 02 72                 ..r
BattleActionServices_Branch_92C6:
        rts                                     ; 92C6 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_92C7:
        lda     #$FF                            ; 92C7 A9 FF                    ..
        sta     $7D                             ; 92C9 85 7D                    .}
        brk                                     ; 92CB 00                       .
        db   $03,$B3                         ; 92CC 03 B3                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 92CE 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_92CF:
        lda     $72E9                           ; 92CF AD E9 72                 ..r
        bmi     BattleActionServices_Branch_9334; 92D2 30 60                    0`
        lda     $72E7                           ; 92D4 AD E7 72                 ..r
        and     #$60                            ; 92D7 29 60                    )`
        bne     BattleActionServices_Branch_9333; 92D9 D0 58                    .X
        ldx     #$FF                            ; 92DB A2 FF                    ..
        brk                                     ; 92DD 00                       .
        db   $29,$C3,$0E                     ; 92DE 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        beq     BattleActionServices_Entry_9316 ; 92E1 F0 33                    .3
        pha                                     ; 92E3 48                       H
        brk                                     ; 92E4 00                       .
        db   $29,$C3,$0A                     ; 92E5 29 C3 0A                 )..
; ----------------------------------------------------------------------------
        eor     #$FF                            ; 92E8 49 FF                    I.
        sta     $7E                             ; 92EA 85 7E                    .~
        pla                                     ; 92EC 68                       h
        and     $7E                             ; 92ED 25 7E                    %~
        beq     BattleActionServices_Entry_9316 ; 92EF F0 25                    .%
        brk                                     ; 92F1 00                       .
        db   $5D,$33                         ; 92F2 5D 33                    ]3
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_92FD; 92F4 90 07                    ..
        lda     SaveGameStateFlags              ; 92F6 AD 8E 61                 ..a
        and     #$07                            ; 92F9 29 07                    ).
        beq     BattleActionServices_Branch_9305; 92FB F0 08                    ..
BattleActionServices_Branch_92FD:
        brk                                     ; 92FD 00                       .
        db   $62,$23,$4B                     ; 92FE 62 23 4B                 b#K
; ----------------------------------------------------------------------------
        beq     BattleActionServices_Branch_930B; 9301 F0 08                    ..
        bne     BattleActionServices_Branch_9321; 9303 D0 1C                    ..
BattleActionServices_Branch_9305:
        brk                                     ; 9305 00                       .
        db   $62,$23,$0B                     ; 9306 62 23 0B                 b#.
; ----------------------------------------------------------------------------
        bne     BattleActionServices_Branch_9321; 9309 D0 16                    ..
BattleActionServices_Branch_930B:
        lda     $72E7                           ; 930B AD E7 72                 ..r
        and     #$9F                            ; 930E 29 9F                    ).
        ora     #$40                            ; 9310 09 40                    .@
        sta     $72E7                           ; 9312 8D E7 72                 ..r
        rts                                     ; 9315 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9316:
        lda     $72E7                           ; 9316 AD E7 72                 ..r
        and     #$9F                            ; 9319 29 9F                    ).
        ora     #$20                            ; 931B 09 20                    .
        sta     $72E7                           ; 931D 8D E7 72                 ..r
        rts                                     ; 9320 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9321:
        brk                                     ; 9321 00                       .
        db   $5D,$33                         ; 9322 5D 33                    ]3
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9333; 9324 90 0D                    ..
        lda     SaveGameStateFlags              ; 9326 AD 8E 61                 ..a
        and     #$07                            ; 9329 29 07                    ).
        beq     BattleActionServices_Branch_9333; 932B F0 06                    ..
        brk                                     ; 932D 00                       .
        db   $62,$23,$4B                     ; 932E 62 23 4B                 b#K
; ----------------------------------------------------------------------------
        beq     BattleActionServices_Branch_930B; 9331 F0 D8                    ..
BattleActionServices_Branch_9333:
        rts                                     ; 9333 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9334:
        ldx     #$80                            ; 9334 A2 80                    ..
        brk                                     ; 9336 00                       .
        db   $29,$C3,$0E                     ; 9337 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        pha                                     ; 933A 48                       H
        brk                                     ; 933B 00                       .
        db   $29,$C3,$0D                     ; 933C 29 C3 0D                 )..
; ----------------------------------------------------------------------------
        pla                                     ; 933F 68                       h
        cmp     $7E                             ; 9340 C5 7E                    .~
        beq     BattleActionServices_Branch_9358; 9342 F0 14                    ..
        cmp     #$01                            ; 9344 C9 01                    ..
        bne     BattleActionServices_Branch_9382; 9346 D0 3A                    .:
        ldx     #$FF                            ; 9348 A2 FF                    ..
        brk                                     ; 934A 00                       .
        db   $29,$C3,$0E                     ; 934B 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        ldx     #$00                            ; 934E A2 00                    ..
BattleActionServices_Branch_9350:
        lsr     a                               ; 9350 4A                       J
        bcs     BattleActionServices_Branch_9363; 9351 B0 10                    ..
        inx                                     ; 9353 E8                       .
        cpx     #$04                            ; 9354 E0 04                    ..
        bcc     BattleActionServices_Branch_9350; 9356 90 F8                    ..
BattleActionServices_Branch_9358:
        jsr     BattleActionServices_Entry_9316 ; 9358 20 16 93                  ..
        lda     $6E7F                           ; 935B AD 7F 6E                 ..n
        and     #$03                            ; 935E 29 03                    ).
        jmp     BattleActionServices_Branch_937F; 9360 4C 7F 93                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9363:
        jsr     BattleActionServices_Entry_9316 ; 9363 20 16 93                  ..
        lda     $6E7F                           ; 9366 AD 7F 6E                 ..n
        and     #$03                            ; 9369 29 03                    ).
        sta     $6E7F                           ; 936B 8D 7F 6E                 ..n
        cpx     $6E7F                           ; 936E EC 7F 6E                 ..n
        bne     BattleActionServices_Branch_937A; 9371 D0 07                    ..
        lda     $6E7F                           ; 9373 AD 7F 6E                 ..n
        ora     #$40                            ; 9376 09 40                    .@
        bne     BattleActionServices_Branch_937F; 9378 D0 05                    ..
BattleActionServices_Branch_937A:
        lda     $6E7F                           ; 937A AD 7F 6E                 ..n
        ora     #$80                            ; 937D 09 80                    ..
BattleActionServices_Branch_937F:
        sta     $6E7F                           ; 937F 8D 7F 6E                 ..n
BattleActionServices_Branch_9382:
        rts                                     ; 9382 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9383:
        lda     $7361                           ; 9383 AD 61 73                 .as
        ora     $7362                           ; 9386 0D 62 73                 .bs
        rts                                     ; 9389 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_938A:
        lda     $72E7                           ; 938A AD E7 72                 ..r
        ora     #$01                            ; 938D 09 01                    ..
        sta     $72E7                           ; 938F 8D E7 72                 ..r
        rts                                     ; 9392 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9393:
        lda     $72E7                           ; 9393 AD E7 72                 ..r
        and     #$FE                            ; 9396 29 FE                    ).
        sta     $72E7                           ; 9398 8D E7 72                 ..r
        rts                                     ; 939B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_939C:
        ldx     #$0F                            ; 939C A2 0F                    ..
        lda     #$00                            ; 939E A9 00                    ..
BattleActionServices_Branch_93A0:
        sta     $7374,x                         ; 93A0 9D 74 73                 .ts
        dex                                     ; 93A3 CA                       .
        bpl     BattleActionServices_Branch_93A0; 93A4 10 FA                    ..
        brk                                     ; 93A6 00                       .
        db   $02,$1F                         ; 93A7 02 1F                    ..
; ----------------------------------------------------------------------------
        bmi     BattleActionServices_Branch_93AE; 93A9 30 03                    0.
        jmp     BattleActionServices_Branch_946D; 93AB 4C 6D 94                 Lm.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_93AE:
        and     #$7F                            ; 93AE 29 7F                    ).
        cmp     #$08                            ; 93B0 C9 08                    ..
        bcs     BattleActionServices_Branch_93C9; 93B2 B0 15                    ..
        pha                                     ; 93B4 48                       H
        tax                                     ; 93B5 AA                       .
        brk                                     ; 93B6 00                       .
        db   $29,$C3,$0E                     ; 93B7 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_93C7; 93BA 90 0B                    ..
        jsr     BattleActionServices_Entry_99C0 ; 93BC 20 C0 99                  ..
        pla                                     ; 93BF 68                       h
        ora     #$80                            ; 93C0 09 80                    ..
        sta     $7363                           ; 93C2 8D 63 73                 .cs
        sec                                     ; 93C5 38                       8
        rts                                     ; 93C6 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_93C7:
        pla                                     ; 93C7 68                       h
        rts                                     ; 93C8 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_93C9:
        sbc     #$08                            ; 93C9 E9 08                    ..
        and     #$03                            ; 93CB 29 03                    ).
        ldx     #$FF                            ; 93CD A2 FF                    ..
        brk                                     ; 93CF 00                       .
        db   $2D,$B3                         ; 93D0 2D B3                    -.
; ----------------------------------------------------------------------------
        beq     BattleActionServices_Branch_9416; 93D2 F0 42                    .B
        sta     $00                           ; 93D4 85 00                    ..
        brk                                     ; 93D6 00                       .
        db   $29,$C3,$0E                     ; 93D7 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        and     $00                           ; 93DA 25 00                    %.
        beq     BattleActionServices_Branch_9416; 93DC F0 38                    .8
        sta     $00                           ; 93DE 85 00                    ..
        brk                                     ; 93E0 00                       .
        db   $29,$C3,$02                     ; 93E1 29 C3 02                 )..
; ----------------------------------------------------------------------------
        eor     #$FF                            ; 93E4 49 FF                    I.
        and     $00                           ; 93E6 25 00                    %.
        beq     BattleActionServices_Branch_93F8; 93E8 F0 0E                    ..
        sta     $00                           ; 93EA 85 00                    ..
        brk                                     ; 93EC 00                       .
        db   $29,$C3,$0D                     ; 93ED 29 C3 0D                 )..
; ----------------------------------------------------------------------------
        eor     #$FF                            ; 93F0 49 FF                    I.
        and     $00                           ; 93F2 25 00                    %.
        beq     BattleActionServices_Branch_93F8; 93F4 F0 02                    ..
        sta     $00                           ; 93F6 85 00                    ..
BattleActionServices_Branch_93F8:
        brk                                     ; 93F8 00                       .
        db   $29,$C3,$00                     ; 93F9 29 C3 00                 )..
; ----------------------------------------------------------------------------
        eor     #$FF                            ; 93FC 49 FF                    I.
        and     $00                           ; 93FE 25 00                    %.
        beq     BattleActionServices_Branch_9404; 9400 F0 02                    ..
        sta     $00                           ; 9402 85 00                    ..
BattleActionServices_Branch_9404:
        jsr     BattleActionServices_Entry_94B2 ; 9404 20 B2 94                  ..
        ldx     #$00                            ; 9407 A2 00                    ..
BattleActionServices_Branch_9409:
        lda     $737C,x                         ; 9409 BD 7C 73                 .|s
        ora     $7374,x                         ; 940C 1D 74 73                 .ts
        bne     BattleActionServices_Branch_9418; 940F D0 07                    ..
        inx                                     ; 9411 E8                       .
        cpx     #$08                            ; 9412 E0 08                    ..
        bne     BattleActionServices_Branch_9409; 9414 D0 F3                    ..
BattleActionServices_Branch_9416:
        clc                                     ; 9416 18                       .
        rts                                     ; 9417 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9418:
        ldx     #$FF                            ; 9418 A2 FF                    ..
        stx     $01                             ; 941A 86 01                    ..
        inx                                     ; 941C E8                       .
        stx     $02                           ; 941D 86 02                    ..
        stx     $03                             ; 941F 86 03                    ..
BattleActionServices_Branch_9421:
        lda     $737C,x                         ; 9421 BD 7C 73                 .|s
        bpl     BattleActionServices_Branch_9452; 9424 10 2C                    .,
        and     #$7F                            ; 9426 29 7F                    ).
        beq     BattleActionServices_Branch_9439; 9428 F0 0F                    ..
        ldy     $03                             ; 942A A4 03                    ..
        beq     BattleActionServices_Branch_9444; 942C F0 16                    ..
        cmp     $03                             ; 942E C5 03                    ..
        bcc     BattleActionServices_Branch_9439; 9430 90 07                    ..
        lda     $7374,x                         ; 9432 BD 74 73                 .ts
        cmp     $02                           ; 9435 C5 02                    ..
        bcs     BattleActionServices_Branch_9452; 9437 B0 19                    ..
BattleActionServices_Branch_9439:
        lda     $03                             ; 9439 A5 03                    ..
        bne     BattleActionServices_Branch_9452; 943B D0 15                    ..
        lda     $7374,x                         ; 943D BD 74 73                 .ts
        cmp     $02                           ; 9440 C5 02                    ..
        bcc     BattleActionServices_Branch_9452; 9442 90 0E                    ..
BattleActionServices_Branch_9444:
        lda     $737C,x                         ; 9444 BD 7C 73                 .|s
        and     #$7F                            ; 9447 29 7F                    ).
        sta     $03                             ; 9449 85 03                    ..
        lda     $7374,x                         ; 944B BD 74 73                 .ts
        sta     $02                           ; 944E 85 02                    ..
        stx     $01                             ; 9450 86 01                    ..
BattleActionServices_Branch_9452:
        inx                                     ; 9452 E8                       .
        cpx     #$08                            ; 9453 E0 08                    ..
        bne     BattleActionServices_Branch_9421; 9455 D0 CA                    ..
        ldx     $01                             ; 9457 A6 01                    ..
        lda     $7364,x                         ; 9459 BD 64 73                 .ds
        sta     $7361                           ; 945C 8D 61 73                 .as
        lda     $736C,x                         ; 945F BD 6C 73                 .ls
        sta     $7362                           ; 9462 8D 62 73                 .bs
        txa                                     ; 9465 8A                       .
        ora     #$80                            ; 9466 09 80                    ..
        sta     $7363                           ; 9468 8D 63 73                 .cs
        sec                                     ; 946B 38                       8
        rts                                     ; 946C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_946D:
        sta     $7363                           ; 946D 8D 63 73                 .cs
        brk                                     ; 9470 00                       .
        db   $67,$73                         ; 9471 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; 9473 AA                       .
        brk                                     ; 9474 00                       .
        db   $46,$93,$07                     ; 9475 46 93 07                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_94B1; 9478 90 37                    .7
        brk                                     ; 947A 00                       .
        db   $02,$1F                         ; 947B 02 1F                    ..
; ----------------------------------------------------------------------------
        tax                                     ; 947D AA                       .
        jsr     BattleActionServices_Entry_9980 ; 947E 20 80 99                  ..
        brk                                     ; 9481 00                       .
        db   $46,$93,$12                     ; 9482 46 93 12                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_94B1; 9485 B0 2A                    .*
        brk                                     ; 9487 00                       .
        db   $46,$93,$10                     ; 9488 46 93 10                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_94B0; 948B 90 23                    .#
        brk                                     ; 948D 00                       .
        db   $01,$1F                         ; 948E 01 1F                    ..
; ----------------------------------------------------------------------------
        bmi     BattleActionServices_Branch_94B0; 9490 30 1E                    0.
        lsr     $0F                             ; 9492 46 0F                    F.
        ror     $0E                             ; 9494 66 0E                    f.
        lsr     $0F                             ; 9496 46 0F                    F.
        ror     $0E                             ; 9498 66 0E                    f.
        lsr     $0F                             ; 949A 46 0F                    F.
        ror     $0E                             ; 949C 66 0E                    f.
        brk                                     ; 949E 00                       .
        db   $1B,$0F                         ; 949F 1B 0F                    ..
; ----------------------------------------------------------------------------
        and     #$03                            ; 94A1 29 03                    ).
        clc                                     ; 94A3 18                       .
        adc     $0E                             ; 94A4 65 0E                    e.
        sta     $7361                           ; 94A6 8D 61 73                 .as
        lda     $0F                             ; 94A9 A5 0F                    ..
        adc     #$00                            ; 94AB 69 00                    i.
        sta     $7362                           ; 94AD 8D 62 73                 .bs
BattleActionServices_Branch_94B0:
        sec                                     ; 94B0 38                       8
BattleActionServices_Branch_94B1:
        rts                                     ; 94B1 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_94B2:
        ldx     #$00                            ; 94B2 A2 00                    ..
BattleActionServices_Branch_94B4:
        stx     $97                             ; 94B4 86 97                    ..
        lsr     $00                           ; 94B6 46 00                    F.
        bcc     BattleActionServices_Branch_950F; 94B8 90 55                    .U
        jsr     BattleActionServices_Entry_99C0 ; 94BA 20 C0 99                  ..
        ldx     $97                             ; 94BD A6 97                    ..
        lda     $7361                           ; 94BF AD 61 73                 .as
        sta     $02                           ; 94C2 85 02                    ..
        sta     $7364,x                         ; 94C4 9D 64 73                 .ds
        lda     $7362                           ; 94C7 AD 62 73                 .bs
        sta     $03                             ; 94CA 85 03                    ..
        sta     $736C,x                         ; 94CC 9D 6C 73                 .ls
        brk                                     ; 94CF 00                       .
        db   $01,$1F                         ; 94D0 01 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 94D2 00                       .
        db   $67,$73                         ; 94D3 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; 94D5 AA                       .
        lda     #$00                            ; 94D6 A9 00                    ..
        brk                                     ; 94D8 00                       .
        db   $17,$0F                         ; 94D9 17 0F                    ..
; ----------------------------------------------------------------------------
        lsr     a                               ; 94DB 4A                       J
        lsr     a                               ; 94DC 4A                       J
        ldx     #$02                            ; 94DD A2 02                    ..
        jsr     MultiplyPointerWord             ; 94DF 20 27 C8                  '.
        ldx     $97                             ; 94E2 A6 97                    ..
        clc                                     ; 94E4 18                       .
        lda     $03                             ; 94E5 A5 03                    ..
        adc     $7364,x                         ; 94E7 7D 64 73                 }ds
        sta     $02                           ; 94EA 85 02                    ..
        lda     #$00                            ; 94EC A9 00                    ..
        sta     $01                             ; 94EE 85 01                    ..
        adc     $736C,x                         ; 94F0 7D 6C 73                 }ls
        sta     $03                             ; 94F3 85 03                    ..
        ldx     $97                             ; 94F5 A6 97                    ..
        brk                                     ; 94F7 00                       .
        db   $00,$B3                         ; 94F8 00 B3                    ..
; ----------------------------------------------------------------------------
        ldx     #$01                            ; 94FA A2 01                    ..
        ldy     #$7E                            ; 94FC A0 7E                    .~
        jsr     BattleActionServices_Entry_9A84 ; 94FE 20 84 9A                  ..
        ldx     $97                             ; 9501 A6 97                    ..
        lda     $01                             ; 9503 A5 01                    ..
        sta     $7374,x                         ; 9505 9D 74 73                 .ts
        lda     $02                           ; 9508 A5 02                    ..
        ora     #$80                            ; 950A 09 80                    ..
        sta     $737C,x                         ; 950C 9D 7C 73                 .|s
BattleActionServices_Branch_950F:
        inx                                     ; 950F E8                       .
        cpx     #$08                            ; 9510 E0 08                    ..
        bne     BattleActionServices_Branch_94B4; 9512 D0 A0                    ..
        rts                                     ; 9514 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9515:
        jmp     BattleActionServices_Branch_95DD; 9515 4C DD 95                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9518:
        brk                                     ; 9518 00                       .
        db   $03,$1F                         ; 9519 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$30                            ; 951B C9 30                    .0
        beq     BattleActionServices_Branch_9515; 951D F0 F6                    ..
        cmp     #$31                            ; 951F C9 31                    .1
        beq     BattleActionServices_Branch_9515; 9521 F0 F2                    ..
        cmp     #$71                            ; 9523 C9 71                    .q
        beq     BattleActionServices_Branch_9515; 9525 F0 EE                    ..
        cmp     #$97                            ; 9527 C9 97                    ..
        beq     BattleActionServices_Branch_9515; 9529 F0 EA                    ..
        brk                                     ; 952B 00                       .
        db   $0E,$3F                         ; 952C 0E 3F                    .?
; ----------------------------------------------------------------------------
        cmp     #$00                            ; 952E C9 00                    ..
        bne     BattleActionServices_Branch_9535; 9530 D0 03                    ..
        jmp     BattleActionServices_Branch_95B7; 9532 4C B7 95                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9535:
        brk                                     ; 9535 00                       .
        db   $02,$1F                         ; 9536 02 1F                    ..
; ----------------------------------------------------------------------------
        bmi     BattleActionServices_Branch_9548; 9538 30 0E                    0.
        sta     $7363                           ; 953A 8D 63 73                 .cs
        brk                                     ; 953D 00                       .
        db   $67,$73                         ; 953E 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; 9540 AA                       .
        brk                                     ; 9541 00                       .
        db   $46,$93,$07                     ; 9542 46 93 07                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_95C2; 9545 90 7B                    .{
        rts                                     ; 9547 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9548:
        and     #$7F                            ; 9548 29 7F                    ).
        cmp     #$08                            ; 954A C9 08                    ..
        bcs     BattleActionServices_Branch_9561; 954C B0 13                    ..
        tax                                     ; 954E AA                       .
        ora     #$80                            ; 954F 09 80                    ..
        sta     $7363                           ; 9551 8D 63 73                 .cs
        brk                                     ; 9554 00                       .
        db   $29,$C3,$0F                     ; 9555 29 C3 0F                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9560; 9558 90 06                    ..
        brk                                     ; 955A 00                       .
        db   $29,$C3,$0E                     ; 955B 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_95C2; 955E 90 62                    .b
BattleActionServices_Branch_9560:
        rts                                     ; 9560 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9561:
        sbc     #$08                            ; 9561 E9 08                    ..
        and     #$03                            ; 9563 29 03                    ).
        ldx     #$FF                            ; 9565 A2 FF                    ..
        brk                                     ; 9567 00                       .
        db   $2D,$B3                         ; 9568 2D B3                    -.
; ----------------------------------------------------------------------------
        sta     $00                           ; 956A 85 00                    ..
        beq     BattleActionServices_Branch_95D0; 956C F0 62                    .b
        brk                                     ; 956E 00                       .
        db   $29,$C3,$0E                     ; 956F 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        and     $00                           ; 9572 25 00                    %.
        beq     BattleActionServices_Branch_95BF; 9574 F0 49                    .I
        sta     $00                           ; 9576 85 00                    ..
        brk                                     ; 9578 00                       .
        db   $29,$C3,$0D                     ; 9579 29 C3 0D                 )..
; ----------------------------------------------------------------------------
        eor     #$FF                            ; 957C 49 FF                    I.
        and     $00                           ; 957E 25 00                    %.
        beq     BattleActionServices_Branch_9584; 9580 F0 02                    ..
        sta     $00                           ; 9582 85 00                    ..
BattleActionServices_Branch_9584:
        brk                                     ; 9584 00                       .
        db   $03,$1F                         ; 9585 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$3C                            ; 9587 C9 3C                    .<
        bcs     BattleActionServices_Branch_95A5; 9589 B0 1A                    ..
        ldx     #$FF                            ; 958B A2 FF                    ..
        brk                                     ; 958D 00                       .
        db   $29,$C3,$06                     ; 958E 29 C3 06                 )..
; ----------------------------------------------------------------------------
        eor     #$FF                            ; 9591 49 FF                    I.
        and     $00                           ; 9593 25 00                    %.
        beq     BattleActionServices_Branch_9599; 9595 F0 02                    ..
        sta     $00                           ; 9597 85 00                    ..
BattleActionServices_Branch_9599:
        brk                                     ; 9599 00                       .
        db   $29,$C3,$07                     ; 959A 29 C3 07                 )..
; ----------------------------------------------------------------------------
        eor     #$FF                            ; 959D 49 FF                    I.
        and     $00                           ; 959F 25 00                    %.
        beq     BattleActionServices_Branch_95A5; 95A1 F0 02                    ..
        sta     $00                           ; 95A3 85 00                    ..
BattleActionServices_Branch_95A5:
        brk                                     ; 95A5 00                       .
        db   $29,$C3,$02                     ; 95A6 29 C3 02                 )..
; ----------------------------------------------------------------------------
        eor     #$FF                            ; 95A9 49 FF                    I.
        and     $00                           ; 95AB 25 00                    %.
        beq     BattleActionServices_Branch_95B1; 95AD F0 02                    ..
        sta     $00                           ; 95AF 85 00                    ..
BattleActionServices_Branch_95B1:
        jsr     BattleActionServices_Entry_95D2 ; 95B1 20 D2 95                  ..
        bcc     BattleActionServices_Branch_95C2; 95B4 90 0C                    ..
        rts                                     ; 95B6 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_95B7:
        brk                                     ; 95B7 00                       .
        db   $01,$1F                         ; 95B8 01 1F                    ..
; ----------------------------------------------------------------------------
        sta     $7363                           ; 95BA 8D 63 73                 .cs
        sec                                     ; 95BD 38                       8
        rts                                     ; 95BE 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_95BF:
        jsr     BattleActionServices_Entry_95D2 ; 95BF 20 D2 95                  ..
BattleActionServices_Branch_95C2:
        brk                                     ; 95C2 00                       .
        db   $07,$1F                         ; 95C3 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_95CC; 95C5 90 05                    ..
        brk                                     ; 95C7 00                       .
        db   $06,$1F                         ; 95C8 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_95D0; 95CA 90 04                    ..
BattleActionServices_Branch_95CC:
        brk                                     ; 95CC 00                       .
        db   $E4,$D3,$6E                     ; 95CD E4 D3 6E                 ..n
; ----------------------------------------------------------------------------
BattleActionServices_Branch_95D0:
        clc                                     ; 95D0 18                       .
        rts                                     ; 95D1 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_95D2:
        lda     $00                           ; 95D2 A5 00                    ..
        brk                                     ; 95D4 00                       .
        db   $2B,$0F                         ; 95D5 2B 0F                    +.
; ----------------------------------------------------------------------------
        ora     #$80                            ; 95D7 09 80                    ..
        sta     $7363                           ; 95D9 8D 63 73                 .cs
        rts                                     ; 95DC 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_95DD:
        brk                                     ; 95DD 00                       .
        db   $02,$1F                         ; 95DE 02 1F                    ..
; ----------------------------------------------------------------------------
        bmi     BattleActionServices_Branch_95E7; 95E0 30 05                    0.
        sta     $7363                           ; 95E2 8D 63 73                 .cs
        sec                                     ; 95E5 38                       8
        rts                                     ; 95E6 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_95E7:
        and     #$7F                            ; 95E7 29 7F                    ).
        cmp     #$08                            ; 95E9 C9 08                    ..
        bcs     BattleActionServices_Branch_95F5; 95EB B0 08                    ..
        tax                                     ; 95ED AA                       .
        ora     #$80                            ; 95EE 09 80                    ..
        sta     $7363                           ; 95F0 8D 63 73                 .cs
        sec                                     ; 95F3 38                       8
        rts                                     ; 95F4 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_95F5:
        sbc     #$08                            ; 95F5 E9 08                    ..
        and     #$03                            ; 95F7 29 03                    ).
        ldx     #$FF                            ; 95F9 A2 FF                    ..
        brk                                     ; 95FB 00                       .
        db   $2D,$B3                         ; 95FC 2D B3                    -.
; ----------------------------------------------------------------------------
        sta     $00                           ; 95FE 85 00                    ..
        brk                                     ; 9600 00                       .
        db   $29,$C3,$0E                     ; 9601 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        eor     #$FF                            ; 9604 49 FF                    I.
        and     $00                           ; 9606 25 00                    %.
        brk                                     ; 9608 00                       .
        db   $2B,$0F                         ; 9609 2B 0F                    +.
; ----------------------------------------------------------------------------
        ora     #$80                            ; 960B 09 80                    ..
        sta     $7363                           ; 960D 8D 63 73                 .cs
        rts                                     ; 9610 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9611:
        brk                                     ; 9611 00                       .
        db   $02,$1F                         ; 9612 02 1F                    ..
; ----------------------------------------------------------------------------
        bpl     BattleActionServices_Branch_9689; 9614 10 73                    .s
        ldx     #$FF                            ; 9616 A2 FF                    ..
        brk                                     ; 9618 00                       .
        db   $29,$C3,$0E                     ; 9619 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        brk                                     ; 961C 00                       .
        db   $03,$1F                         ; 961D 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$30                            ; 961F C9 30                    .0
        beq     BattleActionServices_Branch_9632; 9621 F0 0F                    ..
        cmp     #$31                            ; 9623 C9 31                    .1
        beq     BattleActionServices_Branch_9632; 9625 F0 0B                    ..
        cmp     #$32                            ; 9627 C9 32                    .2
        bne     BattleActionServices_Branch_9638; 9629 D0 0D                    ..
        brk                                     ; 962B 00                       .
        db   $29,$C3,$0F                     ; 962C 29 C3 0F                 )..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_9638; 962F 4C 38 96                 L8.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9632:
        lda     $7E                             ; 9632 A5 7E                    .~
        eor     #$FF                            ; 9634 49 FF                    I.
        sta     $7E                             ; 9636 85 7E                    .~
BattleActionServices_Branch_9638:
        lda     $7E                             ; 9638 A5 7E                    .~
        sta     $00                           ; 963A 85 00                    ..
        brk                                     ; 963C 00                       .
        db   $03,$1F                         ; 963D 03 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 963F 00                       .
        db   $0E,$3F                         ; 9640 0E 3F                    .?
; ----------------------------------------------------------------------------
        cmp     #$03                            ; 9642 C9 03                    ..
        beq     BattleActionServices_Branch_9657; 9644 F0 11                    ..
        brk                                     ; 9646 00                       .
        db   $02,$1F                         ; 9647 02 1F                    ..
; ----------------------------------------------------------------------------
        and     #$7F                            ; 9649 29 7F                    ).
        sec                                     ; 964B 38                       8
        sbc     #$08                            ; 964C E9 08                    ..
        ldx     #$FF                            ; 964E A2 FF                    ..
        brk                                     ; 9650 00                       .
        db   $2D,$B3                         ; 9651 2D B3                    -.
; ----------------------------------------------------------------------------
        and     $00                           ; 9653 25 00                    %.
BattleActionServices_Branch_9655:
        sta     $00                           ; 9655 85 00                    ..
BattleActionServices_Branch_9657:
        jsr     BattleActionServices_Entry_96D1 ; 9657 20 D1 96                  ..
        lda     $735E                           ; 965A AD 5E 73                 .^s
        ora     #$80                            ; 965D 09 80                    ..
        sta     $7363                           ; 965F 8D 63 73                 .cs
        php                                     ; 9662 08                       .
        lda     $72E9                           ; 9663 AD E9 72                 ..r
        bmi     BattleActionServices_Branch_966A; 9666 30 02                    0.
        plp                                     ; 9668 28                       (
        rts                                     ; 9669 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_966A:
        brk                                     ; 966A 00                       .
        db   $03,$1F                         ; 966B 03 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 966D 00                       .
        db   $0C,$3F                         ; 966E 0C 3F                    .?
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_967C; 9670 90 0A                    ..
        brk                                     ; 9672 00                       .
        db   $01,$1F                         ; 9673 01 1F                    ..
; ----------------------------------------------------------------------------
        cmp     $7363                           ; 9675 CD 63 73                 .cs
        beq     BattleActionServices_Branch_9686; 9678 F0 0C                    ..
        plp                                     ; 967A 28                       (
        rts                                     ; 967B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_967C:
        brk                                     ; 967C 00                       .
        db   $01,$1F                         ; 967D 01 1F                    ..
; ----------------------------------------------------------------------------
        cmp     $7363                           ; 967F CD 63 73                 .cs
        bne     BattleActionServices_Branch_9686; 9682 D0 02                    ..
        plp                                     ; 9684 28                       (
        rts                                     ; 9685 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9686:
        plp                                     ; 9686 28                       (
        clc                                     ; 9687 18                       .
        rts                                     ; 9688 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9689:
        lda     #$07                            ; 9689 A9 07                    ..
        brk                                     ; 968B 00                       .
        db   $2C,$0F                         ; 968C 2C 0F                    ,.
; ----------------------------------------------------------------------------
        sta     $00                           ; 968E 85 00                    ..
        brk                                     ; 9690 00                       .
        db   $03,$1F                         ; 9691 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$E8                            ; 9693 C9 E8                    ..
        beq     BattleActionServices_Branch_969F; 9695 F0 08                    ..
        cmp     #$30                            ; 9697 C9 30                    .0
        bcc     BattleActionServices_Branch_96B1; 9699 90 16                    ..
        cmp     #$33                            ; 969B C9 33                    .3
        bcs     BattleActionServices_Branch_96B1; 969D B0 12                    ..
BattleActionServices_Branch_969F:
        jsr     BattleActionServices_Entry_96D1 ; 969F 20 D1 96                  ..
        bcs     BattleActionServices_Branch_96B6; 96A2 B0 12                    ..
        brk                                     ; 96A4 00                       .
        db   $62,$23,$40                     ; 96A5 62 23 40                 b#@
; ----------------------------------------------------------------------------
        lda     $735E                           ; 96A8 AD 5E 73                 .^s
        cmp     $72                             ; 96AB C5 72                    .r
        bcs     BattleActionServices_Branch_96C1; 96AD B0 12                    ..
        bcc     BattleActionServices_Branch_96B6; 96AF 90 05                    ..
BattleActionServices_Branch_96B1:
        jsr     BattleActionServices_Entry_96D1 ; 96B1 20 D1 96                  ..
        bcc     BattleActionServices_Branch_96C1; 96B4 90 0B                    ..
BattleActionServices_Branch_96B6:
        ldx     $735E                           ; 96B6 AE 5E 73                 .^s
        brk                                     ; 96B9 00                       .
        db   $68,$73                         ; 96BA 68 73                    hs
; ----------------------------------------------------------------------------
        sta     $7363                           ; 96BC 8D 63 73                 .cs
        sec                                     ; 96BF 38                       8
        rts                                     ; 96C0 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_96C1:
        clc                                     ; 96C1 18                       .
        rts                                     ; 96C2 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_96C3:
        brk                                     ; 96C3 00                       .
        db   $02,$1F                         ; 96C4 02 1F                    ..
; ----------------------------------------------------------------------------
        bpl     BattleActionServices_Branch_9689; 96C6 10 C1                    ..
        ldx     #$FF                            ; 96C8 A2 FF                    ..
        brk                                     ; 96CA 00                       .
        db   $29,$C3,$0E                     ; 96CB 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_9655; 96CE 4C 55 96                 LU.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_96D1:
        ldx     $735E                           ; 96D1 AE 5E 73                 .^s
BattleActionServices_Branch_96D4:
        lsr     $00                           ; 96D4 46 00                    F.
        dex                                     ; 96D6 CA                       .
        bpl     BattleActionServices_Branch_96D4; 96D7 10 FB                    ..
        rts                                     ; 96D9 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_96DA:
        rts                                     ; 96DA 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_96DB:
        lsr     $72E7                           ; 96DB 4E E7 72                 N.r
        asl     $72E7                           ; 96DE 0E E7 72                 ..r
        brk                                     ; 96E1 00                       .
        db   $06,$1F                         ; 96E2 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Entry_970C ; 96E4 B0 26                    .&
        brk                                     ; 96E6 00                       .
        db   $3B,$93,$00                     ; 96E7 3B 93 00                 ;..
; ----------------------------------------------------------------------------
        cmp     #$96                            ; 96EA C9 96                    ..
        bne     BattleActionServices_Entry_970C ; 96EC D0 1E                    ..
        jsr     BattleActionServices_Entry_970C ; 96EE 20 0C 97                  ..
        lda     $72E7                           ; 96F1 AD E7 72                 ..r
        and     #$60                            ; 96F4 29 60                    )`
        bne     BattleActionServices_Branch_9772; 96F6 D0 7A                    .z
        lda     $6E44                           ; 96F8 AD 44 6E                 .Dn
        lsr     a                               ; 96FB 4A                       J
        bcs     BattleActionServices_Branch_9772; 96FC B0 74                    .t
        brk                                     ; 96FE 00                       .
        db   $13,$2F                         ; 96FF 13 2F                    ./
; ----------------------------------------------------------------------------
        lda     #$01                            ; 9701 A9 01                    ..
        sta     $735F                           ; 9703 8D 5F 73                 ._s
        sta     $7360                           ; 9706 8D 60 73                 .`s
        brk                                     ; 9709 00                       .
        db   $06,$6F                         ; 970A 06 6F                    .o
; ----------------------------------------------------------------------------
BattleActionServices_Entry_970C:
        jsr     BattleActionServices_Entry_939C ; 970C 20 9C 93                  ..
        bcc     BattleActionServices_Branch_9772; 970F 90 61                    .a
        brk                                     ; 9711 00                       .
        db   $07,$1F                         ; 9712 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_971B; 9714 90 05                    ..
        jsr     BattleActionServices_Entry_ACBF ; 9716 20 BF AC                  ..
        bcc     BattleActionServices_Branch_96DA; 9719 90 BF                    ..
BattleActionServices_Branch_971B:
        brk                                     ; 971B 00                       .
        db   $06,$1F                         ; 971C 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9775; 971E 90 55                    .U
        brk                                     ; 9720 00                       .
        db   $29,$C3,$04                     ; 9721 29 C3 04                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_972B; 9724 90 05                    ..
        jsr     BattleActionServices_Entry_97E6 ; 9726 20 E6 97                  ..
        bcc     BattleActionServices_Branch_9789; 9729 90 5E                    .^
BattleActionServices_Branch_972B:
        jsr     BattleActionServices_Entry_A63E ; 972B 20 3E A6                  >.
        bcc     BattleActionServices_Branch_96DA; 972E 90 AA                    ..
        brk                                     ; 9730 00                       .
        db   $29,$C3,$05                     ; 9731 29 C3 05                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9739; 9734 90 03                    ..
        jsr     BattleActionServices_Entry_9817 ; 9736 20 17 98                  ..
BattleActionServices_Branch_9739:
        brk                                     ; 9739 00                       .
        db   $07,$1F                         ; 973A 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_976F; 973C B0 31                    .1
        sta     $01                             ; 973E 85 01                    ..
        brk                                     ; 9740 00                       .
        db   $00,$53                         ; 9741 00 53                    .S
; ----------------------------------------------------------------------------
        sec                                     ; 9743 38                       8
        sbc     $7361                           ; 9744 ED 61 73                 .as
        lda     $73                             ; 9747 A5 73                    .s
        sbc     $7362                           ; 9749 ED 62 73                 .bs
        bcs     BattleActionServices_Branch_976F; 974C B0 21                    .!
        jsr     BattleActionServices_Entry_B31F ; 974E 20 1F B3                  ..
        bcc     BattleActionServices_Branch_976F; 9751 90 1C                    ..
        cmp     $01                             ; 9753 C5 01                    ..
        beq     BattleActionServices_Branch_976F; 9755 F0 18                    ..
        brk                                     ; 9757 00                       .
        db   $1B,$0F                         ; 9758 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$40                            ; 975A C9 40                    .@
        bcs     BattleActionServices_Branch_976F; 975C B0 11                    ..
        lda     $00                           ; 975E A5 00                    ..
        sta     $FA                             ; 9760 85 FA                    ..
        pha                                     ; 9762 48                       H
        brk                                     ; 9763 00                       .
        db   $E4,$D3,$49                     ; 9764 E4 D3 49                 ..I
; ----------------------------------------------------------------------------
        pla                                     ; 9767 68                       h
        tax                                     ; 9768 AA                       .
        brk                                     ; 9769 00                       .
        db   $68,$73                         ; 976A 68 73                    hs
; ----------------------------------------------------------------------------
        sta     $7363                           ; 976C 8D 63 73                 .cs
BattleActionServices_Branch_976F:
        jmp     BattleActionServices_Branch_97DA; 976F 4C DA 97                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9772:
        jmp     BattleActionServices_Branch_97E5; 9772 4C E5 97                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9775:
        jsr     BattleActionServices_Entry_9851 ; 9775 20 51 98                  Q.
        jsr     BattleActionServices_Entry_A69F ; 9778 20 9F A6                  ..
        bcs     BattleActionServices_Branch_97E5; 977B B0 68                    .h
        brk                                     ; 977D 00                       .
        db   $06,$1F                         ; 977E 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9780 00                       .
        db   $46,$93,$14                     ; 9781 46 93 14                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_978B; 9784 90 05                    ..
        jsr     BattleActionServices_Entry_97E6 ; 9786 20 E6 97                  ..
BattleActionServices_Branch_9789:
        bcc     BattleActionServices_Branch_97EC; 9789 90 61                    .a
BattleActionServices_Branch_978B:
        jsr     BattleActionServices_Entry_A63E ; 978B 20 3E A6                  >.
        bcc     BattleActionServices_Branch_97E5; 978E 90 55                    .U
        jsr     BattleActionServices_Entry_A6E3 ; 9790 20 E3 A6                  ..
        bcs     BattleActionServices_Branch_97CC; 9793 B0 37                    .7
        brk                                     ; 9795 00                       .
        db   $06,$1F                         ; 9796 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9798 00                       .
        db   $46,$93,$15                     ; 9799 46 93 15                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_97A4; 979C 90 06                    ..
        jsr     BattleActionServices_Entry_9817 ; 979E 20 17 98                  ..
        jmp     BattleActionServices_Branch_97D7; 97A1 4C D7 97                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_97A4:
        lda     $72E7                           ; 97A4 AD E7 72                 ..r
        and     #$08                            ; 97A7 29 08                    ).
        beq     BattleActionServices_Branch_97D7; 97A9 F0 2C                    .,
        lda     $72E4                           ; 97AB AD E4 72                 ..r
        and     #$08                            ; 97AE 29 08                    ).
        bne     BattleActionServices_Branch_97CC; 97B0 D0 1A                    ..
        lda     #$04                            ; 97B2 A9 04                    ..
        sta     $00                           ; 97B4 85 00                    ..
        brk                                     ; 97B6 00                       .
        db   $06,$1F                         ; 97B7 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 97B9 00                       .
        db   $2B,$53                         ; 97BA 2B 53                    +S
; ----------------------------------------------------------------------------
        cmp     #$07                            ; 97BC C9 07                    ..
        bne     BattleActionServices_Branch_97C5; 97BE D0 05                    ..
        brk                                     ; 97C0 00                       .
        db   $0F,$53                         ; 97C1 0F 53                    .S
; ----------------------------------------------------------------------------
        sta     $00                           ; 97C3 85 00                    ..
BattleActionServices_Branch_97C5:
        brk                                     ; 97C5 00                       .
        db   $1B,$0F                         ; 97C6 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     $00                           ; 97C8 C5 00                    ..
        bcs     BattleActionServices_Branch_97D7; 97CA B0 0B                    ..
BattleActionServices_Branch_97CC:
        jsr     BattleActionServices_Entry_9916 ; 97CC 20 16 99                  ..
        jsr     BattleActionServices_Entry_BF2E ; 97CF 20 2E BF                  ..
        db   $88                             ; 97D2 88                       .
; ----------------------------------------------------------------------------
        brk                                     ; 97D3 00                       .
        db   $F2,$D3,$04                     ; 97D4 F2 D3 04                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_97D7:
        jsr     BattleActionServices_Entry_A78B ; 97D7 20 8B A7                  ..
BattleActionServices_Branch_97DA:
        jsr     BattleActionServices_Entry_9878 ; 97DA 20 78 98                  x.
        bcc     BattleActionServices_Branch_97E5; 97DD 90 06                    ..
        jsr     BattleActionServices_Entry_90DB ; 97DF 20 DB 90                  ..
        jsr     BattleActionServices_Entry_A7C4 ; 97E2 20 C4 A7                  ..
BattleActionServices_Branch_97E5:
        rts                                     ; 97E5 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_97E6:
        brk                                     ; 97E6 00                       .
        db   $1B,$0F                         ; 97E7 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$C0                            ; 97E9 C9 C0                    ..
        rts                                     ; 97EB 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_97EC:
        jsr     BattleActionServices_Entry_938A ; 97EC 20 8A 93                  ..
        brk                                     ; 97EF 00                       .
        db   $06,$1F                         ; 97F0 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_980E; 97F2 90 1A                    ..
        lda     $72E9                           ; 97F4 AD E9 72                 ..r
        bpl     BattleActionServices_Branch_9805; 97F7 10 0C                    ..
        brk                                     ; 97F9 00                       .
        db   $2D,$A3                         ; 97FA 2D A3                    -.
; ----------------------------------------------------------------------------
        lda     $6E7F                           ; 97FC AD 7F 6E                 ..n
        and     #$03                            ; 97FF 29 03                    ).
        cmp     $7E                             ; 9801 C5 7E                    .~
        beq     BattleActionServices_Branch_980E; 9803 F0 09                    ..
BattleActionServices_Branch_9805:
        jsr     BattleActionServices_Entry_BF2E ; 9805 20 2E BF                  ..
        db   $8D                             ; 9808 8D                       .
; ----------------------------------------------------------------------------
        brk                                     ; 9809 00                       .
        db   $E4,$D3,$06                     ; 980A E4 D3 06                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 980D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_980E:
        jsr     BattleActionServices_Entry_BF2E ; 980E 20 2E BF                  ..
        db   $8C                             ; 9811 8C                       .
; ----------------------------------------------------------------------------
        brk                                     ; 9812 00                       .
        db   $E4,$D3,$07                     ; 9813 E4 D3 07                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9816 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9817:
        asl     $7361                           ; 9817 0E 61 73                 .as
        rol     $7362                           ; 981A 2E 62 73                 .bs
        rts                                     ; 981D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_981E:
        lsr     $7362                           ; 981E 4E 62 73                 Nbs
        ror     $7361                           ; 9821 6E 61 73                 nas
        jsr     BattleActionServices_Entry_9832 ; 9824 20 32 98                  2.
        ldx     #$00                            ; 9827 A2 00                    ..
        lda     #$03                            ; 9829 A9 03                    ..
        jsr     MultiplyPointerWord             ; 982B 20 27 C8                  '.
        jsr     BattleActionServices_Entry_983D ; 982E 20 3D 98                  =.
        rts                                     ; 9831 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9832:
        lda     $7361                           ; 9832 AD 61 73                 .as
        sta     $00                           ; 9835 85 00                    ..
        lda     $7362                           ; 9837 AD 62 73                 .bs
        sta     $01                             ; 983A 85 01                    ..
        rts                                     ; 983C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_983D:
        lda     $00                           ; 983D A5 00                    ..
        sta     $7361                           ; 983F 8D 61 73                 .as
        lda     $01                             ; 9842 A5 01                    ..
        sta     $7362                           ; 9844 8D 62 73                 .bs
        rts                                     ; 9847 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9848:
        brk                                     ; 9848 00                       .
        db   $06,$1F                         ; 9849 06 1F                    ..
; ----------------------------------------------------------------------------
        lda     #$00                            ; 984B A9 00                    ..
        brk                                     ; 984D 00                       .
        db   $3B,$73                         ; 984E 3B 73                    ;s
; ----------------------------------------------------------------------------
        rts                                     ; 9850 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9851:
        lda     $72E7                           ; 9851 AD E7 72                 ..r
        ora     #$08                            ; 9854 09 08                    ..
        sta     $72E7                           ; 9856 8D E7 72                 ..r
        rts                                     ; 9859 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_985A:
        lda     $72E7                           ; 985A AD E7 72                 ..r
        and     #$F7                            ; 985D 29 F7                    ).
        sta     $72E7                           ; 985F 8D E7 72                 ..r
        rts                                     ; 9862 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9863:
        lsr     $7362                           ; 9863 4E 62 73                 Nbs
        ror     $7361                           ; 9866 6E 61 73                 nas
        lsr     $7362                           ; 9869 4E 62 73                 Nbs
        ror     $7361                           ; 986C 6E 61 73                 nas
        inc     $7361                           ; 986F EE 61 73                 .as
        bne     BattleActionServices_Branch_9877; 9872 D0 03                    ..
        inc     $7362                           ; 9874 EE 62 73                 .bs
BattleActionServices_Branch_9877:
        rts                                     ; 9877 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9878:
        lda     $72E9                           ; 9878 AD E9 72                 ..r
        bmi     BattleActionServices_Branch_98AB; 987B 30 2E                    0.
        jsr     UpperFixedEngine_Entry_C891     ; 987D 20 91 C8                  ..
        cmp     #$6E                            ; 9880 C9 6E                    .n
        bcs     BattleActionServices_Branch_98AB; 9882 B0 27                    .'
        lda     $7363                           ; 9884 AD 63 73                 .cs
        bpl     BattleActionServices_Branch_98AB; 9887 10 22                    ."
        and     #$7F                            ; 9889 29 7F                    ).
        tax                                     ; 988B AA                       .
        brk                                     ; 988C 00                       .
        db   $2D,$A3                         ; 988D 2D A3                    -.
; ----------------------------------------------------------------------------
        tax                                     ; 988F AA                       .
        lda     $6E45,x                         ; 9890 BD 45 6E                 .En
        cmp     #$0D                            ; 9893 C9 0D                    ..
        beq     BattleActionServices_Branch_989B; 9895 F0 04                    ..
        cmp     #$9F                            ; 9897 C9 9F                    ..
        bne     BattleActionServices_Branch_98AB; 9899 D0 10                    ..
BattleActionServices_Branch_989B:
        txa                                     ; 989B 8A                       .
        pha                                     ; 989C 48                       H
        lda     $7363                           ; 989D AD 63 73                 .cs
        and     #$7F                            ; 98A0 29 7F                    ).
        sta     $C7                             ; 98A2 85 C7                    ..
        brk                                     ; 98A4 00                       .
        db   $18,$4F                         ; 98A5 18 4F                    .O
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_98AD; 98A7 B0 04                    ..
        pla                                     ; 98A9 68                       h
        tax                                     ; 98AA AA                       .
BattleActionServices_Branch_98AB:
        sec                                     ; 98AB 38                       8
        rts                                     ; 98AC 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_98AD:
        jsr     BattleActionServices_Entry_A1B4 ; 98AD 20 B4 A1                  ..
        stx     $7B                             ; 98B0 86 7B                    .{
        txa                                     ; 98B2 8A                       .
        pha                                     ; 98B3 48                       H
        jsr     BattleActionServices_Entry_BF2E ; 98B4 20 2E BF                  ..
        db   $87                             ; 98B7 87                       .
; ----------------------------------------------------------------------------
        brk                                     ; 98B8 00                       .
        db   $01,$4F                         ; 98B9 01 4F                    .O
; ----------------------------------------------------------------------------
        brk                                     ; 98BB 00                       .
        db   $97,$FB                         ; 98BC 97 FB                    ..
; ----------------------------------------------------------------------------
        pla                                     ; 98BE 68                       h
        sta     $7B                             ; 98BF 85 7B                    .{
        brk                                     ; 98C1 00                       .
        db   $12,$4F                         ; 98C2 12 4F                    .O
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_98CE; 98C4 B0 08                    ..
        brk                                     ; 98C6 00                       .
        db   $E5,$D3,$D0                     ; 98C7 E5 D3 D0                 ...
; ----------------------------------------------------------------------------
        pla                                     ; 98CA 68                       h
        tax                                     ; 98CB AA                       .
        clc                                     ; 98CC 18                       .
        rts                                     ; 98CD 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_98CE:
        lda     $7B                             ; 98CE A5 7B                    .{
        pha                                     ; 98D0 48                       H
        brk                                     ; 98D1 00                       .
        db   $E5,$D3,$D1                     ; 98D2 E5 D3 D1                 ...
; ----------------------------------------------------------------------------
        pla                                     ; 98D5 68                       h
        sta     $7B                             ; 98D6 85 7B                    .{
        pla                                     ; 98D8 68                       h
        sta     $7C                             ; 98D9 85 7C                    .|
        ldx     $7B                             ; 98DB A6 7B                    .{
        brk                                     ; 98DD 00                       .
        db   $31,$A3                         ; 98DE 31 A3                    1.
; ----------------------------------------------------------------------------
        clc                                     ; 98E0 18                       .
        rts                                     ; 98E1 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_98E2:
        jsr     BattleActionServices_Entry_9916 ; 98E2 20 16 99                  ..
        brk                                     ; 98E5 00                       .
        db   $1B,$0F                         ; 98E6 1B 0F                    ..
; ----------------------------------------------------------------------------
        and     #$03                            ; 98E8 29 03                    ).
        beq     BattleActionServices_Branch_98EF; 98EA F0 03                    ..
        jmp     BattleActionServices_Entry_96DB ; 98EC 4C DB 96                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_98EF:
        jsr     BattleActionServices_Entry_BF2E ; 98EF 20 2E BF                  ..
        db   $88                             ; 98F2 88                       .
; ----------------------------------------------------------------------------
        brk                                     ; 98F3 00                       .
        db   $F2,$D3,$04                     ; 98F4 F2 D3 04                 ...
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_90DB ; 98F7 4C DB 90                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_98FA:
        brk                                     ; 98FA 00                       .
        db   $06,$1F                         ; 98FB 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9906; 98FD 90 07                    ..
        brk                                     ; 98FF 00                       .
        db   $12,$A3                         ; 9900 12 A3                    ..
; ----------------------------------------------------------------------------
        ldx     #$7E                            ; 9902 A2 7E                    .~
        bne     BattleActionServices_Branch_990B; 9904 D0 05                    ..
BattleActionServices_Branch_9906:
        brk                                     ; 9906 00                       .
        db   $18,$53                         ; 9907 18 53                    .S
; ----------------------------------------------------------------------------
        ldx     #$72                            ; 9909 A2 72                    .r
BattleActionServices_Branch_990B:
        lda     #$05                            ; 990B A9 05                    ..
        jsr     MultiplyPointerWord             ; 990D 20 27 C8                  '.
        jsr     BattleActionServices_Entry_993A ; 9910 20 3A 99                  :.
        jmp     BattleActionServices_Branch_98EF; 9913 4C EF 98                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9916:
        lda     #$0B                            ; 9916 A9 0B                    ..
        brk                                     ; 9918 00                       .
        db   $17,$0F                         ; 9919 17 0F                    ..
; ----------------------------------------------------------------------------
        clc                                     ; 991B 18                       .
        adc     #$40                            ; 991C 69 40                    i@
        tay                                     ; 991E A8                       .
        brk                                     ; 991F 00                       .
        db   $06,$1F                         ; 9920 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_992C; 9922 90 08                    ..
        brk                                     ; 9924 00                       .
        db   $12,$A3                         ; 9925 12 A3                    ..
; ----------------------------------------------------------------------------
        tya                                     ; 9927 98                       .
        ldx     #$7E                            ; 9928 A2 7E                    .~
        bne     BattleActionServices_Branch_9932; 992A D0 06                    ..
BattleActionServices_Branch_992C:
        brk                                     ; 992C 00                       .
        db   $18,$53                         ; 992D 18 53                    .S
; ----------------------------------------------------------------------------
        tya                                     ; 992F 98                       .
        ldx     #$72                            ; 9930 A2 72                    .r
BattleActionServices_Branch_9932:
        jsr     MultiplyPointerWord             ; 9932 20 27 C8                  '.
        lda     #$40                            ; 9935 A9 40                    .@
        jsr     UpperFixedEngine_Entry_C851     ; 9937 20 51 C8                  Q.
BattleActionServices_Entry_993A:
        lda     $00,x                         ; 993A B5 00                    ..
        ldy     $01,x                           ; 993C B4 01                    ..
        sta     $7361                           ; 993E 8D 61 73                 .as
        sty     $7362                           ; 9941 8C 62 73                 .bs
        rts                                     ; 9944 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9945:
        jsr     BattleActionServices_Entry_96DB ; 9945 20 DB 96                  ..
        lda     #$60                            ; 9948 A9 60                    .`
        jsr     BattleActionServices_Entry_996D ; 994A 20 6D 99                  m.
        bcc     BattleActionServices_Branch_996C; 994D 90 1D                    ..
        jmp     BattleActionServices_Entry_9CC3 ; 994F 4C C3 9C                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9952:
        jsr     BattleActionServices_Entry_96DB ; 9952 20 DB 96                  ..
        lda     #$60                            ; 9955 A9 60                    .`
        jsr     BattleActionServices_Entry_996D ; 9957 20 6D 99                  m.
        bcc     BattleActionServices_Branch_996C; 995A 90 10                    ..
        jmp     BattleActionServices_Entry_AFEA ; 995C 4C EA AF                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_995F:
        jsr     BattleActionServices_Entry_96DB ; 995F 20 DB 96                  ..
        lda     #$20                            ; 9962 A9 20                    .
        jsr     BattleActionServices_Entry_996D ; 9964 20 6D 99                  m.
        bcc     BattleActionServices_Branch_996C; 9967 90 03                    ..
        jmp     BattleActionServices_Entry_AFF4 ; 9969 4C F4 AF                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_996C:
        rts                                     ; 996C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_996D:
        sta     $00                           ; 996D 85 00                    ..
        lda     $72E7                           ; 996F AD E7 72                 ..r
        lsr     a                               ; 9972 4A                       J
        bcs     BattleActionServices_Branch_997E; 9973 B0 09                    ..
        brk                                     ; 9975 00                       .
        db   $1B,$0F                         ; 9976 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     $00                           ; 9978 C5 00                    ..
        bcs     BattleActionServices_Branch_997E; 997A B0 02                    ..
        sec                                     ; 997C 38                       8
        rts                                     ; 997D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_997E:
        clc                                     ; 997E 18                       .
        rts                                     ; 997F 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9980:
        txa                                     ; 9980 8A                       .
        pha                                     ; 9981 48                       H
        brk                                     ; 9982 00                       .
        db   $67,$73                         ; 9983 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; 9985 AA                       .
        brk                                     ; 9986 00                       .
        db   $1C,$73                         ; 9987 1C 73                    .s
; ----------------------------------------------------------------------------
        sta     $0E                             ; 9989 85 0E                    ..
        lda     $73                             ; 998B A5 73                    .s
        sta     $0F                             ; 998D 85 0F                    ..
        jsr     BattleActionServices_Entry_9A33 ; 998F 20 33 9A                  3.
        ldx     #$0C                            ; 9992 A2 0C                    ..
        lda     #$0C                            ; 9994 A9 0C                    ..
        jsr     UpperFixedEngine_Entry_C851     ; 9996 20 51 C8                  Q.
        sec                                     ; 9999 38                       8
        lda     $0E                             ; 999A A5 0E                    ..
        sbc     $0C                             ; 999C E5 0C                    ..
        lda     $0F                             ; 999E A5 0F                    ..
        sbc     $0D                             ; 99A0 E5 0D                    ..
        bcc     BattleActionServices_Branch_99B0; 99A2 90 0C                    ..
        lda     $0F                             ; 99A4 A5 0F                    ..
        bne     BattleActionServices_Branch_99D8; 99A6 D0 30                    .0
        lda     $0E                             ; 99A8 A5 0E                    ..
        cmp     #$08                            ; 99AA C9 08                    ..
        bcs     BattleActionServices_Branch_99D8; 99AC B0 2A                    .*
        bcc     BattleActionServices_Branch_9A16; 99AE 90 66                    .f
BattleActionServices_Branch_99B0:
        lda     $0C                             ; 99B0 A5 0C                    ..
        brk                                     ; 99B2 00                       .
        db   $17,$0F                         ; 99B3 17 0F                    ..
; ----------------------------------------------------------------------------
        sta     $7361                           ; 99B5 8D 61 73                 .as
        lda     #$00                            ; 99B8 A9 00                    ..
        sta     $7362                           ; 99BA 8D 62 73                 .bs
        pla                                     ; 99BD 68                       h
        tax                                     ; 99BE AA                       .
        rts                                     ; 99BF 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_99C0:
        txa                                     ; 99C0 8A                       .
        pha                                     ; 99C1 48                       H
        brk                                     ; 99C2 00                       .
        db   $16,$B3                         ; 99C3 16 B3                    ..
; ----------------------------------------------------------------------------
        sta     $0E                             ; 99C5 85 0E                    ..
        lda     $7F                             ; 99C7 A5 7F                    ..
        sta     $0F                             ; 99C9 85 0F                    ..
        jsr     BattleActionServices_Entry_9A33 ; 99CB 20 33 9A                  3.
        lda     $0F                             ; 99CE A5 0F                    ..
        bne     BattleActionServices_Branch_99D8; 99D0 D0 06                    ..
        lda     $0E                             ; 99D2 A5 0E                    ..
        cmp     #$08                            ; 99D4 C9 08                    ..
        bcc     BattleActionServices_Branch_9A16; 99D6 90 3E                    .>
BattleActionServices_Branch_99D8:
        lda     $0F                             ; 99D8 A5 0F                    ..
        sta     $0B                             ; 99DA 85 0B                    ..
        lsr     a                               ; 99DC 4A                       J
        sta     $0D                             ; 99DD 85 0D                    ..
        lda     $0E                             ; 99DF A5 0E                    ..
        sta     $0A                             ; 99E1 85 0A                    ..
        ror     a                               ; 99E3 6A                       j
        sta     $0C                             ; 99E4 85 0C                    ..
        lsr     $0D                             ; 99E6 46 0D                    F.
        ror     $0C                             ; 99E8 66 0C                    f.
        inc     $0C                             ; 99EA E6 0C                    ..
        bne     BattleActionServices_Branch_99F0; 99EC D0 02                    ..
        inc     $0D                             ; 99EE E6 0D                    ..
BattleActionServices_Branch_99F0:
        brk                                     ; 99F0 00                       .
        db   $1B,$0F                         ; 99F1 1B 0F                    ..
; ----------------------------------------------------------------------------
        ldx     #$0C                            ; 99F3 A2 0C                    ..
        jsr     MultiplyPointerWord             ; 99F5 20 27 C8                  '.
        lda     #$07                            ; 99F8 A9 07                    ..
        ldx     #$0A                            ; 99FA A2 0A                    ..
        jsr     MultiplyPointerWord             ; 99FC 20 27 C8                  '.
        lda     #$08                            ; 99FF A9 08                    ..
        jsr     UpperFixedEngine_Entry_C851     ; 9A01 20 51 C8                  Q.
        clc                                     ; 9A04 18                       .
        lda     $0D                             ; 9A05 A5 0D                    ..
        adc     $0A                             ; 9A07 65 0A                    e.
        sta     $7361                           ; 9A09 8D 61 73                 .as
        lda     #$00                            ; 9A0C A9 00                    ..
        adc     $0B                             ; 9A0E 65 0B                    e.
        sta     $7362                           ; 9A10 8D 62 73                 .bs
        pla                                     ; 9A13 68                       h
        tax                                     ; 9A14 AA                       .
        rts                                     ; 9A15 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9A16:
        lda     #$03                            ; 9A16 A9 03                    ..
        brk                                     ; 9A18 00                       .
        db   $17,$0F                         ; 9A19 17 0F                    ..
; ----------------------------------------------------------------------------
        clc                                     ; 9A1B 18                       .
        adc     $0E                             ; 9A1C 65 0E                    e.
        sta     $7361                           ; 9A1E 8D 61 73                 .as
        dec     $7361                           ; 9A21 CE 61 73                 .as
        bpl     BattleActionServices_Branch_9A2B; 9A24 10 05                    ..
        lda     #$00                            ; 9A26 A9 00                    ..
        sta     $7361                           ; 9A28 8D 61 73                 .as
BattleActionServices_Branch_9A2B:
        lda     $0F                             ; 9A2B A5 0F                    ..
        sta     $7362                           ; 9A2D 8D 62 73                 .bs
        pla                                     ; 9A30 68                       h
        tax                                     ; 9A31 AA                       .
        rts                                     ; 9A32 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9A33:
        lsr     $0F                             ; 9A33 46 0F                    F.
        ror     $0E                             ; 9A35 66 0E                    f.
        brk                                     ; 9A37 00                       .
        db   $06,$1F                         ; 9A38 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_9A61; 9A3A B0 25                    .%
        brk                                     ; 9A3C 00                       .
        db   $03,$1F                         ; 9A3D 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$82                            ; 9A3F C9 82                    ..
        bne     BattleActionServices_Branch_9A59; 9A41 D0 16                    ..
        brk                                     ; 9A43 00                       .
        db   $10,$73                         ; 9A44 10 73                    .s
; ----------------------------------------------------------------------------
        lda     #$0B                            ; 9A46 A9 0B                    ..
        brk                                     ; 9A48 00                       .
        db   $13,$0F                         ; 9A49 13 0F                    ..
; ----------------------------------------------------------------------------
        clc                                     ; 9A4B 18                       .
        adc     $72                             ; 9A4C 65 72                    er
        sta     $72                             ; 9A4E 85 72                    .r
        bcc     BattleActionServices_Branch_9A54; 9A50 90 02                    ..
        inc     $73                             ; 9A52 E6 73                    .s
BattleActionServices_Branch_9A54:
        ldx     $73                             ; 9A54 A6 73                    .s
        jmp     BattleActionServices_Branch_9A66; 9A56 4C 66 9A                 Lf.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9A59:
        brk                                     ; 9A59 00                       .
        db   $18,$73                         ; 9A5A 18 73                    .s
; ----------------------------------------------------------------------------
        ldx     $73                             ; 9A5C A6 73                    .s
        jmp     BattleActionServices_Branch_9A66; 9A5E 4C 66 9A                 Lf.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9A61:
        brk                                     ; 9A61 00                       .
        db   $12,$B3                         ; 9A62 12 B3                    ..
; ----------------------------------------------------------------------------
        ldx     $7F                             ; 9A64 A6 7F                    ..
BattleActionServices_Branch_9A66:
        sta     $0C                             ; 9A66 85 0C                    ..
        stx     $0D                             ; 9A68 86 0D                    ..
        sec                                     ; 9A6A 38                       8
        lda     $0C                             ; 9A6B A5 0C                    ..
        sbc     $0E                             ; 9A6D E5 0E                    ..
        sta     $0E                             ; 9A6F 85 0E                    ..
        lda     $0D                             ; 9A71 A5 0D                    ..
        sbc     $0F                             ; 9A73 E5 0F                    ..
        sta     $0F                             ; 9A75 85 0F                    ..
        bcs     BattleActionServices_Branch_9A7F; 9A77 B0 06                    ..
        lda     #$00                            ; 9A79 A9 00                    ..
        sta     $0E                             ; 9A7B 85 0E                    ..
        sta     $0F                             ; 9A7D 85 0F                    ..
BattleActionServices_Branch_9A7F:
        lsr     $0F                             ; 9A7F 46 0F                    F.
        ror     $0E                             ; 9A81 66 0E                    f.
        rts                                     ; 9A83 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9A84:
        lda     $0000,y                         ; 9A84 B9 00 00                 ...
        sta     $6E14                           ; 9A87 8D 14 6E                 ..n
        lda     $01,y                           ; 9A8A B9 01 00                 ...
        sta     $6E15                           ; 9A8D 8D 15 6E                 ..n
        tya                                     ; 9A90 98                       .
        pha                                     ; 9A91 48                       H
        ldy     #$18                            ; 9A92 A0 18                    ..
        lda     #$00                            ; 9A94 A9 00                    ..
        sta     $6E16                           ; 9A96 8D 16 6E                 ..n
        sta     $6E11                           ; 9A99 8D 11 6E                 ..n
        sta     $6E12                           ; 9A9C 8D 12 6E                 ..n
        sta     $6E13                           ; 9A9F 8D 13 6E                 ..n
BattleActionServices_Branch_9AA2:
        asl     $00,x                         ; 9AA2 16 00                    ..
        rol     $01,x                           ; 9AA4 36 01                    6.
        rol     $02,x                         ; 9AA6 36 02                    6.
        rol     $6E11                           ; 9AA8 2E 11 6E                 ..n
        rol     $6E12                           ; 9AAB 2E 12 6E                 ..n
        rol     $6E13                           ; 9AAE 2E 13 6E                 ..n
        inc     $00,x                         ; 9AB1 F6 00                    ..
        lda     $6E11                           ; 9AB3 AD 11 6E                 ..n
        sec                                     ; 9AB6 38                       8
        sbc     $6E14                           ; 9AB7 ED 14 6E                 ..n
        pha                                     ; 9ABA 48                       H
        lda     $6E12                           ; 9ABB AD 12 6E                 ..n
        sbc     $6E15                           ; 9ABE ED 15 6E                 ..n
        pha                                     ; 9AC1 48                       H
        lda     $6E13                           ; 9AC2 AD 13 6E                 ..n
        sbc     $6E16                           ; 9AC5 ED 16 6E                 ..n
        bcs     BattleActionServices_Branch_9AD1; 9AC8 B0 07                    ..
        pla                                     ; 9ACA 68                       h
        pla                                     ; 9ACB 68                       h
        dec     $00,x                         ; 9ACC D6 00                    ..
        jmp     BattleActionServices_Branch_9ADC; 9ACE 4C DC 9A                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9AD1:
        sta     $6E13                           ; 9AD1 8D 13 6E                 ..n
        pla                                     ; 9AD4 68                       h
        sta     $6E12                           ; 9AD5 8D 12 6E                 ..n
        pla                                     ; 9AD8 68                       h
        sta     $6E11                           ; 9AD9 8D 11 6E                 ..n
BattleActionServices_Branch_9ADC:
        dey                                     ; 9ADC 88                       .
        bne     BattleActionServices_Branch_9AA2; 9ADD D0 C3                    ..
        pla                                     ; 9ADF 68                       h
        tay                                     ; 9AE0 A8                       .
        rts                                     ; 9AE1 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9AE2:
        brk                                     ; 9AE2 00                       .
        db   $01,$1F                         ; 9AE3 01 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9AE5 00                       .
        db   $07,$3F                         ; 9AE6 07 3F                    .?
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_90DB ; 9AE8 4C DB 90                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9AEB:
        brk                                     ; 9AEB 00                       .
        db   $1B,$0F                         ; 9AEC 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$80                            ; 9AEE C9 80                    ..
        bcc     BattleActionServices_Branch_9B0B; 9AF0 90 19                    ..
        brk                                     ; 9AF2 00                       .
        db   $F0,$D3,$23                     ; 9AF3 F0 D3 23                 ..#
; ----------------------------------------------------------------------------
        lda     $7363                           ; 9AF6 AD 63 73                 .cs
        bmi     BattleActionServices_Branch_9B02; 9AF9 30 07                    0.
        tax                                     ; 9AFB AA                       .
        jsr     BattleActionServices_Entry_9980 ; 9AFC 20 80 99                  ..
        jmp     BattleActionServices_Branch_9B08; 9AFF 4C 08 9B                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9B02:
        and     #$07                            ; 9B02 29 07                    ).
        tax                                     ; 9B04 AA                       .
        jsr     BattleActionServices_Entry_99C0 ; 9B05 20 C0 99                  ..
BattleActionServices_Branch_9B08:
        jmp     BattleActionServices_Entry_90DB ; 9B08 4C DB 90                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9B0B:
        rts                                     ; 9B0B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9B0C:
        brk                                     ; 9B0C 00                       .
        db   $07,$1F                         ; 9B0D 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9B29; 9B0F 90 18                    ..
        txa                                     ; 9B11 8A                       .
        pha                                     ; 9B12 48                       H
        jsr     BattleActionServices_Entry_BF2E ; 9B13 20 2E BF                  ..
        db   $9E                             ; 9B16 9E                       .
; ----------------------------------------------------------------------------
        pla                                     ; 9B17 68                       h
        tax                                     ; 9B18 AA                       .
        jsr     BattleActionServices_Entry_91F3 ; 9B19 20 F3 91                  ..
        brk                                     ; 9B1C 00                       .
        db   $1A,$2F                         ; 9B1D 1A 2F                    ./
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_9B28; 9B1F B0 07                    ..
        brk                                     ; 9B21 00                       .
        db   $E6,$D3,$01                     ; 9B22 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        brk                                     ; 9B25 00                       .
        db   $23,$2F                         ; 9B26 23 2F                    #/
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9B28:
        rts                                     ; 9B28 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9B29:
        bvc     BattleActionServices_Branch_9B7E; 9B29 50 53                    PS
        brk                                     ; 9B2B 00                       .
        db   $3B,$93,$01                     ; 9B2C 3B 93 01                 ;..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9B3C; 9B2F 90 0B                    ..
        cmp     #$B7                            ; 9B31 C9 B7                    ..
        bne     BattleActionServices_Branch_9B3C; 9B33 D0 07                    ..
        brk                                     ; 9B35 00                       .
        db   $1B,$0F                         ; 9B36 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$80                            ; 9B38 C9 80                    ..
        bcc     BattleActionServices_Branch_9B4B; 9B3A 90 0F                    ..
BattleActionServices_Branch_9B3C:
        jsr     BattleActionServices_Entry_9272 ; 9B3C 20 72 92                  r.
        jsr     BattleActionServices_Entry_BF2E ; 9B3F 20 2E BF                  ..
        db   $9E                             ; 9B42 9E                       .
; ----------------------------------------------------------------------------
        brk                                     ; 9B43 00                       .
        db   $E6,$D3,$02                     ; 9B44 E6 D3 02                 ...
; ----------------------------------------------------------------------------
        brk                                     ; 9B47 00                       .
        db   $23,$2F                         ; 9B48 23 2F                    #/
; ----------------------------------------------------------------------------
        rts                                     ; 9B4A 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9B4B:
        brk                                     ; 9B4B 00                       .
        db   $E6,$D3,$03                     ; 9B4C E6 D3 03                 ...
; ----------------------------------------------------------------------------
        brk                                     ; 9B4F 00                       .
        db   $23,$2F                         ; 9B50 23 2F                    #/
; ----------------------------------------------------------------------------
        rts                                     ; 9B52 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9B53:
        brk                                     ; 9B53 00                       .
        db   $07,$1F                         ; 9B54 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9B6E; 9B56 90 16                    ..
        txa                                     ; 9B58 8A                       .
        pha                                     ; 9B59 48                       H
        jsr     BattleActionServices_Entry_B91C ; 9B5A 20 1C B9                  ..
        jsr     BattleActionServices_Entry_9204 ; 9B5D 20 04 92                  ..
        brk                                     ; 9B60 00                       .
        db   $E6,$D3,$01                     ; 9B61 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        brk                                     ; 9B64 00                       .
        db   $23,$2F                         ; 9B65 23 2F                    #/
; ----------------------------------------------------------------------------
        pla                                     ; 9B67 68                       h
        tax                                     ; 9B68 AA                       .
        brk                                     ; 9B69 00                       .
        db   $2B,$C3,$0F                     ; 9B6A 2B C3 0F                 +..
; ----------------------------------------------------------------------------
        rts                                     ; 9B6D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9B6E:
        bvc     BattleActionServices_Branch_9B7E; 9B6E 50 0E                    P.
        brk                                     ; 9B70 00                       .
        db   $2B,$73                         ; 9B71 2B 73                    +s
; ----------------------------------------------------------------------------
        cmp     #$08                            ; 9B73 C9 08                    ..
        bcs     BattleActionServices_Branch_9B7F; 9B75 B0 08                    ..
        brk                                     ; 9B77 00                       .
        db   $E6,$D3,$03                     ; 9B78 E6 D3 03                 ...
; ----------------------------------------------------------------------------
        brk                                     ; 9B7B 00                       .
        db   $23,$2F                         ; 9B7C 23 2F                    #/
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9B7E:
        rts                                     ; 9B7E 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9B7F:
        lda     #$80                            ; 9B7F A9 80                    ..
        brk                                     ; 9B81 00                       .
        db   $E6,$D3,$03                     ; 9B82 E6 D3 03                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9B85 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9B86:
        brk                                     ; 9B86 00                       .
        db   $07,$1F                         ; 9B87 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9BD9; 9B89 90 4E                    .N
        brk                                     ; 9B8B 00                       .
        db   $1B,$0F                         ; 9B8C 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$80                            ; 9B8E C9 80                    ..
        bcc     BattleActionServices_Branch_9BCA; 9B90 90 38                    .8
BattleActionServices_Branch_9B92:
        brk                                     ; 9B92 00                       .
        db   $00,$A3                         ; 9B93 00 A3                    ..
; ----------------------------------------------------------------------------
        ldx     $7F                             ; 9B95 A6 7F                    ..
        jsr     BattleActionServices_Entry_9C2B ; 9B97 20 2B 9C                  +.
        sta     $7C                             ; 9B9A 85 7C                    .|
        stx     $7D                             ; 9B9C 86 7D                    .}
        ldx     $7B                             ; 9B9E A6 7B                    .{
        brk                                     ; 9BA0 00                       .
        db   $03,$A3                         ; 9BA1 03 A3                    ..
; ----------------------------------------------------------------------------
        lda     $7E                             ; 9BA3 A5 7E                    .~
        sta     $7361                           ; 9BA5 8D 61 73                 .as
        lda     $7F                             ; 9BA8 A5 7F                    ..
        sta     $7362                           ; 9BAA 8D 62 73                 .bs
        brk                                     ; 9BAD 00                       .
        db   $00,$A3                         ; 9BAE 00 A3                    ..
; ----------------------------------------------------------------------------
        ldx     $7B                             ; 9BB0 A6 7B                    .{
        ora     $7F                             ; 9BB2 05 7F                    ..
        beq     BattleActionServices_Branch_9BCA; 9BB4 F0 14                    ..
        lda     $7B                             ; 9BB6 A5 7B                    .{
        pha                                     ; 9BB8 48                       H
        jsr     BattleActionServices_Entry_BF2E ; 9BB9 20 2E BF                  ..
        db   $87                             ; 9BBC 87                       .
; ----------------------------------------------------------------------------
        brk                                     ; 9BBD 00                       .
        db   $66,$D3,$01                     ; 9BBE 66 D3 01                 f..
; ----------------------------------------------------------------------------
        pla                                     ; 9BC1 68                       h
        tax                                     ; 9BC2 AA                       .
        jsr     BattleActionServices_Entry_9286 ; 9BC3 20 86 92                  ..
        brk                                     ; 9BC6 00                       .
        db   $07,$2F                         ; 9BC7 07 2F                    ./
; ----------------------------------------------------------------------------
        rts                                     ; 9BC9 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9BCA:
        jsr     BattleActionServices_Entry_B91C ; 9BCA 20 1C B9                  ..
        jsr     BattleActionServices_Entry_9204 ; 9BCD 20 04 92                  ..
        jsr     BattleActionServices_Entry_BF2E ; 9BD0 20 2E BF                  ..
        db   $9F                             ; 9BD3 9F                       .
; ----------------------------------------------------------------------------
        brk                                     ; 9BD4 00                       .
        db   $E6,$D3,$04                     ; 9BD5 E6 D3 04                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9BD8 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9BD9:
        bvc     BattleActionServices_Branch_9C1F; 9BD9 50 44                    PD
        brk                                     ; 9BDB 00                       .
        db   $1B,$0F                         ; 9BDC 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$80                            ; 9BDE C9 80                    ..
        bcc     BattleActionServices_Branch_9C14; 9BE0 90 32                    .2
BattleActionServices_Branch_9BE2:
        brk                                     ; 9BE2 00                       .
        db   $00,$53                         ; 9BE3 00 53                    .S
; ----------------------------------------------------------------------------
        ldx     $73                             ; 9BE5 A6 73                    .s
        jsr     BattleActionServices_Entry_9C2B ; 9BE7 20 2B 9C                  +.
        sta     $6F                             ; 9BEA 85 6F                    .o
        stx     $70                             ; 9BEC 86 70                    .p
        brk                                     ; 9BEE 00                       .
        db   $04,$33                         ; 9BEF 04 33                    .3
; ----------------------------------------------------------------------------
        sta     $7361                           ; 9BF1 8D 61 73                 .as
        lda     $73                             ; 9BF4 A5 73                    .s
        sta     $7362                           ; 9BF6 8D 62 73                 .bs
        brk                                     ; 9BF9 00                       .
        db   $00,$33                         ; 9BFA 00 33                    .3
; ----------------------------------------------------------------------------
        ldx     $6E                             ; 9BFC A6 6E                    .n
        ora     $73                             ; 9BFE 05 73                    .s
        beq     BattleActionServices_Branch_9C14; 9C00 F0 12                    ..
        jsr     BattleActionServices_Entry_BF2E ; 9C02 20 2E BF                  ..
        db   $8A                             ; 9C05 8A                       .
; ----------------------------------------------------------------------------
        brk                                     ; 9C06 00                       .
        db   $66,$D3,$02                     ; 9C07 66 D3 02                 f..
; ----------------------------------------------------------------------------
        brk                                     ; 9C0A 00                       .
        db   $02,$4F                         ; 9C0B 02 4F                    .O
; ----------------------------------------------------------------------------
        brk                                     ; 9C0D 00                       .
        db   $27,$0F                         ; 9C0E 27 0F                    '.
; ----------------------------------------------------------------------------
        brk                                     ; 9C10 00                       .
        db   $07,$2F                         ; 9C11 07 2F                    ./
; ----------------------------------------------------------------------------
        rts                                     ; 9C13 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9C14:
        jsr     BattleActionServices_Entry_9272 ; 9C14 20 72 92                  r.
        jsr     BattleActionServices_Entry_BF2E ; 9C17 20 2E BF                  ..
        db   $9F                             ; 9C1A 9F                       .
; ----------------------------------------------------------------------------
        brk                                     ; 9C1B 00                       .
        db   $E6,$D3,$04                     ; 9C1C E6 D3 04                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9C1F:
        rts                                     ; 9C1F 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9C20:
        brk                                     ; 9C20 00                       .
        db   $8A,$FB                         ; 9C21 8A FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9C23 00                       .
        db   $07,$1F                         ; 9C24 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9BE2; 9C26 90 BA                    ..
        jmp     BattleActionServices_Branch_9B92; 9C28 4C 92 9B                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9C2B:
        sta     $72                             ; 9C2B 85 72                    .r
        sta     $7E                             ; 9C2D 85 7E                    .~
        stx     $73                             ; 9C2F 86 73                    .s
        stx     $7F                             ; 9C31 86 7F                    ..
        lda     #$0D                            ; 9C33 A9 0D                    ..
        ldx     #$7E                            ; 9C35 A2 7E                    .~
        jsr     MultiplyPointerWord             ; 9C37 20 27 C8                  '.
        lda     $7F                             ; 9C3A A5 7F                    ..
        sta     $7E                             ; 9C3C 85 7E                    .~
        lda     $72                             ; 9C3E A5 72                    .r
        sec                                     ; 9C40 38                       8
        sbc     $7E                             ; 9C41 E5 7E                    .~
        sta     $7E                             ; 9C43 85 7E                    .~
        lda     $73                             ; 9C45 A5 73                    .s
        sbc     #$00                            ; 9C47 E9 00                    ..
        sta     $7F                             ; 9C49 85 7F                    ..
        lda     $7E                             ; 9C4B A5 7E                    .~
        ldx     $7F                             ; 9C4D A6 7F                    ..
        rts                                     ; 9C4F 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9C50:
        brk                                     ; 9C50 00                       .
        db   $06,$1F                         ; 9C51 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9C69; 9C53 90 14                    ..
        jsr     BattleActionServices_Entry_B91C ; 9C55 20 1C B9                  ..
        brk                                     ; 9C58 00                       .
        db   $06,$1F                         ; 9C59 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9C5B 00                       .
        db   $29,$C3,$0E                     ; 9C5C 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9C68; 9C5F 90 07                    ..
        jsr     BattleActionServices_Entry_9204 ; 9C61 20 04 92                  ..
        brk                                     ; 9C64 00                       .
        db   $E8,$D3,$15                     ; 9C65 E8 D3 15                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9C68:
        rts                                     ; 9C68 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9C69:
        jsr     BattleActionServices_Entry_9272 ; 9C69 20 72 92                  r.
        brk                                     ; 9C6C 00                       .
        db   $E8,$D3,$15                     ; 9C6D E8 D3 15                 ...
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_A3F7 ; 9C70 20 F7 A3                  ..
        rts                                     ; 9C73 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9C74:
        sta     $8E                             ; 9C74 85 8E                    ..
        brk                                     ; 9C76 00                       .
        db   $07,$1F                         ; 9C77 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9C90; 9C79 90 15                    ..
        jsr     BattleActionServices_Entry_9C9B ; 9C7B 20 9B 9C                  ..
        lda     $8E                             ; 9C7E A5 8E                    ..
        bpl     BattleActionServices_Branch_9C88; 9C80 10 06                    ..
        jsr     BattleActionServices_Entry_91F3 ; 9C82 20 F3 91                  ..
        jmp     BattleActionServices_Branch_9C8B; 9C85 4C 8B 9C                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9C88:
        jsr     BattleActionServices_Entry_9204 ; 9C88 20 04 92                  ..
BattleActionServices_Branch_9C8B:
        brk                                     ; 9C8B 00                       .
        db   $E6,$D3,$01                     ; 9C8C E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9C8F 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9C90:
        jsr     BattleActionServices_Entry_9C9B ; 9C90 20 9B 9C                  ..
        jsr     BattleActionServices_Entry_9272 ; 9C93 20 72 92                  r.
        brk                                     ; 9C96 00                       .
        db   $E6,$D3,$02                     ; 9C97 E6 D3 02                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9C9A 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9C9B:
        lda     $8E                             ; 9C9B A5 8E                    ..
        and     #$7F                            ; 9C9D 29 7F                    ).
        beq     BattleActionServices_Branch_9CAC; 9C9F F0 0B                    ..
        ora     #$80                            ; 9CA1 09 80                    ..
        tay                                     ; 9CA3 A8                       .
        txa                                     ; 9CA4 8A                       .
        pha                                     ; 9CA5 48                       H
        tya                                     ; 9CA6 98                       .
        jsr     BattleActionServices_Entry_BF55 ; 9CA7 20 55 BF                  U.
        pla                                     ; 9CAA 68                       h
        tax                                     ; 9CAB AA                       .
BattleActionServices_Branch_9CAC:
        rts                                     ; 9CAC 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9CAD:
        brk                                     ; 9CAD 00                       .
        db   $07,$1F                         ; 9CAE 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Entry_9CBC ; 9CB0 90 0A                    ..
        lda     $6E45                           ; 9CB2 AD 45 6E                 .En
        cmp     #$B4                            ; 9CB5 C9 B4                    ..
        bne     BattleActionServices_Entry_9CBC ; 9CB7 D0 03                    ..
        brk                                     ; 9CB9 00                       .
        db   $19,$4F                         ; 9CBA 19 4F                    .O
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9CBC:
        lda     #$13                            ; 9CBC A9 13                    ..
        ldx     #$03                            ; 9CBE A2 03                    ..
        jmp     BattleActionServices_Entry_9D4F ; 9CC0 4C 4F 9D                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9CC3:
        lda     #$10                            ; 9CC3 A9 10                    ..
        ldx     #$00                            ; 9CC5 A2 00                    ..
        jmp     BattleActionServices_Entry_9D4F ; 9CC7 4C 4F 9D                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9CCA:
        lda     #$14                            ; 9CCA A9 14                    ..
        ldx     #$04                            ; 9CCC A2 04                    ..
        jmp     BattleActionServices_Entry_9D4F ; 9CCE 4C 4F 9D                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9CD1:
        brk                                     ; 9CD1 00                       .
        db   $07,$1F                         ; 9CD2 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_9CF7; 9CD4 B0 21                    .!
        ldy     #$80                            ; 9CD6 A0 80                    ..
        brk                                     ; 9CD8 00                       .
        db   $3B,$93,$01                     ; 9CD9 3B 93 01                 ;..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9CE2; 9CDC 90 04                    ..
        cmp     #$B7                            ; 9CDE C9 B7                    ..
        beq     BattleActionServices_Branch_9CEE; 9CE0 F0 0C                    ..
BattleActionServices_Branch_9CE2:
        brk                                     ; 9CE2 00                       .
        db   $3B,$93,$03                     ; 9CE3 3B 93 03                 ;..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9CF7; 9CE6 90 0F                    ..
        cmp     #$CD                            ; 9CE8 C9 CD                    ..
        bne     BattleActionServices_Branch_9CF7; 9CEA D0 0B                    ..
        ldy     #$55                            ; 9CEC A0 55                    .U
BattleActionServices_Branch_9CEE:
        sty     $00                           ; 9CEE 84 00                    ..
        brk                                     ; 9CF0 00                       .
        db   $1B,$0F                         ; 9CF1 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     $00                           ; 9CF3 C5 00                    ..
        bcc     BattleActionServices_Branch_9CFE; 9CF5 90 07                    ..
BattleActionServices_Branch_9CF7:
        lda     #$12                            ; 9CF7 A9 12                    ..
        ldx     #$02                            ; 9CF9 A2 02                    ..
        jmp     BattleActionServices_Entry_9D4F ; 9CFB 4C 4F 9D                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9CFE:
        brk                                     ; 9CFE 00                       .
        db   $E6,$D3,$03                     ; 9CFF E6 D3 03                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9D02 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9D03:
        lda     #$16                            ; 9D03 A9 16                    ..
        ldx     #$06                            ; 9D05 A2 06                    ..
        jmp     BattleActionServices_Entry_9D4F ; 9D07 4C 4F 9D                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9D0A:
        lda     #$17                            ; 9D0A A9 17                    ..
        ldx     #$07                            ; 9D0C A2 07                    ..
        jmp     BattleActionServices_Entry_9D4F ; 9D0E 4C 4F 9D                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9D11:
        brk                                     ; 9D11 00                       .
        db   $F2,$D3,$04                     ; 9D12 F2 D3 04                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9D15:
        lda     #$15                            ; 9D15 A9 15                    ..
        ldx     #$05                            ; 9D17 A2 05                    ..
        jmp     BattleActionServices_Entry_9D4F ; 9D19 4C 4F 9D                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9D1C:
        brk                                     ; 9D1C 00                       .
        db   $07,$1F                         ; 9D1D 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_9D23; 9D1F B0 02                    ..
        bvc     BattleActionServices_Branch_9D2A; 9D21 50 07                    P.
BattleActionServices_Branch_9D23:
        lda     #$06                            ; 9D23 A9 06                    ..
        ldx     #$0D                            ; 9D25 A2 0D                    ..
        jmp     BattleActionServices_Branch_9D6E; 9D27 4C 6E 9D                 Ln.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9D2A:
        rts                                     ; 9D2A 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9D2B:
        lda     #$10                            ; 9D2B A9 10                    ..
        ldx     #$00                            ; 9D2D A2 00                    ..
        jmp     BattleActionServices_Branch_9D6E; 9D2F 4C 6E 9D                 Ln.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9D32:
        brk                                     ; 9D32 00                       .
        db   $07,$1F                         ; 9D33 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_9D2A; 9D35 B0 F3                    ..
        lda     #$18                            ; 9D37 A9 18                    ..
        jsr     BattleActionServices_Entry_9D4F ; 9D39 20 4F 9D                  O.
        lda     #$4F                            ; 9D3C A9 4F                    .O
        jsr     BattleActionServices_Entry_B808 ; 9D3E 20 08 B8                  ..
        rts                                     ; 9D41 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9D42:
        lda     $72E7                           ; 9D42 AD E7 72                 ..r
        ora     #$10                            ; 9D45 09 10                    ..
        sta     $72E7                           ; 9D47 8D E7 72                 ..r
        brk                                     ; 9D4A 00                       .
        db   $E6,$D3,$01                     ; 9D4B E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9D4E 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9D4F:
        sta     $6F                             ; 9D4F 85 6F                    .o
        stx     $7C                             ; 9D51 86 7C                    .|
        brk                                     ; 9D53 00                       .
        db   $07,$1F                         ; 9D54 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9D62; 9D56 90 0A                    ..
        brk                                     ; 9D58 00                       .
        db   $2A,$A3                         ; 9D59 2A A3                    *.
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9D6D; 9D5B 90 10                    ..
        brk                                     ; 9D5D 00                       .
        db   $E6,$D3,$01                     ; 9D5E E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9D61 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9D62:
        bvc     BattleActionServices_Branch_9D6D; 9D62 50 09                    P.
        brk                                     ; 9D64 00                       .
        db   $44,$53                         ; 9D65 44 53                    DS
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9D6D; 9D67 90 04                    ..
        brk                                     ; 9D69 00                       .
        db   $E6,$D3,$02                     ; 9D6A E6 D3 02                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9D6D:
        rts                                     ; 9D6D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9D6E:
        sta     $6F                             ; 9D6E 85 6F                    .o
        stx     $7C                             ; 9D70 86 7C                    .|
        brk                                     ; 9D72 00                       .
        db   $07,$1F                         ; 9D73 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9D81; 9D75 90 0A                    ..
        brk                                     ; 9D77 00                       .
        db   $2B,$A3                         ; 9D78 2B A3                    +.
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9D8B; 9D7A 90 0F                    ..
        brk                                     ; 9D7C 00                       .
        db   $E6,$D3,$01                     ; 9D7D E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9D80 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9D81:
        brk                                     ; 9D81 00                       .
        db   $45,$53                         ; 9D82 45 53                    ES
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9D8B; 9D84 90 05                    ..
        brk                                     ; 9D86 00                       .
        db   $E6,$D3,$02                     ; 9D87 E6 D3 02                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9D8A 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9D8B:
        brk                                     ; 9D8B 00                       .
        db   $E4,$D3,$1A                     ; 9D8C E4 D3 1A                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9D8F 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9D90:
        brk                                     ; 9D90 00                       .
        db   $07,$1F                         ; 9D91 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9D9E; 9D93 90 09                    ..
        brk                                     ; 9D95 00                       .
        db   $2A,$C3,$11                     ; 9D96 2A C3 11                 *..
; ----------------------------------------------------------------------------
        brk                                     ; 9D99 00                       .
        db   $E6,$D3,$01                     ; 9D9A E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9D9D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9D9E:
        brk                                     ; 9D9E 00                       .
        db   $44,$93,$80                     ; 9D9F 44 93 80                 D..
; ----------------------------------------------------------------------------
        brk                                     ; 9DA2 00                       .
        db   $62,$23,$41                     ; 9DA3 62 23 41                 b#A
; ----------------------------------------------------------------------------
        cmp     #$01                            ; 9DA6 C9 01                    ..
        bne     BattleActionServices_Branch_9DAF; 9DA8 D0 05                    ..
        brk                                     ; 9DAA 00                       .
        db   $E6,$D3,$01                     ; 9DAB E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9DAE 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9DAF:
        brk                                     ; 9DAF 00                       .
        db   $E6,$D3,$02                     ; 9DB0 E6 D3 02                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9DB3 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9DB4:
        brk                                     ; 9DB4 00                       .
        db   $06,$1F                         ; 9DB5 06 1F                    ..
; ----------------------------------------------------------------------------
        sta     $C7                             ; 9DB7 85 C7                    ..
        bcc     BattleActionServices_Branch_9DF6; 9DB9 90 3B                    .;
        lda     $7363                           ; 9DBB AD 63 73                 .cs
        bmi     BattleActionServices_Branch_9DE6; 9DBE 30 26                    0&
        sta     $7D                             ; 9DC0 85 7D                    .}
        brk                                     ; 9DC2 00                       .
        db   $07,$1F                         ; 9DC3 07 1F                    ..
; ----------------------------------------------------------------------------
        bvc     BattleActionServices_Branch_9DE6; 9DC5 50 1F                    P.
        brk                                     ; 9DC7 00                       .
        db   $06,$1F                         ; 9DC8 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9DCA 00                       .
        db   $29,$C3,$0C                     ; 9DCB 29 C3 0C                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9DD6; 9DCE 90 06                    ..
        lda     $7F                             ; 9DD0 A5 7F                    ..
        cmp     $7D                             ; 9DD2 C5 7D                    .}
        beq     BattleActionServices_Branch_9E47; 9DD4 F0 71                    .q
BattleActionServices_Branch_9DD6:
        lda     $7D                             ; 9DD6 A5 7D                    .}
        jsr     BattleActionServices_Entry_9E4C ; 9DD8 20 4C 9E                  L.
        sta     $C4                             ; 9DDB 85 C4                    ..
        brk                                     ; 9DDD 00                       .
        db   $0F,$4F                         ; 9DDE 0F 4F                    .O
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_9DE7; 9DE0 B0 05                    ..
BattleActionServices_Branch_9DE2:
        brk                                     ; 9DE2 00                       .
        db   $E4,$D3,$1A                     ; 9DE3 E4 D3 1A                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9DE6:
        rts                                     ; 9DE6 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9DE7:
        brk                                     ; 9DE7 00                       .
        db   $E6,$D3,$01                     ; 9DE8 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        brk                                     ; 9DEB 00                       .
        db   $06,$1F                         ; 9DEC 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9DEE 00                       .
        db   $2A,$C3,$0C                     ; 9DEF 2A C3 0C                 *..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_9E5C ; 9DF2 20 5C 9E                  \.
        rts                                     ; 9DF5 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9DF6:
        lda     $7363                           ; 9DF6 AD 63 73                 .cs
        bmi     BattleActionServices_Branch_9DE2; 9DF9 30 E7                    0.
        sta     $70                             ; 9DFB 85 70                    .p
        brk                                     ; 9DFD 00                       .
        db   $07,$1F                         ; 9DFE 07 1F                    ..
; ----------------------------------------------------------------------------
        bvc     BattleActionServices_Branch_9DE2; 9E00 50 E0                    P.
        brk                                     ; 9E02 00                       .
        db   $2B,$53                         ; 9E03 2B 53                    +S
; ----------------------------------------------------------------------------
        cmp     #$08                            ; 9E05 C9 08                    ..
        bcs     BattleActionServices_Branch_9DE2; 9E07 B0 D9                    ..
        brk                                     ; 9E09 00                       .
        db   $06,$1F                         ; 9E0A 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9E0C 00                       .
        db   $46,$93,$1C                     ; 9E0D 46 93 1C                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_9E1F; 9E10 B0 0D                    ..
        brk                                     ; 9E12 00                       .
        db   $01,$1F                         ; 9E13 01 1F                    ..
; ----------------------------------------------------------------------------
        cmp     $70                             ; 9E15 C5 70                    .p
        beq     BattleActionServices_Branch_9E47; 9E17 F0 2E                    ..
        brk                                     ; 9E19 00                       .
        db   $06,$1F                         ; 9E1A 06 1F                    ..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_9E3B; 9E1C 4C 3B 9E                 L;.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9E1F:
        brk                                     ; 9E1F 00                       .
        db   $01,$1F                         ; 9E20 01 1F                    ..
; ----------------------------------------------------------------------------
        cmp     $70                             ; 9E22 C5 70                    .p
        bne     BattleActionServices_Branch_9E32; 9E24 D0 0C                    ..
        brk                                     ; 9E26 00                       .
        db   $06,$1F                         ; 9E27 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9E29 00                       .
        db   $44,$93,$1C                     ; 9E2A 44 93 1C                 D..
; ----------------------------------------------------------------------------
        brk                                     ; 9E2D 00                       .
        db   $E6,$D3,$02                     ; 9E2E E6 D3 02                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9E31 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9E32:
        brk                                     ; 9E32 00                       .
        db   $06,$1F                         ; 9E33 06 1F                    ..
; ----------------------------------------------------------------------------
        lda     $73                             ; 9E35 A5 73                    .s
        cmp     $70                             ; 9E37 C5 70                    .p
        beq     BattleActionServices_Branch_9E47; 9E39 F0 0C                    ..
BattleActionServices_Branch_9E3B:
        brk                                     ; 9E3B 00                       .
        db   $44,$93,$1C                     ; 9E3C 44 93 1C                 D..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_9E91 ; 9E3F 20 91 9E                  ..
        brk                                     ; 9E42 00                       .
        db   $E6,$D3,$01                     ; 9E43 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9E46 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9E47:
        brk                                     ; 9E47 00                       .
        db   $E6,$D3,$03                     ; 9E48 E6 D3 03                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9E4B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9E4C:
        brk                                     ; 9E4C 00                       .
        db   $67,$73                         ; 9E4D 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; 9E4F AA                       .
        brk                                     ; 9E50 00                       .
        db   $2B,$53                         ; 9E51 2B 53                    +S
; ----------------------------------------------------------------------------
        bne     BattleActionServices_Branch_9E5B; 9E53 D0 06                    ..
        brk                                     ; 9E55 00                       .
        db   $29,$53                         ; 9E56 29 53                    )S
; ----------------------------------------------------------------------------
        asl     a                               ; 9E58 0A                       .
        asl     a                               ; 9E59 0A                       .
        asl     a                               ; 9E5A 0A                       .
BattleActionServices_Branch_9E5B:
        rts                                     ; 9E5B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9E5C:
        lda     $7D                             ; 9E5C A5 7D                    .}
        pha                                     ; 9E5E 48                       H
        lda     #$FF                            ; 9E5F A9 FF                    ..
        sta     $7D                             ; 9E61 85 7D                    .}
        ldx     $7B                             ; 9E63 A6 7B                    .{
        brk                                     ; 9E65 00                       .
        db   $15,$B3                         ; 9E66 15 B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9E68 00                       .
        db   $11,$A3                         ; 9E69 11 A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9E6B 00                       .
        db   $19,$A3                         ; 9E6C 19 A3                    ..
; ----------------------------------------------------------------------------
        pla                                     ; 9E6E 68                       h
        sta     $7D                             ; 9E6F 85 7D                    .}
        brk                                     ; 9E71 00                       .
        db   $67,$73                         ; 9E72 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; 9E74 AA                       .
        brk                                     ; 9E75 00                       .
        db   $18,$73                         ; 9E76 18 73                    .s
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_9ED6 ; 9E78 20 D6 9E                  ..
        brk                                     ; 9E7B 00                       .
        db   $14,$B3                         ; 9E7C 14 B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9E7E 00                       .
        db   $1C,$33                         ; 9E7F 1C 33                    .3
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_9ED6 ; 9E81 20 D6 9E                  ..
        brk                                     ; 9E84 00                       .
        db   $18,$B3                         ; 9E85 18 B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9E87 00                       .
        db   $14,$33                         ; 9E88 14 33                    .3
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_9ED6 ; 9E8A 20 D6 9E                  ..
        brk                                     ; 9E8D 00                       .
        db   $10,$B3                         ; 9E8E 10 B3                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 9E90 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9E91:
        lda     $70                             ; 9E91 A5 70                    .p
        pha                                     ; 9E93 48                       H
        lda     #$FF                            ; 9E94 A9 FF                    ..
        sta     $70                             ; 9E96 85 70                    .p
        ldx     $6E                             ; 9E98 A6 6E                    .n
        brk                                     ; 9E9A 00                       .
        db   $1A,$73                         ; 9E9B 1A 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; 9E9D 00                       .
        db   $16,$53                         ; 9E9E 16 53                    .S
; ----------------------------------------------------------------------------
        brk                                     ; 9EA0 00                       .
        db   $1E,$53                         ; 9EA1 1E 53                    .S
; ----------------------------------------------------------------------------
        stx     $00                           ; 9EA3 86 00                    ..
        pla                                     ; 9EA5 68                       h
        sta     $70                             ; 9EA6 85 70                    .p
        brk                                     ; 9EA8 00                       .
        db   $67,$73                         ; 9EA9 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; 9EAB AA                       .
        sta     $01                             ; 9EAC 85 01                    ..
        tax                                     ; 9EAE AA                       .
        brk                                     ; 9EAF 00                       .
        db   $18,$53                         ; 9EB0 18 53                    .S
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_9ECF ; 9EB2 20 CF 9E                  ..
        brk                                     ; 9EB5 00                       .
        db   $19,$73                         ; 9EB6 19 73                    .s
; ----------------------------------------------------------------------------
        ldx     $01                             ; 9EB8 A6 01                    ..
        brk                                     ; 9EBA 00                       .
        db   $1C,$53                         ; 9EBB 1C 53                    .S
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_9ECF ; 9EBD 20 CF 9E                  ..
        brk                                     ; 9EC0 00                       .
        db   $1D,$73                         ; 9EC1 1D 73                    .s
; ----------------------------------------------------------------------------
        ldx     $01                             ; 9EC3 A6 01                    ..
        brk                                     ; 9EC5 00                       .
        db   $14,$53                         ; 9EC6 14 53                    .S
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_9ECF ; 9EC8 20 CF 9E                  ..
        brk                                     ; 9ECB 00                       .
        db   $15,$73                         ; 9ECC 15 73                    .s
; ----------------------------------------------------------------------------
        rts                                     ; 9ECE 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9ECF:
        ldx     $73                             ; 9ECF A6 73                    .s
        stx     $70                             ; 9ED1 86 70                    .p
        ldx     $00                           ; 9ED3 A6 00                    ..
        rts                                     ; 9ED5 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9ED6:
        ldx     $73                             ; 9ED6 A6 73                    .s
        stx     $7D                             ; 9ED8 86 7D                    .}
        ldx     $7B                             ; 9EDA A6 7B                    .{
        rts                                     ; 9EDC 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9EDD:
        brk                                     ; 9EDD 00                       .
        db   $07,$1F                         ; 9EDE 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9EF3; 9EE0 90 11                    ..
        brk                                     ; 9EE2 00                       .
        db   $05,$3F                         ; 9EE3 05 3F                    .?
; ----------------------------------------------------------------------------
        sta     $7C                             ; 9EE5 85 7C                    .|
        brk                                     ; 9EE7 00                       .
        db   $0A,$A3                         ; 9EE8 0A A3                    ..
; ----------------------------------------------------------------------------
        pha                                     ; 9EEA 48                       H
        brk                                     ; 9EEB 00                       .
        db   $E6,$D3,$01                     ; 9EEC E6 D3 01                 ...
; ----------------------------------------------------------------------------
        pla                                     ; 9EEF 68                       h
        jmp     BattleActionServices_Branch_9F03; 9EF0 4C 03 9F                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9EF3:
        bvc     BattleActionServices_Branch_9F13; 9EF3 50 1E                    P.
        brk                                     ; 9EF5 00                       .
        db   $05,$3F                         ; 9EF6 05 3F                    .?
; ----------------------------------------------------------------------------
        sta     $6F                             ; 9EF8 85 6F                    .o
        brk                                     ; 9EFA 00                       .
        db   $0B,$53                         ; 9EFB 0B 53                    .S
; ----------------------------------------------------------------------------
        pha                                     ; 9EFD 48                       H
        brk                                     ; 9EFE 00                       .
        db   $E6,$D3,$02                     ; 9EFF E6 D3 02                 ...
; ----------------------------------------------------------------------------
        pla                                     ; 9F02 68                       h
BattleActionServices_Branch_9F03:
        sta     $00                           ; 9F03 85 00                    ..
        brk                                     ; 9F05 00                       .
        db   $06,$1F                         ; 9F06 06 1F                    ..
; ----------------------------------------------------------------------------
        lda     $00                           ; 9F08 A5 00                    ..
        bcc     BattleActionServices_Branch_9F10; 9F0A 90 04                    ..
        brk                                     ; 9F0C 00                       .
        db   $09,$B3                         ; 9F0D 09 B3                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 9F0F 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9F10:
        brk                                     ; 9F10 00                       .
        db   $09,$73                         ; 9F11 09 73                    .s
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9F13:
        rts                                     ; 9F13 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9F14:
        brk                                     ; 9F14 00                       .
        db   $07,$1F                         ; 9F15 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9F1F; 9F17 90 06                    ..
        brk                                     ; 9F19 00                       .
        db   $17,$B3                         ; 9F1A 17 B3                    ..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_9F36; 9F1C 4C 36 9F                 L6.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9F1F:
        bvc     BattleActionServices_Branch_9F63; 9F1F 50 42                    PB
        brk                                     ; 9F21 00                       .
        db   $1B,$73                         ; 9F22 1B 73                    .s
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_9F53; 9F24 4C 53 9F                 LS.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9F27:
        brk                                     ; 9F27 00                       .
        db   $07,$1F                         ; 9F28 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9F47; 9F2A 90 1B                    ..
        brk                                     ; 9F2C 00                       .
        db   $16,$A3                         ; 9F2D 16 A3                    ..
; ----------------------------------------------------------------------------
        lsr     $7F                             ; 9F2F 46 7F                    F.
        lda     $7E                             ; 9F31 A5 7E                    .~
        ror     a                               ; 9F33 6A                       j
        ora     #$01                            ; 9F34 09 01                    ..
BattleActionServices_Branch_9F36:
        sta     $7C                             ; 9F36 85 7C                    .|
        lda     $7F                             ; 9F38 A5 7F                    ..
        sta     $7D                             ; 9F3A 85 7D                    .}
        jsr     BattleActionServices_Entry_A01F ; 9F3C 20 1F A0                  ..
        brk                                     ; 9F3F 00                       .
        db   $19,$A3                         ; 9F40 19 A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9F42 00                       .
        db   $E6,$D3,$01                     ; 9F43 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9F46 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9F47:
        bvc     BattleActionServices_Branch_9F63; 9F47 50 1A                    P.
        brk                                     ; 9F49 00                       .
        db   $1C,$53                         ; 9F4A 1C 53                    .S
; ----------------------------------------------------------------------------
        lsr     $73                             ; 9F4C 46 73                    Fs
        lda     $72                             ; 9F4E A5 72                    .r
        ror     a                               ; 9F50 6A                       j
        ora     #$01                            ; 9F51 09 01                    ..
BattleActionServices_Branch_9F53:
        sta     $6F                             ; 9F53 85 6F                    .o
        lda     $73                             ; 9F55 A5 73                    .s
        sta     $70                             ; 9F57 85 70                    .p
        jsr     BattleActionServices_Entry_A011 ; 9F59 20 11 A0                  ..
        brk                                     ; 9F5C 00                       .
        db   $1E,$53                         ; 9F5D 1E 53                    .S
; ----------------------------------------------------------------------------
        brk                                     ; 9F5F 00                       .
        db   $E6,$D3,$02                     ; 9F60 E6 D3 02                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9F63:
        rts                                     ; 9F63 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9F64:
        brk                                     ; 9F64 00                       .
        db   $07,$1F                         ; 9F65 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9F78; 9F67 90 0F                    ..
        brk                                     ; 9F69 00                       .
        db   $17,$B3                         ; 9F6A 17 B3                    ..
; ----------------------------------------------------------------------------
        txa                                     ; 9F6C 8A                       .
        pha                                     ; 9F6D 48                       H
        ldx     #$7E                            ; 9F6E A2 7E                    .~
        jsr     BattleActionServices_Entry_9F89 ; 9F70 20 89 9F                  ..
        pla                                     ; 9F73 68                       h
        tax                                     ; 9F74 AA                       .
        jmp     BattleActionServices_Branch_9F9B; 9F75 4C 9B 9F                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9F78:
        bvc     BattleActionServices_Branch_9F63; 9F78 50 E9                    P.
        brk                                     ; 9F7A 00                       .
        db   $1B,$73                         ; 9F7B 1B 73                    .s
; ----------------------------------------------------------------------------
        txa                                     ; 9F7D 8A                       .
        pha                                     ; 9F7E 48                       H
        ldx     #$72                            ; 9F7F A2 72                    .r
        jsr     BattleActionServices_Entry_9F89 ; 9F81 20 89 9F                  ..
        pla                                     ; 9F84 68                       h
        tax                                     ; 9F85 AA                       .
        jmp     BattleActionServices_Branch_9FB3; 9F86 4C B3 9F                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9F89:
        lda     #$03                            ; 9F89 A9 03                    ..
        jsr     MultiplyPointerWord             ; 9F8B 20 27 C8                  '.
        lda     #$02                            ; 9F8E A9 02                    ..
        jmp     UpperFixedEngine_Entry_C851     ; 9F90 4C 51 C8                 LQ.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9F93:
        brk                                     ; 9F93 00                       .
        db   $07,$1F                         ; 9F94 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9FAE; 9F96 90 16                    ..
        brk                                     ; 9F98 00                       .
        db   $17,$A3                         ; 9F99 17 A3                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9F9B:
        lda     $7E                             ; 9F9B A5 7E                    .~
        sta     $7C                             ; 9F9D 85 7C                    .|
        lda     $7F                             ; 9F9F A5 7F                    ..
        sta     $7D                             ; 9FA1 85 7D                    .}
        jsr     BattleActionServices_Entry_A01F ; 9FA3 20 1F A0                  ..
        brk                                     ; 9FA6 00                       .
        db   $18,$A3                         ; 9FA7 18 A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9FA9 00                       .
        db   $E6,$D3,$01                     ; 9FAA E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9FAD 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9FAE:
        bvc     BattleActionServices_Branch_9F63; 9FAE 50 B3                    P.
        brk                                     ; 9FB0 00                       .
        db   $1B,$53                         ; 9FB1 1B 53                    .S
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9FB3:
        lda     $72                             ; 9FB3 A5 72                    .r
        sta     $6F                             ; 9FB5 85 6F                    .o
        lda     $73                             ; 9FB7 A5 73                    .s
        sta     $70                             ; 9FB9 85 70                    .p
        jsr     BattleActionServices_Entry_A011 ; 9FBB 20 11 A0                  ..
        brk                                     ; 9FBE 00                       .
        db   $1D,$53                         ; 9FBF 1D 53                    .S
; ----------------------------------------------------------------------------
        brk                                     ; 9FC1 00                       .
        db   $E6,$D3,$01                     ; 9FC2 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9FC5 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9FC6:
        brk                                     ; 9FC6 00                       .
        db   $07,$1F                         ; 9FC7 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9FDB; 9FC9 90 10                    ..
        brk                                     ; 9FCB 00                       .
        db   $0F,$B3                         ; 9FCC 0F B3                    ..
; ----------------------------------------------------------------------------
        sta     $7C                             ; 9FCE 85 7C                    .|
        jsr     BattleActionServices_Entry_A01F ; 9FD0 20 1F A0                  ..
        brk                                     ; 9FD3 00                       .
        db   $10,$A3                         ; 9FD4 10 A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9FD6 00                       .
        db   $E6,$D3,$01                     ; 9FD7 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9FDA 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9FDB:
        bvc     BattleActionServices_Branch_9FEC; 9FDB 50 0F                    P.
        brk                                     ; 9FDD 00                       .
        db   $12,$73                         ; 9FDE 12 73                    .s
; ----------------------------------------------------------------------------
        sta     $6F                             ; 9FE0 85 6F                    .o
        jsr     BattleActionServices_Entry_A011 ; 9FE2 20 11 A0                  ..
        brk                                     ; 9FE5 00                       .
        db   $15,$53                         ; 9FE6 15 53                    .S
; ----------------------------------------------------------------------------
        brk                                     ; 9FE8 00                       .
        db   $E6,$D3,$01                     ; 9FE9 E6 D3 01                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9FEC:
        rts                                     ; 9FEC 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_9FED:
        brk                                     ; 9FED 00                       .
        db   $07,$1F                         ; 9FEE 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_9FFF; 9FF0 90 0D                    ..
        brk                                     ; 9FF2 00                       .
        db   $05,$3F                         ; 9FF3 05 3F                    .?
; ----------------------------------------------------------------------------
        sta     $7C                             ; 9FF5 85 7C                    .|
        brk                                     ; 9FF7 00                       .
        db   $02,$A3                         ; 9FF8 02 A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9FFA 00                       .
        db   $E6,$D3,$01                     ; 9FFB E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; 9FFE 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_9FFF:
        bvc     BattleActionServices_Branch_A010; 9FFF 50 0F                    P.
        brk                                     ; A001 00                       .
        db   $05,$3F                         ; A002 05 3F                    .?
; ----------------------------------------------------------------------------
        sta     $6F                             ; A004 85 6F                    .o
        brk                                     ; A006 00                       .
        db   $02,$53                         ; A007 02 53                    .S
; ----------------------------------------------------------------------------
        brk                                     ; A009 00                       .
        db   $E6,$D3,$01                     ; A00A E6 D3 01                 ...
; ----------------------------------------------------------------------------
        brk                                     ; A00D 00                       .
        db   $27,$0F                         ; A00E 27 0F                    '.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A010:
        rts                                     ; A010 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A011:
        txa                                     ; A011 8A                       .
        pha                                     ; A012 48                       H
        jsr     BattleActionServices_Entry_AC5C ; A013 20 5C AC                  \.
        bcc     BattleActionServices_Branch_A01C; A016 90 04                    ..
        asl     $6F                             ; A018 06 6F                    .o
        rol     $70                             ; A01A 26 70                    &p
BattleActionServices_Branch_A01C:
        pla                                     ; A01C 68                       h
        tax                                     ; A01D AA                       .
        rts                                     ; A01E 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A01F:
        txa                                     ; A01F 8A                       .
        pha                                     ; A020 48                       H
        jsr     BattleActionServices_Entry_AC5C ; A021 20 5C AC                  \.
        bcc     BattleActionServices_Branch_A01C; A024 90 F6                    ..
        asl     $7C                             ; A026 06 7C                    .|
        rol     $7D                             ; A028 26 7D                    &}
        pla                                     ; A02A 68                       h
        tax                                     ; A02B AA                       .
        rts                                     ; A02C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A02D:
        lda     #$06                            ; A02D A9 06                    ..
        sta     $71                             ; A02F 85 71                    .q
        jsr     BattleActionServices_Entry_A0B7 ; A031 20 B7 A0                  ..
        bcc     BattleActionServices_Branch_A03B; A034 90 05                    ..
BattleActionServices_Branch_A036:
        brk                                     ; A036 00                       .
        db   $E4,$D3,$1A                     ; A037 E4 D3 1A                 ...
; ----------------------------------------------------------------------------
        rts                                     ; A03A 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A03B:
        brk                                     ; A03B 00                       .
        db   $1B,$0F                         ; A03C 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$80                            ; A03E C9 80                    ..
        bcc     BattleActionServices_Branch_A050; A040 90 0E                    ..
        brk                                     ; A042 00                       .
        db   $E6,$D3,$03                     ; A043 E6 D3 03                 ...
; ----------------------------------------------------------------------------
        rts                                     ; A046 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A047:
        lda     #$05                            ; A047 A9 05                    ..
        sta     $71                             ; A049 85 71                    .q
        jsr     BattleActionServices_Entry_A0B7 ; A04B 20 B7 A0                  ..
        bcs     BattleActionServices_Branch_A036; A04E B0 E6                    ..
BattleActionServices_Branch_A050:
        brk                                     ; A050 00                       .
        db   $07,$1F                         ; A051 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A078; A053 90 23                    .#
        jsr     BattleActionServices_Entry_A0C6 ; A055 20 C6 A0                  ..
        bcc     BattleActionServices_Branch_A036; A058 90 DC                    ..
        brk                                     ; A05A 00                       .
        db   $2A,$C3,$0E                     ; A05B 2A C3 0E                 *..
; ----------------------------------------------------------------------------
        lda     $71                             ; A05E A5 71                    .q
        cmp     #$05                            ; A060 C9 05                    ..
        bne     BattleActionServices_Branch_A06A; A062 D0 06                    ..
        brk                                     ; A064 00                       .
        db   $05,$B3                         ; A065 05 B3                    ..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_A06D; A067 4C 6D A0                 Lm.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A06A:
        brk                                     ; A06A 00                       .
        db   $06,$B3                         ; A06B 06 B3                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A06D:
        jsr     BattleActionServices_Entry_A0DC ; A06D 20 DC A0                  ..
        jsr     BattleActionServices_Entry_A0EF ; A070 20 EF A0                  ..
        brk                                     ; A073 00                       .
        db   $E6,$D3,$01                     ; A074 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; A077 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A078:
        bvc     BattleActionServices_Branch_A08D; A078 50 13                    P.
        brk                                     ; A07A 00                       .
        db   $44,$93,$07                     ; A07B 44 93 07                 D..
; ----------------------------------------------------------------------------
        lda     $71                             ; A07E A5 71                    .q
        brk                                     ; A080 00                       .
        db   $00,$13                         ; A081 00 13                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_A0EF ; A083 20 EF A0                  ..
        brk                                     ; A086 00                       .
        db   $27,$0F                         ; A087 27 0F                    '.
; ----------------------------------------------------------------------------
        brk                                     ; A089 00                       .
        db   $E6,$D3,$01                     ; A08A E6 D3 01                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A08D:
        rts                                     ; A08D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A08E:
        brk                                     ; A08E 00                       .
        db   $01,$1F                         ; A08F 01 1F                    ..
; ----------------------------------------------------------------------------
        cmp     $7363                           ; A091 CD 63 73                 .cs
        beq     BattleActionServices_Branch_A0A8; A094 F0 12                    ..
BattleActionServices_Entry_A096:
        brk                                     ; A096 00                       .
        db   $07,$1F                         ; A097 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_A0A9; A099 B0 0E                    ..
        brk                                     ; A09B 00                       .
        db   $46,$93,$07                     ; A09C 46 93 07                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Entry_A047 ; A09F 90 A6                    ..
        brk                                     ; A0A1 00                       .
        db   $05,$73                         ; A0A2 05 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; A0A4 00                       .
        db   $E6,$D3,$02                     ; A0A5 E6 D3 02                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A0A8:
        rts                                     ; A0A8 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A0A9:
        brk                                     ; A0A9 00                       .
        db   $29,$C3,$0E                     ; A0AA 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Entry_A047 ; A0AD 90 98                    ..
        brk                                     ; A0AF 00                       .
        db   $05,$A3                         ; A0B0 05 A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A0B2 00                       .
        db   $E6,$D3,$02                     ; A0B3 E6 D3 02                 ...
; ----------------------------------------------------------------------------
        rts                                     ; A0B6 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A0B7:
        brk                                     ; A0B7 00                       .
        db   $07,$1F                         ; A0B8 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A0C1; A0BA 90 05                    ..
        brk                                     ; A0BC 00                       .
        db   $29,$C3,$0E                     ; A0BD 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        rts                                     ; A0C0 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A0C1:
        brk                                     ; A0C1 00                       .
        db   $46,$93,$07                     ; A0C2 46 93 07                 F..
; ----------------------------------------------------------------------------
        rts                                     ; A0C5 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A0C6:
        brk                                     ; A0C6 00                       .
        db   $07,$1F                         ; A0C7 07 1F                    ..
; ----------------------------------------------------------------------------
        txa                                     ; A0C9 8A                       .
        pha                                     ; A0CA 48                       H
        sta     $C7                             ; A0CB 85 C7                    ..
        brk                                     ; A0CD 00                       .
        db   $2D,$B3                         ; A0CE 2D B3                    -.
; ----------------------------------------------------------------------------
        tax                                     ; A0D0 AA                       .
        lda     $6E45,x                         ; A0D1 BD 45 6E                 .En
        sta     $C4                             ; A0D4 85 C4                    ..
        brk                                     ; A0D6 00                       .
        db   $05,$4F                         ; A0D7 05 4F                    .O
; ----------------------------------------------------------------------------
        pla                                     ; A0D9 68                       h
        tax                                     ; A0DA AA                       .
        rts                                     ; A0DB 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A0DC:
        txa                                     ; A0DC 8A                       .
        pha                                     ; A0DD 48                       H
        sta     $C7                             ; A0DE 85 C7                    ..
        brk                                     ; A0E0 00                       .
        db   $2D,$B3                         ; A0E1 2D B3                    -.
; ----------------------------------------------------------------------------
        tax                                     ; A0E3 AA                       .
        lda     $6E45,x                         ; A0E4 BD 45 6E                 .En
        sta     $C4                             ; A0E7 85 C4                    ..
        brk                                     ; A0E9 00                       .
        db   $06,$4F                         ; A0EA 06 4F                    .O
; ----------------------------------------------------------------------------
        pla                                     ; A0EC 68                       h
        tax                                     ; A0ED AA                       .
        rts                                     ; A0EE 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A0EF:
        lda     $7363                           ; A0EF AD 63 73                 .cs
        brk                                     ; A0F2 00                       .
        db   $09,$1F                         ; A0F3 09 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A0FC; A0F5 90 05                    ..
        lda     #$02                            ; A0F7 A9 02                    ..
        brk                                     ; A0F9 00                       .
        db   $08,$1F                         ; A0FA 08 1F                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A0FC:
        rts                                     ; A0FC 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A0FD:
        jsr     BattleActionServices_Entry_A108 ; A0FD 20 08 A1                  ..
        bcc     BattleActionServices_Branch_A107; A100 90 05                    ..
BattleActionServices_Branch_A102:
        jsr     BattleActionServices_Entry_A10E ; A102 20 0E A1                  ..
        bcs     BattleActionServices_Branch_A102; A105 B0 FB                    ..
BattleActionServices_Branch_A107:
        rts                                     ; A107 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A108:
        jsr     BattleActionServices_Entry_A10E ; A108 20 0E A1                  ..
        bcc     BattleActionServices_Branch_A141; A10B 90 34                    .4
        rts                                     ; A10D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A10E:
        jsr     BattleActionServices_Entry_A11A ; A10E 20 1A A1                  ..
        bcs     BattleActionServices_Branch_A14C; A111 B0 39                    .9
        rts                                     ; A113 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A114:
        jsr     BattleActionServices_Entry_A11A ; A114 20 1A A1                  ..
        bcs     BattleActionServices_Branch_A15A; A117 B0 41                    .A
        rts                                     ; A119 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A11A:
        jsr     BattleActionServices_Entry_A1B4 ; A11A 20 B4 A1                  ..
        bcc     BattleActionServices_Branch_A107; A11D 90 E8                    ..
        stx     $C7                             ; A11F 86 C7                    ..
        txa                                     ; A121 8A                       .
        brk                                     ; A122 00                       .
        db   $06,$1F                         ; A123 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A125 00                       .
        db   $2D,$B3                         ; A126 2D B3                    -.
; ----------------------------------------------------------------------------
        sta     $7C                             ; A128 85 7C                    .|
        tax                                     ; A12A AA                       .
        lda     $6E45,x                         ; A12B BD 45 6E                 .En
        jmp     BattleActionServices_Branch_A175; A12E 4C 75 A1                 Lu.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A131:
        jsr     BattleActionServices_Entry_A13C ; A131 20 3C A1                  <.
        bcc     BattleActionServices_Branch_A13B; A134 90 05                    ..
BattleActionServices_Branch_A136:
        jsr     BattleActionServices_Entry_A147 ; A136 20 47 A1                  G.
        bcs     BattleActionServices_Branch_A136; A139 B0 FB                    ..
BattleActionServices_Branch_A13B:
        rts                                     ; A13B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A13C:
        jsr     BattleActionServices_Entry_A161 ; A13C 20 61 A1                  a.
        bcs     BattleActionServices_Branch_A14C; A13F B0 0B                    ..
BattleActionServices_Branch_A141:
        brk                                     ; A141 00                       .
        db   $E8,$D3,$1A                     ; A142 E8 D3 1A                 ...
; ----------------------------------------------------------------------------
        clc                                     ; A145 18                       .
        rts                                     ; A146 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A147:
        jsr     BattleActionServices_Entry_A161 ; A147 20 61 A1                  a.
        bcc     BattleActionServices_Branch_A154; A14A 90 08                    ..
BattleActionServices_Branch_A14C:
        jsr     BattleActionServices_Entry_A0EF ; A14C 20 EF A0                  ..
        brk                                     ; A14F 00                       .
        db   $E6,$D3,$01                     ; A150 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        sec                                     ; A153 38                       8
BattleActionServices_Branch_A154:
        rts                                     ; A154 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A155:
        jsr     BattleActionServices_Entry_A161 ; A155 20 61 A1                  a.
        bcc     BattleActionServices_Branch_A154; A158 90 FA                    ..
BattleActionServices_Branch_A15A:
        brk                                     ; A15A 00                       .
        db   $E6,$D3,$01                     ; A15B E6 D3 01                 ...
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_A1D0 ; A15E 4C D0 A1                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A161:
        brk                                     ; A161 00                       .
        db   $03,$1F                         ; A162 03 1F                    ..
; ----------------------------------------------------------------------------
        sec                                     ; A164 38                       8
        sbc     #$5C                            ; A165 E9 5C                    .\
        tay                                     ; A167 A8                       .
        jsr     BattleActionServices_Entry_A1B4 ; A168 20 B4 A1                  ..
        bcc     BattleActionServices_Branch_A199; A16B 90 2C                    .,
        stx     $C7                             ; A16D 86 C7                    ..
        brk                                     ; A16F 00                       .
        db   $09,$4F                         ; A170 09 4F                    .O
; ----------------------------------------------------------------------------
        brk                                     ; A172 00                       .
        db   $11,$4F                         ; A173 11 4F                    .O
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A175:
        sta     $C4                             ; A175 85 C4                    ..
        brk                                     ; A177 00                       .
        db   $05,$4F                         ; A178 05 4F                    .O
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A199; A17A 90 1D                    ..
BattleActionServices_Entry_A17C:
        lda     $C4                             ; A17C A5 C4                    ..
        ldx     $C6                             ; A17E A6 C6                    ..
        sta     $6E45,x                         ; A180 9D 45 6E                 .En
        sta     $7206,x                         ; A183 9D 06 72                 ..r
        lda     $C7                             ; A186 A5 C7                    ..
        tax                                     ; A188 AA                       .
        ora     #$80                            ; A189 09 80                    ..
        sta     $7363                           ; A18B 8D 63 73                 .cs
        lda     $C6                             ; A18E A5 C6                    ..
        sta     $7C                             ; A190 85 7C                    .|
        brk                                     ; A192 00                       .
        db   $31,$A3                         ; A193 31 A3                    1.
; ----------------------------------------------------------------------------
        brk                                     ; A195 00                       .
        db   $06,$4F                         ; A196 06 4F                    .O
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A198:
        sec                                     ; A198 38                       8
BattleActionServices_Branch_A199:
        rts                                     ; A199 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A19A:
        jsr     BattleActionServices_Entry_A1B4 ; A19A 20 B4 A1                  ..
        bcc     BattleActionServices_Branch_A1A8; A19D 90 09                    ..
        stx     $C7                             ; A19F 86 C7                    ..
        lda     #$84                            ; A1A1 A9 84                    ..
        sta     $C4                             ; A1A3 85 C4                    ..
        brk                                     ; A1A5 00                       .
        db   $05,$4F                         ; A1A6 05 4F                    .O
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A1A8:
        rts                                     ; A1A8 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A1A9:
        jsr     BattleActionServices_Entry_A19A ; A1A9 20 9A A1                  ..
        bcc     BattleActionServices_Branch_A141; A1AC 90 93                    ..
        jsr     BattleActionServices_Entry_A17C ; A1AE 20 7C A1                  |.
        jmp     BattleActionServices_Branch_A14C; A1B1 4C 4C A1                 LL.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A1B4:
        ldx     #$00                            ; A1B4 A2 00                    ..
BattleActionServices_Branch_A1B6:
        brk                                     ; A1B6 00                       .
        db   $29,$C3,$0F                     ; A1B7 29 C3 0F                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A198; A1BA 90 DC                    ..
        inx                                     ; A1BC E8                       .
        cpx     #$08                            ; A1BD E0 08                    ..
        bne     BattleActionServices_Branch_A1B6; A1BF D0 F5                    ..
        ldx     #$00                            ; A1C1 A2 00                    ..
BattleActionServices_Branch_A1C3:
        brk                                     ; A1C3 00                       .
        db   $29,$C3,$0E                     ; A1C4 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A198; A1C7 90 CF                    ..
        inx                                     ; A1C9 E8                       .
        cpx     #$08                            ; A1CA E0 08                    ..
        bne     BattleActionServices_Branch_A1C3; A1CC D0 F5                    ..
        clc                                     ; A1CE 18                       .
        rts                                     ; A1CF 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A1D0:
        lda     $96                             ; A1D0 A5 96                    ..
        pha                                     ; A1D2 48                       H
        brk                                     ; A1D3 00                       .
        db   $03,$1F                         ; A1D4 03 1F                    ..
; ----------------------------------------------------------------------------
        pha                                     ; A1D6 48                       H
        brk                                     ; A1D7 00                       .
        db   $02,$1F                         ; A1D8 02 1F                    ..
; ----------------------------------------------------------------------------
        pha                                     ; A1DA 48                       H
        lda     $735D                           ; A1DB AD 5D 73                 .]s
        pha                                     ; A1DE 48                       H
        lda     $735C                           ; A1DF AD 5C 73                 .\s
        pha                                     ; A1E2 48                       H
        lda     $735E                           ; A1E3 AD 5E 73                 .^s
        pha                                     ; A1E6 48                       H
        lda     $7363                           ; A1E7 AD 63 73                 .cs
        brk                                     ; A1EA 00                       .
        db   $09,$1F                         ; A1EB 09 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A20A; A1ED 90 1B                    ..
        stx     $96                             ; A1EF 86 96                    ..
        lda     #$00                            ; A1F1 A9 00                    ..
        brk                                     ; A1F3 00                       .
        db   $0C,$1F                         ; A1F4 0C 1F                    ..
; ----------------------------------------------------------------------------
        ldx     $96                             ; A1F6 A6 96                    ..
        lda     #$00                            ; A1F8 A9 00                    ..
        brk                                     ; A1FA 00                       .
        db   $08,$1F                         ; A1FB 08 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A1FD 00                       .
        db   $31,$0F                         ; A1FE 31 0F                    1.
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_88CA ; A200 20 CA 88                  ..
        ldx     $96                             ; A203 A6 96                    ..
        lda     #$02                            ; A205 A9 02                    ..
        brk                                     ; A207 00                       .
        db   $08,$1F                         ; A208 08 1F                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A20A:
        pla                                     ; A20A 68                       h
        sta     $735E                           ; A20B 8D 5E 73                 .^s
        pla                                     ; A20E 68                       h
        sta     $735C                           ; A20F 8D 5C 73                 .\s
        pla                                     ; A212 68                       h
        sta     $735D                           ; A213 8D 5D 73                 .]s
        brk                                     ; A216 00                       .
        db   $01,$1F                         ; A217 01 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A219 00                       .
        db   $09,$1F                         ; A21A 09 1F                    ..
; ----------------------------------------------------------------------------
        pla                                     ; A21C 68                       h
        brk                                     ; A21D 00                       .
        db   $0B,$1F                         ; A21E 0B 1F                    ..
; ----------------------------------------------------------------------------
        pla                                     ; A220 68                       h
        brk                                     ; A221 00                       .
        db   $0A,$1F                         ; A222 0A 1F                    ..
; ----------------------------------------------------------------------------
        pla                                     ; A224 68                       h
        sta     $96                             ; A225 85 96                    ..
        rts                                     ; A227 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A228:
        brk                                     ; A228 00                       .
        db   $03,$1F                         ; A229 03 1F                    ..
; ----------------------------------------------------------------------------
        sec                                     ; A22B 38                       8
        sbc     #$69                            ; A22C E9 69                    .i
        sta     $C4                             ; A22E 85 C4                    ..
        pha                                     ; A230 48                       H
        sta     $7D                             ; A231 85 7D                    .}
        brk                                     ; A233 00                       .
        db   $06,$1F                         ; A234 06 1F                    ..
; ----------------------------------------------------------------------------
        txa                                     ; A236 8A                       .
        pha                                     ; A237 48                       H
        stx     $C7                             ; A238 86 C7                    ..
        brk                                     ; A23A 00                       .
        db   $0C,$4F                         ; A23B 0C 4F                    .O
; ----------------------------------------------------------------------------
        pla                                     ; A23D 68                       h
        tax                                     ; A23E AA                       .
        pla                                     ; A23F 68                       h
        sta     $C4                             ; A240 85 C4                    ..
        bcc     BattleActionServices_Branch_A29C; A242 90 58                    .X
        brk                                     ; A244 00                       .
        db   $2A,$C3,$10                     ; A245 2A C3 10                 *..
; ----------------------------------------------------------------------------
        brk                                     ; A248 00                       .
        db   $2D,$B3                         ; A249 2D B3                    -.
; ----------------------------------------------------------------------------
        tay                                     ; A24B A8                       .
        lda     $7206,y                         ; A24C B9 06 72                 ..r
        pha                                     ; A24F 48                       H
        lda     $C4                             ; A250 A5 C4                    ..
        clc                                     ; A252 18                       .
        adc     #$D3                            ; A253 69 D3                    i.
        sta     $7206,y                         ; A255 99 06 72                 ..r
        brk                                     ; A258 00                       .
        db   $05,$B3                         ; A259 05 B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A25B 00                       .
        db   $0D,$B3                         ; A25C 0D B3                    ..
; ----------------------------------------------------------------------------
        lda     #$FF                            ; A25E A9 FF                    ..
        sta     $7D                             ; A260 85 7D                    .}
        brk                                     ; A262 00                       .
        db   $11,$B3                         ; A263 11 B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A265 00                       .
        db   $15,$A3                         ; A266 15 A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A268 00                       .
        db   $19,$A3                         ; A269 19 A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A26B 00                       .
        db   $0F,$B3                         ; A26C 0F B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A26E 00                       .
        db   $10,$B3                         ; A26F 10 B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A271 00                       .
        db   $13,$B3                         ; A272 13 B3                    ..
; ----------------------------------------------------------------------------
        sta     $7C                             ; A274 85 7C                    .|
        lda     $7F                             ; A276 A5 7F                    ..
        sta     $7D                             ; A278 85 7D                    .}
        brk                                     ; A27A 00                       .
        db   $14,$A3                         ; A27B 14 A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A27D 00                       .
        db   $17,$B3                         ; A27E 17 B3                    ..
; ----------------------------------------------------------------------------
        sta     $7C                             ; A280 85 7C                    .|
        lda     $7F                             ; A282 A5 7F                    ..
        sta     $7D                             ; A284 85 7D                    .}
        brk                                     ; A286 00                       .
        db   $18,$A3                         ; A287 18 A3                    ..
; ----------------------------------------------------------------------------
        pla                                     ; A289 68                       h
        sta     $7206,y                         ; A28A 99 06 72                 ..r
        jsr     BattleActionServices_Entry_A293 ; A28D 20 93 A2                  ..
        jsr     BattleActionServices_Entry_A1D0 ; A290 20 D0 A1                  ..
BattleActionServices_Entry_A293:
        lda     #$00                            ; A293 A9 00                    ..
        sta     $06                             ; A295 85 06                    ..
        brk                                     ; A297 00                       .
        db   $1F,$0F                         ; A298 1F 0F                    ..
; ----------------------------------------------------------------------------
        sec                                     ; A29A 38                       8
        rts                                     ; A29B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A29C:
        brk                                     ; A29C 00                       .
        db   $E4,$D3,$1A                     ; A29D E4 D3 1A                 ...
; ----------------------------------------------------------------------------
        clc                                     ; A2A0 18                       .
        rts                                     ; A2A1 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A2A2:
        brk                                     ; A2A2 00                       .
        db   $0D,$4F                         ; A2A3 0D 4F                    .O
; ----------------------------------------------------------------------------
        ldx     #$07                            ; A2A5 A2 07                    ..
BattleActionServices_Branch_A2A7:
        brk                                     ; A2A7 00                       .
        db   $2B,$C3,$0F                     ; A2A8 2B C3 0F                 +..
; ----------------------------------------------------------------------------
        dex                                     ; A2AB CA                       .
        bpl     BattleActionServices_Branch_A2A7; A2AC 10 F9                    ..
        lda     #$30                            ; A2AE A9 30                    .0
        sta     $6E45                           ; A2B0 8D 45 6E                 .En
        sta     $6E46                           ; A2B3 8D 46 6E                 .Fn
        sta     $7207                           ; A2B6 8D 07 72                 ..r
        lda     #$00                            ; A2B9 A9 00                    ..
        tax                                     ; A2BB AA                       .
        ora     #$80                            ; A2BC 09 80                    ..
        sta     $7363                           ; A2BE 8D 63 73                 .cs
        lda     #$01                            ; A2C1 A9 01                    ..
        sta     $7C                             ; A2C3 85 7C                    .|
        brk                                     ; A2C5 00                       .
        db   $31,$A3                         ; A2C6 31 A3                    1.
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_A0EF ; A2C8 20 EF A0                  ..
        brk                                     ; A2CB 00                       .
        db   $E4,$D3,$41                     ; A2CC E4 D3 41                 ..A
; ----------------------------------------------------------------------------
        lda     $6E44                           ; A2CF AD 44 6E                 .Dn
        ora     #$03                            ; A2D2 09 03                    ..
        sta     $6E44                           ; A2D4 8D 44 6E                 .Dn
        rts                                     ; A2D7 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A2D8:
        txa                                     ; A2D8 8A                       .
        pha                                     ; A2D9 48                       H
        ldx     $96                             ; A2DA A6 96                    ..
        lda     BattleSlotDescriptors,x         ; A2DC BD F4 72                 ..r
        and     #$8F                            ; A2DF 29 8F                    ).
        jmp     BattleActionServices_Branch_A362; A2E1 4C 62 A3                 Lb.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A2E4:
        jsr     BattleActionServices_Entry_A2D8 ; A2E4 20 D8 A2                  ..
        bmi     BattleActionServices_Branch_A2FF; A2E7 30 16                    0.
BattleActionServices_Branch_A2E9:
        tax                                     ; A2E9 AA                       .
        lda     $6E                             ; A2EA A5 6E                    .n
        pha                                     ; A2EC 48                       H
        lda     $6F                             ; A2ED A5 6F                    .o
        pha                                     ; A2EF 48                       H
        txa                                     ; A2F0 8A                       .
        brk                                     ; A2F1 00                       .
        db   $67,$73                         ; A2F2 67 73                    gs
; ----------------------------------------------------------------------------
        pla                                     ; A2F4 68                       h
        sta     $6F                             ; A2F5 85 6F                    .o
        pla                                     ; A2F7 68                       h
        sta     $6E                             ; A2F8 85 6E                    .n
        ldx     $72                             ; A2FA A6 72                    .r
        txa                                     ; A2FC 8A                       .
        clc                                     ; A2FD 18                       .
        rts                                     ; A2FE 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A2FF:
        and     #$07                            ; A2FF 29 07                    ).
        tax                                     ; A301 AA                       .
        sec                                     ; A302 38                       8
        rts                                     ; A303 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A304:
        txa                                     ; A304 8A                       .
        pha                                     ; A305 48                       H
        jsr     BattleActionServices_Entry_A3B5 ; A306 20 B5 A3                  ..
        lda     $7300,x                         ; A309 BD 00 73                 ..s
        and     #$8F                            ; A30C 29 8F                    ).
        jmp     BattleActionServices_Branch_A362; A30E 4C 62 A3                 Lb.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A311:
        lda     $7363                           ; A311 AD 63 73                 .cs
        and     #$8F                            ; A314 29 8F                    ).
        bpl     BattleActionServices_Branch_A2E9; A316 10 D1                    ..
        bmi     BattleActionServices_Branch_A2FF; A318 30 E5                    0.
BattleActionServices_Entry_A31A:
        jsr     BattleActionServices_Entry_A3C2 ; A31A 20 C2 A3                  ..
        and     #$8F                            ; A31D 29 8F                    ).
        sta     $6E0F                           ; A31F 8D 0F 6E                 ..n
        lda     $7300,x                         ; A322 BD 00 73                 ..s
        and     #$70                            ; A325 29 70                    )p
        ora     $6E0F                           ; A327 0D 0F 6E                 ..n
        sta     $7300,x                         ; A32A 9D 00 73                 ..s
        rts                                     ; A32D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A32E:
        txa                                     ; A32E 8A                       .
        pha                                     ; A32F 48                       H
        jsr     BattleActionServices_Entry_A3B5 ; A330 20 B5 A3                  ..
        lda     $7324,x                         ; A333 BD 24 73                 .$s
        jmp     BattleActionServices_Branch_A362; A336 4C 62 A3                 Lb.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A339:
        sta     $6E0F                           ; A339 8D 0F 6E                 ..n
        txa                                     ; A33C 8A                       .
        pha                                     ; A33D 48                       H
        jsr     BattleActionServices_Entry_A3B5 ; A33E 20 B5 A3                  ..
        lda     $6E0F                           ; A341 AD 0F 6E                 ..n
        sta     $7324,x                         ; A344 9D 24 73                 .$s
        jmp     BattleActionServices_Branch_A362; A347 4C 62 A3                 Lb.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A34A:
        txa                                     ; A34A 8A                       .
        pha                                     ; A34B 48                       H
        ldx     $96                             ; A34C A6 96                    ..
        lda     BattleSlotDescriptors,x         ; A34E BD F4 72                 ..r
        jmp     BattleActionServices_Branch_A35C; A351 4C 5C A3                 L\.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A354:
        txa                                     ; A354 8A                       .
        pha                                     ; A355 48                       H
        jsr     BattleActionServices_Entry_A3B5 ; A356 20 B5 A3                  ..
        lda     $7300,x                         ; A359 BD 00 73                 ..s
BattleActionServices_Branch_A35C:
        lsr     a                               ; A35C 4A                       J
        lsr     a                               ; A35D 4A                       J
        lsr     a                               ; A35E 4A                       J
        lsr     a                               ; A35F 4A                       J
        and     #$07                            ; A360 29 07                    ).
BattleActionServices_Branch_A362:
        sta     $6E0F                           ; A362 8D 0F 6E                 ..n
        pla                                     ; A365 68                       h
        tax                                     ; A366 AA                       .
        lda     $6E0F                           ; A367 AD 0F 6E                 ..n
        rts                                     ; A36A 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A36B:
        asl     a                               ; A36B 0A                       .
        asl     a                               ; A36C 0A                       .
        asl     a                               ; A36D 0A                       .
        asl     a                               ; A36E 0A                       .
        sta     $6E0F                           ; A36F 8D 0F 6E                 ..n
        lda     BattleSlotDescriptors,x         ; A372 BD F4 72                 ..r
        and     #$8F                            ; A375 29 8F                    ).
        ora     $6E0F                           ; A377 0D 0F 6E                 ..n
        sta     BattleSlotDescriptors,x         ; A37A 9D F4 72                 ..r
        rts                                     ; A37D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A37E:
        jsr     BattleActionServices_Entry_A3C2 ; A37E 20 C2 A3                  ..
        asl     a                               ; A381 0A                       .
        asl     a                               ; A382 0A                       .
        asl     a                               ; A383 0A                       .
        asl     a                               ; A384 0A                       .
        sta     $6E0F                           ; A385 8D 0F 6E                 ..n
        lda     $7300,x                         ; A388 BD 00 73                 ..s
        and     #$8F                            ; A38B 29 8F                    ).
        ora     $6E0F                           ; A38D 0D 0F 6E                 ..n
        sta     $7300,x                         ; A390 9D 00 73                 ..s
        rts                                     ; A393 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A394:
        sta     $6E0F                           ; A394 8D 0F 6E                 ..n
        ldx     #$00                            ; A397 A2 00                    ..
BattleActionServices_Branch_A399:
        lda     BattleSlotDescriptors,x         ; A399 BD F4 72                 ..r
        and     #$70                            ; A39C 29 70                    )p
        cmp     #$70                            ; A39E C9 70                    .p
        beq     BattleActionServices_Branch_A3AC; A3A0 F0 0A                    ..
        lda     BattleSlotDescriptors,x         ; A3A2 BD F4 72                 ..r
        and     #$8F                            ; A3A5 29 8F                    ).
        cmp     $6E0F                           ; A3A7 CD 0F 6E                 ..n
        beq     BattleActionServices_Branch_A3B3; A3AA F0 07                    ..
BattleActionServices_Branch_A3AC:
        inx                                     ; A3AC E8                       .
        cpx     #$0C                            ; A3AD E0 0C                    ..
        bne     BattleActionServices_Branch_A399; A3AF D0 E8                    ..
        clc                                     ; A3B1 18                       .
        rts                                     ; A3B2 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A3B3:
        sec                                     ; A3B3 38                       8
        rts                                     ; A3B4 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A3B5:
        lda     $00                           ; A3B5 A5 00                    ..
        pha                                     ; A3B7 48                       H
        jsr     BattleActionServices_Entry_A3D4 ; A3B8 20 D4 A3                  ..
        adc     $96                             ; A3BB 65 96                    e.
        tax                                     ; A3BD AA                       .
        pla                                     ; A3BE 68                       h
        sta     $00                           ; A3BF 85 00                    ..
        rts                                     ; A3C1 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A3C2:
        pha                                     ; A3C2 48                       H
        lda     $00                           ; A3C3 A5 00                    ..
        pha                                     ; A3C5 48                       H
        jsr     BattleActionServices_Entry_A3D4 ; A3C6 20 D4 A3                  ..
        sta     $00                           ; A3C9 85 00                    ..
        txa                                     ; A3CB 8A                       .
        adc     $00                           ; A3CC 65 00                    e.
        tax                                     ; A3CE AA                       .
        pla                                     ; A3CF 68                       h
        sta     $00                           ; A3D0 85 00                    ..
        pla                                     ; A3D2 68                       h
        rts                                     ; A3D3 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A3D4:
        lda     $735C                           ; A3D4 AD 5C 73                 .\s
        asl     a                               ; A3D7 0A                       .
        asl     a                               ; A3D8 0A                       .
        sta     $00                           ; A3D9 85 00                    ..
        asl     a                               ; A3DB 0A                       .
        adc     $00                           ; A3DC 65 00                    e.
        rts                                     ; A3DE 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A3DF:
        jsr     BattleActionServices_Entry_A2D8 ; A3DF 20 D8 A2                  ..
        sta     $00                           ; A3E2 85 00                    ..
        jsr     BattleActionServices_Entry_A304 ; A3E4 20 04 A3                  ..
        eor     $00                           ; A3E7 45 00                    E.
        sta     $00                           ; A3E9 85 00                    ..
        jsr     BattleActionServices_Entry_A32E ; A3EB 20 2E A3                  ..
        brk                                     ; A3EE 00                       .
        db   $0C,$3F                         ; A3EF 0C 3F                    .?
; ----------------------------------------------------------------------------
        ror     a                               ; A3F1 6A                       j
        eor     $00                           ; A3F2 45 00                    E.
        sta     $00                           ; A3F4 85 00                    ..
        rts                                     ; A3F6 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A3F7:
        lda     $72E9                           ; A3F7 AD E9 72                 ..r
        bmi     BattleActionServices_Branch_A409; A3FA 30 0D                    0.
        brk                                     ; A3FC 00                       .
        db   $07,$6F,$2B                     ; A3FD 07 6F 2B                 .o+
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_AE0A ; A400 20 0A AE                  ..
        bcc     BattleActionServices_Branch_A409; A403 90 04                    ..
        brk                                     ; A405 00                       .
        db   $07,$6F,$4D                     ; A406 07 6F 4D                 .oM
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A409:
        rts                                     ; A409 60                       `
; ----------------------------------------------------------------------------
Bank11_BattleActionPointers:
        db   $E2,$9A,$E2,$9A,$E2,$9A,$E2,$9A ; A40A E2 9A E2 9A E2 9A E2 9A  ........
        db   $E2,$9A,$E2,$9A,$E2,$9A,$E2,$9A ; A412 E2 9A E2 9A E2 9A E2 9A  ........
        db   $E2,$9A,$E2,$9A,$E2,$9A,$E2,$9A ; A41A E2 9A E2 9A E2 9A E2 9A  ........
        db   $E2,$9A,$E2,$9A,$E2,$9A,$E2,$9A ; A422 E2 9A E2 9A E2 9A E2 9A  ........
        db   $E2,$9A,$E2,$9A,$E2,$9A,$0C,$9B ; A42A E2 9A E2 9A E2 9A 0C 9B  ........
        db   $0C,$9B,$86,$9B,$53,$9B,$C3,$9C ; A432 0C 9B 86 9B 53 9B C3 9C  ....S...
        db   $C3,$9C,$BC,$9C,$CA,$9C,$D1,$9C ; A43A C3 9C BC 9C CA 9C D1 9C  ........
        db   $DD,$9E,$0A,$9D,$03,$9D,$14,$9F ; A442 DD 9E 0A 9D 03 9D 14 9F  ........
        db   $27,$9F,$64,$9F,$93,$9F,$C6,$9F ; A44A 27 9F 64 9F 93 9F C6 9F  '.d.....
        db   $42,$9D,$15,$9D,$90,$9D,$B4,$9D ; A452 42 9D 15 9D 90 9D B4 9D  B.......
        db   $32,$9D,$ED,$9F,$ED,$9F,$ED,$9F ; A45A 32 9D ED 9F ED 9F ED 9F  2.......
        db   $ED,$9F,$ED,$9F,$1C,$9D,$2B,$9D ; A462 ED 9F ED 9F 1C 9D 2B 9D  ......+.
        db   $2D,$A0,$47,$A0,$8E,$A0,$AD,$AF ; A46A 2D A0 47 A0 8E A0 AD AF  -.G.....
        db   $23,$AE,$23,$AE,$23,$AE,$23,$AE ; A472 23 AE 23 AE 23 AE 23 AE  #.#.#.#.
        db   $23,$AE,$23,$AE,$23,$AE,$23,$AE ; A47A 23 AE 23 AE 23 AE 23 AE  #.#.#.#.
        db   $23,$AE,$23,$AE,$5E,$AE,$5E,$AE ; A482 23 AE 23 AE 5E AE 5E AE  #.#.^.^.
        db   $9D,$AE,$24,$AE,$28,$AE,$DB,$96 ; A48A 9D AE 24 AE 28 AE DB 96  ..$.(...
        db   $E2,$98,$FA,$98,$45,$99,$52,$99 ; A492 E2 98 FA 98 45 99 52 99  ....E.R.
        db   $5F,$99,$35,$AE,$35,$AE,$35,$AE ; A49A 5F 99 35 AE 35 AE 35 AE  _.5.5.5.
        db   $0C,$9B,$E2,$9A,$E2,$9A,$E2,$9A ; A4A2 0C 9B E2 9A E2 9A E2 9A  ........
        db   $E2,$9A,$E2,$9A,$E2,$9A,$C3,$9C ; A4AA E2 9A E2 9A E2 9A C3 9C  ........
        db   $EA,$AF,$F4,$AF,$4E,$AE,$55,$AE ; A4B2 EA AF F4 AF 4E AE 55 AE  ....N.U.
        db   $65,$AE,$08,$A1,$14,$A1,$FD,$A0 ; A4BA 65 AE 08 A1 14 A1 FD A0  e.......
        db   $3C,$A1,$3C,$A1,$3C,$A1,$3C,$A1 ; A4C2 3C A1 3C A1 3C A1 3C A1  <.<.<.<.
        db   $55,$A1,$3C,$A1,$55,$A1,$3C,$A1 ; A4CA 55 A1 3C A1 55 A1 3C A1  U.<.U.<.
        db   $55,$A1,$31,$A1,$A2,$A2,$E2,$9A ; A4D2 55 A1 31 A1 A2 A2 E2 9A  U.1.....
        db   $55,$AE,$28,$A2,$28,$A2,$28,$A2 ; A4DA 55 AE 28 A2 28 A2 28 A2  U.(.(.(.
        db   $28,$A2,$E2,$9A,$20,$9C,$BF,$AE ; A4E2 28 A2 E2 9A 20 9C BF AE  (... ...
        db   $ED,$9F,$E4,$B0,$84,$AE,$C3,$9C ; A4EA ED 9F E4 B0 84 AE C3 9C  ........
        db   $E2,$9A,$7C,$B1,$ED,$9F,$BC,$9C ; A4F2 E2 9A 7C B1 ED 9F BC 9C  ..|.....
        db   $4E,$AE,$35,$AE,$C3,$9C,$80,$B1 ; A4FA 4E AE 35 AE C3 9C 80 B1  N.5.....
        db   $D0,$B1,$DE,$B1,$1F,$B2,$34,$B0 ; A502 D0 B1 DE B1 1F B2 34 B0  ......4.
        db   $E2,$9A,$EB,$9A,$7C,$B1,$E2,$9A ; A50A E2 9A EB 9A 7C B1 E2 9A  ....|...
        db   $E2,$9A,$C3,$9C,$E2,$9A,$E2,$9A ; A512 E2 9A C3 9C E2 9A E2 9A  ........
        db   $BC,$9C,$E2,$9A,$27,$9F,$ED,$9F ; A51A BC 9C E2 9A 27 9F ED 9F  ....'...
        db   $BF,$AE,$B3,$B0,$E2,$9A,$ED,$9F ; A522 BF AE B3 B0 E2 9A ED 9F  ........
        db   $39,$B0,$03,$9D,$0A,$9D,$25,$B0 ; A52A 39 B0 03 9D 0A 9D 25 B0  9.....%.
        db   $ED,$9F,$E2,$9A,$AD,$AF,$E4,$B0 ; A532 ED 9F E2 9A AD AF E4 B0  ........
        db   $1C,$9D,$55,$B0,$77,$B0,$ED,$9F ; A53A 1C 9D 55 B0 77 B0 ED 9F  ..U.w...
        db   $53,$9B,$AD,$9C,$34,$B0,$60,$B9 ; A542 53 9B AD 9C 34 B0 60 B9  S...4.`.
        db   $ED,$9F,$BA,$B0,$BF,$B0,$C4,$B0 ; A54A ED 9F BA B0 BF B0 C4 B0  ........
        db   $C9,$B0,$CE,$B0,$EB,$B0,$A4,$B0 ; A552 C9 B0 CE B0 EB B0 A4 B0  ........
        db   $CA,$9C,$F5,$B1,$D1,$9C,$D7,$B1 ; A55A CA 9C F5 B1 D1 9C D7 B1  ........
        db   $23,$AE,$34,$B0,$34,$B0,$37,$B4 ; A562 23 AE 34 B0 34 B0 37 B4  #.4.4.7.
        db   $B6,$B3,$80,$B3,$92,$B3,$34,$B0 ; A56A B6 B3 80 B3 92 B3 34 B0  ......4.
        db   $7F,$B4,$34,$B0,$53,$B4,$34,$B0 ; A572 7F B4 34 B0 53 B4 34 B0  ..4.S.4.
        db   $23,$AE,$23,$AE,$23,$AE,$72,$B3 ; A57A 23 AE 23 AE 23 AE 72 B3  #.#.#.r.
        db   $E4,$B4,$72,$B3,$9C,$B3,$72,$B3 ; A582 E4 B4 72 B3 9C B3 72 B3  ..r...r.
        db   $64,$9F,$23,$AE,$C6,$B4,$65,$B3 ; A58A 64 9F 23 AE C6 B4 65 B3  d.#...e.
        db   $92,$B3,$A4,$B3,$D4,$B3,$72,$B3 ; A592 92 B3 A4 B3 D4 B3 72 B3  ......r.
        db   $02,$B4,$72,$B3,$1C,$B4,$34,$B0 ; A59A 02 B4 72 B3 1C B4 34 B0  ..r...4.
        db   $23,$AE,$23,$AE,$DE,$B3,$34,$B0 ; A5A2 23 AE 23 AE DE B3 34 B0  #.#...4.
        db   $34,$B0,$F4,$AF,$34,$B0,$8B,$AE ; A5AA 34 B0 F4 AF 34 B0 8B AE  4...4...
        db   $20,$9C,$51,$B6,$ED,$9F,$59,$B6 ; A5B2 20 9C 51 B6 ED 9F 59 B6   .Q...Y.
        db   $66,$B6,$93,$B6,$DB,$B6,$72,$B3 ; A5BA 66 B6 93 B6 DB B6 72 B3  f.....r.
        db   $AD,$AF,$00,$B7,$32,$9D,$05,$B7 ; A5C2 AD AF 00 B7 32 9D 05 B7  ....2...
        db   $3D,$B7,$60,$B9,$9D,$B7,$A2,$B7 ; A5CA 3D B7 60 B9 9D B7 A2 B7  =.`.....
        db   $64,$9F,$CA,$9C,$C6,$9F,$AF,$B7 ; A5D2 64 9F CA 9C C6 9F AF B7  d.......
        db   $96,$A0,$34,$B0,$65,$AE,$ED,$9F ; A5DA 96 A0 34 B0 65 AE ED 9F  ..4.e...
        db   $ED,$9F,$D1,$9C,$D1,$9C,$C3,$9C ; A5E2 ED 9F D1 9C D1 9C C3 9C  ........
        db   $C3,$9C,$F2,$B6,$F2,$B6,$5E,$AE ; A5EA C3 9C F2 B6 F2 B6 5E AE  ......^.
        db   $5E,$AE,$DB,$B6,$DB,$B6,$23,$AE ; A5F2 5E AE DB B6 DB B6 23 AE  ^.....#.
        db   $BC,$9C,$53,$9B,$FC,$BD,$00,$BE ; A5FA BC 9C 53 9B FC BD 00 BE  ..S.....
        db   $11,$9D,$CA,$9C,$ED,$9F,$23,$AE ; A602 11 9D CA 9C ED 9F 23 AE  ......#.
        db   $50                             ; A60A 50                       P
        db   $9C,$50,$9C,$50,$9C,$F8,$B7,$F8 ; A60B 9C 50 9C 50 9C F8 B7 F8  .P.P....
        db   $B7,$F8,$B7,$F8,$B7,$F8,$B7,$F8 ; A613 B7 F8 B7 F8 B7 F8 B7 F8  ........
        db   $B7,$F8,$B7                     ; A61B B7 F8 B7                 ...
Bank11_BattleActionMasks:
        db   $00,$00,$20,$00,$00,$00,$04,$00 ; A61E 00 00 20 00 00 00 04 00  .. .....
        db   $00,$00,$00,$00,$00,$20,$00,$00 ; A626 00 00 00 00 00 20 00 00  ..... ..
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; A62E 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$AA,$2A,$00 ; A636 00 00 00 00 00 AA 2A 00  ......*.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A63E:
        brk                                     ; A63E 00                       .
        db   $07,$1F                         ; A63F 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A65E; A641 90 1B                    ..
        brk                                     ; A643 00                       .
        db   $29,$C3,$00                     ; A644 29 C3 00                 )..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_A687; A647 B0 3E                    .>
        brk                                     ; A649 00                       .
        db   $29,$C3,$0D                     ; A64A 29 C3 0D                 )..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_A687; A64D B0 38                    .8
        brk                                     ; A64F 00                       .
        db   $29,$C3,$01                     ; A650 29 C3 01                 )..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_A687; A653 B0 32                    .2
        brk                                     ; A655 00                       .
        db   $24,$A3                         ; A656 24 A3                    $.
; ----------------------------------------------------------------------------
        asl     a                               ; A658 0A                       .
        asl     a                               ; A659 0A                       .
        tay                                     ; A65A A8                       .
        jmp     BattleActionServices_Branch_A67E; A65B 4C 7E A6                 L~.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A65E:
        brk                                     ; A65E 00                       .
        db   $46,$93,$10                     ; A65F 46 93 10                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_A687; A662 B0 23                    .#
        brk                                     ; A664 00                       .
        db   $46,$93,$06                     ; A665 46 93 06                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_A687; A668 B0 1D                    ..
        brk                                     ; A66A 00                       .
        db   $46,$93,$11                     ; A66B 46 93 11                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_A687; A66E B0 17                    ..
        brk                                     ; A670 00                       .
        db   $3B,$93,$01                     ; A671 3B 93 01                 ;..
; ----------------------------------------------------------------------------
        ldy     #$04                            ; A674 A0 04                    ..
        bcc     BattleActionServices_Branch_A67E; A676 90 06                    ..
        cmp     #$B3                            ; A678 C9 B3                    ..
        bne     BattleActionServices_Branch_A67E; A67A D0 02                    ..
        ldy     #$2B                            ; A67C A0 2B                    .+
BattleActionServices_Branch_A67E:
        sty     $00                           ; A67E 84 00                    ..
        brk                                     ; A680 00                       .
        db   $1B,$0F                         ; A681 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     $00                           ; A683 C5 00                    ..
        bcc     BattleActionServices_Branch_A689; A685 90 02                    ..
BattleActionServices_Branch_A687:
        sec                                     ; A687 38                       8
        rts                                     ; A688 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A689:
        ldy     #$8C                            ; A689 A0 8C                    ..
        brk                                     ; A68B 00                       .
        db   $01,$1F                         ; A68C 01 1F                    ..
; ----------------------------------------------------------------------------
        bpl     BattleActionServices_Branch_A692; A68E 10 02                    ..
        ldy     #$8D                            ; A690 A0 8D                    ..
BattleActionServices_Branch_A692:
        tya                                     ; A692 98                       .
        jsr     BattleActionServices_Entry_BF55 ; A693 20 55 BF                  U.
        brk                                     ; A696 00                       .
        db   $E4,$D3,$62                     ; A697 E4 D3 62                 ..b
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_938A ; A69A 20 8A 93                  ..
        clc                                     ; A69D 18                       .
        rts                                     ; A69E 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A69F:
        jsr     BattleActionServices_Entry_A86D ; A69F 20 6D A8                  m.
        beq     BattleActionServices_Branch_A6E1; A6A2 F0 3D                    .=
        jsr     BattleActionServices_Entry_9848 ; A6A4 20 48 98                  H.
        bcc     BattleActionServices_Branch_A6E1; A6A7 90 38                    .8
        cmp     #$8F                            ; A6A9 C9 8F                    ..
        bne     BattleActionServices_Branch_A6E1; A6AB D0 34                    .4
        brk                                     ; A6AD 00                       .
        db   $07,$1F                         ; A6AE 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A6D8; A6B0 90 26                    .&
        jsr     BattleActionServices_Entry_985A ; A6B2 20 5A 98                  Z.
        brk                                     ; A6B5 00                       .
        db   $1B,$0F                         ; A6B6 1B 0F                    ..
; ----------------------------------------------------------------------------
        and     #$07                            ; A6B8 29 07                    ).
        bne     BattleActionServices_Branch_A6D8; A6BA D0 1C                    ..
        lda     $6E44                           ; A6BC AD 44 6E                 .Dn
        bmi     BattleActionServices_Branch_A6D8; A6BF 30 17                    0.
        jsr     BattleActionServices_Entry_BF2E ; A6C1 20 2E BF                  ..
        db   $99                             ; A6C4 99                       .
; ----------------------------------------------------------------------------
        brk                                     ; A6C5 00                       .
        db   $70,$D3,$4F                     ; A6C6 70 D3 4F                 p.O
; ----------------------------------------------------------------------------
        brk                                     ; A6C9 00                       .
        db   $07,$1F                         ; A6CA 07 1F                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_91F3 ; A6CC 20 F3 91                  ..
        brk                                     ; A6CF 00                       .
        db   $07,$2F                         ; A6D0 07 2F                    ./
; ----------------------------------------------------------------------------
        brk                                     ; A6D2 00                       .
        db   $6D,$D3,$67                     ; A6D3 6D D3 67                 m.g
; ----------------------------------------------------------------------------
        sec                                     ; A6D6 38                       8
        rts                                     ; A6D7 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A6D8:
        ldx     #$01                            ; A6D8 A2 01                    ..
        stx     $7361                           ; A6DA 8E 61 73                 .as
        dex                                     ; A6DD CA                       .
        stx     $7362                           ; A6DE 8E 62 73                 .bs
BattleActionServices_Branch_A6E1:
        clc                                     ; A6E1 18                       .
        rts                                     ; A6E2 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A6E3:
        jsr     BattleActionServices_Entry_A86D ; A6E3 20 6D A8                  m.
        beq     BattleActionServices_Branch_A700; A6E6 F0 18                    ..
        jsr     BattleActionServices_Entry_9848 ; A6E8 20 48 98                  H.
        bcc     BattleActionServices_Branch_A700; A6EB 90 13                    ..
        cmp     #$92                            ; A6ED C9 92                    ..
        beq     BattleActionServices_Branch_A702; A6EF F0 11                    ..
        cmp     #$95                            ; A6F1 C9 95                    ..
        beq     BattleActionServices_Branch_A727; A6F3 F0 32                    .2
        cmp     #$90                            ; A6F5 C9 90                    ..
        beq     BattleActionServices_Branch_A74B; A6F7 F0 52                    .R
        cmp     #$8E                            ; A6F9 C9 8E                    ..
        bne     BattleActionServices_Branch_A700; A6FB D0 03                    ..
        jmp     BattleActionServices_Branch_A767; A6FD 4C 67 A7                 Lg.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A700:
        clc                                     ; A700 18                       .
        rts                                     ; A701 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A702:
        brk                                     ; A702 00                       .
        db   $1B,$0F                         ; A703 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$AA                            ; A705 C9 AA                    ..
        bcs     BattleActionServices_Branch_A714; A707 B0 0B                    ..
        lda     #$00                            ; A709 A9 00                    ..
        sta     $7361                           ; A70B 8D 61 73                 .as
        sta     $7362                           ; A70E 8D 62 73                 .bs
        jsr     BattleActionServices_Entry_985A ; A711 20 5A 98                  Z.
BattleActionServices_Branch_A714:
        rts                                     ; A714 60                       `
; ----------------------------------------------------------------------------
        db   $00,$07,$1F,$90,$0B,$00,$22,$C3 ; A715 00 07 1F 90 0B 00 22 C3  ......".
        db   $0F,$C9,$03,$F0,$03             ; A71D 0F C9 03 F0 03           .....
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A722:
        jsr     BattleActionServices_Entry_981E ; A722 20 1E 98                  ..
        clc                                     ; A725 18                       .
        rts                                     ; A726 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A727:
        brk                                     ; A727 00                       .
        db   $07,$1F                         ; A728 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A73D; A72A 90 11                    ..
        brk                                     ; A72C 00                       .
        db   $2D,$A3                         ; A72D 2D A3                    -.
; ----------------------------------------------------------------------------
        tax                                     ; A72F AA                       .
        lda     $6E45,x                         ; A730 BD 45 6E                 .En
        ldx     #$07                            ; A733 A2 07                    ..
BattleActionServices_Branch_A735:
        cmp     $A73F,x                         ; A735 DD 3F A7                 .?.
        beq     BattleActionServices_Branch_A722; A738 F0 E8                    ..
        dex                                     ; A73A CA                       .
        bpl     BattleActionServices_Branch_A735; A73B 10 F8                    ..
BattleActionServices_Branch_A73D:
        clc                                     ; A73D 18                       .
        rts                                     ; A73E 60                       `
; ----------------------------------------------------------------------------
        db   $40,$6F,$8C,$93,$9E,$A3,$A1,$B8 ; A73F 40 6F 8C 93 9E A3 A1 B8  @o......
        db   $20,$1D,$14,$10                 ; A747 20 1D 14 10               ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A74B:
        brk                                     ; A74B 00                       .
        db   $06,$1F                         ; A74C 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_A75D; A74E B0 0D                    ..
        lda     #$03                            ; A750 A9 03                    ..
        brk                                     ; A752 00                       .
        db   $0C,$73                         ; A753 0C 73                    .s
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_A75F; A755 B0 08                    ..
        lsr     $7362                           ; A757 4E 62 73                 Nbs
        ror     $7361                           ; A75A 6E 61 73                 nas
BattleActionServices_Branch_A75D:
        clc                                     ; A75D 18                       .
        rts                                     ; A75E 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A75F:
        brk                                     ; A75F 00                       .
        db   $0B,$33                         ; A760 0B 33                    .3
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_A3F7 ; A762 20 F7 A3                  ..
        clc                                     ; A765 18                       .
        rts                                     ; A766 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A767:
        brk                                     ; A767 00                       .
        db   $07,$1F                         ; A768 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A789; A76A 90 1D                    ..
        brk                                     ; A76C 00                       .
        db   $2D,$A3                         ; A76D 2D A3                    -.
; ----------------------------------------------------------------------------
        tax                                     ; A76F AA                       .
        lda     $6E45,x                         ; A770 BD 45 6E                 .En
        cmp     #$75                            ; A773 C9 75                    .u
        beq     BattleActionServices_Branch_A77F; A775 F0 08                    ..
        cmp     #$5C                            ; A777 C9 5C                    .\
        beq     BattleActionServices_Branch_A77F; A779 F0 04                    ..
        cmp     #$A8                            ; A77B C9 A8                    ..
        bne     BattleActionServices_Branch_A789; A77D D0 0A                    ..
BattleActionServices_Branch_A77F:
        lda     #$02                            ; A77F A9 02                    ..
        sta     $7361                           ; A781 8D 61 73                 .as
        lda     #$00                            ; A784 A9 00                    ..
        sta     $7362                           ; A786 8D 62 73                 .bs
BattleActionServices_Branch_A789:
        clc                                     ; A789 18                       .
        rts                                     ; A78A 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A78B:
        brk                                     ; A78B 00                       .
        db   $06,$1F                         ; A78C 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_A7AA; A78E B0 1A                    ..
        jsr     BattleActionServices_Entry_A86D ; A790 20 6D A8                  m.
        beq     BattleActionServices_Branch_A7AA; A793 F0 15                    ..
        jsr     BattleActionServices_Entry_9848 ; A795 20 48 98                  H.
        bcc     BattleActionServices_Branch_A7AA; A798 90 10                    ..
        cmp     #$A0                            ; A79A C9 A0                    ..
        bne     BattleActionServices_Branch_A7AA; A79C D0 0C                    ..
        brk                                     ; A79E 00                       .
        db   $07,$1F                         ; A79F 07 1F                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_A7AB ; A7A1 20 AB A7                  ..
        brk                                     ; A7A4 00                       .
        db   $E5,$D3,$6B                     ; A7A5 E5 D3 6B                 ..k
; ----------------------------------------------------------------------------
        pla                                     ; A7A8 68                       h
        pla                                     ; A7A9 68                       h
BattleActionServices_Branch_A7AA:
        rts                                     ; A7AA 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A7AB:
        lda     $7362                           ; A7AB AD 62 73                 .bs
        bcc     BattleActionServices_Branch_A7BB; A7AE 90 0B                    ..
        sta     $7D                             ; A7B0 85 7D                    .}
        lda     $7361                           ; A7B2 AD 61 73                 .as
        brk                                     ; A7B5 00                       .
        db   $02,$B3                         ; A7B6 02 B3                    ..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_A7C3; A7B8 4C C3 A7                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A7BB:
        sta     $70                             ; A7BB 85 70                    .p
        lda     $7361                           ; A7BD AD 61 73                 .as
        brk                                     ; A7C0 00                       .
        db   $02,$73                         ; A7C1 02 73                    .s
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A7C3:
        rts                                     ; A7C3 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A7C4:
        lda     $72E7                           ; A7C4 AD E7 72                 ..r
        lsr     a                               ; A7C7 4A                       J
        bcs     BattleActionServices_Branch_A7EF; A7C8 B0 25                    .%
        brk                                     ; A7CA 00                       .
        db   $06,$1F                         ; A7CB 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_A7EF; A7CD B0 20                    .
        jsr     BattleActionServices_Entry_A86D ; A7CF 20 6D A8                  m.
        jsr     BattleActionServices_Entry_9848 ; A7D2 20 48 98                  H.
        bcc     BattleActionServices_Branch_A7EF; A7D5 90 18                    ..
        cmp     #$93                            ; A7D7 C9 93                    ..
        beq     BattleActionServices_Branch_A7F0; A7D9 F0 15                    ..
        cmp     #$9D                            ; A7DB C9 9D                    ..
        beq     BattleActionServices_Branch_A829; A7DD F0 4A                    .J
        cmp     #$98                            ; A7DF C9 98                    ..
        beq     BattleActionServices_Branch_A817; A7E1 F0 34                    .4
        cmp     #$99                            ; A7E3 C9 99                    ..
        beq     BattleActionServices_Branch_A83B; A7E5 F0 54                    .T
        cmp     #$9C                            ; A7E7 C9 9C                    ..
        beq     BattleActionServices_Branch_A855; A7E9 F0 6A                    .j
        cmp     #$A2                            ; A7EB C9 A2                    ..
        beq     BattleActionServices_Branch_A868; A7ED F0 79                    .y
BattleActionServices_Branch_A7EF:
        rts                                     ; A7EF 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A7F0:
        jsr     BattleActionServices_Entry_9863 ; A7F0 20 63 98                  c.
        lda     $7363                           ; A7F3 AD 63 73                 .cs
        pha                                     ; A7F6 48                       H
        brk                                     ; A7F7 00                       .
        db   $06,$1F                         ; A7F8 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A803; A7FA 90 07                    ..
        brk                                     ; A7FC 00                       .
        db   $29,$C3,$0E                     ; A7FD 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_A807; A800 4C 07 A8                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A803:
        brk                                     ; A803 00                       .
        db   $46,$93,$07                     ; A804 46 93 07                 F..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A807:
        bcc     BattleActionServices_Branch_A812; A807 90 09                    ..
        brk                                     ; A809 00                       .
        db   $01,$1F                         ; A80A 01 1F                    ..
; ----------------------------------------------------------------------------
        sta     $7363                           ; A80C 8D 63 73                 .cs
        jsr     BattleActionServices_Entry_90DB ; A80F 20 DB 90                  ..
BattleActionServices_Branch_A812:
        pla                                     ; A812 68                       h
        sta     $7363                           ; A813 8D 63 73                 .cs
        rts                                     ; A816 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A817:
        lda     #$60                            ; A817 A9 60                    .`
        jsr     BattleActionServices_Entry_996D ; A819 20 6D 99                  m.
        bcc     BattleActionServices_Branch_A7EF; A81C 90 D1                    ..
        lda     #$53                            ; A81E A9 53                    .S
        brk                                     ; A820 00                       .
        db   $0A,$1F                         ; A821 0A 1F                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_9CC3 ; A823 20 C3 9C                  ..
        jmp     BattleActionServices_Branch_A84F; A826 4C 4F A8                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A829:
        lda     #$20                            ; A829 A9 20                    .
        jsr     BattleActionServices_Entry_996D ; A82B 20 6D 99                  m.
        bcc     BattleActionServices_Branch_A7EF; A82E 90 BF                    ..
        lda     #$1C                            ; A830 A9 1C                    ..
        brk                                     ; A832 00                       .
        db   $0A,$1F                         ; A833 0A 1F                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_9EDD ; A835 20 DD 9E                  ..
        jmp     BattleActionServices_Branch_A84F; A838 4C 4F A8                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A83B:
        lda     #$20                            ; A83B A9 20                    .
        jsr     BattleActionServices_Entry_996D ; A83D 20 6D 99                  m.
        bcc     BattleActionServices_Branch_A7EF; A840 90 AD                    ..
        lda     $6E44                           ; A842 AD 44 6E                 .Dn
        bmi     BattleActionServices_Branch_A7EF; A845 30 A8                    0.
        lda     #$55                            ; A847 A9 55                    .U
        brk                                     ; A849 00                       .
        db   $0A,$1F                         ; A84A 0A 1F                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_AFF4 ; A84C 20 F4 AF                  ..
BattleActionServices_Branch_A84F:
        lda     #$43                            ; A84F A9 43                    .C
        brk                                     ; A851 00                       .
        db   $0A,$1F                         ; A852 0A 1F                    ..
; ----------------------------------------------------------------------------
        rts                                     ; A854 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A855:
        jsr     BattleActionServices_Entry_9863 ; A855 20 63 98                  c.
        brk                                     ; A858 00                       .
        db   $06,$1F                         ; A859 06 1F                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_A7AB ; A85B 20 AB A7                  ..
        brk                                     ; A85E 00                       .
        db   $06,$1F                         ; A85F 06 1F                    ..
; ----------------------------------------------------------------------------
        sta     $F9                             ; A861 85 F9                    ..
        brk                                     ; A863 00                       .
        db   $C5,$D3,$6B                     ; A864 C5 D3 6B                 ..k
; ----------------------------------------------------------------------------
        rts                                     ; A867 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A868:
        brk                                     ; A868 00                       .
        db   $E9,$D3,$E7                     ; A869 E9 D3 E7                 ...
; ----------------------------------------------------------------------------
        rts                                     ; A86C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A86D:
        brk                                     ; A86D 00                       .
        db   $03,$1F                         ; A86E 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$82                            ; A870 C9 82                    ..
        rts                                     ; A872 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A873:
        brk                                     ; A873 00                       .
        db   $07,$1F                         ; A874 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_A886; A876 B0 0E                    ..
        brk                                     ; A878 00                       .
        db   $3B,$93,$01                     ; A879 3B 93 01                 ;..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A886; A87C 90 08                    ..
        cmp     #$B6                            ; A87E C9 B6                    ..
        beq     BattleActionServices_Branch_A887; A880 F0 05                    ..
        cmp     #$B8                            ; A882 C9 B8                    ..
        beq     BattleActionServices_Branch_A8A7; A884 F0 21                    .!
BattleActionServices_Branch_A886:
        rts                                     ; A886 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A887:
        brk                                     ; A887 00                       .
        db   $03,$1F                         ; A888 03 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A88A 00                       .
        db   $0A,$3F                         ; A88B 0A 3F                    .?
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A8A6; A88D 90 17                    ..
        sta     $6F                             ; A88F 85 6F                    .o
        brk                                     ; A891 00                       .
        db   $1B,$0F                         ; A892 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$20                            ; A894 C9 20                    .
        bcs     BattleActionServices_Branch_A8A6; A896 B0 0E                    ..
        brk                                     ; A898 00                       .
        db   $07,$1F                         ; A899 07 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A89B 00                       .
        db   $09,$53                         ; A89C 09 53                    .S
; ----------------------------------------------------------------------------
        ora     $73                             ; A89E 05 73                    .s
        beq     BattleActionServices_Branch_A8A6; A8A0 F0 04                    ..
        brk                                     ; A8A2 00                       .
        db   $E9,$D3,$83                     ; A8A3 E9 D3 83                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A8A6:
        rts                                     ; A8A6 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A8A7:
        brk                                     ; A8A7 00                       .
        db   $03,$1F                         ; A8A8 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$43                            ; A8AA C9 43                    .C
        bcc     BattleActionServices_Branch_A8A6; A8AC 90 F8                    ..
        cmp     #$49                            ; A8AE C9 49                    .I
        bcs     BattleActionServices_Branch_A8A6; A8B0 B0 F4                    ..
        brk                                     ; A8B2 00                       .
        db   $1B,$0F                         ; A8B3 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$80                            ; A8B5 C9 80                    ..
        bcs     BattleActionServices_Branch_A8A6; A8B7 B0 ED                    ..
        jmp     BattleActionServices_Branch_A7F0; A8B9 4C F0 A7                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A8BC:
        brk                                     ; A8BC 00                       .
        db   $07,$1F                         ; A8BD 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_A8A6; A8BF B0 E5                    ..
        brk                                     ; A8C1 00                       .
        db   $3B,$93,$02                     ; A8C2 3B 93 02                 ;..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A8A6; A8C5 90 DF                    ..
        cmp     #$C1                            ; A8C7 C9 C1                    ..
        bne     BattleActionServices_Branch_A8A6; A8C9 D0 DB                    ..
        brk                                     ; A8CB 00                       .
        db   $03,$1F                         ; A8CC 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$13                            ; A8CE C9 13                    ..
        bcs     BattleActionServices_Branch_A8A6; A8D0 B0 D4                    ..
        jmp     BattleActionServices_Branch_A7F0; A8D2 4C F0 A7                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A8D5:
        brk                                     ; A8D5 00                       .
        db   $07,$1F                         ; A8D6 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_A8EB; A8D8 B0 11                    ..
        brk                                     ; A8DA 00                       .
        db   $46,$93,$10                     ; A8DB 46 93 10                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_A8E6; A8DE B0 06                    ..
        brk                                     ; A8E0 00                       .
        db   $46,$93,$06                     ; A8E1 46 93 06                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A8EB; A8E4 90 05                    ..
BattleActionServices_Branch_A8E6:
        lda     #$80                            ; A8E6 A9 80                    ..
        brk                                     ; A8E8 00                       .
        db   $08,$3F                         ; A8E9 08 3F                    .?
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A8EB:
        rts                                     ; A8EB 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A8EC:
        ldx     #$0B                            ; A8EC A2 0B                    ..
BattleActionServices_Branch_A8EE:
        lda     BattleSlotDescriptors,x         ; A8EE BD F4 72                 ..r
        and     #$70                            ; A8F1 29 70                    )p
        bne     BattleActionServices_Branch_A8FD; A8F3 D0 08                    ..
        lda     BattleSlotDescriptors,x         ; A8F5 BD F4 72                 ..r
        bpl     BattleActionServices_Branch_A904; A8F8 10 0A                    ..
        jsr     BattleActionServices_Entry_A97A ; A8FA 20 7A A9                  z.
BattleActionServices_Branch_A8FD:
        jsr     BattleActionServices_Entry_A9F0 ; A8FD 20 F0 A9                  ..
        dex                                     ; A900 CA                       .
        bpl     BattleActionServices_Branch_A8EE; A901 10 EB                    ..
        rts                                     ; A903 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A904:
        lda     $7300,x                         ; A904 BD 00 73                 ..s
        and     #$70                            ; A907 29 70                    )p
        bne     BattleActionServices_Branch_A911; A909 D0 06                    ..
        jsr     BattleActionServices_Entry_A914 ; A90B 20 14 A9                  ..
        jsr     BattleActionServices_Entry_A950 ; A90E 20 50 A9                  P.
BattleActionServices_Branch_A911:
        jmp     BattleActionServices_Branch_A8FD; A911 4C FD A8                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A914:
        lda     $7324,x                         ; A914 BD 24 73                 .$s
        cmp     #$26                            ; A917 C9 26                    .&
        bne     BattleActionServices_Branch_A94F; A919 D0 34                    .4
        stx     $02                           ; A91B 86 02                    ..
        ldx     #$0B                            ; A91D A2 0B                    ..
BattleActionServices_Branch_A91F:
        lda     $7348,x                         ; A91F BD 48 73                 .Hs
        and     #$0F                            ; A922 29 0F                    ).
        beq     BattleActionServices_Branch_A929; A924 F0 03                    ..
        dex                                     ; A926 CA                       .
        bpl     BattleActionServices_Branch_A91F; A927 10 F6                    ..
BattleActionServices_Branch_A929:
        ldy     $02                           ; A929 A4 02                    ..
        lda     $7348,y                         ; A92B B9 48 73                 .Hs
        and     #$0F                            ; A92E 29 0F                    ).
        sta     $01                             ; A930 85 01                    ..
        lda     $7348,y                         ; A932 B9 48 73                 .Hs
        and     #$F0                            ; A935 29 F0                    ).
        sta     $00                           ; A937 85 00                    ..
        lda     $7348,x                         ; A939 BD 48 73                 .Hs
        and     #$0F                            ; A93C 29 0F                    ).
        ora     $00                           ; A93E 05 00                    ..
        sta     $7348,y                         ; A940 99 48 73                 .Hs
        lda     $7348,x                         ; A943 BD 48 73                 .Hs
        and     #$F0                            ; A946 29 F0                    ).
        ora     $01                             ; A948 05 01                    ..
        sta     $7348,x                         ; A94A 9D 48 73                 .Hs
        ldx     $02                           ; A94D A6 02                    ..
BattleActionServices_Branch_A94F:
        rts                                     ; A94F 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A950:
        lda     $7324,x                         ; A950 BD 24 73                 .$s
        cmp     #$12                            ; A953 C9 12                    ..
        bne     BattleActionServices_Branch_A979; A955 D0 22                    ."
        stx     $00                           ; A957 86 00                    ..
        ldx     #$0B                            ; A959 A2 0B                    ..
BattleActionServices_Branch_A95B:
        lda     BattleSlotDescriptors,x         ; A95B BD F4 72                 ..r
        bmi     BattleActionServices_Branch_A974; A95E 30 14                    0.
        and     #$70                            ; A960 29 70                    )p
        cmp     #$70                            ; A962 C9 70                    .p
        beq     BattleActionServices_Branch_A974; A964 F0 0E                    ..
        cpx     $00                           ; A966 E4 00                    ..
        beq     BattleActionServices_Branch_A974; A968 F0 0A                    ..
        lda     BattleSlotDescriptors,x         ; A96A BD F4 72                 ..r
        and     #$8F                            ; A96D 29 8F                    ).
        ora     #$20                            ; A96F 09 20                    .
        sta     BattleSlotDescriptors,x         ; A971 9D F4 72                 ..r
BattleActionServices_Branch_A974:
        dex                                     ; A974 CA                       .
        bpl     BattleActionServices_Branch_A95B; A975 10 E4                    ..
        ldx     $00                           ; A977 A6 00                    ..
BattleActionServices_Branch_A979:
        rts                                     ; A979 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A97A:
        lda     $7324,x                         ; A97A BD 24 73                 .$s
        cmp     #$66                            ; A97D C9 66                    .f
        bcc     BattleActionServices_Branch_A9E7; A97F 90 66                    .f
        cmp     #$69                            ; A981 C9 69                    .i
        bcs     BattleActionServices_Branch_A9E7; A983 B0 62                    .b
        txa                                     ; A985 8A                       .
        pha                                     ; A986 48                       H
        lda     BattleSlotDescriptors,x         ; A987 BD F4 72                 ..r
        and     #$07                            ; A98A 29 07                    ).
        sta     $00                           ; A98C 85 00                    ..
        tax                                     ; A98E AA                       .
        brk                                     ; A98F 00                       .
        db   $2D,$B3                         ; A990 2D B3                    -.
; ----------------------------------------------------------------------------
        ldx     #$FF                            ; A992 A2 FF                    ..
        brk                                     ; A994 00                       .
        db   $2D,$B3                         ; A995 2D B3                    -.
; ----------------------------------------------------------------------------
        ldx     $00                           ; A997 A6 00                    ..
        brk                                     ; A999 00                       .
        db   $29,$0F                         ; A99A 29 0F                    ).
; ----------------------------------------------------------------------------
        eor     #$FF                            ; A99C 49 FF                    I.
        and     $7E                             ; A99E 25 7E                    %~
        beq     BattleActionServices_Branch_A9E8; A9A0 F0 46                    .F
        sta     $00                           ; A9A2 85 00                    ..
        brk                                     ; A9A4 00                       .
        db   $29,$C3,$0E                     ; A9A5 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        and     $00                           ; A9A8 25 00                    %.
        beq     BattleActionServices_Branch_A9E8; A9AA F0 3C                    .<
        sta     $00                           ; A9AC 85 00                    ..
        brk                                     ; A9AE 00                       .
        db   $29,$C3,$0D                     ; A9AF 29 C3 0D                 )..
; ----------------------------------------------------------------------------
        and     $00                           ; A9B2 25 00                    %.
        beq     BattleActionServices_Branch_A9E8; A9B4 F0 32                    .2
        sta     $00                           ; A9B6 85 00                    ..
        brk                                     ; A9B8 00                       .
        db   $29,$C3,$00                     ; A9B9 29 C3 00                 )..
; ----------------------------------------------------------------------------
        and     $00                           ; A9BC 25 00                    %.
        beq     BattleActionServices_Branch_A9E8; A9BE F0 28                    .(
        sta     $00                           ; A9C0 85 00                    ..
        brk                                     ; A9C2 00                       .
        db   $29,$C3,$11                     ; A9C3 29 C3 11                 )..
; ----------------------------------------------------------------------------
        and     $00                           ; A9C6 25 00                    %.
        beq     BattleActionServices_Branch_A9E8; A9C8 F0 1E                    ..
        sta     $00                           ; A9CA 85 00                    ..
        ldx     #$07                            ; A9CC A2 07                    ..
BattleActionServices_Branch_A9CE:
        txa                                     ; A9CE 8A                       .
        pha                                     ; A9CF 48                       H
        asl     $00                           ; A9D0 06 00                    ..
        bcc     BattleActionServices_Branch_A9E0; A9D2 90 0C                    ..
        ora     #$80                            ; A9D4 09 80                    ..
        brk                                     ; A9D6 00                       .
        db   $09,$1F                         ; A9D7 09 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_A9E0; A9D9 90 05                    ..
        lda     #$02                            ; A9DB A9 02                    ..
        brk                                     ; A9DD 00                       .
        db   $08,$1F                         ; A9DE 08 1F                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A9E0:
        pla                                     ; A9E0 68                       h
        tax                                     ; A9E1 AA                       .
        dex                                     ; A9E2 CA                       .
        bpl     BattleActionServices_Branch_A9CE; A9E3 10 E9                    ..
        pla                                     ; A9E5 68                       h
        tax                                     ; A9E6 AA                       .
BattleActionServices_Branch_A9E7:
        rts                                     ; A9E7 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_A9E8:
        pla                                     ; A9E8 68                       h
        tax                                     ; A9E9 AA                       .
        lda     #$F7                            ; A9EA A9 F7                    ..
        sta     $7324,x                         ; A9EC 9D 24 73                 .$s
        rts                                     ; A9EF 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_A9F0:
        txa                                     ; A9F0 8A                       .
        pha                                     ; A9F1 48                       H
        lda     $7300,x                         ; A9F2 BD 00 73                 ..s
        and     #$70                            ; A9F5 29 70                    )p
        bne     BattleActionServices_Branch_AA04; A9F7 D0 0B                    ..
        lda     $7324,x                         ; A9F9 BD 24 73                 .$s
        cmp     #$41                            ; A9FC C9 41                    .A
        beq     BattleActionServices_Branch_AA07; A9FE F0 07                    ..
        cmp     #$42                            ; AA00 C9 42                    .B
        beq     BattleActionServices_Branch_AA0B; AA02 F0 07                    ..
BattleActionServices_Branch_AA04:
        pla                                     ; AA04 68                       h
        tax                                     ; AA05 AA                       .
        rts                                     ; AA06 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AA07:
        lda     #$00                            ; AA07 A9 00                    ..
        beq     BattleActionServices_Branch_AA0D; AA09 F0 02                    ..
BattleActionServices_Branch_AA0B:
        lda     #$01                            ; AA0B A9 01                    ..
BattleActionServices_Branch_AA0D:
        sta     $70                             ; AA0D 85 70                    .p
        sta     $7D                             ; AA0F 85 7D                    .}
        lda     #$19                            ; AA11 A9 19                    ..
        ldx     #$09                            ; AA13 A2 09                    ..
        sta     $6F                             ; AA15 85 6F                    .o
        stx     $7C                             ; AA17 86 7C                    .|
        pla                                     ; AA19 68                       h
        tax                                     ; AA1A AA                       .
        pha                                     ; AA1B 48                       H
        lda     BattleSlotDescriptors,x         ; AA1C BD F4 72                 ..r
        bpl     BattleActionServices_Branch_AA31; AA1F 10 10                    ..
        and     #$07                            ; AA21 29 07                    ).
        tax                                     ; AA23 AA                       .
        lda     $6E44                           ; AA24 AD 44 6E                 .Dn
        and     #$02                            ; AA27 29 02                    ).
        bne     BattleActionServices_Branch_AA2E; AA29 D0 03                    ..
        brk                                     ; AA2B 00                       .
        db   $2A,$A3                         ; AA2C 2A A3                    *.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AA2E:
        pla                                     ; AA2E 68                       h
        tax                                     ; AA2F AA                       .
        rts                                     ; AA30 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AA31:
        sta     $00                           ; AA31 85 00                    ..
        lda     $6F                             ; AA33 A5 6F                    .o
        pha                                     ; AA35 48                       H
        lda     $00                           ; AA36 A5 00                    ..
        brk                                     ; AA38 00                       .
        db   $67,$73                         ; AA39 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; AA3B AA                       .
        pla                                     ; AA3C 68                       h
        sta     $6F                             ; AA3D 85 6F                    .o
        lda     $6E44                           ; AA3F AD 44 6E                 .Dn
        and     #$01                            ; AA42 29 01                    ).
        bne     BattleActionServices_Branch_AA49; AA44 D0 03                    ..
        brk                                     ; AA46 00                       .
        db   $44,$53                         ; AA47 44 53                    DS
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AA49:
        pla                                     ; AA49 68                       h
        tax                                     ; AA4A AA                       .
        rts                                     ; AA4B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AA4C:
        inc     $6E81                           ; AA4C EE 81 6E                 ..n
        jsr     BattleActionServices_Entry_AA62 ; AA4F 20 62 AA                  b.
        jsr     BattleActionServices_Entry_AA8C ; AA52 20 8C AA                  ..
        jsr     BattleActionServices_Entry_AA95 ; AA55 20 95 AA                  ..
        jsr     BattleActionServices_Entry_AAB1 ; AA58 20 B1 AA                  ..
        jsr     BattleActionServices_Entry_AAEE ; AA5B 20 EE AA                  ..
        jsr     BattleActionServices_Entry_AAE0 ; AA5E 20 E0 AA                  ..
        rts                                     ; AA61 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AA62:
        ldy     #$00                            ; AA62 A0 00                    ..
BattleActionServices_Branch_AA64:
        lda     BattleSlotDescriptors,y         ; AA64 B9 F4 72                 ..r
        and     #$70                            ; AA67 29 70                    )p
        cmp     #$70                            ; AA69 C9 70                    .p
        beq     BattleActionServices_Branch_AA86; AA6B F0 19                    ..
        lda     BattleSlotDescriptors,y         ; AA6D B9 F4 72                 ..r
        bpl     BattleActionServices_Branch_AA7C; AA70 10 0A                    ..
        and     #$07                            ; AA72 29 07                    ).
        tax                                     ; AA74 AA                       .
        brk                                     ; AA75 00                       .
        db   $2B,$C3,$09                     ; AA76 2B C3 09                 +..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_AA86; AA79 4C 86 AA                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AA7C:
        and     #$0F                            ; AA7C 29 0F                    ).
        brk                                     ; AA7E 00                       .
        db   $67,$73                         ; AA7F 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; AA81 AA                       .
        brk                                     ; AA82 00                       .
        db   $45,$93,$19                     ; AA83 45 93 19                 E..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AA86:
        iny                                     ; AA86 C8                       .
        cpy     #$0C                            ; AA87 C0 0C                    ..
        bne     BattleActionServices_Branch_AA64; AA89 D0 D9                    ..
        rts                                     ; AA8B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AA8C:
        lda     $6E44                           ; AA8C AD 44 6E                 .Dn
        and     #$FC                            ; AA8F 29 FC                    ).
        sta     $6E44                           ; AA91 8D 44 6E                 .Dn
        rts                                     ; AA94 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AA95:
        lda     $72E5                           ; AA95 AD E5 72                 ..r
        bpl     BattleActionServices_Branch_AAB0; AA98 10 16                    ..
        lda     $72E6                           ; AA9A AD E6 72                 ..r
        and     #$C0                            ; AA9D 29 C0                    ).
        bne     BattleActionServices_Branch_AAB0; AA9F D0 0F                    ..
        lda     $72E5                           ; AAA1 AD E5 72                 ..r
        and     #$7F                            ; AAA4 29 7F                    ).
        sta     $72E5                           ; AAA6 8D E5 72                 ..r
        brk                                     ; AAA9 00                       .
        db   $E1,$D3,$89                     ; AAAA E1 D3 89                 ...
; ----------------------------------------------------------------------------
        brk                                     ; AAAD 00                       .
        db   $0D,$FB                         ; AAAE 0D FB                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AAB0:
        rts                                     ; AAB0 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AAB1:
        lda     $72E6                           ; AAB1 AD E6 72                 ..r
        and     #$30                            ; AAB4 29 30                    )0
        beq     BattleActionServices_Branch_AADF; AAB6 F0 27                    .'
        lda     $72E6                           ; AAB8 AD E6 72                 ..r
        sec                                     ; AABB 38                       8
        sbc     #$10                            ; AABC E9 10                    ..
        sta     $72E6                           ; AABE 8D E6 72                 ..r
        and     #$30                            ; AAC1 29 30                    )0
        bne     BattleActionServices_Branch_AADF; AAC3 D0 1A                    ..
        ldy     #$F9                            ; AAC5 A0 F9                    ..
        brk                                     ; AAC7 00                       .
        db   $62,$43,$41                     ; AAC8 62 43 41                 bCA
; ----------------------------------------------------------------------------
        cmp     #$02                            ; AACB C9 02                    ..
        bcs     BattleActionServices_Branch_AAD0; AACD B0 01                    ..
        iny                                     ; AACF C8                       .
BattleActionServices_Branch_AAD0:
        lda     #$00                            ; AAD0 A9 00                    ..
        sta     $6E                             ; AAD2 85 6E                    .n
        lda     #$41                            ; AAD4 A9 41                    .A
        brk                                     ; AAD6 00                       .
        db   $2D,$0F                         ; AAD7 2D 0F                    -.
; ----------------------------------------------------------------------------
        sta     $F9                             ; AAD9 85 F9                    ..
        tya                                     ; AADB 98                       .
        brk                                     ; AADC 00                       .
        db   $C1,$E3                         ; AADD C1 E3                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AADF:
        rts                                     ; AADF 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AAE0:
        lda     $6E45                           ; AAE0 AD 45 6E                 .En
        cmp     #$BA                            ; AAE3 C9 BA                    ..
        bne     BattleActionServices_Branch_AAED; AAE5 D0 06                    ..
        brk                                     ; AAE7 00                       .
        db   $16,$2F                         ; AAE8 16 2F                    ./
; ----------------------------------------------------------------------------
        brk                                     ; AAEA 00                       .
        db   $15,$2F                         ; AAEB 15 2F                    ./
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AAED:
        rts                                     ; AAED 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AAEE:
        lda     $6E45                           ; AAEE AD 45 6E                 .En
        cmp     #$BB                            ; AAF1 C9 BB                    ..
        bne     BattleActionServices_Branch_AB06; AAF3 D0 11                    ..
        lda     SaveCurrentChapterMinus1        ; AAF5 AD 5A 61                 .Za
        cmp     #$03                            ; AAF8 C9 03                    ..
        bne     BattleActionServices_Branch_AB06; AAFA D0 0A                    ..
        ldx     #$FF                            ; AAFC A2 FF                    ..
        sta     $7D                             ; AAFE 85 7D                    .}
        txa                                     ; AB00 8A                       .
        inx                                     ; AB01 E8                       .
        brk                                     ; AB02 00                       .
        db   $02,$B3                         ; AB03 02 B3                    ..
; ----------------------------------------------------------------------------
        rts                                     ; AB05 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AB06:
        ldx     #$07                            ; AB06 A2 07                    ..
BattleActionServices_Branch_AB08:
        brk                                     ; AB08 00                       .
        db   $29,$C3,$0E                     ; AB09 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AB26; AB0C 90 18                    ..
        brk                                     ; AB0E 00                       .
        db   $21,$B3                         ; AB0F 21 B3                    !.
; ----------------------------------------------------------------------------
        asl     a                               ; AB11 0A                       .
        tay                                     ; AB12 A8                       .
        lda     $AB41,y                         ; AB13 B9 41 AB                 .A.
        brk                                     ; AB16 00                       .
        db   $17,$0F                         ; AB17 17 0F                    ..
; ----------------------------------------------------------------------------
        clc                                     ; AB19 18                       .
        adc     $AB42,y                         ; AB1A 79 42 AB                 yB.
        sta     $7C                             ; AB1D 85 7C                    .|
        lda     #$00                            ; AB1F A9 00                    ..
        sta     $7D                             ; AB21 85 7D                    .}
        brk                                     ; AB23 00                       .
        db   $02,$A3                         ; AB24 02 A3                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AB26:
        dex                                     ; AB26 CA                       .
        bpl     BattleActionServices_Branch_AB08; AB27 10 DF                    ..
        rts                                     ; AB29 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AB2A:
        ldx     #$00                            ; AB2A A2 00                    ..
        ldy     #$09                            ; AB2C A0 09                    ..
BattleActionServices_Branch_AB2E:
        lda     #$00                            ; AB2E A9 00                    ..
        sta     $7215,x                         ; AB30 9D 15 72                 ..r
        sta     $7216,x                         ; AB33 9D 16 72                 ..r
        txa                                     ; AB36 8A                       .
        clc                                     ; AB37 18                       .
        adc     #$0A                            ; AB38 69 0A                    i.
        tax                                     ; AB3A AA                       .
        dey                                     ; AB3B 88                       .
        bpl     BattleActionServices_Branch_AB2E; AB3C 10 F0                    ..
        jmp     BattleActionServices_Entry_A3F7 ; AB3E 4C F7 A3                 L..
; ----------------------------------------------------------------------------
        db   $00                             ; AB41 00                       .
        db   $00,$08,$10,$0C,$2C,$14,$5A     ; AB42 00 08 10 0C 2C 14 5A     ....,.Z
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AB49:
        sta     $00                           ; AB49 85 00                    ..
        sty     $01                             ; AB4B 84 01                    ..
        tya                                     ; AB4D 98                       .
        brk                                     ; AB4E 00                       .
        db   $0A,$3F                         ; AB4F 0A 3F                    .?
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AB69; AB51 90 16                    ..
        sta     $02                           ; AB53 85 02                    ..
        lda     $00                           ; AB55 A5 00                    ..
        bpl     BattleActionServices_Branch_AB76; AB57 10 1D                    ..
        and     #$07                            ; AB59 29 07                    ).
        tax                                     ; AB5B AA                       .
        lda     $01                             ; AB5C A5 01                    ..
        cmp     #$32                            ; AB5E C9 32                    .2
        beq     BattleActionServices_Branch_AB6B; AB60 F0 09                    ..
        lda     $02                           ; AB62 A5 02                    ..
        brk                                     ; AB64 00                       .
        db   $0B,$B3                         ; AB65 0B B3                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AB74; AB67 90 0B                    ..
BattleActionServices_Branch_AB69:
        sec                                     ; AB69 38                       8
        rts                                     ; AB6A 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AB6B:
        lda     #$FF                            ; AB6B A9 FF                    ..
        sta     $02                           ; AB6D 85 02                    ..
        brk                                     ; AB6F 00                       .
        db   $07,$A3                         ; AB70 07 A3                    ..
; ----------------------------------------------------------------------------
        bne     BattleActionServices_Branch_AB69; AB72 D0 F5                    ..
BattleActionServices_Branch_AB74:
        clc                                     ; AB74 18                       .
        rts                                     ; AB75 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AB76:
        brk                                     ; AB76 00                       .
        db   $67,$73                         ; AB77 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; AB79 AA                       .
        lda     $01                             ; AB7A A5 01                    ..
        cmp     #$32                            ; AB7C C9 32                    .2
        beq     BattleActionServices_Branch_AB8A; AB7E F0 0A                    ..
        cmp     #$12                            ; AB80 C9 12                    ..
        beq     BattleActionServices_Branch_AB97; AB82 F0 13                    ..
        lda     $02                           ; AB84 A5 02                    ..
        brk                                     ; AB86 00                       .
        db   $0C,$73                         ; AB87 0C 73                    .s
; ----------------------------------------------------------------------------
        rts                                     ; AB89 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AB8A:
        lda     #$FF                            ; AB8A A9 FF                    ..
        sta     $02                           ; AB8C 85 02                    ..
        brk                                     ; AB8E 00                       .
        db   $07,$53                         ; AB8F 07 53                    .S
; ----------------------------------------------------------------------------
        ora     $73                             ; AB91 05 73                    .s
        bne     BattleActionServices_Branch_AB69; AB93 D0 D4                    ..
        beq     BattleActionServices_Branch_AB74; AB95 F0 DD                    ..
BattleActionServices_Branch_AB97:
        brk                                     ; AB97 00                       .
        db   $62,$23,$43                     ; AB98 62 23 43                 b#C
; ----------------------------------------------------------------------------
        cmp     #$04                            ; AB9B C9 04                    ..
        bcc     BattleActionServices_Branch_AB74; AB9D 90 D5                    ..
        ldx     #$03                            ; AB9F A2 03                    ..
BattleActionServices_Branch_ABA1:
        lda     $02                           ; ABA1 A5 02                    ..
        brk                                     ; ABA3 00                       .
        db   $0C,$73                         ; ABA4 0C 73                    .s
; ----------------------------------------------------------------------------
        rol     $03                             ; ABA6 26 03                    &.
        dex                                     ; ABA8 CA                       .
        bpl     BattleActionServices_Branch_ABA1; ABA9 10 F6                    ..
        lda     $03                             ; ABAB A5 03                    ..
        and     #$0F                            ; ABAD 29 0F                    ).
        cmp     #$0F                            ; ABAF C9 0F                    ..
        bne     BattleActionServices_Branch_AB74; ABB1 D0 C1                    ..
        beq     BattleActionServices_Branch_AB69; ABB3 F0 B4                    ..
BattleActionServices_Entry_ABB5:
        brk                                     ; ABB5 00                       .
        db   $03,$1F                         ; ABB6 03 1F                    ..
; ----------------------------------------------------------------------------
        tay                                     ; ABB8 A8                       .
        brk                                     ; ABB9 00                       .
        db   $01,$1F                         ; ABBA 01 1F                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_AB49 ; ABBC 20 49 AB                  I.
        bcc     BattleActionServices_Branch_AC00; ABBF 90 3F                    .?
        lda     $01                             ; ABC1 A5 01                    ..
        brk                                     ; ABC3 00                       .
        db   $0A,$3F                         ; ABC4 0A 3F                    .?
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_ABFE; ABC6 90 36                    .6
        brk                                     ; ABC8 00                       .
        db   $06,$1F                         ; ABC9 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_ABD8; ABCB 90 0B                    ..
        lda     $02                           ; ABCD A5 02                    ..
        brk                                     ; ABCF 00                       .
        db   $0A,$B3                         ; ABD0 0A B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; ABD2 00                       .
        db   $2B,$C3,$13                     ; ABD3 2B C3 13                 +..
; ----------------------------------------------------------------------------
        sec                                     ; ABD6 38                       8
        rts                                     ; ABD7 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_ABD8:
        lda     $01                             ; ABD8 A5 01                    ..
        cmp     #$12                            ; ABDA C9 12                    ..
        beq     BattleActionServices_Branch_ABF0; ABDC F0 12                    ..
        lda     $02                           ; ABDE A5 02                    ..
        cmp     #$FF                            ; ABE0 C9 FF                    ..
        beq     BattleActionServices_Branch_ABEA; ABE2 F0 06                    ..
        brk                                     ; ABE4 00                       .
        db   $0B,$73                         ; ABE5 0B 73                    .s
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_ABFA; ABE7 4C FA AB                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_ABEA:
        brk                                     ; ABEA 00                       .
        db   $0D,$73                         ; ABEB 0D 73                    .s
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_ABFA; ABED 4C FA AB                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_ABF0:
        ldx     #$03                            ; ABF0 A2 03                    ..
BattleActionServices_Branch_ABF2:
        lda     $02                           ; ABF2 A5 02                    ..
        brk                                     ; ABF4 00                       .
        db   $0B,$73                         ; ABF5 0B 73                    .s
; ----------------------------------------------------------------------------
        dex                                     ; ABF7 CA                       .
        bpl     BattleActionServices_Branch_ABF2; ABF8 10 F8                    ..
BattleActionServices_Branch_ABFA:
        brk                                     ; ABFA 00                       .
        db   $07,$6F,$2B                     ; ABFB 07 6F 2B                 .o+
; ----------------------------------------------------------------------------
BattleActionServices_Branch_ABFE:
        sec                                     ; ABFE 38                       8
        rts                                     ; ABFF 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AC00:
        lda     $01                             ; AC00 A5 01                    ..
        cmp     #$12                            ; AC02 C9 12                    ..
        beq     BattleActionServices_Branch_AC15; AC04 F0 0F                    ..
        brk                                     ; AC06 00                       .
        db   $E4,$D3,$01                     ; AC07 E4 D3 01                 ...
; ----------------------------------------------------------------------------
        brk                                     ; AC0A 00                       .
        db   $06,$1F                         ; AC0B 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AC13; AC0D 90 04                    ..
        brk                                     ; AC0F 00                       .
        db   $2A,$C3,$13                     ; AC10 2A C3 13                 *..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AC13:
        clc                                     ; AC13 18                       .
        rts                                     ; AC14 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AC15:
        brk                                     ; AC15 00                       .
        db   $62,$23,$43                     ; AC16 62 23 43                 b#C
; ----------------------------------------------------------------------------
        cmp     #$04                            ; AC19 C9 04                    ..
        bcc     BattleActionServices_Branch_AC34; AC1B 90 17                    ..
        ldx     #$00                            ; AC1D A2 00                    ..
BattleActionServices_Branch_AC1F:
        lsr     $03                             ; AC1F 46 03                    F.
        bcs     BattleActionServices_Branch_AC29; AC21 B0 06                    ..
        stx     $F9                             ; AC23 86 F9                    ..
        brk                                     ; AC25 00                       .
        db   $C5,$D3,$61                     ; AC26 C5 D3 61                 ..a
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AC29:
        inx                                     ; AC29 E8                       .
        cpx     #$04                            ; AC2A E0 04                    ..
        bcc     BattleActionServices_Branch_AC1F; AC2C 90 F1                    ..
        brk                                     ; AC2E 00                       .
        db   $E9,$D3,$62                     ; AC2F E9 D3 62                 ..b
; ----------------------------------------------------------------------------
        clc                                     ; AC32 18                       .
        rts                                     ; AC33 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AC34:
        brk                                     ; AC34 00                       .
        db   $E5,$D3,$60                     ; AC35 E5 D3 60                 ..`
; ----------------------------------------------------------------------------
        clc                                     ; AC38 18                       .
        rts                                     ; AC39 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AC3A:
        brk                                     ; AC3A 00                       .
        db   $03,$1F                         ; AC3B 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$3E                            ; AC3D C9 3E                    .>
        beq     BattleActionServices_Branch_AC5B; AC3F F0 1A                    ..
        cmp     #$3F                            ; AC41 C9 3F                    .?
        beq     BattleActionServices_Branch_AC5B; AC43 F0 16                    ..
        cmp     #$F3                            ; AC45 C9 F3                    ..
        beq     BattleActionServices_Branch_AC5B; AC47 F0 12                    ..
        cmp     #$F4                            ; AC49 C9 F4                    ..
        beq     BattleActionServices_Branch_AC5B; AC4B F0 0E                    ..
BattleActionServices_Entry_AC4D:
        brk                                     ; AC4D 00                       .
        db   $06,$1F                         ; AC4E 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AC57; AC50 90 05                    ..
        brk                                     ; AC52 00                       .
        db   $2B,$C3,$0B                     ; AC53 2B C3 0B                 +..
; ----------------------------------------------------------------------------
        rts                                     ; AC56 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AC57:
        brk                                     ; AC57 00                       .
        db   $45,$93,$1B                     ; AC58 45 93 1B                 E..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AC5B:
        rts                                     ; AC5B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AC5C:
        lda     $6F                             ; AC5C A5 6F                    .o
        pha                                     ; AC5E 48                       H
        lda     $7C                             ; AC5F A5 7C                    .|
        pha                                     ; AC61 48                       H
        brk                                     ; AC62 00                       .
        db   $06,$1F                         ; AC63 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AC6E; AC65 90 07                    ..
        brk                                     ; AC67 00                       .
        db   $29,$C3,$0B                     ; AC68 29 C3 0B                 )..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_AC72; AC6B 4C 72 AC                 Lr.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AC6E:
        brk                                     ; AC6E 00                       .
        db   $46,$93,$1B                     ; AC6F 46 93 1B                 F..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AC72:
        pla                                     ; AC72 68                       h
        sta     $7C                             ; AC73 85 7C                    .|
        pla                                     ; AC75 68                       h
        sta     $6F                             ; AC76 85 6F                    .o
        rts                                     ; AC78 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AC79:
        brk                                     ; AC79 00                       .
        db   $07,$1F                         ; AC7A 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_ACAE; AC7C 90 30                    .0
        txa                                     ; AC7E 8A                       .
        pha                                     ; AC7F 48                       H
        brk                                     ; AC80 00                       .
        db   $06,$1F                         ; AC81 06 1F                    ..
; ----------------------------------------------------------------------------
        pla                                     ; AC83 68                       h
        bcc     BattleActionServices_Branch_AC8C; AC84 90 06                    ..
        sta     $00                           ; AC86 85 00                    ..
        cpx     $00                           ; AC88 E4 00                    ..
        beq     BattleActionServices_Branch_ACAE; AC8A F0 22                    ."
BattleActionServices_Branch_AC8C:
        brk                                     ; AC8C 00                       .
        db   $07,$1F                         ; AC8D 07 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AC8F 00                       .
        db   $29,$C3,$0A                     ; AC90 29 C3 0A                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_ACAE; AC93 90 19                    ..
        stx     $C7                             ; AC95 86 C7                    ..
        jsr     BattleActionServices_Entry_BF2E ; AC97 20 2E BF                  ..
        db   $A7                             ; AC9A A7                       .
; ----------------------------------------------------------------------------
        brk                                     ; AC9B 00                       .
        db   $E4,$D3,$83                     ; AC9C E4 D3 83                 ...
; ----------------------------------------------------------------------------
        brk                                     ; AC9F 00                       .
        db   $14,$4F                         ; ACA0 14 4F                    .O
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_ACB0 ; ACA2 20 B0 AC                  ..
        bcc     BattleActionServices_Branch_ACAE; ACA5 90 07                    ..
        stx     $C7                             ; ACA7 86 C7                    ..
        brk                                     ; ACA9 00                       .
        db   $15,$4F                         ; ACAA 15 4F                    .O
; ----------------------------------------------------------------------------
        clc                                     ; ACAC 18                       .
        rts                                     ; ACAD 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_ACAE:
        sec                                     ; ACAE 38                       8
        rts                                     ; ACAF 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_ACB0:
        ldx     #$03                            ; ACB0 A2 03                    ..
BattleActionServices_Branch_ACB2:
        brk                                     ; ACB2 00                       .
        db   $29,$C3,$0A                     ; ACB3 29 C3 0A                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_ACBD; ACB6 90 05                    ..
        dex                                     ; ACB8 CA                       .
        bpl     BattleActionServices_Branch_ACB2; ACB9 10 F7                    ..
        clc                                     ; ACBB 18                       .
        rts                                     ; ACBC 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_ACBD:
        sec                                     ; ACBD 38                       8
        rts                                     ; ACBE 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_ACBF:
        jsr     BattleActionServices_Entry_AD06 ; ACBF 20 06 AD                  ..
        bcc     BattleActionServices_Branch_ACE6; ACC2 90 22                    ."
BattleActionServices_Entry_ACC4:
        brk                                     ; ACC4 00                       .
        db   $07,$1F                         ; ACC5 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_ACD5; ACC7 90 0C                    ..
        brk                                     ; ACC9 00                       .
        db   $29,$C3,$11                     ; ACCA 29 C3 11                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_ACE6; ACCD 90 17                    ..
BattleActionServices_Branch_ACCF:
        brk                                     ; ACCF 00                       .
        db   $E5,$D3,$E6                     ; ACD0 E5 D3 E6                 ...
; ----------------------------------------------------------------------------
        clc                                     ; ACD3 18                       .
        rts                                     ; ACD4 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_ACD5:
        jsr     BattleActionServices_Entry_AD00 ; ACD5 20 00 AD                  ..
        beq     BattleActionServices_Branch_ACE6; ACD8 F0 0C                    ..
        bne     BattleActionServices_Branch_ACCF; ACDA D0 F3                    ..
BattleActionServices_Entry_ACDC:
        jsr     BattleActionServices_Entry_AD06 ; ACDC 20 06 AD                  ..
        bcc     BattleActionServices_Branch_ACE6; ACDF 90 05                    ..
        brk                                     ; ACE1 00                       .
        db   $02,$1F                         ; ACE2 02 1F                    ..
; ----------------------------------------------------------------------------
        bpl     BattleActionServices_Branch_ACE8; ACE4 10 02                    ..
BattleActionServices_Branch_ACE6:
        sec                                     ; ACE6 38                       8
        rts                                     ; ACE7 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_ACE8:
        jsr     BattleActionServices_Entry_AD00 ; ACE8 20 00 AD                  ..
        beq     BattleActionServices_Branch_ACE6; ACEB F0 F9                    ..
        lda     #$00                            ; ACED A9 00                    ..
        sta     $6E                             ; ACEF 85 6E                    .n
        lda     #$43                            ; ACF1 A9 43                    .C
        brk                                     ; ACF3 00                       .
        db   $2D,$0F                         ; ACF4 2D 0F                    -.
; ----------------------------------------------------------------------------
        lda     $72                             ; ACF6 A5 72                    .r
        sta     $F9                             ; ACF8 85 F9                    ..
        brk                                     ; ACFA 00                       .
        db   $C5,$D3,$E5                     ; ACFB C5 D3 E5                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_ACFE:
        clc                                     ; ACFE 18                       .
        rts                                     ; ACFF 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AD00:
        lda     $72E6                           ; AD00 AD E6 72                 ..r
        and     #$30                            ; AD03 29 30                    )0
        rts                                     ; AD05 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AD06:
        brk                                     ; AD06 00                       .
        db   $03,$1F                         ; AD07 03 1F                    ..
; ----------------------------------------------------------------------------
        ldx     #$0F                            ; AD09 A2 0F                    ..
BattleActionServices_Branch_AD0B:
        cmp     $AD15,x                         ; AD0B DD 15 AD                 ...
        beq     BattleActionServices_Branch_ACFE; AD0E F0 EE                    ..
        dex                                     ; AD10 CA                       .
        bpl     BattleActionServices_Branch_AD0B; AD11 10 F8                    ..
        sec                                     ; AD13 38                       8
        rts                                     ; AD14 60                       `
; ----------------------------------------------------------------------------
        db   $27,$A6,$A9,$7B,$7D,$7E,$B6,$BA ; AD15 27 A6 A9 7B 7D 7E B6 BA  '..{}~..
        db   $BB,$BD,$C8,$CA,$D9,$DF,$E0,$E2 ; AD1D BB BD C8 CA D9 DF E0 E2  ........
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AD25:
        lda     SaveCurrentChapterMinus1        ; AD25 AD 5A 61                 .Za
        cmp     #$04                            ; AD28 C9 04                    ..
        bcs     BattleActionServices_Branch_AD49; AD2A B0 1D                    ..
        brk                                     ; AD2C 00                       .
        db   $06,$1F                         ; AD2D 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AD49; AD2F 90 18                    ..
        lda     $6E44                           ; AD31 AD 44 6E                 .Dn
        and     #$03                            ; AD34 29 03                    ).
        cmp     #$01                            ; AD36 C9 01                    ..
        bne     BattleActionServices_Branch_AD49; AD38 D0 0F                    ..
        lda     $72E7                           ; AD3A AD E7 72                 ..r
        and     #$04                            ; AD3D 29 04                    ).
        bne     BattleActionServices_Branch_AD4B; AD3F D0 0A                    ..
        lda     $72E7                           ; AD41 AD E7 72                 ..r
        ora     #$04                            ; AD44 09 04                    ..
        sta     $72E7                           ; AD46 8D E7 72                 ..r
BattleActionServices_Branch_AD49:
        sec                                     ; AD49 38                       8
        rts                                     ; AD4A 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AD4B:
        jsr     UpperFixedEngine_Entry_C891     ; AD4B 20 91 C8                  ..
        cmp     #$55                            ; AD4E C9 55                    .U
        rts                                     ; AD50 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AD51:
        jsr     BattleActionServices_Entry_AD89 ; AD51 20 89 AD                  ..
        bcs     BattleActionServices_Branch_AD85; AD54 B0 2F                    ./
        brk                                     ; AD56 00                       .
        db   $03,$1F                         ; AD57 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$9D                            ; AD59 C9 9D                    ..
        beq     BattleActionServices_Branch_AD65; AD5B F0 08                    ..
        cmp     #$77                            ; AD5D C9 77                    .w
        beq     BattleActionServices_Branch_AD65; AD5F F0 04                    ..
        cmp     #$19                            ; AD61 C9 19                    ..
        bne     BattleActionServices_Branch_AD71; AD63 D0 0C                    ..
BattleActionServices_Branch_AD65:
        brk                                     ; AD65 00                       .
        db   $07,$1F                         ; AD66 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_AD71; AD68 B0 07                    ..
        brk                                     ; AD6A 00                       .
        db   $07,$53                         ; AD6B 07 53                    .S
; ----------------------------------------------------------------------------
        ora     $73                             ; AD6D 05 73                    .s
        beq     BattleActionServices_Branch_AD81; AD6F F0 10                    ..
BattleActionServices_Branch_AD71:
        brk                                     ; AD71 00                       .
        db   $03,$1F                         ; AD72 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$4D                            ; AD74 C9 4D                    .M
        bcc     BattleActionServices_Branch_AD7C; AD76 90 04                    ..
        cmp     #$53                            ; AD78 C9 53                    .S
        bcc     BattleActionServices_Branch_AD87; AD7A 90 0B                    ..
BattleActionServices_Branch_AD7C:
        brk                                     ; AD7C 00                       .
        db   $06,$3F                         ; AD7D 06 3F                    .?
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_AD87; AD7F B0 06                    ..
BattleActionServices_Branch_AD81:
        brk                                     ; AD81 00                       .
        db   $E6,$D3,$03                     ; AD82 E6 D3 03                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AD85:
        clc                                     ; AD85 18                       .
        rts                                     ; AD86 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AD87:
        sec                                     ; AD87 38                       8
        rts                                     ; AD88 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AD89:
        brk                                     ; AD89 00                       .
        db   $03,$1F                         ; AD8A 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$2E                            ; AD8C C9 2E                    ..
        bne     BattleActionServices_Branch_ADA4; AD8E D0 14                    ..
        brk                                     ; AD90 00                       .
        db   $07,$1F                         ; AD91 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_AD9C; AD93 B0 07                    ..
        brk                                     ; AD95 00                       .
        db   $46,$93,$06                     ; AD96 46 93 06                 F..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_ADA0; AD99 4C A0 AD                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AD9C:
        brk                                     ; AD9C 00                       .
        db   $29,$C3,$0D                     ; AD9D 29 C3 0D                 )..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_ADA0:
        bcc     BattleActionServices_Branch_AD87; ADA0 90 E5                    ..
        bcs     BattleActionServices_Branch_AD85; ADA2 B0 E1                    ..
BattleActionServices_Branch_ADA4:
        ldx     #$15                            ; ADA4 A2 15                    ..
BattleActionServices_Branch_ADA6:
        cmp     Bank11_BattleActionParameterTables,x; ADA6 DD C8 AD             ...
        beq     BattleActionServices_Branch_ADB0; ADA9 F0 05                    ..
        dex                                     ; ADAB CA                       .
        bpl     BattleActionServices_Branch_ADA6; ADAC 10 F8                    ..
        clc                                     ; ADAE 18                       .
        rts                                     ; ADAF 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_ADB0:
        txa                                     ; ADB0 8A                       .
        asl     a                               ; ADB1 0A                       .
        pha                                     ; ADB2 48                       H
        brk                                     ; ADB3 00                       .
        db   $07,$1F                         ; ADB4 07 1F                    ..
; ----------------------------------------------------------------------------
        pla                                     ; ADB6 68                       h
        tay                                     ; ADB7 A8                       .
        bcc     BattleActionServices_Branch_ADC1; ADB8 90 07                    ..
        lda     $ADDF,y                         ; ADBA B9 DF AD                 ...
        brk                                     ; ADBD 00                       .
        db   $29,$B3                         ; ADBE 29 B3                    ).
; ----------------------------------------------------------------------------
        rts                                     ; ADC0 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_ADC1:
        lda     $ADDE,y                         ; ADC1 B9 DE AD                 ...
        brk                                     ; ADC4 00                       .
        db   $46,$73                         ; ADC5 46 73                    Fs
; ----------------------------------------------------------------------------
        rts                                     ; ADC7 60                       `
; ----------------------------------------------------------------------------
Bank11_BattleActionParameterTables:
        db   $17,$18,$19,$1A,$1B,$53,$54,$55 ; ADC8 17 18 19 1A 1B 53 54 55  .....STU
        db   $56,$73,$77,$78,$7A,$7C,$85,$88 ; ADD0 56 73 77 78 7A 7C 85 88  Vswxz|..
        db   $8D,$9C,$9D,$A8,$AA,$AB         ; ADD8 8D 9C 9D A8 AA AB        ......
        db   $10                             ; ADDE 10                       .
        db   $00,$10,$00,$13,$03,$14,$04,$12 ; ADDF 00 10 00 13 03 14 04 12  ........
        db   $02,$10,$00,$05,$0E,$06,$0D,$11 ; ADE7 02 10 00 05 0E 06 0D 11  ........
        db   $01,$10,$00,$13,$03,$11,$01,$10 ; ADEF 01 10 00 13 03 11 01 10  ........
        db   $00,$24,$15,$10,$00,$13,$03,$23 ; ADF7 00 24 15 10 00 13 03 23  .$.....#
        db   $14,$12,$02,$13,$03,$14,$04,$12 ; ADFF 14 12 02 13 03 14 04 12  ........
        db   $02,$25,$16                     ; AE07 02 25 16                 .%.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AE0A:
        lda     SaveCurrentChapterMinus1        ; AE0A AD 5A 61                 .Za
        cmp     #$04                            ; AE0D C9 04                    ..
        bne     BattleActionServices_Branch_AE1F; AE0F D0 0E                    ..
        brk                                     ; AE11 00                       .
        db   $62,$33                         ; AE12 62 33                    b3
; ----------------------------------------------------------------------------
        tax                                     ; AE14 AA                       .
        cpx     #$01                            ; AE15 E0 01                    ..
        bne     BattleActionServices_Branch_AE21; AE17 D0 08                    ..
        dex                                     ; AE19 CA                       .
        brk                                     ; AE1A 00                       .
        db   $2B,$53                         ; AE1B 2B 53                    +S
; ----------------------------------------------------------------------------
        bne     BattleActionServices_Branch_AE21; AE1D D0 02                    ..
BattleActionServices_Branch_AE1F:
        clc                                     ; AE1F 18                       .
        rts                                     ; AE20 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AE21:
        sec                                     ; AE21 38                       8
        rts                                     ; AE22 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AE23:
        rts                                     ; AE23 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AE24:
        lda     #$00                            ; AE24 A9 00                    ..
        beq     BattleActionServices_Branch_AE2A; AE26 F0 02                    ..
BattleActionServices_Entry_AE28:
        lda     #$01                            ; AE28 A9 01                    ..
BattleActionServices_Branch_AE2A:
        sta     $70                             ; AE2A 85 70                    .p
        sta     $7D                             ; AE2C 85 7D                    .}
        lda     #$19                            ; AE2E A9 19                    ..
        ldx     #$09                            ; AE30 A2 09                    ..
        jmp     BattleActionServices_Entry_9D4F ; AE32 4C 4F 9D                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AE35:
        brk                                     ; AE35 00                       .
        db   $07,$1F                         ; AE36 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AE43; AE38 90 09                    ..
        brk                                     ; AE3A 00                       .
        db   $05,$3F                         ; AE3B 05 3F                    .?
; ----------------------------------------------------------------------------
        brk                                     ; AE3D 00                       .
        db   $0A,$B3                         ; AE3E 0A B3                    ..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_AE49; AE40 4C 49 AE                 LI.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AE43:
        brk                                     ; AE43 00                       .
        db   $05,$3F                         ; AE44 05 3F                    .?
; ----------------------------------------------------------------------------
        brk                                     ; AE46 00                       .
        db   $0B,$73                         ; AE47 0B 73                    .s
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AE49:
        brk                                     ; AE49 00                       .
        db   $E6,$D3,$01                     ; AE4A E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; AE4D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AE4E:
        lda     #$11                            ; AE4E A9 11                    ..
        ldx     #$01                            ; AE50 A2 01                    ..
        jmp     BattleActionServices_Entry_9D4F ; AE52 4C 4F 9D                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AE55:
        lda     $72E4                           ; AE55 AD E4 72                 ..r
        ora     #$80                            ; AE58 09 80                    ..
        sta     $72E4                           ; AE5A 8D E4 72                 ..r
        rts                                     ; AE5D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AE5E:
        lda     #$1B                            ; AE5E A9 1B                    ..
        ldx     #$0B                            ; AE60 A2 0B                    ..
        jmp     BattleActionServices_Entry_9D4F ; AE62 4C 4F 9D                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AE65:
        jsr     BattleActionServices_Entry_BF2E ; AE65 20 2E BF                  ..
        db   $83                             ; AE68 83                       .
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AE69:
        brk                                     ; AE69 00                       .
        db   $07,$1F                         ; AE6A 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AE83; AE6C 90 15                    ..
        txa                                     ; AE6E 8A                       .
        pha                                     ; AE6F 48                       H
        brk                                     ; AE70 00                       .
        db   $22,$D3,$01                     ; AE71 22 D3 01                 "..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AE74:
        pla                                     ; AE74 68                       h
        pha                                     ; AE75 48                       H
        tax                                     ; AE76 AA                       .
        jsr     BattleActionServices_Entry_9204 ; AE77 20 04 92                  ..
        brk                                     ; AE7A 00                       .
        db   $07,$2F                         ; AE7B 07 2F                    ./
; ----------------------------------------------------------------------------
        pla                                     ; AE7D 68                       h
        tax                                     ; AE7E AA                       .
        brk                                     ; AE7F 00                       .
        db   $2B,$C3,$0F                     ; AE80 2B C3 0F                 +..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AE83:
        rts                                     ; AE83 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AE84:
        jsr     BattleActionServices_Entry_BF2E ; AE84 20 2E BF                  ..
        db   $92                             ; AE87 92                       .
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_AE69; AE88 4C 69 AE                 Li.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AE8B:
        jsr     BattleActionServices_Entry_BF2E ; AE8B 20 2E BF                  ..
        db   $83                             ; AE8E 83                       .
; ----------------------------------------------------------------------------
        brk                                     ; AE8F 00                       .
        db   $07,$1F                         ; AE90 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AE83; AE92 90 EF                    ..
        txa                                     ; AE94 8A                       .
        pha                                     ; AE95 48                       H
        brk                                     ; AE96 00                       .
        db   $B2,$D3,$01                     ; AE97 B2 D3 01                 ...
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_AE74; AE9A 4C 74 AE                 Lt.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AE9D:
        lda     #$F4                            ; AE9D A9 F4                    ..
        sta     $7C                             ; AE9F 85 7C                    .|
        lda     #$01                            ; AEA1 A9 01                    ..
        sta     $7D                             ; AEA3 85 7D                    .}
        lda     #$65                            ; AEA5 A9 65                    .e
        brk                                     ; AEA7 00                       .
        db   $17,$0F                         ; AEA8 17 0F                    ..
; ----------------------------------------------------------------------------
        ldx     #$7C                            ; AEAA A2 7C                    .|
        jsr     AddByteToPointer                ; AEAC 20 13 C8                  ..
        jsr     BattleActionServices_Entry_A01F ; AEAF 20 1F A0                  ..
        brk                                     ; AEB2 00                       .
        db   $07,$1F                         ; AEB3 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AEBE; AEB5 90 07                    ..
        brk                                     ; AEB7 00                       .
        db   $02,$A3                         ; AEB8 02 A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AEBA 00                       .
        db   $E6,$D3,$01                     ; AEBB E6 D3 01                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AEBE:
        rts                                     ; AEBE 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AEBF:
        brk                                     ; AEBF 00                       .
        db   $E4,$D3,$56                     ; AEC0 E4 D3 56                 ..V
; ----------------------------------------------------------------------------
        brk                                     ; AEC3 00                       .
        db   $07,$1F                         ; AEC4 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AF2A; AEC6 90 62                    .b
        brk                                     ; AEC8 00                       .
        db   $29,$C3,$0C                     ; AEC9 29 C3 0C                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AEE0; AECC 90 12                    ..
        txa                                     ; AECE 8A                       .
        pha                                     ; AECF 48                       H
        jsr     BattleActionServices_Entry_B11F ; AED0 20 1F B1                  ..
        brk                                     ; AED3 00                       .
        db   $E5,$D3,$A3                     ; AED4 E5 D3 A3                 ...
; ----------------------------------------------------------------------------
        pla                                     ; AED7 68                       h
        sta     $C7                             ; AED8 85 C7                    ..
        brk                                     ; AEDA 00                       .
        db   $13,$4F                         ; AEDB 13 4F                    .O
; ----------------------------------------------------------------------------
        brk                                     ; AEDD 00                       .
        db   $07,$1F                         ; AEDE 07 1F                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AEE0:
        lda     #$FF                            ; AEE0 A9 FF                    ..
        sta     $7D                             ; AEE2 85 7D                    .}
        brk                                     ; AEE4 00                       .
        db   $11,$B3                         ; AEE5 11 B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AEE7 00                       .
        db   $19,$A3                         ; AEE8 19 A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AEEA 00                       .
        db   $15,$A3                         ; AEEB 15 A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AEED 00                       .
        db   $0F,$A3                         ; AEEE 0F A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AEF0 00                       .
        db   $10,$B3                         ; AEF1 10 B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AEF3 00                       .
        db   $17,$A3                         ; AEF4 17 A3                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_AF9F ; AEF6 20 9F AF                  ..
        brk                                     ; AEF9 00                       .
        db   $18,$B3                         ; AEFA 18 B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AEFC 00                       .
        db   $13,$A3                         ; AEFD 13 A3                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_AF9F ; AEFF 20 9F AF                  ..
        brk                                     ; AF02 00                       .
        db   $14,$B3                         ; AF03 14 B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AF05 00                       .
        db   $0F,$A3                         ; AF06 0F A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AF08 00                       .
        db   $2B,$C3,$03                     ; AF09 2B C3 03                 +..
; ----------------------------------------------------------------------------
        brk                                     ; AF0C 00                       .
        db   $2B,$C3,$04                     ; AF0D 2B C3 04                 +..
; ----------------------------------------------------------------------------
        brk                                     ; AF10 00                       .
        db   $2B,$C3,$05                     ; AF11 2B C3 05                 +..
; ----------------------------------------------------------------------------
        brk                                     ; AF14 00                       .
        db   $2B,$C3,$06                     ; AF15 2B C3 06                 +..
; ----------------------------------------------------------------------------
        brk                                     ; AF18 00                       .
        db   $2B,$C3,$07                     ; AF19 2B C3 07                 +..
; ----------------------------------------------------------------------------
        brk                                     ; AF1C 00                       .
        db   $2B,$C3,$11                     ; AF1D 2B C3 11                 +..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AF25; AF20 90 03                    ..
        jsr     BattleActionServices_Entry_A0EF ; AF22 20 EF A0                  ..
BattleActionServices_Branch_AF25:
        brk                                     ; AF25 00                       .
        db   $E5,$D3,$A2                     ; AF26 E5 D3 A2                 ...
; ----------------------------------------------------------------------------
        rts                                     ; AF29 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AF2A:
        brk                                     ; AF2A 00                       .
        db   $46,$93,$1C                     ; AF2B 46 93 1C                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AF37; AF2E 90 07                    ..
        jsr     BattleActionServices_Entry_B11F ; AF30 20 1F B1                  ..
        brk                                     ; AF33 00                       .
        db   $E5,$D3,$A3                     ; AF34 E5 D3 A3                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AF37:
        lda     $72E7                           ; AF37 AD E7 72                 ..r
        and     #$EF                            ; AF3A 29 EF                    ).
        sta     $72E7                           ; AF3C 8D E7 72                 ..r
        lda     #$FF                            ; AF3F A9 FF                    ..
        sta     $70                             ; AF41 85 70                    .p
        brk                                     ; AF43 00                       .
        db   $16,$73                         ; AF44 16 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; AF46 00                       .
        db   $1A,$53                         ; AF47 1A 53                    .S
; ----------------------------------------------------------------------------
        brk                                     ; AF49 00                       .
        db   $1E,$53                         ; AF4A 1E 53                    .S
; ----------------------------------------------------------------------------
        brk                                     ; AF4C 00                       .
        db   $12,$53                         ; AF4D 12 53                    .S
; ----------------------------------------------------------------------------
        brk                                     ; AF4F 00                       .
        db   $15,$73                         ; AF50 15 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; AF52 00                       .
        db   $17,$53                         ; AF53 17 53                    .S
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_AFA6 ; AF55 20 A6 AF                  ..
        brk                                     ; AF58 00                       .
        db   $19,$73                         ; AF59 19 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; AF5B 00                       .
        db   $1B,$53                         ; AF5C 1B 53                    .S
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_AFA6 ; AF5E 20 A6 AF                  ..
        brk                                     ; AF61 00                       .
        db   $1D,$73                         ; AF62 1D 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; AF64 00                       .
        db   $45,$93,$13                     ; AF65 45 93 13                 E..
; ----------------------------------------------------------------------------
        brk                                     ; AF68 00                       .
        db   $45,$93,$14                     ; AF69 45 93 14                 E..
; ----------------------------------------------------------------------------
        brk                                     ; AF6C 00                       .
        db   $45,$93,$15                     ; AF6D 45 93 15                 E..
; ----------------------------------------------------------------------------
        brk                                     ; AF70 00                       .
        db   $45,$93,$16                     ; AF71 45 93 16                 E..
; ----------------------------------------------------------------------------
        brk                                     ; AF74 00                       .
        db   $45,$93,$17                     ; AF75 45 93 17                 E..
; ----------------------------------------------------------------------------
        brk                                     ; AF78 00                       .
        db   $45,$93,$18                     ; AF79 45 93 18                 E..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_AF81; AF7C 90 03                    ..
        jsr     BattleActionServices_Entry_A0EF ; AF7E 20 EF A0                  ..
BattleActionServices_Branch_AF81:
        lda     $72E6                           ; AF81 AD E6 72                 ..r
        and     #$30                            ; AF84 29 30                    )0
        beq     BattleActionServices_Branch_AF9A; AF86 F0 12                    ..
        lda     $72E6                           ; AF88 AD E6 72                 ..r
        and     #$CF                            ; AF8B 29 CF                    ).
        sta     $72E6                           ; AF8D 8D E6 72                 ..r
        lda     $6E44                           ; AF90 AD 44 6E                 .Dn
        and     #$FC                            ; AF93 29 FC                    ).
        ora     #$01                            ; AF95 09 01                    ..
        sta     $6E44                           ; AF97 8D 44 6E                 .Dn
BattleActionServices_Branch_AF9A:
        brk                                     ; AF9A 00                       .
        db   $E5,$D3,$A2                     ; AF9B E5 D3 A2                 ...
; ----------------------------------------------------------------------------
        rts                                     ; AF9E 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AF9F:
        lda     $7F                             ; AF9F A5 7F                    ..
        sta     $7D                             ; AFA1 85 7D                    .}
        lda     $7E                             ; AFA3 A5 7E                    .~
        rts                                     ; AFA5 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AFA6:
        lda     $73                             ; AFA6 A5 73                    .s
        sta     $70                             ; AFA8 85 70                    .p
        lda     $72                             ; AFAA A5 72                    .r
        rts                                     ; AFAC 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AFAD:
        brk                                     ; AFAD 00                       .
        db   $06,$1F                         ; AFAE 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_AFD5; AFB0 B0 23                    .#
        brk                                     ; AFB2 00                       .
        db   $2E,$2F                         ; AFB3 2E 2F                    ./
; ----------------------------------------------------------------------------
        bit     $6E44                           ; AFB5 2C 44 6E                 ,Dn
        bmi     BattleActionServices_Branch_AFD1; AFB8 30 17                    0.
        brk                                     ; AFBA 00                       .
        db   $2B,$EF                         ; AFBB 2B EF                    +.
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_AFD6; AFBD B0 17                    ..
        brk                                     ; AFBF 00                       .
        db   $62,$23,$40                     ; AFC0 62 23 40                 b#@
; ----------------------------------------------------------------------------
        dec     $72                             ; AFC3 C6 72                    .r
        beq     BattleActionServices_Branch_AFCC; AFC5 F0 05                    ..
        brk                                     ; AFC7 00                       .
        db   $E4,$D3,$69                     ; AFC8 E4 D3 69                 ..i
; ----------------------------------------------------------------------------
        rts                                     ; AFCB 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AFCC:
        brk                                     ; AFCC 00                       .
        db   $E4,$D3,$68                     ; AFCD E4 D3 68                 ..h
; ----------------------------------------------------------------------------
        rts                                     ; AFD0 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AFD1:
        brk                                     ; AFD1 00                       .
        db   $E4,$D3,$5B                     ; AFD2 E4 D3 5B                 ..[
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AFD5:
        rts                                     ; AFD5 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AFD6:
        lda     #$00                            ; AFD6 A9 00                    ..
        brk                                     ; AFD8 00                       .
        db   $47,$73                         ; AFD9 47 73                    Gs
; ----------------------------------------------------------------------------
        lda     $75                             ; AFDB A5 75                    .u
        brk                                     ; AFDD 00                       .
        db   $17,$0F                         ; AFDE 17 0F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; AFE0 00                       .
        db   $2C,$EF                         ; AFE1 2C EF                    ,.
; ----------------------------------------------------------------------------
        ldx     $051B                           ; AFE3 AE 1B 05                 ...
        txs                                     ; AFE6 9A                       .
        jmp     UpperFixedEngine_Branch_CEBD    ; AFE7 4C BD CE                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AFEA:
        brk                                     ; AFEA 00                       .
        db   $07,$1F                         ; AFEB 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_AFFE; AFED B0 0F                    ..
        lda     #$05                            ; AFEF A9 05                    ..
        jmp     BattleActionServices_Entry_9D4F ; AFF1 4C 4F 9D                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AFF4:
        lda     #$06                            ; AFF4 A9 06                    ..
        ldx     #$0D                            ; AFF6 A2 0D                    ..
        jsr     BattleActionServices_Entry_9D4F ; AFF8 20 4F 9D                  O.
        jmp     BattleActionServices_Entry_92CF ; AFFB 4C CF 92                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_AFFE:
        rts                                     ; AFFE 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_AFFF:
        brk                                     ; AFFF 00                       .
        db   $06,$1F                         ; B000 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_B024; B002 B0 20                    .
        stx     $00                           ; B004 86 00                    ..
        brk                                     ; B006 00                       .
        db   $05,$1F                         ; B007 05 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$02                            ; B009 C9 02                    ..
        bne     BattleActionServices_Branch_B024; B00B D0 17                    ..
        lda     $7355                           ; B00D AD 55 73                 .Us
        brk                                     ; B010 00                       .
        db   $0E,$0F                         ; B011 0E 0F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_B024; B013 B0 0F                    ..
        brk                                     ; B015 00                       .
        db   $0D,$0F                         ; B016 0D 0F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B024; B018 90 0A                    ..
        ldx     $00                           ; B01A A6 00                    ..
        brk                                     ; B01C 00                       .
        db   $31,$73                         ; B01D 31 73                    1s
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B024; B01F 90 03                    ..
        brk                                     ; B021 00                       .
        db   $30,$73                         ; B022 30 73                    0s
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B024:
        rts                                     ; B024 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B025:
        brk                                     ; B025 00                       .
        db   $06,$1F                         ; B026 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_B033; B028 B0 09                    ..
        lda     $7355                           ; B02A AD 55 73                 .Us
        brk                                     ; B02D 00                       .
        db   $31,$73                         ; B02E 31 73                    1s
; ----------------------------------------------------------------------------
        brk                                     ; B030 00                       .
        db   $32,$73                         ; B031 32 73                    2s
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B033:
        rts                                     ; B033 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B034:
        brk                                     ; B034 00                       .
        db   $E6,$D3,$01                     ; B035 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B038 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B039:
        brk                                     ; B039 00                       .
        db   $07,$1F                         ; B03A 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B054; B03C 90 16                    ..
        txa                                     ; B03E 8A                       .
        pha                                     ; B03F 48                       H
        jsr     BattleActionServices_Entry_BF2E ; B040 20 2E BF                  ..
        db   $93                             ; B043 93                       .
; ----------------------------------------------------------------------------
        pla                                     ; B044 68                       h
        tax                                     ; B045 AA                       .
        jsr     BattleActionServices_Entry_B91C ; B046 20 1C B9                  ..
        jsr     BattleActionServices_Entry_9204 ; B049 20 04 92                  ..
        brk                                     ; B04C 00                       .
        db   $E6,$D3,$01                     ; B04D E6 D3 01                 ...
; ----------------------------------------------------------------------------
        brk                                     ; B050 00                       .
        db   $23,$2F                         ; B051 23 2F                    #/
; ----------------------------------------------------------------------------
        rts                                     ; B053 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B054:
        rts                                     ; B054 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B055:
        jsr     BattleActionServices_Entry_B07E ; B055 20 7E B0                  ~.
        brk                                     ; B058 00                       .
        db   $1B,$0F                         ; B059 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$F4                            ; B05B C9 F4                    ..
        bcs     BattleActionServices_Branch_B07A; B05D B0 1B                    ..
        brk                                     ; B05F 00                       .
        db   $06,$2F                         ; B060 06 2F                    ./
; ----------------------------------------------------------------------------
        brk                                     ; B062 00                       .
        db   $2C,$D3,$60                     ; B063 2C D3 60                 ,.`
; ----------------------------------------------------------------------------
        brk                                     ; B066 00                       .
        db   $E5,$D3,$AD                     ; B067 E5 D3 AD                 ...
; ----------------------------------------------------------------------------
        brk                                     ; B06A 00                       .
        db   $06,$1F                         ; B06B 06 1F                    ..
; ----------------------------------------------------------------------------
        lda     $7355                           ; B06D AD 55 73                 .Us
        brk                                     ; B070 00                       .
        db   $31,$73                         ; B071 31 73                    1s
; ----------------------------------------------------------------------------
        brk                                     ; B073 00                       .
        db   $30,$73                         ; B074 30 73                    0s
; ----------------------------------------------------------------------------
        rts                                     ; B076 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B077:
        jsr     BattleActionServices_Entry_B07E ; B077 20 7E B0                  ~.
BattleActionServices_Branch_B07A:
        brk                                     ; B07A 00                       .
        db   $06,$2F                         ; B07B 06 2F                    ./
; ----------------------------------------------------------------------------
        rts                                     ; B07D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B07E:
        brk                                     ; B07E 00                       .
        db   $07,$1F                         ; B07F 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B08E; B081 90 0B                    ..
        brk                                     ; B083 00                       .
        db   $05,$3F                         ; B084 05 3F                    .?
; ----------------------------------------------------------------------------
        brk                                     ; B086 00                       .
        db   $09,$B3                         ; B087 09 B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B089 00                       .
        db   $66,$D3,$01                     ; B08A 66 D3 01                 f..
; ----------------------------------------------------------------------------
        rts                                     ; B08D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B08E:
        bvc     BattleActionServices_Branch_B09C; B08E 50 0C                    P.
        brk                                     ; B090 00                       .
        db   $05,$3F                         ; B091 05 3F                    .?
; ----------------------------------------------------------------------------
        brk                                     ; B093 00                       .
        db   $09,$73                         ; B094 09 73                    .s
; ----------------------------------------------------------------------------
        beq     BattleActionServices_Branch_B09D; B096 F0 05                    ..
        brk                                     ; B098 00                       .
        db   $66,$D3,$01                     ; B099 66 D3 01                 f..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B09C:
        rts                                     ; B09C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B09D:
        brk                                     ; B09D 00                       .
        db   $E4,$D3,$1A                     ; B09E E4 D3 1A                 ...
; ----------------------------------------------------------------------------
        pla                                     ; B0A1 68                       h
        pla                                     ; B0A2 68                       h
        rts                                     ; B0A3 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B0A4:
        lda     $7363                           ; B0A4 AD 63 73                 .cs
        bmi     BattleActionServices_Branch_B0AE; B0A7 30 05                    0.
        lda     #$05                            ; B0A9 A9 05                    ..
        jmp     BattleActionServices_Branch_9D6E; B0AB 4C 6E 9D                 Ln.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B0AE:
        brk                                     ; B0AE 00                       .
        db   $E4,$D3,$1A                     ; B0AF E4 D3 1A                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B0B2 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B0B3:
        lda     #$23                            ; B0B3 A9 23                    .#
        ldx     #$14                            ; B0B5 A2 14                    ..
        jmp     BattleActionServices_Entry_9D4F ; B0B7 4C 4F 9D                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B0BA:
        lda     #$11                            ; B0BA A9 11                    ..
        jmp     BattleActionServices_Branch_B0D0; B0BC 4C D0 B0                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B0BF:
        lda     #$13                            ; B0BF A9 13                    ..
        jmp     BattleActionServices_Branch_B0D0; B0C1 4C D0 B0                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B0C4:
        lda     #$24                            ; B0C4 A9 24                    .$
        jmp     BattleActionServices_Branch_B0D0; B0C6 4C D0 B0                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B0C9:
        lda     #$03                            ; B0C9 A9 03                    ..
        jmp     BattleActionServices_Branch_B0D0; B0CB 4C D0 B0                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B0CE:
        lda     #$0A                            ; B0CE A9 0A                    ..
BattleActionServices_Branch_B0D0:
        pha                                     ; B0D0 48                       H
        brk                                     ; B0D1 00                       .
        db   $07,$1F                         ; B0D2 07 1F                    ..
; ----------------------------------------------------------------------------
        sta     $6E                             ; B0D4 85 6E                    .n
        brk                                     ; B0D6 00                       .
        db   $05,$3F                         ; B0D7 05 3F                    .?
; ----------------------------------------------------------------------------
        sta     $6F                             ; B0D9 85 6F                    .o
        pla                                     ; B0DB 68                       h
        brk                                     ; B0DC 00                       .
        db   $00,$03                         ; B0DD 00 03                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B0DF 00                       .
        db   $E6,$D3,$01                     ; B0E0 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B0E3 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B0E4:
        brk                                     ; B0E4 00                       .
        db   $E2,$D3,$02                     ; B0E5 E2 D3 02                 ...
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_A047 ; B0E8 4C 47 A0                 LG.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B0EB:
        brk                                     ; B0EB 00                       .
        db   $07,$1F                         ; B0EC 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B115; B0EE 90 25                    .%
        brk                                     ; B0F0 00                       .
        db   $29,$C3,$11                     ; B0F1 29 C3 11                 )..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_B11A; B0F4 B0 24                    .$
        brk                                     ; B0F6 00                       .
        db   $29,$C3,$0C                     ; B0F7 29 C3 0C                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B115; B0FA 90 19                    ..
        brk                                     ; B0FC 00                       .
        db   $67,$73                         ; B0FD 67 73                    gs
; ----------------------------------------------------------------------------
        sta     $F9                             ; B0FF 85 F9                    ..
        brk                                     ; B101 00                       .
        db   $E5,$D3,$BA                     ; B102 E5 D3 BA                 ...
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_B11F ; B105 20 1F B1                  ..
        brk                                     ; B108 00                       .
        db   $07,$1F                         ; B109 07 1F                    ..
; ----------------------------------------------------------------------------
        stx     $C7                             ; B10B 86 C7                    ..
        brk                                     ; B10D 00                       .
        db   $13,$4F                         ; B10E 13 4F                    .O
; ----------------------------------------------------------------------------
        brk                                     ; B110 00                       .
        db   $E9,$D3,$A3                     ; B111 E9 D3 A3                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B114 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B115:
        brk                                     ; B115 00                       .
        db   $E5,$D3,$B9                     ; B116 E5 D3 B9                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B119 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B11A:
        brk                                     ; B11A 00                       .
        db   $E4,$D3,$7B                     ; B11B E4 D3 7B                 ..{
; ----------------------------------------------------------------------------
        rts                                     ; B11E 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B11F:
        brk                                     ; B11F 00                       .
        db   $07,$1F                         ; B120 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B150; B122 90 2C                    .,
        brk                                     ; B124 00                       .
        db   $2B,$C3,$0C                     ; B125 2B C3 0C                 +..
; ----------------------------------------------------------------------------
        lda     #$FF                            ; B128 A9 FF                    ..
        sta     $7D                             ; B12A 85 7D                    .}
        brk                                     ; B12C 00                       .
        db   $15,$B3                         ; B12D 15 B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B12F 00                       .
        db   $19,$A3                         ; B130 19 A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B132 00                       .
        db   $11,$A3                         ; B133 11 A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B135 00                       .
        db   $13,$A3                         ; B136 13 A3                    ..
; ----------------------------------------------------------------------------
        ldy     $7F                             ; B138 A4 7F                    ..
        sty     $7D                             ; B13A 84 7D                    .}
        brk                                     ; B13C 00                       .
        db   $14,$B3                         ; B13D 14 B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B13F 00                       .
        db   $17,$A3                         ; B140 17 A3                    ..
; ----------------------------------------------------------------------------
        ldy     $7F                             ; B142 A4 7F                    ..
        sty     $7D                             ; B144 84 7D                    .}
        brk                                     ; B146 00                       .
        db   $18,$B3                         ; B147 18 B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B149 00                       .
        db   $0F,$A3                         ; B14A 0F A3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B14C 00                       .
        db   $10,$B3                         ; B14D 10 B3                    ..
; ----------------------------------------------------------------------------
        rts                                     ; B14F 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B150:
        brk                                     ; B150 00                       .
        db   $45,$93,$1C                     ; B151 45 93 1C                 E..
; ----------------------------------------------------------------------------
        lda     #$FF                            ; B154 A9 FF                    ..
        sta     $70                             ; B156 85 70                    .p
        brk                                     ; B158 00                       .
        db   $1A,$73                         ; B159 1A 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; B15B 00                       .
        db   $1E,$73                         ; B15C 1E 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; B15E 00                       .
        db   $16,$73                         ; B15F 16 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; B161 00                       .
        db   $17,$53                         ; B162 17 53                    .S
; ----------------------------------------------------------------------------
        ldy     $73                             ; B164 A4 73                    .s
        sty     $70                             ; B166 84 70                    .p
        brk                                     ; B168 00                       .
        db   $19,$73                         ; B169 19 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; B16B 00                       .
        db   $1B,$53                         ; B16C 1B 53                    .S
; ----------------------------------------------------------------------------
        ldy     $73                             ; B16E A4 73                    .s
        sty     $70                             ; B170 84 70                    .p
        brk                                     ; B172 00                       .
        db   $1D,$73                         ; B173 1D 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; B175 00                       .
        db   $12,$53                         ; B176 12 53                    .S
; ----------------------------------------------------------------------------
        brk                                     ; B178 00                       .
        db   $15,$73                         ; B179 15 73                    .s
; ----------------------------------------------------------------------------
        rts                                     ; B17B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B17C:
        jsr     BattleActionServices_Entry_96DB ; B17C 20 DB 96                  ..
        rts                                     ; B17F 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B180:
        bit     $6E44                           ; B180 2C 44 6E                 ,Dn
        bmi     BattleActionServices_Branch_B1C1; B183 30 3C                    0<
        bvs     BattleActionServices_Branch_B1C1; B185 70 3A                    p:
        brk                                     ; B187 00                       .
        db   $1B,$0F                         ; B188 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$80                            ; B18A C9 80                    ..
        bcc     BattleActionServices_Branch_B1C1; B18C 90 33                    .3
        bit     $72E4                           ; B18E 2C E4 72                 ,.r
        bvs     BattleActionServices_Branch_B19A; B191 70 07                    p.
        brk                                     ; B193 00                       .
        db   $25,$D3,$4A                     ; B194 25 D3 4A                 %.J
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_B19E; B197 4C 9E B1                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B19A:
        brk                                     ; B19A 00                       .
        db   $25,$D3,$49                     ; B19B 25 D3 49                 %.I
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B19E:
        lda     #$00                            ; B19E A9 00                    ..
        sta     $735E                           ; B1A0 8D 5E 73                 .^s
BattleActionServices_Branch_B1A3:
        jsr     BattleActionServices_Entry_96C3 ; B1A3 20 C3 96                  ..
        bcc     BattleActionServices_Branch_B1B6; B1A6 90 0E                    ..
        brk                                     ; B1A8 00                       .
        db   $07,$1F                         ; B1A9 07 1F                    ..
; ----------------------------------------------------------------------------
        txa                                     ; B1AB 8A                       .
        pha                                     ; B1AC 48                       H
        jsr     BattleActionServices_Entry_91FE ; B1AD 20 FE 91                  ..
        pla                                     ; B1B0 68                       h
        tax                                     ; B1B1 AA                       .
        brk                                     ; B1B2 00                       .
        db   $2B,$C3,$0F                     ; B1B3 2B C3 0F                 +..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B1B6:
        inc     $735E                           ; B1B6 EE 5E 73                 .^s
        lda     $735E                           ; B1B9 AD 5E 73                 .^s
        cmp     #$08                            ; B1BC C9 08                    ..
        bcc     BattleActionServices_Branch_B1A3; B1BE 90 E3                    ..
        rts                                     ; B1C0 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B1C1:
        bit     $72E4                           ; B1C1 2C E4 72                 ,.r
        bvs     BattleActionServices_Branch_B1CB; B1C4 70 05                    p.
        brk                                     ; B1C6 00                       .
        db   $E5,$D3,$4C                     ; B1C7 E5 D3 4C                 ..L
; ----------------------------------------------------------------------------
        rts                                     ; B1CA 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B1CB:
        brk                                     ; B1CB 00                       .
        db   $E5,$D3,$4B                     ; B1CC E5 D3 4B                 ..K
; ----------------------------------------------------------------------------
        rts                                     ; B1CF 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B1D0:
        lda     #$24                            ; B1D0 A9 24                    .$
        ldx     #$15                            ; B1D2 A2 15                    ..
        jmp     BattleActionServices_Entry_9D4F ; B1D4 4C 4F 9D                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B1D7:
        lda     #$25                            ; B1D7 A9 25                    .%
        ldx     #$16                            ; B1D9 A2 16                    ..
        jmp     BattleActionServices_Entry_9D4F ; B1DB 4C 4F 9D                 LO.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B1DE:
        brk                                     ; B1DE 00                       .
        db   $E5,$D3,$51                     ; B1DF E5 D3 51                 ..Q
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_ACC4 ; B1E2 20 C4 AC                  ..
        bcc     BattleActionServices_Branch_B21E; B1E5 90 37                    .7
        jsr     BattleActionServices_Entry_BF2E ; B1E7 20 2E BF                  ..
        db   $88                             ; B1EA 88                       .
; ----------------------------------------------------------------------------
        brk                                     ; B1EB 00                       .
        db   $F0,$D3,$4D                     ; B1EC F0 D3 4D                 ..M
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_9916 ; B1EF 20 16 99                  ..
        jmp     BattleActionServices_Entry_90DB ; B1F2 4C DB 90                 L..
; ----------------------------------------------------------------------------
        db   $00,$E5,$D3,$55,$A9,$03,$8D,$5E ; B1F5 00 E5 D3 55 A9 03 8D 5E  ...U...^
        db   $73,$20,$2E,$BF,$89,$00,$E1,$D3 ; B1FD 73 20 2E BF 89 00 E1 D3  s ......
        db   $56,$20,$C4,$AC,$90,$03,$20,$DB ; B205 56 20 C4 AC 90 03 20 DB  V .... .
        db   $96,$AD,$E7,$72,$29,$60,$D0,$05 ; B20D 96 AD E7 72 29 60 D0 05  ...r)`..
        db   $CE,$5E,$73,$D0,$E4,$00,$E1,$D3 ; B215 CE 5E 73 D0 E4 00 E1 D3  .^s.....
        db   $57                             ; B21D 57                       W
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B21E:
        rts                                     ; B21E 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B21F:
        brk                                     ; B21F 00                       .
        db   $1B,$0F                         ; B220 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$80                            ; B222 C9 80                    ..
        bcs     BattleActionServices_Branch_B275; B224 B0 4F                    .O
        brk                                     ; B226 00                       .
        db   $06,$1F                         ; B227 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B229 00                       .
        db   $2D,$53                         ; B22A 2D 53                    -S
; ----------------------------------------------------------------------------
        cmp     #$08                            ; B22C C9 08                    ..
        bcs     BattleActionServices_Branch_B275; B22E B0 45                    .E
        ldx     #$FF                            ; B230 A2 FF                    ..
        brk                                     ; B232 00                       .
        db   $29,$C3,$0E                     ; B233 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        ldx     #$00                            ; B236 A2 00                    ..
BattleActionServices_Branch_B238:
        lsr     a                               ; B238 4A                       J
        bcs     BattleActionServices_Branch_B241; B239 B0 06                    ..
        inx                                     ; B23B E8                       .
        bne     BattleActionServices_Branch_B238; B23C D0 FA                    ..
        jmp     BattleActionServices_Branch_B275; B23E 4C 75 B2                 Lu.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B241:
        txa                                     ; B241 8A                       .
        ora     #$80                            ; B242 09 80                    ..
        sta     $7363                           ; B244 8D 63 73                 .cs
        brk                                     ; B247 00                       .
        db   $1C,$B3                         ; B248 1C B3                    ..
; ----------------------------------------------------------------------------
        sta     $7355                           ; B24A 8D 55 73                 .Us
        and     #$7F                            ; B24D 29 7F                    ).
        cmp     #$7F                            ; B24F C9 7F                    ..
        beq     BattleActionServices_Branch_B275; B251 F0 22                    ."
        brk                                     ; B253 00                       .
        db   $10,$0F                         ; B254 10 0F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B25F; B256 90 07                    ..
        and     #$7F                            ; B258 29 7F                    ).
        brk                                     ; B25A 00                       .
        db   $66,$73                         ; B25B 66 73                    fs
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_B275; B25D B0 16                    ..
BattleActionServices_Branch_B25F:
        brk                                     ; B25F 00                       .
        db   $E1,$D3,$47                     ; B260 E1 D3 47                 ..G
; ----------------------------------------------------------------------------
        brk                                     ; B263 00                       .
        db   $06,$1F                         ; B264 06 1F                    ..
; ----------------------------------------------------------------------------
        lda     $7355                           ; B266 AD 55 73                 .Us
        brk                                     ; B269 00                       .
        db   $2E,$73                         ; B26A 2E 73                    .s
; ----------------------------------------------------------------------------
        lda     $72E5                           ; B26C AD E5 72                 ..r
        ora     #$02                            ; B26F 09 02                    ..
        sta     $72E5                           ; B271 8D E5 72                 ..r
        rts                                     ; B274 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B275:
        lda     #$7B                            ; B275 A9 7B                    .{
        brk                                     ; B277 00                       .
        db   $0A,$1F                         ; B278 0A 1F                    ..
; ----------------------------------------------------------------------------
        lda     #$80                            ; B27A A9 80                    ..
        sta     $7363                           ; B27C 8D 63 73                 .cs
        brk                                     ; B27F 00                       .
        db   $E2,$D3,$00                     ; B280 E2 D3 00                 ...
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_B180 ; B283 4C 80 B1                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B286:
        brk                                     ; B286 00                       .
        db   $06,$1F                         ; B287 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_B2F4; B289 B0 69                    .i
        brk                                     ; B28B 00                       .
        db   $2B,$53                         ; B28C 2B 53                    +S
; ----------------------------------------------------------------------------
        cmp     #$05                            ; B28E C9 05                    ..
        bne     BattleActionServices_Branch_B2F4; B290 D0 62                    .b
        lda     SaveCurrentChapterMinus1        ; B292 AD 5A 61                 .Za
        cmp     #$02                            ; B295 C9 02                    ..
        beq     BattleActionServices_Branch_B2F4; B297 F0 5B                    .[
        brk                                     ; B299 00                       .
        db   $1B,$0F                         ; B29A 1B 0F                    ..
; ----------------------------------------------------------------------------
        and     #$03                            ; B29C 29 03                    ).
        bne     BattleActionServices_Branch_B2F4; B29E D0 54                    .T
        brk                                     ; B2A0 00                       .
        db   $05,$1F                         ; B2A1 05 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$00                            ; B2A3 C9 00                    ..
        bne     BattleActionServices_Branch_B2F4; B2A5 D0 4D                    .M
        lda     #$0D                            ; B2A7 A9 0D                    ..
        brk                                     ; B2A9 00                       .
        db   $17,$0F                         ; B2AA 17 0F                    ..
; ----------------------------------------------------------------------------
        tax                                     ; B2AC AA                       .
        lda     $B358,x                         ; B2AD BD 58 B3                 .X.
        pha                                     ; B2B0 48                       H
        brk                                     ; B2B1 00                       .
        db   $0A,$1F                         ; B2B2 0A 1F                    ..
; ----------------------------------------------------------------------------
        pla                                     ; B2B4 68                       h
        brk                                     ; B2B5 00                       .
        db   $0E,$3F                         ; B2B6 0E 3F                    .?
; ----------------------------------------------------------------------------
        cmp     #$03                            ; B2B8 C9 03                    ..
        bne     BattleActionServices_Branch_B2CA; B2BA D0 0E                    ..
        brk                                     ; B2BC 00                       .
        db   $01,$1F                         ; B2BD 01 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B2BF 00                       .
        db   $09,$1F                         ; B2C0 09 1F                    ..
; ----------------------------------------------------------------------------
        lda     #$80                            ; B2C2 A9 80                    ..
        brk                                     ; B2C4 00                       .
        db   $0B,$1F                         ; B2C5 0B 1F                    ..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_B34C ; B2C7 4C 4C B3                 LL.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B2CA:
        ldy     #$00                            ; B2CA A0 00                    ..
BattleActionServices_Branch_B2CC:
        ldx     #$FF                            ; B2CC A2 FF                    ..
        tya                                     ; B2CE 98                       .
        brk                                     ; B2CF 00                       .
        db   $2D,$B3                         ; B2D0 2D B3                    -.
; ----------------------------------------------------------------------------
        pha                                     ; B2D2 48                       H
        brk                                     ; B2D3 00                       .
        db   $29,$C3,$0E                     ; B2D4 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        pla                                     ; B2D7 68                       h
        and     $7E                             ; B2D8 25 7E                    %~
        bne     BattleActionServices_Branch_B2DF; B2DA D0 03                    ..
        iny                                     ; B2DC C8                       .
        bne     BattleActionServices_Branch_B2CC; B2DD D0 ED                    ..
BattleActionServices_Branch_B2DF:
        sty     $7C                             ; B2DF 84 7C                    .|
        brk                                     ; B2E1 00                       .
        db   $01,$1F                         ; B2E2 01 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B2E4 00                       .
        db   $09,$1F                         ; B2E5 09 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B2F4; B2E7 90 0B                    ..
        lda     $7C                             ; B2E9 A5 7C                    .|
        clc                                     ; B2EB 18                       .
        adc     #$88                            ; B2EC 69 88                    i.
        brk                                     ; B2EE 00                       .
        db   $0B,$1F                         ; B2EF 0B 1F                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_B34C ; B2F1 20 4C B3                  L.
BattleActionServices_Branch_B2F4:
        rts                                     ; B2F4 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B2F5:
        lda     SaveCurrentChapterMinus1        ; B2F5 AD 5A 61                 .Za
        cmp     #$02                            ; B2F8 C9 02                    ..
        beq     BattleActionServices_Branch_B31D; B2FA F0 21                    .!
        brk                                     ; B2FC 00                       .
        db   $03,$1F                         ; B2FD 03 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B2FF 00                       .
        db   $09,$3F                         ; B300 09 3F                    .?
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_B31D; B302 B0 19                    ..
        brk                                     ; B304 00                       .
        db   $06,$1F                         ; B305 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B31D; B307 90 14                    ..
        jsr     BattleActionServices_Entry_B31F ; B309 20 1F B3                  ..
        bcc     BattleActionServices_Branch_B31D; B30C 90 0F                    ..
        sta     $F9                             ; B30E 85 F9                    ..
        jsr     UpperFixedEngine_Entry_C891     ; B310 20 91 C8                  ..
        cmp     #$10                            ; B313 C9 10                    ..
        bcs     BattleActionServices_Branch_B31D; B315 B0 06                    ..
        brk                                     ; B317 00                       .
        db   $C5,$D3,$63                     ; B318 C5 D3 63                 ..c
; ----------------------------------------------------------------------------
        clc                                     ; B31B 18                       .
        rts                                     ; B31C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B31D:
        sec                                     ; B31D 38                       8
        rts                                     ; B31E 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B31F:
        brk                                     ; B31F 00                       .
        db   $62,$23,$43                     ; B320 62 23 43                 b#C
; ----------------------------------------------------------------------------
        beq     BattleActionServices_Branch_B336; B323 F0 11                    ..
        sta     $00                           ; B325 85 00                    ..
        ldx     #$00                            ; B327 A2 00                    ..
BattleActionServices_Branch_B329:
        brk                                     ; B329 00                       .
        db   $2B,$43,$43                     ; B32A 2B 43 43                 +CC
; ----------------------------------------------------------------------------
        cmp     #$05                            ; B32D C9 05                    ..
        beq     BattleActionServices_Branch_B338; B32F F0 07                    ..
        inx                                     ; B331 E8                       .
        cpx     $00                           ; B332 E4 00                    ..
        bcc     BattleActionServices_Branch_B329; B334 90 F3                    ..
BattleActionServices_Branch_B336:
        clc                                     ; B336 18                       .
        rts                                     ; B337 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B338:
        stx     $6E                             ; B338 86 6E                    .n
        brk                                     ; B33A 00                       .
        db   $2E,$0F                         ; B33B 2E 0F                    ..
; ----------------------------------------------------------------------------
        lda     $72                             ; B33D A5 72                    .r
        sta     $00                           ; B33F 85 00                    ..
        tax                                     ; B341 AA                       .
        brk                                     ; B342 00                       .
        db   $46,$43,$10                     ; B343 46 43 10                 FC.
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_B336; B346 B0 EE                    ..
        lda     $00                           ; B348 A5 00                    ..
        sec                                     ; B34A 38                       8
        rts                                     ; B34B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B34C:
        brk                                     ; B34C 00                       .
        db   $01,$1F                         ; B34D 01 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B34F 00                       .
        db   $09,$1F                         ; B350 09 1F                    ..
; ----------------------------------------------------------------------------
        lda     #$00                            ; B352 A9 00                    ..
        brk                                     ; B354 00                       .
        db   $0C,$1F                         ; B355 0C 1F                    ..
; ----------------------------------------------------------------------------
        rts                                     ; B357 60                       `
; ----------------------------------------------------------------------------
        db   $78,$79,$7A,$7B,$7C,$7D,$7E,$A8 ; B358 78 79 7A 7B 7C 7D 7E A8  xyz{|}~.
        db   $A9,$AA,$AB,$3E,$3D             ; B360 A9 AA AB 3E 3D           ...>=
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B365:
        lda     #$7F                            ; B365 A9 7F                    ..
        brk                                     ; B367 00                       .
        db   $17,$0F                         ; B368 17 0F                    ..
; ----------------------------------------------------------------------------
        sta     $7355                           ; B36A 8D 55 73                 .Us
        brk                                     ; B36D 00                       .
        db   $E6,$D3,$01                     ; B36E E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B371 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B372:
        brk                                     ; B372 00                       .
        db   $F2,$D3,$01                     ; B373 F2 D3 01                 ...
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_ACC4 ; B376 20 C4 AC                  ..
        bcc     BattleActionServices_Branch_B37F; B379 90 04                    ..
        brk                                     ; B37B 00                       .
        db   $E6,$D3,$02                     ; B37C E6 D3 02                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B37F:
        rts                                     ; B37F 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B380:
        brk                                     ; B380 00                       .
        db   $06,$1F                         ; B381 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B383 00                       .
        db   $29,$53                         ; B384 29 53                    )S
; ----------------------------------------------------------------------------
        bne     BattleActionServices_Branch_B38D; B386 D0 05                    ..
        brk                                     ; B388 00                       .
        db   $F1,$D3,$12                     ; B389 F1 D3 12                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B38C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B38D:
        brk                                     ; B38D 00                       .
        db   $F1,$D3,$13                     ; B38E F1 D3 13                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B391 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B392:
        jsr     BattleActionServices_Entry_B51D ; B392 20 1D B5                  ..
        brk                                     ; B395 00                       .
        db   $E6,$D3,$01                     ; B396 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_90DB ; B399 4C DB 90                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B39C:
        lda     #$24                            ; B39C A9 24                    .$
        ldx     #$17                            ; B39E A2 17                    ..
        jsr     BattleActionServices_Entry_9D4F ; B3A0 20 4F 9D                  O.
        rts                                     ; B3A3 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B3A4:
        brk                                     ; B3A4 00                       .
        db   $4A,$33                         ; B3A5 4A 33                    J3
; ----------------------------------------------------------------------------
        sta     $FD                             ; B3A7 85 FD                    ..
        lda     $73                             ; B3A9 A5 73                    .s
        sta     $FE                             ; B3AB 85 FE                    ..
        lda     $74                             ; B3AD A5 74                    .t
        sta     $FF                             ; B3AF 85 FF                    ..
        brk                                     ; B3B1 00                       .
        db   $E6,$D3,$01                     ; B3B2 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B3B5 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B3B6:
        brk                                     ; B3B6 00                       .
        db   $06,$1F                         ; B3B7 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B3B9 00                       .
        db   $3B,$93,$00                     ; B3BA 3B 93 00                 ;..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B3CB; B3BD 90 0C                    ..
        and     #$7F                            ; B3BF 29 7F                    ).
        sta     $7355                           ; B3C1 8D 55 73                 .Us
        brk                                     ; B3C4 00                       .
        db   $F1,$D3,$10                     ; B3C5 F1 D3 10                 ...
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_B3CF; B3C8 4C CF B3                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B3CB:
        brk                                     ; B3CB 00                       .
        db   $F1,$D3,$11                     ; B3CC F1 D3 11                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B3CF:
        brk                                     ; B3CF 00                       .
        db   $E4,$D3,$1A                     ; B3D0 E4 D3 1A                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B3D3 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B3D4:
        brk                                     ; B3D4 00                       .
        db   $E6,$D3,$01                     ; B3D5 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_B51D ; B3D8 20 1D B5                  ..
        jmp     BattleActionServices_Entry_90DB ; B3DB 4C DB 90                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B3DE:
        brk                                     ; B3DE 00                       .
        db   $E5,$D3,$0D                     ; B3DF E5 D3 0D                 ...
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_BF2E ; B3E2 20 2E BF                  ..
        db   $8C                             ; B3E5 8C                       .
; ----------------------------------------------------------------------------
        brk                                     ; B3E6 00                       .
        db   $E4,$D3,$62                     ; B3E7 E4 D3 62                 ..b
; ----------------------------------------------------------------------------
        brk                                     ; B3EA 00                       .
        db   $69,$D3,$41                     ; B3EB 69 D3 41                 i.A
; ----------------------------------------------------------------------------
        brk                                     ; B3EE 00                       .
        db   $06,$1F                         ; B3EF 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B401; B3F1 90 0E                    ..
        txa                                     ; B3F3 8A                       .
        pha                                     ; B3F4 48                       H
        jsr     BattleActionServices_Entry_9204 ; B3F5 20 04 92                  ..
        brk                                     ; B3F8 00                       .
        db   $07,$2F                         ; B3F9 07 2F                    ./
; ----------------------------------------------------------------------------
        pla                                     ; B3FB 68                       h
        tax                                     ; B3FC AA                       .
        brk                                     ; B3FD 00                       .
        db   $2B,$C3,$0F                     ; B3FE 2B C3 0F                 +..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B401:
        rts                                     ; B401 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B402:
        ldx     #$02                            ; B402 A2 02                    ..
BattleActionServices_Branch_B404:
        txa                                     ; B404 8A                       .
        pha                                     ; B405 48                       H
        jsr     BattleActionServices_Entry_BF2E ; B406 20 2E BF                  ..
        db   $89                             ; B409 89                       .
; ----------------------------------------------------------------------------
        brk                                     ; B40A 00                       .
        db   $E4,$D3,$4C                     ; B40B E4 D3 4C                 ..L
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_BF2E ; B40E 20 2E BF                  ..
        db   $8C                             ; B411 8C                       .
; ----------------------------------------------------------------------------
        brk                                     ; B412 00                       .
        db   $E8,$D3,$07                     ; B413 E8 D3 07                 ...
; ----------------------------------------------------------------------------
        pla                                     ; B416 68                       h
        tax                                     ; B417 AA                       .
        dex                                     ; B418 CA                       .
        bpl     BattleActionServices_Branch_B404; B419 10 E9                    ..
BattleActionServices_Branch_B41B:
        rts                                     ; B41B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B41C:
        jsr     BattleActionServices_Entry_BF2E ; B41C 20 2E BF                  ..
        db   $93                             ; B41F 93                       .
; ----------------------------------------------------------------------------
        brk                                     ; B420 00                       .
        db   $F1,$D3,$1C                     ; B421 F1 D3 1C                 ...
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_ACC4 ; B424 20 C4 AC                  ..
        bcc     BattleActionServices_Branch_B41B; B427 90 F2                    ..
        jsr     BattleActionServices_Entry_B51D ; B429 20 1D B5                  ..
        lda     $7361                           ; B42C AD 61 73                 .as
        adc     #$0A                            ; B42F 69 0A                    i.
        sta     $7361                           ; B431 8D 61 73                 .as
        jmp     BattleActionServices_Entry_90DB ; B434 4C DB 90                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B437:
        brk                                     ; B437 00                       .
        db   $06,$1F                         ; B438 06 1F                    ..
; ----------------------------------------------------------------------------
        lda     #$00                            ; B43A A9 00                    ..
        sta     $70                             ; B43C 85 70                    .p
        brk                                     ; B43E 00                       .
        db   $3B,$73                         ; B43F 3B 73                    ;s
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B452; B441 90 0F                    ..
        and     #$7F                            ; B443 29 7F                    ).
        sta     $7355                           ; B445 8D 55 73                 .Us
        brk                                     ; B448 00                       .
        db   $13,$0F                         ; B449 13 0F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B44B 00                       .
        db   $1A,$73                         ; B44C 1A 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; B44E 00                       .
        db   $F1,$D3,$14                     ; B44F F1 D3 14                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B452:
        rts                                     ; B452 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B453:
        brk                                     ; B453 00                       .
        db   $06,$1F                         ; B454 06 1F                    ..
; ----------------------------------------------------------------------------
        lda     #$00                            ; B456 A9 00                    ..
        sta     $70                             ; B458 85 70                    .p
        brk                                     ; B45A 00                       .
        db   $3B,$93,$01                     ; B45B 3B 93 01                 ;..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B47E; B45E 90 1E                    ..
        and     #$7F                            ; B460 29 7F                    ).
        sta     $7355                           ; B462 8D 55 73                 .Us
        brk                                     ; B465 00                       .
        db   $13,$0F                         ; B466 13 0F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B468 00                       .
        db   $1E,$73                         ; B469 1E 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; B46B 00                       .
        db   $F1,$D3,$27                     ; B46C F1 D3 27                 ..'
; ----------------------------------------------------------------------------
        brk                                     ; B46F 00                       .
        db   $07,$1F                         ; B470 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B47E; B472 90 0A                    ..
        brk                                     ; B474 00                       .
        db   $29,$C3,$11                     ; B475 29 C3 11                 )..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_B47E; B478 B0 04                    ..
        brk                                     ; B47A 00                       .
        db   $E5,$D3,$28                     ; B47B E5 D3 28                 ..(
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B47E:
        rts                                     ; B47E 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B47F:
        lda     #$2B                            ; B47F A9 2B                    .+
        jsr     BattleActionServices_Entry_B4A8 ; B481 20 A8 B4                  ..
        bcs     BattleActionServices_Branch_B494; B484 B0 0E                    ..
        lda     #$2A                            ; B486 A9 2A                    .*
        jsr     BattleActionServices_Entry_B4A8 ; B488 20 A8 B4                  ..
        bcs     BattleActionServices_Branch_B494; B48B B0 07                    ..
        lda     #$29                            ; B48D A9 29                    .)
        jsr     BattleActionServices_Entry_B4A8 ; B48F 20 A8 B4                  ..
        bcc     BattleActionServices_Branch_B4A7; B492 90 13                    ..
BattleActionServices_Branch_B494:
        brk                                     ; B494 00                       .
        db   $0A,$1F                         ; B495 0A 1F                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_BF2E ; B497 20 2E BF                  ..
        db   $8E                             ; B49A 8E                       .
; ----------------------------------------------------------------------------
        ldy     #$10                            ; B49B A0 10                    ..
        brk                                     ; B49D 00                       .
        db   $03,$4F                         ; B49E 03 4F                    .O
; ----------------------------------------------------------------------------
        brk                                     ; B4A0 00                       .
        db   $F1,$D3,$5E                     ; B4A1 F1 D3 5E                 ..^
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_893A ; B4A4 20 3A 89                  :.
BattleActionServices_Branch_B4A7:
        rts                                     ; B4A7 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B4A8:
        sta     $00                           ; B4A8 85 00                    ..
        brk                                     ; B4AA 00                       .
        db   $06,$1F                         ; B4AB 06 1F                    ..
; ----------------------------------------------------------------------------
        stx     $6E                             ; B4AD 86 6E                    .n
        lda     #$00                            ; B4AF A9 00                    ..
        sta     $6F                             ; B4B1 85 6F                    .o
BattleActionServices_Branch_B4B3:
        brk                                     ; B4B3 00                       .
        db   $3F,$33                         ; B4B4 3F 33                    ?3
; ----------------------------------------------------------------------------
        cmp     $00                           ; B4B6 C5 00                    ..
        beq     BattleActionServices_Branch_B4C4; B4B8 F0 0A                    ..
        inc     $6F                             ; B4BA E6 6F                    .o
        lda     $6F                             ; B4BC A5 6F                    .o
        cmp     #$0C                            ; B4BE C9 0C                    ..
        bcc     BattleActionServices_Branch_B4B3; B4C0 90 F1                    ..
        clc                                     ; B4C2 18                       .
        rts                                     ; B4C3 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B4C4:
        sec                                     ; B4C4 38                       8
        rts                                     ; B4C5 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B4C6:
        brk                                     ; B4C6 00                       .
        db   $5D,$33                         ; B4C7 5D 33                    ]3
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B4E3; B4C9 90 18                    ..
        brk                                     ; B4CB 00                       .
        db   $62,$23,$43                     ; B4CC 62 23 43                 b#C
; ----------------------------------------------------------------------------
        cmp     #$01                            ; B4CF C9 01                    ..
        beq     BattleActionServices_Branch_B4E3; B4D1 F0 10                    ..
        brk                                     ; B4D3 00                       .
        db   $F2,$D3,$01                     ; B4D4 F2 D3 01                 ...
; ----------------------------------------------------------------------------
        brk                                     ; B4D7 00                       .
        db   $06,$1F                         ; B4D8 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B4DA 00                       .
        db   $5F,$53                         ; B4DB 5F 53                    _S
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_8786 ; B4DD 20 86 87                  ..
        jsr     BattleActionServices_Entry_A3F7 ; B4E0 20 F7 A3                  ..
BattleActionServices_Branch_B4E3:
        rts                                     ; B4E3 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B4E4:
        brk                                     ; B4E4 00                       .
        db   $62,$23,$43                     ; B4E5 62 23 43                 b#C
; ----------------------------------------------------------------------------
        cmp     #$01                            ; B4E8 C9 01                    ..
        beq     BattleActionServices_Branch_B518; B4EA F0 2C                    .,
        ldx     #$03                            ; B4EC A2 03                    ..
BattleActionServices_Branch_B4EE:
        lda     #$FF                            ; B4EE A9 FF                    ..
        sta     $6E,x                           ; B4F0 95 6E                    .n
        dex                                     ; B4F2 CA                       .
        bpl     BattleActionServices_Branch_B4EE; B4F3 10 F9                    ..
        brk                                     ; B4F5 00                       .
        db   $06,$1F                         ; B4F6 06 1F                    ..
; ----------------------------------------------------------------------------
        cpx     #$00                            ; B4F8 E0 00                    ..
        beq     BattleActionServices_Branch_B518; B4FA F0 1C                    ..
        stx     $6E                             ; B4FC 86 6E                    .n
        brk                                     ; B4FE 00                       .
        db   $62,$23,$40                     ; B4FF 62 23 40                 b#@
; ----------------------------------------------------------------------------
        ldy     #$00                            ; B502 A0 00                    ..
        ldx     #$01                            ; B504 A2 01                    ..
BattleActionServices_Branch_B506:
        cpy     $6E                             ; B506 C4 6E                    .n
        beq     BattleActionServices_Branch_B50D; B508 F0 03                    ..
        sty     $6E,x                           ; B50A 94 6E                    .n
        inx                                     ; B50C E8                       .
BattleActionServices_Branch_B50D:
        iny                                     ; B50D C8                       .
        cpx     $72                             ; B50E E4 72                    .r
        bcc     BattleActionServices_Branch_B506; B510 90 F4                    ..
        brk                                     ; B512 00                       .
        db   $5E,$33                         ; B513 5E 33                    ^3
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_A3F7 ; B515 4C F7 A3                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B518:
        brk                                     ; B518 00                       .
        db   $E4,$D3,$1A                     ; B519 E4 D3 1A                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B51C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B51D:
        lda     #$04                            ; B51D A9 04                    ..
        brk                                     ; B51F 00                       .
        db   $17,$0F                         ; B520 17 0F                    ..
; ----------------------------------------------------------------------------
        adc     #$01                            ; B522 69 01                    i.
        sta     $7361                           ; B524 8D 61 73                 .as
        lda     #$00                            ; B527 A9 00                    ..
        sta     $7362                           ; B529 8D 62 73                 .bs
BattleActionServices_Branch_B52C:
        rts                                     ; B52C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B52D:
        brk                                     ; B52D 00                       .
        db   $06,$1F                         ; B52E 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_B52C; B530 B0 FA                    ..
        brk                                     ; B532 00                       .
        db   $3B,$93,$03                     ; B533 3B 93 03                 ;..
; ----------------------------------------------------------------------------
        cmp     #$CC                            ; B536 C9 CC                    ..
        bne     BattleActionServices_Branch_B53E; B538 D0 04                    ..
        brk                                     ; B53A 00                       .
        db   $44,$93,$12                     ; B53B 44 93 12                 D..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B53E:
        brk                                     ; B53E 00                       .
        db   $46,$93,$12                     ; B53F 46 93 12                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B52C; B542 90 E8                    ..
        brk                                     ; B544 00                       .
        db   $1B,$0F                         ; B545 1B 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$80                            ; B547 C9 80                    ..
        bcc     BattleActionServices_Branch_B553; B549 90 08                    ..
        cmp     #$C0                            ; B54B C9 C0                    ..
        bcs     BattleActionServices_Branch_B564; B54D B0 15                    ..
        ldx     #$43                            ; B54F A2 43                    .C
        bne     BattleActionServices_Branch_B555; B551 D0 02                    ..
BattleActionServices_Branch_B553:
        ldx     #$29                            ; B553 A2 29                    .)
BattleActionServices_Branch_B555:
        ldy     #$80                            ; B555 A0 80                    ..
        brk                                     ; B557 00                       .
        db   $13,$3F                         ; B558 13 3F                    .?
; ----------------------------------------------------------------------------
        pha                                     ; B55A 48                       H
        lda     #$43                            ; B55B A9 43                    .C
        brk                                     ; B55D 00                       .
        db   $0A,$1F                         ; B55E 0A 1F                    ..
; ----------------------------------------------------------------------------
        pla                                     ; B560 68                       h
        jmp     BattleActionServices_Branch_B615; B561 4C 15 B6                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B564:
        brk                                     ; B564 00                       .
        db   $1B,$0F                         ; B565 1B 0F                    ..
; ----------------------------------------------------------------------------
        and     #$07                            ; B567 29 07                    ).
        lda     #$04                            ; B569 A9 04                    ..
        cmp     #$04                            ; B56B C9 04                    ..
        bcs     BattleActionServices_Branch_B579; B56D B0 0A                    ..
        tax                                     ; B56F AA                       .
        lda     Bank11_BattleSelectionTable,x   ; B570 BD 25 B6                 .%.
        brk                                     ; B573 00                       .
        db   $0A,$1F                         ; B574 0A 1F                    ..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_B60C ; B576 4C 0C B6                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B579:
        sbc     #$04                            ; B579 E9 04                    ..
        sta     $00                           ; B57B 85 00                    ..
        brk                                     ; B57D 00                       .
        db   $06,$1F                         ; B57E 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B580 00                       .
        db   $2B,$53                         ; B581 2B 53                    +S
; ----------------------------------------------------------------------------
        cmp     #$08                            ; B583 C9 08                    ..
        bcc     BattleActionServices_Branch_B589; B585 90 02                    ..
        lda     #$08                            ; B587 A9 08                    ..
BattleActionServices_Branch_B589:
        tay                                     ; B589 A8                       .
        asl     a                               ; B58A 0A                       .
        asl     a                               ; B58B 0A                       .
        adc     $00                           ; B58C 65 00                    e.
        sta     $00                           ; B58E 85 00                    ..
        brk                                     ; B590 00                       .
        db   $1B,$0F                         ; B591 1B 0F                    ..
; ----------------------------------------------------------------------------
        and     #$03                            ; B593 29 03                    ).
        cpy     #$08                            ; B595 C0 08                    ..
        bne     BattleActionServices_Branch_B59E; B597 D0 05                    ..
        lda     #$06                            ; B599 A9 06                    ..
        brk                                     ; B59B 00                       .
        db   $17,$0F                         ; B59C 17 0F                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B59E:
        clc                                     ; B59E 18                       .
        adc     $00                           ; B59F 65 00                    e.
        tax                                     ; B5A1 AA                       .
        lda     $B629,x                         ; B5A2 BD 29 B6                 .).
        pha                                     ; B5A5 48                       H
        brk                                     ; B5A6 00                       .
        db   $0A,$1F                         ; B5A7 0A 1F                    ..
; ----------------------------------------------------------------------------
        pla                                     ; B5A9 68                       h
        cmp     #$C6                            ; B5AA C9 C6                    ..
        beq     BattleActionServices_Branch_B5CE; B5AC F0 20                    .
        cmp     #$AF                            ; B5AE C9 AF                    ..
        beq     BattleActionServices_Branch_B5CE; B5B0 F0 1C                    ..
        cmp     #$B6                            ; B5B2 C9 B6                    ..
        beq     BattleActionServices_Branch_B5DA; B5B4 F0 24                    .$
        cmp     #$BC                            ; B5B6 C9 BC                    ..
        beq     BattleActionServices_Branch_B5E6; B5B8 F0 2C                    .,
        cmp     #$C2                            ; B5BA C9 C2                    ..
        beq     BattleActionServices_Branch_B5ED; B5BC F0 2F                    ./
        cmp     #$C4                            ; B5BE C9 C4                    ..
        beq     BattleActionServices_Branch_B5F8; B5C0 F0 36                    .6
        cmp     #$C5                            ; B5C2 C9 C5                    ..
        beq     BattleActionServices_Branch_B5F8; B5C4 F0 32                    .2
        cmp     #$C7                            ; B5C6 C9 C7                    ..
        beq     BattleActionServices_Branch_B5ED; B5C8 F0 23                    .#
        jsr     BattleActionServices_Entry_B60C ; B5CA 20 0C B6                  ..
        rts                                     ; B5CD 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B5CE:
        brk                                     ; B5CE 00                       .
        db   $06,$1F                         ; B5CF 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B5D1 00                       .
        db   $3B,$93,$00                     ; B5D2 3B 93 00                 ;..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B604; B5D5 90 2D                    .-
        jmp     BattleActionServices_Entry_B60C ; B5D7 4C 0C B6                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B5DA:
        brk                                     ; B5DA 00                       .
        db   $06,$1F                         ; B5DB 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B5DD 00                       .
        db   $3B,$93,$01                     ; B5DE 3B 93 01                 ;..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B604; B5E1 90 21                    .!
        jmp     BattleActionServices_Entry_B60C ; B5E3 4C 0C B6                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B5E6:
        brk                                     ; B5E6 00                       .
        db   $06,$1F                         ; B5E7 06 1F                    ..
; ----------------------------------------------------------------------------
        cpx     #$00                            ; B5E9 E0 00                    ..
        beq     BattleActionServices_Branch_B604; B5EB F0 17                    ..
BattleActionServices_Branch_B5ED:
        brk                                     ; B5ED 00                       .
        db   $62,$23,$43                     ; B5EE 62 23 43                 b#C
; ----------------------------------------------------------------------------
        cmp     #$01                            ; B5F1 C9 01                    ..
        beq     BattleActionServices_Branch_B604; B5F3 F0 0F                    ..
        jmp     BattleActionServices_Entry_B60C ; B5F5 4C 0C B6                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B5F8:
        brk                                     ; B5F8 00                       .
        db   $4A,$33                         ; B5F9 4A 33                    J3
; ----------------------------------------------------------------------------
        ora     $73                             ; B5FB 05 73                    .s
        ora     $74                             ; B5FD 05 74                    .t
        beq     BattleActionServices_Branch_B604; B5FF F0 03                    ..
        jmp     BattleActionServices_Entry_B60C ; B601 4C 0C B6                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B604:
        lda     #$AC                            ; B604 A9 AC                    ..
        brk                                     ; B606 00                       .
        db   $0A,$1F                         ; B607 0A 1F                    ..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_B60C ; B609 4C 0C B6                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B60C:
        brk                                     ; B60C 00                       .
        db   $03,$1F                         ; B60D 03 1F                    ..
; ----------------------------------------------------------------------------
        tax                                     ; B60F AA                       .
        ldy     #$80                            ; B610 A0 80                    ..
        brk                                     ; B612 00                       .
        db   $13,$3F                         ; B613 13 3F                    .?
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B615:
        sta     $00                           ; B615 85 00                    ..
        brk                                     ; B617 00                       .
        db   $01,$1F                         ; B618 01 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B61A 00                       .
        db   $09,$1F                         ; B61B 09 1F                    ..
; ----------------------------------------------------------------------------
        lda     $00                           ; B61D A5 00                    ..
        brk                                     ; B61F 00                       .
        db   $0B,$1F                         ; B620 0B 1F                    ..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Entry_B34C ; B622 4C 4C B3                 LL.
; ----------------------------------------------------------------------------
Bank11_BattleSelectionTable:
        db   $AC,$AD,$D4,$D0                 ; B625 AC AD D4 D0              ....
        db   $AE,$AF,$B0,$B1,$B2,$B3,$B4,$B5 ; B629 AE AF B0 B1 B2 B3 B4 B5  ........
        db   $B6,$B7,$B8,$B9,$BA,$BB,$BC,$BD ; B631 B6 B7 B8 B9 BA BB BC BD  ........
        db   $BE,$BF,$C0,$C1,$C2,$C3,$C4,$C5 ; B639 BE BF C0 C1 C2 C3 C4 C5  ........
        db   $C6,$AF,$C7,$D2,$C8,$C9,$CA,$CB ; B641 C6 AF C7 D2 C8 C9 CA CB  ........
        db   $CC,$CD,$CF,$D0,$D1,$D2,$CE,$58 ; B649 CC CD CF D0 D1 D2 CE 58  .......X
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B651:
        jsr     BattleActionServices_Entry_B91C ; B651 20 1C B9                  ..
        lda     #$1E                            ; B654 A9 1E                    ..
        jmp     BattleActionServices_Branch_9C74; B656 4C 74 9C                 Lt.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B659:
        lda     $72E4                           ; B659 AD E4 72                 ..r
        ora     #$08                            ; B65C 09 08                    ..
        sta     $72E4                           ; B65E 8D E4 72                 ..r
        brk                                     ; B661 00                       .
        db   $E6,$D3,$01                     ; B662 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B665 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B666:
        brk                                     ; B666 00                       .
        db   $01,$1F                         ; B667 01 1F                    ..
; ----------------------------------------------------------------------------
        bmi     BattleActionServices_Branch_B692; B669 30 27                    0'
        sta     $00                           ; B66B 85 00                    ..
        lda     $72E6                           ; B66D AD E6 72                 ..r
        and     #$30                            ; B670 29 30                    )0
        ora     $00                           ; B672 05 00                    ..
        ora     #$C0                            ; B674 09 C0                    ..
        sta     $72E6                           ; B676 8D E6 72                 ..r
        lda     $72E5                           ; B679 AD E5 72                 ..r
        ora     #$80                            ; B67C 09 80                    ..
        sta     $72E5                           ; B67E 8D E5 72                 ..r
        brk                                     ; B681 00                       .
        db   $00,$FB                         ; B682 00 FB                    ..
; ----------------------------------------------------------------------------
        ldx     #$5A                            ; B684 A2 5A                    .Z
        jsr     UpperFixedEngine_Entry_C90C     ; B686 20 0C C9                  ..
        brk                                     ; B689 00                       .
        db   $E6,$D3,$01                     ; B68A E6 D3 01                 ...
; ----------------------------------------------------------------------------
        ldx     #$28                            ; B68D A2 28                    .(
        jsr     UpperFixedEngine_Entry_C90C     ; B68F 20 0C C9                  ..
BattleActionServices_Branch_B692:
        rts                                     ; B692 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B693:
        brk                                     ; B693 00                       .
        db   $E6,$D3,$01                     ; B694 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        brk                                     ; B697 00                       .
        db   $1B,$0F                         ; B698 1B 0F                    ..
; ----------------------------------------------------------------------------
        and     #$01                            ; B69A 29 01                    ).
        tax                                     ; B69C AA                       .
        inx                                     ; B69D E8                       .
        stx     $00                           ; B69E 86 00                    ..
        lda     $6E44                           ; B6A0 AD 44 6E                 .Dn
        and     #$FC                            ; B6A3 29 FC                    ).
        ora     $00                           ; B6A5 05 00                    ..
        sta     $6E44                           ; B6A7 8D 44 6E                 .Dn
        and     #$03                            ; B6AA 29 03                    ).
        cmp     #$01                            ; B6AC C9 01                    ..
        beq     BattleActionServices_Branch_B6BF; B6AE F0 0F                    ..
        ldy     #$EB                            ; B6B0 A0 EB                    ..
        bit     $72E4                           ; B6B2 2C E4 72                 ,.r
        bvs     BattleActionServices_Branch_B6B8; B6B5 70 01                    p.
        iny                                     ; B6B7 C8                       .
BattleActionServices_Branch_B6B8:
        tya                                     ; B6B8 98                       .
        brk                                     ; B6B9 00                       .
        db   $E5,$E3                         ; B6BA E5 E3                    ..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_B6CE; B6BC 4C CE B6                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B6BF:
        ldy     #$ED                            ; B6BF A0 ED                    ..
        brk                                     ; B6C1 00                       .
        db   $62,$23,$01                     ; B6C2 62 23 01                 b#.
; ----------------------------------------------------------------------------
        cmp     #$01                            ; B6C5 C9 01                    ..
        bne     BattleActionServices_Branch_B6CA; B6C7 D0 01                    ..
        iny                                     ; B6C9 C8                       .
BattleActionServices_Branch_B6CA:
        tya                                     ; B6CA 98                       .
        brk                                     ; B6CB 00                       .
        db   $E5,$E3                         ; B6CC E5 E3                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B6CE:
        pla                                     ; B6CE 68                       h
        pla                                     ; B6CF 68                       h
        pla                                     ; B6D0 68                       h
        pla                                     ; B6D1 68                       h
        pla                                     ; B6D2 68                       h
        pla                                     ; B6D3 68                       h
        pla                                     ; B6D4 68                       h
        pla                                     ; B6D5 68                       h
        pla                                     ; B6D6 68                       h
        pla                                     ; B6D7 68                       h
        jmp     BattleActionServices_Branch_8053; B6D8 4C 53 80                 LS.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B6DB:
        brk                                     ; B6DB 00                       .
        db   $07,$1F                         ; B6DC 07 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B6E8; B6DE 90 08                    ..
        brk                                     ; B6E0 00                       .
        db   $0C,$B3                         ; B6E1 0C B3                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B6E3 00                       .
        db   $E6,$D3,$01                     ; B6E4 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B6E7 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B6E8:
        bvc     BattleActionServices_Branch_B6F1; B6E8 50 07                    P.
        brk                                     ; B6EA 00                       .
        db   $0D,$73                         ; B6EB 0D 73                    .s
; ----------------------------------------------------------------------------
        brk                                     ; B6ED 00                       .
        db   $E6,$D3,$01                     ; B6EE E6 D3 01                 ...
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B6F1:
        rts                                     ; B6F1 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B6F2:
        brk                                     ; B6F2 00                       .
        db   $05,$3F                         ; B6F3 05 3F                    .?
; ----------------------------------------------------------------------------
        sta     $7361                           ; B6F5 8D 61 73                 .as
        lda     $70                             ; B6F8 A5 70                    .p
        sta     $7362                           ; B6FA 8D 62 73                 .bs
        jmp     BattleActionServices_Entry_90DB ; B6FD 4C DB 90                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B700:
        lda     #$93                            ; B700 A9 93                    ..
        jmp     BattleActionServices_Branch_9C74; B702 4C 74 9C                 Lt.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B705:
        brk                                     ; B705 00                       .
        db   $E6,$D3,$01                     ; B706 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        lda     #$00                            ; B709 A9 00                    ..
        sta     $735E                           ; B70B 8D 5E 73                 .^s
BattleActionServices_Branch_B70E:
        jsr     BattleActionServices_Entry_96C3 ; B70E 20 C3 96                  ..
        bcc     BattleActionServices_Branch_B72E; B711 90 1B                    ..
        jsr     BattleActionServices_Entry_BF2E ; B713 20 2E BF                  ..
        db   $89                             ; B716 89                       .
; ----------------------------------------------------------------------------
        brk                                     ; B717 00                       .
        db   $E1,$D3,$94                     ; B718 E1 D3 94                 ...
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_ACC4 ; B71B 20 C4 AC                  ..
        bcc     BattleActionServices_Branch_B72E; B71E 90 0E                    ..
        brk                                     ; B720 00                       .
        db   $05,$3F                         ; B721 05 3F                    .?
; ----------------------------------------------------------------------------
        sta     $7361                           ; B723 8D 61 73                 .as
        lda     $70                             ; B726 A5 70                    .p
        sta     $7362                           ; B728 8D 62 73                 .bs
        jsr     BattleActionServices_Entry_90DB ; B72B 20 DB 90                  ..
BattleActionServices_Branch_B72E:
        inc     $735E                           ; B72E EE 5E 73                 .^s
        lda     $735E                           ; B731 AD 5E 73                 .^s
        cmp     #$08                            ; B734 C9 08                    ..
        bcc     BattleActionServices_Branch_B70E; B736 90 D6                    ..
        brk                                     ; B738 00                       .
        db   $E1,$D3,$95                     ; B739 E1 D3 95                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B73C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B73D:
        brk                                     ; B73D 00                       .
        db   $08,$4F                         ; B73E 08 4F                    .O
; ----------------------------------------------------------------------------
        bit     $72E4                           ; B740 2C E4 72                 ,.r
        bvs     BattleActionServices_Branch_B753; B743 70 0E                    p.
        lda     $6E45                           ; B745 AD 45 6E                 .En
        cmp     #$99                            ; B748 C9 99                    ..
        beq     BattleActionServices_Branch_B753; B74A F0 07                    ..
        brk                                     ; B74C 00                       .
        db   $E5,$D3,$96                     ; B74D E5 D3 96                 ...
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_B757; B750 4C 57 B7                 LW.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B753:
        brk                                     ; B753 00                       .
        db   $E5,$D3,$5D                     ; B754 E5 D3 5D                 ..]
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B757:
        ldx     #$03                            ; B757 A2 03                    ..
        lda     #$FF                            ; B759 A9 FF                    ..
BattleActionServices_Branch_B75B:
        sta     $6E45,x                         ; B75B 9D 45 6E                 .En
        dex                                     ; B75E CA                       .
        bpl     BattleActionServices_Branch_B75B; B75F 10 FA                    ..
        lda     #$5C                            ; B761 A9 5C                    .\
        sta     $6E45                           ; B763 8D 45 6E                 .En
        sta     $7206                           ; B766 8D 06 72                 ..r
        ldx     #$80                            ; B769 A2 80                    ..
        brk                                     ; B76B 00                       .
        db   $29,$C3,$0E                     ; B76C 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        sta     $6E49                           ; B76F 8D 49 6E                 .In
        ldx     #$FF                            ; B772 A2 FF                    ..
        brk                                     ; B774 00                       .
        db   $29,$C3,$0E                     ; B775 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        ldx     #$00                            ; B778 A2 00                    ..
BattleActionServices_Branch_B77A:
        lsr     a                               ; B77A 4A                       J
        pha                                     ; B77B 48                       H
        bcs     BattleActionServices_Branch_B785; B77C B0 07                    ..
        brk                                     ; B77E 00                       .
        db   $2B,$C3,$0F                     ; B77F 2B C3 0F                 +..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_B78C; B782 4C 8C B7                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B785:
        lda     #$00                            ; B785 A9 00                    ..
        sta     $7C                             ; B787 85 7C                    .|
        brk                                     ; B789 00                       .
        db   $31,$B3                         ; B78A 31 B3                    1.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B78C:
        pla                                     ; B78C 68                       h
        inx                                     ; B78D E8                       .
        cpx     #$08                            ; B78E E0 08                    ..
        bcc     BattleActionServices_Branch_B77A; B790 90 E8                    ..
        lda     $6E44                           ; B792 AD 44 6E                 .Dn
        and     #$FC                            ; B795 29 FC                    ).
        ora     #$02                            ; B797 09 02                    ..
        sta     $6E44                           ; B799 8D 44 6E                 .Dn
        rts                                     ; B79C 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B79D:
        lda     #$00                            ; B79D A9 00                    ..
        jmp     BattleActionServices_Branch_9C74; B79F 4C 74 9C                 Lt.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B7A2:
        brk                                     ; B7A2 00                       .
        db   $E6,$D3,$01                     ; B7A3 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        lda     $72E5                           ; B7A6 AD E5 72                 ..r
        ora     #$01                            ; B7A9 09 01                    ..
        sta     $72E5                           ; B7AB 8D E5 72                 ..r
        rts                                     ; B7AE 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B7AF:
        brk                                     ; B7AF 00                       .
        db   $E6,$D3,$01                     ; B7B0 E6 D3 01                 ...
; ----------------------------------------------------------------------------
        brk                                     ; B7B3 00                       .
        db   $06,$1F                         ; B7B4 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B7B6 00                       .
        db   $00,$53                         ; B7B7 00 53                    .S
; ----------------------------------------------------------------------------
        lda     #$28                            ; B7B9 A9 28                    .(
        brk                                     ; B7BB 00                       .
        db   $17,$0F                         ; B7BC 17 0F                    ..
; ----------------------------------------------------------------------------
        clc                                     ; B7BE 18                       .
        adc     #$19                            ; B7BF 69 19                    i.
        ldx     #$72                            ; B7C1 A2 72                    .r
        jsr     MultiplyPointerWord             ; B7C3 20 27 C8                  '.
        lda     #$20                            ; B7C6 A9 20                    .
        jsr     UpperFixedEngine_Entry_C851     ; B7C8 20 51 C8                  Q.
        lda     #$01                            ; B7CB A9 01                    ..
        jsr     AddByteToPointer                ; B7CD 20 13 C8                  ..
        lda     $72                             ; B7D0 A5 72                    .r
        sta     $7361                           ; B7D2 8D 61 73                 .as
        lda     $73                             ; B7D5 A5 73                    .s
        sta     $7362                           ; B7D7 8D 62 73                 .bs
        jsr     BattleActionServices_Entry_90DB ; B7DA 20 DB 90                  ..
        jsr     BattleActionServices_Entry_A3F7 ; B7DD 20 F7 A3                  ..
        lda     $72E7                           ; B7E0 AD E7 72                 ..r
        and     #$01                            ; B7E3 29 01                    ).
        bne     BattleActionServices_Branch_B7F7; B7E5 D0 10                    ..
        brk                                     ; B7E7 00                       .
        db   $E9,$D3,$9D                     ; B7E8 E9 D3 9D                 ...
; ----------------------------------------------------------------------------
        brk                                     ; B7EB 00                       .
        db   $06,$1F                         ; B7EC 06 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B7EE 00                       .
        db   $44,$93,$26                     ; B7EF 44 93 26                 D.&
; ----------------------------------------------------------------------------
        lda     #$52                            ; B7F2 A9 52                    .R
        jsr     BattleActionServices_Entry_B808 ; B7F4 20 08 B8                  ..
BattleActionServices_Branch_B7F7:
        rts                                     ; B7F7 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B7F8:
        brk                                     ; B7F8 00                       .
        db   $03,$1F                         ; B7F9 03 1F                    ..
; ----------------------------------------------------------------------------
        clc                                     ; B7FB 18                       .
        adc     #$01                            ; B7FC 69 01                    i.
        brk                                     ; B7FE 00                       .
        db   $0A,$1F                         ; B7FF 0A 1F                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_B8D4 ; B801 20 D4 B8                  ..
        jsr     BattleActionServices_Entry_893A ; B804 20 3A 89                  :.
        rts                                     ; B807 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B808:
        sta     $00                           ; B808 85 00                    ..
        lda     $96                             ; B80A A5 96                    ..
        pha                                     ; B80C 48                       H
        brk                                     ; B80D 00                       .
        db   $03,$1F                         ; B80E 03 1F                    ..
; ----------------------------------------------------------------------------
        pha                                     ; B810 48                       H
        brk                                     ; B811 00                       .
        db   $02,$1F                         ; B812 02 1F                    ..
; ----------------------------------------------------------------------------
        pha                                     ; B814 48                       H
        lda     $735D                           ; B815 AD 5D 73                 .]s
        pha                                     ; B818 48                       H
        lda     $735C                           ; B819 AD 5C 73                 .\s
        pha                                     ; B81C 48                       H
        lda     $735E                           ; B81D AD 5E 73                 .^s
        pha                                     ; B820 48                       H
        lda     $7363                           ; B821 AD 63 73                 .cs
        brk                                     ; B824 00                       .
        db   $09,$1F                         ; B825 09 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_B850; B827 90 27                    .'
        stx     $96                             ; B829 86 96                    ..
        lda     #$00                            ; B82B A9 00                    ..
        brk                                     ; B82D 00                       .
        db   $0C,$1F                         ; B82E 0C 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B830 00                       .
        db   $04,$1F                         ; B831 04 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$02                            ; B833 C9 02                    ..
        bcs     BattleActionServices_Branch_B849; B835 B0 12                    ..
        ldx     $96                             ; B837 A6 96                    ..
        lda     #$00                            ; B839 A9 00                    ..
        brk                                     ; B83B 00                       .
        db   $08,$1F                         ; B83C 08 1F                    ..
; ----------------------------------------------------------------------------
        lda     $00                           ; B83E A5 00                    ..
        brk                                     ; B840 00                       .
        db   $0A,$1F                         ; B841 0A 1F                    ..
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_B8D4 ; B843 20 D4 B8                  ..
        jsr     BattleActionServices_Entry_88CA ; B846 20 CA 88                  ..
BattleActionServices_Branch_B849:
        ldx     $96                             ; B849 A6 96                    ..
        lda     #$02                            ; B84B A9 02                    ..
        brk                                     ; B84D 00                       .
        db   $08,$1F                         ; B84E 08 1F                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B850:
        pla                                     ; B850 68                       h
        sta     $735E                           ; B851 8D 5E 73                 .^s
        pla                                     ; B854 68                       h
        sta     $735C                           ; B855 8D 5C 73                 .\s
        pla                                     ; B858 68                       h
        sta     $735D                           ; B859 8D 5D 73                 .]s
        brk                                     ; B85C 00                       .
        db   $01,$1F                         ; B85D 01 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B85F 00                       .
        db   $09,$1F                         ; B860 09 1F                    ..
; ----------------------------------------------------------------------------
        pla                                     ; B862 68                       h
        brk                                     ; B863 00                       .
        db   $0B,$1F                         ; B864 0B 1F                    ..
; ----------------------------------------------------------------------------
        pla                                     ; B866 68                       h
        brk                                     ; B867 00                       .
        db   $0A,$1F                         ; B868 0A 1F                    ..
; ----------------------------------------------------------------------------
        pla                                     ; B86A 68                       h
        sta     $96                             ; B86B 85 96                    ..
        rts                                     ; B86D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B86E:
        jmp     BattleActionServices_Branch_B8F8; B86E 4C F8 B8                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B871:
        brk                                     ; B871 00                       .
        db   $05,$1F                         ; B872 05 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$00                            ; B874 C9 00                    ..
        bne     BattleActionServices_Branch_B86E; B876 D0 F6                    ..
        brk                                     ; B878 00                       .
        db   $03,$1F                         ; B879 03 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$34                            ; B87B C9 34                    .4
        bne     BattleActionServices_Branch_B86E; B87D D0 EF                    ..
        lda     $72E4                           ; B87F AD E4 72                 ..r
        bmi     BattleActionServices_Branch_B888; B882 30 04                    0.
        jsr     BattleActionServices_Entry_BF2E ; B884 20 2E BF                  ..
        db   $8E                             ; B887 8E                       .
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B888:
        ldy     #$10                            ; B888 A0 10                    ..
        brk                                     ; B88A 00                       .
        db   $03,$4F                         ; B88B 03 4F                    .O
; ----------------------------------------------------------------------------
        brk                                     ; B88D 00                       .
        db   $E2,$D3,$00                     ; B88E E2 D3 00                 ...
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_ABB5 ; B891 20 B5 AB                  ..
        bcc     BattleActionServices_Branch_B8FA; B894 90 64                    .d
        jsr     BattleActionServices_Entry_8C50 ; B896 20 50 8C                  P.
        bcc     BattleActionServices_Branch_B8FA; B899 90 5F                    ._
        lda     $72E5                           ; B89B AD E5 72                 ..r
        and     #$08                            ; B89E 29 08                    ).
        beq     BattleActionServices_Branch_B8AE; B8A0 F0 0C                    ..
        lda     $72E5                           ; B8A2 AD E5 72                 ..r
        and     #$F7                            ; B8A5 29 F7                    ).
        sta     $72E5                           ; B8A7 8D E5 72                 ..r
        lda     #$E1                            ; B8AA A9 E1                    ..
        bne     BattleActionServices_Branch_B8C9; B8AC D0 1B                    ..
BattleActionServices_Branch_B8AE:
        lda     #$1B                            ; B8AE A9 1B                    ..
        ldx     $6E44                           ; B8B0 AE 44 6E                 .Dn
        bpl     BattleActionServices_Branch_B8B7; B8B3 10 02                    ..
        lda     #$0F                            ; B8B5 A9 0F                    ..
BattleActionServices_Branch_B8B7:
        brk                                     ; B8B7 00                       .
        db   $17,$0F                         ; B8B8 17 0F                    ..
; ----------------------------------------------------------------------------
        tax                                     ; B8BA AA                       .
        lda     $6E44                           ; B8BB AD 44 6E                 .Dn
        bpl     BattleActionServices_Branch_B8C6; B8BE 10 06                    ..
        lda     $B951,x                         ; B8C0 BD 51 B9                 .Q.
        jmp     BattleActionServices_Branch_B8C9; B8C3 4C C9 B8                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B8C6:
        lda     Bank11_BattleIdTables,x         ; B8C6 BD 36 B9                 .6.
BattleActionServices_Branch_B8C9:
        nop                                     ; B8C9 EA                       .
        pha                                     ; B8CA 48                       H
        jsr     BattleActionServices_Entry_B8FC ; B8CB 20 FC B8                  ..
        pla                                     ; B8CE 68                       h
        bcc     BattleActionServices_Branch_B8AE; B8CF 90 DD                    ..
        brk                                     ; B8D1 00                       .
        db   $0A,$1F                         ; B8D2 0A 1F                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B8D4:
        brk                                     ; B8D4 00                       .
        db   $03,$1F                         ; B8D5 03 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B8D7 00                       .
        db   $0C,$3F                         ; B8D8 0C 3F                    .?
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_B8E0; B8DA B0 04                    ..
        lda     #$00                            ; B8DC A9 00                    ..
        beq     BattleActionServices_Branch_B8EB; B8DE F0 0B                    ..
BattleActionServices_Branch_B8E0:
        ldx     #$FF                            ; B8E0 A2 FF                    ..
        brk                                     ; B8E2 00                       .
        db   $29,$C3,$0E                     ; B8E3 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        brk                                     ; B8E6 00                       .
        db   $2B,$0F                         ; B8E7 2B 0F                    +.
; ----------------------------------------------------------------------------
        ora     #$80                            ; B8E9 09 80                    ..
BattleActionServices_Branch_B8EB:
        sta     $00                           ; B8EB 85 00                    ..
        brk                                     ; B8ED 00                       .
        db   $01,$1F                         ; B8EE 01 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B8F0 00                       .
        db   $09,$1F                         ; B8F1 09 1F                    ..
; ----------------------------------------------------------------------------
        lda     $00                           ; B8F3 A5 00                    ..
        brk                                     ; B8F5 00                       .
        db   $0B,$1F                         ; B8F6 0B 1F                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B8F8:
        sec                                     ; B8F8 38                       8
        rts                                     ; B8F9 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B8FA:
        clc                                     ; B8FA 18                       .
        rts                                     ; B8FB 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B8FC:
        cmp     #$E0                            ; B8FC C9 E0                    ..
        beq     BattleActionServices_Branch_B902; B8FE F0 02                    ..
        sec                                     ; B900 38                       8
        rts                                     ; B901 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B902:
        ldx     #$03                            ; B902 A2 03                    ..
BattleActionServices_Branch_B904:
        lda     $6E45,x                         ; B904 BD 45 6E                 .En
        cmp     #$5C                            ; B907 C9 5C                    .\
        beq     BattleActionServices_Branch_B91A; B909 F0 0F                    ..
        dex                                     ; B90B CA                       .
        bpl     BattleActionServices_Branch_B904; B90C 10 F6                    ..
        ldx     #$FF                            ; B90E A2 FF                    ..
        brk                                     ; B910 00                       .
        db   $29,$C3,$11                     ; B911 29 C3 11                 )..
; ----------------------------------------------------------------------------
        bne     BattleActionServices_Branch_B91A; B914 D0 04                    ..
        brk                                     ; B916 00                       .
        db   $07,$4F                         ; B917 07 4F                    .O
; ----------------------------------------------------------------------------
        rts                                     ; B919 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B91A:
        clc                                     ; B91A 18                       .
        rts                                     ; B91B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B91C:
        pha                                     ; B91C 48                       H
        lda     $72E4                           ; B91D AD E4 72                 ..r
        and     #$CF                            ; B920 29 CF                    ).
        ora     #$10                            ; B922 09 10                    ..
        sta     $72E4                           ; B924 8D E4 72                 ..r
        pla                                     ; B927 68                       h
        rts                                     ; B928 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B929:
        pha                                     ; B929 48                       H
        lda     $72E4                           ; B92A AD E4 72                 ..r
        and     #$CF                            ; B92D 29 CF                    ).
        ora     #$20                            ; B92F 09 20                    .
        sta     $72E4                           ; B931 8D E4 72                 ..r
        pla                                     ; B934 68                       h
        rts                                     ; B935 60                       `
; ----------------------------------------------------------------------------
Bank11_BattleIdTables:
        db   $D5,$D6,$D7,$D8,$D9,$DA,$DB,$DC ; B936 D5 D6 D7 D8 D9 DA DB DC  ........
        db   $DD,$DE,$DF,$E0,$E2,$E3,$E4,$E5 ; B93E DD DE DF E0 E2 E3 E4 E5  ........
        db   $E6,$E7,$E8,$E9,$EB,$ED,$EF,$F1 ; B946 E6 E7 E8 E9 EB ED EF F1  ........
        db   $F3,$F5,$57                     ; B94E F3 F5 57                 ..W
        db   $D6,$D8,$DB,$DE,$DF,$E3,$E4,$E5 ; B951 D6 D8 DB DE DF E3 E4 E5  ........
        db   $E6,$E7,$E8,$EB,$EF,$F1,$F3     ; B959 E6 E7 E8 EB EF F1 F3     .......
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B960:
        lda     $6E45                           ; B960 AD 45 6E                 .En
        cmp     #$AE                            ; B963 C9 AE                    ..
        beq     BattleActionServices_Branch_B9C1; B965 F0 5A                    .Z
        bit     $629B                           ; B967 2C 9B 62                 ,.b
        bvs     BattleActionServices_Branch_B9C1; B96A 70 55                    pU
        lda     $629B                           ; B96C AD 9B 62                 ..b
        ora     #$40                            ; B96F 09 40                    .@
        sta     $629B                           ; B971 8D 9B 62                 ..b
        jsr     BattleActionServices_Entry_BF2E ; B974 20 2E BF                  ..
        db   $AE                             ; B977 AE                       .
; ----------------------------------------------------------------------------
        brk                                     ; B978 00                       .
        db   $65,$D3,$97                     ; B979 65 D3 97                 e..
; ----------------------------------------------------------------------------
        brk                                     ; B97C 00                       .
        db   $1B,$2F                         ; B97D 1B 2F                    ./
; ----------------------------------------------------------------------------
        lda     $7600                           ; B97F AD 00 76                 ..v
        pha                                     ; B982 48                       H
        jsr     BattleActionServices_Entry_B9C6 ; B983 20 C6 B9                  ..
        brk                                     ; B986 00                       .
        db   $28,$0F                         ; B987 28 0F                    (.
; ----------------------------------------------------------------------------
        jsr     BattleActionServices_Entry_8786 ; B989 20 86 87                  ..
        jsr     BattleActionServices_Entry_A3F7 ; B98C 20 F7 A3                  ..
        brk                                     ; B98F 00                       .
        db   $10,$4F                         ; B990 10 4F                    .O
; ----------------------------------------------------------------------------
        pla                                     ; B992 68                       h
        brk                                     ; B993 00                       .
        db   $1C,$2F                         ; B994 1C 2F                    ./
; ----------------------------------------------------------------------------
        brk                                     ; B996 00                       .
        db   $80,$FB                         ; B997 80 FB                    ..
; ----------------------------------------------------------------------------
        lda     $72E4                           ; B999 AD E4 72                 ..r
        ora     #$04                            ; B99C 09 04                    ..
        sta     $72E4                           ; B99E 8D E4 72                 ..r
        lda     $72E5                           ; B9A1 AD E5 72                 ..r
        bpl     BattleActionServices_Branch_B9AC; B9A4 10 06                    ..
        brk                                     ; B9A6 00                       .
        db   $00,$FB                         ; B9A7 00 FB                    ..
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_B9B4; B9A9 4C B4 B9                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B9AC:
        lda     $BF                             ; B9AC A5 BF                    ..
        lsr     a                               ; B9AE 4A                       J
        bne     BattleActionServices_Branch_B9B4; B9AF D0 03                    ..
        jsr     BattleActionServices_Entry_905B ; B9B1 20 5B 90                  [.
BattleActionServices_Branch_B9B4:
        pla                                     ; B9B4 68                       h
        pla                                     ; B9B5 68                       h
        pla                                     ; B9B6 68                       h
        pla                                     ; B9B7 68                       h
        pla                                     ; B9B8 68                       h
        pla                                     ; B9B9 68                       h
        pla                                     ; B9BA 68                       h
        pla                                     ; B9BB 68                       h
        pla                                     ; B9BC 68                       h
        pla                                     ; B9BD 68                       h
        jmp     BattleActionServices_Branch_8053; B9BE 4C 53 80                 LS.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_B9C1:
        brk                                     ; B9C1 00                       .
        db   $E4,$D3,$1A                     ; B9C2 E4 D3 1A                 ...
; ----------------------------------------------------------------------------
        rts                                     ; B9C5 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B9C6:
        lda     #$FF                            ; B9C6 A9 FF                    ..
        sta     $0F                             ; B9C8 85 0F                    ..
        jsr     BattleActionServices_Entry_B9FF ; B9CA 20 FF B9                  ..
        rts                                     ; B9CD 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B9CE:
        ldx     #$03                            ; B9CE A2 03                    ..
        stx     $00                           ; B9D0 86 00                    ..
BattleActionServices_Branch_B9D2:
        ldx     #$FF                            ; B9D2 A2 FF                    ..
        brk                                     ; B9D4 00                       .
        db   $29,$C3,$0E                     ; B9D5 29 C3 0E                 )..
; ----------------------------------------------------------------------------
        pha                                     ; B9D8 48                       H
        lda     $00                           ; B9D9 A5 00                    ..
        brk                                     ; B9DB 00                       .
        db   $2D,$B3                         ; B9DC 2D B3                    -.
; ----------------------------------------------------------------------------
        pla                                     ; B9DE 68                       h
        and     $7E                             ; B9DF 25 7E                    %~
        ldx     #$00                            ; B9E1 A2 00                    ..
BattleActionServices_Branch_B9E3:
        lsr     a                               ; B9E3 4A                       J
        bcc     BattleActionServices_Branch_B9E7; B9E4 90 01                    ..
        inx                                     ; B9E6 E8                       .
BattleActionServices_Branch_B9E7:
        cmp     #$00                            ; B9E7 C9 00                    ..
        bne     BattleActionServices_Branch_B9E3; B9E9 D0 F8                    ..
        txa                                     ; B9EB 8A                       .
        ldx     $00                           ; B9EC A6 00                    ..
        sta     $6E49,x                         ; B9EE 9D 49 6E                 .In
        dec     $00                           ; B9F1 C6 00                    ..
        bpl     BattleActionServices_Branch_B9D2; B9F3 10 DD                    ..
        rts                                     ; B9F5 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_B9F6:
        jsr     BattleActionServices_Entry_BAFA ; B9F6 20 FA BA                  ..
        bcc     BattleActionServices_Branch_BA08; B9F9 90 0D                    ..
BattleActionServices_Entry_B9FB:
        lda     #$00                            ; B9FB A9 00                    ..
        sta     $0F                             ; B9FD 85 0F                    ..
BattleActionServices_Entry_B9FF:
        jsr     BattleActionServices_Entry_BA09 ; B9FF 20 09 BA                  ..
        jsr     BattleActionServices_Entry_BA14 ; BA02 20 14 BA                  ..
        jsr     BattleActionServices_Entry_BAA1 ; BA05 20 A1 BA                  ..
BattleActionServices_Branch_BA08:
        rts                                     ; BA08 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BA09:
        lda     $BB84                           ; BA09 AD 84 BB                 ...
        sta     $88                             ; BA0C 85 88                    ..
        lda     $BB85                           ; BA0E AD 85 BB                 ...
        sta     $89                             ; BA11 85 89                    ..
        rts                                     ; BA13 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BA14:
        jsr     BattleActionServices_Entry_BA1B ; BA14 20 1B BA                  ..
        jsr     BattleActionServices_Entry_BA31 ; BA17 20 31 BA                  1.
        rts                                     ; BA1A 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BA1B:
        ldy     #$00                            ; BA1B A0 00                    ..
        bit     SaveGameStateFlags              ; BA1D 2C 8E 61                 ,.a
        bvc     BattleActionServices_Branch_BA24; BA20 50 02                    P.
        ldy     #$03                            ; BA22 A0 03                    ..
BattleActionServices_Branch_BA24:
        jsr     BattleActionServices_Entry_BAAB ; BA24 20 AB BA                  ..
        bit     SaveGameStateFlags              ; BA27 2C 8E 61                 ,.a
        bpl     BattleActionServices_Branch_BA2D; BA2A 10 01                    ..
        iny                                     ; BA2C C8                       .
BattleActionServices_Branch_BA2D:
        jsr     BattleActionServices_Entry_BAAB ; BA2D 20 AB BA                  ..
        rts                                     ; BA30 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BA31:
        ldx     #$00                            ; BA31 A2 00                    ..
BattleActionServices_Branch_BA33:
        lda     $7397,x                         ; BA33 BD 97 73                 ..s
        bpl     BattleActionServices_Branch_BA41; BA36 10 09                    ..
        and     #$7F                            ; BA38 29 7F                    ).
        sta     $01                             ; BA3A 85 01                    ..
        sta     $86                             ; BA3C 85 86                    ..
        jsr     BattleActionServices_Entry_BA47 ; BA3E 20 47 BA                  G.
BattleActionServices_Branch_BA41:
        inx                                     ; BA41 E8                       .
        cpx     #$0E                            ; BA42 E0 0E                    ..
        bne     BattleActionServices_Branch_BA33; BA44 D0 ED                    ..
        rts                                     ; BA46 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BA47:
        txa                                     ; BA47 8A                       .
        pha                                     ; BA48 48                       H
        lda     #$00                            ; BA49 A9 00                    ..
        sta     $87                             ; BA4B 85 87                    ..
        ldx     #$86                            ; BA4D A2 86                    ..
        ldy     #$06                            ; BA4F A0 06                    ..
        lda     $BB82                           ; BA51 AD 82 BB                 ...
        sta     $0D                             ; BA54 85 0D                    ..
        lda     $BB83                           ; BA56 AD 83 BB                 ...
        sta     $0E                             ; BA59 85 0E                    ..
        sec                                     ; BA5B 38                       8
        lda     $86                             ; BA5C A5 86                    ..
        sbc     #$09                            ; BA5E E9 09                    ..
        bcs     BattleActionServices_Branch_BA70; BA60 B0 0E                    ..
        ldy     #$1E                            ; BA62 A0 1E                    ..
        lda     $BB80                           ; BA64 AD 80 BB                 ...
        sta     $0D                             ; BA67 85 0D                    ..
        lda     $BB81                           ; BA69 AD 81 BB                 ...
        sta     $0E                             ; BA6C 85 0E                    ..
        lda     $86                             ; BA6E A5 86                    ..
BattleActionServices_Branch_BA70:
        sta     $86                             ; BA70 85 86                    ..
        tya                                     ; BA72 98                       .
        jsr     MultiplyPointerWord             ; BA73 20 27 C8                  '.
        lda     $0D                             ; BA76 A5 0D                    ..
        ldy     $0E                             ; BA78 A4 0E                    ..
        jsr     AddWordToPointer                ; BA7A 20 1D C8                  ..
        ldy     #$00                            ; BA7D A0 00                    ..
        lda     $01                             ; BA7F A5 01                    ..
        cmp     #$09                            ; BA81 C9 09                    ..
        bcc     BattleActionServices_Branch_BA87; BA83 90 02                    ..
        ldy     #$04                            ; BA85 A0 04                    ..
BattleActionServices_Branch_BA87:
        sty     $00                           ; BA87 84 00                    ..
BattleActionServices_Branch_BA89:
        ldy     $00                           ; BA89 A4 00                    ..
        lda     $BB76,y                         ; BA8B B9 76 BB                 .v.
        sta     $02                           ; BA8E 85 02                    ..
        lda     $BB7B,y                         ; BA90 B9 7B BB                 .{.
        jsr     BattleActionServices_Entry_BAB7 ; BA93 20 B7 BA                  ..
        inc     $00                           ; BA96 E6 00                    ..
        lda     $00                           ; BA98 A5 00                    ..
        cmp     #$05                            ; BA9A C9 05                    ..
        bcc     BattleActionServices_Branch_BA89; BA9C 90 EB                    ..
        pla                                     ; BA9E 68                       h
        tax                                     ; BA9F AA                       .
        rts                                     ; BAA0 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BAA1:
        ldy     #$06                            ; BAA1 A0 06                    ..
BattleActionServices_Branch_BAA3:
        jsr     BattleActionServices_Entry_BAAB ; BAA3 20 AB BA                  ..
        cpy     #$0B                            ; BAA6 C0 0B                    ..
        bcc     BattleActionServices_Branch_BAA3; BAA8 90 F9                    ..
        rts                                     ; BAAA 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BAAB:
        tya                                     ; BAAB 98                       .
        pha                                     ; BAAC 48                       H
        jsr     BattleActionServices_Entry_BAE5 ; BAAD 20 E5 BA                  ..
        jsr     BattleActionServices_Entry_BAB7 ; BAB0 20 B7 BA                  ..
        pla                                     ; BAB3 68                       h
        tay                                     ; BAB4 A8                       .
        iny                                     ; BAB5 C8                       .
        rts                                     ; BAB6 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BAB7:
        sta     $03                             ; BAB7 85 03                    ..
BattleActionServices_Branch_BAB9:
        lda     $0F                             ; BAB9 A5 0F                    ..
        bne     BattleActionServices_Branch_BAC3; BABB D0 06                    ..
        jsr     BattleActionServices_Entry_BAD3 ; BABD 20 D3 BA                  ..
        jmp     BattleActionServices_Branch_BAC6; BAC0 4C C6 BA                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BAC3:
        jsr     BattleActionServices_Entry_BADC ; BAC3 20 DC BA                  ..
BattleActionServices_Branch_BAC6:
        inc     $02                           ; BAC6 E6 02                    ..
        inc     $88                             ; BAC8 E6 88                    ..
        bne     BattleActionServices_Branch_BACE; BACA D0 02                    ..
        inc     $89                             ; BACC E6 89                    ..
BattleActionServices_Branch_BACE:
        dec     $03                             ; BACE C6 03                    ..
        bne     BattleActionServices_Branch_BAB9; BAD0 D0 E7                    ..
        rts                                     ; BAD2 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BAD3:
        ldy     $02                           ; BAD3 A4 02                    ..
        lda     ($86),y                         ; BAD5 B1 86                    ..
        ldy     #$00                            ; BAD7 A0 00                    ..
        sta     ($88),y                         ; BAD9 91 88                    ..
        rts                                     ; BADB 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BADC:
        ldy     #$00                            ; BADC A0 00                    ..
        lda     ($88),y                         ; BADE B1 88                    ..
        ldy     $02                           ; BAE0 A4 02                    ..
        sta     ($86),y                         ; BAE2 91 86                    ..
        rts                                     ; BAE4 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BAE5:
        tya                                     ; BAE5 98                       .
        asl     a                               ; BAE6 0A                       .
        tax                                     ; BAE7 AA                       .
        lda     Bank11_BattleBufferTables,x     ; BAE8 BD 55 BB                 .U.
        sta     $86                             ; BAEB 85 86                    ..
        lda     $BB56,x                         ; BAED BD 56 BB                 .V.
        sta     $87                             ; BAF0 85 87                    ..
        lda     #$00                            ; BAF2 A9 00                    ..
        sta     $02                           ; BAF4 85 02                    ..
        lda     $BB6B,y                         ; BAF6 B9 6B BB                 .k.
        rts                                     ; BAF9 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BAFA:
        lda     $72E4                           ; BAFA AD E4 72                 ..r
        and     #$04                            ; BAFD 29 04                    ).
        bne     BattleActionServices_Branch_BB53; BAFF D0 52                    .R
        ldx     #$03                            ; BB01 A2 03                    ..
BattleActionServices_Branch_BB03:
        lda     BattleSlotDescriptors,x         ; BB03 BD F4 72                 ..r
        and     #$70                            ; BB06 29 70                    )p
        bne     BattleActionServices_Branch_BB1C; BB08 D0 12                    ..
        lda     $7300,x                         ; BB0A BD 00 73                 ..s
        and     #$70                            ; BB0D 29 70                    )p
        beq     BattleActionServices_Branch_BB28; BB0F F0 17                    ..
        cmp     #$20                            ; BB11 C9 20                    .
        bne     BattleActionServices_Branch_BB1C; BB13 D0 07                    ..
        lda     $7324,x                         ; BB15 BD 24 73                 .$s
        cmp     #$5F                            ; BB18 C9 5F                    ._
        beq     BattleActionServices_Branch_BB4B; BB1A F0 2F                    ./
BattleActionServices_Branch_BB1C:
        dex                                     ; BB1C CA                       .
        bpl     BattleActionServices_Branch_BB03; BB1D 10 E4                    ..
        lda     $72E5                           ; BB1F AD E5 72                 ..r
        and     #$0C                            ; BB22 29 0C                    ).
        bne     BattleActionServices_Branch_BB53; BB24 D0 2D                    .-
        sec                                     ; BB26 38                       8
        rts                                     ; BB27 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BB28:
        lda     $7324,x                         ; BB28 BD 24 73                 .$s
        cmp     #$34                            ; BB2B C9 34                    .4
        bne     BattleActionServices_Branch_BB1C; BB2D D0 ED                    ..
        lda     #$1C                            ; BB2F A9 1C                    ..
        brk                                     ; BB31 00                       .
        db   $17,$0F                         ; BB32 17 0F                    ..
; ----------------------------------------------------------------------------
        cmp     #$00                            ; BB34 C9 00                    ..
        bne     BattleActionServices_Branch_BB1C; BB36 D0 E4                    ..
        lda     #$5F                            ; BB38 A9 5F                    ._
        sta     $6F                             ; BB3A 85 6F                    .o
        brk                                     ; BB3C 00                       .
        db   $66,$33                         ; BB3D 66 33                    f3
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_BB1C; BB3F B0 DB                    ..
        lda     $72E5                           ; BB41 AD E5 72                 ..r
        eor     #$08                            ; BB44 49 08                    I.
        sta     $72E5                           ; BB46 8D E5 72                 ..r
        bne     BattleActionServices_Branch_BB1C; BB49 D0 D1                    ..
BattleActionServices_Branch_BB4B:
        lda     $72E5                           ; BB4B AD E5 72                 ..r
        ora     #$04                            ; BB4E 09 04                    ..
        sta     $72E5                           ; BB50 8D E5 72                 ..r
BattleActionServices_Branch_BB53:
        clc                                     ; BB53 18                       .
        rts                                     ; BB54 60                       `
; ----------------------------------------------------------------------------
Bank11_BattleBufferTables:
        db   $72                             ; BB55 72                       r
        db   $61,$6A,$61,$6E,$61,$7C,$61,$86 ; BB56 61 6A 61 6E 61 7C 61 86  ajana|a.
        db   $61,$8A,$61,$5B,$61,$EE,$62,$DF ; BB5E 61 8A 61 5B 61 EE 62 DF  a.a[a.b.
        db   $6B,$45,$6E,$00,$72             ; BB66 6B 45 6E 00 72           kEn.r
        db   $0A,$04,$04,$0A,$04,$04,$01,$01 ; BB6B 0A 04 04 0A 04 04 01 01  ........
        db   $0C,$04,$E9                     ; BB73 0C 04 E9                 ...
        db   $06,$0A,$0C,$13,$00             ; BB76 06 0A 0C 13 00           .....
        db   $02,$01,$04,$08,$05             ; BB7B 02 01 04 08 05           .....
        db   $01                             ; BB80 01                       .
        db   $60                             ; BB81 60                       `
        db   $0F                             ; BB82 0F                       .
        db   $61                             ; BB83 61                       a
        db   $97                             ; BB84 97                       .
        db   $73                             ; BB85 73                       s
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BB86:
        ldx     $7357                           ; BB86 AE 57 73                 .Ws
        cpx     #$FF                            ; BB89 E0 FF                    ..
        beq     BattleActionServices_Branch_BB93; BB8B F0 06                    ..
        brk                                     ; BB8D 00                       .
        db   $68,$53                         ; BB8E 68 53                    hS
; ----------------------------------------------------------------------------
        sta     $7357                           ; BB90 8D 57 73                 .Ws
BattleActionServices_Branch_BB93:
        ldx     $7358                           ; BB93 AE 58 73                 .Xs
        cpx     #$FF                            ; BB96 E0 FF                    ..
        beq     BattleActionServices_Branch_BBA0; BB98 F0 06                    ..
        brk                                     ; BB9A 00                       .
        db   $68,$53                         ; BB9B 68 53                    hS
; ----------------------------------------------------------------------------
        sta     $7358                           ; BB9D 8D 58 73                 .Xs
BattleActionServices_Branch_BBA0:
        rts                                     ; BBA0 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BBA1:
        brk                                     ; BBA1 00                       .
        db   $01,$1F                         ; BBA2 01 1F                    ..
; ----------------------------------------------------------------------------
        bmi     BattleActionServices_Branch_BBDB; BBA4 30 35                    05
        cmp     $7357                           ; BBA6 CD 57 73                 .Ws
        beq     BattleActionServices_Branch_BBB0; BBA9 F0 05                    ..
        cmp     $7358                           ; BBAB CD 58 73                 .Xs
        bne     BattleActionServices_Branch_BBDB; BBAE D0 2B                    .+
BattleActionServices_Branch_BBB0:
        lda     $7357                           ; BBB0 AD 57 73                 .Ws
        cmp     #$FF                            ; BBB3 C9 FF                    ..
        beq     BattleActionServices_Branch_BBC1; BBB5 F0 0A                    ..
        jsr     BattleActionServices_Entry_BBFA ; BBB7 20 FA BB                  ..
        brk                                     ; BBBA 00                       .
        db   $67,$73                         ; BBBB 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; BBBD AA                       .
        brk                                     ; BBBE 00                       .
        db   $5F,$53                         ; BBBF 5F 53                    _S
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BBC1:
        lda     $7358                           ; BBC1 AD 58 73                 .Xs
        cmp     #$FF                            ; BBC4 C9 FF                    ..
        beq     BattleActionServices_Branch_BBD5; BBC6 F0 0D                    ..
        jsr     BattleActionServices_Entry_BC06 ; BBC8 20 06 BC                  ..
        brk                                     ; BBCB 00                       .
        db   $67,$73                         ; BBCC 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; BBCE AA                       .
        lda     $7359                           ; BBCF AD 59 73                 .Ys
        brk                                     ; BBD2 00                       .
        db   $60,$73                         ; BBD3 60 73                    `s
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BBD5:
        jsr     BattleActionServices_Entry_8786 ; BBD5 20 86 87                  ..
        jsr     BattleActionServices_Entry_A3F7 ; BBD8 20 F7 A3                  ..
BattleActionServices_Branch_BBDB:
        brk                                     ; BBDB 00                       .
        db   $27,$0F                         ; BBDC 27 0F                    '.
; ----------------------------------------------------------------------------
        rts                                     ; BBDE 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BBDF:
        brk                                     ; BBDF 00                       .
        db   $06,$1F                         ; BBE0 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_BBEB; BBE2 B0 07                    ..
        brk                                     ; BBE4 00                       .
        db   $6A,$53                         ; BBE5 6A 53                    jS
; ----------------------------------------------------------------------------
        beq     BattleActionServices_Branch_BBEB; BBE7 F0 02                    ..
        clc                                     ; BBE9 18                       .
        rts                                     ; BBEA 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BBEB:
        sec                                     ; BBEB 38                       8
        rts                                     ; BBEC 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BBED:
        brk                                     ; BBED 00                       .
        db   $06,$1F                         ; BBEE 06 1F                    ..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_BBEB; BBF0 90 F9                    ..
        brk                                     ; BBF2 00                       .
        db   $29,$C3,$0A                     ; BBF3 29 C3 0A                 )..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_BBEB; BBF6 90 F3                    ..
        clc                                     ; BBF8 18                       .
        rts                                     ; BBF9 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BBFA:
        pha                                     ; BBFA 48                       H
        jsr     BattleActionServices_Entry_BC12 ; BBFB 20 12 BC                  ..
        lda     $BC53,y                         ; BBFE B9 53 BC                 .S.
        brk                                     ; BC01 00                       .
        db   $CC,$E3                         ; BC02 CC E3                    ..
; ----------------------------------------------------------------------------
        pla                                     ; BC04 68                       h
        rts                                     ; BC05 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BC06:
        pha                                     ; BC06 48                       H
        jsr     BattleActionServices_Entry_BC12 ; BC07 20 12 BC                  ..
        lda     $BC56,y                         ; BC0A B9 56 BC                 .V.
        brk                                     ; BC0D 00                       .
        db   $CC,$E3                         ; BC0E CC E3                    ..
; ----------------------------------------------------------------------------
        pla                                     ; BC10 68                       h
        rts                                     ; BC11 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BC12:
        brk                                     ; BC12 00                       .
        db   $67,$73                         ; BC13 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; BC15 AA                       .
        ldy     #$01                            ; BC16 A0 01                    ..
        brk                                     ; BC18 00                       .
        db   $46,$93,$07                     ; BC19 46 93 07                 F..
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_BC31; BC1C 90 13                    ..
        ldy     #$02                            ; BC1E A0 02                    ..
        brk                                     ; BC20 00                       .
        db   $46,$93,$06                     ; BC21 46 93 06                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_BC31; BC24 B0 0B                    ..
        brk                                     ; BC26 00                       .
        db   $46,$93,$10                     ; BC27 46 93 10                 F..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_BC31; BC2A B0 05                    ..
        stx     $F9                             ; BC2C 86 F9                    ..
        ldy     #$00                            ; BC2E A0 00                    ..
        rts                                     ; BC30 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BC31:
        stx     $FA                             ; BC31 86 FA                    ..
        brk                                     ; BC33 00                       .
        db   $62,$23,$03                     ; BC34 62 23 03                 b#.
; ----------------------------------------------------------------------------
        sta     $00                           ; BC37 85 00                    ..
        ldx     #$00                            ; BC39 A2 00                    ..
BattleActionServices_Branch_BC3B:
        brk                                     ; BC3B 00                       .
        db   $46,$83,$10,$03                 ; BC3C 46 83 10 03              F...
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_BC4B; BC40 90 09                    ..
        inx                                     ; BC42 E8                       .
        cpx     $00                           ; BC43 E4 00                    ..
        bcc     BattleActionServices_Branch_BC3B; BC45 90 F4                    ..
        lda     #$00                            ; BC47 A9 00                    ..
        beq     BattleActionServices_Branch_BC50; BC49 F0 05                    ..
BattleActionServices_Branch_BC4B:
        stx     $6E                             ; BC4B 86 6E                    .n
        brk                                     ; BC4D 00                       .
        db   $2E,$0F                         ; BC4E 2E 0F                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BC50:
        sta     $F9                             ; BC50 85 F9                    ..
        rts                                     ; BC52 60                       `
; ----------------------------------------------------------------------------
        db   $29,$2A,$66                     ; BC53 29 2A 66                 )*f
        db   $2B,$2C,$67                     ; BC56 2B 2C 67                 +,g
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BC59:
        rts                                     ; BC59 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BC5A:
        jsr     BattleActionServices_Entry_80C4 ; BC5A 20 C4 80                  ..
        bcc     BattleActionServices_Branch_BC59; BC5D 90 FA                    ..
        brk                                     ; BC5F 00                       .
        db   $4F,$33                         ; BC60 4F 33                    O3
; ----------------------------------------------------------------------------
        cmp     #$04                            ; BC62 C9 04                    ..
        bcc     BattleActionServices_Branch_BC59; BC64 90 F3                    ..
        brk                                     ; BC66 00                       .
        db   $5D,$33                         ; BC67 5D 33                    ]3
; ----------------------------------------------------------------------------
        bcc     BattleActionServices_Branch_BC59; BC69 90 EE                    ..
        lda     SaveGameStateFlags              ; BC6B AD 8E 61                 ..a
        and     #$07                            ; BC6E 29 07                    ).
        bne     BattleActionServices_Branch_BC59; BC70 D0 E7                    ..
        brk                                     ; BC72 00                       .
        db   $62,$23,$43                     ; BC73 62 23 43                 b#C
; ----------------------------------------------------------------------------
        bne     BattleActionServices_Branch_BC59; BC76 D0 E1                    ..
        brk                                     ; BC78 00                       .
        db   $62,$23,$83                     ; BC79 62 23 83                 b#.
; ----------------------------------------------------------------------------
        beq     BattleActionServices_Branch_BC59; BC7C F0 DB                    ..
        cmp     #$04                            ; BC7E C9 04                    ..
        bcc     BattleActionServices_Branch_BC84; BC80 90 02                    ..
        lda     #$04                            ; BC82 A9 04                    ..
BattleActionServices_Branch_BC84:
        sta     $00                           ; BC84 85 00                    ..
        ldx     #$03                            ; BC86 A2 03                    ..
        lda     #$FF                            ; BC88 A9 FF                    ..
BattleActionServices_Branch_BC8A:
        sta     $01,x                           ; BC8A 95 01                    ..
        dex                                     ; BC8C CA                       .
        bpl     BattleActionServices_Branch_BC8A; BC8D 10 FB                    ..
        ldx     #$00                            ; BC8F A2 00                    ..
BattleActionServices_Branch_BC91:
        stx     $6E                             ; BC91 86 6E                    .n
        lda     #$83                            ; BC93 A9 83                    ..
        brk                                     ; BC95 00                       .
        db   $2D,$0F                         ; BC96 2D 0F                    -.
; ----------------------------------------------------------------------------
        sta     $01,x                           ; BC98 95 01                    ..
        inx                                     ; BC9A E8                       .
        cpx     $00                           ; BC9B E4 00                    ..
        bcc     BattleActionServices_Branch_BC91; BC9D 90 F2                    ..
        ldx     #$03                            ; BC9F A2 03                    ..
BattleActionServices_Branch_BCA1:
        lda     $01,x                           ; BCA1 B5 01                    ..
        sta     $6E,x                           ; BCA3 95 6E                    .n
        dex                                     ; BCA5 CA                       .
        bpl     BattleActionServices_Branch_BCA1; BCA6 10 F9                    ..
        brk                                     ; BCA8 00                       .
        db   $5E,$33                         ; BCA9 5E 33                    ^3
; ----------------------------------------------------------------------------
        lda     #$00                            ; BCAB A9 00                    ..
        brk                                     ; BCAD 00                       .
        db   $06,$6F                         ; BCAE 06 6F                    .o
; ----------------------------------------------------------------------------
        brk                                     ; BCB0 00                       .
        db   $62,$23,$40                     ; BCB1 62 23 40                 b#@
; ----------------------------------------------------------------------------
        sta     $8E                             ; BCB4 85 8E                    ..
        ldx     #$00                            ; BCB6 A2 00                    ..
BattleActionServices_Branch_BCB8:
        txa                                     ; BCB8 8A                       .
        pha                                     ; BCB9 48                       H
        stx     $F9                             ; BCBA 86 F9                    ..
        brk                                     ; BCBC 00                       .
        db   $45,$93,$10                     ; BCBD 45 93 10                 E..
; ----------------------------------------------------------------------------
        brk                                     ; BCC0 00                       .
        db   $45,$93,$11                     ; BCC1 45 93 11                 E..
; ----------------------------------------------------------------------------
        brk                                     ; BCC4 00                       .
        db   $45,$93,$1B                     ; BCC5 45 93 1B                 E..
; ----------------------------------------------------------------------------
        brk                                     ; BCC8 00                       .
        db   $45,$93,$23                     ; BCC9 45 93 23                 E.#
; ----------------------------------------------------------------------------
        brk                                     ; BCCC 00                       .
        db   $45,$93,$24                     ; BCCD 45 93 24                 E.$
; ----------------------------------------------------------------------------
        brk                                     ; BCD0 00                       .
        db   $45,$93,$25                     ; BCD1 45 93 25                 E.%
; ----------------------------------------------------------------------------
        brk                                     ; BCD4 00                       .
        db   $CC,$D3,$2B                     ; BCD5 CC D3 2B                 ..+
; ----------------------------------------------------------------------------
        pla                                     ; BCD8 68                       h
        tax                                     ; BCD9 AA                       .
        inx                                     ; BCDA E8                       .
        cpx     $8E                             ; BCDB E4 8E                    ..
        bcc     BattleActionServices_Branch_BCB8; BCDD 90 D9                    ..
        jsr     BattleActionServices_Entry_8786 ; BCDF 20 86 87                  ..
        jsr     BattleActionServices_Entry_A3F7 ; BCE2 20 F7 A3                  ..
        brk                                     ; BCE5 00                       .
        db   $27,$0F                         ; BCE6 27 0F                    '.
; ----------------------------------------------------------------------------
        lda     $6E44                           ; BCE8 AD 44 6E                 .Dn
        ora     #$03                            ; BCEB 09 03                    ..
        sta     $6E44                           ; BCED 8D 44 6E                 .Dn
        rts                                     ; BCF0 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BCF1:
        brk                                     ; BCF1 00                       .
        db   $05,$1F                         ; BCF2 05 1F                    ..
; ----------------------------------------------------------------------------
        cmp     #$02                            ; BCF4 C9 02                    ..
        bne     BattleActionServices_Branch_BD4A; BCF6 D0 52                    .R
        brk                                     ; BCF8 00                       .
        db   $03,$1F                         ; BCF9 03 1F                    ..
; ----------------------------------------------------------------------------
        and     #$7F                            ; BCFB 29 7F                    ).
        cmp     #$08                            ; BCFD C9 08                    ..
        bne     BattleActionServices_Branch_BD4A; BCFF D0 49                    .I
        brk                                     ; BD01 00                       .
        db   $E0,$D3,$70                     ; BD02 E0 D3 70                 ..p
; ----------------------------------------------------------------------------
        brk                                     ; BD05 00                       .
        db   $06,$1F                         ; BD06 06 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_BD4C; BD08 B0 42                    .B
        brk                                     ; BD0A 00                       .
        db   $2B,$53                         ; BD0B 2B 53                    +S
; ----------------------------------------------------------------------------
        cmp     #$02                            ; BD0D C9 02                    ..
        bne     BattleActionServices_Branch_BD4C; BD0F D0 3B                    .;
        jsr     BattleActionServices_Entry_BD52 ; BD11 20 52 BD                  R.
        jsr     BattleActionServices_Entry_BD83 ; BD14 20 83 BD                  ..
        jsr     BattleActionServices_Entry_BF2E ; BD17 20 2E BF                  ..
        db   $B3                             ; BD1A B3                       .
; ----------------------------------------------------------------------------
        lda     $8E                             ; BD1B A5 8E                    ..
        cmp     #$07                            ; BD1D C9 07                    ..
        bne     BattleActionServices_Branch_BD28; BD1F D0 07                    ..
        brk                                     ; BD21 00                       .
        db   $E4,$D3,$77                     ; BD22 E4 D3 77                 ..w
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_BD2C; BD25 4C 2C BD                 L,.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BD28:
        brk                                     ; BD28 00                       .
        db   $E4,$D3,$72                     ; BD29 E4 D3 72                 ..r
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BD2C:
        ldx     $8E                             ; BD2C A6 8E                    ..
        lda     $BEA9,x                         ; BD2E BD A9 BE                 ...
        brk                                     ; BD31 00                       .
        db   $0A,$1F                         ; BD32 0A 1F                    ..
; ----------------------------------------------------------------------------
        ldy     #$40                            ; BD34 A0 40                    .@
        tax                                     ; BD36 AA                       .
        brk                                     ; BD37 00                       .
        db   $13,$3F                         ; BD38 13 3F                    .?
; ----------------------------------------------------------------------------
        pha                                     ; BD3A 48                       H
        brk                                     ; BD3B 00                       .
        db   $01,$1F                         ; BD3C 01 1F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; BD3E 00                       .
        db   $09,$1F                         ; BD3F 09 1F                    ..
; ----------------------------------------------------------------------------
        lda     #$00                            ; BD41 A9 00                    ..
        brk                                     ; BD43 00                       .
        db   $0C,$1F                         ; BD44 0C 1F                    ..
; ----------------------------------------------------------------------------
        pla                                     ; BD46 68                       h
        brk                                     ; BD47 00                       .
        db   $0B,$1F                         ; BD48 0B 1F                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BD4A:
        sec                                     ; BD4A 38                       8
        rts                                     ; BD4B 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BD4C:
        brk                                     ; BD4C 00                       .
        db   $E4,$D3,$71                     ; BD4D E4 D3 71                 ..q
; ----------------------------------------------------------------------------
        clc                                     ; BD50 18                       .
        rts                                     ; BD51 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BD52:
        lda     $72E8                           ; BD52 AD E8 72                 ..r
        brk                                     ; BD55 00                       .
        db   $2B,$0F                         ; BD56 2B 0F                    +.
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_BD5C; BD58 B0 02                    ..
        lda     #$08                            ; BD5A A9 08                    ..
BattleActionServices_Branch_BD5C:
        pha                                     ; BD5C 48                       H
        tax                                     ; BD5D AA                       .
        brk                                     ; BD5E 00                       .
        db   $29,$0F                         ; BD5F 29 0F                    ).
; ----------------------------------------------------------------------------
        eor     #$FF                            ; BD61 49 FF                    I.
        and     $72E8                           ; BD63 2D E8 72                 -.r
        sta     $72E8                           ; BD66 8D E8 72                 ..r
        pla                                     ; BD69 68                       h
        sta     $8E                             ; BD6A 85 8E                    ..
        asl     a                               ; BD6C 0A                       .
        asl     a                               ; BD6D 0A                       .
        asl     a                               ; BD6E 0A                       .
        asl     a                               ; BD6F 0A                       .
        sec                                     ; BD70 38                       8
        sbc     $8E                             ; BD71 E5 8E                    ..
        tax                                     ; BD73 AA                       .
        ldy     #$00                            ; BD74 A0 00                    ..
BattleActionServices_Branch_BD76:
        lda     Bank11_BattleDisplayRecords,x   ; BD76 BD 22 BE                 .".
        sta     $0554,y                         ; BD79 99 54 05                 .T.
        inx                                     ; BD7C E8                       .
        iny                                     ; BD7D C8                       .
        cpy     #$0F                            ; BD7E C0 0F                    ..
        bcc     BattleActionServices_Branch_BD76; BD80 90 F4                    ..
        rts                                     ; BD82 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BD83:
        brk                                     ; BD83 00                       .
        db   $9F,$FB                         ; BD84 9F FB                    ..
; ----------------------------------------------------------------------------
        lda     $05FC                           ; BD86 AD FC 05                 ...
        sta     $8A                             ; BD89 85 8A                    ..
        lda     $05FD                           ; BD8B AD FD 05                 ...
        sta     $8B                             ; BD8E 85 8B                    ..
        ldx     #$0C                            ; BD90 A2 0C                    ..
BattleActionServices_Branch_BD92:
        txa                                     ; BD92 8A                       .
        pha                                     ; BD93 48                       H
        sta     $05FC                           ; BD94 8D FC 05                 ...
        clc                                     ; BD97 18                       .
        adc     #$20                            ; BD98 69 20                    i
        sta     $05FD                           ; BD9A 8D FD 05                 ...
        jsr     UpperFixedEngine_Entry_C5B9     ; BD9D 20 B9 C5                  ..
        ldx     #$04                            ; BDA0 A2 04                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; BDA2 20 0C C9                  ..
        pla                                     ; BDA5 68                       h
        tax                                     ; BDA6 AA                       .
        dex                                     ; BDA7 CA                       .
        bpl     BattleActionServices_Branch_BD92; BDA8 10 E8                    ..
        lda     $8B                             ; BDAA A5 8B                    ..
        sta     $05FD                           ; BDAC 8D FD 05                 ...
        lda     $8A                             ; BDAF A5 8A                    ..
        sta     $05FC                           ; BDB1 8D FC 05                 ...
        jsr     UpperFixedEngine_Entry_C5B9     ; BDB4 20 B9 C5                  ..
        ldx     #$0F                            ; BDB7 A2 0F                    ..
        jmp     UpperFixedEngine_Entry_C90C     ; BDB9 4C 0C C9                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BDBC:
        jsr     BattleActionServices_Entry_BF2E ; BDBC 20 2E BF                  ..
        db   $81                             ; BDBF 81                       .
; ----------------------------------------------------------------------------
        ldx     #$18                            ; BDC0 A2 18                    ..
BattleActionServices_Branch_BDC2:
        lda     $05FC,x                         ; BDC2 BD FC 05                 ...
        sta     $0364,x                         ; BDC5 9D 64 03                 .d.
        dex                                     ; BDC8 CA                       .
        bpl     BattleActionServices_Branch_BDC2; BDC9 10 F7                    ..
        ldx     #$0B                            ; BDCB A2 0B                    ..
BattleActionServices_Branch_BDCD:
        txa                                     ; BDCD 8A                       .
        pha                                     ; BDCE 48                       H
        lda     #$30                            ; BDCF A9 30                    .0
        ldy     #$18                            ; BDD1 A0 18                    ..
BattleActionServices_Branch_BDD3:
        sta     $05FC,y                         ; BDD3 99 FC 05                 ...
        dey                                     ; BDD6 88                       .
        bne     BattleActionServices_Branch_BDD3; BDD7 D0 FA                    ..
        jsr     UpperFixedEngine_Entry_C5B9     ; BDD9 20 B9 C5                  ..
        ldx     #$01                            ; BDDC A2 01                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; BDDE 20 0C C9                  ..
        jsr     BattleActionServices_Entry_BDEE ; BDE1 20 EE BD                  ..
        ldx     #$01                            ; BDE4 A2 01                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; BDE6 20 0C C9                  ..
        pla                                     ; BDE9 68                       h
        tax                                     ; BDEA AA                       .
        dex                                     ; BDEB CA                       .
        bpl     BattleActionServices_Branch_BDCD; BDEC 10 DF                    ..
BattleActionServices_Entry_BDEE:
        ldx     #$18                            ; BDEE A2 18                    ..
BattleActionServices_Branch_BDF0:
        lda     $0364,x                         ; BDF0 BD 64 03                 .d.
        sta     $05FC,x                         ; BDF3 9D FC 05                 ...
        dex                                     ; BDF6 CA                       .
        bpl     BattleActionServices_Branch_BDF0; BDF7 10 F7                    ..
        jmp     UpperFixedEngine_Entry_C5B9     ; BDF9 4C B9 C5                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BDFC:
        jsr     BattleActionServices_Entry_A1A9 ; BDFC 20 A9 A1                  ..
        rts                                     ; BDFF 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BE00:
        brk                                     ; BE00 00                       .
        db   $07,$1F                         ; BE01 07 1F                    ..
; ----------------------------------------------------------------------------
        bcs     BattleActionServices_Branch_BE21; BE03 B0 1C                    ..
        brk                                     ; BE05 00                       .
        db   $01,$53                         ; BE06 01 53                    .S
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C891     ; BE08 20 91 C8                  ..
        and     #$3F                            ; BE0B 29 3F                    )?
        adc     #$40                            ; BE0D 69 40                    i@
        ldx     #$72                            ; BE0F A2 72                    .r
        brk                                     ; BE11 00                       .
        db   $10,$3F                         ; BE12 10 3F                    .?
; ----------------------------------------------------------------------------
        lda     $73                             ; BE14 A5 73                    .s
        sta     $7361                           ; BE16 8D 61 73                 .as
        lda     $74                             ; BE19 A5 74                    .t
        sta     $7362                           ; BE1B 8D 62 73                 .bs
        jsr     BattleActionServices_Entry_90DB ; BE1E 20 DB 90                  ..
BattleActionServices_Branch_BE21:
        rts                                     ; BE21 60                       `
; ----------------------------------------------------------------------------
Bank11_BattleDisplayRecords:
        db   $2E,$1F,$1D,$1E,$13,$0D,$0F,$40 ; BE22 2E 1F 1D 1E 13 0D 0F 40  .......@
        db   $00,$00,$00,$00,$00,$00,$00,$37 ; BE2A 00 00 00 00 00 00 00 37  .......7
        db   $1E,$1C,$0F,$18,$11,$1E,$12,$40 ; BE32 1E 1C 0F 18 11 1E 12 40  .......@
        db   $00,$00,$00,$00,$00,$00,$29,$20 ; BE3A 00 00 00 00 00 00 29 20  ......)
        db   $13,$16,$40,$00,$00,$00,$00,$00 ; BE42 13 16 40 00 00 00 00 00  ..@.....
        db   $00,$00,$00,$00,$00,$1E,$12,$0F ; BE4A 00 00 00 00 00 1E 12 0F  ........
        db   $00,$38,$19,$21,$0F,$1C,$40,$00 ; BE52 00 38 19 21 0F 1C 40 00  .8.!..@.
        db   $00,$00,$00,$00,$1E,$12,$0F,$00 ; BE5A 00 00 00 00 1E 12 0F 00  ........
        db   $37,$1E,$0B,$1C,$1D,$40,$00,$00 ; BE62 37 1E 0B 1C 1D 40 00 00  7....@..
        db   $00,$00,$00,$1E,$12,$0F,$00,$31 ; BE6A 00 00 00 1E 12 0F 00 31  .......1
        db   $19,$19,$18,$40,$00,$00,$00,$00 ; BE72 19 19 18 40 00 00 00 00  ...@....
        db   $00,$00,$1E,$12,$0F,$00,$37,$1F ; BE7A 00 00 1E 12 0F 00 37 1F  ......7.
        db   $18,$40,$00,$00,$00,$00,$00,$00 ; BE82 18 40 00 00 00 00 00 00  .@......
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; BE8A 00 00 00 00 00 00 00 00  ........
        db   $00,$00,$00,$00,$00,$00,$00,$00 ; BE92 00 00 00 00 00 00 00 00  ........
        db   $1E,$12,$0F,$00,$38,$0F,$1C,$17 ; BE9A 1E 12 0F 00 38 0F 1C 17  ....8...
        db   $13,$18,$0B,$1E,$19,$1C,$40     ; BEA2 13 18 0B 1E 19 1C 40     ......@
        db   $F9,$FC,$F8,$FB,$E3,$FD,$FE,$4C ; BEA9 F9 FC F8 FB E3 FD FE 4C  .......L
        db   $FA                             ; BEB1 FA                       .
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BEB2:
        ldx     #$00                            ; BEB2 A2 00                    ..
        stx     $0F                             ; BEB4 86 0F                    ..
BattleActionServices_Branch_BEB6:
        lda     BattleSlotDescriptors,x         ; BEB6 BD F4 72                 ..r
        and     #$70                            ; BEB9 29 70                    )p
        cmp     #$70                            ; BEBB C9 70                    .p
        beq     BattleActionServices_Branch_BEEB; BEBD F0 2C                    .,
        lda     BattleSlotDescriptors,x         ; BEBF BD F4 72                 ..r
        bmi     BattleActionServices_Branch_BED0; BEC2 30 0C                    0.
        and     #$0F                            ; BEC4 29 0F                    ).
        brk                                     ; BEC6 00                       .
        db   $67,$73                         ; BEC7 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; BEC9 AA                       .
        brk                                     ; BECA 00                       .
        db   $14,$53                         ; BECB 14 53                    .S
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_BED6; BECD 4C D6 BE                 L..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BED0:
        and     #$0F                            ; BED0 29 0F                    ).
        tax                                     ; BED2 AA                       .
        brk                                     ; BED3 00                       .
        db   $0E,$B3                         ; BED4 0E B3                    ..
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BED6:
        sta     $00                           ; BED6 85 00                    ..
        lsr     a                               ; BED8 4A                       J
        lsr     a                               ; BED9 4A                       J
        sta     $01                             ; BEDA 85 01                    ..
        lda     $00                           ; BEDC A5 00                    ..
        sec                                     ; BEDE 38                       8
        sbc     $01                             ; BEDF E5 01                    ..
        brk                                     ; BEE1 00                       .
        db   $17,$0F                         ; BEE2 17 0F                    ..
; ----------------------------------------------------------------------------
        clc                                     ; BEE4 18                       .
        adc     $01                             ; BEE5 65 01                    e.
        ldx     $0F                             ; BEE7 A6 0F                    ..
        sta     $02,x                         ; BEE9 95 02                    ..
BattleActionServices_Branch_BEEB:
        lda     $7348,x                         ; BEEB BD 48 73                 .Hs
        ora     #$0F                            ; BEEE 09 0F                    ..
        sta     $7348,x                         ; BEF0 9D 48 73                 .Hs
        inx                                     ; BEF3 E8                       .
        stx     $0F                             ; BEF4 86 0F                    ..
        cpx     #$0C                            ; BEF6 E0 0C                    ..
        bne     BattleActionServices_Branch_BEB6; BEF8 D0 BC                    ..
        ldy     #$00                            ; BEFA A0 00                    ..
BattleActionServices_Branch_BEFC:
        lda     #$00                            ; BEFC A9 00                    ..
        sta     $0E                             ; BEFE 85 0E                    ..
        ldx     #$0B                            ; BF00 A2 0B                    ..
BattleActionServices_Branch_BF02:
        lda     $7348,x                         ; BF02 BD 48 73                 .Hs
        and     #$0F                            ; BF05 29 0F                    ).
        cmp     #$0F                            ; BF07 C9 0F                    ..
        bne     BattleActionServices_Branch_BF17; BF09 D0 0C                    ..
        lda     $02,x                         ; BF0B B5 02                    ..
        cmp     $0E                             ; BF0D C5 0E                    ..
        beq     BattleActionServices_Branch_BF13; BF0F F0 02                    ..
        bcc     BattleActionServices_Branch_BF17; BF11 90 04                    ..
BattleActionServices_Branch_BF13:
        sta     $0E                             ; BF13 85 0E                    ..
        stx     $0F                             ; BF15 86 0F                    ..
BattleActionServices_Branch_BF17:
        dex                                     ; BF17 CA                       .
        bpl     BattleActionServices_Branch_BF02; BF18 10 E8                    ..
        ldx     $0F                             ; BF1A A6 0F                    ..
        sty     $00                           ; BF1C 84 00                    ..
        lda     $7348,x                         ; BF1E BD 48 73                 .Hs
        and     #$F0                            ; BF21 29 F0                    ).
        ora     $00                           ; BF23 05 00                    ..
        sta     $7348,x                         ; BF25 9D 48 73                 .Hs
        iny                                     ; BF28 C8                       .
        cpy     #$0C                            ; BF29 C0 0C                    ..
        bne     BattleActionServices_Branch_BEFC; BF2B D0 CF                    ..
        rts                                     ; BF2D 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BF2E:
        tsx                                     ; BF2E BA                       .
        clc                                     ; BF2F 18                       .
        lda     $0101,x                         ; BF30 BD 01 01                 ...
        adc     #$01                            ; BF33 69 01                    i.
        sta     $00                           ; BF35 85 00                    ..
        lda     $0102,x                         ; BF37 BD 02 01                 ...
        adc     #$00                            ; BF3A 69 00                    i.
        sta     $01                             ; BF3C 85 01                    ..
        ldy     #$00                            ; BF3E A0 00                    ..
        lda     ($00),y                       ; BF40 B1 00                    ..
        pha                                     ; BF42 48                       H
        lda     $00                           ; BF43 A5 00                    ..
        sta     $0101,x                         ; BF45 9D 01 01                 ...
        lda     $01                             ; BF48 A5 01                    ..
        sta     $0102,x                         ; BF4A 9D 02 01                 ...
        brk                                     ; BF4D 00                       .
        db   $13,$2F                         ; BF4E 13 2F                    ./
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BF50:
        pla                                     ; BF50 68                       h
        brk                                     ; BF51 00                       .
        db   $03,$9F                         ; BF52 03 9F                    ..
; ----------------------------------------------------------------------------
        rts                                     ; BF54 60                       `
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BF55:
        pha                                     ; BF55 48                       H
        brk                                     ; BF56 00                       .
        db   $13,$2F                         ; BF57 13 2F                    ./
; ----------------------------------------------------------------------------
        jmp     BattleActionServices_Branch_BF50; BF59 4C 50 BF                 LP.
; ----------------------------------------------------------------------------
BattleActionServices_Entry_BF5C:
        lda     $6BDE                           ; BF5C AD DE 6B                 ..k
        ora     #$80                            ; BF5F 09 80                    ..
        sta     $6BDE                           ; BF61 8D DE 6B                 ..k
        bit     $C000                           ; BF64 2C 00 C0                 ,..
        bvs     BattleActionServices_Branch_BFAE; BF67 70 45                    pE
BattleActionServices_Branch_BF69:
        brk                                     ; BF69 00                       .
        db   $07,$6F,$00                     ; BF6A 07 6F 00                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; BF6D C9 FF                    ..
        beq     BattleActionServices_Branch_BF69; BF6F F0 F8                    ..
        bne     BattleActionServices_Branch_BF77; BF71 D0 04                    ..
BattleActionServices_Branch_BF73:
        brk                                     ; BF73 00                       .
        db   $07,$6F,$00                     ; BF74 07 6F 00                 .o.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BF77:
        cmp     #$FF                            ; BF77 C9 FF                    ..
        beq     BattleActionServices_Branch_BF73; BF79 F0 F8                    ..
        cmp     #$F0                            ; BF7B C9 F0                    ..
        beq     BattleActionServices_Branch_BFAE; BF7D F0 2F                    ./
        sta     $8A                             ; BF7F 85 8A                    ..
BattleActionServices_Branch_BF81:
        brk                                     ; BF81 00                       .
        db   $07,$6F,$00                     ; BF82 07 6F 00                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; BF85 C9 FF                    ..
        beq     BattleActionServices_Branch_BFA2; BF87 F0 19                    ..
        ldx     $8A                             ; BF89 A6 8A                    ..
        sta     $6E45,x                         ; BF8B 9D 45 6E                 .En
BattleActionServices_Branch_BF8E:
        brk                                     ; BF8E 00                       .
        db   $07,$6F,$00                     ; BF8F 07 6F 00                 .o.
; ----------------------------------------------------------------------------
        cmp     #$00                            ; BF92 C9 00                    ..
        beq     BattleActionServices_Branch_BF8E; BF94 F0 F8                    ..
        cmp     #$FF                            ; BF96 C9 FF                    ..
        beq     BattleActionServices_Branch_BF81; BF98 F0 E7                    ..
        ldx     $8A                             ; BF9A A6 8A                    ..
        sta     $6E49,x                         ; BF9C 9D 49 6E                 .In
        jmp     BattleActionServices_Branch_BF73; BF9F 4C 73 BF                 Ls.
; ----------------------------------------------------------------------------
BattleActionServices_Branch_BFA2:
        ldx     $8A                             ; BFA2 A6 8A                    ..
        sta     $6E45,x                         ; BFA4 9D 45 6E                 .En
        lda     #$00                            ; BFA7 A9 00                    ..
        sta     $6E49,x                         ; BFA9 9D 49 6E                 .In
        beq     BattleActionServices_Branch_BF73; BFAC F0 C5                    ..
BattleActionServices_Branch_BFAE:
        jmp     UpperFixedEngine_Entry_C54E     ; BFAE 4C 4E C5                 LN.
; ----------------------------------------------------------------------------
Bank11_BattlePadding:
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFB1 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFB9 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFC1 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BFC9 FF FF FF FF FF FF FF FF  ........
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF     ; BFD1 FF FF FF FF FF FF FF     .......
Bank11_CompatibilityFooter:
        db   $78,$EE,$DF,$BF,$4C,$8E,$FF,$80 ; BFD8 78 EE DF BF 4C 8E FF 80  x...L...
        db   $20,$44,$52,$41,$47,$4F,$4E,$20 ; BFE0 20 44 52 41 47 4F 4E 20   DRAGON
        db   $51,$55,$45,$53,$54,$20,$49,$56 ; BFE8 51 55 45 53 54 20 49 56  QUEST IV
        db   $00,$00,$00,$00,$48,$04,$01,$0E ; BFF0 00 00 00 00 48 04 01 0E  ....H...
        db   $07,$9E,$D8,$BF,$D8,$BF,$D8,$BF ; BFF8 07 9E D8 BF D8 BF D8 BF  ........
Bank11_End:
