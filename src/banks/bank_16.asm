; PRG bank $16: ROM file $058010-$05C00F
; CPU window $8000-$BFFF
; Disassembled by project-local da65 using generated code/data ranges.

base $8000
Bank16_Start:
; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------
Bank16_TextUiDirectory:
        db   $08,$8A,$18,$8A,$A4,$8A,$A5,$8A ; 8000 08 8A 18 8A A4 8A A5 8A  ........
        db   $28,$80,$52,$86,$64,$86,$45,$8A ; 8008 28 80 52 86 64 86 45 8A  (.R.d.E.
        db   $86,$87,$72,$8A,$92,$88,$32,$89 ; 8010 86 87 72 8A 92 88 32 89  ..r...2.
        db   $31,$BD,$B3,$98,$41,$BD,$75,$BB ; 8018 31 BD B3 98 41 BD 75 BB  1...A.u.
        db   $78,$BA,$9F,$BA,$AE,$BA,$B3,$BA ; 8020 78 BA 9F BA AE BA B3 BA  x.......
; ----------------------------------------------------------------------------
Bank16_TextUiServices:
        jsr     TextUiSystem_Entry_872B         ; 8028 20 2B 87                  +.
        jsr     TextUiSystem_Entry_85C8         ; 802B 20 C8 85                  ..
        jsr     TextUiSystem_Entry_85F9         ; 802E 20 F9 85                  ..
        jsr     TextUiSystem_Entry_8036         ; 8031 20 36 80                  6.
        sec                                     ; 8034 38                       8
        rts                                     ; 8035 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8036:
        jsr     TextUiSystem_Entry_803F         ; 8036 20 3F 80                  ?.
        jsr     TextUiSystem_Entry_8094         ; 8039 20 94 80                  ..
        jmp     TextUiSystem_Entry_8036         ; 803C 4C 36 80                 L6.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_803F:
        lda     $5C                             ; 803F A5 5C                    .\
        bne     $8091                           ; 8041 D0 4E                    .N
        jsr     TextUiSystem_Entry_8678         ; 8043 20 78 86                  x.
        lda     $55                             ; 8046 A5 55                    .U
        beq     $8089                           ; 8048 F0 3F                    .?
        ldx     #$06                            ; 804A A2 06                    ..
        jsr     TextUiSystem_Entry_8051         ; 804C 20 51 80                  Q.
        ldx     #$09                            ; 804F A2 09                    ..
TextUiSystem_Entry_8051:
        lda     $6E8A,x                         ; 8051 BD 8A 6E                 ..n
        cmp     #$46                            ; 8054 C9 46                    .F
        bne     $8089                           ; 8056 D0 31                    .1
        lda     $6E89,x                         ; 8058 BD 89 6E                 ..n
        cmp     #$6A                            ; 805B C9 6A                    .j
        beq     $8089                           ; 805D F0 2A                    .*
        cmp     #$6C                            ; 805F C9 6C                    .l
        beq     $8089                           ; 8061 F0 26                    .&
        cmp     #$44                            ; 8063 C9 44                    .D
        beq     $8089                           ; 8065 F0 22                    ."
        cmp     #$41                            ; 8067 C9 41                    .A
        beq     $8089                           ; 8069 F0 1E                    ..
        cmp     #$4B                            ; 806B C9 4B                    .K
        beq     $8089                           ; 806D F0 1A                    ..
        cmp     #$40                            ; 806F C9 40                    .@
        beq     $8089                           ; 8071 F0 16                    ..
        cmp     #$78                            ; 8073 C9 78                    .x
        beq     $8084                           ; 8075 F0 0D                    ..
        lda     #$46                            ; 8077 A9 46                    .F
        sta     $6E8B,x                         ; 8079 9D 8B 6E                 ..n
        lda     #$6A                            ; 807C A9 6A                    .j
        sta     $6E8A,x                         ; 807E 9D 8A 6E                 ..n
        jmp     $8089                           ; 8081 4C 89 80                 L..
; ----------------------------------------------------------------------------
        lda     #$6C                            ; 8084 A9 6C                    .l
        sta     $6E89,x                         ; 8086 9D 89 6E                 ..n
        lda     #$00                            ; 8089 A9 00                    ..
        sta     $5D                             ; 808B 85 5D                    .]
        tya                                     ; 808D 98                       .
        sta     $57                             ; 808E 85 57                    .W
        rts                                     ; 8090 60                       `
; ----------------------------------------------------------------------------
        lda     $5D                             ; 8091 A5 5D                    .]
        rts                                     ; 8093 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8094:
        cmp     #$40                            ; 8094 C9 40                    .@
        bcc     TextUiSystem_Branch_80B5        ; 8096 90 1D                    ..
        cmp     #$59                            ; 8098 C9 59                    .Y
        bcs     TextUiSystem_Branch_80B5        ; 809A B0 19                    ..
        sta     $5D                             ; 809C 85 5D                    .]
        cmp     #$52                            ; 809E C9 52                    .R
        bcc     $80A4                           ; 80A0 90 02                    ..
        lda     #$52                            ; 80A2 A9 52                    .R
        and     #$1F                            ; 80A4 29 1F                    ).
        asl     a                               ; 80A6 0A                       .
        tax                                     ; 80A7 AA                       .
        lda     Bank16_TextCommandHandlerPointers,x; 80A8 BD C4 80              ...
        sta     $00                           ; 80AB 85 00                    ..
        lda     $80C5,x                         ; 80AD BD C5 80                 ...
        sta     $01                             ; 80B0 85 01                    ..
        jmp     ($0000)                         ; 80B2 6C 00 00                 l..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_80B5:
        pha                                     ; 80B5 48                       H
        jsr     TextUiSystem_Entry_868F         ; 80B6 20 8F 86                  ..
        jsr     TextUiSystem_Entry_80EA         ; 80B9 20 EA 80                  ..
        pla                                     ; 80BC 68                       h
        jsr     TextUiSystem_Entry_836B         ; 80BD 20 6B 83                  k.
        jsr     TextUiSystem_Entry_8373         ; 80C0 20 73 83                  s.
        rts                                     ; 80C3 60                       `
; ----------------------------------------------------------------------------
Bank16_TextCommandHandlerPointers:
        db   $24                             ; 80C4 24                       $
        db   $81,$40,$81,$53,$81,$46,$81,$5A ; 80C5 81 40 81 53 81 46 81 5A  .@.S.F.Z
        db   $81,$61,$81,$67,$81,$25,$82,$57 ; 80CD 81 61 81 67 81 25 82 57  .a.g.%.W
        db   $82,$6B,$82,$09,$83,$38,$81,$1B ; 80D5 82 6B 82 09 83 38 81 1B  .k...8..
        db   $83,$31,$83,$C7,$81,$0C,$81,$32 ; 80DD 83 31 83 C7 81 0C 81 32  .1.....2
        db   $83,$1C,$82,$EA,$81             ; 80E5 83 1C 82 EA 81           .....
; ----------------------------------------------------------------------------
TextUiSystem_Entry_80EA:
        lda     $5C                             ; 80EA A5 5C                    .\
        bne     $810B                           ; 80EC D0 1D                    ..
        lda     $60                             ; 80EE A5 60                    .`
        bne     $8107                           ; 80F0 D0 15                    ..
        ldx     $52                             ; 80F2 A6 52                    .R
        lda     $06A9,x                         ; 80F4 BD A9 06                 ...
        cmp     #$78                            ; 80F7 C9 78                    .x
        bne     $810B                           ; 80F9 D0 10                    ..
        lda     $5D                             ; 80FB A5 5D                    .]
        cmp     #$47                            ; 80FD C9 47                    .G
        beq     $810B                           ; 80FF F0 0A                    ..
        lda     $57                             ; 8101 A5 57                    .W
        cmp     #$6A                            ; 8103 C9 6A                    .j
        bne     TextUiSystem_Entry_8146         ; 8105 D0 3F                    .?
        lda     #$00                            ; 8107 A9 00                    ..
        sta     $60                             ; 8109 85 60                    .`
        rts                                     ; 810B 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_810C:
        jsr     TextUiSystem_Entry_8146         ; 810C 20 46 81                  F.
        jsr     TextUiSystem_Entry_816D         ; 810F 20 6D 81                  m.
        ldx     #$00                            ; 8112 A2 00                    ..
        stx     TextOutputX                     ; 8114 8E 51 05                 .Q.
        inx                                     ; 8117 E8                       .
        stx     $55                             ; 8118 86 55                    .U
        jsr     TextUiSystem_Entry_85E7         ; 811A 20 E7 85                  ..
        lda     #$69                            ; 811D A9 69                    .i
        sta     $57                             ; 811F 85 57                    .W
        jmp     TextUiSystem_Branch_80B5        ; 8121 4C B5 80                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8124:
        jsr     TextUiSystem_Entry_812A         ; 8124 20 2A 81                  *.
        pla                                     ; 8127 68                       h
        pla                                     ; 8128 68                       h
        rts                                     ; 8129 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_812A:
        lda     $0553                           ; 812A AD 53 05                 .S.
        bpl     TextUiSystem_Branch_8137        ; 812D 10 08                    ..
        lda     $050B                           ; 812F AD 0B 05                 ...
        beq     TextUiSystem_Branch_8137        ; 8132 F0 03                    ..
        jsr     UpperFixedEngine_Entry_C62D     ; 8134 20 2D C6                  -.
TextUiSystem_Branch_8137:
        rts                                     ; 8137 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8138:
        jsr     TextUiSystem_Entry_812A         ; 8138 20 2A 81                  *.
        ldx     #$1E                            ; 813B A2 1E                    ..
        jmp     UpperFixedEngine_Entry_C90C     ; 813D 4C 0C C9                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8140:
        jsr     TextUiSystem_Entry_83CD         ; 8140 20 CD 83                  ..
        jmp     TextUiSystem_Entry_81CC         ; 8143 4C CC 81                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8146:
        lda     TextOutputX                     ; 8146 AD 51 05                 .Q.
        cmp     $55                             ; 8149 C5 55                    .U
        beq     TextUiSystem_Branch_8150        ; 814B F0 03                    ..
        jmp     TextUiSystem_Entry_8140         ; 814D 4C 40 81                 L@.
; ----------------------------------------------------------------------------
TextUiSystem_Branch_8150:
        jmp     TextUiSystem_Entry_81CC         ; 8150 4C CC 81                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8153:
        jsr     TextUiSystem_Entry_8140         ; 8153 20 40 81                  @.
        jsr     TextUiSystem_Entry_816D         ; 8156 20 6D 81                  m.
        rts                                     ; 8159 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_815A:
        jsr     TextUiSystem_Entry_8146         ; 815A 20 46 81                  F.
        jsr     TextUiSystem_Entry_816D         ; 815D 20 6D 81                  m.
        rts                                     ; 8160 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8161:
        jsr     TextUiSystem_Entry_8140         ; 8161 20 40 81                  @.
        jmp     TextUiSystem_Entry_8124         ; 8164 4C 24 81                 L$.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8167:
        jsr     TextUiSystem_Entry_8146         ; 8167 20 46 81                  F.
        jmp     TextUiSystem_Entry_8124         ; 816A 4C 24 81                 L$.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_816D:
        lda     #$00                            ; 816D A9 00                    ..
        sta     TextOutputX                     ; 816F 8D 51 05                 .Q.
        jsr     TextUiSystem_Entry_85E7         ; 8172 20 E7 85                  ..
        jsr     TextUiSystem_Entry_81CC         ; 8175 20 CC 81                  ..
        bcs     $817E                           ; 8178 B0 04                    ..
        lda     #$00                            ; 817A A9 00                    ..
        sta     $55                             ; 817C 85 55                    .U
        lda     #$13                            ; 817E A9 13                    ..
        sta     $56                             ; 8180 85 56                    .V
        jsr     TextUiSystem_Entry_8393         ; 8182 20 93 83                  ..
        lda     $00                           ; 8185 A5 00                    ..
        clc                                     ; 8187 18                       .
        adc     #$0B                            ; 8188 69 0B                    i.
        sta     $00                           ; 818A 85 00                    ..
        lda     #$F8                            ; 818C A9 F8                    ..
        sta     $59                             ; 818E 85 59                    .Y
        jsr     TextUiSystem_Entry_8199         ; 8190 20 99 81                  ..
        jsr     TextUiSystem_Entry_81B0         ; 8193 20 B0 81                  ..
        jmp     $8190                           ; 8196 4C 90 81                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8199:
        ldx     #$80                            ; 8199 A2 80                    ..
        lda     $59                             ; 819B A5 59                    .Y
        bpl     TextUiSystem_Entry_81A1         ; 819D 10 02                    ..
        ldx     #$00                            ; 819F A2 00                    ..
TextUiSystem_Entry_81A1:
        txa                                     ; 81A1 8A                       .
        jsr     UpperFixedEngine_Entry_C65A     ; 81A2 20 5A C6                  Z.
        jsr     UpperFixedEngine_Entry_C62D     ; 81A5 20 2D C6                  -.
        lda     $59                             ; 81A8 A5 59                    .Y
        clc                                     ; 81AA 18                       .
        adc     #$08                            ; 81AB 69 08                    i.
        sta     $59                             ; 81AD 85 59                    .Y
        rts                                     ; 81AF 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_81B0:
        jsr     UpperFixedEngine_Entry_C8EC     ; 81B0 20 EC C8                  ..
        lda     ButtonsPressed                  ; 81B3 A5 14                    ..
        and     #$03                            ; 81B5 29 03                    ).
        beq     $81C6                           ; 81B7 F0 0D                    ..
        ldx     #$00                            ; 81B9 A2 00                    ..
        jsr     TextUiSystem_Entry_81A1         ; 81BB 20 A1 81                  ..
        brk                                     ; 81BE 00                       .
        db   $85,$FB                         ; 81BF 85 FB                    ..
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_83D2         ; 81C1 20 D2 83                  ..
        pla                                     ; 81C4 68                       h
        pla                                     ; 81C5 68                       h
        rts                                     ; 81C6 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_81C7:
        ldx     #$00                            ; 81C7 A2 00                    ..
        stx     $55                             ; 81C9 86 55                    .U
        rts                                     ; 81CB 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_81CC:
        lda     $55                             ; 81CC A5 55                    .U
        pha                                     ; 81CE 48                       H
        jsr     TextUiSystem_Entry_8626         ; 81CF 20 26 86                  &.
        cmp     #$01                            ; 81D2 C9 01                    ..
        beq     $81DB                           ; 81D4 F0 05                    ..
        pla                                     ; 81D6 68                       h
        sta     $55                             ; 81D7 85 55                    .U
        clc                                     ; 81D9 18                       .
        rts                                     ; 81DA 60                       `
; ----------------------------------------------------------------------------
        pla                                     ; 81DB 68                       h
        lda     #$00                            ; 81DC A9 00                    ..
        sta     TextOutputX                     ; 81DE 8D 51 05                 .Q.
        lda     #$01                            ; 81E1 A9 01                    ..
        sta     $55                             ; 81E3 85 55                    .U
        jsr     TextUiSystem_Entry_85E7         ; 81E5 20 E7 85                  ..
        sec                                     ; 81E8 38                       8
        rts                                     ; 81E9 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_81EA:
        lda     $5D                             ; 81EA A5 5D                    .]
        and     #$0F                            ; 81EC 29 0F                    ).
        tax                                     ; 81EE AA                       .
        lda     $8210,x                         ; 81EF BD 10 82                 ...
        cmp     #$40                            ; 81F2 C9 40                    .@
        bcc     TextUiSystem_Branch_81FA        ; 81F4 90 04                    ..
        clc                                     ; 81F6 18                       .
        adc     #$40                            ; 81F7 69 40                    i@
        sec                                     ; 81F9 38                       8
TextUiSystem_Branch_81FA:
        pha                                     ; 81FA 48                       H
        php                                     ; 81FB 08                       .
        brk                                     ; 81FC 00                       .
        db   $03,$9F                         ; 81FD 03 9F                    ..
; ----------------------------------------------------------------------------
        plp                                     ; 81FF 28                       (
        pla                                     ; 8200 68                       h
        bcs     TextUiSystem_Branch_8212        ; 8201 B0 0F                    ..
        cmp     #$0E                            ; 8203 C9 0E                    ..
        beq     TextUiSystem_Branch_8212        ; 8205 F0 0B                    ..
        ldx     #$0A                            ; 8207 A2 0A                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; 8209 20 0C C9                  ..
        brk                                     ; 820C 00                       .
        db   $07,$9F                         ; 820D 07 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 820F 00                       .
        db   $09,$9F                         ; 8210 09 9F                    ..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_8212:
        rts                                     ; 8212 60                       `
; ----------------------------------------------------------------------------
        db   $0E,$12,$1A,$2B,$41,$4E         ; 8213 0E 12 1A 2B 41 4E        ...+AN
; ----------------------------------------------------------------------------
TextUiSystem_Branch_8219:
        jmp     TextUiSystem_Branch_8338        ; 8219 4C 38 83                 L8.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_821C:
        ldx     $059C                           ; 821C AE 9C 05                 ...
        brk                                     ; 821F 00                       .
        db   $3D,$EF                         ; 8220 3D EF                    =.
; ----------------------------------------------------------------------------
        jmp     TextUiSystem_Entry_8124         ; 8222 4C 24 81                 L$.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8225:
        ldx     $5C                             ; 8225 A6 5C                    .\
        bne     TextUiSystem_Branch_8219        ; 8227 D0 F0                    ..
        lda     $FD                             ; 8229 A5 FD                    ..
        sta     $72                             ; 822B 85 72                    .r
        lda     $FE                             ; 822D A5 FE                    ..
        sta     $73                             ; 822F 85 73                    .s
        lda     $FF                             ; 8231 A5 FF                    ..
        sta     $74                             ; 8233 85 74                    .t
        jsr     TextUiSystem_Entry_BD31         ; 8235 20 31 BD                  1.
        ldx     #$00                            ; 8238 A2 00                    ..
        ldy     #$00                            ; 823A A0 00                    ..
TextUiSystem_Branch_823C:
        lda     $00,x                         ; 823C B5 00                    ..
        bne     TextUiSystem_Branch_8244        ; 823E D0 04                    ..
        inx                                     ; 8240 E8                       .
        jmp     TextUiSystem_Branch_823C        ; 8241 4C 3C 82                 L<.
; ----------------------------------------------------------------------------
TextUiSystem_Branch_8244:
        lda     $00,x                         ; 8244 B5 00                    ..
        sta     $0554,y                         ; 8246 99 54 05                 .T.
        inx                                     ; 8249 E8                       .
        iny                                     ; 824A C8                       .
        cpx     #$08                            ; 824B E0 08                    ..
        bcc     TextUiSystem_Branch_8244        ; 824D 90 F5                    ..
        lda     #$40                            ; 824F A9 40                    .@
        sta     $0554,y                         ; 8251 99 54 05                 .T.
        jmp     TextUiSystem_Branch_8336        ; 8254 4C 36 83                 L6.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8257:
        ldx     $5C                             ; 8257 A6 5C                    .\
        bne     TextUiSystem_Branch_8219        ; 8259 D0 BE                    ..
        jsr     TextUiSystem_Entry_8356         ; 825B 20 56 83                  V.
        ldx     #$0A                            ; 825E A2 0A                    ..
        stx     $60                             ; 8260 86 60                    .`
        brk                                     ; 8262 00                       .
        db   $04,$B7                         ; 8263 04 B7                    ..
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_835D         ; 8265 20 5D 83                  ].
        jmp     TextUiSystem_Branch_8336        ; 8268 4C 36 83                 L6.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_826B:
        ldx     $5C                             ; 826B A6 5C                    .\
        bne     TextUiSystem_Branch_8219        ; 826D D0 AA                    ..
        jsr     TextUiSystem_Entry_8356         ; 826F 20 56 83                  V.
        cmp     #$80                            ; 8272 C9 80                    ..
        bcs     TextUiSystem_Branch_829A        ; 8274 B0 24                    .$
        and     #$0F                            ; 8276 29 0F                    ).
        tax                                     ; 8278 AA                       .
        brk                                     ; 8279 00                       .
        db   $2A,$53                         ; 827A 2A 53                    *S
; ----------------------------------------------------------------------------
        ldx     #$00                            ; 827C A2 00                    ..
TextUiSystem_Branch_827E:
        lda     $03E3,x                         ; 827E BD E3 03                 ...
        sta     $0554,x                         ; 8281 9D 54 05                 .T.
        inx                                     ; 8284 E8                       .
        cpx     #$08                            ; 8285 E0 08                    ..
        bne     TextUiSystem_Branch_827E        ; 8287 D0 F5                    ..
TextUiSystem_Branch_8289:
        lda     $0553,x                         ; 8289 BD 53 05                 .S.
        bne     TextUiSystem_Branch_8292        ; 828C D0 04                    ..
        dex                                     ; 828E CA                       .
        jmp     TextUiSystem_Branch_8289        ; 828F 4C 89 82                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_8292:
        lda     #$40                            ; 8292 A9 40                    .@
        sta     $0554,x                         ; 8294 9D 54 05                 .T.
        jmp     TextUiSystem_Branch_8336        ; 8297 4C 36 83                 L6.
; ----------------------------------------------------------------------------
TextUiSystem_Branch_829A:
        pha                                     ; 829A 48                       H
        and     #$07                            ; 829B 29 07                    ).
        tax                                     ; 829D AA                       .
        brk                                     ; 829E 00                       .
        db   $29,$C3,$0C                     ; 829F 29 C3 0C                 )..
; ----------------------------------------------------------------------------
        bcc     TextUiSystem_Branch_82DB        ; 82A2 90 37                    .7
        brk                                     ; 82A4 00                       .
        db   $67,$73                         ; 82A5 67 73                    gs
; ----------------------------------------------------------------------------
        tax                                     ; 82A7 AA                       .
        brk                                     ; 82A8 00                       .
        db   $2A,$53                         ; 82A9 2A 53                    *S
; ----------------------------------------------------------------------------
        ldx     #$00                            ; 82AB A2 00                    ..
TextUiSystem_Branch_82AD:
        lda     $03E3,x                         ; 82AD BD E3 03                 ...
        sta     $0554,x                         ; 82B0 9D 54 05                 .T.
        inx                                     ; 82B3 E8                       .
        cpx     #$08                            ; 82B4 E0 08                    ..
        bne     TextUiSystem_Branch_82AD        ; 82B6 D0 F5                    ..
TextUiSystem_Branch_82B8:
        lda     $0553,x                         ; 82B8 BD 53 05                 .S.
        bne     TextUiSystem_Branch_82C1        ; 82BB D0 04                    ..
        dex                                     ; 82BD CA                       .
        jmp     TextUiSystem_Branch_82B8        ; 82BE 4C B8 82                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_82C1:
        ldy     #$09                            ; 82C1 A0 09                    ..
TextUiSystem_Branch_82C3:
        lda     $82D1,y                         ; 82C3 B9 D1 82                 ...
        sta     $0554,x                         ; 82C6 9D 54 05                 .T.
        inx                                     ; 82C9 E8                       .
        dey                                     ; 82CA 88                       .
        bpl     TextUiSystem_Branch_82C3        ; 82CB 10 F6                    ..
        pla                                     ; 82CD 68                       h
        jmp     TextUiSystem_Branch_8336        ; 82CE 4C 36 83                 L6.
; ----------------------------------------------------------------------------
        db   $40,$0F,$16,$0C,$1F,$19,$28,$00 ; 82D1 40 0F 16 0C 1F 19 28 00  @.....(.
        db   $1D,$6B                         ; 82D9 1D 6B                    .k
; ----------------------------------------------------------------------------
TextUiSystem_Branch_82DB:
        brk                                     ; 82DB 00                       .
        db   $2D,$B3                         ; 82DC 2D B3                    -.
; ----------------------------------------------------------------------------
        tax                                     ; 82DE AA                       .
        lda     $6E45,x                         ; 82DF BD 45 6E                 .En
        ldx     #$09                            ; 82E2 A2 09                    ..
        brk                                     ; 82E4 00                       .
        db   $04,$B7                         ; 82E5 04 B7                    ..
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_835D         ; 82E7 20 5D 83                  ].
        pla                                     ; 82EA 68                       h
        and     #$78                            ; 82EB 29 78                    )x
        lsr     a                               ; 82ED 4A                       J
        lsr     a                               ; 82EE 4A                       J
        lsr     a                               ; 82EF 4A                       J
        cmp     #$08                            ; 82F0 C9 08                    ..
        bcs     TextUiSystem_Branch_8306        ; 82F2 B0 12                    ..
        pha                                     ; 82F4 48                       H
        lda     #$65                            ; 82F5 A9 65                    .e
        sta     $0553,y                         ; 82F7 99 53 05                 .S.
        pla                                     ; 82FA 68                       h
        clc                                     ; 82FB 18                       .
        adc     #$25                            ; 82FC 69 25                    i%
        sta     $0554,y                         ; 82FE 99 54 05                 .T.
        lda     #$40                            ; 8301 A9 40                    .@
        sta     $0555,y                         ; 8303 99 55 05                 .U.
TextUiSystem_Branch_8306:
        jmp     TextUiSystem_Branch_8336        ; 8306 4C 36 83                 L6.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8309:
        ldx     $5C                             ; 8309 A6 5C                    .\
        bne     TextUiSystem_Branch_8338        ; 830B D0 2B                    .+
        jsr     TextUiSystem_Entry_8356         ; 830D 20 56 83                  V.
        ldx     #$08                            ; 8310 A2 08                    ..
        brk                                     ; 8312 00                       .
        db   $04,$B7                         ; 8313 04 B7                    ..
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_835D         ; 8315 20 5D 83                  ].
        jmp     TextUiSystem_Branch_8336        ; 8318 4C 36 83                 L6.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_831B:
        lda     $0554                           ; 831B AD 54 05                 .T.
        cmp     #$03                            ; 831E C9 03                    ..
        bcs     TextUiSystem_Branch_8329        ; 8320 B0 07                    ..
        lda     $0555                           ; 8322 AD 55 05                 .U.
        cmp     #$40                            ; 8325 C9 40                    .@
        beq     TextUiSystem_Branch_8330        ; 8327 F0 07                    ..
TextUiSystem_Branch_8329:
        lda     #$1D                            ; 8329 A9 1D                    ..
        sta     $57                             ; 832B 85 57                    .W
        jmp     TextUiSystem_Branch_80B5        ; 832D 4C B5 80                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_8330:
        rts                                     ; 8330 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8331:
        rts                                     ; 8331 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8332:
        ldx     $5C                             ; 8332 A6 5C                    .\
        bne     TextUiSystem_Branch_8338        ; 8334 D0 02                    ..
TextUiSystem_Branch_8336:
        ldx     #$00                            ; 8336 A2 00                    ..
TextUiSystem_Branch_8338:
        lda     $0554,x                         ; 8338 BD 54 05                 .T.
        sta     $57                             ; 833B 85 57                    .W
        cmp     #$40                            ; 833D C9 40                    .@
        beq     TextUiSystem_Branch_8346        ; 833F F0 05                    ..
        inc     $5C                             ; 8341 E6 5C                    .\
        jmp     TextUiSystem_Branch_80B5        ; 8343 4C B5 80                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_8346:
        lda     #$00                            ; 8346 A9 00                    ..
        sta     $5C                             ; 8348 85 5C                    .\
        sta     $60                             ; 834A 85 60                    .`
        lda     $0553,x                         ; 834C BD 53 05                 .S.
        cmp     #$78                            ; 834F C9 78                    .x
        bne     $8355                           ; 8351 D0 02                    ..
        sta     $60                             ; 8353 85 60                    .`
        rts                                     ; 8355 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8356:
        ldx     $5B                             ; 8356 A6 5B                    .[
        lda     $F9,x                           ; 8358 B5 F9                    ..
        inc     $5B                             ; 835A E6 5B                    .[
        rts                                     ; 835C 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_835D:
        ldy     #$00                            ; 835D A0 00                    ..
TextUiSystem_Branch_835F:
        lda     $03E3,y                         ; 835F B9 E3 03                 ...
        sta     $0554,y                         ; 8362 99 54 05                 .T.
        iny                                     ; 8365 C8                       .
        cmp     #$40                            ; 8366 C9 40                    .@
        bne     TextUiSystem_Branch_835F        ; 8368 D0 F5                    ..
        rts                                     ; 836A 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_836B:
        ldx     $52                             ; 836B A6 52                    .R
        sta     DialogueWindowText,x            ; 836D 9D AA 06                 ...
        inc     $52                             ; 8370 E6 52                    .R
        rts                                     ; 8372 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8373:
        lda     #$13                            ; 8373 A9 13                    ..
        sta     $56                             ; 8375 85 56                    .V
        jsr     TextUiSystem_Entry_8393         ; 8377 20 93 83                  ..
        jsr     TextUiSystem_Entry_8386         ; 837A 20 86 83                  ..
        jsr     TextUiSystem_Entry_83C0         ; 837D 20 C0 83                  ..
        jsr     TextUiSystem_Entry_83A4         ; 8380 20 A4 83                  ..
        jmp     $838B                           ; 8383 4C 8B 83                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8386:
        lda     $57                             ; 8386 A5 57                    .W
        jmp     UpperFixedEngine_Entry_C65A     ; 8388 4C 5A C6                 LZ.
; ----------------------------------------------------------------------------
        lda     $0553                           ; 838B AD 53 05                 .S.
        bmi     $83A3                           ; 838E 30 13                    0.
        jmp     UpperFixedEngine_Entry_C62D     ; 8390 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8393:
        lda     TextOutputX                     ; 8393 AD 51 05                 .Q.
        clc                                     ; 8396 18                       .
        adc     $53                             ; 8397 65 53                    eS
        sta     $00                           ; 8399 85 00                    ..
        lda     TextOutputY                     ; 839B AD 52 05                 .R.
        clc                                     ; 839E 18                       .
        adc     $56                             ; 839F 65 56                    eV
        sta     $01                             ; 83A1 85 01                    ..
        rts                                     ; 83A3 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_83A4:
        lda     $55                             ; 83A4 A5 55                    .U
        beq     $83BF                           ; 83A6 F0 17                    ..
        lda     $57                             ; 83A8 A5 57                    .W
        beq     $83BF                           ; 83AA F0 13                    ..
        cmp     #$69                            ; 83AC C9 69                    .i
        beq     $83BF                           ; 83AE F0 0F                    ..
        cmp     #$6A                            ; 83B0 C9 6A                    .j
        beq     $83BF                           ; 83B2 F0 0B                    ..
        cmp     #$6C                            ; 83B4 C9 6C                    .l
        beq     $83BF                           ; 83B6 F0 07                    ..
        cmp     #$72                            ; 83B8 C9 72                    .r
        beq     $83BF                           ; 83BA F0 03                    ..
        brk                                     ; 83BC 00                       .
        db   $96,$FB                         ; 83BD 96 FB                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 83BF 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_83C0:
        inc     TextOutputX                     ; 83C0 EE 51 05                 .Q.
        lda     TextOutputX                     ; 83C3 AD 51 05                 .Q.
        cmp     $54                             ; 83C6 C5 54                    .T
        bcc     TextUiSystem_Branch_83FA        ; 83C8 90 30                    .0
        jsr     TextUiSystem_Entry_870E         ; 83CA 20 0E 87                  ..
TextUiSystem_Entry_83CD:
        lda     $55                             ; 83CD A5 55                    .U
        sta     TextOutputX                     ; 83CF 8D 51 05                 .Q.
TextUiSystem_Entry_83D2:
        inc     TextOutputY                     ; 83D2 EE 52 05                 .R.
        jsr     TextUiSystem_Entry_85E7         ; 83D5 20 E7 85                  ..
        lda     $0553                           ; 83D8 AD 53 05                 .S.
        bpl     $83E5                           ; 83DB 10 08                    ..
        lda     $050B                           ; 83DD AD 0B 05                 ...
        beq     TextUiSystem_Branch_83FA        ; 83E0 F0 18                    ..
        jmp     UpperFixedEngine_Entry_C62D     ; 83E2 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
        lda     TextOutputY                     ; 83E5 AD 52 05                 .R.
        cmp     #$08                            ; 83E8 C9 08                    ..
        bne     TextUiSystem_Branch_83FA        ; 83EA D0 0E                    ..
        jsr     UpperFixedEngine_Entry_C62D     ; 83EC 20 2D C6                  -.
        jsr     TextUiSystem_Entry_83FB         ; 83EF 20 FB 83                  ..
        lda     #$07                            ; 83F2 A9 07                    ..
        sta     TextOutputY                     ; 83F4 8D 52 05                 .R.
        jsr     TextUiSystem_Entry_85E7         ; 83F7 20 E7 85                  ..
TextUiSystem_Branch_83FA:
        rts                                     ; 83FA 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_83FB:
        jsr     TextUiSystem_Entry_858F         ; 83FB 20 8F 85                  ..
        jsr     TextUiSystem_Entry_85AD         ; 83FE 20 AD 85                  ..
        lda     $6BDE                           ; 8401 AD DE 6B                 ..k
        bmi     $8424                           ; 8404 30 1E                    0.
        jsr     TextUiSystem_Entry_844F         ; 8406 20 4F 84                  O.
        jsr     TextUiSystem_Entry_8442         ; 8409 20 42 84                  B.
        jsr     TextUiSystem_Entry_848A         ; 840C 20 8A 84                  ..
        jsr     TextUiSystem_Entry_8442         ; 840F 20 42 84                  B.
        jsr     TextUiSystem_Entry_848A         ; 8412 20 8A 84                  ..
        jsr     TextUiSystem_Entry_8442         ; 8415 20 42 84                  B.
        jsr     TextUiSystem_Entry_848A         ; 8418 20 8A 84                  ..
        jsr     TextUiSystem_Entry_8442         ; 841B 20 42 84                  B.
        jsr     TextUiSystem_Entry_84C4         ; 841E 20 C4 84                  ..
        jmp     TextUiSystem_Entry_8442         ; 8421 4C 42 84                 LB.
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_84EE         ; 8424 20 EE 84                  ..
        jsr     TextUiSystem_Entry_8442         ; 8427 20 42 84                  B.
        jsr     TextUiSystem_Entry_8529         ; 842A 20 29 85                  ).
        jsr     TextUiSystem_Entry_8442         ; 842D 20 42 84                  B.
        jsr     TextUiSystem_Entry_8529         ; 8430 20 29 85                  ).
        jsr     TextUiSystem_Entry_8442         ; 8433 20 42 84                  B.
        jsr     TextUiSystem_Entry_8529         ; 8436 20 29 85                  ).
        jsr     TextUiSystem_Entry_8442         ; 8439 20 42 84                  B.
        jsr     TextUiSystem_Entry_8565         ; 843C 20 65 85                  e.
        jmp     TextUiSystem_Entry_8442         ; 843F 4C 42 84                 LB.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8442:
        brk                                     ; 8442 00                       .
        db   $13,$DF                         ; 8443 13 DF                    ..
; ----------------------------------------------------------------------------
        lda     $04F2                           ; 8445 AD F2 04                 ...
        clc                                     ; 8448 18                       .
        adc     #$10                            ; 8449 69 10                    i.
        sta     $04F2                           ; 844B 8D F2 04                 ...
        rts                                     ; 844E 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_844F:
        lda     #$86                            ; 844F A9 86                    ..
        sta     $0480                           ; 8451 8D 80 04                 ...
        lda     $58                             ; 8454 A5 58                    .X
        tay                                     ; 8456 A8                       .
        asl     a                               ; 8457 0A                       .
        tax                                     ; 8458 AA                       .
        dex                                     ; 8459 CA                       .
        lda     #$88                            ; 845A A9 88                    ..
        sta     $0480,x                         ; 845C 9D 80 04                 ...
        lda     #$84                            ; 845F A9 84                    ..
        sta     $0480,y                         ; 8461 99 80 04                 ...
        dey                                     ; 8464 88                       .
        lda     #$89                            ; 8465 A9 89                    ..
        sta     $0480,y                         ; 8467 99 80 04                 ...
        dey                                     ; 846A 88                       .
        lda     #$85                            ; 846B A9 85                    ..
        sta     $0480,y                         ; 846D 99 80 04                 ...
        dey                                     ; 8470 88                       .
        bne     $846D                           ; 8471 D0 FA                    ..
        ldy     $58                             ; 8473 A4 58                    .X
        iny                                     ; 8475 C8                       .
        lda     $54                             ; 8476 A5 54                    .T
        sta     $59                             ; 8478 85 59                    .Y
        ldx     #$00                            ; 847A A2 00                    ..
        lda     DialogueWindowText,x            ; 847C BD AA 06                 ...
        sta     $0480,y                         ; 847F 99 80 04                 ...
        iny                                     ; 8482 C8                       .
        inx                                     ; 8483 E8                       .
        dec     $59                             ; 8484 C6 59                    .Y
        bne     $847C                           ; 8486 D0 F4                    ..
        beq     TextUiSystem_Branch_84AE        ; 8488 F0 24                    .$
TextUiSystem_Entry_848A:
        jsr     TextUiSystem_Entry_85A2         ; 848A 20 A2 85                  ..
        lda     $58                             ; 848D A5 58                    .X
        tay                                     ; 848F A8                       .
        asl     a                               ; 8490 0A                       .
        tax                                     ; 8491 AA                       .
        dex                                     ; 8492 CA                       .
        lda     #$84                            ; 8493 A9 84                    ..
        sta     $0480                           ; 8495 8D 80 04                 ...
        sta     $0480,y                         ; 8498 99 80 04                 ...
        dey                                     ; 849B 88                       .
        lda     #$88                            ; 849C A9 88                    ..
        sta     $0480,x                         ; 849E 9D 80 04                 ...
        sta     $0480,y                         ; 84A1 99 80 04                 ...
        ldy     #$01                            ; 84A4 A0 01                    ..
        ldx     $5A                             ; 84A6 A6 5A                    .Z
        jsr     TextUiSystem_Entry_84B1         ; 84A8 20 B1 84                  ..
        jsr     TextUiSystem_Entry_84B1         ; 84AB 20 B1 84                  ..
TextUiSystem_Branch_84AE:
        stx     $5A                             ; 84AE 86 5A                    .Z
        rts                                     ; 84B0 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_84B1:
        lda     $54                             ; 84B1 A5 54                    .T
        sta     $59                             ; 84B3 85 59                    .Y
        lda     DialogueWindowText,x            ; 84B5 BD AA 06                 ...
        sta     $0480,y                         ; 84B8 99 80 04                 ...
        iny                                     ; 84BB C8                       .
        inx                                     ; 84BC E8                       .
        dec     $59                             ; 84BD C6 59                    .Y
        bne     $84B5                           ; 84BF D0 F4                    ..
        iny                                     ; 84C1 C8                       .
        iny                                     ; 84C2 C8                       .
        rts                                     ; 84C3 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_84C4:
        jsr     TextUiSystem_Entry_85A2         ; 84C4 20 A2 85                  ..
        lda     #$84                            ; 84C7 A9 84                    ..
        sta     $0480                           ; 84C9 8D 80 04                 ...
        lda     $58                             ; 84CC A5 58                    .X
        tay                                     ; 84CE A8                       .
        asl     a                               ; 84CF 0A                       .
        tax                                     ; 84D0 AA                       .
        dex                                     ; 84D1 CA                       .
        lda     #$87                            ; 84D2 A9 87                    ..
        sta     $0480,y                         ; 84D4 99 80 04                 ...
        lda     #$8B                            ; 84D7 A9 8B                    ..
        sta     $0480,x                         ; 84D9 9D 80 04                 ...
        dex                                     ; 84DC CA                       .
        dey                                     ; 84DD 88                       .
        lda     #$88                            ; 84DE A9 88                    ..
        sta     $0480,y                         ; 84E0 99 80 04                 ...
        dey                                     ; 84E3 88                       .
        lda     #$8A                            ; 84E4 A9 8A                    ..
        sta     $0480,x                         ; 84E6 9D 80 04                 ...
        dex                                     ; 84E9 CA                       .
        dey                                     ; 84EA 88                       .
        bne     $84E6                           ; 84EB D0 F9                    ..
        rts                                     ; 84ED 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_84EE:
        lda     #$86                            ; 84EE A9 86                    ..
        sta     $0481                           ; 84F0 8D 81 04                 ...
        lda     $58                             ; 84F3 A5 58                    .X
        tay                                     ; 84F5 A8                       .
        asl     a                               ; 84F6 0A                       .
        tax                                     ; 84F7 AA                       .
        dex                                     ; 84F8 CA                       .
        lda     #$88                            ; 84F9 A9 88                    ..
        sta     $0483,x                         ; 84FB 9D 83 04                 ...
        lda     #$84                            ; 84FE A9 84                    ..
        sta     $0483,y                         ; 8500 99 83 04                 ...
        dey                                     ; 8503 88                       .
        lda     #$89                            ; 8504 A9 89                    ..
        sta     $0481,y                         ; 8506 99 81 04                 ...
        dey                                     ; 8509 88                       .
        lda     #$85                            ; 850A A9 85                    ..
TextUiSystem_Branch_850C:
        sta     $0481,y                         ; 850C 99 81 04                 ...
        dey                                     ; 850F 88                       .
        bne     TextUiSystem_Branch_850C        ; 8510 D0 FA                    ..
        ldy     $58                             ; 8512 A4 58                    .X
        iny                                     ; 8514 C8                       .
        lda     $54                             ; 8515 A5 54                    .T
        sta     $59                             ; 8517 85 59                    .Y
        ldx     #$00                            ; 8519 A2 00                    ..
TextUiSystem_Branch_851B:
        lda     DialogueWindowText,x            ; 851B BD AA 06                 ...
        sta     $0483,y                         ; 851E 99 83 04                 ...
        iny                                     ; 8521 C8                       .
        inx                                     ; 8522 E8                       .
        dec     $59                             ; 8523 C6 59                    .Y
        bne     TextUiSystem_Branch_851B        ; 8525 D0 F4                    ..
        beq     TextUiSystem_Branch_84AE        ; 8527 F0 85                    ..
TextUiSystem_Entry_8529:
        jsr     TextUiSystem_Entry_85A2         ; 8529 20 A2 85                  ..
        lda     $58                             ; 852C A5 58                    .X
        tay                                     ; 852E A8                       .
        asl     a                               ; 852F 0A                       .
        tax                                     ; 8530 AA                       .
        dex                                     ; 8531 CA                       .
        lda     #$84                            ; 8532 A9 84                    ..
        sta     $0481                           ; 8534 8D 81 04                 ...
        sta     $0483,y                         ; 8537 99 83 04                 ...
        dey                                     ; 853A 88                       .
        lda     #$88                            ; 853B A9 88                    ..
        sta     $0483,x                         ; 853D 9D 83 04                 ...
        sta     $0481,y                         ; 8540 99 81 04                 ...
        ldy     #$02                            ; 8543 A0 02                    ..
        ldx     $5A                             ; 8545 A6 5A                    .Z
        jsr     TextUiSystem_Entry_8550         ; 8547 20 50 85                  P.
        jsr     TextUiSystem_Entry_8550         ; 854A 20 50 85                  P.
        stx     $5A                             ; 854D 86 5A                    .Z
        rts                                     ; 854F 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8550:
        lda     $54                             ; 8550 A5 54                    .T
        sta     $59                             ; 8552 85 59                    .Y
TextUiSystem_Branch_8554:
        lda     DialogueWindowText,x            ; 8554 BD AA 06                 ...
        sta     $0480,y                         ; 8557 99 80 04                 ...
        iny                                     ; 855A C8                       .
        inx                                     ; 855B E8                       .
        dec     $59                             ; 855C C6 59                    .Y
        bne     TextUiSystem_Branch_8554        ; 855E D0 F4                    ..
        iny                                     ; 8560 C8                       .
        iny                                     ; 8561 C8                       .
        iny                                     ; 8562 C8                       .
        iny                                     ; 8563 C8                       .
        rts                                     ; 8564 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8565:
        jsr     TextUiSystem_Entry_85A2         ; 8565 20 A2 85                  ..
        lda     #$84                            ; 8568 A9 84                    ..
        sta     $0481                           ; 856A 8D 81 04                 ...
        lda     $58                             ; 856D A5 58                    .X
        tay                                     ; 856F A8                       .
        asl     a                               ; 8570 0A                       .
        tax                                     ; 8571 AA                       .
        dex                                     ; 8572 CA                       .
        lda     #$87                            ; 8573 A9 87                    ..
        sta     $0483,y                         ; 8575 99 83 04                 ...
        lda     #$8B                            ; 8578 A9 8B                    ..
        sta     $0483,x                         ; 857A 9D 83 04                 ...
        dex                                     ; 857D CA                       .
        dey                                     ; 857E 88                       .
        lda     #$88                            ; 857F A9 88                    ..
        sta     $0481,y                         ; 8581 99 81 04                 ...
        dey                                     ; 8584 88                       .
        lda     #$8A                            ; 8585 A9 8A                    ..
TextUiSystem_Branch_8587:
        sta     $0483,x                         ; 8587 9D 83 04                 ...
        dex                                     ; 858A CA                       .
        dey                                     ; 858B 88                       .
        bne     TextUiSystem_Branch_8587        ; 858C D0 F9                    ..
        rts                                     ; 858E 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_858F:
        ldx     #$1C                            ; 858F A2 1C                    ..
        ldy     #$92                            ; 8591 A0 92                    ..
        lda     $6BDE                           ; 8593 AD DE 6B                 ..k
        bpl     $859C                           ; 8596 10 04                    ..
        ldx     #$1E                            ; 8598 A2 1E                    ..
        ldy     #$91                            ; 859A A0 91                    ..
        stx     $04F3                           ; 859C 8E F3 04                 ...
        sty     $04F2                           ; 859F 8C F2 04                 ...
TextUiSystem_Entry_85A2:
        ldx     #$37                            ; 85A2 A2 37                    .7
        lda     #$00                            ; 85A4 A9 00                    ..
        sta     $0480,x                         ; 85A6 9D 80 04                 ...
        dex                                     ; 85A9 CA                       .
        bpl     $85A6                           ; 85AA 10 FA                    ..
        rts                                     ; 85AC 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_85AD:
        ldy     $54                             ; 85AD A4 54                    .T
        ldx     #$00                            ; 85AF A2 00                    ..
        lda     DialogueWindowText,y            ; 85B1 B9 AA 06                 ...
        sta     DialogueWindowText,x            ; 85B4 9D AA 06                 ...
        iny                                     ; 85B7 C8                       .
        inx                                     ; 85B8 E8                       .
        cpx     #$A8                            ; 85B9 E0 A8                    ..
        bne     $85B1                           ; 85BB D0 F4                    ..
        lda     #$00                            ; 85BD A9 00                    ..
        sta     DialogueWindowText,x            ; 85BF 9D AA 06                 ...
        inx                                     ; 85C2 E8                       .
        cpx     #$C0                            ; 85C3 E0 C0                    ..
        bne     $85BF                           ; 85C5 D0 F8                    ..
        rts                                     ; 85C7 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_85C8:
        lda     #$00                            ; 85C8 A9 00                    ..
        sta     TextOutputX                     ; 85CA 8D 51 05                 .Q.
        sta     $5B                             ; 85CD 85 5B                    .[
        sta     $5C                             ; 85CF 85 5C                    .\
        sta     $60                             ; 85D1 85 60                    .`
        ldx     #$05                            ; 85D3 A2 05                    ..
        ldy     #$16                            ; 85D5 A0 16                    ..
        lda     $6BDE                           ; 85D7 AD DE 6B                 ..k
        bpl     $85DF                           ; 85DA 10 03                    ..
        dex                                     ; 85DC CA                       .
        iny                                     ; 85DD C8                       .
        iny                                     ; 85DE C8                       .
        stx     $53                             ; 85DF 86 53                    .S
        sty     $54                             ; 85E1 84 54                    .T
        iny                                     ; 85E3 C8                       .
        iny                                     ; 85E4 C8                       .
        sty     $58                             ; 85E5 84 58                    .X
TextUiSystem_Entry_85E7:
        lda     #$00                            ; 85E7 A9 00                    ..
        ldx     TextOutputY                     ; 85E9 AE 52 05                 .R.
        clc                                     ; 85EC 18                       .
        adc     $54                             ; 85ED 65 54                    eT
        dex                                     ; 85EF CA                       .
        bne     $85EC                           ; 85F0 D0 FA                    ..
        clc                                     ; 85F2 18                       .
        adc     TextOutputX                     ; 85F3 6D 51 05                 mQ.
        sta     $52                             ; 85F6 85 52                    .R
        rts                                     ; 85F8 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_85F9:
        ldx     #$00                            ; 85F9 A2 00                    ..
        stx     $55                             ; 85FB 86 55                    .U
        lda     $0595                           ; 85FD AD 95 05                 ...
        cmp     #$05                            ; 8600 C9 05                    ..
        bcc     $8617                           ; 8602 90 13                    ..
        jsr     Bank16_DecodeHuffmanSymbol      ; 8604 20 A8 87                  ..
        cmp     #$4E                            ; 8607 C9 4E                    .N
        beq     $8617                           ; 8609 F0 0C                    ..
        sta     $6E8B                           ; 860B 8D 8B 6E                 ..n
        lda     #$69                            ; 860E A9 69                    .i
        sta     $6E8A                           ; 8610 8D 8A 6E                 ..n
        ldx     #$02                            ; 8613 A2 02                    ..
        stx     $55                             ; 8615 86 55                    .U
        jsr     Bank16_DecodeHuffmanSymbol      ; 8617 20 A8 87                  ..
        ldx     $55                             ; 861A A6 55                    .U
        sta     $6E8A,x                         ; 861C 9D 8A 6E                 ..n
        inx                                     ; 861F E8                       .
        stx     $55                             ; 8620 86 55                    .U
        cpx     #$10                            ; 8622 E0 10                    ..
        bcc     $8617                           ; 8624 90 F1                    ..
TextUiSystem_Entry_8626:
        ldx     #$00                            ; 8626 A2 00                    ..
        lda     $6E8A,x                         ; 8628 BD 8A 6E                 ..n
        cmp     #$69                            ; 862B C9 69                    .i
        beq     $864D                           ; 862D F0 1E                    ..
        cmp     #$40                            ; 862F C9 40                    .@
        beq     $8648                           ; 8631 F0 15                    ..
        cmp     #$45                            ; 8633 C9 45                    .E
        beq     $8648                           ; 8635 F0 11                    ..
        cmp     #$46                            ; 8637 C9 46                    .F
        beq     $8648                           ; 8639 F0 0D                    ..
        cmp     #$42                            ; 863B C9 42                    .B
        beq     $8648                           ; 863D F0 09                    ..
        cmp     #$44                            ; 863F C9 44                    .D
        beq     $8648                           ; 8641 F0 05                    ..
        inx                                     ; 8643 E8                       .
        cpx     #$0D                            ; 8644 E0 0D                    ..
        bcc     $8628                           ; 8646 90 E0                    ..
        lda     #$00                            ; 8648 A9 00                    ..
        sta     $55                             ; 864A 85 55                    .U
        rts                                     ; 864C 60                       `
; ----------------------------------------------------------------------------
        lda     #$01                            ; 864D A9 01                    ..
        sta     $55                             ; 864F 85 55                    .U
        rts                                     ; 8651 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8652:
        ldx     #$00                            ; 8652 A2 00                    ..
        txa                                     ; 8654 8A                       .
TextUiSystem_Branch_8655:
        sta     DialogueWindowText,x            ; 8655 9D AA 06                 ...
        inx                                     ; 8658 E8                       .
        cpx     #$C0                            ; 8659 E0 C0                    ..
        bcc     TextUiSystem_Branch_8655        ; 865B 90 F8                    ..
        sta     TextOutputX                     ; 865D 8D 51 05                 .Q.
        sta     TextOutputY                     ; 8660 8D 52 05                 .R.
        rts                                     ; 8663 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8664:
        sta     TextOutputY                     ; 8664 8D 52 05                 .R.
        asl     a                               ; 8667 0A                       .
        tax                                     ; 8668 AA                       .
        jsr     WaitForNmi                      ; 8669 20 74 FF                  t.
        stx     $051A                           ; 866C 8E 1A 05                 ...
        lda     $1F                             ; 866F A5 1F                    ..
        ora     #$04                            ; 8671 09 04                    ..
        sta     $1F                             ; 8673 85 1F                    ..
        jmp     WaitForNmi                      ; 8675 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8678:
        jsr     Bank16_DecodeHuffmanSymbol      ; 8678 20 A8 87                  ..
        sta     $6E9A                           ; 867B 8D 9A 6E                 ..n
        ldy     $6E8A                           ; 867E AC 8A 6E                 ..n
        ldx     #$01                            ; 8681 A2 01                    ..
        lda     $6E8A,x                         ; 8683 BD 8A 6E                 ..n
        sta     $6E89,x                         ; 8686 9D 89 6E                 ..n
        inx                                     ; 8689 E8                       .
        cpx     #$11                            ; 868A E0 11                    ..
        bne     $8683                           ; 868C D0 F5                    ..
        rts                                     ; 868E 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_868F:
        lda     $54                             ; 868F A5 54                    .T
        sec                                     ; 8691 38                       8
        sbc     TextOutputX                     ; 8692 ED 51 05                 .Q.
        cmp     #$11                            ; 8695 C9 11                    ..
        bcs     TextUiSystem_Branch_8708        ; 8697 B0 6F                    .o
        tay                                     ; 8699 A8                       .
        ldx     $52                             ; 869A A6 52                    .R
        lda     $06A9,x                         ; 869C BD A9 06                 ...
        beq     $86B1                           ; 869F F0 10                    ..
        cmp     #$72                            ; 86A1 C9 72                    .r
        beq     $86B1                           ; 86A3 F0 0C                    ..
        cmp     #$6F                            ; 86A5 C9 6F                    .o
        beq     $86B1                           ; 86A7 F0 08                    ..
        cmp     #$69                            ; 86A9 C9 69                    .i
        beq     $86B1                           ; 86AB F0 04                    ..
        cmp     #$77                            ; 86AD C9 77                    .w
        bne     TextUiSystem_Branch_8708        ; 86AF D0 57                    .W
        lda     $57                             ; 86B1 A5 57                    .W
        beq     TextUiSystem_Branch_8708        ; 86B3 F0 53                    .S
        cmp     #$65                            ; 86B5 C9 65                    .e
        bcc     $86BD                           ; 86B7 90 04                    ..
        lda     $5C                             ; 86B9 A5 5C                    .\
        beq     TextUiSystem_Branch_8708        ; 86BB F0 4B                    .K
        ldx     $5C                             ; 86BD A6 5C                    .\
        beq     $86D7                           ; 86BF F0 16                    ..
TextUiSystem_Branch_86C1:
        lda     $0554,x                         ; 86C1 BD 54 05                 .T.
        cmp     #$40                            ; 86C4 C9 40                    .@
        beq     $86F3                           ; 86C6 F0 2B                    .+
        cmp     #$00                            ; 86C8 C9 00                    ..
        bne     TextUiSystem_Branch_86D0        ; 86CA D0 04                    ..
        lda     $60                             ; 86CC A5 60                    .`
        bne     TextUiSystem_Branch_8708        ; 86CE D0 38                    .8
TextUiSystem_Branch_86D0:
        inx                                     ; 86D0 E8                       .
        dey                                     ; 86D1 88                       .
        bne     TextUiSystem_Branch_86C1        ; 86D2 D0 ED                    ..
        jmp     TextUiSystem_Entry_83CD         ; 86D4 4C CD 83                 L..
; ----------------------------------------------------------------------------
        lda     $6E8A,x                         ; 86D7 BD 8A 6E                 ..n
        beq     TextUiSystem_Branch_8708        ; 86DA F0 2C                    .,
        cmp     #$6B                            ; 86DC C9 6B                    .k
        beq     $86EC                           ; 86DE F0 0C                    ..
        cmp     #$4C                            ; 86E0 C9 4C                    .L
        beq     $86EC                           ; 86E2 F0 08                    ..
        cmp     #$65                            ; 86E4 C9 65                    .e
        bcs     $86FD                           ; 86E6 B0 15                    ..
        cmp     #$40                            ; 86E8 C9 40                    .@
        bcs     TextUiSystem_Branch_8708        ; 86EA B0 1C                    ..
        inx                                     ; 86EC E8                       .
        dey                                     ; 86ED 88                       .
        bne     $86D7                           ; 86EE D0 E7                    ..
TextUiSystem_Branch_86F0:
        jmp     TextUiSystem_Entry_83CD         ; 86F0 4C CD 83                 L..
; ----------------------------------------------------------------------------
        ldx     #$FF                            ; 86F3 A2 FF                    ..
        iny                                     ; 86F5 C8                       .
        lda     $6E8A                           ; 86F6 AD 8A 6E                 ..n
        cmp     #$6B                            ; 86F9 C9 6B                    .k
        beq     $8709                           ; 86FB F0 0C                    ..
        inx                                     ; 86FD E8                       .
        dey                                     ; 86FE 88                       .
        beq     TextUiSystem_Branch_86F0        ; 86FF F0 EF                    ..
        lda     $6E8A,x                         ; 8701 BD 8A 6E                 ..n
        cmp     #$65                            ; 8704 C9 65                    .e
        bcs     $86FD                           ; 8706 B0 F5                    ..
TextUiSystem_Branch_8708:
        rts                                     ; 8708 60                       `
; ----------------------------------------------------------------------------
        cpy     #$04                            ; 8709 C0 04                    ..
        bcc     TextUiSystem_Branch_86F0        ; 870B 90 E3                    ..
        rts                                     ; 870D 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_870E:
        ldx     $5C                             ; 870E A6 5C                    .\
        beq     TextUiSystem_Branch_8722        ; 8710 F0 10                    ..
        lda     $0554,x                         ; 8712 BD 54 05                 .T.
        cmp     #$40                            ; 8715 C9 40                    .@
        beq     TextUiSystem_Branch_8722        ; 8717 F0 09                    ..
        cmp     #$00                            ; 8719 C9 00                    ..
        bne     TextUiSystem_Branch_872A        ; 871B D0 0D                    ..
        inc     $5C                             ; 871D E6 5C                    .\
        jmp     TextUiSystem_Branch_872A        ; 871F 4C 2A 87                 L*.
; ----------------------------------------------------------------------------
TextUiSystem_Branch_8722:
        lda     $6E8A                           ; 8722 AD 8A 6E                 ..n
        bne     TextUiSystem_Branch_872A        ; 8725 D0 03                    ..
        jsr     TextUiSystem_Entry_8678         ; 8727 20 78 86                  x.
TextUiSystem_Branch_872A:
        rts                                     ; 872A 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_872B:
        pha                                     ; 872B 48                       H
        jsr     Bank16_SelectTextGroup          ; 872C 20 4C 87                  L.
        jsr     TextUiSystem_Entry_8769         ; 872F 20 69 87                  i.
        jsr     UpperFixedEngine_Entry_DF7A     ; 8732 20 7A DF                  z.
        pla                                     ; 8735 68                       h
        ldx     #$00                            ; 8736 A2 00                    ..
        stx     $5E                             ; 8738 86 5E                    .^
        and     #$1F                            ; 873A 29 1F                    ).
        sta     $60                             ; 873C 85 60                    .`
        beq     $874B                           ; 873E F0 0B                    ..
        jsr     Bank16_DecodeHuffmanSymbol      ; 8740 20 A8 87                  ..
        cmp     #$46                            ; 8743 C9 46                    .F
        bne     $8740                           ; 8745 D0 F9                    ..
        dec     $60                             ; 8747 C6 60                    .`
        bne     $8740                           ; 8749 D0 F5                    ..
        rts                                     ; 874B 60                       `
; ----------------------------------------------------------------------------
Bank16_SelectTextGroup:
        stx     $0595                           ; 874C 8E 95 05                 ...
        stx     $5F                             ; 874F 86 5F                    ._
        asl     a                               ; 8751 0A                       .
        rol     $5F                             ; 8752 26 5F                    &_
        asl     a                               ; 8754 0A                       .
        rol     $5F                             ; 8755 26 5F                    &_
        asl     a                               ; 8757 0A                       .
        rol     $5F                             ; 8758 26 5F                    &_
        asl     $5F                             ; 875A 06 5F                    ._
        ldy     $5F                             ; 875C A4 5F                    ._
        lda     Bank16_TextGroupPointers,y      ; 875E B9 51 89                 .Q.
        sta     $49                             ; 8761 85 49                    .I
        lda     $8952,y                         ; 8763 B9 52 89                 .R.
        sta     $4A                             ; 8766 85 4A                    .J
        rts                                     ; 8768 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8769:
        tya                                     ; 8769 98                       .
        lsr     a                               ; 876A 4A                       J
        ldx     #$00                            ; 876B A2 00                    ..
        cmp     Bank16_TextBankThresholds,x     ; 876D DD 01 8A                 ...
        bcc     $8776                           ; 8770 90 04                    ..
        inx                                     ; 8772 E8                       .
        jmp     $876D                           ; 8773 4C 6D 87                 Lm.
; ----------------------------------------------------------------------------
        cpx     #$05                            ; 8776 E0 05                    ..
        bcc     TextUiSystem_Branch_8783        ; 8778 90 09                    ..
        bne     TextUiSystem_Branch_8781        ; 877A D0 05                    ..
        ldx     #$1A                            ; 877C A2 1A                    ..
        jmp     TextUiSystem_Branch_8783        ; 877E 4C 83 87                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_8781:
        ldx     #$1B                            ; 8781 A2 1B                    ..
TextUiSystem_Branch_8783:
        stx     $51                             ; 8783 86 51                    .Q
        rts                                     ; 8785 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8786:
        jsr     TextUiSystem_Entry_872B         ; 8786 20 2B 87                  +.
        lda     #$00                            ; 8789 A9 00                    ..
        sta     $00                           ; 878B 85 00                    ..
TextUiSystem_Branch_878D:
        jsr     Bank16_DecodeHuffmanSymbol      ; 878D 20 A8 87                  ..
        cmp     #$41                            ; 8790 C9 41                    .A
        beq     TextUiSystem_Branch_87A3        ; 8792 F0 0F                    ..
        cmp     #$43                            ; 8794 C9 43                    .C
        beq     TextUiSystem_Branch_87A3        ; 8796 F0 0B                    ..
        cmp     #$45                            ; 8798 C9 45                    .E
        beq     TextUiSystem_Branch_87A0        ; 879A F0 04                    ..
        cmp     #$46                            ; 879C C9 46                    .F
        bne     TextUiSystem_Branch_878D        ; 879E D0 ED                    ..
TextUiSystem_Branch_87A0:
        inc     $00                           ; 87A0 E6 00                    ..
        rts                                     ; 87A2 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_87A3:
        inc     $00                           ; 87A3 E6 00                    ..
        jmp     TextUiSystem_Branch_878D        ; 87A5 4C 8D 87                 L..
; ----------------------------------------------------------------------------
Bank16_DecodeHuffmanSymbol:
        lda     #$5C                            ; 87A8 A9 5C                    .\
        tay                                     ; 87AA A8                       .
        lda     $5E                             ; 87AB A5 5E                    .^
        cmp     #$18                            ; 87AD C9 18                    ..
        bne     $87BC                           ; 87AF D0 0B                    ..
        sty     $5F                             ; 87B1 84 5F                    ._
        jsr     UpperFixedEngine_Entry_DF7A     ; 87B3 20 7A DF                  z.
        ldy     $5F                             ; 87B6 A4 5F                    ._
        ldx     #$00                            ; 87B8 A2 00                    ..
        stx     $5E                             ; 87BA 86 5E                    .^
        inc     $5E                             ; 87BC E6 5E                    .^
        asl     $9A                             ; 87BE 06 9A                    ..
        rol     $99                             ; 87C0 26 99                    &.
        rol     $98                             ; 87C2 26 98                    &.
        bcc     $87CC                           ; 87C4 90 06                    ..
        lda     Bank16_HuffmanOneBranches,y     ; 87C6 B9 D8 87                 ...
        jmp     $87CF                           ; 87C9 4C CF 87                 L..
; ----------------------------------------------------------------------------
        lda     Bank16_HuffmanZeroBranches,y    ; 87CC B9 35 88                 .5.
        bmi     $87D5                           ; 87CF 30 04                    0.
        tay                                     ; 87D1 A8                       .
        jmp     $87AB                           ; 87D2 4C AB 87                 L..
; ----------------------------------------------------------------------------
        and     #$7F                            ; 87D5 29 7F                    ).
        rts                                     ; 87D7 60                       `
; ----------------------------------------------------------------------------
Bank16_HuffmanOneBranches:
        db   $89,$00,$D3,$84,$01,$D7,$D1,$03 ; 87D8 89 00 D3 84 01 D7 D1 03  ........
        db   $C1,$D6,$86,$07,$09,$B5,$82,$EF ; 87E0 C1 D6 86 07 09 B5 82 EF  ........
        db   $0B,$0C,$0E,$0F,$11,$81,$CC,$AA ; 87E8 0B 0C 0E 0F 11 81 CC AA  ........
        db   $13,$14,$15,$C3,$A2,$B0,$CE,$19 ; 87F0 13 14 15 C3 A2 B0 CE 19  ........
        db   $A8,$B3,$CB,$1B,$B1,$1C,$A6,$1E ; 87F8 A8 B3 CB 1B B1 1C A6 1E  ........
        db   $B4,$BD,$F1,$B7,$BB,$AC,$C4,$25 ; 8800 B4 BD F1 B7 BB AC C4 25  .......%
        db   $27,$ED,$29,$2A,$2B,$B8,$2D,$2E ; 8808 27 ED 29 2A 2B B8 2D 2E  '.)*+.-.
        db   $95,$30,$31,$EE,$8C,$34,$F8,$9A ; 8810 95 30 31 EE 8C 34 F8 9A  .01..4..
        db   $36,$38,$39,$8D,$3A,$A3,$97,$3E ; 8818 36 38 39 8D 3A A3 97 3E  689.:..>
        db   $8E,$9F,$42,$43,$45,$92,$47,$9C ; 8820 8E 9F 42 43 45 92 47 9C  ..BCE.G.
        db   $98,$8B,$9E,$99,$4D,$4F,$50,$52 ; 8828 98 8B 9E 99 4D 4F 50 52  ....MOPR
        db   $54,$55,$57,$59,$5B             ; 8830 54 55 57 59 5B           TUWY[
Bank16_HuffmanZeroBranches:
        db   $D4,$D8,$BC,$83,$88,$02,$85,$04 ; 8835 D4 D8 BC 83 88 02 85 04  ........
        db   $CA,$87,$05,$06,$08,$AE,$D5,$0A ; 883D CA 87 05 06 08 AE D5 0A  ........
        db   $C0,$D0,$0D,$BA,$10,$B9,$12,$C7 ; 8845 C0 D0 0D BA 10 B9 12 C7  ........
        db   $C8,$9B,$BE,$16,$17,$18,$94,$AB ; 884D C8 9B BE 16 17 18 94 AB  ........
        db   $B6,$1A,$A4,$AF,$A9,$B2,$1D,$A7 ; 8855 B6 1A A4 AF A9 B2 1D A7  ........
        db   $A5,$1F,$20,$21,$22,$23,$C9,$24 ; 885D A5 1F 20 21 22 23 C9 24  .. !"#.$
        db   $26,$28                         ; 8865 26 28                    &(
        db   $EA,$F2,$CF,$E9,$2C,$EC,$2F,$F7 ; 8867 EA F2 CF E9 2C EC 2F F7  ....,./.
        db   $A0,$32,$AD,$33,$EB,$35,$90,$37 ; 886F A0 32 AD 33 EB 35 90 37  .2.3.5.7
        db   $A1,$C6,$91,$3B,$3C,$3D,$3F,$40 ; 8877 A1 C6 91 3B 3C 3D 3F 40  ...;<=?@
        db   $41,$96,$44,$46,$93,$48,$9D,$49 ; 887F 41 96 44 46 93 48 9D 49  A.DF.H.I
        db   $4A,$4B,$4C,$4E,$8F,$51,$53,$80 ; 8887 4A 4B 4C 4E 8F 51 53 80  JKLN.QS.
        db   $56,$58,$5A                     ; 888F 56 58 5A                 VXZ
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8892:
        brk                                     ; 8892 00                       .
        db   $16,$EB                         ; 8893 16 EB                    ..
; ----------------------------------------------------------------------------
        bpl     $8867                           ; 8895 10 D0                    ..
        plp                                     ; 8897 28                       (
        jsr     TextUiSystem_Entry_891D         ; 8898 20 1D 89                  ..
        jsr     TextUiSystem_Entry_88C1         ; 889B 20 C1 88                  ..
        ldx     #$00                            ; 889E A2 00                    ..
TextUiSystem_Branch_88A0:
        lda     $7100,x                         ; 88A0 BD 00 71                 ..q
        pha                                     ; 88A3 48                       H
        lda     $7120,x                         ; 88A4 BD 20 71                 . q
        pha                                     ; 88A7 48                       H
        inx                                     ; 88A8 E8                       .
        cpx     #$20                            ; 88A9 E0 20                    .
        bne     TextUiSystem_Branch_88A0        ; 88AB D0 F3                    ..
        jsr     UpperFixedEngine_Entry_DFF1     ; 88AD 20 F1 DF                  ..
        ldx     #$1F                            ; 88B0 A2 1F                    ..
TextUiSystem_Branch_88B2:
        pla                                     ; 88B2 68                       h
        sta     $7120,x                         ; 88B3 9D 20 71                 . q
        pla                                     ; 88B6 68                       h
        sta     $7100,x                         ; 88B7 9D 00 71                 ..q
        dex                                     ; 88BA CA                       .
        bpl     TextUiSystem_Branch_88B2        ; 88BB 10 F5                    ..
        jsr     WaitForNmi                      ; 88BD 20 74 FF                  t.
        rts                                     ; 88C0 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_88C1:
        jsr     TextUiSystem_Entry_88F5         ; 88C1 20 F5 88                  ..
        bcs     $88E5                           ; 88C4 B0 1F                    ..
        jsr     TextUiSystem_Entry_890E         ; 88C6 20 0E 89                  ..
        bcs     $88E5                           ; 88C9 B0 1A                    ..
        jsr     TextUiSystem_Entry_8932         ; 88CB 20 32 89                  2.
        ldx     $55                             ; 88CE A6 55                    .U
        bcs     $88DD                           ; 88D0 B0 0B                    ..
        lda     $7020,x                         ; 88D2 BD 20 70                 . p
        and     #$EF                            ; 88D5 29 EF                    ).
        sta     $7020,x                         ; 88D7 9D 20 70                 . p
        jmp     $88E5                           ; 88DA 4C E5 88                 L..
; ----------------------------------------------------------------------------
        lda     $7020,x                         ; 88DD BD 20 70                 . p
        ora     #$10                            ; 88E0 09 10                    ..
        sta     $7020,x                         ; 88E2 9D 20 70                 . p
        inc     $55                             ; 88E5 E6 55                    .U
        ldx     $55                             ; 88E7 A6 55                    .U
        cpx     #$20                            ; 88E9 E0 20                    .
        bcs     $88F4                           ; 88EB B0 07                    ..
        lda     $7020,x                         ; 88ED BD 20 70                 . p
        cmp     #$FF                            ; 88F0 C9 FF                    ..
        bne     TextUiSystem_Entry_88C1         ; 88F2 D0 CD                    ..
        rts                                     ; 88F4 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_88F5:
        ldx     $55                             ; 88F5 A6 55                    .U
        lda     $6F60,x                         ; 88F7 BD 60 6F                 .`o
        sec                                     ; 88FA 38                       8
        sbc     $57                             ; 88FB E5 57                    .W
        sta     $5F                             ; 88FD 85 5F                    ._
        cmp     #$10                            ; 88FF C9 10                    ..
        bcs     $890D                           ; 8901 B0 0A                    ..
        lda     $6F80,x                         ; 8903 BD 80 6F                 ..o
        sec                                     ; 8906 38                       8
        sbc     $54                             ; 8907 E5 54                    .T
        sta     $60                             ; 8909 85 60                    .`
        cmp     #$0F                            ; 890B C9 0F                    ..
        rts                                     ; 890D 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_890E:
        ldx     $55                             ; 890E A6 55                    .U
        lda     $7140,x                         ; 8910 BD 40 71                 .@q
        and     #$E0                            ; 8913 29 E0                    ).
        cmp     $46                             ; 8915 C5 46                    .F
        bne     $891B                           ; 8917 D0 02                    ..
        clc                                     ; 8919 18                       .
        rts                                     ; 891A 60                       `
; ----------------------------------------------------------------------------
        sec                                     ; 891B 38                       8
        rts                                     ; 891C 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_891D:
        lda     $6F60                           ; 891D AD 60 6F                 .`o
        sec                                     ; 8920 38                       8
        sbc     #$08                            ; 8921 E9 08                    ..
        sta     $57                             ; 8923 85 57                    .W
        lda     $6F80                           ; 8925 AD 80 6F                 ..o
        sec                                     ; 8928 38                       8
        sbc     #$07                            ; 8929 E9 07                    ..
        sta     $54                             ; 892B 85 54                    .T
        lda     #$00                            ; 892D A9 00                    ..
        sta     $55                             ; 892F 85 55                    .U
        rts                                     ; 8931 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8932:
        lda     $60                             ; 8932 A5 60                    .`
        asl     a                               ; 8934 0A                       .
        tax                                     ; 8935 AA                       .
        inc     $5F                             ; 8936 E6 5F                    ._
        lda     $5F                             ; 8938 A5 5F                    ._
        cmp     #$09                            ; 893A C9 09                    ..
        bcc     TextUiSystem_Branch_8941        ; 893C 90 03                    ..
        sbc     #$08                            ; 893E E9 08                    ..
        inx                                     ; 8940 E8                       .
TextUiSystem_Branch_8941:
        tay                                     ; 8941 A8                       .
        lda     #$80                            ; 8942 A9 80                    ..
TextUiSystem_Branch_8944:
        lsr     a                               ; 8944 4A                       J
        dey                                     ; 8945 88                       .
        bne     TextUiSystem_Branch_8944        ; 8946 D0 FC                    ..
        rol     a                               ; 8948 2A                       *
        and     $076A,x                         ; 8949 3D 6A 07                 =j.
        clc                                     ; 894C 18                       .
        beq     TextUiSystem_Branch_8950        ; 894D F0 01                    ..
        sec                                     ; 894F 38                       8
TextUiSystem_Branch_8950:
        rts                                     ; 8950 60                       `
; ----------------------------------------------------------------------------
Bank16_TextGroupPointers:
        db   $00                             ; 8951 00                       .
        db   $80,$B6,$81,$B5,$83,$D6,$85,$13 ; 8952 80 B6 81 B5 83 D6 85 13  ........
        db   $88,$15,$89,$15,$89,$15,$89,$15 ; 895A 88 15 89 15 89 15 89 15  ........
        db   $89,$13,$8B,$1A,$8D,$3B,$8F,$5D ; 8962 89 13 8B 1A 8D 3B 8F 5D  .....;.]
        db   $91,$D7,$93,$F5,$95,$D8,$97,$D7 ; 896A 91 D7 93 F5 95 D8 97 D7  ........
        db   $99,$B6,$9C,$C7,$A0,$F2,$A3,$01 ; 8972 99 B6 9C C7 A0 F2 A3 01  ........
        db   $A7,$8D,$AA,$71,$AD,$C2,$AF,$D2 ; 897A A7 8D AA 71 AD C2 AF D2  ...q....
        db   $B2,$D8,$BB,$26,$80,$08,$87,$1B ; 8982 B2 D8 BB 26 80 08 87 1B  ...&....
        db   $8C,$86,$91,$15,$97,$17,$9C,$51 ; 898A 8C 86 91 15 97 17 9C 51  .......Q
        db   $A2,$89,$A6,$48,$AC,$74,$B1,$0C ; 8992 A2 89 A6 48 AC 74 B1 0C  ...H.t..
        db   $B6,$1C,$BA,$35,$BE,$E3,$83,$E3 ; 899A B6 1C BA 35 BE E3 83 E3  ...5....
        db   $83,$9C,$87,$AE,$8B,$94,$8F,$35 ; 89A2 83 9C 87 AE 8B 94 8F 35  .......5
        db   $94,$57,$98,$52,$9D,$F2,$A0,$21 ; 89AA 94 57 98 52 9D F2 A0 21  .W.R...!
        db   $A5,$88,$A9,$54,$AD,$AF,$B1,$3A ; 89B2 A5 88 A9 54 AD AF B1 3A  ...T...:
        db   $B7,$F3,$BC,$3C,$83,$B5,$87,$87 ; 89BA B7 F3 BC 3C 83 B5 87 87  ...<....
        db   $8D,$53,$95,$92,$9C,$39,$A3,$DD ; 89C2 8D 53 95 92 9C 39 A3 DD  .S...9..
        db   $A8,$67,$AE,$CC,$B2,$7C,$B7,$2B ; 89CA A8 67 AE CC B2 7C B7 2B  .g...|.+
        db   $BD,$CF,$81,$37,$87,$D6,$8C,$E6 ; 89D2 BD CF 81 37 87 D6 8C E6  ...7....
        db   $91,$E1,$98,$1F,$9F,$70,$A5,$E6 ; 89DA 91 E1 98 1F 9F 70 A5 E6  .....p..
        db   $AB,$5F,$B2,$04,$B9,$71,$80,$EA ; 89E2 AB 5F B2 04 B9 71 80 EA  ._...q..
        db   $86,$75,$8D,$6C,$92,$2D,$98,$E9 ; 89EA 86 75 8D 6C 92 2D 98 E9  .u.l.-..
        db   $9F,$DE,$A5,$42,$AB,$98,$B0,$35 ; 89F2 9F DE A5 42 AB 98 B0 35  ...B...5
        db   $B6,$5D,$BB,$94,$BA,$75,$BF     ; 89FA B6 5D BB 94 BA 75 BF     .]...u.
Bank16_TextBankThresholds:
        db   $1A,$28,$36,$41,$4B,$56,$FF     ; 8A01 1A 28 36 41 4B 56 FF     .(6AKV.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8A08:
        sta     $F6                             ; 8A08 85 F6                    ..
        stx     $F7                             ; 8A0A 86 F7                    ..
        tya                                     ; 8A0C 98                       .
        pha                                     ; 8A0D 48                       H
        jsr     TextUiSystem_Entry_8AA5         ; 8A0E 20 A5 8A                  ..
        pla                                     ; 8A11 68                       h
        tay                                     ; 8A12 A8                       .
        ldx     $F7                             ; 8A13 A6 F7                    ..
        lda     $F8                             ; 8A15 A5 F8                    ..
        rts                                     ; 8A17 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8A18:
        tya                                     ; 8A18 98                       .
        pha                                     ; 8A19 48                       H
        stx     $F7                             ; 8A1A 86 F7                    ..
        tsx                                     ; 8A1C BA                       .
        inc     $0105,x                         ; 8A1D FE 05 01                 ...
        bne     TextUiSystem_Branch_8A25        ; 8A20 D0 03                    ..
        inc     $0106,x                         ; 8A22 FE 06 01                 ...
TextUiSystem_Branch_8A25:
        lda     $0105,x                         ; 8A25 BD 05 01                 ...
        sta     $00                           ; 8A28 85 00                    ..
        lda     $0106,x                         ; 8A2A BD 06 01                 ...
        sta     $01                             ; 8A2D 85 01                    ..
        lda     $0517                           ; 8A2F AD 17 05                 ...
        ldx     #$00                            ; 8A32 A2 00                    ..
        ldy     #$00                            ; 8A34 A0 00                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; 8A36 20 EA C3                  ..
        sta     $F6                             ; 8A39 85 F6                    ..
        jsr     TextUiSystem_Entry_8AA5         ; 8A3B 20 A5 8A                  ..
        pla                                     ; 8A3E 68                       h
        tay                                     ; 8A3F A8                       .
        ldx     $F7                             ; 8A40 A6 F7                    ..
        lda     $F8                             ; 8A42 A5 F8                    ..
        rts                                     ; 8A44 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8A45:
        tya                                     ; 8A45 98                       .
        pha                                     ; 8A46 48                       H
        txa                                     ; 8A47 8A                       .
        pha                                     ; 8A48 48                       H
        tsx                                     ; 8A49 BA                       .
        inc     $0106,x                         ; 8A4A FE 06 01                 ...
        bne     TextUiSystem_Branch_8A52        ; 8A4D D0 03                    ..
        inc     $0107,x                         ; 8A4F FE 07 01                 ...
TextUiSystem_Branch_8A52:
        lda     $0106,x                         ; 8A52 BD 06 01                 ...
        sta     $00                           ; 8A55 85 00                    ..
        lda     $0107,x                         ; 8A57 BD 07 01                 ...
        sta     $01                             ; 8A5A 85 01                    ..
        lda     $0517                           ; 8A5C AD 17 05                 ...
        ldx     #$00                            ; 8A5F A2 00                    ..
        ldy     #$00                            ; 8A61 A0 00                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; 8A63 20 EA C3                  ..
        sta     $F6                             ; 8A66 85 F6                    ..
        jsr     TextUiSystem_Entry_8AA5         ; 8A68 20 A5 8A                  ..
        pla                                     ; 8A6B 68                       h
        tax                                     ; 8A6C AA                       .
        pla                                     ; 8A6D 68                       h
        tay                                     ; 8A6E A8                       .
        lda     $F8                             ; 8A6F A5 F8                    ..
        rts                                     ; 8A71 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8A72:
        tya                                     ; 8A72 98                       .
        pha                                     ; 8A73 48                       H
        txa                                     ; 8A74 8A                       .
        pha                                     ; 8A75 48                       H
        lda     $07B9                           ; 8A76 AD B9 07                 ...
        sta     $F7                             ; 8A79 85 F7                    ..
        tsx                                     ; 8A7B BA                       .
        inc     $0106,x                         ; 8A7C FE 06 01                 ...
        bne     TextUiSystem_Branch_8A84        ; 8A7F D0 03                    ..
        inc     $0107,x                         ; 8A81 FE 07 01                 ...
TextUiSystem_Branch_8A84:
        lda     $0106,x                         ; 8A84 BD 06 01                 ...
        sta     $00                           ; 8A87 85 00                    ..
        lda     $0107,x                         ; 8A89 BD 07 01                 ...
        sta     $01                             ; 8A8C 85 01                    ..
        lda     $0517                           ; 8A8E AD 17 05                 ...
        ldx     #$00                            ; 8A91 A2 00                    ..
        ldy     #$00                            ; 8A93 A0 00                    ..
        jsr     UpperFixedEngine_Entry_C3EA     ; 8A95 20 EA C3                  ..
        sta     $F6                             ; 8A98 85 F6                    ..
        jsr     TextUiSystem_Entry_8AA5         ; 8A9A 20 A5 8A                  ..
        pla                                     ; 8A9D 68                       h
        tax                                     ; 8A9E AA                       .
        pla                                     ; 8A9F 68                       h
        tay                                     ; 8AA0 A8                       .
        lda     $F8                             ; 8AA1 A5 F8                    ..
        rts                                     ; 8AA3 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8AA4:
        rts                                     ; 8AA4 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8AA5:
        lda     $F6                             ; 8AA5 A5 F6                    ..
        cmp     #$F0                            ; 8AA7 C9 F0                    ..
        bcs     TextUiSystem_Branch_8B28        ; 8AA9 B0 7D                    .}
        jsr     TextUiSystem_Entry_90C4         ; 8AAB 20 C4 90                  ..
        jsr     TextUiSystem_Entry_8BDA         ; 8AAE 20 DA 8B                  ..
        lda     #$00                            ; 8AB1 A9 00                    ..
TextUiSystem_Branch_8AB3:
        pha                                     ; 8AB3 48                       H
        jsr     TextUiSystem_Entry_9CCB         ; 8AB4 20 CB 9C                  ..
        jsr     TextUiSystem_Entry_9543         ; 8AB7 20 43 95                  C.
        jsr     TextUiSystem_Entry_95AF         ; 8ABA 20 AF 95                  ..
        jsr     TextUiSystem_Entry_95FF         ; 8ABD 20 FF 95                  ..
        jsr     TextUiSystem_Entry_963D         ; 8AC0 20 3D 96                  =.
        pla                                     ; 8AC3 68                       h
        cmp     #$03                            ; 8AC4 C9 03                    ..
        beq     TextUiSystem_Branch_8ACB        ; 8AC6 F0 03                    ..
        jsr     TextUiSystem_Entry_8F8C         ; 8AC8 20 8C 8F                  ..
TextUiSystem_Branch_8ACB:
        jsr     TextUiSystem_Entry_8FAA         ; 8ACB 20 AA 8F                  ..
        jsr     TextUiSystem_Entry_9022         ; 8ACE 20 22 90                  ".
        lda     $07B4                           ; 8AD1 AD B4 07                 ...
        and     #$08                            ; 8AD4 29 08                    ).
        beq     TextUiSystem_Branch_8AF7        ; 8AD6 F0 1F                    ..
        lda     $F5                             ; 8AD8 A5 F5                    ..
        and     #$20                            ; 8ADA 29 20                    )
        bne     TextUiSystem_Branch_8AF2        ; 8ADC D0 14                    ..
        jsr     TextUiSystem_Entry_8C96         ; 8ADE 20 96 8C                  ..
        lda     $03D4                           ; 8AE1 AD D4 03                 ...
        clc                                     ; 8AE4 18                       .
        adc     #$20                            ; 8AE5 69 20                    i
        sta     $03D4                           ; 8AE7 8D D4 03                 ...
        lda     $07B4                           ; 8AEA AD B4 07                 ...
        ora     #$08                            ; 8AED 09 08                    ..
        sta     $07B4                           ; 8AEF 8D B4 07                 ...
TextUiSystem_Branch_8AF2:
        lda     #$00                            ; 8AF2 A9 00                    ..
        jmp     TextUiSystem_Branch_8AB3        ; 8AF4 4C B3 8A                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_8AF7:
        jsr     TextUiSystem_Entry_90F0         ; 8AF7 20 F0 90                  ..
        lda     $03D4                           ; 8AFA AD D4 03                 ...
        and     #$1F                            ; 8AFD 29 1F                    ).
        cmp     #$01                            ; 8AFF C9 01                    ..
        bne     TextUiSystem_Branch_8AB3        ; 8B01 D0 B0                    ..
        lda     $07B4                           ; 8B03 AD B4 07                 ...
        bpl     $8B11                           ; 8B06 10 09                    ..
        lda     $F8                             ; 8B08 A5 F8                    ..
        pha                                     ; 8B0A 48                       H
        jsr     TextUiSystem_Entry_8C96         ; 8B0B 20 96 8C                  ..
        pla                                     ; 8B0E 68                       h
        sta     $F8                             ; 8B0F 85 F8                    ..
        lda     $F8                             ; 8B11 A5 F8                    ..
        cmp     #$F0                            ; 8B13 C9 F0                    ..
        bcc     TextUiSystem_Branch_8B27        ; 8B15 90 10                    ..
        cmp     #$FF                            ; 8B17 C9 FF                    ..
        beq     TextUiSystem_Branch_8B27        ; 8B19 F0 0C                    ..
        cmp     #$FE                            ; 8B1B C9 FE                    ..
        beq     TextUiSystem_Branch_8B27        ; 8B1D F0 08                    ..
        cmp     #$FD                            ; 8B1F C9 FD                    ..
        beq     TextUiSystem_Branch_8B27        ; 8B21 F0 04                    ..
        lda     #$F0                            ; 8B23 A9 F0                    ..
        sta     $F8                             ; 8B25 85 F8                    ..
TextUiSystem_Branch_8B27:
        rts                                     ; 8B27 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_8B28:
        cmp     #$FF                            ; 8B28 C9 FF                    ..
        beq     $8B63                           ; 8B2A F0 37                    .7
        cmp     #$FE                            ; 8B2C C9 FE                    ..
        bne     $8B48                           ; 8B2E D0 18                    ..
        asl     $03D4                           ; 8B30 0E D4 03                 ...
        asl     $03D4                           ; 8B33 0E D4 03                 ...
        asl     $03D4                           ; 8B36 0E D4 03                 ...
        lda     $F7                             ; 8B39 A5 F7                    ..
        lsr     a                               ; 8B3B 4A                       J
        ror     $03D4                           ; 8B3C 6E D4 03                 n..
        lsr     a                               ; 8B3F 4A                       J
        ror     $03D4                           ; 8B40 6E D4 03                 n..
        lsr     a                               ; 8B43 4A                       J
        ror     $03D4                           ; 8B44 6E D4 03                 n..
        rts                                     ; 8B47 60                       `
; ----------------------------------------------------------------------------
        lda     $07B4                           ; 8B48 AD B4 07                 ...
        and     #$04                            ; 8B4B 29 04                    ).
        beq     $8B60                           ; 8B4D F0 11                    ..
        lda     $03D4                           ; 8B4F AD D4 03                 ...
        clc                                     ; 8B52 18                       .
        adc     #$20                            ; 8B53 69 20                    i
        sta     $03D4                           ; 8B55 8D D4 03                 ...
        lda     $07B4                           ; 8B58 AD B4 07                 ...
        and     #$FB                            ; 8B5B 29 FB                    ).
        sta     $07B4                           ; 8B5D 8D B4 07                 ...
        jmp     TextUiSystem_Entry_8C96         ; 8B60 4C 96 8C                 L..
; ----------------------------------------------------------------------------
        lda     #$D1                            ; 8B63 A9 D1                    ..
        sta     $04F2                           ; 8B65 8D F2 04                 ...
        lda     #$1E                            ; 8B68 A9 1E                    ..
        sta     $04F3                           ; 8B6A 8D F3 04                 ...
        lda     #$0C                            ; 8B6D A9 0C                    ..
        sta     $03E1                           ; 8B6F 8D E1 03                 ...
        lda     $03E1                           ; 8B72 AD E1 03                 ...
        asl     a                               ; 8B75 0A                       .
        tax                                     ; 8B76 AA                       .
        lda     $076C,x                         ; 8B77 BD 6C 07                 .l.
        ora     $076D,x                         ; 8B7A 1D 6D 07                 .m.
        beq     $8BB6                           ; 8B7D F0 37                    .7
        lda     #$00                            ; 8B7F A9 00                    ..
        sta     $076C,x                         ; 8B81 9D 6C 07                 .l.
        sta     $076D,x                         ; 8B84 9D 6D 07                 .m.
        lda     #$0E                            ; 8B87 A9 0E                    ..
        sta     $0D                           ; 8B89 85 0D                    ..
        jsr     TextUiSystem_Entry_8DD4         ; 8B8B 20 D4 8D                  ..
        lda     $0D                           ; 8B8E A5 0D                    ..
        tay                                     ; 8B90 A8                       .
        dey                                     ; 8B91 88                       .
        lda     $04                             ; 8B92 A5 04                    ..
        sta     $04E0,y                         ; 8B94 99 E0 04                 ...
        lda     $0D                           ; 8B97 A5 0D                    ..
        asl     a                               ; 8B99 0A                       .
        tax                                     ; 8B9A AA                       .
        lda     $00                           ; 8B9B A5 00                    ..
        sta     $047E,x                         ; 8B9D 9D 7E 04                 .~.
        lda     $01                             ; 8BA0 A5 01                    ..
        sta     $047F,x                         ; 8BA2 9D 7F 04                 ...
        lda     $02                             ; 8BA5 A5 02                    ..
        sta     $049A,x                         ; 8BA7 9D 9A 04                 ...
        lda     $03                             ; 8BAA A5 03                    ..
        sta     $049B,x                         ; 8BAC 9D 9B 04                 ...
        dec     $0D                           ; 8BAF C6 0D                    ..
        bne     $8B8B                           ; 8BB1 D0 D8                    ..
        brk                                     ; 8BB3 00                       .
        db   $12,$DF                         ; 8BB4 12 DF                    ..
; ----------------------------------------------------------------------------
        lda     $04F2                           ; 8BB6 AD F2 04                 ...
        sec                                     ; 8BB9 38                       8
        sbc     #$10                            ; 8BBA E9 10                    ..
        sta     $04F2                           ; 8BBC 8D F2 04                 ...
        dec     $03E1                           ; 8BBF CE E1 03                 ...
        bpl     $8B72                           ; 8BC2 10 AE                    ..
        bit     $6BDE                           ; 8BC4 2C DE 6B                 ,.k
        bmi     $8BCC                           ; 8BC7 30 03                    0.
        jsr     TextUiSystem_Entry_8892         ; 8BC9 20 92 88                  ..
        lda     $03D4                           ; 8BCC AD D4 03                 ...
        and     #$1F                            ; 8BCF 29 1F                    ).
        sta     $03D4                           ; 8BD1 8D D4 03                 ...
        lda     #$00                            ; 8BD4 A9 00                    ..
        sta     $0788                           ; 8BD6 8D 88 07                 ...
        rts                                     ; 8BD9 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8BDA:
        lda     $F6                             ; 8BDA A5 F6                    ..
        jsr     TextUiSystem_Entry_9553         ; 8BDC 20 53 95                  S.
        asl     $07B4                           ; 8BDF 0E B4 07                 ...
        lsr     $07B4                           ; 8BE2 4E B4 07                 N..
        ldy     #$01                            ; 8BE5 A0 01                    ..
        lda     ($EE),y                         ; 8BE7 B1 EE                    ..
        and     #$04                            ; 8BE9 29 04                    ).
        beq     $8C04                           ; 8BEB F0 17                    ..
        iny                                     ; 8BED C8                       .
        lda     ($EE),y                         ; 8BEE B1 EE                    ..
        and     #$30                            ; 8BF0 29 30                    )0
        tay                                     ; 8BF2 A8                       .
        beq     $8C04                           ; 8BF3 F0 0F                    ..
        cmp     #$10                            ; 8BF5 C9 10                    ..
        beq     $8C54                           ; 8BF7 F0 5B                    .[
        cmp     #$30                            ; 8BF9 C9 30                    .0
        beq     $8C04                           ; 8BFB F0 07                    ..
        asl     $07B4                           ; 8BFD 0E B4 07                 ...
        sec                                     ; 8C00 38                       8
        ror     $07B4                           ; 8C01 6E B4 07                 n..
        lda     $0788                           ; 8C04 AD 88 07                 ...
        beq     TextUiSystem_Branch_8C5C        ; 8C07 F0 53                    .S
        jsr     TextUiSystem_Entry_9CCB         ; 8C09 20 CB 9C                  ..
        lda     $0788,x                         ; 8C0C BD 88 07                 ...
        cmp     $F6                             ; 8C0F C5 F6                    ..
        bne     $8C22                           ; 8C11 D0 0F                    ..
        cmp     #$00                            ; 8C13 C9 00                    ..
        beq     $8C1B                           ; 8C15 F0 04                    ..
        cmp     #$00                            ; 8C17 C9 00                    ..
        bne     TextUiSystem_Branch_8C31        ; 8C19 D0 16                    ..
        lda     $07A0,x                         ; 8C1B BD A0 07                 ...
        cmp     $F7                             ; 8C1E C5 F7                    ..
        beq     TextUiSystem_Branch_8C31        ; 8C20 F0 0F                    ..
        dex                                     ; 8C22 CA                       .
        bpl     $8C0C                           ; 8C23 10 E7                    ..
        lda     $03D4                           ; 8C25 AD D4 03                 ...
        clc                                     ; 8C28 18                       .
        adc     #$20                            ; 8C29 69 20                    i
        sta     $03D4                           ; 8C2B 8D D4 03                 ...
        jmp     TextUiSystem_Branch_8C5C        ; 8C2E 4C 5C 8C                 L\.
; ----------------------------------------------------------------------------
TextUiSystem_Branch_8C31:
        cpy     #$30                            ; 8C31 C0 30                    .0
        beq     $8C7F                           ; 8C33 F0 4A                    .J
        stx     $03DF                           ; 8C35 8E DF 03                 ...
        jsr     TextUiSystem_Entry_9CCB         ; 8C38 20 CB 9C                  ..
        cpx     $03DF                           ; 8C3B EC DF 03                 ...
        beq     TextUiSystem_Branch_8C5C        ; 8C3E F0 1C                    ..
        lda     $03D4                           ; 8C40 AD D4 03                 ...
        and     #$E0                            ; 8C43 29 E0                    ).
        ora     $03DF                           ; 8C45 0D DF 03                 ...
        rol     a                               ; 8C48 2A                       *
        rol     a                               ; 8C49 2A                       *
        rol     a                               ; 8C4A 2A                       *
        rol     a                               ; 8C4B 2A                       *
        and     #$77                            ; 8C4C 29 77                    )w
        sta     $03DF                           ; 8C4E 8D DF 03                 ...
        jmp     TextUiSystem_Branch_8CAC        ; 8C51 4C AC 8C                 L..
; ----------------------------------------------------------------------------
        lda     $03D4                           ; 8C54 AD D4 03                 ...
        and     #$1F                            ; 8C57 29 1F                    ).
        sta     $03D4                           ; 8C59 8D D4 03                 ...
TextUiSystem_Branch_8C5C:
        jsr     TextUiSystem_Entry_9CCB         ; 8C5C 20 CB 9C                  ..
        lda     $F6                             ; 8C5F A5 F6                    ..
        sta     $0788,x                         ; 8C61 9D 88 07                 ...
        lda     $F7                             ; 8C64 A5 F7                    ..
        sta     $07A0,x                         ; 8C66 9D A0 07                 ...
        lda     #$00                            ; 8C69 A9 00                    ..
        sta     $07A8,x                         ; 8C6B 9D A8 07                 ...
        rts                                     ; 8C6E 60                       `
; ----------------------------------------------------------------------------
        db   $20,$5C,$8C,$20,$96,$8C,$AD,$D4 ; 8C6F 20 5C 8C 20 96 8C AD D4   \. ....
        db   $03,$18,$69,$20,$8D,$D4,$03,$60 ; 8C77 03 18 69 20 8D D4 03 60  ..i ...`
; ----------------------------------------------------------------------------
        lda     $03D4                           ; 8C7F AD D4 03                 ...
        and     #$1F                            ; 8C82 29 1F                    ).
        sta     $03D4                           ; 8C84 8D D4 03                 ...
        txa                                     ; 8C87 8A                       .
        asl     a                               ; 8C88 0A                       .
        asl     a                               ; 8C89 0A                       .
        asl     a                               ; 8C8A 0A                       .
        asl     a                               ; 8C8B 0A                       .
        asl     a                               ; 8C8C 0A                       .
        ora     $03D4                           ; 8C8D 0D D4 03                 ...
        sta     $03D4                           ; 8C90 8D D4 03                 ...
        jmp     TextUiSystem_Branch_8C5C        ; 8C93 4C 5C 8C                 L\.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8C96:
        lda     $03D4                           ; 8C96 AD D4 03                 ...
        and     #$E0                            ; 8C99 29 E0                    ).
        lsr     a                               ; 8C9B 4A                       J
        sta     $03DF                           ; 8C9C 8D DF 03                 ...
        lsr     a                               ; 8C9F 4A                       J
        lsr     a                               ; 8CA0 4A                       J
        lsr     a                               ; 8CA1 4A                       J
        lsr     a                               ; 8CA2 4A                       J
        ora     $03DF                           ; 8CA3 0D DF 03                 ...
        sec                                     ; 8CA6 38                       8
        sbc     #$10                            ; 8CA7 E9 10                    ..
        sta     $03DF                           ; 8CA9 8D DF 03                 ...
TextUiSystem_Branch_8CAC:
        ldx     #$03                            ; 8CAC A2 03                    ..
        lda     $6E,x                           ; 8CAE B5 6E                    .n
        sta     $03C2,x                         ; 8CB0 9D C2 03                 ...
        dex                                     ; 8CB3 CA                       .
        bpl     $8CAE                           ; 8CB4 10 F8                    ..
        lda     $F8                             ; 8CB6 A5 F8                    ..
        pha                                     ; 8CB8 48                       H
        lda     $F7                             ; 8CB9 A5 F7                    ..
        pha                                     ; 8CBB 48                       H
        lda     $07B4                           ; 8CBC AD B4 07                 ...
        and     #$04                            ; 8CBF 29 04                    ).
        beq     $8CC6                           ; 8CC1 F0 03                    ..
        inc     $03DF                           ; 8CC3 EE DF 03                 ...
        lda     $F5                             ; 8CC6 A5 F5                    ..
        ora     #$04                            ; 8CC8 09 04                    ..
        sta     $F5                             ; 8CCA 85 F5                    ..
        lda     $03DF                           ; 8CCC AD DF 03                 ...
        and     #$07                            ; 8CCF 29 07                    ).
        tax                                     ; 8CD1 AA                       .
        lda     $0798,x                         ; 8CD2 BD 98 07                 ...
        and     #$0F                            ; 8CD5 29 0F                    ).
        sta     $03E1                           ; 8CD7 8D E1 03                 ...
        lda     $03DF                           ; 8CDA AD DF 03                 ...
        and     #$7F                            ; 8CDD 29 7F                    ).
        sta     $03DF                           ; 8CDF 8D DF 03                 ...
        lda     #$00                            ; 8CE2 A9 00                    ..
        sta     $0C                             ; 8CE4 85 0C                    ..
        sta     $0D                           ; 8CE6 85 0D                    ..
        sta     $0E                             ; 8CE8 85 0E                    ..
        sta     $0F                             ; 8CEA 85 0F                    ..
        sta     $03E0                           ; 8CEC 8D E0 03                 ...
        lda     $03DF                           ; 8CEF AD DF 03                 ...
        and     #$07                            ; 8CF2 29 07                    ).
        tay                                     ; 8CF4 A8                       .
        jsr     TextUiSystem_Entry_8E18         ; 8CF5 20 18 8E                  ..
        dey                                     ; 8CF8 88                       .
        bpl     $8CF5                           ; 8CF9 10 FA                    ..
        jsr     TextUiSystem_Entry_8D5E         ; 8CFB 20 5E 8D                  ^.
        jsr     TextUiSystem_Entry_8EC0         ; 8CFE 20 C0 8E                  ..
        dec     $03E1                           ; 8D01 CE E1 03                 ...
        lda     $03DF                           ; 8D04 AD DF 03                 ...
        and     #$07                            ; 8D07 29 07                    ).
        tax                                     ; 8D09 AA                       .
        lda     $0798,x                         ; 8D0A BD 98 07                 ...
        lsr     a                               ; 8D0D 4A                       J
        lsr     a                               ; 8D0E 4A                       J
        lsr     a                               ; 8D0F 4A                       J
        lsr     a                               ; 8D10 4A                       J
        cmp     $03E1                           ; 8D11 CD E1 03                 ...
        beq     $8CE2                           ; 8D14 F0 CC                    ..
        bmi     $8CE2                           ; 8D16 30 CA                    0.
        dec     $03DF                           ; 8D18 CE DF 03                 ...
        lda     $03DF                           ; 8D1B AD DF 03                 ...
        and     #$07                            ; 8D1E 29 07                    ).
        asl     a                               ; 8D20 0A                       .
        asl     a                               ; 8D21 0A                       .
        asl     a                               ; 8D22 0A                       .
        asl     a                               ; 8D23 0A                       .
        eor     $03DF                           ; 8D24 4D DF 03                 M..
        and     #$70                            ; 8D27 29 70                    )p
        bne     $8CC6                           ; 8D29 D0 9B                    ..
        bit     $6BDE                           ; 8D2B 2C DE 6B                 ,.k
        bmi     $8D33                           ; 8D2E 30 03                    0.
        jsr     TextUiSystem_Entry_8892         ; 8D30 20 92 88                  ..
        lda     $03D4                           ; 8D33 AD D4 03                 ...
        and     #$1F                            ; 8D36 29 1F                    ).
        sta     $03D4                           ; 8D38 8D D4 03                 ...
        lda     $03DF                           ; 8D3B AD DF 03                 ...
        and     #$70                            ; 8D3E 29 70                    )p
        asl     a                               ; 8D40 0A                       .
        ora     $03D4                           ; 8D41 0D D4 03                 ...
        sta     $03D4                           ; 8D44 8D D4 03                 ...
        lda     $F5                             ; 8D47 A5 F5                    ..
        and     #$FB                            ; 8D49 29 FB                    ).
        sta     $F5                             ; 8D4B 85 F5                    ..
        pla                                     ; 8D4D 68                       h
        sta     $F7                             ; 8D4E 85 F7                    ..
        pla                                     ; 8D50 68                       h
        sta     $F8                             ; 8D51 85 F8                    ..
        ldx     #$03                            ; 8D53 A2 03                    ..
        lda     $03C2,x                         ; 8D55 BD C2 03                 ...
        sta     $6E,x                           ; 8D58 95 6E                    .n
        dex                                     ; 8D5A CA                       .
        bpl     $8D55                           ; 8D5B 10 F8                    ..
        rts                                     ; 8D5D 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8D5E:
        ldx     #$0F                            ; 8D5E A2 0F                    ..
        lda     #$00                            ; 8D60 A9 00                    ..
        sta     $04E0,x                         ; 8D62 9D E0 04                 ...
        dex                                     ; 8D65 CA                       .
        bpl     $8D62                           ; 8D66 10 FA                    ..
        bit     $03DF                           ; 8D68 2C DF 03                 ,..
        bpl     $8DD3                           ; 8D6B 10 66                    .f
        lda     $03E1                           ; 8D6D AD E1 03                 ...
        asl     a                               ; 8D70 0A                       .
        tax                                     ; 8D71 AA                       .
        inx                                     ; 8D72 E8                       .
        inx                                     ; 8D73 E8                       .
        lda     $076A,x                         ; 8D74 BD 6A 07                 .j.
        eor     $0E                             ; 8D77 45 0E                    E.
        sta     $076A,x                         ; 8D79 9D 6A 07                 .j.
        lda     $076B,x                         ; 8D7C BD 6B 07                 .k.
        eor     $0F                             ; 8D7F 45 0F                    E.
        sta     $076B,x                         ; 8D81 9D 6B 07                 .k.
        lda     #$0F                            ; 8D84 A9 0F                    ..
        sta     $0D                           ; 8D86 85 0D                    ..
        lsr     $0E                             ; 8D88 46 0E                    F.
        ror     $0F                             ; 8D8A 66 0F                    f.
        bcc     $8DCF                           ; 8D8C 90 41                    .A
        bit     $6BDE                           ; 8D8E 2C DE 6B                 ,.k
        bpl     $8DA2                           ; 8D91 10 0F                    ..
        lda     #$00                            ; 8D93 A9 00                    ..
        sta     $00                           ; 8D95 85 00                    ..
        sta     $01                             ; 8D97 85 01                    ..
        sta     $02                             ; 8D99 85 02                    ..
        sta     $03                             ; 8D9B 85 03                    ..
        sta     $04                             ; 8D9D 85 04                    ..
        jmp     TextUiSystem_Branch_8DA5        ; 8D9F 4C A5 8D                 L..
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_8DD4         ; 8DA2 20 D4 8D                  ..
TextUiSystem_Branch_8DA5:
        lda     $04F2                           ; 8DA5 AD F2 04                 ...
        and     #$0F                            ; 8DA8 29 0F                    ).
        sta     $0C                             ; 8DAA 85 0C                    ..
        lda     $0D                           ; 8DAC A5 0D                    ..
        sec                                     ; 8DAE 38                       8
        sbc     $0C                             ; 8DAF E5 0C                    ..
        tay                                     ; 8DB1 A8                       .
        lda     $04                             ; 8DB2 A5 04                    ..
        sta     $04E0,y                         ; 8DB4 99 E0 04                 ...
        lda     $0D                           ; 8DB7 A5 0D                    ..
        asl     a                               ; 8DB9 0A                       .
        tay                                     ; 8DBA A8                       .
        lda     $00                           ; 8DBB A5 00                    ..
        sta     $0480,y                         ; 8DBD 99 80 04                 ...
        lda     $01                             ; 8DC0 A5 01                    ..
        sta     $0481,y                         ; 8DC2 99 81 04                 ...
        lda     $02                             ; 8DC5 A5 02                    ..
        sta     $04A0,y                         ; 8DC7 99 A0 04                 ...
        lda     $03                             ; 8DCA A5 03                    ..
        sta     $04A1,y                         ; 8DCC 99 A1 04                 ...
        dec     $0D                           ; 8DCF C6 0D                    ..
        bpl     $8D88                           ; 8DD1 10 B5                    ..
        rts                                     ; 8DD3 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8DD4:
        ldx     PlayerWorldX                    ; 8DD4 A6 42                    .B
        lda     PlayerWorldY                    ; 8DD6 A5 43                    .C
        bit     $41                             ; 8DD8 24 41                    $A
        bpl     $8DE0                           ; 8DDA 10 04                    ..
        ldx     PlayerLocalX                    ; 8DDC A6 44                    .D
        lda     PlayerLocalY                    ; 8DDE A5 45                    .E
        sec                                     ; 8DE0 38                       8
        sbc     #$06                            ; 8DE1 E9 06                    ..
        clc                                     ; 8DE3 18                       .
        adc     $03E1                           ; 8DE4 6D E1 03                 m..
        tay                                     ; 8DE7 A8                       .
        sta     $54                             ; 8DE8 85 54                    .T
        txa                                     ; 8DEA 8A                       .
        sec                                     ; 8DEB 38                       8
        sbc     #$08                            ; 8DEC E9 08                    ..
        clc                                     ; 8DEE 18                       .
        adc     $0D                           ; 8DEF 65 0D                    e.
        tax                                     ; 8DF1 AA                       .
        sta     $53                             ; 8DF2 85 53                    .S
        lda     $41                             ; 8DF4 A5 41                    .A
        bmi     $8E01                           ; 8DF6 30 09                    0.
        jsr     UpperFixedEngine_Entry_D251     ; 8DF8 20 51 D2                  Q.
        jsr     UpperFixedEngine_Entry_D486     ; 8DFB 20 86 D4                  ..
        jmp     TextUiSystem_Branch_8E07        ; 8DFE 4C 07 8E                 L..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D3E6     ; 8E01 20 E6 D3                  ..
        jsr     UpperFixedEngine_Entry_D4F3     ; 8E04 20 F3 D4                  ..
TextUiSystem_Branch_8E07:
        sta     $04                             ; 8E07 85 04                    ..
        ldy     #$00                            ; 8E09 A0 00                    ..
        lda     $7600,x                         ; 8E0B BD 00 76                 ..v
        sta     $0000,y                         ; 8E0E 99 00 00                 ...
        inx                                     ; 8E11 E8                       .
        iny                                     ; 8E12 C8                       .
        cpy     #$04                            ; 8E13 C0 04                    ..
        bcc     $8E0B                           ; 8E15 90 F4                    ..
        rts                                     ; 8E17 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8E18:
        lda     $0790,y                         ; 8E18 B9 90 07                 ...
        sta     $02                             ; 8E1B 85 02                    ..
        jsr     TextUiSystem_Entry_8E8F         ; 8E1D 20 8F 8E                  ..
        lda     $0798,y                         ; 8E20 B9 98 07                 ...
        lsr     a                               ; 8E23 4A                       J
        lsr     a                               ; 8E24 4A                       J
        lsr     a                               ; 8E25 4A                       J
        lsr     a                               ; 8E26 4A                       J
        cmp     $03E1                           ; 8E27 CD E1 03                 ...
        beq     $8E3B                           ; 8E2A F0 0F                    ..
        bcs     $8E48                           ; 8E2C B0 1A                    ..
        lda     $0798,y                         ; 8E2E B9 98 07                 ...
        and     #$0F                            ; 8E31 29 0F                    ).
        cmp     $03E1                           ; 8E33 CD E1 03                 ...
        bcc     $8E48                           ; 8E36 90 10                    ..
        jsr     TextUiSystem_Entry_8E49         ; 8E38 20 49 8E                  I.
        lda     $0798,y                         ; 8E3B B9 98 07                 ...
        and     #$0F                            ; 8E3E 29 0F                    ).
        cmp     $03E1                           ; 8E40 CD E1 03                 ...
        beq     $8E48                           ; 8E43 F0 03                    ..
        jsr     TextUiSystem_Entry_8E4E         ; 8E45 20 4E 8E                  N.
        rts                                     ; 8E48 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8E49:
        ldx     #$00                            ; 8E49 A2 00                    ..
        jmp     $8E50                           ; 8E4B 4C 50 8E                 LP.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8E4E:
        ldx     #$02                            ; 8E4E A2 02                    ..
        lda     $03DF                           ; 8E50 AD DF 03                 ...
        and     #$07                            ; 8E53 29 07                    ).
        sta     $02                             ; 8E55 85 02                    ..
        cpy     $02                             ; 8E57 C4 02                    ..
        bne     $8E68                           ; 8E59 D0 0D                    ..
        lda     $00                           ; 8E5B A5 00                    ..
        ora     $0C,x                           ; 8E5D 15 0C                    ..
        sta     $0C,x                           ; 8E5F 95 0C                    ..
        lda     $01                             ; 8E61 A5 01                    ..
        ora     $0D,x                         ; 8E63 15 0D                    ..
        sta     $0D,x                         ; 8E65 95 0D                    ..
        rts                                     ; 8E67 60                       `
; ----------------------------------------------------------------------------
        lda     $00                           ; 8E68 A5 00                    ..
        and     $0C,x                           ; 8E6A 35 0C                    5.
        beq     $8E7B                           ; 8E6C F0 0D                    ..
        eor     $0C,x                           ; 8E6E 55 0C                    U.
        sta     $0C,x                           ; 8E70 95 0C                    ..
        lda     $03E0                           ; 8E72 AD E0 03                 ...
        ora     $A4CE,y                         ; 8E75 19 CE A4                 ...
        sta     $03E0                           ; 8E78 8D E0 03                 ...
        lda     $01                             ; 8E7B A5 01                    ..
        and     $0D,x                         ; 8E7D 35 0D                    5.
        beq     $8E8E                           ; 8E7F F0 0D                    ..
        eor     $0D,x                         ; 8E81 55 0D                    U.
        sta     $0D,x                         ; 8E83 95 0D                    ..
        lda     $03E0                           ; 8E85 AD E0 03                 ...
        ora     $A4CE,y                         ; 8E88 19 CE A4                 ...
        sta     $03E0                           ; 8E8B 8D E0 03                 ...
        rts                                     ; 8E8E 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8E8F:
        lda     #$00                            ; 8E8F A9 00                    ..
        sta     $01                             ; 8E91 85 01                    ..
        lda     $02                             ; 8E93 A5 02                    ..
        lsr     a                               ; 8E95 4A                       J
        lsr     a                               ; 8E96 4A                       J
        lsr     a                               ; 8E97 4A                       J
        lsr     a                               ; 8E98 4A                       J
        and     #$07                            ; 8E99 29 07                    ).
        tax                                     ; 8E9B AA                       .
        lda     $8EB8,x                         ; 8E9C BD B8 8E                 ...
        sta     $00                           ; 8E9F 85 00                    ..
        bit     $02                             ; 8EA1 24 02                    $.
        bpl     $8EAB                           ; 8EA3 10 06                    ..
        sta     $01                             ; 8EA5 85 01                    ..
        lda     #$FF                            ; 8EA7 A9 FF                    ..
        sta     $00                           ; 8EA9 85 00                    ..
        lda     $02                             ; 8EAB A5 02                    ..
        and     #$0F                            ; 8EAD 29 0F                    ).
        tax                                     ; 8EAF AA                       .
        lsr     $00                           ; 8EB0 46 00                    F.
        ror     $01                             ; 8EB2 66 01                    f.
        dex                                     ; 8EB4 CA                       .
        bne     $8EB0                           ; 8EB5 D0 F9                    ..
        rts                                     ; 8EB7 60                       `
; ----------------------------------------------------------------------------
        db   $00,$80,$C0,$E0,$F0,$F8,$FC,$FE ; 8EB8 00 80 C0 E0 F0 F8 FC FE  ........
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8EC0:
        ldx     #$00                            ; 8EC0 A2 00                    ..
        asl     $03E0                           ; 8EC2 0E E0 03                 ...
        bcc     $8F04                           ; 8EC5 90 3D                    .=
        txa                                     ; 8EC7 8A                       .
        pha                                     ; 8EC8 48                       H
        jsr     TextUiSystem_Entry_9543         ; 8EC9 20 43 95                  C.
        jsr     TextUiSystem_Entry_95AF         ; 8ECC 20 AF 95                  ..
        jsr     TextUiSystem_Entry_95FF         ; 8ECF 20 FF 95                  ..
        jsr     TextUiSystem_Entry_963D         ; 8ED2 20 3D 96                  =.
        jsr     TextUiSystem_Entry_95FF         ; 8ED5 20 FF 95                  ..
        jsr     TextUiSystem_Entry_9349         ; 8ED8 20 49 93                  I.
        jmp     $8EE1                           ; 8EDB 4C E1 8E                 L..
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_933F         ; 8EDE 20 3F 93                  ?.
        lda     $04F2                           ; 8EE1 AD F2 04                 ...
        lsr     a                               ; 8EE4 4A                       J
        lsr     a                               ; 8EE5 4A                       J
        lsr     a                               ; 8EE6 4A                       J
        lsr     a                               ; 8EE7 4A                       J
        cmp     $03E1                           ; 8EE8 CD E1 03                 ...
        bne     $8EDE                           ; 8EEB D0 F1                    ..
        lda     $F4                             ; 8EED A5 F4                    ..
        and     #$0F                            ; 8EEF 29 0F                    ).
        cmp     #$02                            ; 8EF1 C9 02                    ..
        beq     $8EFB                           ; 8EF3 F0 06                    ..
        jsr     TextUiSystem_Entry_91C6         ; 8EF5 20 C6 91                  ..
        jmp     $8F02                           ; 8EF8 4C 02 8F                 L..
; ----------------------------------------------------------------------------
        lda     #$00                            ; 8EFB A9 00                    ..
        sta     $F4                             ; 8EFD 85 F4                    ..
        jsr     TextUiSystem_Entry_952B         ; 8EFF 20 2B 95                  +.
        pla                                     ; 8F02 68                       h
        tax                                     ; 8F03 AA                       .
        inx                                     ; 8F04 E8                       .
        cpx     #$08                            ; 8F05 E0 08                    ..
        bne     $8EC2                           ; 8F07 D0 B9                    ..
        lda     $03DF                           ; 8F09 AD DF 03                 ...
        and     #$07                            ; 8F0C 29 07                    ).
        tax                                     ; 8F0E AA                       .
        lda     $0790,x                         ; 8F0F BD 90 07                 ...
        lsr     a                               ; 8F12 4A                       J
        lsr     a                               ; 8F13 4A                       J
        lsr     a                               ; 8F14 4A                       J
        lsr     a                               ; 8F15 4A                       J
        ora     #$10                            ; 8F16 09 10                    ..
        sta     $04F3                           ; 8F18 8D F3 04                 ...
        lda     $0790,x                         ; 8F1B BD 90 07                 ...
        and     #$0F                            ; 8F1E 29 0F                    ).
        sta     $04F2                           ; 8F20 8D F2 04                 ...
        bit     $03DF                           ; 8F23 2C DF 03                 ,..
        bmi     $8F32                           ; 8F26 30 0A                    0.
        asl     $03DF                           ; 8F28 0E DF 03                 ...
        sec                                     ; 8F2B 38                       8
        ror     $03DF                           ; 8F2C 6E DF 03                 n..
        jmp     $8F73                           ; 8F2F 4C 73 8F                 Ls.
; ----------------------------------------------------------------------------
        lda     $04F2                           ; 8F32 AD F2 04                 ...
        and     #$0F                            ; 8F35 29 0F                    ).
        sta     $04F2                           ; 8F37 8D F2 04                 ...
        lda     $03E1                           ; 8F3A AD E1 03                 ...
        asl     a                               ; 8F3D 0A                       .
        asl     a                               ; 8F3E 0A                       .
        asl     a                               ; 8F3F 0A                       .
        asl     a                               ; 8F40 0A                       .
        clc                                     ; 8F41 18                       .
        adc     #$10                            ; 8F42 69 10                    i.
        ora     $04F2                           ; 8F44 0D F2 04                 ...
        sta     $04F2                           ; 8F47 8D F2 04                 ...
        and     #$0F                            ; 8F4A 29 0F                    ).
        asl     a                               ; 8F4C 0A                       .
        tax                                     ; 8F4D AA                       .
        sta     $02                             ; 8F4E 85 02                    ..
        lda     $04F3                           ; 8F50 AD F3 04                 ...
        and     #$0F                            ; 8F53 29 0F                    ).
        asl     a                               ; 8F55 0A                       .
        sta     $00                           ; 8F56 85 00                    ..
        ldy     #$00                            ; 8F58 A0 00                    ..
        jsr     TextUiSystem_Entry_931B         ; 8F5A 20 1B 93                  ..
        lda     $02                             ; 8F5D A5 02                    ..
        ora     #$20                            ; 8F5F 09 20                    .
        tax                                     ; 8F61 AA                       .
        jsr     TextUiSystem_Entry_931B         ; 8F62 20 1B 93                  ..
        bit     $6BDE                           ; 8F65 2C DE 6B                 ,.k
        bmi     $8F70                           ; 8F68 30 06                    0.
        brk                                     ; 8F6A 00                       .
        db   $12,$DF                         ; 8F6B 12 DF                    ..
; ----------------------------------------------------------------------------
        jmp     $8F73                           ; 8F6D 4C 73 8F                 Ls.
; ----------------------------------------------------------------------------
        brk                                     ; 8F70 00                       .
        db   $13,$DF                         ; 8F71 13 DF                    ..
; ----------------------------------------------------------------------------
        lda     $04F2                           ; 8F73 AD F2 04                 ...
        and     #$0F                            ; 8F76 29 0F                    ).
        asl     a                               ; 8F78 0A                       .
        tax                                     ; 8F79 AA                       .
        lda     $04F3                           ; 8F7A AD F3 04                 ...
        and     #$0F                            ; 8F7D 29 0F                    ).
        asl     a                               ; 8F7F 0A                       .
        tay                                     ; 8F80 A8                       .
        lda     $04C0,x                         ; 8F81 BD C0 04                 ...
        sta     $04A0,x                         ; 8F84 9D A0 04                 ...
        inx                                     ; 8F87 E8                       .
        dey                                     ; 8F88 88                       .
        bne     $8F81                           ; 8F89 D0 F6                    ..
        rts                                     ; 8F8B 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8F8C:
        jsr     TextUiSystem_Entry_95FF         ; 8F8C 20 FF 95                  ..
        jsr     TextUiSystem_Entry_952B         ; 8F8F 20 2B 95                  +.
        jsr     TextUiSystem_Entry_933F         ; 8F92 20 3F 93                  ?.
        and     #$03                            ; 8F95 29 03                    ).
        bne     $8F9F                           ; 8F97 D0 06                    ..
        jsr     TextUiSystem_Entry_91C6         ; 8F99 20 C6 91                  ..
        jsr     TextUiSystem_Entry_933F         ; 8F9C 20 3F 93                  ?.
        cmp     #$0F                            ; 8F9F C9 0F                    ..
        beq     $8FA9                           ; 8FA1 F0 06                    ..
        jsr     TextUiSystem_Entry_91BF         ; 8FA3 20 BF 91                  ..
        jmp     $8F9C                           ; 8FA6 4C 9C 8F                 L..
; ----------------------------------------------------------------------------
        rts                                     ; 8FA9 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_8FAA:
        lda     $F5                             ; 8FAA A5 F5                    ..
        and     #$08                            ; 8FAC 29 08                    ).
        bne     $9003                           ; 8FAE D0 53                    .S
        lda     $F5                             ; 8FB0 A5 F5                    ..
        and     #$10                            ; 8FB2 29 10                    ).
        beq     $9015                           ; 8FB4 F0 5F                    ._
        lda     $07B4                           ; 8FB6 AD B4 07                 ...
        tay                                     ; 8FB9 A8                       .
        and     #$40                            ; 8FBA 29 40                    )@
        beq     $8FEF                           ; 8FBC F0 31                    .1
        tya                                     ; 8FBE 98                       .
        and     #$02                            ; 8FBF 29 02                    ).
        beq     $8FCC                           ; 8FC1 F0 09                    ..
        tya                                     ; 8FC3 98                       .
        and     #$ED                            ; 8FC4 29 ED                    ).
        sta     $07B4                           ; 8FC6 8D B4 07                 ...
        jmp     TextUiSystem_Branch_8FD4        ; 8FC9 4C D4 8F                 L..
; ----------------------------------------------------------------------------
        lda     $07B4                           ; 8FCC AD B4 07                 ...
        ora     #$10                            ; 8FCF 09 10                    ..
        sta     $07B4                           ; 8FD1 8D B4 07                 ...
TextUiSystem_Branch_8FD4:
        ldy     $03D8                           ; 8FD4 AC D8 03                 ...
        lda     ($EE),y                         ; 8FD7 B1 EE                    ..
        and     #$0F                            ; 8FD9 29 0F                    ).
        jsr     TextUiSystem_Entry_998C         ; 8FDB 20 8C 99                  ..
        bcc     $8FFA                           ; 8FDE 90 1A                    ..
        lda     $F5                             ; 8FE0 A5 F5                    ..
        ora     #$08                            ; 8FE2 09 08                    ..
        sta     $F5                             ; 8FE4 85 F5                    ..
        lda     $03D4                           ; 8FE6 AD D4 03                 ...
        ora     #$08                            ; 8FE9 09 08                    ..
        sta     $03D4                           ; 8FEB 8D D4 03                 ...
        rts                                     ; 8FEE 60                       `
; ----------------------------------------------------------------------------
        lda     $07B4                           ; 8FEF AD B4 07                 ...
        ora     #$40                            ; 8FF2 09 40                    .@
        sta     $07B4                           ; 8FF4 8D B4 07                 ...
        jmp     $8FE0                           ; 8FF7 4C E0 8F                 L..
; ----------------------------------------------------------------------------
        lda     $07B4                           ; 8FFA AD B4 07                 ...
        and     #$AF                            ; 8FFD 29 AF                    ).
        sta     $07B4                           ; 8FFF 8D B4 07                 ...
        rts                                     ; 9002 60                       `
; ----------------------------------------------------------------------------
        lda     $F5                             ; 9003 A5 F5                    ..
        and     #$F7                            ; 9005 29 F7                    ).
        sta     $F5                             ; 9007 85 F5                    ..
        lda     $03D4                           ; 9009 AD D4 03                 ...
        and     #$E0                            ; 900C 29 E0                    ).
        sta     $03D4                           ; 900E 8D D4 03                 ...
        inc     $03D4                           ; 9011 EE D4 03                 ...
        rts                                     ; 9014 60                       `
; ----------------------------------------------------------------------------
        ldy     $03D8                           ; 9015 AC D8 03                 ...
        lda     ($EE),y                         ; 9018 B1 EE                    ..
        and     #$0F                            ; 901A 29 0F                    ).
        jsr     TextUiSystem_Entry_998C         ; 901C 20 8C 99                  ..
        jmp     $8FFA                           ; 901F 4C FA 8F                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9022:
        jsr     TextUiSystem_Entry_9CCB         ; 9022 20 CB 9C                  ..
        lda     $03C7                           ; 9025 AD C7 03                 ...
        sta     $0788,x                         ; 9028 9D 88 07                 ...
        lda     $03C8                           ; 902B AD C8 03                 ...
        sta     $0790,x                         ; 902E 9D 90 07                 ...
        lda     $07B4                           ; 9031 AD B4 07                 ...
        and     #$09                            ; 9034 29 09                    ).
        sta     $03DA                           ; 9036 8D DA 03                 ...
        lda     $03C9                           ; 9039 AD C9 03                 ...
        bit     $F5                             ; 903C 24 F5                    $.
        bvc     TextUiSystem_Branch_9057        ; 903E 50 17                    P.
        ldy     $03DA                           ; 9040 AC DA 03                 ...
        bne     TextUiSystem_Branch_9057        ; 9043 D0 12                    ..
        and     #$F0                            ; 9045 29 F0                    ).
        sta     $0798,x                         ; 9047 9D 98 07                 ...
        lsr     a                               ; 904A 4A                       J
        lsr     a                               ; 904B 4A                       J
        lsr     a                               ; 904C 4A                       J
        lsr     a                               ; 904D 4A                       J
        clc                                     ; 904E 18                       .
        adc     $03D5                           ; 904F 6D D5 03                 m..
        and     #$0F                            ; 9052 29 0F                    ).
        ora     $0798,x                         ; 9054 1D 98 07                 ...
TextUiSystem_Branch_9057:
        sec                                     ; 9057 38                       8
        sbc     #$10                            ; 9058 E9 10                    ..
        sta     $0798,x                         ; 905A 9D 98 07                 ...
        lda     $F8                             ; 905D A5 F8                    ..
        cmp     #$FF                            ; 905F C9 FF                    ..
        beq     $90C3                           ; 9061 F0 60                    .`
        sta     $07A8,x                         ; 9063 9D A8 07                 ...
        lda     $07B4                           ; 9066 AD B4 07                 ...
        and     #$09                            ; 9069 29 09                    ).
        bne     $90C3                           ; 906B D0 56                    .V
        lda     $03D4                           ; 906D AD D4 03                 ...
        and     #$1F                            ; 9070 29 1F                    ).
        bne     $909E                           ; 9072 D0 2A                    .*
        lda     $03D9                           ; 9074 AD D9 03                 ...
        beq     $90B4                           ; 9077 F0 3B                    .;
        sta     $F0                             ; 9079 85 F0                    ..
        jsr     TextUiSystem_Entry_975A         ; 907B 20 5A 97                  Z.
        lda     $03D4                           ; 907E AD D4 03                 ...
        and     #$1F                            ; 9081 29 1F                    ).
        bne     $909E                           ; 9083 D0 19                    ..
        ldy     $03D9                           ; 9085 AC D9 03                 ...
        lda     ($EE),y                         ; 9088 B1 EE                    ..
        lsr     a                               ; 908A 4A                       J
        cmp     #$60                            ; 908B C9 60                    .`
        beq     $909E                           ; 908D F0 0F                    ..
        ldx     #$08                            ; 908F A2 08                    ..
        cmp     #$62                            ; 9091 C9 62                    .b
        beq     TextUiSystem_Branch_9097        ; 9093 F0 02                    ..
        ldx     #$10                            ; 9095 A2 10                    ..
TextUiSystem_Branch_9097:
        txa                                     ; 9097 8A                       .
        ora     $03D4                           ; 9098 0D D4 03                 ...
        sta     $03D4                           ; 909B 8D D4 03                 ...
        lda     $F8                             ; 909E A5 F8                    ..
        cmp     #$F0                            ; 90A0 C9 F0                    ..
        bcs     $90B4                           ; 90A2 B0 10                    ..
        ldy     $03D9                           ; 90A4 AC D9 03                 ...
        beq     $90B4                           ; 90A7 F0 0B                    ..
        lda     ($EE),y                         ; 90A9 B1 EE                    ..
        lsr     a                               ; 90AB 4A                       J
        bcc     $90B4                           ; 90AC 90 06                    ..
        iny                                     ; 90AE C8                       .
        lda     ($EE),y                         ; 90AF B1 EE                    ..
        jsr     TextUiSystem_Entry_A4F4         ; 90B1 20 F4 A4                  ..
        lda     $F5                             ; 90B4 A5 F5                    ..
        and     #$08                            ; 90B6 29 08                    ).
        beq     $90C3                           ; 90B8 F0 09                    ..
        jsr     TextUiSystem_Entry_9CCB         ; 90BA 20 CB 9C                  ..
        inx                                     ; 90BD E8                       .
        lda     $F8                             ; 90BE A5 F8                    ..
        sta     $07A0,x                         ; 90C0 9D A0 07                 ...
        rts                                     ; 90C3 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_90C4:
        lda     $03D4                           ; 90C4 AD D4 03                 ...
        and     #$E0                            ; 90C7 29 E0                    ).
        sta     $03D4                           ; 90C9 8D D4 03                 ...
        lda     #$00                            ; 90CC A9 00                    ..
        sta     $F8                             ; 90CE 85 F8                    ..
        sta     $F5                             ; 90D0 85 F5                    ..
        jsr     UpperFixedEngine_Entry_C8EC     ; 90D2 20 EC C8                  ..
        lda     #$00                            ; 90D5 A9 00                    ..
        sta     $03CC                           ; 90D7 8D CC 03                 ...
        lda     ButtonsPressed                  ; 90DA A5 14                    ..
        and     #$F3                            ; 90DC 29 F3                    ).
        beq     $90E3                           ; 90DE F0 03                    ..
        jsr     TextUiSystem_Entry_9CC7         ; 90E0 20 C7 9C                  ..
        lda     $050C                           ; 90E3 AD 0C 05                 ...
        clc                                     ; 90E6 18                       .
        adc     #$1E                            ; 90E7 69 1E                    i.
        sta     $03CD                           ; 90E9 8D CD 03                 ...
        sta     $03E2                           ; 90EC 8D E2 03                 ...
        rts                                     ; 90EF 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_90F0:
        lda     $03D4                           ; 90F0 AD D4 03                 ...
        and     #$1F                            ; 90F3 29 1F                    ).
        beq     $9173                           ; 90F5 F0 7C                    .|
        bit     $A4D1                           ; 90F7 2C D1 A4                 ,..
        bne     $9145                           ; 90FA D0 49                    .I
        bit     $A4D2                           ; 90FC 2C D2 A4                 ,..
        bne     $911D                           ; 90FF D0 1C                    ..
        lda     $03D4                           ; 9101 AD D4 03                 ...
        lsr     a                               ; 9104 4A                       J
        lsr     a                               ; 9105 4A                       J
        lsr     a                               ; 9106 4A                       J
        lsr     a                               ; 9107 4A                       J
        lsr     a                               ; 9108 4A                       J
        sec                                     ; 9109 38                       8
        sbc     $03D4                           ; 910A ED D4 03                 ...
        and     #$08                            ; 910D 29 08                    ).
        bne     $9173                           ; 910F D0 62                    .b
        lda     $03D4                           ; 9111 AD D4 03                 ...
        and     #$1F                            ; 9114 29 1F                    ).
        cmp     #$01                            ; 9116 C9 01                    ..
        beq     $917F                           ; 9118 F0 65                    .e
        jmp     TextUiSystem_Branch_9188        ; 911A 4C 88 91                 L..
; ----------------------------------------------------------------------------
        lda     $07B4                           ; 911D AD B4 07                 ...
        and     #$FB                            ; 9120 29 FB                    ).
        sta     $07B4                           ; 9122 8D B4 07                 ...
        lsr     a                               ; 9125 4A                       J
        bcs     $9193                           ; 9126 B0 6B                    .k
        lda     $F8                             ; 9128 A5 F8                    ..
        cmp     #$F0                            ; 912A C9 F0                    ..
        bcs     $9193                           ; 912C B0 65                    .e
        lda     $F5                             ; 912E A5 F5                    ..
        and     #$10                            ; 9130 29 10                    ).
        lsr     a                               ; 9132 4A                       J
        lsr     a                               ; 9133 4A                       J
        ora     $07B4                           ; 9134 0D B4 07                 ...
        sta     $07B4                           ; 9137 8D B4 07                 ...
        lda     $03D4                           ; 913A AD D4 03                 ...
        clc                                     ; 913D 18                       .
        adc     #$20                            ; 913E 69 20                    i
        bcs     $9173                           ; 9140 B0 31                    .1
        sta     $03D4                           ; 9142 8D D4 03                 ...
        ldy     $03D9                           ; 9145 AC D9 03                 ...
        beq     $9173                           ; 9148 F0 29                    .)
        and     #$07                            ; 914A 29 07                    ).
        clc                                     ; 914C 18                       .
        adc     $03D9                           ; 914D 6D D9 03                 m..
        tay                                     ; 9150 A8                       .
        lda     ($EE),y                         ; 9151 B1 EE                    ..
        lsr     a                               ; 9153 4A                       J
        bcc     $9157                           ; 9154 90 01                    ..
        iny                                     ; 9156 C8                       .
        iny                                     ; 9157 C8                       .
        cpy     $F1                             ; 9158 C4 F1                    ..
        bcs     $9173                           ; 915A B0 17                    ..
        lda     ($EE),y                         ; 915C B1 EE                    ..
        beq     $9173                           ; 915E F0 13                    ..
        jsr     TextUiSystem_Entry_9CCB         ; 9160 20 CB 9C                  ..
        lda     ($EE),y                         ; 9163 B1 EE                    ..
        sta     $0788,x                         ; 9165 9D 88 07                 ...
        lda     $03D4                           ; 9168 AD D4 03                 ...
        and     #$E0                            ; 916B 29 E0                    ).
        ora     #$02                            ; 916D 09 02                    ..
        sta     $03D4                           ; 916F 8D D4 03                 ...
        rts                                     ; 9172 60                       `
; ----------------------------------------------------------------------------
        lda     $03D4                           ; 9173 AD D4 03                 ...
        and     #$E0                            ; 9176 29 E0                    ).
        sta     $03D4                           ; 9178 8D D4 03                 ...
        inc     $03D4                           ; 917B EE D4 03                 ...
        rts                                     ; 917E 60                       `
; ----------------------------------------------------------------------------
        lda     $03D4                           ; 917F AD D4 03                 ...
        sec                                     ; 9182 38                       8
        sbc     #$20                            ; 9183 E9 20                    .
        sta     $03D4                           ; 9185 8D D4 03                 ...
TextUiSystem_Branch_9188:
        lda     $03D4                           ; 9188 AD D4 03                 ...
        and     #$E0                            ; 918B 29 E0                    ).
        ora     #$03                            ; 918D 09 03                    ..
        sta     $03D4                           ; 918F 8D D4 03                 ...
        rts                                     ; 9192 60                       `
; ----------------------------------------------------------------------------
        lda     $F5                             ; 9193 A5 F5                    ..
        and     #$F7                            ; 9195 29 F7                    ).
        sta     $F5                             ; 9197 85 F5                    ..
        lda     $03D4                           ; 9199 AD D4 03                 ...
        clc                                     ; 919C 18                       .
        adc     #$20                            ; 919D 69 20                    i
        sta     $03D4                           ; 919F 8D D4 03                 ...
        lda     $07B4                           ; 91A2 AD B4 07                 ...
        and     #$01                            ; 91A5 29 01                    ).
        pha                                     ; 91A7 48                       H
        jsr     TextUiSystem_Entry_8C96         ; 91A8 20 96 8C                  ..
        pla                                     ; 91AB 68                       h
        ora     $07B4                           ; 91AC 0D B4 07                 ...
        ora     #$02                            ; 91AF 09 02                    ..
        sta     $07B4                           ; 91B1 8D B4 07                 ...
        lda     $03D4                           ; 91B4 AD D4 03                 ...
        and     #$E0                            ; 91B7 29 E0                    ).
        ora     #$03                            ; 91B9 09 03                    ..
        sta     $03D4                           ; 91BB 8D D4 03                 ...
        rts                                     ; 91BE 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_91BF:
        jsr     TextUiSystem_Entry_91C6         ; 91BF 20 C6 91                  ..
        jsr     TextUiSystem_Entry_92A2         ; 91C2 20 A2 92                  ..
        rts                                     ; 91C5 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_91C6:
        lda     $04F2                           ; 91C6 AD F2 04                 ...
        pha                                     ; 91C9 48                       H
        lda     $F0                             ; 91CA A5 F0                    ..
        pha                                     ; 91CC 48                       H
        lda     a:$F4                           ; 91CD AD F4 00                 ...
        pha                                     ; 91D0 48                       H
        and     #$0F                            ; 91D1 29 0F                    ).
        cmp     #$0F                            ; 91D3 C9 0F                    ..
        beq     $921C                           ; 91D5 F0 45                    .E
        jsr     TextUiSystem_Entry_952B         ; 91D7 20 2B 95                  +.
        jsr     TextUiSystem_Entry_975A         ; 91DA 20 5A 97                  Z.
        lda     a:$F4                           ; 91DD AD F4 00                 ...
        and     #$F0                            ; 91E0 29 F0                    ).
        beq     $921C                           ; 91E2 F0 38                    .8
        lda     a:$F4                           ; 91E4 AD F4 00                 ...
        and     #$03                            ; 91E7 29 03                    ).
        beq     $91F4                           ; 91E9 F0 09                    ..
        lda     $03CB                           ; 91EB AD CB 03                 ...
        and     #$02                            ; 91EE 29 02                    ).
        beq     $91F4                           ; 91F0 F0 02                    ..
        inc     $F2                             ; 91F2 E6 F2                    ..
        jsr     TextUiSystem_Entry_9230         ; 91F4 20 30 92                  0.
        ldy     $F0                             ; 91F7 A4 F0                    ..
        lda     ($EE),y                         ; 91F9 B1 EE                    ..
        jsr     TextUiSystem_Entry_982D         ; 91FB 20 2D 98                  -.
        jsr     TextUiSystem_Entry_93AE         ; 91FE 20 AE 93                  ..
        lda     a:$F4                           ; 9201 AD F4 00                 ...
        and     #$F0                            ; 9204 29 F0                    ).
        beq     $9217                           ; 9206 F0 0F                    ..
        cmp     #$10                            ; 9208 C9 10                    ..
        beq     $9217                           ; 920A F0 0B                    ..
        lda     $03CB                           ; 920C AD CB 03                 ...
        lsr     a                               ; 920F 4A                       J
        bcc     $91DA                           ; 9210 90 C8                    ..
        inc     $F2                             ; 9212 E6 F2                    ..
        jmp     $91DA                           ; 9214 4C DA 91                 L..
; ----------------------------------------------------------------------------
        ldy     #$01                            ; 9217 A0 01                    ..
        jmp     $921E                           ; 9219 4C 1E 92                 L..
; ----------------------------------------------------------------------------
        ldy     #$00                            ; 921C A0 00                    ..
        pla                                     ; 921E 68                       h
        sta     a:$F4                           ; 921F 8D F4 00                 ...
        pla                                     ; 9222 68                       h
        sta     $F0                             ; 9223 85 F0                    ..
        pla                                     ; 9225 68                       h
        sta     $04F2                           ; 9226 8D F2 04                 ...
        tya                                     ; 9229 98                       .
        beq     $922F                           ; 922A F0 03                    ..
        jsr     TextUiSystem_Entry_924B         ; 922C 20 4B 92                  K.
        rts                                     ; 922F 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9230:
        lda     a:$F4                           ; 9230 AD F4 00                 ...
        and     #$03                            ; 9233 29 03                    ).
        bne     $9247                           ; 9235 D0 10                    ..
        dec     $F2                             ; 9237 C6 F2                    ..
        bmi     $9248                           ; 9239 30 0D                    0.
        jsr     TextUiSystem_Entry_9901         ; 923B 20 01 99                  ..
        cmp     #$85                            ; 923E C9 85                    ..
        bne     $9248                           ; 9240 D0 06                    ..
        lda     #$8C                            ; 9242 A9 8C                    ..
        jsr     TextUiSystem_Entry_98B3         ; 9244 20 B3 98                  ..
        rts                                     ; 9247 60                       `
; ----------------------------------------------------------------------------
        inc     $F2                             ; 9248 E6 F2                    ..
        rts                                     ; 924A 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_924B:
        lda     $F5                             ; 924B A5 F5                    ..
        and     #$08                            ; 924D 29 08                    ).
        bne     $92A1                           ; 924F D0 50                    .P
        lda     $03D3                           ; 9251 AD D3 03                 ...
        eor     TextCursorPosition              ; 9254 4D CF 03                 M..
        and     #$0F                            ; 9257 29 0F                    ).
        bne     $92A1                           ; 9259 D0 46                    .F
        lda     TextCursorPosition              ; 925B AD CF 03                 ...
        and     #$0F                            ; 925E 29 0F                    ).
        cmp     #$0F                            ; 9260 C9 0F                    ..
        bne     $926A                           ; 9262 D0 06                    ..
        lda     $F5                             ; 9264 A5 F5                    ..
        and     #$40                            ; 9266 29 40                    )@
        beq     $92A1                           ; 9268 F0 37                    .7
        jsr     TextUiSystem_Entry_9976         ; 926A 20 76 99                  v.
        lda     TextCursorPosition              ; 926D AD CF 03                 ...
        lsr     a                               ; 9270 4A                       J
        lsr     a                               ; 9271 4A                       J
        lsr     a                               ; 9272 4A                       J
        lsr     a                               ; 9273 4A                       J
        tax                                     ; 9274 AA                       .
        ldy     $03D8                           ; 9275 AC D8 03                 ...
        lda     ($EE),y                         ; 9278 B1 EE                    ..
        and     #$0F                            ; 927A 29 0F                    ).
        tay                                     ; 927C A8                       .
        cpy     #$0C                            ; 927D C0 0C                    ..
        beq     $92A1                           ; 927F F0 20                    .
        lda     $9C8F,y                         ; 9281 B9 8F 9C                 ...
        clc                                     ; 9284 18                       .
        adc     $F2                             ; 9285 65 F2                    e.
TextUiSystem_Branch_9287:
        dex                                     ; 9287 CA                       .
        beq     $9290                           ; 9288 F0 06                    ..
        adc     $9C9F,y                         ; 928A 79 9F 9C                 y..
        jmp     TextUiSystem_Branch_9287        ; 928D 4C 87 92                 L..
; ----------------------------------------------------------------------------
        sta     $F2                             ; 9290 85 F2                    ..
        ldx     $9CAF,y                         ; 9292 BE AF 9C                 ...
        lda     $03CA                           ; 9295 AD CA 03                 ...
        dex                                     ; 9298 CA                       .
        beq     $929E                           ; 9299 F0 03                    ..
        jmp     TextUiSystem_Entry_98B3         ; 929B 4C B3 98                 L..
; ----------------------------------------------------------------------------
        jmp     TextUiSystem_Entry_98D2         ; 929E 4C D2 98                 L..
; ----------------------------------------------------------------------------
        rts                                     ; 92A1 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_92A2:
        ldy     #$0F                            ; 92A2 A0 0F                    ..
        lda     #$00                            ; 92A4 A9 00                    ..
        sta     $04E0,y                         ; 92A6 99 E0 04                 ...
        dey                                     ; 92A9 88                       .
        bpl     $92A6                           ; 92AA 10 FA                    ..
        jsr     TextUiSystem_Entry_932C         ; 92AC 20 2C 93                  ,.
        bpl     $92D9                           ; 92AF 10 28                    .(
        jsr     TextUiSystem_Entry_96E3         ; 92B1 20 E3 96                  ..
        sta     $00                           ; 92B4 85 00                    ..
        tax                                     ; 92B6 AA                       .
        ldy     #$00                            ; 92B7 A0 00                    ..
        lda     $04A0,y                         ; 92B9 B9 A0 04                 ...
        sta     $0480,x                         ; 92BC 9D 80 04                 ...
        inx                                     ; 92BF E8                       .
        iny                                     ; 92C0 C8                       .
        dec     $00                           ; 92C1 C6 00                    ..
        bne     $92B9                           ; 92C3 D0 F4                    ..
TextUiSystem_Entry_92C5:
        bit     $6BDE                           ; 92C5 2C DE 6B                 ,.k
        bmi     $92D5                           ; 92C8 30 0B                    0.
        lda     $07B4                           ; 92CA AD B4 07                 ...
        and     #$10                            ; 92CD 29 10                    ).
        bne     $92D5                           ; 92CF D0 04                    ..
        brk                                     ; 92D1 00                       .
        db   $12,$DF                         ; 92D2 12 DF                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 92D4 60                       `
; ----------------------------------------------------------------------------
        brk                                     ; 92D5 00                       .
        db   $13,$DF                         ; 92D6 13 DF                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 92D8 60                       `
; ----------------------------------------------------------------------------
        tay                                     ; 92D9 A8                       .
        bne     $92FC                           ; 92DA D0 20                    .
        lda     a:$F4                           ; 92DC AD F4 00                 ...
        and     #$03                            ; 92DF 29 03                    ).
        cmp     #$03                            ; 92E1 C9 03                    ..
        bne     $92D8                           ; 92E3 D0 F3                    ..
        lda     $04F3                           ; 92E5 AD F3 04                 ...
        sec                                     ; 92E8 38                       8
        sbc     #$10                            ; 92E9 E9 10                    ..
        sta     $04F3                           ; 92EB 8D F3 04                 ...
        jsr     TextUiSystem_Entry_96E3         ; 92EE 20 E3 96                  ..
        sta     $00                           ; 92F1 85 00                    ..
        tay                                     ; 92F3 A8                       .
        ldx     #$20                            ; 92F4 A2 20                    .
        jsr     TextUiSystem_Entry_931B         ; 92F6 20 1B 93                  ..
        jmp     TextUiSystem_Entry_92C5         ; 92F9 4C C5 92                 L..
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_96E3         ; 92FC 20 E3 96                  ..
        sta     $00                           ; 92FF 85 00                    ..
        tay                                     ; 9301 A8                       .
        ldx     #$20                            ; 9302 A2 20                    .
        jsr     TextUiSystem_Entry_931B         ; 9304 20 1B 93                  ..
        ldx     #$40                            ; 9307 A2 40                    .@
        jsr     TextUiSystem_Entry_931B         ; 9309 20 1B 93                  ..
        ldx     #$30                            ; 930C A2 30                    .0
        jsr     TextUiSystem_Entry_931B         ; 930E 20 1B 93                  ..
        jsr     TextUiSystem_Entry_94F4         ; 9311 20 F4 94                  ..
        jsr     TextUiSystem_Entry_92C5         ; 9314 20 C5 92                  ..
        jsr     TextUiSystem_Entry_94EA         ; 9317 20 EA 94                  ..
        rts                                     ; 931A 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_931B:
        lda     $00                           ; 931B A5 00                    ..
        sta     $01                             ; 931D 85 01                    ..
        lda     $0480,x                         ; 931F BD 80 04                 ...
        sta     $0480,y                         ; 9322 99 80 04                 ...
        inx                                     ; 9325 E8                       .
        iny                                     ; 9326 C8                       .
        dec     $01                             ; 9327 C6 01                    ..
        bne     $931F                           ; 9329 D0 F4                    ..
        rts                                     ; 932B 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_932C:
        lda     $03C8                           ; 932C AD C8 03                 ...
        cmp     #$60                            ; 932F C9 60                    .`
        bcs     $933C                           ; 9331 B0 09                    ..
        lda     $04F2                           ; 9333 AD F2 04                 ...
        eor     $03C9                           ; 9336 4D C9 03                 M..
        and     #$10                            ; 9339 29 10                    ).
        rts                                     ; 933B 60                       `
; ----------------------------------------------------------------------------
        lda     #$FF                            ; 933C A9 FF                    ..
        rts                                     ; 933E 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_933F:
        jsr     TextUiSystem_Entry_9349         ; 933F 20 49 93                  I.
        cmp     #$02                            ; 9342 C9 02                    ..
        beq     TextUiSystem_Entry_933F         ; 9344 F0 F9                    ..
        cmp     #$0F                            ; 9346 C9 0F                    ..
        rts                                     ; 9348 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9349:
        lda     a:$F4                           ; 9349 AD F4 00                 ...
        and     #$F0                            ; 934C 29 F0                    ).
        cmp     #$10                            ; 934E C9 10                    ..
        beq     $939A                           ; 9350 F0 48                    .H
        jsr     TextUiSystem_Entry_93AE         ; 9352 20 AE 93                  ..
        lda     a:$F4                           ; 9355 AD F4 00                 ...
        and     #$F0                            ; 9358 29 F0                    ).
        cmp     #$10                            ; 935A C9 10                    ..
        beq     $936D                           ; 935C F0 0F                    ..
        lda     a:$F4                           ; 935E AD F4 00                 ...
        and     #$0C                            ; 9361 29 0C                    ).
        cmp     #$0C                            ; 9363 C9 0C                    ..
        beq     $9394                           ; 9365 F0 2D                    .-
        txa                                     ; 9367 8A                       .
        bne     $9394                           ; 9368 D0 2A                    .*
        jmp     $9352                           ; 936A 4C 52 93                 LR.
; ----------------------------------------------------------------------------
        asl     $F5                             ; 936D 06 F5                    ..
        sec                                     ; 936F 38                       8
        ror     $F5                             ; 9370 66 F5                    f.
        lda     #$00                            ; 9372 A9 00                    ..
        sta     a:$F3                           ; 9374 8D F3 00                 ...
        lda     #$01                            ; 9377 A9 01                    ..
        sta     $03D2                           ; 9379 8D D2 03                 ...
        jsr     TextUiSystem_Entry_975A         ; 937C 20 5A 97                  Z.
        asl     $F5                             ; 937F 06 F5                    ..
        lsr     $F5                             ; 9381 46 F5                    F.
        lda     a:$F3                           ; 9383 AD F3 00                 ...
        cmp     $03D2                           ; 9386 CD D2 03                 ...
        bne     $9394                           ; 9389 D0 09                    ..
        jsr     TextUiSystem_Entry_94F4         ; 938B 20 F4 94                  ..
        dec     $03D3                           ; 938E CE D3 03                 ...
        jmp     $9352                           ; 9391 4C 52 93                 LR.
; ----------------------------------------------------------------------------
        lda     a:$F4                           ; 9394 AD F4 00                 ...
        and     #$0F                            ; 9397 29 0F                    ).
        rts                                     ; 9399 60                       `
; ----------------------------------------------------------------------------
        inc     a:$F3                           ; 939A EE F3 00                 ...
        lda     a:$F3                           ; 939D AD F3 00                 ...
        cmp     $03D2                           ; 93A0 CD D2 03                 ...
        beq     $9352                           ; 93A3 F0 AD                    ..
        jsr     TextUiSystem_Entry_94EA         ; 93A5 20 EA 94                  ..
        inc     $03D3                           ; 93A8 EE D3 03                 ...
        jmp     $9394                           ; 93AB 4C 94 93                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_93AE:
        inc     $F0                             ; 93AE E6 F0                    ..
        lda     $F0                             ; 93B0 A5 F0                    ..
        cmp     $F1                             ; 93B2 C5 F1                    ..
        beq     $9410                           ; 93B4 F0 5A                    .Z
        bcs     $93DB                           ; 93B6 B0 23                    .#
        tay                                     ; 93B8 A8                       .
        lda     ($EE),y                         ; 93B9 B1 EE                    ..
        bpl     $93D1                           ; 93BB 10 14                    ..
        and     #$E0                            ; 93BD 29 E0                    ).
        cmp     #$C0                            ; 93BF C9 C0                    ..
        beq     $93D1                           ; 93C1 F0 0E                    ..
        cmp     #$E0                            ; 93C3 C9 E0                    ..
        bne     TextUiSystem_Entry_93AE         ; 93C5 D0 E7                    ..
        lda     ($EE),y                         ; 93C7 B1 EE                    ..
        and     #$1F                            ; 93C9 29 1F                    ).
        sta     $03C6                           ; 93CB 8D C6 03                 ...
        jmp     TextUiSystem_Entry_93AE         ; 93CE 4C AE 93                 L..
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_94FE         ; 93D1 20 FE 94                  ..
        bcs     $93EF                           ; 93D4 B0 19                    ..
        jsr     TextUiSystem_Entry_9517         ; 93D6 20 17 95                  ..
        bcs     $93EF                           ; 93D9 B0 14                    ..
        lda     a:$F4                           ; 93DB AD F4 00                 ...
        and     #$0F                            ; 93DE 29 0F                    ).
        asl     a                               ; 93E0 0A                       .
        tay                                     ; 93E1 A8                       .
        lda     $93F1,y                         ; 93E2 B9 F1 93                 ...
        pha                                     ; 93E5 48                       H
        lda     $93F0,y                         ; 93E6 B9 F0 93                 ...
        pha                                     ; 93E9 48                       H
        txa                                     ; 93EA 8A                       .
        ldx     #$00                            ; 93EB A2 00                    ..
        cmp     #$C6                            ; 93ED C9 C6                    ..
        rts                                     ; 93EF 60                       `
; ----------------------------------------------------------------------------
        db   $1A                             ; 93F0 1A                       .
        db   $94,$1A,$94,$86,$94,$E0,$94,$2A ; 93F1 94 1A 94 86 94 E0 94 2A  .......*
        db   $94,$57,$94,$93,$94,$E0,$94,$3C ; 93F9 94 57 94 93 94 E0 94 3C  .W.....<
        db   $94,$69,$94,$B8,$94,$1A,$94,$1A ; 9401 94 69 94 B8 94 1A 94 1A  .i......
        db   $94,$76,$94,$C8,$94,$E8,$94     ; 9409 94 76 94 C8 94 E8 94     .v.....
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_94EA         ; 9410 20 EA 94                  ..
        lda     #$03                            ; 9413 A9 03                    ..
        sta     a:$F4                           ; 9415 8D F4 00                 ...
        ldx     #$01                            ; 9418 A2 01                    ..
        rts                                     ; 941A 60                       `
; ----------------------------------------------------------------------------
        beq     $9437                           ; 941B F0 1A                    ..
        lda     a:$F4                           ; 941D AD F4 00                 ...
        and     #$F0                            ; 9420 29 F0                    ).
        ora     #$04                            ; 9422 09 04                    ..
        clc                                     ; 9424 18                       .
        adc     #$10                            ; 9425 69 10                    i.
        sta     a:$F4                           ; 9427 8D F4 00                 ...
        rts                                     ; 942A 60                       `
; ----------------------------------------------------------------------------
        db   $F0,$0A,$AD,$F4,$00,$18,$69,$10 ; 942B F0 0A AD F4 00 18 69 10  ......i.
        db   $8D,$F4,$00,$60                 ; 9433 8D F4 00 60              ...`
; ----------------------------------------------------------------------------
        lda     #$08                            ; 9437 A9 08                    ..
        sta     a:$F4                           ; 9439 8D F4 00                 ...
        rts                                     ; 943C 60                       `
; ----------------------------------------------------------------------------
        db   $08,$20,$EA,$94,$28,$F0,$0E,$AD ; 943D 08 20 EA 94 28 F0 0E AD  . ..(...
        db   $F4,$00,$29,$F0,$09,$05,$18,$69 ; 9445 F4 00 29 F0 09 05 18 69  ..)....i
        db   $10,$8D,$F4,$00,$60,$A9,$0D,$8D ; 944D 10 8D F4 00 60 A9 0D 8D  ....`...
        db   $F4,$00,$60,$F0,$0A,$AD,$F4,$00 ; 9455 F4 00 60 F0 0A AD F4 00  ..`.....
        db   $18,$69,$10,$8D,$F4,$00,$60,$A9 ; 945D 18 69 10 8D F4 00 60 A9  .i....`.
        db   $09,$8D,$F4,$00,$60,$08,$20,$EA ; 9465 09 8D F4 00 60 08 20 EA  ....`. .
        db   $94,$28,$D0,$08,$A9,$0D,$8D,$F4 ; 946D 94 28 D0 08 A9 0D 8D F4  .(......
        db   $00,$60,$F0,$0D,$AD,$F4,$00,$29 ; 9475 00 60 F0 0D AD F4 00 29  .`.....)
        db   $F0,$09,$05,$18,$69,$10,$8D,$F4 ; 947D F0 09 05 18 69 10 8D F4  ....i...
        db   $00,$60                         ; 9485 00 60                    .`
; ----------------------------------------------------------------------------
        php                                     ; 9487 08                       .
        jsr     TextUiSystem_Entry_94EA         ; 9488 20 EA 94                  ..
        plp                                     ; 948B 28                       (
        bne     $94D0                           ; 948C D0 42                    .B
        lda     #$0E                            ; 948E A9 0E                    ..
        sta     a:$F4                           ; 9490 8D F4 00                 ...
        rts                                     ; 9493 60                       `
; ----------------------------------------------------------------------------
        beq     $94B3                           ; 9494 F0 1D                    ..
        ldy     #$01                            ; 9496 A0 01                    ..
        lda     ($EE),y                         ; 9498 B1 EE                    ..
        and     #$03                            ; 949A 29 03                    ).
        asl     a                               ; 949C 0A                       .
        asl     a                               ; 949D 0A                       .
        asl     a                               ; 949E 0A                       .
        asl     a                               ; 949F 0A                       .
        eor     a:$F4                           ; 94A0 4D F4 00                 M..
        and     #$F0                            ; 94A3 29 F0                    ).
        beq     $94B1                           ; 94A5 F0 0A                    ..
        lda     a:$F4                           ; 94A7 AD F4 00                 ...
        clc                                     ; 94AA 18                       .
        adc     #$10                            ; 94AB 69 10                    i.
        sta     a:$F4                           ; 94AD 8D F4 00                 ...
        rts                                     ; 94B0 60                       `
; ----------------------------------------------------------------------------
        dec     $F0                             ; 94B1 C6 F0                    ..
        lda     #$0A                            ; 94B3 A9 0A                    ..
        sta     a:$F4                           ; 94B5 8D F4 00                 ...
        rts                                     ; 94B8 60                       `
; ----------------------------------------------------------------------------
        php                                     ; 94B9 08                       .
        jsr     TextUiSystem_Entry_94EA         ; 94BA 20 EA 94                  ..
        plp                                     ; 94BD 28                       (
        bne     $94D0                           ; 94BE D0 10                    ..
        lda     #$0E                            ; 94C0 A9 0E                    ..
        sta     a:$F4                           ; 94C2 8D F4 00                 ...
        inc     $03D3                           ; 94C5 EE D3 03                 ...
        rts                                     ; 94C8 60                       `
; ----------------------------------------------------------------------------
        db   $08,$20,$EA,$94,$28,$F0,$10     ; 94C9 08 20 EA 94 28 F0 10     . ..(..
; ----------------------------------------------------------------------------
        lda     a:$F4                           ; 94D0 AD F4 00                 ...
        and     #$F0                            ; 94D3 29 F0                    ).
        ora     #$06                            ; 94D5 09 06                    ..
        clc                                     ; 94D7 18                       .
        adc     #$10                            ; 94D8 69 10                    i.
        sta     a:$F4                           ; 94DA 8D F4 00                 ...
        inc     $03D3                           ; 94DD EE D3 03                 ...
        rts                                     ; 94E0 60                       `
; ----------------------------------------------------------------------------
        lda     #$0F                            ; 94E1 A9 0F                    ..
        sta     a:$F4                           ; 94E3 8D F4 00                 ...
        ldx     #$01                            ; 94E6 A2 01                    ..
        rts                                     ; 94E8 60                       `
; ----------------------------------------------------------------------------
        db   $60                             ; 94E9 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_94EA:
        lda     $04F2                           ; 94EA AD F2 04                 ...
        clc                                     ; 94ED 18                       .
        adc     #$10                            ; 94EE 69 10                    i.
        sta     $04F2                           ; 94F0 8D F2 04                 ...
        rts                                     ; 94F3 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_94F4:
        lda     $04F2                           ; 94F4 AD F2 04                 ...
        sec                                     ; 94F7 38                       8
        sbc     #$10                            ; 94F8 E9 10                    ..
        sta     $04F2                           ; 94FA 8D F2 04                 ...
        rts                                     ; 94FD 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_94FE:
        lda     ($EE),y                         ; 94FE B1 EE                    ..
        clc                                     ; 9500 18                       .
        adc     #$3A                            ; 9501 69 3A                    i:
        bcs     $9515                           ; 9503 B0 10                    ..
        adc     #$06                            ; 9505 69 06                    i.
        bcc     $9515                           ; 9507 90 0C                    ..
        jsr     TextUiSystem_Entry_94EA         ; 9509 20 EA 94                  ..
        lda     #$07                            ; 950C A9 07                    ..
        sta     a:$F4                           ; 950E 8D F4 00                 ...
        ldx     #$01                            ; 9511 A2 01                    ..
        sec                                     ; 9513 38                       8
        rts                                     ; 9514 60                       `
; ----------------------------------------------------------------------------
        clc                                     ; 9515 18                       .
        rts                                     ; 9516 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9517:
        lda     ($EE),y                         ; 9517 B1 EE                    ..
        tax                                     ; 9519 AA                       .
        and     #$F0                            ; 951A 29 F0                    ).
        cmp     #$D0                            ; 951C C9 D0                    ..
        beq     $9522                           ; 951E F0 02                    ..
        clc                                     ; 9520 18                       .
        rts                                     ; 9521 60                       `
; ----------------------------------------------------------------------------
        lda     #$02                            ; 9522 A9 02                    ..
        sta     a:$F4                           ; 9524 8D F4 00                 ...
        ldx     #$01                            ; 9527 A2 01                    ..
        sec                                     ; 9529 38                       8
        rts                                     ; 952A 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_952B:
        lda     $F5                             ; 952B A5 F5                    ..
        and     #$04                            ; 952D 29 04                    ).
        bne     $9534                           ; 952F D0 03                    ..
        jsr     TextUiSystem_Entry_991D         ; 9531 20 1D 99                  ..
        jsr     TextUiSystem_Entry_9976         ; 9534 20 76 99                  v.
        lda     $03CB                           ; 9537 AD CB 03                 ...
        rol     a                               ; 953A 2A                       *
        rol     a                               ; 953B 2A                       *
        rol     a                               ; 953C 2A                       *
        and     #$03                            ; 953D 29 03                    ).
        jsr     TextUiSystem_Entry_A39C         ; 953F 20 9C A3                  ..
        rts                                     ; 9542 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9543:
        lda     $07A8,x                         ; 9543 BD A8 07                 ...
        sta     $F8                             ; 9546 85 F8                    ..
        lda     $07A0,x                         ; 9548 BD A0 07                 ...
        sta     $F7                             ; 954B 85 F7                    ..
        lda     $0788,x                         ; 954D BD 88 07                 ...
        sta     $03C7                           ; 9550 8D C7 03                 ...
TextUiSystem_Entry_9553:
        pha                                     ; 9553 48                       H
        lda     #$00                            ; 9554 A9 00                    ..
        sta     $03D5                           ; 9556 8D D5 03                 ...
        lda     $F5                             ; 9559 A5 F5                    ..
        and     #$0C                            ; 955B 29 0C                    ).
        sta     $F5                             ; 955D 85 F5                    ..
        lda     Bank16_TextUiPointerBase        ; 955F AD FF A4                 ...
        sta     $0A                           ; 9562 85 0A                    ..
        lda     $A500                           ; 9564 AD 00 A5                 ...
        sta     $0B                             ; 9567 85 0B                    ..
        pla                                     ; 9569 68                       h
        bpl     $956E                           ; 956A 10 02                    ..
        inc     $0B                             ; 956C E6 0B                    ..
        asl     a                               ; 956E 0A                       .
        clc                                     ; 956F 18                       .
        adc     $0A                           ; 9570 65 0A                    e.
        sta     $0A                           ; 9572 85 0A                    ..
        bcc     $9578                           ; 9574 90 02                    ..
        inc     $0B                             ; 9576 E6 0B                    ..
        ldy     #$00                            ; 9578 A0 00                    ..
        lda     ($0A),y                       ; 957A B1 0A                    ..
        sta     $EE                             ; 957C 85 EE                    ..
        iny                                     ; 957E C8                       .
        lda     ($0A),y                       ; 957F B1 0A                    ..
        sta     $EF                             ; 9581 85 EF                    ..
        ldx     #$00                            ; 9583 A2 00                    ..
        lda     ($EE,x)                         ; 9585 A1 EE                    ..
        and     #$F0                            ; 9587 29 F0                    ).
        cmp     #$10                            ; 9589 C9 10                    ..
        bne     $95A2                           ; 958B D0 15                    ..
        lda     $03D5                           ; 958D AD D5 03                 ...
        bne     $959E                           ; 9590 D0 0C                    ..
        lda     ($EE,x)                         ; 9592 A1 EE                    ..
        asl     a                               ; 9594 0A                       .
        asl     a                               ; 9595 0A                       .
        asl     a                               ; 9596 0A                       .
        asl     a                               ; 9597 0A                       .
        sta     $03D5                           ; 9598 8D D5 03                 ...
        inc     $03D5                           ; 959B EE D5 03                 ...
        iny                                     ; 959E C8                       .
        jmp     $957A                           ; 959F 4C 7A 95                 Lz.
; ----------------------------------------------------------------------------
        iny                                     ; 95A2 C8                       .
        lda     ($0A),y                       ; 95A3 B1 0A                    ..
        sec                                     ; 95A5 38                       8
        sbc     $EE                             ; 95A6 E5 EE                    ..
        sta     $F1                             ; 95A8 85 F1                    ..
        lda     #$01                            ; 95AA A9 01                    ..
        sta     $F0                             ; 95AC 85 F0                    ..
        rts                                     ; 95AE 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_95AF:
        lda     $03D4                           ; 95AF AD D4 03                 ...
        and     #$E0                            ; 95B2 29 E0                    ).
        sta     $03D4                           ; 95B4 8D D4 03                 ...
        lda     $03C9                           ; 95B7 AD C9 03                 ...
        and     #$0F                            ; 95BA 29 0F                    ).
        sta     $03C9                           ; 95BC 8D C9 03                 ...
        ldy     #$00                            ; 95BF A0 00                    ..
        lda     ($EE),y                         ; 95C1 B1 EE                    ..
        sta     $03C8                           ; 95C3 8D C8 03                 ...
        and     #$F0                            ; 95C6 29 F0                    ).
        bne     $95D1                           ; 95C8 D0 07                    ..
        lda     ($EE),y                         ; 95CA B1 EE                    ..
        and     #$0F                            ; 95CC 29 0F                    ).
        jsr     TextUiSystem_Entry_A4DE         ; 95CE 20 DE A4                  ..
        inc     $F0                             ; 95D1 E6 F0                    ..
        ldy     #$01                            ; 95D3 A0 01                    ..
        lda     ($EE),y                         ; 95D5 B1 EE                    ..
        and     #$F0                            ; 95D7 29 F0                    ).
        ora     $03C9                           ; 95D9 0D C9 03                 ...
        sta     $03C9                           ; 95DC 8D C9 03                 ...
        lda     ($EE),y                         ; 95DF B1 EE                    ..
        pha                                     ; 95E1 48                       H
        and     #$08                            ; 95E2 29 08                    ).
        beq     $95ED                           ; 95E4 F0 07                    ..
        lsr     a                               ; 95E6 4A                       J
        lsr     a                               ; 95E7 4A                       J
        lsr     a                               ; 95E8 4A                       J
        lsr     a                               ; 95E9 4A                       J
        jsr     TextUiSystem_Entry_A4E9         ; 95EA 20 E9 A4                  ..
        lda     #$03                            ; 95ED A9 03                    ..
        sta     $03CB                           ; 95EF 8D CB 03                 ...
        pla                                     ; 95F2 68                       h
        and     #$04                            ; 95F3 29 04                    ).
        beq     $95FE                           ; 95F5 F0 07                    ..
        ldy     #$02                            ; 95F7 A0 02                    ..
        lda     ($EE),y                         ; 95F9 B1 EE                    ..
        sta     $03CB                           ; 95FB 8D CB 03                 ...
        rts                                     ; 95FE 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_95FF:
        lda     #$00                            ; 95FF A9 00                    ..
        sta     $03D6                           ; 9601 8D D6 03                 ...
        sta     $03D7                           ; 9604 8D D7 03                 ...
        lda     $F7                             ; 9607 A5 F7                    ..
        sta     $03DB                           ; 9609 8D DB 03                 ...
        lda     #$00                            ; 960C A9 00                    ..
        sta     a:$F4                           ; 960E 8D F4 00                 ...
        ldy     #$01                            ; 9611 A0 01                    ..
        lda     ($EE),y                         ; 9613 B1 EE                    ..
        and     #$04                            ; 9615 29 04                    ).
        beq     $961A                           ; 9617 F0 01                    ..
        iny                                     ; 9619 C8                       .
        sty     $F0                             ; 961A 84 F0                    ..
        lda     $04F2                           ; 961C AD F2 04                 ...
        and     #$0F                            ; 961F 29 0F                    ).
        sta     $04F2                           ; 9621 8D F2 04                 ...
        lda     $03C9                           ; 9624 AD C9 03                 ...
        and     #$F0                            ; 9627 29 F0                    ).
        sec                                     ; 9629 38                       8
        sbc     #$01                            ; 962A E9 01                    ..
        ora     $04F2                           ; 962C 0D F2 04                 ...
        sta     $04F2                           ; 962F 8D F2 04                 ...
        lda     #$FF                            ; 9632 A9 FF                    ..
        sta     $03D3                           ; 9634 8D D3 03                 ...
        lda     #$10                            ; 9637 A9 10                    ..
        sta     $04F3                           ; 9639 8D F3 04                 ...
        rts                                     ; 963C 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_963D:
        lda     #$00                            ; 963D A9 00                    ..
        sta     $03D9                           ; 963F 8D D9 03                 ...
        lda     $03D5                           ; 9642 AD D5 03                 ...
        and     #$F0                            ; 9645 29 F0                    ).
        sta     $03D5                           ; 9647 8D D5 03                 ...
        jsr     TextUiSystem_Entry_9349         ; 964A 20 49 93                  I.
        cmp     #$0F                            ; 964D C9 0F                    ..
        beq     $967C                           ; 964F F0 2B                    .+
        cmp     #$02                            ; 9651 C9 02                    ..
        beq     $9661                           ; 9653 F0 0C                    ..
        cmp     #$07                            ; 9655 C9 07                    ..
        bne     $964A                           ; 9657 D0 F1                    ..
        lda     $F0                             ; 9659 A5 F0                    ..
        sta     $03D9                           ; 965B 8D D9 03                 ...
        jmp     $964A                           ; 965E 4C 4A 96                 LJ.
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_96C5         ; 9661 20 C5 96                  ..
        ldy     $F0                             ; 9664 A4 F0                    ..
        sty     $03D8                           ; 9666 8C D8 03                 ...
        asl     $F5                             ; 9669 06 F5                    ..
        sec                                     ; 966B 38                       8
        ror     $F5                             ; 966C 66 F5                    f.
        lda     ($EE),y                         ; 966E B1 EE                    ..
        and     #$0F                            ; 9670 29 0F                    ).
        jsr     TextUiSystem_Entry_998C         ; 9672 20 8C 99                  ..
        asl     $F5                             ; 9675 06 F5                    ..
        lsr     $F5                             ; 9677 46 F5                    F.
        jmp     $964A                           ; 9679 4C 4A 96                 LJ.
; ----------------------------------------------------------------------------
        lda     $F5                             ; 967C A5 F5                    ..
        and     #$04                            ; 967E 29 04                    ).
        bne     $96C4                           ; 9680 D0 42                    .B
        bit     $6BDE                           ; 9682 2C DE 6B                 ,.k
        bmi     $9694                           ; 9685 30 0D                    0.
        lda     $07B4                           ; 9687 AD B4 07                 ...
        and     #$10                            ; 968A 29 10                    ).
        bne     $9694                           ; 968C D0 06                    ..
        jsr     TextUiSystem_Entry_96F3         ; 968E 20 F3 96                  ..
        jsr     TextUiSystem_Entry_8892         ; 9691 20 92 88                  ..
        lda     $03C9                           ; 9694 AD C9 03                 ...
        and     #$F0                            ; 9697 29 F0                    ).
        sta     $03C9                           ; 9699 8D C9 03                 ...
        lda     $04F2                           ; 969C AD F2 04                 ...
        lsr     a                               ; 969F 4A                       J
        lsr     a                               ; 96A0 4A                       J
        lsr     a                               ; 96A1 4A                       J
        lsr     a                               ; 96A2 4A                       J
        ora     $03C9                           ; 96A3 0D C9 03                 ...
        sta     $03C9                           ; 96A6 8D C9 03                 ...
        lda     $07B4                           ; 96A9 AD B4 07                 ...
        and     #$40                            ; 96AC 29 40                    )@
        bne     $96C4                           ; 96AE D0 14                    ..
        lda     $07B4                           ; 96B0 AD B4 07                 ...
        and     #$FB                            ; 96B3 29 FB                    ).
        sta     $07B4                           ; 96B5 8D B4 07                 ...
        lda     $F5                             ; 96B8 A5 F5                    ..
        and     #$10                            ; 96BA 29 10                    ).
        lsr     a                               ; 96BC 4A                       J
        lsr     a                               ; 96BD 4A                       J
        ora     $07B4                           ; 96BE 0D B4 07                 ...
        sta     $07B4                           ; 96C1 8D B4 07                 ...
        rts                                     ; 96C4 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_96C5:
        ldy     $F0                             ; 96C5 A4 F0                    ..
TextUiSystem_Branch_96C7:
        cpy     $F1                             ; 96C7 C4 F1                    ..
        beq     $96E2                           ; 96C9 F0 17                    ..
        lda     ($EE),y                         ; 96CB B1 EE                    ..
        iny                                     ; 96CD C8                       .
        clc                                     ; 96CE 18                       .
        adc     #$43                            ; 96CF 69 43                    iC
        bcs     TextUiSystem_Branch_96C7        ; 96D1 B0 F4                    ..
        adc     #$0C                            ; 96D3 69 0C                    i.
        bcc     TextUiSystem_Branch_96C7        ; 96D5 90 F0                    ..
        adc     #$00                            ; 96D7 69 00                    i.
        ora     $03D5                           ; 96D9 0D D5 03                 ...
        sta     $03D5                           ; 96DC 8D D5 03                 ...
        jmp     TextUiSystem_Branch_96C7        ; 96DF 4C C7 96                 L..
; ----------------------------------------------------------------------------
        rts                                     ; 96E2 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_96E3:
        lda     $03C8                           ; 96E3 AD C8 03                 ...
        and     #$0F                            ; 96E6 29 0F                    ).
        asl     a                               ; 96E8 0A                       .
        tax                                     ; 96E9 AA                       .
        lda     $03C8                           ; 96EA AD C8 03                 ...
        and     #$F0                            ; 96ED 29 F0                    ).
        lsr     a                               ; 96EF 4A                       J
        lsr     a                               ; 96F0 4A                       J
        lsr     a                               ; 96F1 4A                       J
        rts                                     ; 96F2 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_96F3:
        bit     $6BDE                           ; 96F3 2C DE 6B                 ,.k
        bmi     $9751                           ; 96F6 30 59                    0Y
        lda     #$00                            ; 96F8 A9 00                    ..
        sta     $01                             ; 96FA 85 01                    ..
        lda     $03C8                           ; 96FC AD C8 03                 ...
        lsr     a                               ; 96FF 4A                       J
        lsr     a                               ; 9700 4A                       J
        lsr     a                               ; 9701 4A                       J
        lsr     a                               ; 9702 4A                       J
        and     #$07                            ; 9703 29 07                    ).
        tax                                     ; 9705 AA                       .
        lda     $9752,x                         ; 9706 BD 52 97                 .R.
        sta     $00                           ; 9709 85 00                    ..
        bit     $03C8                           ; 970B 2C C8 03                 ,..
        bpl     $9716                           ; 970E 10 06                    ..
        sta     $01                             ; 9710 85 01                    ..
        lda     #$FF                            ; 9712 A9 FF                    ..
        sta     $00                           ; 9714 85 00                    ..
        lda     $03C8                           ; 9716 AD C8 03                 ...
        and     #$0F                            ; 9719 29 0F                    ).
        tax                                     ; 971B AA                       .
        lsr     $00                           ; 971C 46 00                    F.
        ror     $01                             ; 971E 66 01                    f.
        dex                                     ; 9720 CA                       .
        bne     $971C                           ; 9721 D0 F9                    ..
        lda     $03C9                           ; 9723 AD C9 03                 ...
        lsr     a                               ; 9726 4A                       J
        lsr     a                               ; 9727 4A                       J
        lsr     a                               ; 9728 4A                       J
        lsr     a                               ; 9729 4A                       J
        sta     $02                             ; 972A 85 02                    ..
        lda     $04F2                           ; 972C AD F2 04                 ...
        and     #$F0                            ; 972F 29 F0                    ).
        lsr     a                               ; 9731 4A                       J
        lsr     a                               ; 9732 4A                       J
        lsr     a                               ; 9733 4A                       J
        tax                                     ; 9734 AA                       .
        lsr     a                               ; 9735 4A                       J
        sec                                     ; 9736 38                       8
        sbc     $02                             ; 9737 E5 02                    ..
        sta     $02                             ; 9739 85 02                    ..
        lda     $076A,x                         ; 973B BD 6A 07                 .j.
        ora     $00                           ; 973E 05 00                    ..
        sta     $076A,x                         ; 9740 9D 6A 07                 .j.
        lda     $076B,x                         ; 9743 BD 6B 07                 .k.
        ora     $01                             ; 9746 05 01                    ..
        sta     $076B,x                         ; 9748 9D 6B 07                 .k.
        dex                                     ; 974B CA                       .
        dex                                     ; 974C CA                       .
        dec     $02                             ; 974D C6 02                    ..
        bpl     $973B                           ; 974F 10 EA                    ..
        rts                                     ; 9751 60                       `
; ----------------------------------------------------------------------------
        db   $00,$80,$C0,$E0,$F0,$F8,$FC,$FE ; 9752 00 80 C0 E0 F0 F8 FC FE  ........
; ----------------------------------------------------------------------------
TextUiSystem_Entry_975A:
        ldy     #$01                            ; 975A A0 01                    ..
        lda     ($EE),y                         ; 975C B1 EE                    ..
        and     #$04                            ; 975E 29 04                    ).
        beq     $9763                           ; 9760 F0 01                    ..
        iny                                     ; 9762 C8                       .
        sty     $03DA                           ; 9763 8C DA 03                 ...
        ldy     $F0                             ; 9766 A4 F0                    ..
        dey                                     ; 9768 88                       .
        cpy     $03DA                           ; 9769 CC DA 03                 ...
        beq     $97BA                           ; 976C F0 4C                    .L
        lda     ($EE),y                         ; 976E B1 EE                    ..
        bpl     $97BA                           ; 9770 10 48                    .H
        asl     a                               ; 9772 0A                       .
        bmi     $97BA                           ; 9773 30 45                    0E
        tya                                     ; 9775 98                       .
        pha                                     ; 9776 48                       H
        lda     ($EE),y                         ; 9777 B1 EE                    ..
        clc                                     ; 9779 18                       .
        adc     #$60                            ; 977A 69 60                    i`
        bcs     $9784                           ; 977C B0 06                    ..
        jsr     TextUiSystem_Entry_978C         ; 977E 20 8C 97                  ..
        jmp     $9787                           ; 9781 4C 87 97                 L..
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_97BB         ; 9784 20 BB 97                  ..
        pla                                     ; 9787 68                       h
        tay                                     ; 9788 A8                       .
        jmp     $9768                           ; 9789 4C 68 97                 Lh.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_978C:
        lda     ($EE),y                         ; 978C B1 EE                    ..
        asl     a                               ; 978E 0A                       .
        tay                                     ; 978F A8                       .
        ldx     $03D7                           ; 9790 AE D7 03                 ...
        cmp     $A739,x                         ; 9793 DD 39 A7                 .9.
        bcc     $97B0                           ; 9796 90 18                    ..
TextUiSystem_Entry_9798:
        lda     $03D7                           ; 9798 AD D7 03                 ...
        asl     a                               ; 979B 0A                       .
        tax                                     ; 979C AA                       .
        lda     Bank16_TextUiDispatchTables,x   ; 979D BD 35 A7                 .5.
        sta     $0A                           ; 97A0 85 0A                    ..
        lda     $A736,x                         ; 97A2 BD 36 A7                 .6.
        sta     $0B                             ; 97A5 85 0B                    ..
        iny                                     ; 97A7 C8                       .
        lda     ($0A),y                       ; 97A8 B1 0A                    ..
        pha                                     ; 97AA 48                       H
        dey                                     ; 97AB 88                       .
        lda     ($0A),y                       ; 97AC B1 0A                    ..
        pha                                     ; 97AE 48                       H
        rts                                     ; 97AF 60                       `
; ----------------------------------------------------------------------------
        bit     $F5                             ; 97B0 24 F5                    $.
        bpl     $97BA                           ; 97B2 10 06                    ..
        jsr     TextUiSystem_Entry_9798         ; 97B4 20 98 97                  ..
        sta     $03D2                           ; 97B7 8D D2 03                 ...
        rts                                     ; 97BA 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_97BB:
        cmp     #$04                            ; 97BB C9 04                    ..
        bcs     $97C3                           ; 97BD B0 04                    ..
        sta     $03D7                           ; 97BF 8D D7 03                 ...
        rts                                     ; 97C2 60                       `
; ----------------------------------------------------------------------------
        cmp     #$08                            ; 97C3 C9 08                    ..
        bcs     $97CE                           ; 97C5 B0 07                    ..
        sec                                     ; 97C7 38                       8
        sbc     #$04                            ; 97C8 E9 04                    ..
        sta     $03D6                           ; 97CA 8D D6 03                 ...
        rts                                     ; 97CD 60                       `
; ----------------------------------------------------------------------------
        clc                                     ; 97CE 18                       .
        adc     #$F0                            ; 97CF 69 F0                    i.
        bcs     $97DF                           ; 97D1 B0 0C                    ..
        bit     $F5                             ; 97D3 24 F5                    $.
        bmi     $97DE                           ; 97D5 30 07                    0.
        clc                                     ; 97D7 18                       .
        adc     #$08                            ; 97D8 69 08                    i.
        adc     $F2                             ; 97DA 65 F2                    e.
        sta     $F2                             ; 97DC 85 F2                    ..
        rts                                     ; 97DE 60                       `
; ----------------------------------------------------------------------------
        tay                                     ; 97DF A8                       .
        bne     $97ED                           ; 97E0 D0 0B                    ..
        bit     $F5                             ; 97E2 24 F5                    $.
        bpl     TextUiSystem_Branch_97EC        ; 97E4 10 06                    ..
        lda     $F5                             ; 97E6 A5 F5                    ..
        ora     #$41                            ; 97E8 09 41                    .A
        sta     $F5                             ; 97EA 85 F5                    ..
TextUiSystem_Branch_97EC:
        rts                                     ; 97EC 60                       `
; ----------------------------------------------------------------------------
        cmp     #$0F                            ; 97ED C9 0F                    ..
        bne     $97FC                           ; 97EF D0 0B                    ..
        bit     $F5                             ; 97F1 24 F5                    $.
        bpl     $97FB                           ; 97F3 10 06                    ..
        lda     $F5                             ; 97F5 A5 F5                    ..
        ora     #$10                            ; 97F7 09 10                    ..
        sta     $F5                             ; 97F9 85 F5                    ..
        rts                                     ; 97FB 60                       `
; ----------------------------------------------------------------------------
        bit     $F5                             ; 97FC 24 F5                    $.
        bpl     TextUiSystem_Branch_982C        ; 97FE 10 2C                    .,
        lda     $03D2                           ; 9800 AD D2 03                 ...
        sta     $03D0                           ; 9803 8D D0 03                 ...
        lda     $03D1                           ; 9806 AD D1 03                 ...
        sta     a:$F3                           ; 9809 8D F3 00                 ...
        lda     $03D5                           ; 980C AD D5 03                 ...
        and     #$0F                            ; 980F 29 0F                    ).
        tax                                     ; 9811 AA                       .
        clc                                     ; 9812 18                       .
        adc     a:$F3                           ; 9813 6D F3 00                 m..
        cmp     $03D0                           ; 9816 CD D0 03                 ...
        bcc     TextUiSystem_Branch_981E        ; 9819 90 03                    ..
        lda     $03D0                           ; 981B AD D0 03                 ...
TextUiSystem_Branch_981E:
        sta     $03D2                           ; 981E 8D D2 03                 ...
        cpx     $03D0                           ; 9821 EC D0 03                 ...
        bcs     TextUiSystem_Branch_982C        ; 9824 B0 06                    ..
        lda     $F5                             ; 9826 A5 F5                    ..
        ora     #$40                            ; 9828 09 40                    .@
        sta     $F5                             ; 982A 85 F5                    ..
TextUiSystem_Branch_982C:
        rts                                     ; 982C 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_982D:
        ldx     $03D6                           ; 982D AE D6 03                 ...
        jsr     TextUiSystem_Entry_9882         ; 9830 20 82 98                  ..
        lda     $0D                           ; 9833 A5 0D                    ..
        sta     $0A                           ; 9835 85 0A                    ..
        lda     $0E                             ; 9837 A5 0E                    ..
        sta     $0B                             ; 9839 85 0B                    ..
        lda     $0F                             ; 983B A5 0F                    ..
        sta     $0C                             ; 983D 85 0C                    ..
        bcs     $9844                           ; 983F B0 03                    ..
        jmp     ($000A)                         ; 9841 6C 0A 00                 l..
; ----------------------------------------------------------------------------
        ldy     #$00                            ; 9844 A0 00                    ..
        cpy     $0C                             ; 9846 C4 0C                    ..
        beq     $9855                           ; 9848 F0 0B                    ..
        lda     ($0A),y                       ; 984A B1 0A                    ..
        bmi     $9856                           ; 984C 30 08                    0.
        iny                                     ; 984E C8                       .
        jsr     TextUiSystem_Entry_98B3         ; 984F 20 B3 98                  ..
        jmp     $9846                           ; 9852 4C 46 98                 LF.
; ----------------------------------------------------------------------------
        rts                                     ; 9855 60                       `
; ----------------------------------------------------------------------------
        tya                                     ; 9856 98                       .
        pha                                     ; 9857 48                       H
        lda     ($0A),y                       ; 9858 B1 0A                    ..
        ldx     $03D6                           ; 985A AE D6 03                 ...
        jsr     TextUiSystem_Entry_9882         ; 985D 20 82 98                  ..
        bcs     $9868                           ; 9860 B0 06                    ..
        jsr     TextUiSystem_Entry_987F         ; 9862 20 7F 98                  ..
        jmp     $9879                           ; 9865 4C 79 98                 Ly.
; ----------------------------------------------------------------------------
        ldy     #$00                            ; 9868 A0 00                    ..
        cpy     $0F                             ; 986A C4 0F                    ..
        beq     $9879                           ; 986C F0 0B                    ..
        lda     ($0D),y                       ; 986E B1 0D                    ..
        iny                                     ; 9870 C8                       .
        bmi     $986A                           ; 9871 30 F7                    0.
        jsr     TextUiSystem_Entry_98B3         ; 9873 20 B3 98                  ..
        jmp     $986A                           ; 9876 4C 6A 98                 Lj.
; ----------------------------------------------------------------------------
        pla                                     ; 9879 68                       h
        tay                                     ; 987A A8                       .
        iny                                     ; 987B C8                       .
        jmp     $9846                           ; 987C 4C 46 98                 LF.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_987F:
        jmp     ($000D)                         ; 987F 6C 0D 00                 l..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9882:
        asl     a                               ; 9882 0A                       .
        sta     $02                             ; 9883 85 02                    ..
        stx     $00                           ; 9885 86 00                    ..
        asl     $00                           ; 9887 06 00                    ..
        ldx     $00                           ; 9889 A6 00                    ..
        lda     Bank16_TextUiCommandDirectory,x ; 988B BD E3 A5                 ...
        sta     $00                           ; 988E 85 00                    ..
        lda     $A5E4,x                         ; 9890 BD E4 A5                 ...
        sta     $01                             ; 9893 85 01                    ..
        ldy     $02                             ; 9895 A4 02                    ..
        lda     ($00),y                       ; 9897 B1 00                    ..
        sta     $0D                           ; 9899 85 0D                    ..
        iny                                     ; 989B C8                       .
        lda     ($00),y                       ; 989C B1 00                    ..
        sta     $0E                             ; 989E 85 0E                    ..
        iny                                     ; 98A0 C8                       .
        lda     ($00),y                       ; 98A1 B1 00                    ..
        sec                                     ; 98A3 38                       8
        sbc     $0D                           ; 98A4 E5 0D                    ..
        sta     $0F                             ; 98A6 85 0F                    ..
        txa                                     ; 98A8 8A                       .
        lsr     a                               ; 98A9 4A                       J
        tay                                     ; 98AA A8                       .
        lda     $02                             ; 98AB A5 02                    ..
        cmp     $A5E7,y                         ; 98AD D9 E7 A5                 ...
        rts                                     ; 98B0 60                       `
; ----------------------------------------------------------------------------
        db   $A9,$00                         ; 98B1 A9 00                    ..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_98B3:
        stx     $09                             ; 98B3 86 09                    ..
        ldx     $F2                             ; 98B5 A6 F2                    ..
        inc     $F2                             ; 98B7 E6 F2                    ..
        cmp     #$FF                            ; 98B9 C9 FF                    ..
        beq     TextUiSystem_Branch_98C9        ; 98BB F0 0C                    ..
        pha                                     ; 98BD 48                       H
        lda     $F5                             ; 98BE A5 F5                    ..
        lsr     a                               ; 98C0 4A                       J
        lsr     a                               ; 98C1 4A                       J
        lsr     a                               ; 98C2 4A                       J
        pla                                     ; 98C3 68                       h
        bcs     TextUiSystem_Branch_98CC        ; 98C4 B0 06                    ..
        sta     $04C0,x                         ; 98C6 9D C0 04                 ...
TextUiSystem_Branch_98C9:
        ldx     $09                             ; 98C9 A6 09                    ..
        rts                                     ; 98CB 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_98CC:
        sta     $0480,x                         ; 98CC 9D 80 04                 ...
        ldx     $09                             ; 98CF A6 09                    ..
        rts                                     ; 98D1 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_98D2:
        cmp     #$FF                            ; 98D2 C9 FF                    ..
        beq     $98E8                           ; 98D4 F0 12                    ..
        stx     $09                             ; 98D6 86 09                    ..
        ldx     $F2                             ; 98D8 A6 F2                    ..
        pha                                     ; 98DA 48                       H
        lda     $F5                             ; 98DB A5 F5                    ..
        lsr     a                               ; 98DD 4A                       J
        lsr     a                               ; 98DE 4A                       J
        lsr     a                               ; 98DF 4A                       J
        pla                                     ; 98E0 68                       h
        bcs     $98E9                           ; 98E1 B0 06                    ..
        sta     $04A0,x                         ; 98E3 9D A0 04                 ...
        ldx     $09                             ; 98E6 A6 09                    ..
        rts                                     ; 98E8 60                       `
; ----------------------------------------------------------------------------
        pha                                     ; 98E9 48                       H
        lda     $F4                             ; 98EA A5 F4                    ..
        and     #$03                            ; 98EC 29 03                    ).
        beq     TextUiSystem_Branch_98F7        ; 98EE F0 07                    ..
        pla                                     ; 98F0 68                       h
        sta     $04C0,x                         ; 98F1 9D C0 04                 ...
        ldx     $09                             ; 98F4 A6 09                    ..
        rts                                     ; 98F6 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_98F7:
        pla                                     ; 98F7 68                       h
        ldx     $09                             ; 98F8 A6 09                    ..
        rts                                     ; 98FA 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_98FB:
        jsr     TextUiSystem_Entry_98D2         ; 98FB 20 D2 98                  ..
TextUiSystem_Entry_98FE:
        inc     $F2                             ; 98FE E6 F2                    ..
        rts                                     ; 9900 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9901:
        sty     $09                             ; 9901 84 09                    ..
        ldy     $F2                             ; 9903 A4 F2                    ..
        lda     $F5                             ; 9905 A5 F5                    ..
        and     #$04                            ; 9907 29 04                    ).
        bne     $9914                           ; 9909 D0 09                    ..
        lda     $04C0,y                         ; 990B B9 C0 04                 ...
        ldx     $04A0,y                         ; 990E BE A0 04                 ...
        ldy     $09                             ; 9911 A4 09                    ..
        rts                                     ; 9913 60                       `
; ----------------------------------------------------------------------------
        lda     $0480,y                         ; 9914 B9 80 04                 ...
        ldx     $04C0,y                         ; 9917 BE C0 04                 ...
        ldy     $09                             ; 991A A4 09                    ..
        rts                                     ; 991C 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_991D:
        lda     $04F2                           ; 991D AD F2 04                 ...
        and     #$F0                            ; 9920 29 F0                    ).
        sta     $04F2                           ; 9922 8D F2 04                 ...
        lda     $03C8                           ; 9925 AD C8 03                 ...
        and     #$0F                            ; 9928 29 0F                    ).
        ora     $04F2                           ; 992A 0D F2 04                 ...
        sta     $04F2                           ; 992D 8D F2 04                 ...
        lda     $04F3                           ; 9930 AD F3 04                 ...
        and     #$F0                            ; 9933 29 F0                    ).
        sta     $04F3                           ; 9935 8D F3 04                 ...
        lda     $03C8                           ; 9938 AD C8 03                 ...
        lsr     a                               ; 993B 4A                       J
        lsr     a                               ; 993C 4A                       J
        lsr     a                               ; 993D 4A                       J
        lsr     a                               ; 993E 4A                       J
        ora     $04F3                           ; 993F 0D F3 04                 ...
        sta     $04F3                           ; 9942 8D F3 04                 ...
        jsr     TextUiSystem_Entry_932C         ; 9945 20 2C 93                  ,.
        bpl     $9959                           ; 9948 10 0F                    ..
        jsr     TextUiSystem_Entry_96E3         ; 994A 20 E3 96                  ..
        tax                                     ; 994D AA                       .
        dex                                     ; 994E CA                       .
        lda     $04C0,x                         ; 994F BD C0 04                 ...
        sta     $0480,x                         ; 9952 9D 80 04                 ...
        dex                                     ; 9955 CA                       .
        bpl     $994F                           ; 9956 10 F7                    ..
        rts                                     ; 9958 60                       `
; ----------------------------------------------------------------------------
        tay                                     ; 9959 A8                       .
        lda     $04F3                           ; 995A AD F3 04                 ...
        and     #$0F                            ; 995D 29 0F                    ).
        ora     #$20                            ; 995F 09 20                    .
        sta     $04F3                           ; 9961 8D F3 04                 ...
        tya                                     ; 9964 98                       .
        bne     $9975                           ; 9965 D0 0E                    ..
        jsr     TextUiSystem_Entry_96E3         ; 9967 20 E3 96                  ..
        tay                                     ; 996A A8                       .
        dey                                     ; 996B 88                       .
        lda     $04D0,y                         ; 996C B9 D0 04                 ...
        sta     $0480,y                         ; 996F 99 80 04                 ...
        dey                                     ; 9972 88                       .
        bpl     $996C                           ; 9973 10 F7                    ..
        rts                                     ; 9975 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9976:
        lda     $F5                             ; 9976 A5 F5                    ..
        and     #$04                            ; 9978 29 04                    ).
        bne     $9986                           ; 997A D0 0A                    ..
        jsr     TextUiSystem_Entry_932C         ; 997C 20 2C 93                  ,.
        bpl     $9983                           ; 997F 10 02                    ..
        lda     #$00                            ; 9981 A9 00                    ..
        sta     $F2                             ; 9983 85 F2                    ..
        rts                                     ; 9985 60                       `
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_96E3         ; 9986 20 E3 96                  ..
        stx     $F2                             ; 9989 86 F2                    ..
        rts                                     ; 998B 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_998C:
        sta     $03CE                           ; 998C 8D CE 03                 ...
        cmp     #$00                            ; 998F C9 00                    ..
        beq     $99B7                           ; 9991 F0 24                    .$
        clc                                     ; 9993 18                       .
        adc     #$FA                            ; 9994 69 FA                    i.
        bcc     $99EB                           ; 9996 90 53                    .S
        asl     a                               ; 9998 0A                       .
        tay                                     ; 9999 A8                       .
        lda     $99A4,y                         ; 999A B9 A4 99                 ...
        pha                                     ; 999D 48                       H
        lda     $99A3,y                         ; 999E B9 A3 99                 ...
        pha                                     ; 99A1 48                       H
        rts                                     ; 99A2 60                       `
; ----------------------------------------------------------------------------
        db   $81                             ; 99A3 81                       .
        db   $9F,$93,$9F,$D6,$9C,$E6,$9E,$57 ; 99A4 9F 93 9F D6 9C E6 9E 57  .......W
        db   $9F,$A5,$9F,$9A,$A3,$E7,$A0,$E0 ; 99AC 9F A5 9F 9A A3 E7 A0 E0  ........
        db   $A0,$BA,$9F                     ; 99B4 A0 BA 9F                 ...
; ----------------------------------------------------------------------------
        lda     $F5                             ; 99B7 A5 F5                    ..
        bmi     $99D1                           ; 99B9 30 16                    0.
        and     #$40                            ; 99BB 29 40                    )@
        beq     TextUiSystem_Branch_99CF        ; 99BD F0 10                    ..
TextUiSystem_Branch_99BF:
        jsr     TextUiSystem_Entry_9CC3         ; 99BF 20 C3 9C                  ..
        jsr     TextUiSystem_Entry_9A32         ; 99C2 20 32 9A                  2.
        bcs     TextUiSystem_Branch_99CF        ; 99C5 B0 08                    ..
        jsr     TextUiSystem_Entry_9AC0         ; 99C7 20 C0 9A                  ..
        jsr     TextUiSystem_Entry_99DF         ; 99CA 20 DF 99                  ..
        bcc     TextUiSystem_Branch_99BF        ; 99CD 90 F0                    ..
TextUiSystem_Branch_99CF:
        clc                                     ; 99CF 18                       .
        rts                                     ; 99D0 60                       `
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_9BB4         ; 99D1 20 B4 9B                  ..
        lda     #$1F                            ; 99D4 A9 1F                    ..
        sta     TextCursorPosition              ; 99D6 8D CF 03                 ...
        lda     #$81                            ; 99D9 A9 81                    ..
        sta     $03CA                           ; 99DB 8D CA 03                 ...
        rts                                     ; 99DE 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_99DF:
        lda     #$02                            ; 99DF A9 02                    ..
        cmp     $03CC                           ; 99E1 CD CC 03                 ...
        bne     TextUiSystem_Branch_99E9        ; 99E4 D0 03                    ..
        jmp     TextUiSystem_Branch_9AB5        ; 99E6 4C B5 9A                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_99E9:
        clc                                     ; 99E9 18                       .
        rts                                     ; 99EA 60                       `
; ----------------------------------------------------------------------------
        lda     $F5                             ; 99EB A5 F5                    ..
        bmi     $9A29                           ; 99ED 30 3A                    0:
        jsr     TextUiSystem_Entry_9CC3         ; 99EF 20 C3 9C                  ..
        bcs     $9A20                           ; 99F2 B0 2C                    .,
        jsr     TextUiSystem_Entry_9A32         ; 99F4 20 32 9A                  2.
        bcs     $9A27                           ; 99F7 B0 2E                    ..
        jsr     TextUiSystem_Entry_9A80         ; 99F9 20 80 9A                  ..
        bcs     $9A27                           ; 99FC B0 29                    .)
        jsr     TextUiSystem_Entry_9AC0         ; 99FE 20 C0 9A                  ..
        jsr     TextUiSystem_Entry_9AD7         ; 9A01 20 D7 9A                  ..
        bcs     $9A15                           ; 9A04 B0 0F                    ..
        jsr     TextUiSystem_Entry_9B25         ; 9A06 20 25 9B                  %.
        bcs     $9A15                           ; 9A09 B0 0A                    ..
        jsr     TextUiSystem_Entry_9B5A         ; 9A0B 20 5A 9B                  Z.
        bcs     $9A15                           ; 9A0E B0 05                    ..
        jsr     TextUiSystem_Entry_9B7D         ; 9A10 20 7D 9B                  }.
        bcc     $99EF                           ; 9A13 90 DA                    ..
        lda     $F5                             ; 9A15 A5 F5                    ..
        and     #$10                            ; 9A17 29 10                    ).
        beq     $99EF                           ; 9A19 F0 D4                    ..
        jsr     TextUiSystem_Entry_9BBE         ; 9A1B 20 BE 9B                  ..
        sec                                     ; 9A1E 38                       8
        rts                                     ; 9A1F 60                       `
; ----------------------------------------------------------------------------
        lda     #$FD                            ; 9A20 A9 FD                    ..
        sta     $F8                             ; 9A22 85 F8                    ..
        jsr     TextUiSystem_Entry_9C0F         ; 9A24 20 0F 9C                  ..
        clc                                     ; 9A27 18                       .
        rts                                     ; 9A28 60                       `
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_9BB4         ; 9A29 20 B4 9B                  ..
        lda     #$81                            ; 9A2C A9 81                    ..
        sta     $03CA                           ; 9A2E 8D CA 03                 ...
        rts                                     ; 9A31 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9A32:
        lda     #$01                            ; 9A32 A9 01                    ..
        cmp     $03CC                           ; 9A34 CD CC 03                 ...
        bne     $9A7E                           ; 9A37 D0 45                    .E
        lda     TextCursorPosition              ; 9A39 AD CF 03                 ...
        and     #$0F                            ; 9A3C 29 0F                    ).
        cmp     #$0F                            ; 9A3E C9 0F                    ..
        bne     $9A67                           ; 9A40 D0 25                    .%
        lda     $F5                             ; 9A42 A5 F5                    ..
        lsr     a                               ; 9A44 4A                       J
        bcs     TextUiSystem_Branch_9A6D        ; 9A45 B0 26                    .&
        lda     $03D5                           ; 9A47 AD D5 03                 ...
        and     #$0F                            ; 9A4A 29 0F                    ).
        clc                                     ; 9A4C 18                       .
        adc     $03D1                           ; 9A4D 6D D1 03                 m..
        cmp     $03D0                           ; 9A50 CD D0 03                 ...
        bcc     TextUiSystem_Branch_9A57        ; 9A53 90 02                    ..
        lda     #$00                            ; 9A55 A9 00                    ..
TextUiSystem_Branch_9A57:
        sta     $03D1                           ; 9A57 8D D1 03                 ...
        sta     $F8                             ; 9A5A 85 F8                    ..
        lda     $07B4                           ; 9A5C AD B4 07                 ...
        ora     #$08                            ; 9A5F 09 08                    ..
        sta     $07B4                           ; 9A61 8D B4 07                 ...
        jmp     TextUiSystem_Branch_9A79        ; 9A64 4C 79 9A                 Ly.
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_9BBE         ; 9A67 20 BE 9B                  ..
        jmp     $9A71                           ; 9A6A 4C 71 9A                 Lq.
; ----------------------------------------------------------------------------
TextUiSystem_Branch_9A6D:
        lda     #$FE                            ; 9A6D A9 FE                    ..
        sta     $F8                             ; 9A6F 85 F8                    ..
        lda     $07B4                           ; 9A71 AD B4 07                 ...
        and     #$F7                            ; 9A74 29 F7                    ).
        sta     $07B4                           ; 9A76 8D B4 07                 ...
TextUiSystem_Branch_9A79:
        jsr     TextUiSystem_Entry_9C0F         ; 9A79 20 0F 9C                  ..
        sec                                     ; 9A7C 38                       8
        rts                                     ; 9A7D 60                       `
; ----------------------------------------------------------------------------
        clc                                     ; 9A7E 18                       .
        rts                                     ; 9A7F 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9A80:
        lda     #$02                            ; 9A80 A9 02                    ..
        cmp     $03CC                           ; 9A82 CD CC 03                 ...
        bne     $9ABE                           ; 9A85 D0 37                    .7
        lda     TextCursorPosition              ; 9A87 AD CF 03                 ...
        and     #$0F                            ; 9A8A 29 0F                    ).
        cmp     #$0F                            ; 9A8C C9 0F                    ..
        bne     TextUiSystem_Branch_9AB5        ; 9A8E D0 25                    .%
        brk                                     ; 9A90 00                       .
        db   $85,$FB                         ; 9A91 85 FB                    ..
; ----------------------------------------------------------------------------
        lda     $F5                             ; 9A93 A5 F5                    ..
        lsr     a                               ; 9A95 4A                       J
        bcs     TextUiSystem_Branch_9A6D        ; 9A96 B0 D5                    ..
        lda     $03D5                           ; 9A98 AD D5 03                 ...
        and     #$0F                            ; 9A9B 29 0F                    ).
        sta     $03DA                           ; 9A9D 8D DA 03                 ...
        lda     $03D1                           ; 9AA0 AD D1 03                 ...
        bne     TextUiSystem_Branch_9AAE        ; 9AA3 D0 09                    ..
TextUiSystem_Branch_9AA5:
        clc                                     ; 9AA5 18                       .
        adc     $03DA                           ; 9AA6 6D DA 03                 m..
        cmp     $03D0                           ; 9AA9 CD D0 03                 ...
        bcc     TextUiSystem_Branch_9AA5        ; 9AAC 90 F7                    ..
TextUiSystem_Branch_9AAE:
        sec                                     ; 9AAE 38                       8
        sbc     $03DA                           ; 9AAF ED DA 03                 ...
        jmp     TextUiSystem_Branch_9A57        ; 9AB2 4C 57 9A                 LW.
; ----------------------------------------------------------------------------
TextUiSystem_Branch_9AB5:
        lda     #$FF                            ; 9AB5 A9 FF                    ..
        sta     $F8                             ; 9AB7 85 F8                    ..
        jsr     TextUiSystem_Entry_9C0F         ; 9AB9 20 0F 9C                  ..
        sec                                     ; 9ABC 38                       8
        rts                                     ; 9ABD 60                       `
; ----------------------------------------------------------------------------
        clc                                     ; 9ABE 18                       .
        rts                                     ; 9ABF 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9AC0:
        bit     $03CC                           ; 9AC0 2C CC 03                 ,..
        bpl     $9AD6                           ; 9AC3 10 11                    ..
        lda     #$FF                            ; 9AC5 A9 FF                    ..
        ldy     $03CA                           ; 9AC7 AC CA 03                 ...
        cpy     #$FF                            ; 9ACA C0 FF                    ..
        bne     $9AD0                           ; 9ACC D0 02                    ..
        lda     #$81                            ; 9ACE A9 81                    ..
        sta     $03CA                           ; 9AD0 8D CA 03                 ...
        jsr     TextUiSystem_Entry_9C19         ; 9AD3 20 19 9C                  ..
        rts                                     ; 9AD6 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9AD7:
        lda     #$05                            ; 9AD7 A9 05                    ..
        cmp     $03CC                           ; 9AD9 CD CC 03                 ...
        bne     $9B08                           ; 9ADC D0 2A                    .*
        lda     $03CE                           ; 9ADE AD CE 03                 ...
        cmp     #$0B                            ; 9AE1 C9 0B                    ..
        beq     $9B08                           ; 9AE3 F0 23                    .#
        lda     TextCursorPosition              ; 9AE5 AD CF 03                 ...
        and     #$0F                            ; 9AE8 29 0F                    ).
        cmp     #$0F                            ; 9AEA C9 0F                    ..
        beq     $9B08                           ; 9AEC F0 1A                    ..
        tax                                     ; 9AEE AA                       .
        bne     $9B0A                           ; 9AEF D0 19                    ..
        lda     $F5                             ; 9AF1 A5 F5                    ..
        and     #$40                            ; 9AF3 29 40                    )@
        beq     $9B08                           ; 9AF5 F0 11                    ..
        jsr     TextUiSystem_Entry_9C06         ; 9AF7 20 06 9C                  ..
        lda     #$1F                            ; 9AFA A9 1F                    ..
        sta     TextCursorPosition              ; 9AFC 8D CF 03                 ...
        lda     $F5                             ; 9AFF A5 F5                    ..
        and     #$10                            ; 9B01 29 10                    ).
        bne     TextUiSystem_Branch_9B15        ; 9B03 D0 10                    ..
        jsr     TextUiSystem_Entry_9C0F         ; 9B05 20 0F 9C                  ..
        clc                                     ; 9B08 18                       .
        rts                                     ; 9B09 60                       `
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_9C06         ; 9B0A 20 06 9C                  ..
        dec     TextCursorPosition              ; 9B0D CE CF 03                 ...
TextUiSystem_Branch_9B10:
        jsr     TextUiSystem_Entry_9C0F         ; 9B10 20 0F 9C                  ..
        sec                                     ; 9B13 38                       8
        rts                                     ; 9B14 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_9B15:
        lda     $03D1                           ; 9B15 AD D1 03                 ...
        sta     $F8                             ; 9B18 85 F8                    ..
        lda     $07B4                           ; 9B1A AD B4 07                 ...
        ora     #$01                            ; 9B1D 09 01                    ..
        sta     $07B4                           ; 9B1F 8D B4 07                 ...
        jmp     TextUiSystem_Branch_9B10        ; 9B22 4C 10 9B                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9B25:
        lda     #$06                            ; 9B25 A9 06                    ..
        cmp     $03CC                           ; 9B27 CD CC 03                 ...
        bne     $9B58                           ; 9B2A D0 2C                    .,
        lda     $03CE                           ; 9B2C AD CE 03                 ...
        cmp     #$0B                            ; 9B2F C9 0B                    ..
        beq     $9B08                           ; 9B31 F0 D5                    ..
        lda     $03D3                           ; 9B33 AD D3 03                 ...
        eor     TextCursorPosition              ; 9B36 4D CF 03                 M..
        and     #$0F                            ; 9B39 29 0F                    ).
        beq     $9B58                           ; 9B3B F0 1B                    ..
        jsr     TextUiSystem_Entry_9C06         ; 9B3D 20 06 9C                  ..
        inc     TextCursorPosition              ; 9B40 EE CF 03                 ...
        lda     TextCursorPosition              ; 9B43 AD CF 03                 ...
        and     #$0F                            ; 9B46 29 0F                    ).
        bne     $9B53                           ; 9B48 D0 09                    ..
        lda     TextCursorPosition              ; 9B4A AD CF 03                 ...
        sec                                     ; 9B4D 38                       8
        sbc     #$10                            ; 9B4E E9 10                    ..
        sta     TextCursorPosition              ; 9B50 8D CF 03                 ...
        jsr     TextUiSystem_Entry_9C0F         ; 9B53 20 0F 9C                  ..
        sec                                     ; 9B56 38                       8
        rts                                     ; 9B57 60                       `
; ----------------------------------------------------------------------------
        clc                                     ; 9B58 18                       .
        rts                                     ; 9B59 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9B5A:
        lda     #$07                            ; 9B5A A9 07                    ..
        cmp     $03CC                           ; 9B5C CD CC 03                 ...
        bne     $9B7B                           ; 9B5F D0 1A                    ..
        lda     TextCursorPosition              ; 9B61 AD CF 03                 ...
        and     #$F0                            ; 9B64 29 F0                    ).
        cmp     #$10                            ; 9B66 C9 10                    ..
        beq     $9B7B                           ; 9B68 F0 11                    ..
        jsr     TextUiSystem_Entry_9C06         ; 9B6A 20 06 9C                  ..
        lda     TextCursorPosition              ; 9B6D AD CF 03                 ...
        sec                                     ; 9B70 38                       8
        sbc     #$10                            ; 9B71 E9 10                    ..
        sta     TextCursorPosition              ; 9B73 8D CF 03                 ...
        jsr     TextUiSystem_Entry_9C0F         ; 9B76 20 0F 9C                  ..
        sec                                     ; 9B79 38                       8
        rts                                     ; 9B7A 60                       `
; ----------------------------------------------------------------------------
        clc                                     ; 9B7B 18                       .
        rts                                     ; 9B7C 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9B7D:
        lda     #$08                            ; 9B7D A9 08                    ..
        cmp     $03CC                           ; 9B7F CD CC 03                 ...
        bne     $9BB2                           ; 9B82 D0 2E                    ..
        ldx     $03CE                           ; 9B84 AE CE 03                 ...
        lda     TextCursorPosition              ; 9B87 AD CF 03                 ...
        lsr     a                               ; 9B8A 4A                       J
        lsr     a                               ; 9B8B 4A                       J
        lsr     a                               ; 9B8C 4A                       J
        lsr     a                               ; 9B8D 4A                       J
        cmp     Bank16_TextUiMetricTables,x     ; 9B8E DD 7F 9C                 ...
        beq     $9BB2                           ; 9B91 F0 1F                    ..
        jsr     TextUiSystem_Entry_9C06         ; 9B93 20 06 9C                  ..
        lda     TextCursorPosition              ; 9B96 AD CF 03                 ...
        clc                                     ; 9B99 18                       .
        adc     #$10                            ; 9B9A 69 10                    i.
        sta     TextCursorPosition              ; 9B9C 8D CF 03                 ...
        and     #$0F                            ; 9B9F 29 0F                    ).
        cmp     #$0F                            ; 9BA1 C9 0F                    ..
        bne     $9BAD                           ; 9BA3 D0 08                    ..
        lda     TextCursorPosition              ; 9BA5 AD CF 03                 ...
        and     #$F0                            ; 9BA8 29 F0                    ).
        sta     TextCursorPosition              ; 9BAA 8D CF 03                 ...
        jsr     TextUiSystem_Entry_9C0F         ; 9BAD 20 0F 9C                  ..
        sec                                     ; 9BB0 38                       8
        rts                                     ; 9BB1 60                       `
; ----------------------------------------------------------------------------
        clc                                     ; 9BB2 18                       .
        rts                                     ; 9BB3 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9BB4:
        ldx     $03CE                           ; 9BB4 AE CE 03                 ...
        lda     Bank16_TextUiMetricTables,x     ; 9BB7 BD 7F 9C                 ...
        brk                                     ; 9BBA 00                       .
        db   $21,$2F                         ; 9BBB 21 2F                    !/
; ----------------------------------------------------------------------------
        rts                                     ; 9BBD 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9BBE:
        lda     $07B4                           ; 9BBE AD B4 07                 ...
        lsr     a                               ; 9BC1 4A                       J
        bcs     $9C05                           ; 9BC2 B0 41                    .A
        ldx     $03CE                           ; 9BC4 AE CE 03                 ...
        lda     Bank16_TextUiMetricTables,x     ; 9BC7 BD 7F 9C                 ...
        tay                                     ; 9BCA A8                       .
        lda     TextCursorPosition              ; 9BCB AD CF 03                 ...
        and     #$0F                            ; 9BCE 29 0F                    ).
        clc                                     ; 9BD0 18                       .
        adc     $03D1                           ; 9BD1 6D D1 03                 m..
        sta     $03DA                           ; 9BD4 8D DA 03                 ...
        cpx     #$0B                            ; 9BD7 E0 0B                    ..
        bne     $9BE1                           ; 9BD9 D0 06                    ..
        dec     $03DA                           ; 9BDB CE DA 03                 ...
        dec     $03DA                           ; 9BDE CE DA 03                 ...
        cpy     #$01                            ; 9BE1 C0 01                    ..
        beq     $9BF6                           ; 9BE3 F0 11                    ..
        asl     $03DA                           ; 9BE5 0E DA 03                 ...
        cpy     #$02                            ; 9BE8 C0 02                    ..
        beq     $9BF6                           ; 9BEA F0 0A                    ..
        asl     $03DA                           ; 9BEC 0E DA 03                 ...
        cpy     #$04                            ; 9BEF C0 04                    ..
        beq     $9BF6                           ; 9BF1 F0 03                    ..
        asl     $03DA                           ; 9BF3 0E DA 03                 ...
        lda     TextCursorPosition              ; 9BF6 AD CF 03                 ...
        lsr     a                               ; 9BF9 4A                       J
        lsr     a                               ; 9BFA 4A                       J
        lsr     a                               ; 9BFB 4A                       J
        lsr     a                               ; 9BFC 4A                       J
        clc                                     ; 9BFD 18                       .
        adc     $03DA                           ; 9BFE 6D DA 03                 m..
        sta     $F8                             ; 9C01 85 F8                    ..
        dec     $F8                             ; 9C03 C6 F8                    ..
        rts                                     ; 9C05 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9C06:
        lda     #$FF                            ; 9C06 A9 FF                    ..
        sta     $03CA                           ; 9C08 8D CA 03                 ...
        jsr     TextUiSystem_Entry_9C20         ; 9C0B 20 20 9C                   .
        rts                                     ; 9C0E 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9C0F:
        lda     #$81                            ; 9C0F A9 81                    ..
        jmp     $9C16                           ; 9C11 4C 16 9C                 L..
; ----------------------------------------------------------------------------
        db   $A9,$FF                         ; 9C14 A9 FF                    ..
; ----------------------------------------------------------------------------
        sta     $03CA                           ; 9C16 8D CA 03                 ...
TextUiSystem_Entry_9C19:
        jsr     TextUiSystem_Entry_9C20         ; 9C19 20 20 9C                   .
        jsr     UpperFixedEngine_Entry_C62D     ; 9C1C 20 2D C6                  -.
        rts                                     ; 9C1F 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9C20:
        lda     $03C9                           ; 9C20 AD C9 03                 ...
        lsr     a                               ; 9C23 4A                       J
        lsr     a                               ; 9C24 4A                       J
        lsr     a                               ; 9C25 4A                       J
        lsr     a                               ; 9C26 4A                       J
        clc                                     ; 9C27 18                       .
        adc     TextCursorPosition              ; 9C28 6D CF 03                 m..
        and     #$0F                            ; 9C2B 29 0F                    ).
        sta     $01                             ; 9C2D 85 01                    ..
        inc     $01                             ; 9C2F E6 01                    ..
        asl     $01                             ; 9C31 06 01                    ..
        ldx     $03CE                           ; 9C33 AE CE 03                 ...
        lda     TextCursorPosition              ; 9C36 AD CF 03                 ...
        and     #$0F                            ; 9C39 29 0F                    ).
        cmp     #$0F                            ; 9C3B C9 0F                    ..
        beq     $9C47                           ; 9C3D F0 08                    ..
        lda     $01                             ; 9C3F A5 01                    ..
        sec                                     ; 9C41 38                       8
        sbc     $9CAF,x                         ; 9C42 FD AF 9C                 ...
        sta     $01                             ; 9C45 85 01                    ..
        lda     TextCursorPosition              ; 9C47 AD CF 03                 ...
        lsr     a                               ; 9C4A 4A                       J
        lsr     a                               ; 9C4B 4A                       J
        lsr     a                               ; 9C4C 4A                       J
        lsr     a                               ; 9C4D 4A                       J
        tay                                     ; 9C4E A8                       .
        lda     $03C8                           ; 9C4F AD C8 03                 ...
        and     #$0F                            ; 9C52 29 0F                    ).
        sta     $00                           ; 9C54 85 00                    ..
        asl     $00                           ; 9C56 06 00                    ..
        lda     $9C8F,x                         ; 9C58 BD 8F 9C                 ...
        clc                                     ; 9C5B 18                       .
        adc     $00                           ; 9C5C 65 00                    e.
        dey                                     ; 9C5E 88                       .
        beq     $9C67                           ; 9C5F F0 06                    ..
        adc     $9C9F,x                         ; 9C61 7D 9F 9C                 }..
        jmp     $9C5E                           ; 9C64 4C 5E 9C                 L^.
; ----------------------------------------------------------------------------
        sta     $00                           ; 9C67 85 00                    ..
        lda     $03CA                           ; 9C69 AD CA 03                 ...
        cmp     #$FF                            ; 9C6C C9 FF                    ..
        bne     $9C72                           ; 9C6E D0 02                    ..
        lda     #$00                            ; 9C70 A9 00                    ..
        jsr     UpperFixedEngine_Entry_C65A     ; 9C72 20 5A C6                  Z.
        lda     $050C                           ; 9C75 AD 0C 05                 ...
        clc                                     ; 9C78 18                       .
        adc     #$0F                            ; 9C79 69 0F                    i.
        sta     $03E2                           ; 9C7B 8D E2 03                 ...
        rts                                     ; 9C7E 60                       `
; ----------------------------------------------------------------------------
Bank16_TextUiMetricTables:
        db   $01,$01,$01,$02,$02,$01,$01,$01 ; 9C7F 01 01 01 02 02 01 01 01  ........
        db   $02,$02,$01,$08,$00,$00,$06,$02 ; 9C87 02 02 01 08 00 00 06 02  ........
        db   $01,$01,$02,$01,$01,$01,$01,$01 ; 9C8F 01 01 02 01 01 01 01 01  ........
        db   $01,$01,$01,$01,$00,$01,$03,$02 ; 9C97 01 01 01 01 00 01 03 02  ........
        db   $00,$00,$00,$08,$0B,$00,$00,$00 ; 9C9F 00 00 00 08 0B 00 00 00  ........
        db   $0A,$0D,$00,$02,$00,$00,$01,$01 ; 9CA7 0A 0D 00 02 00 00 01 01  ........
        db   $00,$00,$00,$00,$00,$01,$01,$00 ; 9CAF 00 00 00 00 00 01 01 00  ........
        db   $00,$01,$01,$00,$00,$00,$00,$00 ; 9CB7 00 01 01 00 00 00 00 00  ........
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9CBF:
        cmp     $03CC                           ; 9CBF CD CC 03                 ...
        rts                                     ; 9CC2 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9CC3:
        brk                                     ; 9CC3 00                       .
        db   $27,$2F                         ; 9CC4 27 2F                    '/
; ----------------------------------------------------------------------------
        rts                                     ; 9CC6 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9CC7:
        brk                                     ; 9CC7 00                       .
        db   $28,$2F                         ; 9CC8 28 2F                    (/
; ----------------------------------------------------------------------------
        rts                                     ; 9CCA 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9CCB:
        lda     $03D4                           ; 9CCB AD D4 03                 ...
        and     #$E0                            ; 9CCE 29 E0                    ).
        lsr     a                               ; 9CD0 4A                       J
        lsr     a                               ; 9CD1 4A                       J
        lsr     a                               ; 9CD2 4A                       J
        lsr     a                               ; 9CD3 4A                       J
        lsr     a                               ; 9CD4 4A                       J
        tax                                     ; 9CD5 AA                       .
        rts                                     ; 9CD6 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9CD7:
        lda     $F5                             ; 9CD7 A5 F5                    ..
        bmi     TextUiSystem_Branch_9D17        ; 9CD9 30 3C                    0<
        ldy     #$03                            ; 9CDB A0 03                    ..
        sty     $03DA                           ; 9CDD 8C DA 03                 ...
        ldx     $F7                             ; 9CE0 A6 F7                    ..
TextUiSystem_Branch_9CE2:
        dey                                     ; 9CE2 88                       .
        bmi     TextUiSystem_Branch_9CF1        ; 9CE3 30 0C                    0.
        tya                                     ; 9CE5 98                       .
        brk                                     ; 9CE6 00                       .
        db   $3C,$73                         ; 9CE7 3C 73                    <s
; ----------------------------------------------------------------------------
        bne     TextUiSystem_Branch_9CE2        ; 9CE9 D0 F7                    ..
        sty     $03DA                           ; 9CEB 8C DA 03                 ...
        jmp     TextUiSystem_Branch_9CE2        ; 9CEE 4C E2 9C                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_9CF1:
        lda     $03DA                           ; 9CF1 AD DA 03                 ...
        asl     a                               ; 9CF4 0A                       .
        clc                                     ; 9CF5 18                       .
        adc     $03DA                           ; 9CF6 6D DA 03                 m..
        sta     $03DC                           ; 9CF9 8D DC 03                 ...
        jsr     TextUiSystem_Entry_9D4F         ; 9CFC 20 4F 9D                  O.
TextUiSystem_Branch_9CFF:
        jsr     TextUiSystem_Entry_9CC3         ; 9CFF 20 C3 9C                  ..
        jsr     TextUiSystem_Entry_9D71         ; 9D02 20 71 9D                  q.
        bcs     TextUiSystem_Branch_9D15        ; 9D05 B0 0E                    ..
        jsr     TextUiSystem_Entry_9DBA         ; 9D07 20 BA 9D                  ..
        bcs     TextUiSystem_Branch_9D15        ; 9D0A B0 09                    ..
        jsr     TextUiSystem_Entry_9AC0         ; 9D0C 20 C0 9A                  ..
        jsr     TextUiSystem_Entry_9DF1         ; 9D0F 20 F1 9D                  ..
        jmp     TextUiSystem_Branch_9CFF        ; 9D12 4C FF 9C                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_9D15:
        clc                                     ; 9D15 18                       .
        rts                                     ; 9D16 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_9D17:
        lda     $03D5                           ; 9D17 AD D5 03                 ...
        lsr     a                               ; 9D1A 4A                       J
        lsr     a                               ; 9D1B 4A                       J
        lsr     a                               ; 9D1C 4A                       J
        lsr     a                               ; 9D1D 4A                       J
        sta     $03D1                           ; 9D1E 8D D1 03                 ...
        asl     a                               ; 9D21 0A                       .
        clc                                     ; 9D22 18                       .
        adc     $03D1                           ; 9D23 6D D1 03                 m..
        sta     $03D1                           ; 9D26 8D D1 03                 ...
        lda     #$81                            ; 9D29 A9 81                    ..
        sta     $03CA                           ; 9D2B 8D CA 03                 ...
        jsr     TextUiSystem_Entry_9D4F         ; 9D2E 20 4F 9D                  O.
        ldx     #$00                            ; 9D31 A2 00                    ..
        asl     $03DB                           ; 9D33 0E DB 03                 ...
        asl     $03DB                           ; 9D36 0E DB 03                 ...
TextUiSystem_Branch_9D39:
        asl     $03DB                           ; 9D39 0E DB 03                 ...
        bcs     TextUiSystem_Branch_9D42        ; 9D3C B0 04                    ..
        inx                                     ; 9D3E E8                       .
        jmp     TextUiSystem_Branch_9D39        ; 9D3F 4C 39 9D                 L9.
; ----------------------------------------------------------------------------
TextUiSystem_Branch_9D42:
        lda     Bank16_TextUiCursorPositions,x  ; 9D42 BD 49 9D                 .I.
        sta     TextCursorPosition              ; 9D45 8D CF 03                 ...
        rts                                     ; 9D48 60                       `
; ----------------------------------------------------------------------------
Bank16_TextUiCursorPositions:
        db   $10,$20,$11,$21,$12,$22         ; 9D49 10 20 11 21 12 22        . .!."
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9D4F:
        lda     $F5                             ; 9D4F A5 F5                    ..
        asl     a                               ; 9D51 0A                       .
        asl     a                               ; 9D52 0A                       .
        rol     $03DB                           ; 9D53 2E DB 03                 ...
        asl     $03DB                           ; 9D56 0E DB 03                 ...
        lda     $F7                             ; 9D59 A5 F7                    ..
        sta     $6E                             ; 9D5B 85 6E                    .n
        lda     $03D1                           ; 9D5D AD D1 03                 ...
        asl     a                               ; 9D60 0A                       .
        sta     $6F                             ; 9D61 85 6F                    .o
        ldy     #$06                            ; 9D63 A0 06                    ..
TextUiSystem_Branch_9D65:
        brk                                     ; 9D65 00                       .
        db   $3F,$33                         ; 9D66 3F 33                    ?3
; ----------------------------------------------------------------------------
        rol     $03DB                           ; 9D68 2E DB 03                 ...
        inc     $6F                             ; 9D6B E6 6F                    .o
        dey                                     ; 9D6D 88                       .
        bne     TextUiSystem_Branch_9D65        ; 9D6E D0 F5                    ..
        rts                                     ; 9D70 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9D71:
        lda     #$01                            ; 9D71 A9 01                    ..
        cmp     $03CC                           ; 9D73 CD CC 03                 ...
        bne     TextUiSystem_Branch_9DAE        ; 9D76 D0 36                    .6
        lda     TextCursorPosition              ; 9D78 AD CF 03                 ...
        and     #$0F                            ; 9D7B 29 0F                    ).
        cmp     #$0F                            ; 9D7D C9 0F                    ..
        bne     TextUiSystem_Branch_9DB0        ; 9D7F D0 2F                    ./
TextUiSystem_Branch_9D81:
        lda     $03D1                           ; 9D81 AD D1 03                 ...
        clc                                     ; 9D84 18                       .
        adc     #$03                            ; 9D85 69 03                    i.
        cmp     #$09                            ; 9D87 C9 09                    ..
        bne     TextUiSystem_Branch_9D8D        ; 9D89 D0 02                    ..
        lda     #$00                            ; 9D8B A9 00                    ..
TextUiSystem_Branch_9D8D:
        sta     $03D1                           ; 9D8D 8D D1 03                 ...
        cmp     $03DC                           ; 9D90 CD DC 03                 ...
        beq     TextUiSystem_Branch_9D81        ; 9D93 F0 EC                    ..
        jsr     TextUiSystem_Entry_9D4F         ; 9D95 20 4F 9D                  O.
        jsr     TextUiSystem_Entry_9C0F         ; 9D98 20 0F 9C                  ..
        lda     $03DB                           ; 9D9B AD DB 03                 ...
        pha                                     ; 9D9E 48                       H
        lda     $03DC                           ; 9D9F AD DC 03                 ...
        pha                                     ; 9DA2 48                       H
        jsr     TextUiSystem_Entry_8F8C         ; 9DA3 20 8C 8F                  ..
        pla                                     ; 9DA6 68                       h
        sta     $03DC                           ; 9DA7 8D DC 03                 ...
        pla                                     ; 9DAA 68                       h
        sta     $03DB                           ; 9DAB 8D DB 03                 ...
TextUiSystem_Branch_9DAE:
        clc                                     ; 9DAE 18                       .
        rts                                     ; 9DAF 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_9DB0:
        lda     #$02                            ; 9DB0 A9 02                    ..
        jsr     TextUiSystem_Entry_9BBE         ; 9DB2 20 BE 9B                  ..
        jsr     TextUiSystem_Entry_9C0F         ; 9DB5 20 0F 9C                  ..
        sec                                     ; 9DB8 38                       8
        rts                                     ; 9DB9 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9DBA:
        lda     #$02                            ; 9DBA A9 02                    ..
        cmp     $03CC                           ; 9DBC CD CC 03                 ...
        bne     TextUiSystem_Branch_9DEB        ; 9DBF D0 2A                    .*
        lda     TextCursorPosition              ; 9DC1 AD CF 03                 ...
        and     #$0F                            ; 9DC4 29 0F                    ).
        cmp     #$0F                            ; 9DC6 C9 0F                    ..
        bne     TextUiSystem_Branch_9DE2        ; 9DC8 D0 18                    ..
        brk                                     ; 9DCA 00                       .
        db   $85,$FB                         ; 9DCB 85 FB                    ..
; ----------------------------------------------------------------------------
        lda     $03D1                           ; 9DCD AD D1 03                 ...
        lsr     a                               ; 9DD0 4A                       J
        tax                                     ; 9DD1 AA                       .
        lda     Bank16_TextUiModeValues,x       ; 9DD2 BD ED 9D                 ...
        cmp     $03DC                           ; 9DD5 CD DC 03                 ...
        bne     TextUiSystem_Branch_9DDF        ; 9DD8 D0 05                    ..
        lsr     a                               ; 9DDA 4A                       J
        tax                                     ; 9DDB AA                       .
        lda     Bank16_TextUiModeValues,x       ; 9DDC BD ED 9D                 ...
TextUiSystem_Branch_9DDF:
        jmp     TextUiSystem_Branch_9D8D        ; 9DDF 4C 8D 9D                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_9DE2:
        lda     #$FF                            ; 9DE2 A9 FF                    ..
        sta     $F8                             ; 9DE4 85 F8                    ..
        jsr     TextUiSystem_Entry_9C0F         ; 9DE6 20 0F 9C                  ..
        sec                                     ; 9DE9 38                       8
        rts                                     ; 9DEA 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_9DEB:
        clc                                     ; 9DEB 18                       .
        rts                                     ; 9DEC 60                       `
; ----------------------------------------------------------------------------
Bank16_TextUiModeValues:
        db   $06,$00,$00,$03                 ; 9DED 06 00 00 03              ....
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9DF1:
        lda     $03CC                           ; 9DF1 AD CC 03                 ...
        bmi     TextUiSystem_Branch_9E19        ; 9DF4 30 23                    0#
        cmp     #$05                            ; 9DF6 C9 05                    ..
        bcc     TextUiSystem_Branch_9E19        ; 9DF8 90 1F                    ..
        jsr     TextUiSystem_Entry_9E3C         ; 9DFA 20 3C 9E                  <.
        bcc     TextUiSystem_Branch_9E19        ; 9DFD 90 1A                    ..
TextUiSystem_Branch_9DFF:
        lda     Bank16_TextUiSelectionMapA,y    ; 9DFF B9 7F 9E                 ...
        bmi     TextUiSystem_Branch_9E19        ; 9E02 30 15                    0.
        tay                                     ; 9E04 A8                       .
        and     #$07                            ; 9E05 29 07                    ).
        tax                                     ; 9E07 AA                       .
        lda     $A4CE,x                         ; 9E08 BD CE A4                 ...
        and     $03DB                           ; 9E0B 2D DB 03                 -..
        beq     TextUiSystem_Branch_9DFF        ; 9E0E F0 EF                    ..
        tya                                     ; 9E10 98                       .
        and     #$07                            ; 9E11 29 07                    ).
        sta     $03DA                           ; 9E13 8D DA 03                 ...
        jsr     TextUiSystem_Entry_9E1A         ; 9E16 20 1A 9E                  ..
TextUiSystem_Branch_9E19:
        rts                                     ; 9E19 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9E1A:
        jsr     TextUiSystem_Entry_9C06         ; 9E1A 20 06 9C                  ..
        ldx     #$10                            ; 9E1D A2 10                    ..
        lsr     $03DA                           ; 9E1F 4E DA 03                 N..
        bcc     TextUiSystem_Branch_9E26        ; 9E22 90 02                    ..
        ldx     #$20                            ; 9E24 A2 20                    .
TextUiSystem_Branch_9E26:
        dec     $03DA                           ; 9E26 CE DA 03                 ...
        lda     $03DA                           ; 9E29 AD DA 03                 ...
        and     #$0F                            ; 9E2C 29 0F                    ).
        sta     $03DA                           ; 9E2E 8D DA 03                 ...
        txa                                     ; 9E31 8A                       .
        ora     $03DA                           ; 9E32 0D DA 03                 ...
        sta     TextCursorPosition              ; 9E35 8D CF 03                 ...
        jsr     TextUiSystem_Entry_9C0F         ; 9E38 20 0F 9C                  ..
        rts                                     ; 9E3B 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9E3C:
        lda     TextCursorPosition              ; 9E3C AD CF 03                 ...
        and     #$0F                            ; 9E3F 29 0F                    ).
        sta     $03DA                           ; 9E41 8D DA 03                 ...
        inc     $03DA                           ; 9E44 EE DA 03                 ...
        lda     $03DA                           ; 9E47 AD DA 03                 ...
        and     #$0F                            ; 9E4A 29 0F                    ).
        sta     $03DA                           ; 9E4C 8D DA 03                 ...
        asl     $03DA                           ; 9E4F 0E DA 03                 ...
        lda     TextCursorPosition              ; 9E52 AD CF 03                 ...
        lsr     a                               ; 9E55 4A                       J
        lsr     a                               ; 9E56 4A                       J
        lsr     a                               ; 9E57 4A                       J
        lsr     a                               ; 9E58 4A                       J
        clc                                     ; 9E59 18                       .
        adc     $03DA                           ; 9E5A 6D DA 03                 m..
        sta     $03DA                           ; 9E5D 8D DA 03                 ...
        dec     $03DA                           ; 9E60 CE DA 03                 ...
        lda     $03CC                           ; 9E63 AD CC 03                 ...
        and     #$0F                            ; 9E66 29 0F                    ).
        sec                                     ; 9E68 38                       8
        sbc     #$05                            ; 9E69 E9 05                    ..
        tax                                     ; 9E6B AA                       .
        asl     a                               ; 9E6C 0A                       .
        asl     a                               ; 9E6D 0A                       .
        asl     a                               ; 9E6E 0A                       .
        adc     $03DA                           ; 9E6F 6D DA 03                 m..
        tay                                     ; 9E72 A8                       .
        dex                                     ; 9E73 CA                       .
        dex                                     ; 9E74 CA                       .
        bmi     TextUiSystem_Branch_9E7D        ; 9E75 30 06                    0.
        txa                                     ; 9E77 8A                       .
        eor     $03DA                           ; 9E78 4D DA 03                 M..
        lsr     a                               ; 9E7B 4A                       J
        rts                                     ; 9E7C 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_9E7D:
        sec                                     ; 9E7D 38                       8
        rts                                     ; 9E7E 60                       `
; ----------------------------------------------------------------------------
Bank16_TextUiSelectionMapA:
        db   $80,$80,$00,$00,$2A,$2B,$3C,$35 ; 9E7F 80 80 00 00 2A 2B 3C 35  ....*+<5
        db   $22,$80,$2C,$2D,$36,$27,$80,$80 ; 9E87 22 80 2C 2D 36 27 80 80  ".,-6'..
        db   $80,$80,$14,$12,$16,$14,$02,$3E ; 9E8F 80 80 14 12 16 14 02 3E  .......>
        db   $23,$80,$1B,$25,$1D,$1B,$1F,$1D ; 9E97 23 80 1B 25 1D 1B 1F 1D  #..%....
        db   $80,$80,$24,$25,$26,$0F,$23,$36 ; 9E9F 80 80 24 25 26 0F 23 36  ..$%&.#6
        db   $2B,$80,$28,$32,$2E,$2F,$25,$2C ; 9EA7 2B 80 28 32 2E 2F 25 2C  +.(2./%,
        db   $80,$80,$00,$34,$32,$33,$0F,$80 ; 9EAF 80 80 00 34 32 33 0F 80  ...423..
        db   $35,$80,$38,$80,$3A,$80,$34,$80 ; 9EB7 35 80 38 80 3A 80 34 80  5.8.:.4.
Bank16_TextUiSelectionMapB:
        db   $80,$80,$00,$01,$02,$03,$04,$05 ; 9EBF 80 80 00 01 02 03 04 05  ........
        db   $0A,$0B,$0C,$0D,$0E,$0F,$80,$80 ; 9EC7 0A 0B 0C 0D 0E 0F 80 80  ........
        db   $0A,$10,$10,$12,$12,$24,$14,$16 ; 9ECF 0A 10 10 12 12 24 14 16  .....$..
        db   $19,$1B,$23,$1D,$1D,$1F,$1F,$05 ; 9ED7 19 1B 23 1D 1D 1F 1F 05  ..#.....
        db   $80,$80,$06,$25,$22,$09,$80,$80 ; 9EDF 80 80 06 25 22 09 80 80  ...%"...
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9EE7:
        lda     $F5                             ; 9EE7 A5 F5                    ..
        bmi     TextUiSystem_Branch_9F06        ; 9EE9 30 1B                    0.
        jsr     TextUiSystem_Entry_9F0F         ; 9EEB 20 0F 9F                  ..
TextUiSystem_Branch_9EEE:
        jsr     TextUiSystem_Entry_9CC3         ; 9EEE 20 C3 9C                  ..
        jsr     TextUiSystem_Entry_9A32         ; 9EF1 20 32 9A                  2.
        bcs     TextUiSystem_Branch_9F04        ; 9EF4 B0 0E                    ..
        jsr     TextUiSystem_Entry_9A80         ; 9EF6 20 80 9A                  ..
        bcs     TextUiSystem_Branch_9F04        ; 9EF9 B0 09                    ..
        jsr     TextUiSystem_Entry_9AC0         ; 9EFB 20 C0 9A                  ..
        jsr     TextUiSystem_Entry_9F27         ; 9EFE 20 27 9F                  '.
        jmp     TextUiSystem_Branch_9EEE        ; 9F01 4C EE 9E                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_9F04:
        clc                                     ; 9F04 18                       .
        rts                                     ; 9F05 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_9F06:
        jsr     TextUiSystem_Entry_9BB4         ; 9F06 20 B4 9B                  ..
        lda     #$81                            ; 9F09 A9 81                    ..
        sta     $03CA                           ; 9F0B 8D CA 03                 ...
        rts                                     ; 9F0E 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9F0F:
        lda     $F7                             ; 9F0F A5 F7                    ..
        sta     $6E                             ; 9F11 85 6E                    .n
        lda     $03D1                           ; 9F13 AD D1 03                 ...
        asl     a                               ; 9F16 0A                       .
        sta     $6F                             ; 9F17 85 6F                    .o
        ldy     #$08                            ; 9F19 A0 08                    ..
TextUiSystem_Branch_9F1B:
        brk                                     ; 9F1B 00                       .
        db   $2C,$33                         ; 9F1C 2C 33                    ,3
; ----------------------------------------------------------------------------
        rol     $03DB                           ; 9F1E 2E DB 03                 ...
        inc     $6F                             ; 9F21 E6 6F                    .o
        dey                                     ; 9F23 88                       .
        bne     TextUiSystem_Branch_9F1B        ; 9F24 D0 F5                    ..
        rts                                     ; 9F26 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9F27:
        lda     $03CC                           ; 9F27 AD CC 03                 ...
        bmi     TextUiSystem_Branch_9F57        ; 9F2A 30 2B                    0+
        cmp     #$05                            ; 9F2C C9 05                    ..
        bcc     TextUiSystem_Branch_9F57        ; 9F2E 90 27                    .'
        jsr     TextUiSystem_Entry_9E3C         ; 9F30 20 3C 9E                  <.
        bcc     TextUiSystem_Branch_9F57        ; 9F33 90 22                    ."
        dey                                     ; 9F35 88                       .
        dey                                     ; 9F36 88                       .
TextUiSystem_Branch_9F37:
        lda     Bank16_TextUiSelectionMapB,y    ; 9F37 B9 BF 9E                 ...
        bmi     TextUiSystem_Branch_9F57        ; 9F3A 30 1B                    0.
        tay                                     ; 9F3C A8                       .
        and     #$07                            ; 9F3D 29 07                    ).
        tax                                     ; 9F3F AA                       .
        lda     $A4CE,x                         ; 9F40 BD CE A4                 ...
        and     $03DB                           ; 9F43 2D DB 03                 -..
        beq     TextUiSystem_Branch_9F37        ; 9F46 F0 EF                    ..
        tya                                     ; 9F48 98                       .
        and     #$07                            ; 9F49 29 07                    ).
        sta     $03DA                           ; 9F4B 8D DA 03                 ...
        inc     $03DA                           ; 9F4E EE DA 03                 ...
        inc     $03DA                           ; 9F51 EE DA 03                 ...
        jsr     TextUiSystem_Entry_9E1A         ; 9F54 20 1A 9E                  ..
TextUiSystem_Branch_9F57:
        rts                                     ; 9F57 60                       `
; ----------------------------------------------------------------------------
        lda     $F5                             ; 9F58 A5 F5                    ..
        bpl     $9F7F                           ; 9F5A 10 23                    .#
        lda     $07B4                           ; 9F5C AD B4 07                 ...
        and     #$40                            ; 9F5F 29 40                    )@
        bne     $9F7F                           ; 9F61 D0 1C                    ..
        lda     $F7                             ; 9F63 A5 F7                    ..
        sta     $6E                             ; 9F65 85 6E                    .n
        lda     #$FF                            ; 9F67 A9 FF                    ..
        sta     $6F                             ; 9F69 85 6F                    .o
        jsr     TextUiSystem_Entry_BCEB         ; 9F6B 20 EB BC                  ..
        tay                                     ; 9F6E A8                       .
        inc     $6F                             ; 9F6F E6 6F                    .o
        lda     $ABC3,y                         ; 9F71 B9 C3 AB                 ...
        brk                                     ; 9F74 00                       .
        db   $00,$03                         ; 9F75 00 03                    ..
; ----------------------------------------------------------------------------
        bcc     $9F7B                           ; 9F77 90 02                    ..
        bpl     $9F6F                           ; 9F79 10 F4                    ..
        lda     $6F                             ; 9F7B A5 6F                    .o
        sta     $F8                             ; 9F7D 85 F8                    ..
        jmp     $99EB                           ; 9F7F 4C EB 99                 L..
; ----------------------------------------------------------------------------
        db   $A5,$F5,$30,$0B,$A6,$F7,$00,$2D ; 9F82 A5 F5 30 0B A6 F7 00 2D  ..0....-
        db   $53,$8D,$D3,$03,$CE,$D3,$03,$4C ; 9F8A 53 8D D3 03 CE D3 03 4C  S......L
        db   $EB,$99                         ; 9F92 EB 99                    ..
; ----------------------------------------------------------------------------
        lda     $F5                             ; 9F94 A5 F5                    ..
        bmi     $9FA3                           ; 9F96 30 0B                    0.
        ldx     $F7                             ; 9F98 A6 F7                    ..
        brk                                     ; 9F9A 00                       .
        db   $3D,$53                         ; 9F9B 3D 53                    =S
; ----------------------------------------------------------------------------
        sta     $03D3                           ; 9F9D 8D D3 03                 ...
        dec     $03D3                           ; 9FA0 CE D3 03                 ...
        jmp     $99EB                           ; 9FA3 4C EB 99                 L..
; ----------------------------------------------------------------------------
        lda     $F5                             ; 9FA6 A5 F5                    ..
        bpl     $9FB3                           ; 9FA8 10 09                    ..
        ldy     #$02                            ; 9FAA A0 02                    ..
        ldx     $F7                             ; 9FAC A6 F7                    ..
        jsr     TextUiSystem_Entry_B747         ; 9FAE 20 47 B7                  G.
        sta     $F8                             ; 9FB1 85 F8                    ..
        jmp     $99EB                           ; 9FB3 4C EB 99                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9FB6:
        lda     #$60                            ; 9FB6 A9 60                    .`
        jmp     TextUiSystem_Branch_9FBD        ; 9FB8 4C BD 9F                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_9FBB:
        lda     #$20                            ; 9FBB A9 20                    .
TextUiSystem_Branch_9FBD:
        sta     $03DD                           ; 9FBD 8D DD 03                 ...
        sta     TextCursorPosition              ; 9FC0 8D CF 03                 ...
        lda     #$05                            ; 9FC3 A9 05                    ..
        sta     $03DC                           ; 9FC5 8D DC 03                 ...
        lda     $F5                             ; 9FC8 A5 F5                    ..
        bmi     TextUiSystem_Branch_9FF9        ; 9FCA 30 2D                    0-
        ldx     #$05                            ; 9FCC A2 05                    ..
        lda     #$00                            ; 9FCE A9 00                    ..
TextUiSystem_Branch_9FD0:
        sta     $02,x                           ; 9FD0 95 02                    ..
        dex                                     ; 9FD2 CA                       .
        bpl     TextUiSystem_Branch_9FD0        ; 9FD3 10 FB                    ..
        sta     $03DB                           ; 9FD5 8D DB 03                 ...
TextUiSystem_Branch_9FD8:
        jsr     TextUiSystem_Entry_9CC3         ; 9FD8 20 C3 9C                  ..
        jsr     TextUiSystem_Entry_A004         ; 9FDB 20 04 A0                  ..
        bcs     TextUiSystem_Branch_9FF7        ; 9FDE B0 17                    ..
        jsr     TextUiSystem_Entry_A020         ; 9FE0 20 20 A0                   .
        bcs     TextUiSystem_Branch_9FF7        ; 9FE3 B0 12                    ..
        jsr     TextUiSystem_Entry_A032         ; 9FE5 20 32 A0                  2.
        jsr     TextUiSystem_Entry_A04D         ; 9FE8 20 4D A0                  M.
        jsr     TextUiSystem_Entry_A067         ; 9FEB 20 67 A0                  g.
        jsr     TextUiSystem_Entry_A07C         ; 9FEE 20 7C A0                  |.
        jsr     TextUiSystem_Entry_A0AC         ; 9FF1 20 AC A0                  ..
        jmp     TextUiSystem_Branch_9FD8        ; 9FF4 4C D8 9F                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_9FF7:
        clc                                     ; 9FF7 18                       .
        rts                                     ; 9FF8 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_9FF9:
        lda     #$1E                            ; 9FF9 A9 1E                    ..
        sta     TextCursorPosition              ; 9FFB 8D CF 03                 ...
        lda     #$01                            ; 9FFE A9 01                    ..
        sta     $03CA                           ; A000 8D CA 03                 ...
        rts                                     ; A003 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A004:
        lda     #$01                            ; A004 A9 01                    ..
        cmp     $03CC                           ; A006 CD CC 03                 ...
        bne     TextUiSystem_Branch_A01E        ; A009 D0 13                    ..
        lda     $06                             ; A00B A5 06                    ..
        asl     a                               ; A00D 0A                       .
        sta     $F8                             ; A00E 85 F8                    ..
        asl     a                               ; A010 0A                       .
        asl     a                               ; A011 0A                       .
        clc                                     ; A012 18                       .
        adc     $F8                             ; A013 65 F8                    e.
        adc     $07                             ; A015 65 07                    e.
        sta     $F8                             ; A017 85 F8                    ..
        jsr     TextUiSystem_Entry_A0D0         ; A019 20 D0 A0                  ..
        sec                                     ; A01C 38                       8
        rts                                     ; A01D 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_A01E:
        clc                                     ; A01E 18                       .
        rts                                     ; A01F 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A020:
        lda     #$02                            ; A020 A9 02                    ..
        cmp     $03CC                           ; A022 CD CC 03                 ...
        bne     TextUiSystem_Branch_A030        ; A025 D0 09                    ..
        lda     #$FF                            ; A027 A9 FF                    ..
        sta     $F8                             ; A029 85 F8                    ..
        jsr     TextUiSystem_Entry_A0D0         ; A02B 20 D0 A0                  ..
        sec                                     ; A02E 38                       8
        rts                                     ; A02F 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_A030:
        clc                                     ; A030 18                       .
        rts                                     ; A031 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A032:
        bit     $03CC                           ; A032 2C CC 03                 ,..
        bpl     TextUiSystem_Branch_A04C        ; A035 10 15                    ..
        lda     #$70                            ; A037 A9 70                    .p
        ldy     $03CA                           ; A039 AC CA 03                 ...
        cpy     #$70                            ; A03C C0 70                    .p
        bne     TextUiSystem_Branch_A046        ; A03E D0 06                    ..
        lda     $03DB                           ; A040 AD DB 03                 ...
        clc                                     ; A043 18                       .
        adc     #$01                            ; A044 69 01                    i.
TextUiSystem_Branch_A046:
        sta     $03CA                           ; A046 8D CA 03                 ...
        jsr     TextUiSystem_Entry_9C19         ; A049 20 19 9C                  ..
TextUiSystem_Branch_A04C:
        rts                                     ; A04C 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A04D:
        lda     #$05                            ; A04D A9 05                    ..
        cmp     $03CC                           ; A04F CD CC 03                 ...
        bne     TextUiSystem_Branch_A066        ; A052 D0 12                    ..
        inc     $03DB                           ; A054 EE DB 03                 ...
        lda     $03DB                           ; A057 AD DB 03                 ...
        cmp     #$0A                            ; A05A C9 0A                    ..
        bne     TextUiSystem_Branch_A063        ; A05C D0 05                    ..
        lda     #$00                            ; A05E A9 00                    ..
        sta     $03DB                           ; A060 8D DB 03                 ...
TextUiSystem_Branch_A063:
        jsr     TextUiSystem_Entry_A0D0         ; A063 20 D0 A0                  ..
TextUiSystem_Branch_A066:
        rts                                     ; A066 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A067:
        lda     #$06                            ; A067 A9 06                    ..
        cmp     $03CC                           ; A069 CD CC 03                 ...
        bne     TextUiSystem_Branch_A07B        ; A06C D0 0D                    ..
        dec     $03DB                           ; A06E CE DB 03                 ...
        bpl     TextUiSystem_Branch_A078        ; A071 10 05                    ..
        lda     #$09                            ; A073 A9 09                    ..
        sta     $03DB                           ; A075 8D DB 03                 ...
TextUiSystem_Branch_A078:
        jsr     TextUiSystem_Entry_A0D0         ; A078 20 D0 A0                  ..
TextUiSystem_Branch_A07B:
        rts                                     ; A07B 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A07C:
        lda     #$07                            ; A07C A9 07                    ..
        cmp     $03CC                           ; A07E CD CC 03                 ...
        bne     TextUiSystem_Branch_A0AB        ; A081 D0 28                    .(
        lda     TextCursorPosition              ; A083 AD CF 03                 ...
        and     #$F0                            ; A086 29 F0                    ).
        cmp     #$10                            ; A088 C9 10                    ..
        beq     TextUiSystem_Branch_A0AB        ; A08A F0 1F                    ..
        jsr     TextUiSystem_Entry_A0D0         ; A08C 20 D0 A0                  ..
        lda     TextCursorPosition              ; A08F AD CF 03                 ...
        sec                                     ; A092 38                       8
        sbc     #$10                            ; A093 E9 10                    ..
        sta     TextCursorPosition              ; A095 8D CF 03                 ...
        dec     $03DC                           ; A098 CE DC 03                 ...
TextUiSystem_Branch_A09B:
        ldx     $03DC                           ; A09B AE DC 03                 ...
        lda     $02,x                           ; A09E B5 02                    ..
        sta     $03DB                           ; A0A0 8D DB 03                 ...
        lda     #$70                            ; A0A3 A9 70                    .p
        sta     $03CA                           ; A0A5 8D CA 03                 ...
        jsr     TextUiSystem_Entry_9C19         ; A0A8 20 19 9C                  ..
TextUiSystem_Branch_A0AB:
        rts                                     ; A0AB 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A0AC:
        lda     #$08                            ; A0AC A9 08                    ..
        cmp     $03CC                           ; A0AE CD CC 03                 ...
        bne     TextUiSystem_Branch_A0CF        ; A0B1 D0 1C                    ..
        lda     TextCursorPosition              ; A0B3 AD CF 03                 ...
        eor     $03DD                           ; A0B6 4D DD 03                 M..
        and     #$F0                            ; A0B9 29 F0                    ).
        beq     TextUiSystem_Branch_A0CF        ; A0BB F0 12                    ..
        jsr     TextUiSystem_Entry_A0D0         ; A0BD 20 D0 A0                  ..
        lda     TextCursorPosition              ; A0C0 AD CF 03                 ...
        clc                                     ; A0C3 18                       .
        adc     #$10                            ; A0C4 69 10                    i.
        sta     TextCursorPosition              ; A0C6 8D CF 03                 ...
        inc     $03DC                           ; A0C9 EE DC 03                 ...
        jmp     TextUiSystem_Branch_A09B        ; A0CC 4C 9B A0                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_A0CF:
        rts                                     ; A0CF 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A0D0:
        ldx     $03DC                           ; A0D0 AE DC 03                 ...
        lda     $03DB                           ; A0D3 AD DB 03                 ...
        sta     $02,x                           ; A0D6 95 02                    ..
        tax                                     ; A0D8 AA                       .
        inx                                     ; A0D9 E8                       .
        txa                                     ; A0DA 8A                       .
        sta     $03CA                           ; A0DB 8D CA 03                 ...
        jmp     TextUiSystem_Entry_9C19         ; A0DE 4C 19 9C                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A0E1:
        jsr     TextUiSystem_Entry_9FB6         ; A0E1 20 B6 9F                  ..
        brk                                     ; A0E4 00                       .
        db   $03,$E7                         ; A0E5 03 E7                    ..
; ----------------------------------------------------------------------------
        rts                                     ; A0E7 60                       `
; ----------------------------------------------------------------------------
        lda     $F5                             ; A0E8 A5 F5                    ..
        bpl     $A0F7                           ; A0EA 10 0B                    ..
        lda     #$81                            ; A0EC A9 81                    ..
        sta     $03CA                           ; A0EE 8D CA 03                 ...
        lda     #$10                            ; A0F1 A9 10                    ..
        sta     TextCursorPosition              ; A0F3 8D CF 03                 ...
        rts                                     ; A0F6 60                       `
; ----------------------------------------------------------------------------
        lda     #$00                            ; A0F7 A9 00                    ..
        sta     $02                             ; A0F9 85 02                    ..
        ldx     $03DD                           ; A0FB AE DD 03                 ...
        bne     $A102                           ; A0FE D0 02                    ..
        inc     $02                             ; A100 E6 02                    ..
        lda     $A151,x                         ; A102 BD 51 A1                 .Q.
        sta     $03DC                           ; A105 8D DC 03                 ...
        lda     #$00                            ; A108 A9 00                    ..
        sta     $08                             ; A10A 85 08                    ..
        sta     $09                             ; A10C 85 09                    ..
        lda     #$00                            ; A10E A9 00                    ..
        ldx     #$07                            ; A110 A2 07                    ..
        sta     $03E3,x                         ; A112 9D E3 03                 ...
        dex                                     ; A115 CA                       .
        bpl     $A112                           ; A116 10 FA                    ..
        lda     $03DD                           ; A118 AD DD 03                 ...
        bne     $A130                           ; A11B D0 13                    ..
        inc     $02                             ; A11D E6 02                    ..
        lda     $07B5                           ; A11F AD B5 07                 ...
        sta     $00                           ; A122 85 00                    ..
        lda     $07B6                           ; A124 AD B6 07                 ...
        sta     $01                             ; A127 85 01                    ..
        ldy     #$00                            ; A129 A0 00                    ..
        lda     ($00),y                       ; A12B B1 00                    ..
        sta     $03E3                           ; A12D 8D E3 03                 ...
        jsr     TextUiSystem_Entry_9CC3         ; A130 20 C3 9C                  ..
        jsr     TextUiSystem_Entry_A15A         ; A133 20 5A A1                  Z.
        bcs     $A14F                           ; A136 B0 17                    ..
        jsr     TextUiSystem_Entry_A215         ; A138 20 15 A2                  ..
        bcs     $A14F                           ; A13B B0 12                    ..
        jsr     TextUiSystem_Entry_A231         ; A13D 20 31 A2                  1.
        jsr     TextUiSystem_Entry_A248         ; A140 20 48 A2                  H.
        jsr     TextUiSystem_Entry_A27B         ; A143 20 7B A2                  {.
        jsr     TextUiSystem_Entry_A2B1         ; A146 20 B1 A2                  ..
        jsr     TextUiSystem_Entry_A2DB         ; A149 20 DB A2                  ..
        jmp     $A130                           ; A14C 4C 30 A1                 L0.
; ----------------------------------------------------------------------------
        clc                                     ; A14F 18                       .
        rts                                     ; A150 60                       `
; ----------------------------------------------------------------------------
        db   $00,$02,$03,$04,$05,$00,$00,$00 ; A151 00 02 03 04 05 00 00 00  ........
        db   $08                             ; A159 08                       .
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A15A:
        lda     #$01                            ; A15A A9 01                    ..
        cmp     $03CC                           ; A15C CD CC 03                 ...
        beq     $A163                           ; A15F F0 02                    ..
        clc                                     ; A161 18                       .
        rts                                     ; A162 60                       `
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_A362         ; A163 20 62 A3                  b.
        iny                                     ; A166 C8                       .
        lda     ($00),y                       ; A167 B1 00                    ..
        cmp     #$28                            ; A169 C9 28                    .(
        bne     $A1A1                           ; A16B D0 34                    .4
        iny                                     ; A16D C8                       .
        lda     ($00),y                       ; A16E B1 00                    ..
        dey                                     ; A170 88                       .
        cmp     #$00                            ; A171 C9 00                    ..
        beq     $A1A1                           ; A173 F0 2C                    .,
        lda     $02                             ; A175 A5 02                    ..
        bne     $A17B                           ; A177 D0 02                    ..
        clc                                     ; A179 18                       .
        rts                                     ; A17A 60                       `
; ----------------------------------------------------------------------------
        dec     $02                             ; A17B C6 02                    ..
        lda     $03DD                           ; A17D AD DD 03                 ...
        cmp     #$08                            ; A180 C9 08                    ..
        bne     $A18E                           ; A182 D0 0A                    ..
        lda     #$00                            ; A184 A9 00                    ..
        ldx     $02                             ; A186 A6 02                    ..
        sta     $03E3,x                         ; A188 9D E3 03                 ...
        jmp     TextUiSystem_Branch_A1FA        ; A18B 4C FA A1                 L..
; ----------------------------------------------------------------------------
        ldx     #$03                            ; A18E A2 03                    ..
TextUiSystem_Branch_A190:
        lda     $03E3,x                         ; A190 BD E3 03                 ...
        sta     $03E4,x                         ; A193 9D E4 03                 ...
        dex                                     ; A196 CA                       .
        bpl     TextUiSystem_Branch_A190        ; A197 10 F7                    ..
        lda     #$00                            ; A199 A9 00                    ..
        sta     $03E3                           ; A19B 8D E3 03                 ...
        jmp     TextUiSystem_Branch_A1FA        ; A19E 4C FA A1                 L..
; ----------------------------------------------------------------------------
        lda     ($00),y                       ; A1A1 B1 00                    ..
        cmp     #$29                            ; A1A3 C9 29                    .)
        bne     $A1C1                           ; A1A5 D0 1A                    ..
        iny                                     ; A1A7 C8                       .
        lda     ($00),y                       ; A1A8 B1 00                    ..
        dey                                     ; A1AA 88                       .
        cmp     #$00                            ; A1AB C9 00                    ..
        beq     $A1C1                           ; A1AD F0 12                    ..
        lda     $02                             ; A1AF A5 02                    ..
        beq     $A200                           ; A1B1 F0 4D                    .M
        jsr     TextUiSystem_Entry_A391         ; A1B3 20 91 A3                  ..
        bcs     $A200                           ; A1B6 B0 48                    .H
        jsr     TextUiSystem_Entry_A314         ; A1B8 20 14 A3                  ..
        lda     #$00                            ; A1BB A9 00                    ..
        sta     $F8                             ; A1BD 85 F8                    ..
        sec                                     ; A1BF 38                       8
        rts                                     ; A1C0 60                       `
; ----------------------------------------------------------------------------
        lda     $03DD                           ; A1C1 AD DD 03                 ...
        bne     $A202                           ; A1C4 D0 3C                    .<
        lda     $08                             ; A1C6 A5 08                    ..
        lsr     a                               ; A1C8 4A                       J
        tax                                     ; A1C9 AA                       .
        lda     $03E3                           ; A1CA AD E3 03                 ...
        eor     $A4CE,x                         ; A1CD 5D CE A4                 ]..
        sta     $03E3                           ; A1D0 8D E3 03                 ...
        lda     #$01                            ; A1D3 A9 01                    ..
        sta     $04                             ; A1D5 85 04                    ..
        lda     $03E3                           ; A1D7 AD E3 03                 ...
        and     $A4CE,x                         ; A1DA 3D CE A4                 =..
        beq     TextUiSystem_Branch_A1E3        ; A1DD F0 04                    ..
        lda     #$02                            ; A1DF A9 02                    ..
        sta     $04                             ; A1E1 85 04                    ..
TextUiSystem_Branch_A1E3:
        jmp     TextUiSystem_Branch_A1FA        ; A1E3 4C FA A1                 L..
; ----------------------------------------------------------------------------
        ldx     #$00                            ; A1E6 A2 00                    ..
TextUiSystem_Branch_A1E8:
        lda     $03E4,x                         ; A1E8 BD E4 03                 ...
        sta     $03E3,x                         ; A1EB 9D E3 03                 ...
        inx                                     ; A1EE E8                       .
        cpx     #$04                            ; A1EF E0 04                    ..
        bne     TextUiSystem_Branch_A1E8        ; A1F1 D0 F5                    ..
        lda     ($00),y                       ; A1F3 B1 00                    ..
        sta     $03E3,x                         ; A1F5 9D E3 03                 ...
        inc     $02                             ; A1F8 E6 02                    ..
TextUiSystem_Branch_A1FA:
        jsr     TextUiSystem_Entry_A397         ; A1FA 20 97 A3                  ..
        jsr     TextUiSystem_Entry_A314         ; A1FD 20 14 A3                  ..
        clc                                     ; A200 18                       .
        rts                                     ; A201 60                       `
; ----------------------------------------------------------------------------
        lda     $02                             ; A202 A5 02                    ..
        cmp     $03DC                           ; A204 CD DC 03                 ...
        beq     $A200                           ; A207 F0 F7                    ..
        lda     $03DD                           ; A209 AD DD 03                 ...
        cmp     #$08                            ; A20C C9 08                    ..
        bne     $A1E6                           ; A20E D0 D6                    ..
        ldx     $02                             ; A210 A6 02                    ..
        jmp     $A1F3                           ; A212 4C F3 A1                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A215:
        lda     #$02                            ; A215 A9 02                    ..
        cmp     $03CC                           ; A217 CD CC 03                 ...
        bne     $A22F                           ; A21A D0 13                    ..
        lda     $03DD                           ; A21C AD DD 03                 ...
        cmp     #$08                            ; A21F C9 08                    ..
        beq     $A22C                           ; A221 F0 09                    ..
        lda     #$FF                            ; A223 A9 FF                    ..
        sta     $F8                             ; A225 85 F8                    ..
        jsr     TextUiSystem_Entry_A314         ; A227 20 14 A3                  ..
        sec                                     ; A22A 38                       8
        rts                                     ; A22B 60                       `
; ----------------------------------------------------------------------------
        jmp     $A175                           ; A22C 4C 75 A1                 Lu.
; ----------------------------------------------------------------------------
        clc                                     ; A22F 18                       .
        rts                                     ; A230 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A231:
        bit     $03CC                           ; A231 2C CC 03                 ,..
        bpl     $A247                           ; A234 10 11                    ..
        ldx     #$81                            ; A236 A2 81                    ..
        lda     $03CA                           ; A238 AD CA 03                 ...
        cmp     #$00                            ; A23B C9 00                    ..
        beq     $A241                           ; A23D F0 02                    ..
        ldx     #$00                            ; A23F A2 00                    ..
        stx     $03CA                           ; A241 8E CA 03                 ...
        jmp     $A319                           ; A244 4C 19 A3                 L..
; ----------------------------------------------------------------------------
        rts                                     ; A247 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A248:
        lda     #$05                            ; A248 A9 05                    ..
        cmp     $03CC                           ; A24A CD CC 03                 ...
        bne     $A27A                           ; A24D D0 2B                    .+
        jsr     TextUiSystem_Entry_A37F         ; A24F 20 7F A3                  ..
        lda     $09                             ; A252 A5 09                    ..
        beq     $A277                           ; A254 F0 21                    .!
        dec     $09                             ; A256 C6 09                    ..
        jsr     TextUiSystem_Entry_A362         ; A258 20 62 A3                  b.
        lda     ($00),y                       ; A25B B1 00                    ..
        cmp     #$00                            ; A25D C9 00                    ..
        bne     TextUiSystem_Branch_A26B        ; A25F D0 0A                    ..
        iny                                     ; A261 C8                       .
        lda     ($00),y                       ; A262 B1 00                    ..
        cmp     #$00                            ; A264 C9 00                    ..
        beq     $A252                           ; A266 F0 EA                    ..
        jmp     TextUiSystem_Branch_A311        ; A268 4C 11 A3                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_A26B:
        dec     $08                             ; A26B C6 08                    ..
        dey                                     ; A26D 88                       .
        lda     ($00),y                       ; A26E B1 00                    ..
        cmp     #$00                            ; A270 C9 00                    ..
        bne     TextUiSystem_Branch_A26B        ; A272 D0 F7                    ..
        jmp     TextUiSystem_Branch_A311        ; A274 4C 11 A3                 L..
; ----------------------------------------------------------------------------
        jmp     TextUiSystem_Branch_A388        ; A277 4C 88 A3                 L..
; ----------------------------------------------------------------------------
        rts                                     ; A27A 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A27B:
        lda     #$06                            ; A27B A9 06                    ..
        cmp     $03CC                           ; A27D CD CC 03                 ...
        bne     $A2B0                           ; A280 D0 2E                    ..
        jsr     TextUiSystem_Entry_A37F         ; A282 20 7F A3                  ..
        lda     $09                             ; A285 A5 09                    ..
        cmp     $03D3                           ; A287 CD D3 03                 ...
        beq     $A2AD                           ; A28A F0 21                    .!
        inc     $09                             ; A28C E6 09                    ..
        jsr     TextUiSystem_Entry_A362         ; A28E 20 62 A3                  b.
        lda     ($00),y                       ; A291 B1 00                    ..
        cmp     #$00                            ; A293 C9 00                    ..
        bne     $A2A1                           ; A295 D0 0A                    ..
        iny                                     ; A297 C8                       .
        lda     ($00),y                       ; A298 B1 00                    ..
        cmp     #$00                            ; A29A C9 00                    ..
        beq     $A285                           ; A29C F0 E7                    ..
        jmp     TextUiSystem_Branch_A311        ; A29E 4C 11 A3                 L..
; ----------------------------------------------------------------------------
        dec     $08                             ; A2A1 C6 08                    ..
        dey                                     ; A2A3 88                       .
        lda     ($00),y                       ; A2A4 B1 00                    ..
        cmp     #$00                            ; A2A6 C9 00                    ..
        bne     $A2A1                           ; A2A8 D0 F7                    ..
        jmp     TextUiSystem_Branch_A311        ; A2AA 4C 11 A3                 L..
; ----------------------------------------------------------------------------
        jmp     TextUiSystem_Branch_A388        ; A2AD 4C 88 A3                 L..
; ----------------------------------------------------------------------------
        rts                                     ; A2B0 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A2B1:
        lda     #$07                            ; A2B1 A9 07                    ..
        cmp     $03CC                           ; A2B3 CD CC 03                 ...
        bne     $A2DA                           ; A2B6 D0 22                    ."
        jsr     TextUiSystem_Entry_A37F         ; A2B8 20 7F A3                  ..
        jsr     TextUiSystem_Entry_A362         ; A2BB 20 62 A3                  b.
        dec     $08                             ; A2BE C6 08                    ..
        bmi     $A2D7                           ; A2C0 30 15                    0.
        dey                                     ; A2C2 88                       .
        lda     ($00),y                       ; A2C3 B1 00                    ..
        cmp     #$00                            ; A2C5 C9 00                    ..
        beq     $A2BE                           ; A2C7 F0 F5                    ..
        dec     $08                             ; A2C9 C6 08                    ..
        bmi     $A2D7                           ; A2CB 30 0A                    0.
        dey                                     ; A2CD 88                       .
        lda     ($00),y                       ; A2CE B1 00                    ..
        cmp     #$00                            ; A2D0 C9 00                    ..
        bne     $A2C9                           ; A2D2 D0 F5                    ..
        jmp     TextUiSystem_Branch_A311        ; A2D4 4C 11 A3                 L..
; ----------------------------------------------------------------------------
        jmp     TextUiSystem_Branch_A388        ; A2D7 4C 88 A3                 L..
; ----------------------------------------------------------------------------
        rts                                     ; A2DA 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A2DB:
        lda     #$08                            ; A2DB A9 08                    ..
        cmp     $03CC                           ; A2DD CD CC 03                 ...
        bne     $A310                           ; A2E0 D0 2E                    ..
        jsr     TextUiSystem_Entry_A37F         ; A2E2 20 7F A3                  ..
        jsr     TextUiSystem_Entry_A362         ; A2E5 20 62 A3                  b.
        inc     $08                             ; A2E8 E6 08                    ..
        lda     $08                             ; A2EA A5 08                    ..
        cmp     $07B2                           ; A2EC CD B2 07                 ...
        bcs     $A30D                           ; A2EF B0 1C                    ..
        iny                                     ; A2F1 C8                       .
        lda     ($00),y                       ; A2F2 B1 00                    ..
        cmp     #$00                            ; A2F4 C9 00                    ..
        bne     $A2E8                           ; A2F6 D0 F0                    ..
        inc     $08                             ; A2F8 E6 08                    ..
        lda     $08                             ; A2FA A5 08                    ..
        cmp     $07B2                           ; A2FC CD B2 07                 ...
        bcs     $A30D                           ; A2FF B0 0C                    ..
        iny                                     ; A301 C8                       .
        lda     ($00),y                       ; A302 B1 00                    ..
        cmp     #$00                            ; A304 C9 00                    ..
        beq     $A2F8                           ; A306 F0 F0                    ..
        dec     $08                             ; A308 C6 08                    ..
        jmp     TextUiSystem_Branch_A311        ; A30A 4C 11 A3                 L..
; ----------------------------------------------------------------------------
        jmp     TextUiSystem_Branch_A388        ; A30D 4C 88 A3                 L..
; ----------------------------------------------------------------------------
        rts                                     ; A310 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_A311:
        jsr     TextUiSystem_Entry_A327         ; A311 20 27 A3                  '.
TextUiSystem_Entry_A314:
        lda     #$81                            ; A314 A9 81                    ..
        sta     $03CA                           ; A316 8D CA 03                 ...
        lda     $08                             ; A319 A5 08                    ..
        sta     $00                           ; A31B 85 00                    ..
        lda     $09                             ; A31D A5 09                    ..
        sta     $01                             ; A31F 85 01                    ..
        jsr     TextUiSystem_Entry_A334         ; A321 20 34 A3                  4.
        jmp     UpperFixedEngine_Entry_C62D     ; A324 4C 2D C6                 L-.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A327:
        lda     #$00                            ; A327 A9 00                    ..
        sta     $03CA                           ; A329 8D CA 03                 ...
        lda     $0A                           ; A32C A5 0A                    ..
        sta     $00                           ; A32E 85 00                    ..
        lda     $0B                             ; A330 A5 0B                    ..
        sta     $01                             ; A332 85 01                    ..
TextUiSystem_Entry_A334:
        lda     $03C9                           ; A334 AD C9 03                 ...
        lsr     a                               ; A337 4A                       J
        lsr     a                               ; A338 4A                       J
        lsr     a                               ; A339 4A                       J
        lsr     a                               ; A33A 4A                       J
        clc                                     ; A33B 18                       .
        adc     $01                             ; A33C 65 01                    e.
        and     #$0F                            ; A33E 29 0F                    ).
        sta     $01                             ; A340 85 01                    ..
        inc     $01                             ; A342 E6 01                    ..
        asl     $01                             ; A344 06 01                    ..
        lda     $03C8                           ; A346 AD C8 03                 ...
        and     #$0F                            ; A349 29 0F                    ).
        asl     a                               ; A34B 0A                       .
        adc     $00                           ; A34C 65 00                    e.
        sta     $00                           ; A34E 85 00                    ..
        inc     $00                           ; A350 E6 00                    ..
        lda     $03CA                           ; A352 AD CA 03                 ...
        jsr     UpperFixedEngine_Entry_C65A     ; A355 20 5A C6                  Z.
        lda     $050C                           ; A358 AD 0C 05                 ...
        clc                                     ; A35B 18                       .
        adc     #$0F                            ; A35C 69 0F                    i.
        sta     $03E2                           ; A35E 8D E2 03                 ...
        rts                                     ; A361 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A362:
        lda     $07B0                           ; A362 AD B0 07                 ...
        sta     $00                           ; A365 85 00                    ..
        lda     $07B1                           ; A367 AD B1 07                 ...
        sta     $01                             ; A36A 85 01                    ..
        ldx     $09                             ; A36C A6 09                    ..
        lda     #$00                            ; A36E A9 00                    ..
        dex                                     ; A370 CA                       .
        bmi     $A37A                           ; A371 30 07                    0.
        clc                                     ; A373 18                       .
        adc     $07B2                           ; A374 6D B2 07                 m..
        jmp     $A370                           ; A377 4C 70 A3                 Lp.
; ----------------------------------------------------------------------------
        clc                                     ; A37A 18                       .
        adc     $08                             ; A37B 65 08                    e.
        tay                                     ; A37D A8                       .
        rts                                     ; A37E 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A37F:
        lda     $08                             ; A37F A5 08                    ..
        sta     $0A                           ; A381 85 0A                    ..
        lda     $09                             ; A383 A5 09                    ..
        sta     $0B                             ; A385 85 0B                    ..
        rts                                     ; A387 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_A388:
        lda     $0A                           ; A388 A5 0A                    ..
        sta     $08                             ; A38A 85 08                    ..
        lda     $0B                             ; A38C A5 0B                    ..
        sta     $09                             ; A38E 85 09                    ..
        rts                                     ; A390 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A391:
        brk                                     ; A391 00                       .
        db   $1D,$2F                         ; A392 1D 2F                    ./
; ----------------------------------------------------------------------------
        rts                                     ; A394 60                       `
; ----------------------------------------------------------------------------
        db   $60,$60                         ; A395 60 60                    ``
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A397:
        brk                                     ; A397 00                       .
        db   $20,$2F                         ; A398 20 2F                     /
; ----------------------------------------------------------------------------
        rts                                     ; A39A 60                       `
; ----------------------------------------------------------------------------
        db   $60                             ; A39B 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A39C:
        asl     a                               ; A39C 0A                       .
        tay                                     ; A39D A8                       .
        lda     $A3A8,y                         ; A39E B9 A8 A3                 ...
        pha                                     ; A3A1 48                       H
        lda     $A3A7,y                         ; A3A2 B9 A7 A3                 ...
        pha                                     ; A3A5 48                       H
        rts                                     ; A3A6 60                       `
; ----------------------------------------------------------------------------
        db   $AE                             ; A3A7 AE                       .
        db   $A3,$F9,$A3,$B4,$A3,$C7,$A3     ; A3A8 A3 F9 A3 B4 A3 C7 A3     .......
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_A446         ; A3AF 20 46 A4                  F.
        jmp     $A483                           ; A3B2 4C 83 A4                 L..
; ----------------------------------------------------------------------------
        lda     a:$F4                           ; A3B5 AD F4 00                 ...
        and     #$03                            ; A3B8 29 03                    ).
        bne     $A3C5                           ; A3BA D0 09                    ..
        lda     $F5                             ; A3BC A5 F5                    ..
        and     #$04                            ; A3BE 29 04                    ).
        bne     $A3C5                           ; A3C0 D0 03                    ..
        jsr     TextUiSystem_Entry_8652         ; A3C2 20 52 86                  R.
        jmp     $A3AF                           ; A3C5 4C AF A3                 L..
; ----------------------------------------------------------------------------
        lda     a:$F4                           ; A3C8 AD F4 00                 ...
        and     #$03                            ; A3CB 29 03                    ).
        cmp     #$03                            ; A3CD C9 03                    ..
        bne     $A3EF                           ; A3CF D0 1E                    ..
        ldy     #$01                            ; A3D1 A0 01                    ..
        jsr     TextUiSystem_Entry_A44C         ; A3D3 20 4C A4                  L.
        lda     $F2                             ; A3D6 A5 F2                    ..
        pha                                     ; A3D8 48                       H
        clc                                     ; A3D9 18                       .
        adc     #$02                            ; A3DA 69 02                    i.
        sta     $F2                             ; A3DC 85 F2                    ..
        ldy     #$07                            ; A3DE A0 07                    ..
        lda     $A3F2,y                         ; A3E0 B9 F2 A3                 ...
        jsr     TextUiSystem_Entry_A49A         ; A3E3 20 9A A4                  ..
        dey                                     ; A3E6 88                       .
        bpl     $A3E0                           ; A3E7 10 F7                    ..
        pla                                     ; A3E9 68                       h
        sta     $F2                             ; A3EA 85 F2                    ..
        jmp     $A483                           ; A3EC 4C 83 A4                 L..
; ----------------------------------------------------------------------------
        jmp     $A3AF                           ; A3EF 4C AF A3                 L..
; ----------------------------------------------------------------------------
        db   $65,$65,$65,$65,$65,$65,$65,$85 ; A3F2 65 65 65 65 65 65 65 85  eeeeeee.
        db   $AD,$F4,$00,$29,$03,$D0,$09,$A5 ; A3FA AD F4 00 29 03 D0 09 A5  ...)....
        db   $F5,$29,$04,$D0,$03,$20,$52,$86 ; A402 F5 29 04 D0 03 20 52 86  .)... R.
        db   $A5,$F2,$48,$AD,$F4,$00,$29,$03 ; A40A A5 F2 48 AD F4 00 29 03  ..H...).
        db   $A8,$20,$98,$A4,$B9,$77,$A4,$20 ; A412 A8 20 98 A4 B9 77 A4 20  . ...w.
        db   $9A,$A4,$AD,$C8,$03,$29,$F0,$4A ; A41A 9A A4 AD C8 03 29 F0 4A  .....).J
        db   $4A,$4A,$38,$E9,$04,$48,$B9,$7B ; A422 4A 4A 38 E9 04 48 B9 7B  JJ8..H.{
        db   $A4,$20,$9A,$A4,$68,$18,$69,$FF ; A42A A4 20 9A A4 68 18 69 FF  . ..h.i.
        db   $D0,$F3,$B9,$7F,$A4,$20,$9A,$A4 ; A432 D0 F3 B9 7F A4 20 9A A4  ..... ..
        db   $20,$98,$A4,$68,$85,$F2,$20,$83 ; A43A 20 98 A4 68 85 F2 20 83   ..h.. .
        db   $A4,$E6,$F2,$60                 ; A442 A4 E6 F2 60              ...`
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A446:
        lda     a:$F4                           ; A446 AD F4 00                 ...
        and     #$03                            ; A449 29 03                    ).
        tay                                     ; A44B A8                       .
TextUiSystem_Entry_A44C:
        lda     $F2                             ; A44C A5 F2                    ..
        pha                                     ; A44E 48                       H
        lda     $A477,y                         ; A44F B9 77 A4                 .w.
        jsr     TextUiSystem_Entry_A49A         ; A452 20 9A A4                  ..
        lda     $03C8                           ; A455 AD C8 03                 ...
        and     #$F0                            ; A458 29 F0                    ).
        lsr     a                               ; A45A 4A                       J
        lsr     a                               ; A45B 4A                       J
        lsr     a                               ; A45C 4A                       J
        sec                                     ; A45D 38                       8
        sbc     #$02                            ; A45E E9 02                    ..
        pha                                     ; A460 48                       H
        lda     $A47B,y                         ; A461 B9 7B A4                 .{.
        jsr     TextUiSystem_Entry_A49A         ; A464 20 9A A4                  ..
        pla                                     ; A467 68                       h
        clc                                     ; A468 18                       .
        adc     #$FF                            ; A469 69 FF                    i.
        bne     $A460                           ; A46B D0 F3                    ..
        lda     $A47F,y                         ; A46D B9 7F A4                 ...
        jsr     TextUiSystem_Entry_A49A         ; A470 20 9A A4                  ..
        pla                                     ; A473 68                       h
        sta     $F2                             ; A474 85 F2                    ..
        rts                                     ; A476 60                       `
; ----------------------------------------------------------------------------
        db   $86,$84,$84,$87                 ; A477 86 84 84 87              ....
        db   $85,$00,$00,$8A                 ; A47B 85 00 00 8A              ....
        db   $89,$88,$88,$8B                 ; A47F 89 88 88 8B              ....
; ----------------------------------------------------------------------------
        inc     $F2                             ; A483 E6 F2                    ..
        lda     a:$F4                           ; A485 AD F4 00                 ...
        and     #$03                            ; A488 29 03                    ).
        cmp     #$02                            ; A48A C9 02                    ..
        bne     $A497                           ; A48C D0 09                    ..
        lda     $03CB                           ; A48E AD CB 03                 ...
        and     #$04                            ; A491 29 04                    ).
        beq     $A497                           ; A493 F0 02                    ..
        inc     $F2                             ; A495 E6 F2                    ..
        rts                                     ; A497 60                       `
; ----------------------------------------------------------------------------
        db   $A9,$00                         ; A498 A9 00                    ..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A49A:
        sta     $00                           ; A49A 85 00                    ..
        stx     $09                             ; A49C 86 09                    ..
        ldx     $F2                             ; A49E A6 F2                    ..
        inc     $F2                             ; A4A0 E6 F2                    ..
        lda     $F5                             ; A4A2 A5 F5                    ..
        and     #$04                            ; A4A4 29 04                    ).
        bne     $A4B3                           ; A4A6 D0 0B                    ..
        lda     $00                           ; A4A8 A5 00                    ..
        sta     $04C0,x                         ; A4AA 9D C0 04                 ...
        sta     $04A0,x                         ; A4AD 9D A0 04                 ...
        ldx     $09                             ; A4B0 A6 09                    ..
        rts                                     ; A4B2 60                       `
; ----------------------------------------------------------------------------
        lda     $F4                             ; A4B3 A5 F4                    ..
        and     #$03                            ; A4B5 29 03                    ).
        beq     $A4BE                           ; A4B7 F0 05                    ..
        lda     $00                           ; A4B9 A5 00                    ..
        sta     $04C0,x                         ; A4BB 9D C0 04                 ...
        lda     $F4                             ; A4BE A5 F4                    ..
        and     #$03                            ; A4C0 29 03                    ).
        cmp     #$03                            ; A4C2 C9 03                    ..
        beq     $A4CB                           ; A4C4 F0 05                    ..
        lda     $00                           ; A4C6 A5 00                    ..
        sta     $0480,x                         ; A4C8 9D 80 04                 ...
        ldx     $09                             ; A4CB A6 09                    ..
        rts                                     ; A4CD 60                       `
; ----------------------------------------------------------------------------
        db   $80,$40,$20                     ; A4CE 80 40 20                 .@
        db   $10                             ; A4D1 10                       .
        db   $08,$04,$02,$01,$7F,$BF,$DF,$EF ; A4D2 08 04 02 01 7F BF DF EF  ........
        db   $F7,$FB,$FD,$FE                 ; A4DA F7 FB FD FE              ....
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A4DE:
        asl     a                               ; A4DE 0A                       .
        tay                                     ; A4DF A8                       .
        lda     $A788,y                         ; A4E0 B9 88 A7                 ...
        pha                                     ; A4E3 48                       H
        lda     $A787,y                         ; A4E4 B9 87 A7                 ...
        pha                                     ; A4E7 48                       H
        rts                                     ; A4E8 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A4E9:
        asl     a                               ; A4E9 0A                       .
        tay                                     ; A4EA A8                       .
        lda     $A794,y                         ; A4EB B9 94 A7                 ...
        pha                                     ; A4EE 48                       H
        lda     $A793,y                         ; A4EF B9 93 A7                 ...
        pha                                     ; A4F2 48                       H
        rts                                     ; A4F3 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_A4F4:
        asl     a                               ; A4F4 0A                       .
        tay                                     ; A4F5 A8                       .
        lda     $A794,y                         ; A4F6 B9 94 A7                 ...
        pha                                     ; A4F9 48                       H
        lda     $A793,y                         ; A4FA B9 93 A7                 ...
        pha                                     ; A4FD 48                       H
        rts                                     ; A4FE 60                       `
; ----------------------------------------------------------------------------
Bank16_TextUiPointerBase:
        db   $01                             ; A4FF 01                       .
        db   $A5                             ; A500 A5                       .
Bank16_TextUiRecordPointers:
        db   $AB,$A7,$AB,$A7,$AB,$A7,$AB,$A7 ; A501 AB A7 AB A7 AB A7 AB A7  ........
        db   $BB,$A7,$C6,$A7,$CB,$A7,$D3,$A7 ; A509 BB A7 C6 A7 CB A7 D3 A7  ........
        db   $D8,$A7,$DE,$A7,$ED,$A7,$F2,$A7 ; A511 D8 A7 DE A7 ED A7 F2 A7  ........
        db   $0A,$A8,$12,$A8,$19,$A8,$21,$A8 ; A519 0A A8 12 A8 19 A8 21 A8  ......!.
        db   $22,$A8,$2A,$A8,$37,$A8,$42,$A8 ; A521 22 A8 2A A8 37 A8 42 A8  ".*.7.B.
        db   $48,$A8,$52,$A8,$5D,$A8,$68,$A8 ; A529 48 A8 52 A8 5D A8 68 A8  H.R.].h.
        db   $73,$A8,$7B,$A8,$81,$A8,$82,$A8 ; A531 73 A8 7B A8 81 A8 82 A8  s.{.....
        db   $83,$A8,$84,$A8,$92,$A8,$9A,$A8 ; A539 83 A8 84 A8 92 A8 9A A8  ........
        db   $A1,$A8,$A2,$A8,$B0,$A8,$B1,$A8 ; A541 A1 A8 A2 A8 B0 A8 B1 A8  ........
        db   $B2,$A8,$B3,$A8,$B4,$A8,$BC,$A8 ; A549 B2 A8 B3 A8 B4 A8 BC A8  ........
        db   $C4,$A8,$C5,$A8,$C9,$A8,$CA,$A8 ; A551 C4 A8 C5 A8 C9 A8 CA A8  ........
        db   $D1,$A8,$DB,$A8,$E0,$A8,$E8,$A8 ; A559 D1 A8 DB A8 E0 A8 E8 A8  ........
        db   $F4,$A8,$00,$A9,$0C,$A9,$17,$A9 ; A561 F4 A8 00 A9 0C A9 17 A9  ........
        db   $21,$A9,$22,$A9,$23,$A9,$2C,$A9 ; A569 21 A9 22 A9 23 A9 2C A9  !.".#.,.
        db   $34,$A9,$3A,$A9,$43,$A9,$4C,$A9 ; A571 34 A9 3A A9 43 A9 4C A9  4.:.C.L.
        db   $5B,$A9,$63,$A9,$69,$A9,$70,$A9 ; A579 5B A9 63 A9 69 A9 70 A9  [.c.i.p.
        db   $77,$A9,$80,$A9,$8A,$A9,$90,$A9 ; A581 77 A9 80 A9 8A A9 90 A9  w.......
        db   $96,$A9,$9D,$A9,$A3,$A9,$A8,$A9 ; A589 96 A9 9D A9 A3 A9 A8 A9  ........
        db   $B1,$A9,$B8,$A9,$C1,$A9,$C7,$A9 ; A591 B1 A9 B8 A9 C1 A9 C7 A9  ........
        db   $CC,$A9,$D4,$A9,$DA,$A9,$E2,$A9 ; A599 CC A9 D4 A9 DA A9 E2 A9  ........
        db   $EB,$A9,$F1,$A9,$F8,$A9,$07,$AA ; A5A1 EB A9 F1 A9 F8 A9 07 AA  ........
        db   $11,$AA,$1B,$AA,$25,$AA,$2E,$AA ; A5A9 11 AA 1B AA 25 AA 2E AA  ....%...
        db   $36,$AA,$3E,$AA,$45,$AA,$4E,$AA ; A5B1 36 AA 3E AA 45 AA 4E AA  6.>.E.N.
        db   $5B,$AA,$67,$AA,$73,$AA,$79,$AA ; A5B9 5B AA 67 AA 73 AA 79 AA  [.g.s.y.
        db   $7F,$AA,$86,$AA,$8F,$AA,$95,$AA ; A5C1 7F AA 86 AA 8F AA 95 AA  ........
        db   $9E,$AA,$A7,$AA,$AE,$AA,$B4,$AA ; A5C9 9E AA A7 AA AE AA B4 AA  ........
        db   $BA,$AA,$C1,$AA,$C6,$AA,$CC,$AA ; A5D1 BA AA C1 AA C6 AA CC AA  ........
        db   $D4,$AA,$D9,$AA,$E1,$AA,$E8,$AA ; A5D9 D4 AA D9 AA E1 AA E8 AA  ........
        db   $EF,$AA                         ; A5E1 EF AA                    ..
Bank16_TextUiCommandDirectory:
        db   $E9                             ; A5E3 E9                       .
        db   $A5,$DF,$A6                     ; A5E4 A5 DF A6                 ...
        db   $6C,$14                         ; A5E7 6C 14                    l.
Bank16_TextUiCommandPointers:
        db   $EF,$AA,$F7,$AA,$2F,$AB,$3A,$AB ; A5E9 EF AA F7 AA 2F AB 3A AB  ..../.:.
        db   $60,$AB,$68,$AB,$70,$AB,$82,$AB ; A5F1 60 AB 68 AB 70 AB 82 AB  `.h.p...
        db   $8B,$AB,$AD,$AB,$C7,$AB,$DB,$AB ; A5F9 8B AB AD AB C7 AB DB AB  ........
        db   $E3,$AB                         ; A601 E3 AB                    ..
        db   $EB,$AB,$F3,$AB,$FF,$AB,$07,$AC ; A603 EB AB F3 AB FF AB 07 AC  ........
        db   $0F,$AC,$52,$AC,$5C,$AC,$7F,$AC ; A60B 0F AC 52 AC 5C AC 7F AC  ..R.\...
        db   $C3,$AC,$D0,$AC,$DF,$AC,$FF,$AC ; A613 C3 AC D0 AC DF AC FF AC  ........
        db   $0A,$AD,$10,$AD,$2E,$AD,$4A,$AD ; A61B 0A AD 10 AD 2E AD 4A AD  ......J.
        db   $58,$AD,$5B,$AD,$5E,$AD,$61,$AD ; A623 58 AD 5B AD 5E AD 61 AD  X.[.^.a.
        db   $87,$AD,$CC,$AD,$DA,$AD,$E8,$AD ; A62B 87 AD CC AD DA AD E8 AD  ........
        db   $F0,$AD,$00,$AE,$06,$AE,$32,$AE ; A633 F0 AD 00 AE 06 AE 32 AE  ......2.
        db   $54,$AE,$76,$AE,$95,$AE,$BF,$AE ; A63B 54 AE 76 AE 95 AE BF AE  T.v.....
        db   $02,$AF,$57,$AF,$65,$AF,$70,$AF ; A643 02 AF 57 AF 65 AF 70 AF  ..W.e.p.
        db   $78,$AF,$D8,$AF,$14,$B0,$21,$B0 ; A64B 78 AF D8 AF 14 B0 21 B0  x.....!.
        db   $37,$B0,$3C,$B0,$43,$B0,$47,$B0 ; A653 37 B0 3C B0 43 B0 47 B0  7.<.C.G.
        db   $4C,$B0,$52,$B0,$56,$B0,$5B,$B0 ; A65B 4C B0 52 B0 56 B0 5B B0  L.R.V.[.
        db   $61,$B0,$65,$B0,$6C,$B0,$70,$B0 ; A663 61 B0 65 B0 6C B0 70 B0  a.e.l.p.
        db   $79,$B0,$7B,$B0,$80,$B0,$88,$B0 ; A66B 79 B0 7B B0 80 B0 88 B0  y.{.....
        db   $8C,$B0,$90,$B0,$9A,$B0,$A3,$B0 ; A673 8C B0 90 B0 9A B0 A3 B0  ........
        db   $AD,$B0,$BB,$B0,$C1,$B0,$C9,$B0 ; A67B AD B0 BB B0 C1 B0 C9 B0  ........
        db   $D1,$B0,$DA,$B0,$E3,$B0,$E8,$B0 ; A683 D1 B0 DA B0 E3 B0 E8 B0  ........
        db   $F5,$B0,$FA,$B0,$01,$B1,$08,$B1 ; A68B F5 B0 FA B0 01 B1 08 B1  ........
        db   $12,$B1,$14,$B1,$17,$B1,$1F,$B1 ; A693 12 B1 14 B1 17 B1 1F B1  ........
        db   $27,$B1,$2E,$B1,$30,$B1,$35,$B1 ; A69B 27 B1 2E B1 30 B1 35 B1  '...0.5.
        db   $3C,$B1,$3D,$B1,$40,$B1,$42,$B1 ; A6A3 3C B1 3D B1 40 B1 42 B1  <.=.@.B.
        db   $45,$B1,$47,$B1,$4A,$B1,$4F,$B1 ; A6AB 45 B1 47 B1 4A B1 4F B1  E.G.J.O.
        db   $52,$B1,$58,$B1,$5E,$B1,$63,$B1 ; A6B3 52 B1 58 B1 5E B1 63 B1  R.X.^.c.
        db   $67,$B1,$6A,$B1,$6F,$B1,$76,$B1 ; A6BB 67 B1 6A B1 6F B1 76 B1  g.j.o.v.
        db   $79,$B1,$7D,$B1,$82,$B1,$89,$B1 ; A6C3 79 B1 7D B1 82 B1 89 B1  y.}.....
        db   $93,$B1,$9A,$B1,$A0,$B1,$A4,$B1 ; A6CB 93 B1 9A B1 A0 B1 A4 B1  ........
        db   $A8,$B1,$AE,$B1,$B2,$B1,$B6,$B1 ; A6D3 A8 B1 AE B1 B2 B1 B6 B1  ........
        db   $BB,$B1,$C1,$B1                 ; A6DB BB B1 C1 B1              ....
Bank16_TextUiCommandPointersSecondary:
        db   $C1,$B1,$D8,$B1,$F9,$B1,$4A,$B2 ; A6DF C1 B1 D8 B1 F9 B1 4A B2  ......J.
        db   $4F,$B2,$78,$B2,$AB,$B2,$07,$B3 ; A6E7 4F B2 78 B2 AB B2 07 B3  O.x.....
        db   $42,$B3,$7F,$B3,$A8,$B3,$B7,$B3 ; A6EF 42 B3 7F B3 A8 B3 B7 B3  B.......
        db   $BF,$B3,$C8,$B3,$DC,$B3,$ED,$B3 ; A6F7 BF B3 C8 B3 DC B3 ED B3  ........
        db   $F2,$B3,$F8,$B3,$FC,$B3,$0A,$B4 ; A6FF F2 B3 F8 B3 FC B3 0A B4  ........
        db   $14,$B4,$1A,$B4,$2C,$B4,$3C,$B4 ; A707 14 B4 1A B4 2C B4 3C B4  ....,.<.
        db   $4C,$B4,$4D,$B4,$55,$B4,$5D,$B4 ; A70F 4C B4 4D B4 55 B4 5D B4  L.M.U.].
        db   $6A,$B4,$6F,$B4,$76,$B4,$7C,$B4 ; A717 6A B4 6F B4 76 B4 7C B4  j.o.v.|.
        db   $7F,$B4,$84,$B4,$88,$B4,$8E,$B4 ; A71F 7F B4 84 B4 88 B4 8E B4  ........
        db   $93,$B4,$9B,$B4,$A1,$B4,$A7,$B4 ; A727 93 B4 9B B4 A1 B4 A7 B4  ........
        db   $AD,$B4,$B3,$B4,$B6,$B4         ; A72F AD B4 B3 B4 B6 B4        ......
Bank16_TextUiDispatchTables:
        db   $3B                             ; A735 3B                       ;
        db   $A7,$77,$A7                     ; A736 A7 77 A7                 .w.
        db   $34,$0E,$B5,$B4,$BE,$B4,$C8,$B4 ; A739 34 0E B5 B4 BE B4 C8 B4  4.......
        db   $D2,$B4,$DC,$B4,$03,$B5,$13,$B5 ; A741 D2 B4 DC B4 03 B5 13 B5  ........
        db   $16,$B5,$37,$B5,$3A,$B5,$3D,$B5 ; A749 16 B5 37 B5 3A B5 3D B5  ..7.:.=.
        db   $47,$B5,$5A,$B5,$73,$B5,$8F,$B5 ; A751 47 B5 5A B5 73 B5 8F B5  G.Z.s...
        db   $9C,$B5,$B1,$B5,$1A,$B6,$21,$B6 ; A759 9C B5 B1 B5 1A B6 21 B6  ......!.
        db   $24,$B6,$31,$B6,$35,$B6,$40,$B6 ; A761 24 B6 31 B6 35 B6 40 B6  $.1.5.@.
        db   $4F,$B6,$52,$B6,$1F,$B7,$25,$B7 ; A769 4F B6 52 B6 1F B7 25 B7  O.R...%.
        db   $2C,$B7,$36,$B7,$3D,$B7,$4A,$B7 ; A771 2C B7 36 B7 3D B7 4A B7  ,.6.=.J.
        db   $5C,$B7,$62,$B7,$72,$B7,$9F,$B7 ; A779 5C B7 62 B7 72 B7 9F B7  \.b.r...
        db   $A2,$B7,$A5,$B7,$B6,$B7         ; A781 A2 B7 A5 B7 B6 B7        ......
        db   $BD                             ; A787 BD                       .
        db   $B7,$3A,$B8,$67,$B8,$74,$B8,$81 ; A788 B7 3A B8 67 B8 74 B8 81  .:.g.t..
        db   $B8,$9F,$B8                     ; A790 B8 9F B8                 ...
        db   $C1                             ; A793 C1                       .
        db   $B8,$D0,$B8,$D5,$B8,$DD,$B8,$2B ; A794 B8 D0 B8 D5 B8 DD B8 2B  .......+
        db   $B9,$43,$B9,$4F,$B9,$74,$B9,$88 ; A79C B9 43 B9 4F B9 74 B9 88  .C.O.t..
        db   $B9,$AF,$B9,$BE,$B9,$E1,$B9     ; A7A4 B9 AF B9 BE B9 E1 B9     .......
Bank16_TextUiRecordData:
        db   $92,$12,$AB,$36,$D3,$37,$A9,$38 ; A7AB 92 12 AB 36 D3 37 A9 38  ...6.7.8
        db   $39,$3A,$3B,$A8,$3E,$3D,$A9,$3C ; A7B3 39 3A 3B A8 3E 3D A9 3C  9:;.>=.<
        db   $53,$25,$00,$A9,$38,$D2,$BF,$80 ; A7BB 53 25 00 A9 38 D2 BF 80  S%..8...
        db   $2E,$C0,$05,$68,$21,$D7,$85,$01 ; A7C3 2E C0 05 68 21 D7 85 01  ...h!...
        db   $71,$35,$06,$AA,$39,$D2,$3F,$40 ; A7CB 71 35 06 AA 39 D2 3F 40  q5..9.?@
        db   $4B,$15,$30,$D0,$41,$56,$35,$00 ; A7D3 4B 15 30 D0 41 56 35 00  K.0.AV5.
        db   $D2,$80,$2E,$81,$35,$11,$A9,$34 ; A7DB D2 80 2E 81 35 11 A9 34  ....5..4
        db   $D0,$03,$A9,$42,$A9,$43,$AC,$44 ; A7E3 D0 03 A9 42 A9 43 AC 44  ...B.C.D
        db   $AC,$45,$81,$91,$D0,$86,$0A,$A4 ; A7EB AC 45 81 91 D0 86 0A A4  .E......
        db   $35,$02,$D0,$AC,$46,$AD,$47,$AC ; A7F3 35 02 D0 AC 46 AD 47 AC  5...F.G.
        db   $48,$A8,$49,$AF,$A8,$4A,$AE,$4B ; A7FB 48 A8 49 AF A8 4A AE 4B  H.I..J.K
        db   $AE,$4C,$A8,$4D,$4E,$AC,$4F,$C1 ; A803 AE 4C A8 4D 4E AC 4F C1  .L.MN.O.
        db   $12,$A8,$50,$D0,$87,$01,$01,$68 ; A80B 12 A8 50 D0 87 01 01 68  ..P....h
        db   $11,$A8,$36,$D0,$95,$01,$71,$55 ; A813 11 A8 36 D0 95 01 71 55  ..6...qU
        db   $06,$A9,$40,$D2,$51,$54,$11,$00 ; A81B 06 A9 40 D2 51 54 11 00  ..@.QT..
        db   $05,$00,$D0,$88,$0F,$C0,$0F,$B1 ; A823 05 00 D0 88 0F C0 0F B1  ........
        db   $27,$01,$C6,$AD,$66,$5C,$D0,$80 ; A82B 27 01 C6 AD 66 5C D0 80  '...f\..
        db   $23,$10,$A8,$0E,$52,$35,$00,$A9 ; A833 23 10 A8 0E 52 35 00 A9  #...R5..
        db   $3A,$D2,$BF,$80,$2E,$C0,$13,$87 ; A83B 3A D2 BF 80 2E C0 13 87  :.......
        db   $12,$D6,$89,$08,$26,$66,$81,$A9 ; A843 12 D6 89 08 26 66 81 A9  ....&f..
        db   $55,$D1,$56,$96,$57,$58,$59,$51 ; A84B 55 D1 56 96 57 58 59 51  U.V.WXYQ
        db   $15,$00,$A9,$5A,$D2,$BF,$80,$2E ; A853 15 00 A9 5A D2 BF 80 2E  ...Z....
        db   $C0,$4A,$72,$85,$02,$9A,$11,$A8 ; A85B C0 4A 72 85 02 9A 11 A8  .Jr.....
        db   $5B,$D1,$B5,$8A,$12,$52,$25,$00 ; A863 5B D1 B5 8A 12 52 25 00  [....R%.
        db   $A9,$3B,$D2,$BF,$80,$2E,$C0,$4B ; A86B A9 3B D2 BF 80 2E C0 4B  .;.....K
        db   $52,$11,$D0,$9C,$66,$31,$5C,$32 ; A873 52 11 D0 9C 66 31 5C 32  R...f1\2
        db   $82,$65,$33,$D0,$86,$0A,$13,$12 ; A87B 82 65 33 D0 86 0A 13 12  .e3.....
        db   $11,$87,$15,$23,$BF,$A9,$07,$DA ; A883 11 87 15 23 BF A9 07 DA  ...#....
        db   $9D,$8B,$09,$35,$C1,$08,$18,$94 ; A88B 9D 8B 09 35 C1 08 18 94  ...5....
        db   $41,$AC,$3E,$D1,$33,$91,$61,$87 ; A893 41 AC 3E D1 33 91 61 87  A.>.3.a.
        db   $16,$23,$D6,$89,$08,$26,$11,$53 ; A89B 16 23 D6 89 08 26 11 53  .#...&.S
        db   $25,$20,$D2,$BF,$8C,$16,$82,$A1 ; A8A3 25 20 D2 BF 8C 16 82 A1  % ......
        db   $A9,$62,$C1,$03,$51,$14,$13,$12 ; A8AB A9 62 C1 03 51 14 13 12  .b..Q...
        db   $11,$58,$25,$30,$D0,$8D,$17,$C1 ; A8B3 11 58 25 30 D0 8D 17 C1  .X%0....
        db   $05,$94,$65,$06,$A8,$61,$D2,$8E ; A8BB 05 94 65 06 A8 61 D2 8E  ..e..a..
        db   $1A,$11,$02,$11,$D0,$19,$11,$01 ; A8C3 1A 11 02 11 D0 19 11 01  ........
        db   $05,$10,$24,$D0,$8F,$18,$51,$95 ; A8CB 05 10 24 D0 8F 18 51 95  ..$...Q.
        db   $13,$D1,$87,$A1,$63,$3E,$65,$64 ; A8D3 13 D1 87 A1 63 3E 65 64  ....c>ed
        db   $96,$91,$D0,$90,$68,$96,$95,$13 ; A8DB 96 91 D0 90 68 96 95 13  ....h...
        db   $B0,$11,$D5,$90,$68,$51,$95,$13 ; A8E3 B0 11 D5 90 68 51 95 13  ....hQ..
        db   $A8,$00,$D1,$87,$A1,$66,$38,$64 ; A8EB A8 00 D1 87 A1 66 38 64  .....f8d
        db   $3A,$51,$95,$13,$A8,$00,$D1,$87 ; A8F3 3A 51 95 13 A8 00 D1 87  :Q......
        db   $A1,$66,$64,$67,$3A,$51,$95,$13 ; A8FB A1 66 64 67 3A 51 95 13  .fdg:Q..
        db   $A8,$00,$D1,$87,$A1,$66,$38,$67 ; A903 A8 00 D1 87 A1 66 38 67  .....f8g
        db   $3A,$51,$95,$13,$A8,$00,$D1,$87 ; A90B 3A 51 95 13 A8 00 D1 87  :Q......
        db   $A1,$66,$67,$3A,$4A,$95,$13,$B0 ; A913 A1 66 67 3A 4A 95 13 B0  .fg:J...
        db   $11,$D1,$84,$22,$C1,$02,$12,$11 ; A91B 11 D1 84 22 C1 02 12 11  ..."....
        db   $B3,$96,$12,$11,$D8,$B3,$87,$01 ; A923 B3 96 12 11 D8 B3 87 01  ........
        db   $01,$96,$95,$02,$11,$D5,$B4,$99 ; A92B 01 96 95 02 11 D5 B4 99  ........
        db   $08,$51,$B5,$13,$D1,$56,$3B,$41 ; A933 08 51 B5 13 D1 56 3B 41  .Q...V;A
        db   $91,$A8,$69,$D1,$83,$1C,$C1,$00 ; A93B 91 A8 69 D1 83 1C C1 00  ..i.....
        db   $41,$91,$A8,$69,$D1,$83,$1C,$C1 ; A943 41 91 A8 69 D1 83 1C C1  A..i....
        db   $00,$B4,$94,$02,$11,$AC,$69,$D1 ; A94B 00 B4 94 02 11 AC 69 D1  ......i.
        db   $B4,$82,$2F,$1D,$1E,$1F,$C1,$00 ; A953 B4 82 2F 1D 1E 1F C1 00  ../.....
        db   $4B,$91,$A8,$6A,$D1,$5D,$83,$20 ; A95B 4B 91 A8 6A D1 5D 83 20  K..j.].
        db   $E1,$95,$50,$D0,$97,$29,$4B,$35 ; A963 E1 95 50 D0 97 29 4B 35  ..P..)K5
        db   $23,$D1,$6C,$6D,$77,$B1,$12,$D5 ; A96B 23 D1 6C 6D 77 B1 12 D5  #.lmw...
        db   $E0,$93,$0B,$21,$04,$05,$20,$D2 ; A973 E0 93 0B 21 04 05 20 D2  ...!.. .
        db   $BF,$80,$13,$C0,$6A,$77,$25,$23 ; A97B BF 80 13 C0 6A 77 25 23  ....jw%#
        db   $D1,$73,$75,$72,$70,$71,$77,$59 ; A983 D1 73 75 72 70 71 77 59  .surpqwY
        db   $15,$20,$D1,$80,$1B,$C2,$95,$90 ; A98B 15 20 D1 80 1B C2 95 90  . ......
        db   $D0,$97,$28,$59,$35,$23,$D1,$6E ; A993 D0 97 28 59 35 23 D1 6E  ..(Y5#.n
        db   $6F,$77,$4A,$35,$23,$D1,$74,$3A ; A99B 6F 77 4A 35 23 D1 74 3A  owJ5#.t:
        db   $4B,$35,$23,$DF,$76,$87,$15,$23 ; A9A3 4B 35 23 DF 76 87 15 23  K5#.v..#
        db   $9A,$11,$D5,$B8,$94,$0C,$3C,$35 ; A9AB 9A 11 D5 B8 94 0C 3C 35  ......<5
        db   $23,$D1,$9B,$5E,$5F,$04,$05,$00 ; A9B3 23 D1 9B 5E 5F 04 05 00  #..^_...
        db   $D2,$BF,$80,$2E,$C0,$6A,$86,$22 ; A9BB D2 BF 80 2E C0 6A 86 22  .....j."
        db   $D6,$89,$08,$26,$87,$21,$D0,$86 ; A9C3 D6 89 08 26 87 21 D0 86  ...&.!..
        db   $0A,$C3,$92,$AA,$61,$D4,$8E,$1A ; A9CB 0A C3 92 AA 61 D4 8E 1A  ....a...
        db   $1A,$05,$05,$00,$D0,$2A,$2B,$51 ; A9D3 1A 05 05 00 D0 2A 2B 51  .....*+Q
        db   $15,$00,$A9,$5A,$D2,$80,$2E,$53 ; A9DB 15 00 A9 5A D2 80 2E 53  ...Z...S
        db   $25,$00,$D2,$BF,$80,$2E,$C0,$4A ; A9E3 25 00 D2 BF 80 2E C0 4A  %......J
        db   $C2,$95,$80,$D0,$97,$28,$48,$75 ; A9EB C2 95 80 D0 97 28 48 75  .....(Hu
        db   $00,$D0,$A5,$8F,$00,$A4,$35,$00 ; A9F3 00 D0 A5 8F 00 A4 35 00  ......5.
        db   $D0,$AC,$46,$AD,$47,$AE,$4B,$AE ; A9FB D0 AC 46 AD 47 AE 4B AE  ..F.G.K.
        db   $4C,$A8,$4D,$4E,$C1,$35,$13,$D1 ; AA03 4C A8 4D 4E C1 35 13 D1  L.MN.5..
        db   $A5,$80,$A1,$01,$C1,$06,$95,$71 ; AA0B A5 80 A1 01 C1 06 95 71  .......q
        db   $D1,$E0,$A5,$83,$A1,$02,$C1,$07 ; AA13 D1 E0 A5 83 A1 02 C1 07  ........
        db   $C2,$51,$D1,$E1,$A5,$83,$A1,$02 ; AA1B C2 51 D1 E1 A5 83 A1 02  .Q......
        db   $C1,$07,$A4,$75,$10,$DB,$A5,$15 ; AA23 C1 07 A4 75 10 DB A5 15  ...u....
        db   $0A,$16,$17,$C2,$45,$00,$E8,$2C ; AA2B 0A 16 17 C2 45 00 E8 2C  ....E..,
        db   $DD,$98,$2D,$65,$25,$D3,$A5,$AA ; AA33 DD 98 2D 65 25 D3 A5 AA  ..-e%...
        db   $11,$D0,$18,$59,$61,$D1,$A5,$84 ; AA3B 11 D0 18 59 61 D1 A5 84  ...Ya...
        db   $A1,$03,$B3,$61,$D0,$A5,$08,$1A ; AA43 A1 03 B3 61 D0 A5 08 1A  ...a....
        db   $12,$13,$14,$41,$95,$32,$BF,$9A ; AA4B 12 13 14 41 95 32 BF 9A  ...A.2..
        db   $11,$D1,$B4,$80,$1C,$C1,$0A,$5C ; AA53 11 D1 B4 80 1C C1 0A 5C  .......\
        db   $B4,$96,$02,$A5,$AF,$AE,$05,$D0 ; AA5B B4 96 02 A5 AF AE 05 D0  ........
        db   $85,$A1,$04,$04,$41,$91,$BF,$9A ; AA63 85 A1 04 04 41 91 BF 9A  ....A...
        db   $11,$D1,$B4,$80,$1C,$C1,$0B,$5E ; AA6B 11 D1 B4 80 1C C1 0B 5E  .......^
        db   $85,$95,$02,$D0,$92,$27,$E1,$95 ; AA73 85 95 02 D0 92 27 E1 95  .....'..
        db   $40,$D0,$97,$29,$B1,$12,$D0,$E0 ; AA7B 40 D0 97 29 B1 12 D0 E0  @..)....
        db   $93,$0B,$21,$A4,$95,$10,$DB,$A5 ; AA83 93 0B 21 A4 95 10 DB A5  ..!.....
        db   $15,$0A,$16,$17,$59,$35,$20,$DE ; AA8B 15 0A 16 17 59 35 20 DE  ....Y5 .
        db   $A5,$24,$87,$15,$13,$9A,$11,$D0 ; AA93 A5 24 87 15 13 9A 11 D0  .$......
        db   $B8,$94,$0C,$95,$91,$D1,$61,$A5 ; AA9B B8 94 0C 95 91 D1 61 A5  ......a.
        db   $25,$26,$C1,$09,$55,$91,$D1,$A5 ; AAA3 25 26 C1 09 55 91 D1 A5  %&..U...
        db   $27,$28,$29,$55,$91,$D1,$A5,$27 ; AAAB 27 28 29 55 91 D1 A5 27  '()U...'
        db   $28,$55,$91,$D1,$A5,$27,$29,$B1 ; AAB3 28 55 91 D1 A5 27 29 B1  (U...').
        db   $12,$D5,$E1,$93,$0B,$21,$4B,$15 ; AABB 12 D5 E1 93 0B 21 4B 15  .....!K.
        db   $00,$D0,$41,$03,$12,$D6,$89,$08 ; AAC3 00 D0 41 03 12 D6 89 08  ..A.....
        db   $26,$C2,$42,$D5,$A5,$86,$A1,$06 ; AACB 26 C2 42 D5 A5 86 A1 06  &.B.....
        db   $07,$4B,$11,$D0,$5D,$5D,$77,$25 ; AAD3 07 4B 11 D0 5D 5D 77 25  .K..]]w%
        db   $23,$D1,$72,$70,$71,$77,$3A,$25 ; AADB 23 D1 72 70 71 77 3A 25  #.rpqw:%
        db   $23,$D1,$9B,$5E,$5F,$3A,$45,$23 ; AAE3 23 D1 9B 5E 5F 3A 45 23  #..^_:E#
        db   $D1,$9B,$5E,$5F,$A5,$F7,$8D,$DB ; AAEB D1 9B 5E 5F A5 F7 8D DB  ..^_....
        db   $03,$4C,$78,$BA                 ; AAF3 03 4C 78 BA              .Lx.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AAF7:
        jsr     TextUiSystem_Entry_BA0E         ; AAF7 20 0E BA                  ..
        ldx     $F7                             ; AAFA A6 F7                    ..
        ldy     $03DC                           ; AAFC AC DC 03                 ...
        lda     $AB2C,y                         ; AAFF B9 2C AB                 .,.
        cpy     #$01                            ; AB02 C0 01                    ..
        beq     TextUiSystem_Branch_AB0B        ; AB04 F0 05                    ..
        jsr     TextUiSystem_Entry_BEE8         ; AB06 20 E8 BE                  ..
        bcs     TextUiSystem_Branch_AB14        ; AB09 B0 09                    ..
TextUiSystem_Branch_AB0B:
        cpy     #$00                            ; AB0B C0 00                    ..
        beq     TextUiSystem_Branch_AB19        ; AB0D F0 0A                    ..
        brk                                     ; AB0F 00                       .
        db   $00,$13                         ; AB10 00 13                    ..
; ----------------------------------------------------------------------------
        bcs     TextUiSystem_Branch_AB16        ; AB12 B0 02                    ..
TextUiSystem_Branch_AB14:
        lda     #$FF                            ; AB14 A9 FF                    ..
TextUiSystem_Branch_AB16:
        jmp     TextUiSystem_Entry_BA9F         ; AB16 4C 9F BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_AB19:
        dec     $03DD                           ; AB19 CE DD 03                 ...
        bmi     TextUiSystem_Branch_AB14        ; AB1C 30 F6                    0.
        brk                                     ; AB1E 00                       .
        db   $00,$13                         ; AB1F 00 13                    ..
; ----------------------------------------------------------------------------
        bcs     TextUiSystem_Branch_AB16        ; AB21 B0 F3                    ..
        inc     $F2                             ; AB23 E6 F2                    ..
        inc     $F2                             ; AB25 E6 F2                    ..
        lda     #$6D                            ; AB27 A9 6D                    .m
        jmp     TextUiSystem_Entry_98B3         ; AB29 4C B3 98                 L..
; ----------------------------------------------------------------------------
        db   $40,$3F,$41                     ; AB2C 40 3F 41                 @?A
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AB2F:
        lda     #$0D                            ; AB2F A9 0D                    ..
        sta     $03DB                           ; AB31 8D DB 03                 ...
        jsr     TextUiSystem_Entry_BB56         ; AB34 20 56 BB                  V.
        jmp     TextUiSystem_Entry_BB75         ; AB37 4C 75 BB                 Lu.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AB3A:
        ldx     $F7                             ; AB3A A6 F7                    ..
        brk                                     ; AB3C 00                       .
        db   $2B,$53                         ; AB3D 2B 53                    +S
; ----------------------------------------------------------------------------
        tax                                     ; AB3F AA                       .
        pha                                     ; AB40 48                       H
        ldy     $AB50,x                         ; AB41 BC 50 AB                 .P.
        beq     TextUiSystem_Branch_AB4C        ; AB44 F0 06                    ..
TextUiSystem_Branch_AB46:
        jsr     TextUiSystem_Entry_98FE         ; AB46 20 FE 98                  ..
        dey                                     ; AB49 88                       .
        bne     TextUiSystem_Branch_AB46        ; AB4A D0 FA                    ..
TextUiSystem_Branch_AB4C:
        pla                                     ; AB4C 68                       h
        jmp     TextUiSystem_Branch_BAA4        ; AB4D 4C A4 BA                 L..
; ----------------------------------------------------------------------------
        db   $04,$02,$00,$03,$03,$02,$03,$02 ; AB50 04 02 00 03 03 02 03 02  ........
        db   $01,$02,$02,$02,$02,$03,$02,$01 ; AB58 01 02 02 02 02 03 02 01  ........
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AB60:
        ldx     $F7                             ; AB60 A6 F7                    ..
        brk                                     ; AB62 00                       .
        db   $29,$53                         ; AB63 29 53                    )S
; ----------------------------------------------------------------------------
        jmp     TextUiSystem_Branch_BAA9        ; AB65 4C A9 BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AB68:
        lda     #$0A                            ; AB68 A9 0A                    ..
        sta     $03DC                           ; AB6A 8D DC 03                 ...
        jmp     TextUiSystem_Branch_ABF9        ; AB6D 4C F9 AB                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AB70:
        lda     #$00                            ; AB70 A9 00                    ..
        sta     $72                             ; AB72 85 72                    .r
        sta     $73                             ; AB74 85 73                    .s
        sta     $74                             ; AB76 85 74                    .t
        lda     #$0A                            ; AB78 A9 0A                    ..
        jsr     TextUiSystem_Entry_BD41         ; AB7A 20 41 BD                  A.
        ldy     #$02                            ; AB7D A0 02                    ..
        jmp     TextUiSystem_Entry_BB75         ; AB7F 4C 75 BB                 Lu.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AB82:
        jsr     TextUiSystem_Entry_BCEB         ; AB82 20 EB BC                  ..
        clc                                     ; AB85 18                       .
        adc     #$0F                            ; AB86 69 0F                    i.
        jmp     TextUiSystem_Branch_BACA        ; AB88 4C CA BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AB8B:
        lda     $F3                             ; AB8B A5 F3                    ..
        ldx     $F7                             ; AB8D A6 F7                    ..
        jsr     TextUiSystem_Entry_BEE8         ; AB8F 20 E8 BE                  ..
        bcs     TextUiSystem_Branch_ABA3        ; AB92 B0 0F                    ..
        brk                                     ; AB94 00                       .
        db   $2C,$73                         ; AB95 2C 73                    ,s
; ----------------------------------------------------------------------------
        lda     $73                             ; AB97 A5 73                    .s
        sta     $03DC                           ; AB99 8D DC 03                 ...
        bcc     TextUiSystem_Branch_ABA3        ; AB9C 90 05                    ..
        and     #$7F                            ; AB9E 29 7F                    ).
        jmp     TextUiSystem_Entry_BAAE         ; ABA0 4C AE BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_ABA3:
        lda     #$00                            ; ABA3 A9 00                    ..
        sta     $03DC                           ; ABA5 8D DC 03                 ...
        lda     #$FF                            ; ABA8 A9 FF                    ..
        jmp     TextUiSystem_Entry_BAAE         ; ABAA 4C AE BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_ABAD:
        lda     $F3                             ; ABAD A5 F3                    ..
        sta     $6F                             ; ABAF 85 6F                    .o
        jsr     TextUiSystem_Entry_BCEB         ; ABB1 20 EB BC                  ..
        tay                                     ; ABB4 A8                       .
        lda     $ABC3,y                         ; ABB5 B9 C3 AB                 ...
        ldx     $F7                             ; ABB8 A6 F7                    ..
        brk                                     ; ABBA 00                       .
        db   $00,$13                         ; ABBB 00 13                    ..
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_BA29         ; ABBD 20 29 BA                  ).
        jmp     TextUiSystem_Entry_BAAE         ; ABC0 4C AE BA                 L..
; ----------------------------------------------------------------------------
        db   $37,$38,$39,$3A                 ; ABC3 37 38 39 3A              789:
; ----------------------------------------------------------------------------
TextUiSystem_Entry_ABC7:
        ldx     $F7                             ; ABC7 A6 F7                    ..
        lda     $F3                             ; ABC9 A5 F3                    ..
        brk                                     ; ABCB 00                       .
        db   $3B,$73                         ; ABCC 3B 73                    ;s
; ----------------------------------------------------------------------------
        bcc     TextUiSystem_Branch_ABD6        ; ABCE 90 06                    ..
        jsr     TextUiSystem_Entry_BA29         ; ABD0 20 29 BA                  ).
        jmp     TextUiSystem_Entry_BAAE         ; ABD3 4C AE BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_ABD6:
        lda     #$FF                            ; ABD6 A9 FF                    ..
        jmp     TextUiSystem_Entry_BAAE         ; ABD8 4C AE BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_ABDB:
        ldx     $F3                             ; ABDB A6 F3                    ..
        lda     $07BD,x                         ; ABDD BD BD 07                 ...
        jmp     TextUiSystem_Entry_BAAE         ; ABE0 4C AE BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_ABE3:
        ldx     $F3                             ; ABE3 A6 F3                    ..
        lda     $61DB,x                         ; ABE5 BD DB 61                 ..a
        jmp     TextUiSystem_Entry_BAAE         ; ABE8 4C AE BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_ABEB:
        lda     #$00                            ; ABEB A9 00                    ..
        sta     $03DC                           ; ABED 8D DC 03                 ...
        jmp     TextUiSystem_Branch_ABF9        ; ABF0 4C F9 AB                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_ABF3:
        inc     $03DC                           ; ABF3 EE DC 03                 ...
        lda     $03DC                           ; ABF6 AD DC 03                 ...
TextUiSystem_Branch_ABF9:
        jsr     TextUiSystem_Entry_BB56         ; ABF9 20 56 BB                  V.
        jmp     TextUiSystem_Entry_BB75         ; ABFC 4C 75 BB                 Lu.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_ABFF:
        lda     $F3                             ; ABFF A5 F3                    ..
        sta     $03DD                           ; AC01 8D DD 03                 ...
        jmp     TextUiSystem_Branch_BC6D        ; AC04 4C 6D BC                 Lm.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AC07:
        lda     #$07                            ; AC07 A9 07                    ..
        sta     $03DC                           ; AC09 8D DC 03                 ...
        jmp     TextUiSystem_Branch_ABF9        ; AC0C 4C F9 AB                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AC0F:
        dec     $F2                             ; AC0F C6 F2                    ..
        jsr     TextUiSystem_Entry_9901         ; AC11 20 01 99                  ..
        inc     $F2                             ; AC14 E6 F2                    ..
        cmp     #$8C                            ; AC16 C9 8C                    ..
        bne     TextUiSystem_Branch_AC21        ; AC18 D0 07                    ..
        dec     $F2                             ; AC1A C6 F2                    ..
        lda     #$85                            ; AC1C A9 85                    ..
        jsr     TextUiSystem_Entry_98B3         ; AC1E 20 B3 98                  ..
TextUiSystem_Branch_AC21:
        ldy     #$00                            ; AC21 A0 00                    ..
        lda     $F5                             ; AC23 A5 F5                    ..
        and     #$08                            ; AC25 29 08                    ).
        bne     TextUiSystem_Branch_AC40        ; AC27 D0 17                    ..
        lda     $F5                             ; AC29 A5 F5                    ..
        and     #$40                            ; AC2B 29 40                    )@
        beq     TextUiSystem_Branch_AC40        ; AC2D F0 11                    ..
        iny                                     ; AC2F C8                       .
        iny                                     ; AC30 C8                       .
        lda     a:$F4                           ; AC31 AD F4 00                 ...
        and     #$F0                            ; AC34 29 F0                    ).
        ora     $03D3                           ; AC36 0D D3 03                 ...
        cmp     TextCursorPosition              ; AC39 CD CF 03                 ...
        bne     TextUiSystem_Branch_AC40        ; AC3C D0 02                    ..
        iny                                     ; AC3E C8                       .
        iny                                     ; AC3F C8                       .
TextUiSystem_Branch_AC40:
        lda     $AC4C,y                         ; AC40 B9 4C AC                 .L.
        jsr     TextUiSystem_Entry_98B3         ; AC43 20 B3 98                  ..
        lda     $AC4D,y                         ; AC46 B9 4D AC                 .M.
        jmp     TextUiSystem_Entry_98B3         ; AC49 4C B3 98                 L..
; ----------------------------------------------------------------------------
        db   $FF                             ; AC4C FF                       .
        db   $FF,$00,$82,$81,$82             ; AC4D FF 00 82 81 82           .....
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AC52:
        ldx     $F7                             ; AC52 A6 F7                    ..
        lda     $F3                             ; AC54 A5 F3                    ..
        brk                                     ; AC56 00                       .
        db   $47,$73                         ; AC57 47 73                    Gs
; ----------------------------------------------------------------------------
        jmp     TextUiSystem_Branch_BAB8        ; AC59 4C B8 BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AC5C:
        lda     $F3                             ; AC5C A5 F3                    ..
        sta     $03DB                           ; AC5E 8D DB 03                 ...
        jsr     TextUiSystem_Entry_BA44         ; AC61 20 44 BA                  D.
        jsr     TextUiSystem_Entry_BA6D         ; AC64 20 6D BA                  m.
        jsr     TextUiSystem_Entry_98FE         ; AC67 20 FE 98                  ..
        ldx     $03DB                           ; AC6A AE DB 03                 ...
        brk                                     ; AC6D 00                       .
        db   $2B,$53                         ; AC6E 2B 53                    +S
; ----------------------------------------------------------------------------
        tax                                     ; AC70 AA                       .
        lda     $F7                             ; AC71 A5 F7                    ..
        brk                                     ; AC73 00                       .
        db   $0A,$0F                         ; AC74 0A 0F                    ..
; ----------------------------------------------------------------------------
        lda     #$29                            ; AC76 A9 29                    .)
        bcs     TextUiSystem_Branch_AC7C        ; AC78 B0 02                    ..
        lda     #$00                            ; AC7A A9 00                    ..
TextUiSystem_Branch_AC7C:
        jmp     TextUiSystem_Entry_98B3         ; AC7C 4C B3 98                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AC7F:
        ldy     $F3                             ; AC7F A4 F3                    ..
        lda     $07B0,y                         ; AC81 B9 B0 07                 ...
        bmi     TextUiSystem_Branch_AC90        ; AC84 30 0A                    0.
        lsr     a                               ; AC86 4A                       J
        lsr     a                               ; AC87 4A                       J
        lsr     a                               ; AC88 4A                       J
        tax                                     ; AC89 AA                       .
        lda     $6E45,x                         ; AC8A BD 45 6E                 .En
        jmp     TextUiSystem_Entry_BAB3         ; AC8D 4C B3 BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_AC90:
        and     #$78                            ; AC90 29 78                    )x
        lsr     a                               ; AC92 4A                       J
        lsr     a                               ; AC93 4A                       J
        lsr     a                               ; AC94 4A                       J
        tax                                     ; AC95 AA                       .
        brk                                     ; AC96 00                       .
        db   $2A,$53                         ; AC97 2A 53                    *S
; ----------------------------------------------------------------------------
        ldx     #$07                            ; AC99 A2 07                    ..
TextUiSystem_Branch_AC9B:
        lda     $03E3,x                         ; AC9B BD E3 03                 ...
        cmp     #$00                            ; AC9E C9 00                    ..
        bne     TextUiSystem_Branch_ACA5        ; ACA0 D0 03                    ..
        dex                                     ; ACA2 CA                       .
        bpl     TextUiSystem_Branch_AC9B        ; ACA3 10 F6                    ..
TextUiSystem_Branch_ACA5:
        ldy     #$09                            ; ACA5 A0 09                    ..
TextUiSystem_Branch_ACA7:
        inx                                     ; ACA7 E8                       .
        lda     $ACB9,y                         ; ACA8 B9 B9 AC                 ...
        sta     $03E3,x                         ; ACAB 9D E3 03                 ...
        dey                                     ; ACAE 88                       .
        bpl     TextUiSystem_Branch_ACA7        ; ACAF 10 F6                    ..
        stx     $03FF                           ; ACB1 8E FF 03                 ...
        lda     #$0B                            ; ACB4 A9 0B                    ..
        jmp     TextUiSystem_Branch_BAD2        ; ACB6 4C D2 BA                 L..
; ----------------------------------------------------------------------------
        db   $40,$0F,$16,$0C,$1F,$19,$28,$00 ; ACB9 40 0F 16 0C 1F 19 28 00  @.....(.
        db   $1D,$6A                         ; ACC1 1D 6A                    .j
; ----------------------------------------------------------------------------
TextUiSystem_Entry_ACC3:
        ldy     $F3                             ; ACC3 A4 F3                    ..
        lda     $07B0,y                         ; ACC5 B9 B0 07                 ...
        and     #$07                            ; ACC8 29 07                    ).
        clc                                     ; ACCA 18                       .
        adc     #$02                            ; ACCB 69 02                    i.
        jmp     TextUiSystem_Entry_98D2         ; ACCD 4C D2 98                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_ACD0:
        jsr     TextUiSystem_Entry_BC43         ; ACD0 20 43 BC                  C.
        sta     $03DB                           ; ACD3 8D DB 03                 ...
        jsr     TextUiSystem_Entry_BA44         ; ACD6 20 44 BA                  D.
        jsr     TextUiSystem_Entry_BA6D         ; ACD9 20 6D BA                  m.
        jmp     TextUiSystem_Branch_BCF3        ; ACDC 4C F3 BC                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_ACDF:
        lda     #$FF                            ; ACDF A9 FF                    ..
        sta     $72                             ; ACE1 85 72                    .r
        sta     $73                             ; ACE3 85 73                    .s
        sta     $74                             ; ACE5 85 74                    .t
        sta     $75                             ; ACE7 85 75                    .u
        ldy     $F3                             ; ACE9 A4 F3                    ..
        ldx     $07B0,y                         ; ACEB BE B0 07                 ...
        stx     $03DB                           ; ACEE 8E DB 03                 ...
        bmi     TextUiSystem_Branch_ACF6        ; ACF1 30 03                    0.
        brk                                     ; ACF3 00                       .
        db   $2A,$53                         ; ACF4 2A 53                    *S
; ----------------------------------------------------------------------------
TextUiSystem_Branch_ACF6:
        iny                                     ; ACF6 C8                       .
        iny                                     ; ACF7 C8                       .
        tya                                     ; ACF8 98                       .
        jsr     TextUiSystem_Entry_BA6D         ; ACF9 20 6D BA                  m.
        jmp     TextUiSystem_Branch_BCF3        ; ACFC 4C F3 BC                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_ACFF:
        lda     $F3                             ; ACFF A5 F3                    ..
        clc                                     ; AD01 18                       .
        adc     #$05                            ; AD02 69 05                    i.
        sta     $03DD                           ; AD04 8D DD 03                 ...
        jmp     TextUiSystem_Branch_BC6D        ; AD07 4C 6D BC                 Lm.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AD0A:
        brk                                     ; AD0A 00                       .
        db   $4D,$33                         ; AD0B 4D 33                    M3
; ----------------------------------------------------------------------------
        jmp     TextUiSystem_Branch_BABD        ; AD0D 4C BD BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AD10:
        ldy     #$01                            ; AD10 A0 01                    ..
        lda     ($EE),y                         ; AD12 B1 EE                    ..
        and     #$03                            ; AD14 29 03                    ).
        cmp     #$01                            ; AD16 C9 01                    ..
        beq     TextUiSystem_Branch_AD29        ; AD18 F0 0F                    ..
        lda     $F3                             ; AD1A A5 F3                    ..
        asl     a                               ; AD1C 0A                       .
        tax                                     ; AD1D AA                       .
        lda     $F4                             ; AD1E A5 F4                    ..
        and     #$10                            ; AD20 29 10                    ).
        bne     TextUiSystem_Branch_AD25        ; AD22 D0 01                    ..
        inx                                     ; AD24 E8                       .
TextUiSystem_Branch_AD25:
        txa                                     ; AD25 8A                       .
        jmp     TextUiSystem_Branch_BABD        ; AD26 4C BD BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_AD29:
        lda     $F3                             ; AD29 A5 F3                    ..
        jmp     TextUiSystem_Branch_BABD        ; AD2B 4C BD BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AD2E:
        jsr     TextUiSystem_Entry_98FE         ; AD2E 20 FE 98                  ..
        lda     $F3                             ; AD31 A5 F3                    ..
        sta     $03DB                           ; AD33 8D DB 03                 ...
        jsr     TextUiSystem_Entry_BA44         ; AD36 20 44 BA                  D.
        jsr     TextUiSystem_Entry_BA6D         ; AD39 20 6D BA                  m.
        ldx     $F7                             ; AD3C A6 F7                    ..
        ldy     $AD47,x                         ; AD3E BC 47 AD                 .G.
        jsr     TextUiSystem_Entry_BD05         ; AD41 20 05 BD                  ..
        jmp     TextUiSystem_Entry_98B3         ; AD44 4C B3 98                 L..
; ----------------------------------------------------------------------------
        db   $01,$00,$03                     ; AD47 01 00 03                 ...
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AD4A:
        lda     $F3                             ; AD4A A5 F3                    ..
        sta     $03DB                           ; AD4C 8D DB 03                 ...
        jsr     TextUiSystem_Entry_BA44         ; AD4F 20 44 BA                  D.
        jsr     TextUiSystem_Entry_BA7B         ; AD52 20 7B BA                  {.
        jmp     TextUiSystem_Branch_BCF6        ; AD55 4C F6 BC                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AD58:
        jmp     TextUiSystem_Branch_BBB9        ; AD58 4C B9 BB                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AD5B:
        jmp     TextUiSystem_Branch_BBC1        ; AD5B 4C C1 BB                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AD5E:
        jmp     TextUiSystem_Branch_BBFD        ; AD5E 4C FD BB                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AD61:
        lda     $F3                             ; AD61 A5 F3                    ..
        sta     $03DB                           ; AD63 8D DB 03                 ...
        jsr     TextUiSystem_Entry_BA44         ; AD66 20 44 BA                  D.
        ldy     #$00                            ; AD69 A0 00                    ..
TextUiSystem_Branch_AD6B:
        lda     $72,y                           ; AD6B B9 72 00                 .r.
        jsr     TextUiSystem_Entry_98D2         ; AD6E 20 D2 98                  ..
        inc     $F2                             ; AD71 E6 F2                    ..
        iny                                     ; AD73 C8                       .
        cpy     #$04                            ; AD74 C0 04                    ..
        bne     TextUiSystem_Branch_AD6B        ; AD76 D0 F3                    ..
        ldy     #$03                            ; AD78 A0 03                    ..
TextUiSystem_Branch_AD7A:
        jsr     TextUiSystem_Entry_BD05         ; AD7A 20 05 BD                  ..
        cmp     #$00                            ; AD7D C9 00                    ..
        bne     TextUiSystem_Branch_AD84        ; AD7F D0 03                    ..
        dey                                     ; AD81 88                       .
        bpl     TextUiSystem_Branch_AD7A        ; AD82 10 F6                    ..
TextUiSystem_Branch_AD84:
        jmp     TextUiSystem_Entry_98D2         ; AD84 4C D2 98                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AD87:
        ldx     $F3                             ; AD87 A6 F3                    ..
        lda     $07BD,x                         ; AD89 BD BD 07                 ...
        sta     $00                           ; AD8C 85 00                    ..
        brk                                     ; AD8E 00                       .
        db   $03,$5F                         ; AD8F 03 5F                    ._
; ----------------------------------------------------------------------------
        ldx     #$02                            ; AD91 A2 02                    ..
TextUiSystem_Branch_AD93:
        lda     $00,x                         ; AD93 B5 00                    ..
        sta     $72,x                           ; AD95 95 72                    .r
        dex                                     ; AD97 CA                       .
        bpl     TextUiSystem_Branch_AD93        ; AD98 10 F9                    ..
        lda     $03C6                           ; AD9A AD C6 03                 ...
        beq     TextUiSystem_Branch_ADC4        ; AD9D F0 25                    .%
        brk                                     ; AD9F 00                       .
        db   $04,$5F                         ; ADA0 04 5F                    ._
; ----------------------------------------------------------------------------
        sta     $00                           ; ADA2 85 00                    ..
        lda     #$00                            ; ADA4 A9 00                    ..
        sta     $01                             ; ADA6 85 01                    ..
        ldy     #$00                            ; ADA8 A0 00                    ..
        ldx     #$72                            ; ADAA A2 72                    .r
        brk                                     ; ADAC 00                       .
        db   $12,$3F                         ; ADAD 12 3F                    .?
; ----------------------------------------------------------------------------
        lda     $6E11                           ; ADAF AD 11 6E                 ..n
        ora     $6E12                           ; ADB2 0D 12 6E                 ..n
        ora     $6E13                           ; ADB5 0D 13 6E                 ..n
        beq     TextUiSystem_Branch_ADC4        ; ADB8 F0 0A                    ..
        inc     $72                             ; ADBA E6 72                    .r
        bne     TextUiSystem_Branch_ADC4        ; ADBC D0 06                    ..
        inc     $73                             ; ADBE E6 73                    .s
        bne     TextUiSystem_Branch_ADC4        ; ADC0 D0 02                    ..
        inc     $74                             ; ADC2 E6 74                    .t
TextUiSystem_Branch_ADC4:
        lda     #$0D                            ; ADC4 A9 0D                    ..
        jsr     TextUiSystem_Entry_BD41         ; ADC6 20 41 BD                  A.
        jmp     TextUiSystem_Entry_BB81         ; ADC9 4C 81 BB                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_ADCC:
        ldy     $F3                             ; ADCC A4 F3                    ..
        ldx     $07B0,y                         ; ADCE BE B0 07                 ...
        stx     $03DB                           ; ADD1 8E DB 03                 ...
        jsr     TextUiSystem_Entry_BA78         ; ADD4 20 78 BA                  x.
        jmp     TextUiSystem_Branch_BCF6        ; ADD7 4C F6 BC                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_ADDA:
        lda     $F3                             ; ADDA A5 F3                    ..
        sta     $03DB                           ; ADDC 8D DB 03                 ...
        jsr     TextUiSystem_Entry_BA44         ; ADDF 20 44 BA                  D.
        jsr     TextUiSystem_Entry_BA6D         ; ADE2 20 6D BA                  m.
        jmp     TextUiSystem_Branch_BCF6        ; ADE5 4C F6 BC                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_ADE8:
        lda     #$08                            ; ADE8 A9 08                    ..
        sta     $03DD                           ; ADEA 8D DD 03                 ...
        jmp     TextUiSystem_Branch_BC6D        ; ADED 4C 6D BC                 Lm.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_ADF0:
        lda     $F7                             ; ADF0 A5 F7                    ..
        sta     $72                             ; ADF2 85 72                    .r
        lda     #$00                            ; ADF4 A9 00                    ..
        sta     $73                             ; ADF6 85 73                    .s
        sta     $74                             ; ADF8 85 74                    .t
        jsr     TextUiSystem_Entry_BD41         ; ADFA 20 41 BD                  A.
        jmp     TextUiSystem_Entry_BB75         ; ADFD 4C 75 BB                 Lu.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AE00:
        lda     $03DC                           ; AE00 AD DC 03                 ...
        jmp     TextUiSystem_Entry_BA29         ; AE03 4C 29 BA                 L).
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AE06:
        ldy     $F3                             ; AE06 A4 F3                    ..
        ldx     $F7                             ; AE08 A6 F7                    ..
        lda     $07B5                           ; AE0A AD B5 07                 ...
        beq     TextUiSystem_Branch_AE1A        ; AE0D F0 0B                    ..
        brk                                     ; AE0F 00                       .
        db   $2D,$53                         ; AE10 2D 53                    -S
; ----------------------------------------------------------------------------
        cmp     #$05                            ; AE12 C9 05                    ..
        bcc     TextUiSystem_Branch_AE1A        ; AE14 90 04                    ..
        iny                                     ; AE16 C8                       .
        iny                                     ; AE17 C8                       .
        iny                                     ; AE18 C8                       .
        iny                                     ; AE19 C8                       .
TextUiSystem_Branch_AE1A:
        tya                                     ; AE1A 98                       .
        jsr     TextUiSystem_Entry_BEE8         ; AE1B 20 E8 BE                  ..
        bcs     TextUiSystem_Branch_AE28        ; AE1E B0 08                    ..
        brk                                     ; AE20 00                       .
        db   $2C,$73                         ; AE21 2C 73                    ,s
; ----------------------------------------------------------------------------
        sta     $03DC                           ; AE23 8D DC 03                 ...
        bcs     TextUiSystem_Branch_AE2D        ; AE26 B0 05                    ..
TextUiSystem_Branch_AE28:
        lda     #$FF                            ; AE28 A9 FF                    ..
        jmp     TextUiSystem_Entry_BAAE         ; AE2A 4C AE BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_AE2D:
        and     #$7F                            ; AE2D 29 7F                    ).
        jmp     TextUiSystem_Entry_BAAE         ; AE2F 4C AE BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AE32:
        lda     $F5                             ; AE32 A5 F5                    ..
        and     #$04                            ; AE34 29 04                    ).
        beq     TextUiSystem_Branch_AE4F        ; AE36 F0 17                    ..
        ldy     $F3                             ; AE38 A4 F3                    ..
        ldx     $AE50,y                         ; AE3A BE 50 AE                 .P.
        ldy     #$16                            ; AE3D A0 16                    ..
TextUiSystem_Branch_AE3F:
        lda     DialogueWindowText,x            ; AE3F BD AA 06                 ...
        jsr     TextUiSystem_Entry_98D2         ; AE42 20 D2 98                  ..
        lda     $06C0,x                         ; AE45 BD C0 06                 ...
        jsr     TextUiSystem_Entry_98B3         ; AE48 20 B3 98                  ..
        inx                                     ; AE4B E8                       .
        dey                                     ; AE4C 88                       .
        bne     TextUiSystem_Branch_AE3F        ; AE4D D0 F0                    ..
TextUiSystem_Branch_AE4F:
        rts                                     ; AE4F 60                       `
; ----------------------------------------------------------------------------
        db   $00,$2C,$58,$84                 ; AE50 00 2C 58 84              .,X.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AE54:
        lda     $F5                             ; AE54 A5 F5                    ..
        and     #$04                            ; AE56 29 04                    ).
        beq     TextUiSystem_Branch_AE71        ; AE58 F0 17                    ..
        ldy     $F3                             ; AE5A A4 F3                    ..
        ldx     $AE72,y                         ; AE5C BE 72 AE                 .r.
        ldy     #$18                            ; AE5F A0 18                    ..
TextUiSystem_Branch_AE61:
        lda     DialogueWindowText,x            ; AE61 BD AA 06                 ...
        jsr     TextUiSystem_Entry_98D2         ; AE64 20 D2 98                  ..
        lda     $06C2,x                         ; AE67 BD C2 06                 ...
        jsr     TextUiSystem_Entry_98B3         ; AE6A 20 B3 98                  ..
        inx                                     ; AE6D E8                       .
        dey                                     ; AE6E 88                       .
        bne     TextUiSystem_Branch_AE61        ; AE6F D0 F0                    ..
TextUiSystem_Branch_AE71:
        rts                                     ; AE71 60                       `
; ----------------------------------------------------------------------------
        db   $00,$30,$60,$90                 ; AE72 00 30 60 90              .0`.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AE76:
        brk                                     ; AE76 00                       .
        db   $4D,$33                         ; AE77 4D 33                    M3
; ----------------------------------------------------------------------------
        clc                                     ; AE79 18                       .
        adc     #$13                            ; AE7A 69 13                    i.
        ldx     #$07                            ; AE7C A2 07                    ..
        brk                                     ; AE7E 00                       .
        db   $04,$B7                         ; AE7F 04 B7                    ..
; ----------------------------------------------------------------------------
        ldx     #$00                            ; AE81 A2 00                    ..
TextUiSystem_Branch_AE83:
        lda     $03E3,x                         ; AE83 BD E3 03                 ...
        jsr     TextUiSystem_Entry_98D2         ; AE86 20 D2 98                  ..
        lda     $03E7,x                         ; AE89 BD E7 03                 ...
        jsr     TextUiSystem_Entry_98B3         ; AE8C 20 B3 98                  ..
        inx                                     ; AE8F E8                       .
        cpx     #$04                            ; AE90 E0 04                    ..
        bne     TextUiSystem_Branch_AE83        ; AE92 D0 EF                    ..
        rts                                     ; AE94 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AE95:
        brk                                     ; AE95 00                       .
        db   $4D,$33                         ; AE96 4D 33                    M3
; ----------------------------------------------------------------------------
        tay                                     ; AE98 A8                       .
        ldx     $AEAF,y                         ; AE99 BE AF AE                 ...
TextUiSystem_Branch_AE9C:
        lda     $AEB5,x                         ; AE9C BD B5 AE                 ...
        cmp     #$FF                            ; AE9F C9 FF                    ..
        beq     TextUiSystem_Branch_AEAE        ; AEA1 F0 0B                    ..
        jsr     TextUiSystem_Entry_98D2         ; AEA3 20 D2 98                  ..
        lda     #$00                            ; AEA6 A9 00                    ..
        jsr     TextUiSystem_Entry_98B3         ; AEA8 20 B3 98                  ..
        inx                                     ; AEAB E8                       .
        bne     TextUiSystem_Branch_AE9C        ; AEAC D0 EE                    ..
TextUiSystem_Branch_AEAE:
        rts                                     ; AEAE 60                       `
; ----------------------------------------------------------------------------
        db   $09,$09,$00,$00,$09,$05         ; AEAF 09 09 00 00 09 05        ......
        db   $1D,$13,$20,$0F,$FF,$00,$00,$31 ; AEB5 1D 13 20 0F FF 00 00 31  .. ....1
        db   $34,$FF                         ; AEBD 34 FF                    4.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AEBF:
        ldx     $07B3                           ; AEBF AE B3 07                 ...
        lda     $03DD                           ; AEC2 AD DD 03                 ...
        bne     TextUiSystem_Branch_AEDD        ; AEC5 D0 16                    ..
        lda     #$08                            ; AEC7 A9 08                    ..
        sta     $00                           ; AEC9 85 00                    ..
        ldy     #$08                            ; AECB A0 08                    ..
TextUiSystem_Branch_AECD:
        lda     #$FF                            ; AECD A9 FF                    ..
        jsr     TextUiSystem_Entry_98B3         ; AECF 20 B3 98                  ..
        lda     $00                           ; AED2 A5 00                    ..
        jsr     TextUiSystem_Entry_98B3         ; AED4 20 B3 98                  ..
        dec     $00                           ; AED7 C6 00                    ..
        dey                                     ; AED9 88                       .
        bne     TextUiSystem_Branch_AECD        ; AEDA D0 F1                    ..
        rts                                     ; AEDC 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_AEDD:
        cmp     #$08                            ; AEDD C9 08                    ..
        beq     $AEDC                           ; AEDF F0 FB                    ..
        dex                                     ; AEE1 CA                       .
        bmi     TextUiSystem_Branch_AEEC        ; AEE2 30 08                    0.
        lda     #$FF                            ; AEE4 A9 FF                    ..
        jsr     TextUiSystem_Entry_98B3         ; AEE6 20 B3 98                  ..
        jmp     TextUiSystem_Branch_AEDD        ; AEE9 4C DD AE                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_AEEC:
        ldx     $03DD                           ; AEEC AE DD 03                 ...
        ldy     $AEFB,x                         ; AEEF BC FB AE                 ...
TextUiSystem_Branch_AEF2:
        lda     #$00                            ; AEF2 A9 00                    ..
        jsr     TextUiSystem_Entry_98B3         ; AEF4 20 B3 98                  ..
        dey                                     ; AEF7 88                       .
        bne     TextUiSystem_Branch_AEF2        ; AEF8 D0 F8                    ..
        rts                                     ; AEFA 60                       `
; ----------------------------------------------------------------------------
        db   $00,$02,$03,$04,$05,$00,$00     ; AEFB 00 02 03 04 05 00 00     .......
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AF02:
        lda     $07B0                           ; AF02 AD B0 07                 ...
        sta     $00                           ; AF05 85 00                    ..
        lda     $07B1                           ; AF07 AD B1 07                 ...
        sta     $01                             ; AF0A 85 01                    ..
        lda     #$00                            ; AF0C A9 00                    ..
        ldx     $F3                             ; AF0E A6 F3                    ..
TextUiSystem_Branch_AF10:
        dex                                     ; AF10 CA                       .
        bmi     TextUiSystem_Branch_AF1A        ; AF11 30 07                    0.
        clc                                     ; AF13 18                       .
        adc     $07B2                           ; AF14 6D B2 07                 m..
        jmp     TextUiSystem_Branch_AF10        ; AF17 4C 10 AF                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_AF1A:
        tay                                     ; AF1A A8                       .
        lda     $03DD                           ; AF1B AD DD 03                 ...
        bne     TextUiSystem_Branch_AF4A        ; AF1E D0 2A                    .*
        lda     $F3                             ; AF20 A5 F3                    ..
        bne     TextUiSystem_Branch_AF4A        ; AF22 D0 26                    .&
        lda     $07B5                           ; AF24 AD B5 07                 ...
        sta     $00                           ; AF27 85 00                    ..
        lda     $07B6                           ; AF29 AD B6 07                 ...
        sta     $01                             ; AF2C 85 01                    ..
        ldy     #$00                            ; AF2E A0 00                    ..
        lda     ($00),y                       ; AF30 B1 00                    ..
        sta     $00                           ; AF32 85 00                    ..
        ldy     #$08                            ; AF34 A0 08                    ..
TextUiSystem_Branch_AF36:
        lda     #$00                            ; AF36 A9 00                    ..
        jsr     TextUiSystem_Entry_98B3         ; AF38 20 B3 98                  ..
        lda     #$01                            ; AF3B A9 01                    ..
        asl     $00                           ; AF3D 06 00                    ..
        bcc     TextUiSystem_Branch_AF43        ; AF3F 90 02                    ..
        lda     #$02                            ; AF41 A9 02                    ..
TextUiSystem_Branch_AF43:
        jsr     TextUiSystem_Entry_98B3         ; AF43 20 B3 98                  ..
        dey                                     ; AF46 88                       .
        bne     TextUiSystem_Branch_AF36        ; AF47 D0 ED                    ..
        rts                                     ; AF49 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_AF4A:
        ldx     $07B2                           ; AF4A AE B2 07                 ...
        lda     ($00),y                       ; AF4D B1 00                    ..
        jsr     TextUiSystem_Entry_98B3         ; AF4F 20 B3 98                  ..
        iny                                     ; AF52 C8                       .
        dex                                     ; AF53 CA                       .
        bne     $AF4D                           ; AF54 D0 F7                    ..
        rts                                     ; AF56 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AF57:
        lda     $F3                             ; AF57 A5 F3                    ..
        sta     $03DB                           ; AF59 8D DB 03                 ...
        jsr     TextUiSystem_Entry_BA44         ; AF5C 20 44 BA                  D.
        jsr     TextUiSystem_Entry_BA6D         ; AF5F 20 6D BA                  m.
        jmp     TextUiSystem_Branch_BCF3        ; AF62 4C F3 BC                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AF65:
        lda     $F3                             ; AF65 A5 F3                    ..
        sta     $03DB                           ; AF67 8D DB 03                 ...
        jsr     TextUiSystem_Entry_BA44         ; AF6A 20 44 BA                  D.
        jmp     TextUiSystem_Entry_BA78         ; AF6D 4C 78 BA                 Lx.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AF70:
        lda     #$05                            ; AF70 A9 05                    ..
        sta     $03DC                           ; AF72 8D DC 03                 ...
        jmp     TextUiSystem_Branch_ABF9        ; AF75 4C F9 AB                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AF78:
        lda     $07B2                           ; AF78 AD B2 07                 ...
        beq     TextUiSystem_Branch_AF7E        ; AF7B F0 01                    ..
        rts                                     ; AF7D 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_AF7E:
        ldx     $07B0                           ; AF7E AE B0 07                 ...
        brk                                     ; AF81 00                       .
        db   $2B,$53                         ; AF82 2B 53                    +S
; ----------------------------------------------------------------------------
        tax                                     ; AF84 AA                       .
        lda     $07B1                           ; AF85 AD B1 07                 ...
        bmi     $AF8F                           ; AF88 30 05                    0.
        brk                                     ; AF8A 00                       .
        db   $0A,$0F                         ; AF8B 0A 0F                    ..
; ----------------------------------------------------------------------------
        bcc     TextUiSystem_Branch_AFD3        ; AF8D 90 44                    .D
        ldx     $07B0                           ; AF8F AE B0 07                 ...
        brk                                     ; AF92 00                       .
        db   $10,$53                         ; AF93 10 53                    .S
; ----------------------------------------------------------------------------
TextUiSystem_Branch_AF95:
        lda     $07B1                           ; AF95 AD B1 07                 ...
        bmi     $AFA6                           ; AF98 30 0C                    0.
        brk                                     ; AF9A 00                       .
        db   $13,$0F                         ; AF9B 13 0F                    ..
; ----------------------------------------------------------------------------
        clc                                     ; AF9D 18                       .
        adc     $72                             ; AF9E 65 72                    er
        sta     $72                             ; AFA0 85 72                    .r
        bcc     $AFA6                           ; AFA2 90 02                    ..
        inc     $73                             ; AFA4 E6 73                    .s
        lda     #$00                            ; AFA6 A9 00                    ..
        bit     $73                             ; AFA8 24 73                    $s
        bpl     $AFB0                           ; AFAA 10 04                    ..
        sta     $72                             ; AFAC 85 72                    .r
        sta     $73                             ; AFAE 85 73                    .s
        sta     $74                             ; AFB0 85 74                    .t
        jsr     TextUiSystem_Entry_BD41         ; AFB2 20 41 BD                  A.
        ldy     #$03                            ; AFB5 A0 03                    ..
        lda     #$00                            ; AFB7 A9 00                    ..
        jsr     TextUiSystem_Entry_98B3         ; AFB9 20 B3 98                  ..
        dey                                     ; AFBC 88                       .
        bpl     $AFB7                           ; AFBD 10 F8                    ..
        lda     $00                           ; AFBF A5 00                    ..
        jsr     TextUiSystem_Entry_98B3         ; AFC1 20 B3 98                  ..
        lda     $01                             ; AFC4 A5 01                    ..
        jsr     TextUiSystem_Entry_98B3         ; AFC6 20 B3 98                  ..
        lda     #$80                            ; AFC9 A9 80                    ..
        jsr     TextUiSystem_Entry_98D2         ; AFCB 20 D2 98                  ..
        lda     $02                             ; AFCE A5 02                    ..
        jmp     TextUiSystem_Entry_98B3         ; AFD0 4C B3 98                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_AFD3:
        lda     #$1A                            ; AFD3 A9 1A                    ..
        jmp     TextUiSystem_Branch_BACA        ; AFD5 4C CA BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_AFD8:
        lda     $07B2                           ; AFD8 AD B2 07                 ...
        beq     TextUiSystem_Branch_B013        ; AFDB F0 36                    .6
        ldx     $07B0                           ; AFDD AE B0 07                 ...
        brk                                     ; AFE0 00                       .
        db   $2B,$53                         ; AFE1 2B 53                    +S
; ----------------------------------------------------------------------------
        tax                                     ; AFE3 AA                       .
        lda     $07B1                           ; AFE4 AD B1 07                 ...
        bmi     TextUiSystem_Branch_AFEE        ; AFE7 30 05                    0.
        brk                                     ; AFE9 00                       .
        db   $0A,$0F                         ; AFEA 0A 0F                    ..
; ----------------------------------------------------------------------------
        bcc     TextUiSystem_Branch_AFD3        ; AFEC 90 E5                    ..
TextUiSystem_Branch_AFEE:
        lda     #$00                            ; AFEE A9 00                    ..
        sta     $00                           ; AFF0 85 00                    ..
        ldx     $07B0                           ; AFF2 AE B0 07                 ...
        lda     $07B2                           ; AFF5 AD B2 07                 ...
        brk                                     ; AFF8 00                       .
        db   $3B,$73                         ; AFF9 3B 73                    ;s
; ----------------------------------------------------------------------------
        bcc     TextUiSystem_Branch_B002        ; AFFB 90 05                    ..
        brk                                     ; AFFD 00                       .
        db   $13,$0F                         ; AFFE 13 0F                    ..
; ----------------------------------------------------------------------------
        sta     $00                           ; B000 85 00                    ..
TextUiSystem_Branch_B002:
        brk                                     ; B002 00                       .
        db   $1B,$53                         ; B003 1B 53                    .S
; ----------------------------------------------------------------------------
        lda     $72                             ; B005 A5 72                    .r
        sec                                     ; B007 38                       8
        sbc     $00                           ; B008 E5 00                    ..
        sta     $72                             ; B00A 85 72                    .r
        bcs     TextUiSystem_Branch_B010        ; B00C B0 02                    ..
        dec     $73                             ; B00E C6 73                    .s
TextUiSystem_Branch_B010:
        jmp     TextUiSystem_Branch_AF95        ; B010 4C 95 AF                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_B013:
        rts                                     ; B013 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B014:
        ldx     #$79                            ; B014 A2 79                    .y
        jsr     TextUiSystem_Entry_BFA6         ; B016 20 A6 BF                  ..
        bcc     TextUiSystem_Branch_B01D        ; B019 90 02                    ..
        ldx     #$60                            ; B01B A2 60                    .`
TextUiSystem_Branch_B01D:
        txa                                     ; B01D 8A                       .
        jmp     TextUiSystem_Entry_BE97         ; B01E 4C 97 BE                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B021:
        lda     $F7                             ; B021 A5 F7                    ..
        sta     $03DB                           ; B023 8D DB 03                 ...
        jsr     TextUiSystem_Entry_BA64         ; B026 20 64 BA                  d.
        ldx     #$00                            ; B029 A2 00                    ..
TextUiSystem_Branch_B02B:
        lda     $03E3,x                         ; B02B BD E3 03                 ...
        jsr     TextUiSystem_Entry_98B3         ; B02E 20 B3 98                  ..
        inx                                     ; B031 E8                       .
        cpx     #$08                            ; B032 E0 08                    ..
        bne     TextUiSystem_Branch_B02B        ; B034 D0 F5                    ..
        rts                                     ; B036 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B037:
        lda     #$23                            ; B037 A9 23                    .#
        jmp     TextUiSystem_Branch_BAC2        ; B039 4C C2 BA                 L..
; ----------------------------------------------------------------------------
Bank16_PrimaryCommandData:
        db   $27,$33,$31,$31,$25,$32,$28,$38 ; B03C 27 33 31 31 25 32 28 38  '311%2(8
        db   $25,$30,$2F,$37,$34,$29,$30,$30 ; B044 25 30 2F 37 34 29 30 30  %0/74)00
        db   $37,$38,$25,$38,$39,$37,$2D,$38 ; B04C 37 38 25 38 39 37 2D 38  78%897-8
        db   $29,$31,$29,$35,$39,$2D,$34,$37 ; B054 29 31 29 35 39 2D 34 37  )1)59-47
        db   $29,$25,$36,$27,$2C,$28,$33,$33 ; B05C 29 25 36 27 2C 28 33 33  )%6',(33
        db   $36,$38,$25,$27,$38,$2D,$27,$37 ; B064 36 38 25 27 38 2D 27 37  68%'8-'7
        db   $2D,$32,$2A,$33,$27,$33,$32,$28 ; B06C 2D 32 2A 33 27 33 32 28  -2*3'32(
        db   $2D,$38,$2D,$33,$32,$2B,$82,$37 ; B074 2D 38 2D 33 32 2B 82 37  -8-32+.7
        db   $29,$3C,$71,$84,$30,$29,$3A,$29 ; B07C 29 3C 71 84 30 29 3A 29  )<q.0):)
        db   $30,$71,$00,$85,$2C,$34,$71,$8E ; B084 30 71 00 85 2C 34 71 8E  0q..,4q.
        db   $31,$34,$71,$8E,$37,$38,$36,$29 ; B08C 31 34 71 8E 37 38 36 29  14q.786)
        db   $32,$2B,$38,$2C,$71,$8D,$25,$2B ; B094 32 2B 38 2C 71 8D 25 2B  2+8,q.%+
        db   $2D,$30,$2D,$38,$3D,$71,$8E,$3A ; B09C 2D 30 2D 38 3D 71 8E 3A  -0-8=q.:
        db   $2D,$38,$25,$30,$2D,$38,$3D,$71 ; B0A4 2D 38 25 30 2D 38 3D 71  -8%0-8=q
        db   $8E,$2D,$32,$38,$29,$30,$30,$2D ; B0AC 8E 2D 32 38 29 30 30 2D  .-28)00-
        db   $2B,$29,$32,$27,$29,$71,$8E,$30 ; B0B4 2B 29 32 27 29 71 8E 30  +)2')q.0
        db   $39,$27,$2F,$71,$8E,$31,$25,$3C ; B0BC 39 27 2F 71 8E 31 25 3C  9'/q.1%<
        db   $00,$2C,$34,$71,$B0,$31,$25,$3C ; B0C4 00 2C 34 71 B0 31 25 3C  .,4q.1%<
        db   $00,$31,$34,$71,$8E,$E6,$00,$34 ; B0CC 00 31 34 71 8E E6 00 34  .14q...4
        db   $33,$3B,$29,$36,$71,$90,$DC,$00 ; B0D4 33 3B 29 36 71 90 DC 00  3;)6q...
        db   $34,$33,$3B,$29,$36,$71,$8E,$29 ; B0DC 34 33 3B 29 36 71 8E 29  43;)6q.)
        db   $3C,$34,$71,$8E,$26,$25,$38,$38 ; B0E4 3C 34 71 8E 26 25 38 38  <4q.&%88
        db   $30,$29,$6F,$37,$34,$29,$30,$30 ; B0EC 30 29 6F 37 34 29 30 30  0)o74)00
        db   $37,$2C,$34,$6F,$31,$34         ; B0F4 37 2C 34 6F 31 34        7,4o14
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B0FA:
        inc     $00                           ; B0FA E6 00                    ..
        db   $34,$33,$3B,$29,$36,$DC,$00,$34 ; B0FC 34 33 3B 29 36 DC 00 34  43;)6..4
        db   $33,$3B,$29,$36,$25,$6F,$28,$00 ; B104 33 3B 29 36 25 6F 28 00  3;)6%o(.
        db   $34,$33,$3B,$29,$36,$37,$28,$33 ; B10C 34 33 3B 29 36 37 28 33  43;)67(3
        db   $39,$37,$29,$25,$34,$34,$36,$25 ; B114 39 37 29 25 34 34 36 25  97)%446%
        db   $2D,$37,$29,$38,$36,$25,$32,$37 ; B11C 2D 37 29 38 36 25 32 37  -7)86%27
        db   $2A,$29,$36,$28,$2D,$37,$27,$25 ; B124 2A 29 36 28 2D 37 27 25  *)6(-7'%
        db   $36,$28,$38,$33,$3B,$2C,$29,$36 ; B12C 36 28 38 33 3B 2C 29 36  6(83;,)6
        db   $29,$28,$29,$2A,$29,$32,$37,$29 ; B134 29 28 29 2A 29 32 37 29  )()*)27)
        db   $00,$3D,$29,$37,$32,$33,$EB,$E5 ; B13C 00 3D 29 37 32 33 EB E5  .=)723..
        db   $37,$EB,$BE,$29,$32,$28,$2A,$2D ; B144 37 EB BE 29 32 28 2A 2D  7..)2(*-
        db   $2B,$2C,$38,$36,$39,$32,$31,$29 ; B14C 2B 2C 38 36 39 32 31 29  +,86921)
        db   $31,$26,$29,$36,$25,$38,$38,$25 ; B154 31 26 29 36 25 38 38 25  1&)6%88%
        db   $27,$2F,$34,$25,$36,$36,$3D,$94 ; B15C 27 2F 34 25 36 36 3D 94  '/4%66=.
        db   $00,$00,$95,$3B,$2C,$33,$3B,$2C ; B164 00 00 95 3B 2C 33 3B 2C  ...;,3;,
        db   $29,$36,$29,$27,$2C,$25,$32,$2B ; B16C 29 36 29 27 2C 25 32 2B  )6)',%2+
        db   $29,$00,$26,$39,$3D,$37,$29,$30 ; B174 29 00 26 39 3D 37 29 30  ).&9=7)0
        db   $30,$30,$29,$25,$3A,$29,$34,$2D ; B17C 30 30 29 25 3A 29 34 2D  00)%:)4-
        db   $27,$2F,$00,$39,$34,$28,$29,$38 ; B184 27 2F 00 39 34 28 29 38  '/.94()8
        db   $33,$3C,$2D,$27,$25,$38,$29,$39 ; B18C 33 3C 2D 27 25 38 29 39  3<-'%8)9
        db   $32,$27,$39,$36,$37,$29,$36,$29 ; B194 32 27 39 36 37 29 36 29  2'967)6)
        db   $3A,$2D,$3A,$29,$37,$25,$3A,$29 ; B19C 3A 2D 3A 29 37 25 3A 29  :-:)7%:)
        db   $2B,$33,$30,$28,$2D,$32,$2A,$33 ; B1A4 2B 33 30 28 2D 32 2A 33  +30(-2*3
        db   $36,$31,$86,$01,$01,$01,$29,$3C ; B1AC 36 31 86 01 01 01 29 3C  61....)<
        db   $2D,$38,$25,$32,$28,$00,$E9,$EB ; B1B4 2D 38 25 32 28 00 E9 EB  -8%2(...
        db   $33,$36,$28,$29,$36             ; B1BC 33 36 28 29 36           36()6
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B1C1:
        lda     $F7                             ; B1C1 A5 F7                    ..
        asl     a                               ; B1C3 0A                       .
        asl     a                               ; B1C4 0A                       .
        asl     a                               ; B1C5 0A                       .
        asl     a                               ; B1C6 0A                       .
        sta     $03DC                           ; B1C7 8D DC 03                 ...
        inc     $03DC                           ; B1CA EE DC 03                 ...
        lda     $F3                             ; B1CD A5 F3                    ..
        clc                                     ; B1CF 18                       .
        adc     #$05                            ; B1D0 69 05                    i.
        sta     $03DD                           ; B1D2 8D DD 03                 ...
        jmp     TextUiSystem_Branch_BC6D        ; B1D5 4C 6D BC                 Lm.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B1D8:
        ldx     $03DC                           ; B1D8 AE DC 03                 ...
        lda     $B1E8,x                         ; B1DB BD E8 B1                 ...
        clc                                     ; B1DE 18                       .
        adc     $F3                             ; B1DF 65 F3                    e.
        tax                                     ; B1E1 AA                       .
        lda     $B1F0,x                         ; B1E2 BD F0 B1                 ...
        jmp     TextUiSystem_Entry_BE97         ; B1E5 4C 97 BE                 L..
; ----------------------------------------------------------------------------
        db   $00,$04,$04,$04,$04,$04,$04,$01 ; B1E8 00 04 04 04 04 04 04 01  ........
        db   $0E,$0C,$0D,$10,$0C,$0D,$0E,$0F ; B1F0 0E 0C 0D 10 0C 0D 0E 0F  ........
        db   $10                             ; B1F8 10                       .
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B1F9:
        lda     #$1B                            ; B1F9 A9 1B                    ..
        jsr     TextUiSystem_Entry_BE97         ; B1FB 20 97 BE                  ..
        lda     #$00                            ; B1FE A9 00                    ..
        jsr     TextUiSystem_Entry_98B3         ; B200 20 B3 98                  ..
        ldx     $F3                             ; B203 A6 F3                    ..
        lda     $B232,x                         ; B205 BD 32 B2                 .2.
        clc                                     ; B208 18                       .
        adc     $03DC                           ; B209 6D DC 03                 m..
        tax                                     ; B20C AA                       .
        lda     $B234,x                         ; B20D BD 34 B2                 .4.
        tax                                     ; B210 AA                       .
        clc                                     ; B211 18                       .
        adc     #$02                            ; B212 69 02                    i.
        jsr     TextUiSystem_Entry_98B3         ; B214 20 B3 98                  ..
        lda     $03C6                           ; B217 AD C6 03                 ...
        beq     TextUiSystem_Branch_B231        ; B21A F0 15                    ..
        lda     #$71                            ; B21C A9 71                    .q
        jsr     TextUiSystem_Entry_98B3         ; B21E 20 B3 98                  ..
        ldy     #$00                            ; B221 A0 00                    ..
        jsr     TextUiSystem_Entry_B747         ; B223 20 47 B7                  G.
        ldx     #$04                            ; B226 A2 04                    ..
TextUiSystem_Branch_B228:
        lda     ($00),y                       ; B228 B1 00                    ..
        jsr     TextUiSystem_Entry_98B3         ; B22A 20 B3 98                  ..
        iny                                     ; B22D C8                       .
        dex                                     ; B22E CA                       .
        bne     TextUiSystem_Branch_B228        ; B22F D0 F7                    ..
TextUiSystem_Branch_B231:
        rts                                     ; B231 60                       `
; ----------------------------------------------------------------------------
        db   $00,$07                         ; B232 00 07                    ..
        db   $0E,$00,$01,$00,$02,$00,$01,$00 ; B234 0E 00 01 00 02 00 01 00  ........
        db   $00,$00,$01,$00,$02,$02,$01,$00 ; B23C 00 00 01 00 02 02 01 00  ........
        db   $00,$00,$00,$00,$00,$02         ; B244 00 00 00 00 00 02        ......
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B24A:
        lda     $F3                             ; B24A A5 F3                    ..
        jmp     TextUiSystem_Branch_BAA9        ; B24C 4C A9 BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B24F:
        jsr     TextUiSystem_Entry_BA0E         ; B24F 20 0E BA                  ..
        sta     $03DC                           ; B252 8D DC 03                 ...
        lda     $F7                             ; B255 A5 F7                    ..
        jsr     TextUiSystem_Entry_BEFA         ; B257 20 FA BE                  ..
        bcs     TextUiSystem_Branch_B270        ; B25A B0 14                    ..
        tax                                     ; B25C AA                       .
        lda     $B275,x                         ; B25D BD 75 B2                 .u.
        clc                                     ; B260 18                       .
        adc     $03DC                           ; B261 6D DC 03                 m..
        sta     $6F                             ; B264 85 6F                    .o
        ldx     $F7                             ; B266 A6 F7                    ..
        brk                                     ; B268 00                       .
        db   $3F,$53                         ; B269 3F 53                    ?S
; ----------------------------------------------------------------------------
        bcc     TextUiSystem_Branch_B270        ; B26B 90 03                    ..
        jmp     TextUiSystem_Entry_BA9F         ; B26D 4C 9F BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_B270:
        lda     #$FF                            ; B270 A9 FF                    ..
        jmp     TextUiSystem_Entry_BA9F         ; B272 4C 9F BA                 L..
; ----------------------------------------------------------------------------
        db   $00,$06,$0C                     ; B275 00 06 0C                 ...
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B278:
        lda     $F7                             ; B278 A5 F7                    ..
        jsr     TextUiSystem_Entry_BEFA         ; B27A 20 FA BE                  ..
        bcs     TextUiSystem_Branch_B29D        ; B27D B0 1E                    ..
        sta     $01                             ; B27F 85 01                    ..
        ldy     $02                             ; B281 A4 02                    ..
        lda     $B2A3,y                         ; B283 B9 A3 B2                 ...
        beq     TextUiSystem_Branch_B29D        ; B286 F0 15                    ..
        sta     $02                             ; B288 85 02                    ..
        ldy     #$FF                            ; B28A A0 FF                    ..
TextUiSystem_Branch_B28C:
        iny                                     ; B28C C8                       .
        lda     #$78                            ; B28D A9 78                    .x
        cpy     $01                             ; B28F C4 01                    ..
        bne     TextUiSystem_Branch_B295        ; B291 D0 02                    ..
        lda     #$70                            ; B293 A9 70                    .p
TextUiSystem_Branch_B295:
        jsr     TextUiSystem_Entry_98B3         ; B295 20 B3 98                  ..
        cpy     $02                             ; B298 C4 02                    ..
        bne     TextUiSystem_Branch_B28C        ; B29A D0 F0                    ..
        rts                                     ; B29C 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_B29D:
        dec     $F2                             ; B29D C6 F2                    ..
        lda     #$85                            ; B29F A9 85                    ..
LB2A3 = $+ 2
        jmp     TextUiSystem_Entry_98B3         ; B2A1 4C B3 98                 L..
; ----------------------------------------------------------------------------
        db   $00,$00,$01,$00,$01,$01,$02     ; B2A4 00 00 01 00 01 01 02     .......
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B2AB:
        ldx     $F3                             ; B2AB A6 F3                    ..
        lda     $6E45,x                         ; B2AD BD 45 6E                 .En
        ldx     #$04                            ; B2B0 A2 04                    ..
        brk                                     ; B2B2 00                       .
        db   $04,$B7                         ; B2B3 04 B7                    ..
; ----------------------------------------------------------------------------
        pha                                     ; B2B5 48                       H
        jsr     TextUiSystem_Entry_B2DA         ; B2B6 20 DA B2                  ..
        bcs     TextUiSystem_Branch_B2D3        ; B2B9 B0 18                    ..
        ldx     $03FF                           ; B2BB AE FF 03                 ...
        pha                                     ; B2BE 48                       H
        lda     #$65                            ; B2BF A9 65                    .e
        sta     $03E3,x                         ; B2C1 9D E3 03                 ...
        pla                                     ; B2C4 68                       h
        sta     $03E4,x                         ; B2C5 9D E4 03                 ...
        lda     #$40                            ; B2C8 A9 40                    .@
        sta     $03E5,x                         ; B2CA 9D E5 03                 ...
        inc     $03FF                           ; B2CD EE FF 03                 ...
        inc     $03FF                           ; B2D0 EE FF 03                 ...
TextUiSystem_Branch_B2D3:
        pla                                     ; B2D3 68                       h
        clc                                     ; B2D4 18                       .
        adc     #$02                            ; B2D5 69 02                    i.
        jmp     TextUiSystem_Branch_BAD2        ; B2D7 4C D2 BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B2DA:
        ldx     $F3                             ; B2DA A6 F3                    ..
        lda     $6E45,x                         ; B2DC BD 45 6E                 .En
        ldy     #$00                            ; B2DF A0 00                    ..
        ldx     #$03                            ; B2E1 A2 03                    ..
TextUiSystem_Branch_B2E3:
        cmp     $6E45,x                         ; B2E3 DD 45 6E                 .En
        bne     TextUiSystem_Branch_B2E9        ; B2E6 D0 01                    ..
        iny                                     ; B2E8 C8                       .
TextUiSystem_Branch_B2E9:
        dex                                     ; B2E9 CA                       .
        bpl     TextUiSystem_Branch_B2E3        ; B2EA 10 F7                    ..
        cpy     #$01                            ; B2EC C0 01                    ..
        beq     TextUiSystem_Branch_B303        ; B2EE F0 13                    ..
        ldy     #$25                            ; B2F0 A0 25                    .%
        ldx     $F3                             ; B2F2 A6 F3                    ..
        jmp     TextUiSystem_Branch_B2FD        ; B2F4 4C FD B2                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_B2F7:
        cmp     $6E45,x                         ; B2F7 DD 45 6E                 .En
        bne     TextUiSystem_Branch_B2FD        ; B2FA D0 01                    ..
        iny                                     ; B2FC C8                       .
TextUiSystem_Branch_B2FD:
        dex                                     ; B2FD CA                       .
        bpl     TextUiSystem_Branch_B2F7        ; B2FE 10 F7                    ..
        tya                                     ; B300 98                       .
        clc                                     ; B301 18                       .
        rts                                     ; B302 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_B303:
        lda     #$00                            ; B303 A9 00                    ..
        sec                                     ; B305 38                       8
        rts                                     ; B306 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B307:
        lda     #$70                            ; B307 A9 70                    .p
        jsr     TextUiSystem_Entry_98FB         ; B309 20 FB 98                  ..
        jsr     TextUiSystem_Entry_B337         ; B30C 20 37 B3                  7.
        ldy     $F3                             ; B30F A4 F3                    ..
        lda     ($00),y                       ; B311 B1 00                    ..
        sta     $72                             ; B313 85 72                    .r
        lda     #$00                            ; B315 A9 00                    ..
        sta     $73                             ; B317 85 73                    .s
        sta     $74                             ; B319 85 74                    .t
        jsr     TextUiSystem_Entry_BD41         ; B31B 20 41 BD                  A.
        jsr     TextUiSystem_Entry_BB81         ; B31E 20 81 BB                  ..
        lda     #$78                            ; B321 A9 78                    .x
        jsr     TextUiSystem_Entry_98FB         ; B323 20 FB 98                  ..
        jsr     TextUiSystem_Entry_B337         ; B326 20 37 B3                  7.
        lda     $F3                             ; B329 A5 F3                    ..
        clc                                     ; B32B 18                       .
        adc     #$04                            ; B32C 69 04                    i.
        tay                                     ; B32E A8                       .
        lda     ($00),y                       ; B32F B1 00                    ..
        clc                                     ; B331 18                       .
        adc     #$01                            ; B332 69 01                    i.
        jmp     TextUiSystem_Entry_98FB         ; B334 4C FB 98                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B337:
        lda     $07B5                           ; B337 AD B5 07                 ...
        sta     $00                           ; B33A 85 00                    ..
        lda     $07B6                           ; B33C AD B6 07                 ...
        sta     $01                             ; B33F 85 01                    ..
        rts                                     ; B341 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B342:
        lda     #$19                            ; B342 A9 19                    ..
        jsr     TextUiSystem_Entry_BE97         ; B344 20 97 BE                  ..
        ldy     #$03                            ; B347 A0 03                    ..
        ldx     $F7                             ; B349 A6 F7                    ..
        jsr     TextUiSystem_Entry_B747         ; B34B 20 47 B7                  G.
        pha                                     ; B34E 48                       H
        clc                                     ; B34F 18                       .
        adc     #$02                            ; B350 69 02                    i.
        jsr     TextUiSystem_Entry_98B3         ; B352 20 B3 98                  ..
        jsr     TextUiSystem_Entry_98FE         ; B355 20 FE 98                  ..
        jsr     TextUiSystem_Entry_98FE         ; B358 20 FE 98                  ..
        pla                                     ; B35B 68                       h
        cmp     #$04                            ; B35C C9 04                    ..
        beq     TextUiSystem_Branch_B367        ; B35E F0 07                    ..
        tax                                     ; B360 AA                       .
        lda     Bank16_SecondaryCommandLookupA,x; B361 BD 7B B3                 .{.
        jmp     TextUiSystem_Branch_BACA        ; B364 4C CA BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_B367:
        ldy     #$00                            ; B367 A0 00                    ..
        ldx     $F7                             ; B369 A6 F7                    ..
        jsr     TextUiSystem_Entry_B747         ; B36B 20 47 B7                  G.
        ldy     #$00                            ; B36E A0 00                    ..
TextUiSystem_Branch_B370:
        lda     ($00),y                       ; B370 B1 00                    ..
        jsr     TextUiSystem_Entry_98B3         ; B372 20 B3 98                  ..
        iny                                     ; B375 C8                       .
        cpy     #$08                            ; B376 C0 08                    ..
        bne     TextUiSystem_Branch_B370        ; B378 D0 F6                    ..
        rts                                     ; B37A 60                       `
; ----------------------------------------------------------------------------
Bank16_SecondaryCommandLookupA:
        db   $05,$06,$04,$02                 ; B37B 05 06 04 02              ....
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B37F:
        ldy     #$03                            ; B37F A0 03                    ..
        ldx     $F7                             ; B381 A6 F7                    ..
        jsr     TextUiSystem_Entry_B747         ; B383 20 47 B7                  G.
        tax                                     ; B386 AA                       .
        lda     Bank16_SecondaryCommandLookupB,x; B387 BD A3 B3                 ...
        sta     $04                             ; B38A 85 04                    ..
        ldy     #$01                            ; B38C A0 01                    ..
        ldx     $F7                             ; B38E A6 F7                    ..
        jsr     TextUiSystem_Entry_B747         ; B390 20 47 B7                  G.
        sta     $72                             ; B393 85 72                    .r
        lda     #$00                            ; B395 A9 00                    ..
        sta     $73                             ; B397 85 73                    .s
        sta     $74                             ; B399 85 74                    .t
        lda     #$0A                            ; B39B A9 0A                    ..
        jsr     TextUiSystem_Entry_BD41         ; B39D 20 41 BD                  A.
        jmp     TextUiSystem_Entry_BB75         ; B3A0 4C 75 BB                 Lu.
; ----------------------------------------------------------------------------
Bank16_SecondaryCommandLookupB:
        db   $06,$07,$05,$03,$00             ; B3A3 06 07 05 03 00           .....
Bank16_SecondaryCommandData:
        db   $1D,$1A,$0F,$0F,$0E,$00,$23,$19 ; B3A8 1D 1A 0F 0F 0E 00 23 19  ......#.
        db   $1F,$00,$16,$13,$15,$0F,$78,$00 ; B3B0 1F 00 16 13 15 0F 78 00  ......x.
        db   $25,$00,$35,$39,$29,$37,$38,$27 ; B3B8 25 00 35 39 29 37 38 27  %.59)78'
        db   $33,$32,$38,$2D,$32,$39,$29,$8B ; B3C0 33 32 38 2D 32 39 29 8B  328-29).
        db   $27,$2C,$25,$32,$2B,$29,$00,$31 ; B3C8 27 2C 25 32 2B 29 00 31  ',%2+).1
        db   $29,$37,$37,$25,$2B,$29,$00,$37 ; B3D0 29 37 37 25 2B 29 00 37  )77%+).7
        db   $34,$29,$29,$28,$26,$29,$2B,$2D ; B3D8 34 29 29 28 26 29 2B 2D  4))(&)+-
        db   $32,$00,$25,$00,$32,$29,$3B,$00 ; B3E0 32 00 25 00 32 29 3B 00  2.%.2);.
        db   $35,$39,$29,$37,$38,$27,$33,$34 ; B3E8 35 39 29 37 38 27 33 34  59)78'34
        db   $3D,$8B,$29,$36,$25,$37,$29,$8B ; B3F0 3D 8B 29 36 25 37 29 8B  =.)6%7).
        db   $32,$25,$31,$29                 ; B3F8 32 25 31 29              2%1)
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B3FC:
        plp                                     ; B3FC 28                       (
        ora     $2300,y                         ; B3FD 19 00 23                 ..#
        ora     $1F,y                           ; B400 19 1F 00                 ...
        and     ($0B,x)                         ; B403 21 0B                    !.
        clc                                     ; B405 18                       .
        asl     $1E00,x                         ; B406 1E 00 1E                 ...
        ora     $1C0F,y                         ; B409 19 0F 1C                 ...
        db   $0B,$1D,$0F,$00,$1E,$12,$13,$1D ; B40C 0B 1D 0F 00 1E 12 13 1D  ........
        db   $1B,$1F,$0F,$1D,$1E,$6D,$37,$0F ; B414 1B 1F 0F 1D 1E 6D 37 0F  .....m7.
        db   $16,$0F,$0D,$1E,$00,$1E,$12,$0F ; B41C 16 0F 0D 1E 00 1E 12 0F  ........
        db   $00,$17,$0F,$1D,$1D,$0B,$11,$0F ; B424 00 17 0F 1D 1D 0B 11 0F  ........
        db   $00,$02,$00,$03,$00,$04,$00,$05 ; B42C 00 02 00 03 00 04 00 05  ........
        db   $00,$06,$00,$07,$00,$08,$00,$09 ; B434 00 06 00 07 00 08 00 09  ........
        db   $2A,$0B,$1D,$1E,$00,$00,$00,$00 ; B43C 2A 0B 1D 1E 00 00 00 00  *.......
        db   $00,$00,$00,$00,$37,$16,$19,$21 ; B444 00 00 00 00 37 16 19 21  ....7..!
        db   $00,$27,$12,$0B,$1A,$1E,$0F,$1C ; B44C 00 27 12 0B 1A 1E 0F 1C  .'......
        db   $00,$30,$29,$3A,$29,$30,$00,$00 ; B454 00 30 29 3A 29 30 00 00  .0):)0..
        db   $89,$25,$28,$3A,$29,$32,$38,$39 ; B45C 89 25 28 3A 29 32 38 39  .%(:)289
        db   $36,$29,$00,$30,$33,$2B,$2A,$2D ; B464 36 29 00 30 33 2B 2A 2D  6).03+*-
        db   $2B,$2C,$38,$38,$25,$27,$38,$2D ; B46C 2B 2C 38 38 25 27 38 2D  +,88%'8-
        db   $27,$37,$31,$29,$31,$26,$29,$36 ; B474 27 37 31 29 31 26 29 36  '71)1&)6
        db   $36,$39,$32,$37,$34,$29,$30,$30 ; B47C 36 39 32 37 34 29 30 30  69274)00
        db   $2D,$38,$29,$31,$25,$38,$38,$25 ; B484 2D 38 29 31 25 38 38 25  -8)1%88%
        db   $27,$2F,$34,$25,$36,$36,$3D,$27 ; B48C 27 2F 34 25 36 36 3D 27  '/4%66='
        db   $00,$01,$01,$01,$01,$01,$01,$37 ; B494 00 01 01 01 01 01 01 37  .......7
        db   $29,$29,$00,$A0,$37,$37,$29,$29 ; B49C 29 29 00 A0 37 37 29 29  ))..77))
        db   $00,$A1,$37,$37,$3B,$2D,$38,$27 ; B4A4 00 A1 37 37 3B 2D 38 27  ..77;-8'
        db   $2C,$36,$29,$31,$33,$3A,$29,$25 ; B4AC 2C 36 29 31 33 3A 29 25  ,6)13:)%
        db   $28                             ; B4B4 28                       (
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B4B5:
        plp                                     ; B4B5 28                       (
        lda     #$00                            ; B4B6 A9 00                    ..
        sta     $03DD                           ; B4B8 8D DD 03                 ...
        brk                                     ; B4BB 00                       .
        db   $62,$33                         ; B4BC 62 33                    b3
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B4BE:
        rts                                     ; B4BE 60                       `
; ----------------------------------------------------------------------------
        db   $A9,$08,$8D,$DD,$03,$00,$62,$23 ; B4BF A9 08 8D DD 03 00 62 23  ......b#
        db   $08                             ; B4C7 08                       .
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B4C8:
        rts                                     ; B4C8 60                       `
; ----------------------------------------------------------------------------
        db   $A9,$80,$8D,$DD,$03,$00,$62,$23 ; B4C9 A9 80 8D DD 03 00 62 23  ......b#
        db   $80                             ; B4D1 80                       .
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B4D2:
        rts                                     ; B4D2 60                       `
; ----------------------------------------------------------------------------
        db   $A9,$40,$8D,$DD,$03,$00,$62,$23 ; B4D3 A9 40 8D DD 03 00 62 23  .@....b#
        db   $40                             ; B4DB 40                       @
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B4DC:
        rts                                     ; B4DC 60                       `
; ----------------------------------------------------------------------------
        db   $00,$62,$23,$40,$8D,$D2,$03,$C5 ; B4DD 00 62 23 40 8D D2 03 C5  .b#@....
        db   $F7,$90,$05,$F0,$03,$CE,$D2,$03 ; B4E5 F7 90 05 F0 03 CE D2 03  ........
        db   $A2,$00,$A0,$00,$E4,$F7,$D0,$01 ; B4ED A2 00 A0 00 E4 F7 D0 01  ........
        db   $E8,$8A,$99,$B0,$07,$E8,$C8,$C0 ; B4F5 E8 8A 99 B0 07 E8 C8 C0  ........
        db   $04,$D0,$F1,$AD,$D2,$03         ; B4FD 04 D0 F1 AD D2 03        ......
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B503:
        rts                                     ; B503 60                       `
; ----------------------------------------------------------------------------
        lda     #$00                            ; B504 A9 00                    ..
        sta     $03DC                           ; B506 8D DC 03                 ...
        ldx     $F7                             ; B509 A6 F7                    ..
        brk                                     ; B50B 00                       .
        db   $3E,$53                         ; B50C 3E 53                    >S
; ----------------------------------------------------------------------------
        sta     $03DD                           ; B50E 8D DD 03                 ...
        lda     #$07                            ; B511 A9 07                    ..
TextUiSystem_Entry_B513:
        rts                                     ; B513 60                       `
; ----------------------------------------------------------------------------
        lda     #$04                            ; B514 A9 04                    ..
TextUiSystem_Entry_B516:
        rts                                     ; B516 60                       `
; ----------------------------------------------------------------------------
        db   $A6,$F7,$A9,$02,$85,$6F,$A0,$00 ; B517 A6 F7 A9 02 85 6F A0 00  .....o..
        db   $00,$3C,$53,$F0,$01,$C8,$C6,$6F ; B51F 00 3C 53 F0 01 C8 C6 6F  .<S....o
        db   $10,$F6,$98,$8D,$DC,$03,$0A,$18 ; B527 10 F6 98 8D DC 03 0A 18  ........
        db   $6D,$DC,$03,$A0,$01,$8C,$DC,$03 ; B52F 6D DC 03 A0 01 8C DC 03  m.......
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B537:
        rts                                     ; B537 60                       `
; ----------------------------------------------------------------------------
        lda     #$05                            ; B538 A9 05                    ..
TextUiSystem_Entry_B53A:
        rts                                     ; B53A 60                       `
; ----------------------------------------------------------------------------
        db   $A9,$08                         ; B53B A9 08                    ..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B53D:
        rts                                     ; B53D 60                       `
; ----------------------------------------------------------------------------
        db   $A9,$00,$A6,$F7,$00,$47,$73,$A5 ; B53E A9 00 A6 F7 00 47 73 A5  .....Gs.
        db   $75                             ; B546 75                       u
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B547:
        rts                                     ; B547 60                       `
; ----------------------------------------------------------------------------
        lda     #$00                            ; B548 A9 00                    ..
        sta     $6F                             ; B54A 85 6F                    .o
        jsr     TextUiSystem_Entry_BCEB         ; B54C 20 EB BC                  ..
        tay                                     ; B54F A8                       .
        lda     $ABC3,y                         ; B550 B9 C3 AB                 ...
        ldx     $F7                             ; B553 A6 F7                    ..
        brk                                     ; B555 00                       .
        db   $00,$13                         ; B556 00 13                    ..
; ----------------------------------------------------------------------------
        lda     $75                             ; B558 A5 75                    .u
TextUiSystem_Entry_B55A:
        rts                                     ; B55A 60                       `
; ----------------------------------------------------------------------------
        db   $A0,$FF,$C8,$B9,$B0,$07,$C9,$FF ; B55B A0 FF C8 B9 B0 07 C9 FF  ........
        db   $F0,$04,$C0,$03,$D0,$F4,$8C,$D2 ; B563 F0 04 C0 03 D0 F4 8C D2  ........
        db   $03,$20,$8E,$BF,$38,$ED,$D2,$03 ; B56B 03 20 8E BF 38 ED D2 03  . ..8...
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B573:
        rts                                     ; B573 60                       `
; ----------------------------------------------------------------------------
        db   $20,$EB,$BC,$A8,$C0,$04,$F0,$0A ; B574 20 EB BC A8 C0 04 F0 0A   .......
        db   $A9,$FF,$99,$B0,$07,$C8,$C0,$04 ; B57C A9 FF 99 B0 07 C8 C0 04  ........
        db   $D0,$F8,$20,$8E,$BF,$C9,$05,$90 ; B584 D0 F8 20 8E BF C9 05 90  .. .....
        db   $02,$A9,$04                     ; B58C 02 A9 04                 ...
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B58F:
        rts                                     ; B58F 60                       `
; ----------------------------------------------------------------------------
        db   $A0,$01,$B1,$EE,$29,$03,$AA,$BD ; B590 A0 01 B1 EE 29 03 AA BD  ....)...
        db   $9A,$B5,$60,$06,$03             ; B598 9A B5 60 06 03           ..`..
; ----------------------------------------------------------------------------
        lda     #$03                            ; B59D A9 03                    ..
        ldx     $6BDE                           ; B59F AE DE 6B                 ..k
        bpl     TextUiSystem_Entry_B5B1         ; B5A2 10 0D                    ..
        ldx     $6E45                           ; B5A4 AE 45 6E                 .En
        cpx     #$AE                            ; B5A7 E0 AE                    ..
        beq     TextUiSystem_Branch_B5AF        ; B5A9 F0 04                    ..
        cpx     #$BC                            ; B5AB E0 BC                    ..
        bne     TextUiSystem_Entry_B5B1         ; B5AD D0 02                    ..
TextUiSystem_Branch_B5AF:
        lda     #$02                            ; B5AF A9 02                    ..
TextUiSystem_Entry_B5B1:
        rts                                     ; B5B1 60                       `
; ----------------------------------------------------------------------------
        db   $A2,$FF,$00,$29,$C3,$0E,$8D,$DA ; B5B2 A2 FF 00 29 C3 0E 8D DA  ...)....
        db   $03,$A9,$00,$8D,$DB,$03,$8D,$DC ; B5BA 03 A9 00 8D DB 03 8D DC  ........
        db   $03,$AD,$DC,$03,$85,$7C,$A2,$FF ; B5C2 03 AD DC 03 85 7C A2 FF  .....|..
        db   $00,$2D,$B3,$2D,$DA,$03,$F0,$3B ; B5CA 00 2D B3 2D DA 03 F0 3B  .-.-...;
        db   $A8,$AE,$DC,$03,$00,$29,$C3,$0C ; B5D2 A8 AE DC 03 00 29 C3 0C  .....)..
        db   $90,$13,$85,$6F,$00,$67,$33,$0A ; B5DA 90 13 85 6F 00 67 33 0A  ...o.g3.
        db   $0A,$0A,$09,$80,$AE,$DB,$03,$9D ; B5E2 0A 0A 09 80 AE DB 03 9D  ........
        db   $B0,$07,$4C,$0A,$B6,$AE,$DB,$03 ; B5EA B0 07 4C 0A B6 AE DB 03  ..L.....
        db   $AD,$DC,$03,$0A,$0A,$0A,$9D,$B0 ; B5F2 AD DC 03 0A 0A 0A 9D B0  ........
        db   $07,$98,$A0,$08,$4A,$90,$03,$FE ; B5FA 07 98 A0 08 4A 90 03 FE  ....J...
        db   $B0,$07,$88,$D0,$F7,$DE,$B0,$07 ; B602 B0 07 88 D0 F7 DE B0 07  ........
        db   $EE,$DB,$03,$EE,$DC,$03,$AD,$DC ; B60A EE DB 03 EE DC 03 AD DC  ........
        db   $03,$C9,$04,$D0,$AC,$AD,$DB,$03 ; B612 03 C9 04 D0 AC AD DB 03  ........
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B61A:
        rts                                     ; B61A 60                       `
; ----------------------------------------------------------------------------
        db   $00,$13,$1F,$A9,$00,$2A         ; B61B 00 13 1F A9 00 2A        .....*
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B621:
        rts                                     ; B621 60                       `
; ----------------------------------------------------------------------------
        db   $A9,$04                         ; B622 A9 04                    ..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B624:
        rts                                     ; B624 60                       `
; ----------------------------------------------------------------------------
        db   $A5,$F5,$29,$04,$D0,$03,$00,$00 ; B625 A5 F5 29 04 D0 03 00 00  ..).....
        db   $5F,$AD,$C4,$07                 ; B62D 5F AD C4 07              _...
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B631:
        rts                                     ; B631 60                       `
; ----------------------------------------------------------------------------
        db   $00,$06,$5F                     ; B632 00 06 5F                 .._
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B635:
        rts                                     ; B635 60                       `
; ----------------------------------------------------------------------------
        db   $A9,$02,$8D,$DC,$03,$A6,$F7,$00 ; B636 A9 02 8D DC 03 A6 F7 00  ........
        db   $3E,$53                         ; B63E 3E 53                    >S
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B640:
        rts                                     ; B640 60                       `
; ----------------------------------------------------------------------------
        db   $A6,$F7,$00,$2B,$53,$AA,$A9,$01 ; B641 A6 F7 00 2B 53 AA A9 01  ...+S...
        db   $E0,$05,$F0,$02,$A9,$00         ; B649 E0 05 F0 02 A9 00        ......
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B64F:
        rts                                     ; B64F 60                       `
; ----------------------------------------------------------------------------
        lda     #$04                            ; B650 A9 04                    ..
TextUiSystem_Entry_B652:
        rts                                     ; B652 60                       `
; ----------------------------------------------------------------------------
        lda     $03C6                           ; B653 AD C6 03                 ...
        sta     $03DD                           ; B656 8D DD 03                 ...
        asl     a                               ; B659 0A                       .
        tax                                     ; B65A AA                       .
        lda     $B687,x                         ; B65B BD 87 B6                 ...
        sta     $00                           ; B65E 85 00                    ..
        lda     $B688,x                         ; B660 BD 88 B6                 ...
        sta     $01                             ; B663 85 01                    ..
        ldy     #$00                            ; B665 A0 00                    ..
        lda     ($00),y                       ; B667 B1 00                    ..
        sta     $07B2                           ; B669 8D B2 07                 ...
        iny                                     ; B66C C8                       .
        lda     ($00),y                       ; B66D B1 00                    ..
        sta     $07B3                           ; B66F 8D B3 07                 ...
        iny                                     ; B672 C8                       .
        lda     ($00),y                       ; B673 B1 00                    ..
        pha                                     ; B675 48                       H
        lda     $00                           ; B676 A5 00                    ..
        clc                                     ; B678 18                       .
        adc     #$03                            ; B679 69 03                    i.
        sta     $07B0                           ; B67B 8D B0 07                 ...
        lda     $01                             ; B67E A5 01                    ..
        adc     #$00                            ; B680 69 00                    i.
        sta     $07B1                           ; B682 8D B1 07                 ...
        pla                                     ; B685 68                       h
        rts                                     ; B686 60                       `
; ----------------------------------------------------------------------------
        db   $20                             ; B687 20
        db   $B7,$20,$B7,$20,$B7,$20,$B7,$20 ; B688 B7 20 B7 20 B7 20 B7 20  . . . .
        db   $B7,$99,$B6,$99,$B6,$99,$B6,$99 ; B690 B7 99 B6 99 B6 99 B6 99  ........
        db   $B6,$16,$07,$06,$00,$25,$00,$26 ; B698 B6 16 07 06 00 25 00 26  .....%.&
        db   $00,$27,$00,$28,$00,$29,$00,$2A ; B6A0 00 27 00 28 00 29 00 2A  .'.(.).*
        db   $00,$2B,$00,$2C,$00,$2D,$00,$2E ; B6A8 00 2B 00 2C 00 2D 00 2E  .+.,.-..
        db   $00,$2F,$00,$30,$00,$31,$00,$32 ; B6B0 00 2F 00 30 00 31 00 32  ./.0.1.2
        db   $00,$33,$00,$34,$00,$35,$00,$36 ; B6B8 00 33 00 34 00 35 00 36  .3.4.5.6
        db   $00,$37,$00,$38,$00,$39,$00,$3A ; B6C0 00 37 00 38 00 39 00 3A  .7.8.9.:
        db   $00,$3B,$00,$3C,$00,$3D,$00,$3E ; B6C8 00 3B 00 3C 00 3D 00 3E  .;.<.=.>
        db   $00,$65,$00,$6A,$00,$6E,$00,$6D ; B6D0 00 65 00 6A 00 6E 00 6D  .e.j.n.m
        db   $00,$75,$00,$76,$00,$00,$00,$0B ; B6D8 00 75 00 76 00 00 00 0B  .u.v....
        db   $00,$0C,$00,$0D,$00,$0E,$00,$0F ; B6E0 00 0C 00 0D 00 0E 00 0F  ........
        db   $00,$10,$00,$11,$00,$12,$00,$13 ; B6E8 00 10 00 11 00 12 00 13  ........
        db   $00,$14,$00,$15,$00,$16,$00,$17 ; B6F0 00 14 00 15 00 16 00 17  ........
        db   $00,$18,$00,$19,$00,$1A,$00,$1B ; B6F8 00 18 00 19 00 1A 00 1B  ........
        db   $00,$1C,$00,$1D,$00,$1E,$00,$1F ; B700 00 1C 00 1D 00 1E 00 1F  ........
        db   $00,$20,$00,$21,$00,$22,$00,$23 ; B708 00 20 00 21 00 22 00 23  . .!.".#
        db   $00,$24,$00,$77,$00,$78,$00,$00 ; B710 00 24 00 77 00 78 00 00  .$.w.x..
        db   $00,$28,$29,$30,$00,$29,$32     ; B718 00 28 29 30 00 29 32     .()0.)2
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B71F:
        plp                                     ; B71F 28                       (
        ldx     $F7                             ; B720 A6 F7                    ..
        brk                                     ; B722 00                       .
        db   $2D,$53                         ; B723 2D 53                    -S
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B725:
        rts                                     ; B725 60                       `
; ----------------------------------------------------------------------------
        db   $A5,$F5,$09,$20,$85,$F5         ; B726 A5 F5 09 20 85 F5        ... ..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B72C:
        rts                                     ; B72C 60                       `
; ----------------------------------------------------------------------------
        db   $A5,$F5,$29,$84,$D0,$03,$00,$86 ; B72D A5 F5 29 84 D0 03 00 86  ..).....
        db   $FB                             ; B735 FB                       .
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B736:
        rts                                     ; B736 60                       `
; ----------------------------------------------------------------------------
        lda     $07B0                           ; B737 AD B0 07                 ...
        sta     $03DB                           ; B73A 8D DB 03                 ...
TextUiSystem_Entry_B73D:
        rts                                     ; B73D 60                       `
; ----------------------------------------------------------------------------
        lda     $07B4                           ; B73E AD B4 07                 ...
        and     #$FB                            ; B741 29 FB                    ).
        sta     $07B4                           ; B743 8D B4 07                 ...
        rts                                     ; B746 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B747:
        brk                                     ; B747 00                       .
        db   $25,$2F                         ; B748 25 2F                    %/
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B74A:
        rts                                     ; B74A 60                       `
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_B78C         ; B74B 20 8C B7                  ..
        sta     $03DC                           ; B74E 8D DC 03                 ...
        lda     $B755,x                         ; B751 BD 55 B7                 .U.
        rts                                     ; B754 60                       `
; ----------------------------------------------------------------------------
        db   $01,$05,$05,$05,$05,$05,$05,$03 ; B755 01 05 05 05 05 05 05 03  ........
        db   $AD,$B7,$07,$4C,$56             ; B75D AD B7 07 4C 56           ...LV
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B762:
        ldx     $AE,y                           ; B762 B6 AE                    ..
        bcs     TextUiSystem_Branch_B76D        ; B764 B0 07                    ..
        bmi     TextUiSystem_Branch_B770        ; B766 30 08                    0.
        jsr     TextUiSystem_Entry_BFA6         ; B768 20 A6 BF                  ..
        bcc     TextUiSystem_Branch_B770        ; B76B 90 03                    ..
TextUiSystem_Branch_B76D:
        lda     #$01                            ; B76D A9 01                    ..
        rts                                     ; B76F 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_B770:
        lda     #$00                            ; B770 A9 00                    ..
TextUiSystem_Entry_B772:
        rts                                     ; B772 60                       `
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_B78C         ; B773 20 8C B7                  ..
        ldx     $03C6                           ; B776 AE C6 03                 ...
        bne     $B77D                           ; B779 D0 02                    ..
        eor     #$07                            ; B77B 49 07                    I.
        sta     $03DC                           ; B77D 8D DC 03                 ...
        tax                                     ; B780 AA                       .
        lda     $B784,x                         ; B781 BD 84 B7                 ...
        rts                                     ; B784 60                       `
; ----------------------------------------------------------------------------
        db   $01,$01,$02,$01,$02,$02,$03     ; B785 01 01 02 01 02 02 03     .......
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B78C:
        lda     #$00                            ; B78C A9 00                    ..
        tax                                     ; B78E AA                       .
        ldy     #$02                            ; B78F A0 02                    ..
        ldx     $6BEC,y                         ; B791 BE EC 6B                 ..k
        cpx     #$D6                            ; B794 E0 D6                    ..
        clc                                     ; B796 18                       .
        bne     $B79A                           ; B797 D0 01                    ..
        sec                                     ; B799 38                       8
        rol     a                               ; B79A 2A                       *
        dey                                     ; B79B 88                       .
        bpl     $B791                           ; B79C 10 F3                    ..
        tax                                     ; B79E AA                       .
TextUiSystem_Entry_B79F:
        rts                                     ; B79F 60                       `
; ----------------------------------------------------------------------------
        lda     #$02                            ; B7A0 A9 02                    ..
TextUiSystem_Entry_B7A2:
        rts                                     ; B7A2 60                       `
; ----------------------------------------------------------------------------
        db   $A9,$03                         ; B7A3 A9 03                    ..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B7A5:
        rts                                     ; B7A5 60                       `
; ----------------------------------------------------------------------------
        db   $A2,$FF,$E8,$BD,$45,$6E,$C9,$FF ; B7A6 A2 FF E8 BD 45 6E C9 FF  ....En..
        db   $F0,$05,$E0,$03,$D0,$F4,$E8,$8A ; B7AE F0 05 E0 03 D0 F4 E8 8A  ........
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B7B6:
        rts                                     ; B7B6 60                       `
; ----------------------------------------------------------------------------
        db   $A5,$F5,$09,$02,$85,$F5         ; B7B7 A5 F5 09 02 85 F5        ......
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B7BD:
        rts                                     ; B7BD 60                       `
; ----------------------------------------------------------------------------
        lda     $07B1                           ; B7BE AD B1 07                 ...
        sta     $03DC                           ; B7C1 8D DC 03                 ...
        lda     $07B0                           ; B7C4 AD B0 07                 ...
        sta     $00                           ; B7C7 85 00                    ..
        jsr     TextUiSystem_Entry_BCEB         ; B7C9 20 EB BC                  ..
        bne     $B81A                           ; B7CC D0 4C                    .L
        brk                                     ; B7CE 00                       .
        db   $62,$23,$80                     ; B7CF 62 23 80                 b#.
; ----------------------------------------------------------------------------
        sta     $01                             ; B7D2 85 01                    ..
        brk                                     ; B7D4 00                       .
        db   $62,$33                         ; B7D5 62 33                    b3
; ----------------------------------------------------------------------------
        sta     $00                           ; B7D7 85 00                    ..
        cmp     #$06                            ; B7D9 C9 06                    ..
        bcs     $B7E4                           ; B7DB B0 07                    ..
        lda     #$00                            ; B7DD A9 00                    ..
        sta     $01                             ; B7DF 85 01                    ..
        jmp     TextUiSystem_Branch_B7FB        ; B7E1 4C FB B7                 L..
; ----------------------------------------------------------------------------
        ldx     $01                             ; B7E4 A6 01                    ..
        cpx     #$06                            ; B7E6 E0 06                    ..
        bcs     TextUiSystem_Branch_B7F2        ; B7E8 B0 08                    ..
        sec                                     ; B7EA 38                       8
        sbc     $01                             ; B7EB E5 01                    ..
        sta     $00                           ; B7ED 85 00                    ..
        jmp     TextUiSystem_Branch_B7FB        ; B7EF 4C FB B7                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_B7F2:
        ldx     #$05                            ; B7F2 A2 05                    ..
        stx     $00                           ; B7F4 86 00                    ..
        sec                                     ; B7F6 38                       8
        sbc     $00                           ; B7F7 E5 00                    ..
        sta     $01                             ; B7F9 85 01                    ..
TextUiSystem_Branch_B7FB:
        lda     $00                           ; B7FB A5 00                    ..
        sta     $03DC                           ; B7FD 8D DC 03                 ...
        lda     $01                             ; B800 A5 01                    ..
        sta     $07B0                           ; B802 8D B0 07                 ...
        beq     $B81A                           ; B805 F0 13                    ..
        lda     $00                           ; B807 A5 00                    ..
        asl     a                               ; B809 0A                       .
        asl     a                               ; B80A 0A                       .
        asl     a                               ; B80B 0A                       .
        asl     a                               ; B80C 0A                       .
        ora     $01                             ; B80D 05 01                    ..
        sta     $07B1                           ; B80F 8D B1 07                 ...
        lda     $03D4                           ; B812 AD D4 03                 ...
        ora     #$10                            ; B815 09 10                    ..
        sta     $03D4                           ; B817 8D D4 03                 ...
        dec     $00                           ; B81A C6 00                    ..
        ldy     $00                           ; B81C A4 00                    ..
        lda     $B834,y                         ; B81E B9 34 B8                 .4.
        sta     $03C8                           ; B821 8D C8 03                 ...
        jsr     TextUiSystem_Entry_BCEB         ; B824 20 EB BC                  ..
        tay                                     ; B827 A8                       .
        lda     $03C9                           ; B828 AD C9 03                 ...
        and     #$0F                            ; B82B 29 0F                    ).
        ora     $B839,y                         ; B82D 19 39 B8                 .9.
        sta     $03C9                           ; B830 8D C9 03                 ...
        rts                                     ; B833 60                       `
; ----------------------------------------------------------------------------
        db   $46,$65,$94,$B3,$D2             ; B834 46 65 94 B3 D2           Fe...
        db   $20,$80                         ; B839 20 80                     .
; ----------------------------------------------------------------------------
        jsr     TextUiSystem_Entry_BCEB         ; B83B 20 EB BC                  ..
        tay                                     ; B83E A8                       .
        sta     $00                           ; B83F 85 00                    ..
        lda     $03C9                           ; B841 AD C9 03                 ...
        and     #$0F                            ; B844 29 0F                    ).
        ora     $B85E,y                         ; B846 19 5E B8                 .^.
LB84A = $+ 1
        sta     $03C9                           ; B849 8D C9 03                 ...
        brk                                     ; B84C 00                       .
        db   $62,$23,$40                     ; B84D 62 23 40                 b#@
; ----------------------------------------------------------------------------
        sta     $03DC                           ; B850 8D DC 03                 ...
        asl     a                               ; B853 0A                       .
        adc     $00                           ; B854 65 00                    e.
        tay                                     ; B856 A8                       .
        lda     $B85E,y                         ; B857 B9 5E B8                 .^.
        sta     $03C8                           ; B85A 8D C8 03                 ...
        rts                                     ; B85D 60                       `
; ----------------------------------------------------------------------------
        db   $10,$A0,$41,$4A,$61,$68,$91,$95 ; B85E 10 A0 41 4A 61 68 91 95  ..AJah..
        db   $B1,$B3,$20,$EB,$BC,$AA,$BD,$73 ; B866 B1 B3 20 EB BC AA BD 73  .. ....s
        db   $B8,$8D                         ; B86E B8 8D                    ..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_B870:
        iny                                     ; B870 C8                       .
        db   $03,$60,$68,$62,$A9,$82,$2C,$DE ; B871 03 60 68 62 A9 82 2C DE  .`hb..,.
        db   $6B,$10,$02,$A9,$87,$8D,$C8,$03 ; B879 6B 10 02 A9 87 8D C8 03  k.......
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B881:
        rts                                     ; B881 60                       `
; ----------------------------------------------------------------------------
        db   $AD,$DE,$6B,$2A,$2A,$29,$01,$AA ; B882 AD DE 6B 2A 2A 29 01 AA  ..k**)..
        db   $BD,$9C,$B8,$8D,$C8,$03,$AD,$C9 ; B88A BD 9C B8 8D C8 03 AD C9  ........
        db   $03,$29,$0F,$1D,$9E,$B8,$8D,$C9 ; B892 03 29 0F 1D 9E B8 8D C9  .)......
        db   $03,$60,$5A,$52,$30             ; B89A 03 60 5A 52 30           .`ZR0
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B89F:
        bpl     $B84A                           ; B89F 10 A9                    ..
        db   $3C,$8D,$C8,$03,$A0,$00,$AD,$45 ; B8A1 3C 8D C8 03 A0 00 AD 45  <......E
        db   $6E,$C9,$AE,$F0,$04,$C9,$BC,$D0 ; B8A9 6E C9 AE F0 04 C9 BC D0  n.......
        db   $02,$A0,$01,$AD,$C9,$03,$29,$0F ; B8B1 02 A0 01 AD C9 03 29 0F  ......).
        db   $19,$C0,$B8,$8D,$C9,$03,$60,$20 ; B8B9 19 C0 B8 8D C9 03 60 20  ......`
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B8C1:
        bpl     TextUiSystem_Branch_B870        ; B8C1 10 AD                    ..
        cmp     $A603,x                         ; B8C3 DD 03 A6                 ...
        sed                                     ; B8C6 F8                       .
        stx     $6E                             ; B8C7 86 6E                    .n
        brk                                     ; B8C9 00                       .
        db   $2D,$0F                         ; B8CA 2D 0F                    -.
; ----------------------------------------------------------------------------
        lda     $72                             ; B8CC A5 72                    .r
        sta     $F8                             ; B8CE 85 F8                    ..
TextUiSystem_Entry_B8D0:
        rts                                     ; B8D0 60                       `
; ----------------------------------------------------------------------------
        db   $A9,$80,$4C,$C5                 ; B8D1 A9 80 4C C5              ..L.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B8D5:
        clv                                     ; B8D5 B8                       .
        ldx     $F8                             ; B8D6 A6 F8                    ..
        lda     $07B0,x                         ; B8D8 BD B0 07                 ...
        sta     $F8                             ; B8DB 85 F8                    ..
TextUiSystem_Entry_B8DD:
        rts                                     ; B8DD 60                       `
; ----------------------------------------------------------------------------
        db   $AD,$B0,$07,$30,$08,$20,$A6,$BF ; B8DE AD B0 07 30 08 20 A6 BF  ...0. ..
        db   $90,$03,$20,$2C,$B9,$A5,$F5,$29 ; B8E6 90 03 20 2C B9 A5 F5 29  .. ,...)
        db   $08,$F0,$10,$A5,$F8,$C9,$F0,$B0 ; B8EE 08 F0 10 A5 F8 C9 F0 B0  ........
        db   $34,$85,$F3,$20,$43,$BC,$85,$F8 ; B8F6 34 85 F3 20 43 BC 85 F8  4.. C...
        db   $4C,$2B,$B9,$A5,$F8,$30,$1B,$A5 ; B8FE 4C 2B B9 A5 F8 30 1B A5  L+...0..
        db   $F8,$85,$F3,$20,$43,$BC,$85,$F8 ; B906 F8 85 F3 20 43 BC 85 F8  ... C...
        db   $20,$EB,$BC,$A2,$FF,$E8,$BD,$B0 ; B90E 20 EB BC A2 FF E8 BD B0   .......
        db   $07,$C9,$FF,$D0,$F8,$A5,$F8,$9D ; B916 07 C9 FF D0 F8 A5 F8 9D  ........
        db   $B0,$07,$A0,$03,$B9,$B0,$07,$99 ; B91E B0 07 A0 03 B9 B0 07 99  ........
        db   $6E,$00,$88,$10,$F7             ; B926 6E 00 88 10 F7           n....
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B92B:
        rts                                     ; B92B 60                       `
; ----------------------------------------------------------------------------
        db   $A5,$F8,$C9,$F0,$B0,$11,$AD,$CF ; B92C A5 F8 C9 F0 B0 11 AD CF  ........
        db   $03,$4D,$D3,$03,$29,$0F,$D0,$07 ; B934 03 4D D3 03 29 0F D0 07  .M..)...
        db   $A5,$F8,$18,$69,$F0,$85,$F8     ; B93C A5 F8 18 69 F0 85 F8     ...i...
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B943:
        rts                                     ; B943 60                       `
; ----------------------------------------------------------------------------
        db   $A0,$03,$B9,$B0,$07,$99,$6E,$00 ; B944 A0 03 B9 B0 07 99 6E 00  ......n.
        db   $88,$10,$F7                     ; B94C 88 10 F7                 ...
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B94F:
        rts                                     ; B94F 60                       `
; ----------------------------------------------------------------------------
        lda     $F8                             ; B950 A5 F8                    ..
        bmi     $B963                           ; B952 30 0F                    0.
        ldx     $03DC                           ; B954 AE DC 03                 ...
        lda     $B964,x                         ; B957 BD 64 B9                 .d.
        clc                                     ; B95A 18                       .
        adc     $F8                             ; B95B 65 F8                    e.
        tax                                     ; B95D AA                       .
        lda     $B96C,x                         ; B95E BD 6C B9                 .l.
        sta     $F8                             ; B961 85 F8                    ..
        rts                                     ; B963 60                       `
; ----------------------------------------------------------------------------
        db   $00,$04,$04,$04,$04,$04,$04,$01 ; B964 00 04 04 04 04 04 04 01  ........
        db   $02,$00,$01,$04,$00,$01,$02,$03 ; B96C 02 00 01 04 00 01 02 03  ........
        db   $04                             ; B974 04                       .
; ----------------------------------------------------------------------------
        lda     $F8                             ; B975 A5 F8                    ..
        bmi     TextUiSystem_Entry_B988         ; B977 30 0F                    0.
        ldx     $F8                             ; B979 A6 F8                    ..
        lda     $B232,x                         ; B97B BD 32 B2                 .2.
        clc                                     ; B97E 18                       .
        adc     $03DC                           ; B97F 6D DC 03                 m..
        tax                                     ; B982 AA                       .
        lda     $B234,x                         ; B983 BD 34 B2                 .4.
        sta     $F8                             ; B986 85 F8                    ..
TextUiSystem_Entry_B988:
        rts                                     ; B988 60                       `
; ----------------------------------------------------------------------------
        lda     #$FF                            ; B989 A9 FF                    ..
        sta     $07B1                           ; B98B 8D B1 07                 ...
        lda     $F8                             ; B98E A5 F8                    ..
        sta     $6F                             ; B990 85 6F                    .o
        jsr     TextUiSystem_Entry_BCEB         ; B992 20 EB BC                  ..
        sta     $07B2                           ; B995 8D B2 07                 ...
        tax                                     ; B998 AA                       .
        lda     $B9AC,x                         ; B999 BD AC B9                 ...
        ldx     $F7                             ; B99C A6 F7                    ..
        stx     $07B0                           ; B99E 8E B0 07                 ...
        brk                                     ; B9A1 00                       .
        db   $00,$13                         ; B9A2 00 13                    ..
; ----------------------------------------------------------------------------
        bcc     $B9AB                           ; B9A4 90 05                    ..
        and     #$7F                            ; B9A6 29 7F                    ).
        sta     $07B1                           ; B9A8 8D B1 07                 ...
        rts                                     ; B9AB 60                       `
; ----------------------------------------------------------------------------
        db   $37,$38,$39,$3A,$A9,$00,$8D,$B5 ; B9AC 37 38 39 3A A9 00 8D B5  789:....
        db   $07,$8D,$B6,$07,$8D,$B7,$07,$8D ; B9B4 07 8D B6 07 8D B7 07 8D  ........
        db   $B8,$07                         ; B9BC B8 07                    ..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B9BE:
        rts                                     ; B9BE 60                       `
; ----------------------------------------------------------------------------
        db   $AD,$D4,$03,$29,$1F,$D0,$1B,$A5 ; B9BF AD D4 03 29 1F D0 1B A5  ...)....
        db   $F8,$20,$F0,$BE,$AD,$B4,$07,$09 ; B9C7 F8 20 F0 BE AD B4 07 09  . ......
        db   $50,$8D,$B4,$07,$A5,$F5,$09,$08 ; B9CF 50 8D B4 07 A5 F5 09 08  P.......
        db   $85,$F5,$AD,$D4,$03,$09,$08,$8D ; B9D7 85 F5 AD D4 03 09 08 8D  ........
        db   $D4,$03                         ; B9DF D4 03                    ..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_B9E1:
        rts                                     ; B9E1 60                       `
; ----------------------------------------------------------------------------
        db   $AD,$D4,$03,$29,$1F,$D0,$1F,$AD ; B9E2 AD D4 03 29 1F D0 1F AD  ...)....
        db   $B5,$07,$49,$01,$8D,$B5,$07,$AD ; B9EA B5 07 49 01 8D B5 07 AD  ..I.....
        db   $B4,$07,$09,$50,$8D,$B4,$07,$A5 ; B9F2 B4 07 09 50 8D B4 07 A5  ...P....
        db   $F5,$09,$08,$85,$F5,$AD,$D4,$03 ; B9FA F5 09 08 85 F5 AD D4 03  ........
        db   $09,$08,$8D,$D4,$03,$60,$A9,$00 ; BA02 09 08 8D D4 03 60 A9 00  .....`..
        db   $8D,$B5,$07,$60                 ; BA0A 8D B5 07 60              ...`
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BA0E:
        lda     $F3                             ; BA0E A5 F3                    ..
        sta     $6F                             ; BA10 85 6F                    .o
        ldy     #$01                            ; BA12 A0 01                    ..
        lda     ($EE),y                         ; BA14 B1 EE                    ..
        and     #$03                            ; BA16 29 03                    ).
        cmp     #$02                            ; BA18 C9 02                    ..
        bne     TextUiSystem_Branch_BA26        ; BA1A D0 0A                    ..
        asl     $6F                             ; BA1C 06 6F                    .o
        lda     $F4                             ; BA1E A5 F4                    ..
        and     #$10                            ; BA20 29 10                    ).
        bne     TextUiSystem_Branch_BA26        ; BA22 D0 02                    ..
        inc     $6F                             ; BA24 E6 6F                    .o
TextUiSystem_Branch_BA26:
        lda     $6F                             ; BA26 A5 6F                    .o
        rts                                     ; BA28 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BA29:
        pha                                     ; BA29 48                       H
        and     #$80                            ; BA2A 29 80                    ).
        beq     $BA40                           ; BA2C F0 12                    ..
        txa                                     ; BA2E 8A                       .
        pha                                     ; BA2F 48                       H
        lda     $F2                             ; BA30 A5 F2                    ..
        pha                                     ; BA32 48                       H
        jsr     TextUiSystem_Entry_9976         ; BA33 20 76 99                  v.
        lda     #$83                            ; BA36 A9 83                    ..
        jsr     TextUiSystem_Entry_98D2         ; BA38 20 D2 98                  ..
        pla                                     ; BA3B 68                       h
        sta     $F2                             ; BA3C 85 F2                    ..
        pla                                     ; BA3E 68                       h
        tax                                     ; BA3F AA                       .
        pla                                     ; BA40 68                       h
        and     #$7F                            ; BA41 29 7F                    ).
        rts                                     ; BA43 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BA44:
        lda     $03DB                           ; BA44 AD DB 03                 ...
        sta     $6E                             ; BA47 85 6E                    .n
        lda     $03DD                           ; BA49 AD DD 03                 ...
        brk                                     ; BA4C 00                       .
        db   $2D,$0F                         ; BA4D 2D 0F                    -.
; ----------------------------------------------------------------------------
        lda     $72                             ; BA4F A5 72                    .r
        sta     $03DB                           ; BA51 8D DB 03                 ...
        brk                                     ; BA54 00                       .
        db   $62,$23,$40                     ; BA55 62 23 40                 b#@
; ----------------------------------------------------------------------------
        lda     #$00                            ; BA58 A9 00                    ..
        ldx     $03DB                           ; BA5A AE DB 03                 ...
        cpx     $72                             ; BA5D E4 72                    .r
        bcs     TextUiSystem_Entry_BA64         ; BA5F B0 03                    ..
        inx                                     ; BA61 E8                       .
        inx                                     ; BA62 E8                       .
        txa                                     ; BA63 8A                       .
TextUiSystem_Entry_BA64:
        pha                                     ; BA64 48                       H
        ldx     $03DB                           ; BA65 AE DB 03                 ...
        brk                                     ; BA68 00                       .
        db   $2A,$53                         ; BA69 2A 53                    *S
; ----------------------------------------------------------------------------
        pla                                     ; BA6B 68                       h
        rts                                     ; BA6C 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BA6D:
        jsr     TextUiSystem_Entry_98B3         ; BA6D 20 B3 98                  ..
        lda     #$00                            ; BA70 A9 00                    ..
        jsr     TextUiSystem_Entry_98B3         ; BA72 20 B3 98                  ..
        jmp     TextUiSystem_Entry_BA7B         ; BA75 4C 7B BA                 L{.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BA78:
        jsr     TextUiSystem_Entry_BA64         ; BA78 20 64 BA                  d.
TextUiSystem_Entry_BA7B:
        ldx     #$00                            ; BA7B A2 00                    ..
TextUiSystem_Branch_BA7D:
        lda     $72,x                           ; BA7D B5 72                    .r
        jsr     TextUiSystem_Entry_98B3         ; BA7F 20 B3 98                  ..
        inx                                     ; BA82 E8                       .
        cpx     #$04                            ; BA83 E0 04                    ..
        bne     TextUiSystem_Branch_BA7D        ; BA85 D0 F6                    ..
        rts                                     ; BA87 60                       `
; ----------------------------------------------------------------------------
        db   $20,$64,$BA,$A2,$00,$A0,$09,$B5 ; BA88 20 64 BA A2 00 A0 09 B5   d......
        db   $72,$C9,$00,$F0,$F2,$20,$B3,$98 ; BA90 72 C9 00 F0 F2 20 B3 98  r.... ..
        db   $88,$E8,$E0,$04,$D0,$F1,$60     ; BA98 88 E8 E0 04 D0 F1 60     ......`
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BA9F:
        ldx     #$00                            ; BA9F A2 00                    ..
        jmp     TextUiSystem_Branch_BACC        ; BAA1 4C CC BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_BAA4:
        ldx     #$01                            ; BAA4 A2 01                    ..
        jmp     TextUiSystem_Branch_BACC        ; BAA6 4C CC BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_BAA9:
        ldx     #$02                            ; BAA9 A2 02                    ..
        jmp     TextUiSystem_Branch_BACC        ; BAAB 4C CC BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BAAE:
        ldx     #$03                            ; BAAE A2 03                    ..
        jmp     TextUiSystem_Branch_BAC4        ; BAB0 4C C4 BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BAB3:
        ldx     #$04                            ; BAB3 A2 04                    ..
        jmp     TextUiSystem_Branch_BAC4        ; BAB5 4C C4 BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_BAB8:
        ldx     #$05                            ; BAB8 A2 05                    ..
        jmp     TextUiSystem_Branch_BACC        ; BABA 4C CC BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_BABD:
        ldx     #$06                            ; BABD A2 06                    ..
        jmp     TextUiSystem_Branch_BACC        ; BABF 4C CC BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_BAC2:
        ldx     #$07                            ; BAC2 A2 07                    ..
TextUiSystem_Branch_BAC4:
        brk                                     ; BAC4 00                       .
        db   $04,$B7                         ; BAC5 04 B7                    ..
; ----------------------------------------------------------------------------
        jmp     TextUiSystem_Branch_BAD2        ; BAC7 4C D2 BA                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_BACA:
        ldx     #$07                            ; BACA A2 07                    ..
TextUiSystem_Branch_BACC:
        brk                                     ; BACC 00                       .
        db   $04,$B7                         ; BACD 04 B7                    ..
; ----------------------------------------------------------------------------
        jmp     $BB3A                           ; BACF 4C 3A BB                 L:.
; ----------------------------------------------------------------------------
TextUiSystem_Branch_BAD2:
        tay                                     ; BAD2 A8                       .
        beq     TextUiSystem_Branch_BB26        ; BAD3 F0 51                    .Q
        cmp     $03FF                           ; BAD5 CD FF 03                 ...
        bcs     $BB1E                           ; BAD8 B0 44                    .D
        pha                                     ; BADA 48                       H
        lda     #$00                            ; BADB A9 00                    ..
        cmp     $03E3,y                         ; BADD D9 E3 03                 ...
        beq     $BAE9                           ; BAE0 F0 07                    ..
        dey                                     ; BAE2 88                       .
        bpl     $BADD                           ; BAE3 10 F8                    ..
        pla                                     ; BAE5 68                       h
        jmp     TextUiSystem_Branch_BB26        ; BAE6 4C 26 BB                 L&.
; ----------------------------------------------------------------------------
        ldx     $03FF                           ; BAE9 AE FF 03                 ...
        lda     #$00                            ; BAEC A9 00                    ..
        sta     $03E3,x                         ; BAEE 9D E3 03                 ...
        ldx     #$0B                            ; BAF1 A2 0B                    ..
        tya                                     ; BAF3 98                       .
        clc                                     ; BAF4 18                       .
        adc     #$0B                            ; BAF5 69 0B                    i.
        tay                                     ; BAF7 A8                       .
        lda     $03E3,y                         ; BAF8 B9 E3 03                 ...
        pha                                     ; BAFB 48                       H
        lda     #$00                            ; BAFC A9 00                    ..
        sta     $03E3,y                         ; BAFE 99 E3 03                 ...
        pla                                     ; BB01 68                       h
        sta     $03EF,x                         ; BB02 9D EF 03                 ...
        dey                                     ; BB05 88                       .
        dex                                     ; BB06 CA                       .
        bpl     $BAF8                           ; BB07 10 EF                    ..
        pla                                     ; BB09 68                       h
        tay                                     ; BB0A A8                       .
        ldx     #$00                            ; BB0B A2 00                    ..
        lda     $03E3,x                         ; BB0D BD E3 03                 ...
        jsr     TextUiSystem_Entry_98D2         ; BB10 20 D2 98                  ..
        lda     $03EF,x                         ; BB13 BD EF 03                 ...
        jsr     TextUiSystem_Entry_98B3         ; BB16 20 B3 98                  ..
        inx                                     ; BB19 E8                       .
        dey                                     ; BB1A 88                       .
        bne     $BB0D                           ; BB1B D0 F0                    ..
        rts                                     ; BB1D 60                       `
; ----------------------------------------------------------------------------
        lda     #$00                            ; BB1E A9 00                    ..
        ldx     $03FF                           ; BB20 AE FF 03                 ...
        sta     $03E3,x                         ; BB23 9D E3 03                 ...
TextUiSystem_Branch_BB26:
        ldx     #$00                            ; BB26 A2 00                    ..
        lda     $03E3,x                         ; BB28 BD E3 03                 ...
        cmp     #$40                            ; BB2B C9 40                    .@
        beq     $BB39                           ; BB2D F0 0A                    ..
        jsr     TextUiSystem_Entry_98D2         ; BB2F 20 D2 98                  ..
        jsr     TextUiSystem_Entry_98FE         ; BB32 20 FE 98                  ..
        inx                                     ; BB35 E8                       .
        dey                                     ; BB36 88                       .
        bne     $BB28                           ; BB37 D0 EF                    ..
        rts                                     ; BB39 60                       `
; ----------------------------------------------------------------------------
        tay                                     ; BB3A A8                       .
        beq     $BB45                           ; BB3B F0 08                    ..
        lda     #$00                            ; BB3D A9 00                    ..
        ldx     $03FF                           ; BB3F AE FF 03                 ...
        sta     $03E3,x                         ; BB42 9D E3 03                 ...
        ldx     #$00                            ; BB45 A2 00                    ..
        lda     $03E3,x                         ; BB47 BD E3 03                 ...
        cmp     #$40                            ; BB4A C9 40                    .@
        beq     $BB55                           ; BB4C F0 07                    ..
        jsr     TextUiSystem_Entry_98B3         ; BB4E 20 B3 98                  ..
        inx                                     ; BB51 E8                       .
        dey                                     ; BB52 88                       .
        bne     $BB47                           ; BB53 D0 F2                    ..
        rts                                     ; BB55 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BB56:
        tax                                     ; BB56 AA                       .
        lda     $03DB                           ; BB57 AD DB 03                 ...
        sta     $6E                             ; BB5A 85 6E                    .n
        lda     $BB67,x                         ; BB5C BD 67 BB                 .g.
        brk                                     ; BB5F 00                       .
        db   $00,$03                         ; BB60 00 03                    ..
; ----------------------------------------------------------------------------
        txa                                     ; BB62 8A                       .
        jsr     TextUiSystem_Entry_BD41         ; BB63 20 41 BD                  A.
        rts                                     ; BB66 60                       `
; ----------------------------------------------------------------------------
        db   $10,$12,$1F,$21,$23,$01,$08,$17 ; BB67 10 12 1F 21 23 01 08 17  ...!#...
        db   $1B,$25,$0F,$00,$07,$4A         ; BB6F 1B 25 0F 00 07 4A        .%...J
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BB75:
        ldx     #$00                            ; BB75 A2 00                    ..
TextUiSystem_Branch_BB77:
        lda     $00,x                         ; BB77 B5 00                    ..
        jsr     TextUiSystem_Entry_98B3         ; BB79 20 B3 98                  ..
        inx                                     ; BB7C E8                       .
        dey                                     ; BB7D 88                       .
        bne     TextUiSystem_Branch_BB77        ; BB7E D0 F7                    ..
        rts                                     ; BB80 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BB81:
        ldx     #$00                            ; BB81 A2 00                    ..
TextUiSystem_Branch_BB83:
        lda     $00,x                         ; BB83 B5 00                    ..
        jsr     TextUiSystem_Entry_98FB         ; BB85 20 FB 98                  ..
        inx                                     ; BB88 E8                       .
        dey                                     ; BB89 88                       .
        bne     TextUiSystem_Branch_BB83        ; BB8A D0 F7                    ..
        rts                                     ; BB8C 60                       `
; ----------------------------------------------------------------------------
        lda     #$00                            ; BB8D A9 00                    ..
        sta     $03DD                           ; BB8F 8D DD 03                 ...
        jsr     TextUiSystem_Entry_BA44         ; BB92 20 44 BA                  D.
        tay                                     ; BB95 A8                       .
        jsr     TextUiSystem_Entry_98D2         ; BB96 20 D2 98                  ..
        lda     $72                             ; BB99 A5 72                    .r
        jsr     TextUiSystem_Entry_98B3         ; BB9B 20 B3 98                  ..
        lda     #$71                            ; BB9E A9 71                    .q
        cpy     #$00                            ; BBA0 C0 00                    ..
        bne     $BBA6                           ; BBA2 D0 02                    ..
        lda     #$00                            ; BBA4 A9 00                    ..
        jsr     TextUiSystem_Entry_98D2         ; BBA6 20 D2 98                  ..
        lda     $73                             ; BBA9 A5 73                    .s
        jsr     TextUiSystem_Entry_98B3         ; BBAB 20 B3 98                  ..
        lda     $74                             ; BBAE A5 74                    .t
        jsr     TextUiSystem_Entry_98B3         ; BBB0 20 B3 98                  ..
        lda     $75                             ; BBB3 A5 75                    .u
        jsr     TextUiSystem_Entry_98B3         ; BBB5 20 B3 98                  ..
        rts                                     ; BBB8 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_BBB9:
        lda     #$0B                            ; BBB9 A9 0B                    ..
        pha                                     ; BBBB 48                       H
        lda     #$2C                            ; BBBC A9 2C                    .,
        jmp     $BBC6                           ; BBBE 4C C6 BB                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_BBC1:
        lda     #$0C                            ; BBC1 A9 0C                    ..
        pha                                     ; BBC3 48                       H
        lda     #$31                            ; BBC4 A9 31                    .1
        jsr     TextUiSystem_Entry_98B3         ; BBC6 20 B3 98                  ..
        pla                                     ; BBC9 68                       h
        jsr     TextUiSystem_Entry_BB56         ; BBCA 20 56 BB                  V.
        jmp     TextUiSystem_Entry_BB75         ; BBCD 4C 75 BB                 Lu.
; ----------------------------------------------------------------------------
        lda     #$05                            ; BBD0 A9 05                    ..
        jsr     TextUiSystem_Entry_BB56         ; BBD2 20 56 BB                  V.
        lda     #$FF                            ; BBD5 A9 FF                    ..
        jsr     TextUiSystem_Entry_98B3         ; BBD7 20 B3 98                  ..
        lda     #$65                            ; BBDA A9 65                    .e
        jsr     TextUiSystem_Entry_98D2         ; BBDC 20 D2 98                  ..
        lda     $00                           ; BBDF A5 00                    ..
        jsr     TextUiSystem_Entry_98B3         ; BBE1 20 B3 98                  ..
        lda     #$65                            ; BBE4 A9 65                    .e
        jsr     TextUiSystem_Entry_98D2         ; BBE6 20 D2 98                  ..
        lda     $01                             ; BBE9 A5 01                    ..
        jsr     TextUiSystem_Entry_98B3         ; BBEB 20 B3 98                  ..
        lda     #$65                            ; BBEE A9 65                    .e
        jsr     TextUiSystem_Entry_98D2         ; BBF0 20 D2 98                  ..
        lda     $02                             ; BBF3 A5 02                    ..
        jmp     TextUiSystem_Entry_98B3         ; BBF5 4C B3 98                 L..
; ----------------------------------------------------------------------------
        lda     #$06                            ; BBF8 A9 06                    ..
        jmp     $BBD2                           ; BBFA 4C D2 BB                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Branch_BBFD:
        ldx     $03DB                           ; BBFD AE DB 03                 ...
        brk                                     ; BC00 00                       .
        db   $2B,$53                         ; BC01 2B 53                    +S
; ----------------------------------------------------------------------------
        ldx     #$01                            ; BC03 A2 01                    ..
        brk                                     ; BC05 00                       .
        db   $04,$B7                         ; BC06 04 B7                    ..
; ----------------------------------------------------------------------------
        lda     $03E3                           ; BC08 AD E3 03                 ...
        jsr     TextUiSystem_Entry_98B3         ; BC0B 20 B3 98                  ..
        lda     #$71                            ; BC0E A9 71                    .q
        jsr     TextUiSystem_Entry_98B3         ; BC10 20 B3 98                  ..
        ldx     $03DB                           ; BC13 AE DB 03                 ...
        brk                                     ; BC16 00                       .
        db   $0F,$53                         ; BC17 0F 53                    .S
; ----------------------------------------------------------------------------
        lda     $75                             ; BC19 A5 75                    .u
        bne     $BC25                           ; BC1B D0 08                    ..
        lda     #$0A                            ; BC1D A9 0A                    ..
        jsr     TextUiSystem_Entry_BD41         ; BC1F 20 41 BD                  A.
        jmp     TextUiSystem_Entry_BB75         ; BC22 4C 75 BB                 Lu.
; ----------------------------------------------------------------------------
        asl     a                               ; BC25 0A                       .
        tay                                     ; BC26 A8                       .
        dey                                     ; BC27 88                       .
        dey                                     ; BC28 88                       .
        lda     $BC35,y                         ; BC29 B9 35 BC                 .5.
        jsr     TextUiSystem_Entry_98B3         ; BC2C 20 B3 98                  ..
        lda     $BC36,y                         ; BC2F B9 36 BC                 .6.
        jmp     TextUiSystem_Entry_98B3         ; BC32 4C B3 98                 L..
; ----------------------------------------------------------------------------
        db   $28                             ; BC35 28                       (
        db   $29,$34,$36,$37,$30,$27,$2A,$37 ; BC36 29 34 36 37 30 27 2A 37  )4670'*7
        db   $38,$37,$36,$34,$33             ; BC3E 38 37 36 34 33           87643
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BC43:
        lda     #$00                            ; BC43 A9 00                    ..
        sta     $00                           ; BC45 85 00                    ..
        ldy     #$FF                            ; BC47 A0 FF                    ..
TextUiSystem_Branch_BC49:
        iny                                     ; BC49 C8                       .
        lda     $07B0,y                         ; BC4A B9 B0 07                 ...
        cmp     #$FF                            ; BC4D C9 FF                    ..
        bne     TextUiSystem_Branch_BC49        ; BC4F D0 F8                    ..
        sty     $02                             ; BC51 84 02                    ..
        ldx     #$FF                            ; BC53 A2 FF                    ..
TextUiSystem_Branch_BC55:
        inx                                     ; BC55 E8                       .
        ldy     $02                             ; BC56 A4 02                    ..
TextUiSystem_Branch_BC58:
        dey                                     ; BC58 88                       .
        bmi     TextUiSystem_Branch_BC63        ; BC59 30 08                    0.
        txa                                     ; BC5B 8A                       .
        cmp     $07B0,y                         ; BC5C D9 B0 07                 ...
        beq     TextUiSystem_Branch_BC55        ; BC5F F0 F4                    ..
        bne     TextUiSystem_Branch_BC58        ; BC61 D0 F5                    ..
TextUiSystem_Branch_BC63:
        inc     $00                           ; BC63 E6 00                    ..
        lda     $F3                             ; BC65 A5 F3                    ..
        cmp     $00                           ; BC67 C5 00                    ..
        bcs     TextUiSystem_Branch_BC55        ; BC69 B0 EA                    ..
        txa                                     ; BC6B 8A                       .
        rts                                     ; BC6C 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_BC6D:
        lda     $03DC                           ; BC6D AD DC 03                 ...
        and     #$0F                            ; BC70 29 0F                    ).
        tay                                     ; BC72 A8                       .
        lda     $BCD2,y                         ; BC73 B9 D2 BC                 ...
        beq     $BC81                           ; BC76 F0 09                    ..
        ldy     $03DD                           ; BC78 AC DD 03                 ...
        lda     $BCCA,y                         ; BC7B B9 CA BC                 ...
        jsr     TextUiSystem_Entry_98B3         ; BC7E 20 B3 98                  ..
        lda     $03DC                           ; BC81 AD DC 03                 ...
        pha                                     ; BC84 48                       H
        lda     $03DD                           ; BC85 AD DD 03                 ...
        asl     a                               ; BC88 0A                       .
        tay                                     ; BC89 A8                       .
        lda     #$00                            ; BC8A A9 00                    ..
        sta     $03DD                           ; BC8C 8D DD 03                 ...
        lda     $03DC                           ; BC8F AD DC 03                 ...
        lsr     a                               ; BC92 4A                       J
        lsr     a                               ; BC93 4A                       J
        lsr     a                               ; BC94 4A                       J
        lsr     a                               ; BC95 4A                       J
        sta     $03DB                           ; BC96 8D DB 03                 ...
        lda     $03DC                           ; BC99 AD DC 03                 ...
        and     #$0F                            ; BC9C 29 0F                    ).
        sta     $03DC                           ; BC9E 8D DC 03                 ...
TextUiSystem_Branch_BCA1:
        tya                                     ; BCA1 98                       .
        pha                                     ; BCA2 48                       H
        jsr     TextUiSystem_Entry_BCC1         ; BCA3 20 C1 BC                  ..
        pla                                     ; BCA6 68                       h
        tay                                     ; BCA7 A8                       .
        inc     $03DB                           ; BCA8 EE DB 03                 ...
        dec     $03DC                           ; BCAB CE DC 03                 ...
        beq     $BCBC                           ; BCAE F0 0C                    ..
        tya                                     ; BCB0 98                       .
        lsr     a                               ; BCB1 4A                       J
        tax                                     ; BCB2 AA                       .
        lda     $BCCA,x                         ; BCB3 BD CA BC                 ...
        jsr     TextUiSystem_Entry_98B3         ; BCB6 20 B3 98                  ..
        jmp     TextUiSystem_Branch_BCA1        ; BCB9 4C A1 BC                 L..
; ----------------------------------------------------------------------------
        pla                                     ; BCBC 68                       h
        sta     $03DC                           ; BCBD 8D DC 03                 ...
        rts                                     ; BCC0 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BCC1:
        lda     $BCDA,y                         ; BCC1 B9 DA BC                 ...
        pha                                     ; BCC4 48                       H
        lda     $BCD9,y                         ; BCC5 B9 D9 BC                 ...
        pha                                     ; BCC8 48                       H
        rts                                     ; BCC9 60                       `
; ----------------------------------------------------------------------------
        db   $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF ; BCCA FF FF FF FF FF FF FF FF  ........
        db   $8C,$01,$01,$01,$01,$00,$00     ; BCD2 8C 01 01 01 01 00 00     .......
        db   $8C                             ; BCD9 8C                       .
        db   $BB,$B8,$BB,$CF,$BB,$C0,$BB,$F7 ; BCDA BB B8 BB CF BB C0 BB F7  ........
        db   $BB,$B8,$BB,$C0,$BB,$FC,$BB,$77 ; BCE2 BB B8 BB C0 BB FC BB 77  .......w
        db   $BA                             ; BCEA BA                       .
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BCEB:
        lda     $03D5                           ; BCEB AD D5 03                 ...
        lsr     a                               ; BCEE 4A                       J
        lsr     a                               ; BCEF 4A                       J
        lsr     a                               ; BCF0 4A                       J
        lsr     a                               ; BCF1 4A                       J
        rts                                     ; BCF2 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_BCF3:
        jsr     TextUiSystem_Entry_98FE         ; BCF3 20 FE 98                  ..
TextUiSystem_Branch_BCF6:
        ldy     #$03                            ; BCF6 A0 03                    ..
        jsr     TextUiSystem_Entry_BD05         ; BCF8 20 05 BD                  ..
        cmp     #$00                            ; BCFB C9 00                    ..
        bne     $BD02                           ; BCFD D0 03                    ..
        dey                                     ; BCFF 88                       .
        bpl     $BCF8                           ; BD00 10 F6                    ..
        jmp     TextUiSystem_Entry_98B3         ; BD02 4C B3 98                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BD05:
        ldx     $03DB                           ; BD05 AE DB 03                 ...
        bpl     $BD0F                           ; BD08 10 05                    ..
        ldx     #$00                            ; BD0A A2 00                    ..
        jmp     TextUiSystem_Branch_BD20        ; BD0C 4C 20 BD                 L .
; ----------------------------------------------------------------------------
        lda     $BD24,y                         ; BD0F B9 24 BD                 .$.
        brk                                     ; BD12 00                       .
        db   $46,$73                         ; BD13 46 73                    Fs
; ----------------------------------------------------------------------------
        ldx     #$00                            ; BD15 A2 00                    ..
        ror     a                               ; BD17 6A                       j
        eor     $BD28,y                         ; BD18 59 28 BD                 Y(.
        bpl     TextUiSystem_Branch_BD20        ; BD1B 10 03                    ..
        tya                                     ; BD1D 98                       .
        tax                                     ; BD1E AA                       .
        inx                                     ; BD1F E8                       .
TextUiSystem_Branch_BD20:
        lda     $BD2C,x                         ; BD20 BD 2C BD                 .,.
        rts                                     ; BD23 60                       `
; ----------------------------------------------------------------------------
        db   $04,$05,$06,$07                 ; BD24 04 05 06 07              ....
        db   $00,$00,$00,$80                 ; BD28 00 00 00 80              ....
        db   $00,$70,$74,$6D,$73             ; BD2C 00 70 74 6D 73           .ptms
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BD31:
        pha                                     ; BD31 48                       H
        txa                                     ; BD32 8A                       .
        pha                                     ; BD33 48                       H
        tya                                     ; BD34 98                       .
        pha                                     ; BD35 48                       H
        lda     #$09                            ; BD36 A9 09                    ..
        jsr     TextUiSystem_Entry_BD41         ; BD38 20 41 BD                  A.
        pla                                     ; BD3B 68                       h
        tay                                     ; BD3C A8                       .
        pla                                     ; BD3D 68                       h
        tax                                     ; BD3E AA                       .
        pla                                     ; BD3F 68                       h
        rts                                     ; BD40 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BD41:
        tay                                     ; BD41 A8                       .
        ldx     $BD77,y                         ; BD42 BE 77 BD                 .w.
        cmp     #$0A                            ; BD45 C9 0A                    ..
        bne     TextUiSystem_Branch_BD58        ; BD47 D0 0F                    ..
        lda     $72                             ; BD49 A5 72                    .r
        bpl     TextUiSystem_Branch_BD58        ; BD4B 10 0B                    ..
        lda     #$00                            ; BD4D A9 00                    ..
        sta     $06                             ; BD4F 85 06                    ..
        lda     #$6D                            ; BD51 A9 6D                    .m
        sta     $07                             ; BD53 85 07                    ..
        jmp     TextUiSystem_Branch_BD69        ; BD55 4C 69 BD                 Li.
; ----------------------------------------------------------------------------
TextUiSystem_Branch_BD58:
        txa                                     ; BD58 8A                       .
        pha                                     ; BD59 48                       H
        lda     $BD85,x                         ; BD5A BD 85 BD                 ...
        tay                                     ; BD5D A8                       .
        jsr     TextUiSystem_Entry_BD91         ; BD5E 20 91 BD                  ..
        jsr     TextUiSystem_Entry_BDC9         ; BD61 20 C9 BD                  ..
        jsr     TextUiSystem_Entry_BE64         ; BD64 20 64 BE                  d.
        pla                                     ; BD67 68                       h
        tax                                     ; BD68 AA                       .
TextUiSystem_Branch_BD69:
        txa                                     ; BD69 8A                       .
        pha                                     ; BD6A 48                       H
        ldy     $BD89,x                         ; BD6B BC 89 BD                 ...
        jsr     TextUiSystem_Entry_BE82         ; BD6E 20 82 BE                  ..
        pla                                     ; BD71 68                       h
        tax                                     ; BD72 AA                       .
        ldy     $BD8D,x                         ; BD73 BC 8D BD                 ...
        rts                                     ; BD76 60                       `
; ----------------------------------------------------------------------------
        db   $02,$02,$02,$02,$02,$02,$02,$02 ; BD77 02 02 02 02 02 02 02 02  ........
        db   $02,$00,$03,$02,$02,$01         ; BD7F 02 00 03 02 02 01        ......
        db   $00,$03,$06,$09                 ; BD85 00 03 06 09              ....
        db   $00,$03,$05,$06                 ; BD89 00 03 05 06              ....
        db   $08,$05,$03,$02                 ; BD8D 08 05 03 02              ....
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BD91:
        sec                                     ; BD91 38                       8
        lda     $72                             ; BD92 A5 72                    .r
        sbc     $BDBF,y                         ; BD94 F9 BF BD                 ...
        lda     $73                             ; BD97 A5 73                    .s
        sbc     $BDBE,y                         ; BD99 F9 BE BD                 ...
        lda     $74                             ; BD9C A5 74                    .t
        sbc     $BDBD,y                         ; BD9E F9 BD BD                 ...
        bcc     $BDB2                           ; BDA1 90 0F                    ..
        lda     $BDBF,y                         ; BDA3 B9 BF BD                 ...
        sta     $72                             ; BDA6 85 72                    .r
        lda     $BDBE,y                         ; BDA8 B9 BE BD                 ...
        sta     $73                             ; BDAB 85 73                    .s
        lda     $BDBD,y                         ; BDAD B9 BD BD                 ...
        sta     $74                             ; BDB0 85 74                    .t
        ldx     #$07                            ; BDB2 A2 07                    ..
        lda     #$F6                            ; BDB4 A9 F6                    ..
        sta     $00,x                         ; BDB6 95 00                    ..
        dex                                     ; BDB8 CA                       .
        bpl     $BDB6                           ; BDB9 10 FB                    ..
        clc                                     ; BDBB 18                       .
        rts                                     ; BDBC 60                       `
; ----------------------------------------------------------------------------
        db   $98                             ; BDBD 98                       .
        db   $96                             ; BDBE 96                       .
        db   $80,$01,$86,$9F,$00,$03,$E7,$00 ; BDBF 80 01 86 9F 00 03 E7 00  ........
        db   $00,$63                         ; BDC7 00 63                    .c
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BDC9:
        ldy     #$00                            ; BDC9 A0 00                    ..
        ldx     #$01                            ; BDCB A2 01                    ..
        bit     $74                             ; BDCD 24 74                    $t
        bpl     $BDE9                           ; BDCF 10 18                    ..
        lda     $73                             ; BDD1 A5 73                    .s
        sec                                     ; BDD3 38                       8
        sbc     $BE0A,y                         ; BDD4 F9 0A BE                 ...
        sta     $73                             ; BDD7 85 73                    .s
        lda     $74                             ; BDD9 A5 74                    .t
        sbc     $BE09,y                         ; BDDB F9 09 BE                 ...
        sta     $74                             ; BDDE 85 74                    .t
        lda     $BE08,y                         ; BDE0 B9 08 BE                 ...
        jsr     TextUiSystem_Entry_BE47         ; BDE3 20 47 BE                  G.
        jmp     $BDCD                           ; BDE6 4C CD BD                 L..
; ----------------------------------------------------------------------------
        lda     $BE08,y                         ; BDE9 B9 08 BE                 ...
        cmp     #$01                            ; BDEC C9 01                    ..
        bne     $BDF1                           ; BDEE D0 01                    ..
        inx                                     ; BDF0 E8                       .
        asl     $72                             ; BDF1 06 72                    .r
        rol     $73                             ; BDF3 26 73                    &s
        rol     $74                             ; BDF5 26 74                    &t
        iny                                     ; BDF7 C8                       .
        iny                                     ; BDF8 C8                       .
        iny                                     ; BDF9 C8                       .
        cpy     #$3F                            ; BDFA C0 3F                    .?
        bne     $BDCD                           ; BDFC D0 CF                    ..
        lda     $74                             ; BDFE A5 74                    .t
        lsr     a                               ; BE00 4A                       J
        lsr     a                               ; BE01 4A                       J
        lsr     a                               ; BE02 4A                       J
        lsr     a                               ; BE03 4A                       J
        lsr     a                               ; BE04 4A                       J
        jmp     TextUiSystem_Entry_BE47         ; BE05 4C 47 BE                 LG.
; ----------------------------------------------------------------------------
        db   $08                             ; BE08 08                       .
        db   $7A                             ; BE09 7A                       z
        db   $12,$04,$7A,$12,$02,$7A,$12,$01 ; BE0A 12 04 7A 12 02 7A 12 01  ..z..z..
        db   $7A,$12,$05,$7A,$12,$02,$61,$A8 ; BE12 7A 12 05 7A 12 02 61 A8  z..z..a.
        db   $01,$61,$A8,$06,$75,$30,$03,$75 ; BE1A 01 61 A8 06 75 30 03 75  .a..u0.u
        db   $30,$01,$4E,$20,$08,$7D,$00,$04 ; BE22 30 01 4E 20 08 7D 00 04  0.N .}..
        db   $7D,$00,$02,$7D,$00,$01,$7D,$00 ; BE2A 7D 00 02 7D 00 01 7D 00  }..}..}.
        db   $05,$7D,$00,$02,$64,$00,$01,$64 ; BE32 05 7D 00 02 64 00 01 64  .}..d..d
        db   $00,$06,$78,$00,$03,$78,$00,$01 ; BE3A 00 06 78 00 03 78 00 01  ..x..x..
        db   $50,$00,$08,$80,$00             ; BE42 50 00 08 80 00           P....
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BE47:
        clc                                     ; BE47 18                       .
        adc     $00,x                         ; BE48 75 00                    u.
        bcs     $BE4F                           ; BE4A B0 03                    ..
        sta     $00,x                         ; BE4C 95 00                    ..
        rts                                     ; BE4E 60                       `
; ----------------------------------------------------------------------------
        adc     #$F5                            ; BE4F 69 F5                    i.
        sta     $00,x                         ; BE51 95 00                    ..
        txa                                     ; BE53 8A                       .
        pha                                     ; BE54 48                       H
        lda     #$F6                            ; BE55 A9 F6                    ..
TextUiSystem_Branch_BE57:
        dex                                     ; BE57 CA                       .
        inc     $00,x                         ; BE58 F6 00                    ..
        bne     $BE61                           ; BE5A D0 05                    ..
        sta     $00,x                         ; BE5C 95 00                    ..
        jmp     TextUiSystem_Branch_BE57        ; BE5E 4C 57 BE                 LW.
; ----------------------------------------------------------------------------
        pla                                     ; BE61 68                       h
        tax                                     ; BE62 AA                       .
        rts                                     ; BE63 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BE64:
        lda     #$00                            ; BE64 A9 00                    ..
        ldx     #$00                            ; BE66 A2 00                    ..
        ldy     $00,x                         ; BE68 B4 00                    ..
        cpy     #$F6                            ; BE6A C0 F6                    ..
        bne     $BE75                           ; BE6C D0 07                    ..
        sta     $00,x                         ; BE6E 95 00                    ..
        inx                                     ; BE70 E8                       .
        cpx     #$07                            ; BE71 E0 07                    ..
        bne     $BE68                           ; BE73 D0 F3                    ..
        lda     $00,x                         ; BE75 B5 00                    ..
        clc                                     ; BE77 18                       .
        adc     #$0B                            ; BE78 69 0B                    i.
        sta     $00,x                         ; BE7A 95 00                    ..
        inx                                     ; BE7C E8                       .
        cpx     #$08                            ; BE7D E0 08                    ..
        bne     $BE75                           ; BE7F D0 F4                    ..
        rts                                     ; BE81 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BE82:
        ldx     #$00                            ; BE82 A2 00                    ..
        lda     $0000,y                         ; BE84 B9 00 00                 ...
        sta     $00,x                         ; BE87 95 00                    ..
        inx                                     ; BE89 E8                       .
        iny                                     ; BE8A C8                       .
        cpy     #$08                            ; BE8B C0 08                    ..
        bne     $BE84                           ; BE8D D0 F5                    ..
        rts                                     ; BE8F 60                       `
; ----------------------------------------------------------------------------
        db   $A2,$01,$86,$06,$4C,$9C,$BE     ; BE90 A2 01 86 06 4C 9C BE     ....L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BE97:
        ldx     $03D6                           ; BE97 AE D6 03                 ...
        stx     $06                             ; BE9A 86 06                    ..
        sta     $03                             ; BE9C 85 03                    ..
TextUiSystem_Entry_BE9E:
        ldy     #$FF                            ; BE9E A0 FF                    ..
        sty     $04                             ; BEA0 84 04                    ..
        asl     a                               ; BEA2 0A                       .
        tay                                     ; BEA3 A8                       .
        lda     $06                             ; BEA4 A5 06                    ..
        asl     a                               ; BEA6 0A                       .
        tax                                     ; BEA7 AA                       .
        lda     Bank16_TextUiCommandDirectory,x ; BEA8 BD E3 A5                 ...
        sta     $01                             ; BEAB 85 01                    ..
        lda     $A5E4,x                         ; BEAD BD E4 A5                 ...
        sta     $02                             ; BEB0 85 02                    ..
        lda     ($01),y                         ; BEB2 B1 01                    ..
        sta     $00                           ; BEB4 85 00                    ..
        iny                                     ; BEB6 C8                       .
        lda     ($01),y                         ; BEB7 B1 01                    ..
        tax                                     ; BEB9 AA                       .
        iny                                     ; BEBA C8                       .
        lda     ($01),y                         ; BEBB B1 01                    ..
        sec                                     ; BEBD 38                       8
        sbc     $00                           ; BEBE E5 00                    ..
        sta     $02                             ; BEC0 85 02                    ..
        stx     $01                             ; BEC2 86 01                    ..
        ldy     $04                             ; BEC4 A4 04                    ..
        iny                                     ; BEC6 C8                       .
        cpy     $02                             ; BEC7 C4 02                    ..
        beq     $BED5                           ; BEC9 F0 0A                    ..
        lda     ($00),y                       ; BECB B1 00                    ..
        bmi     $BED6                           ; BECD 30 07                    0.
        jsr     TextUiSystem_Entry_98B3         ; BECF 20 B3 98                  ..
        jmp     $BEC6                           ; BED2 4C C6 BE                 L..
; ----------------------------------------------------------------------------
        rts                                     ; BED5 60                       `
; ----------------------------------------------------------------------------
        sty     $05                             ; BED6 84 05                    ..
        lda     ($00),y                       ; BED8 B1 00                    ..
        and     #$7F                            ; BEDA 29 7F                    ).
        jsr     TextUiSystem_Entry_BE9E         ; BEDC 20 9E BE                  ..
        lda     $05                             ; BEDF A5 05                    ..
        sta     $04                             ; BEE1 85 04                    ..
        lda     $03                             ; BEE3 A5 03                    ..
        jmp     $BEA2                           ; BEE5 4C A2 BE                 L..
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BEE8:
        pha                                     ; BEE8 48                       H
        brk                                     ; BEE9 00                       .
        db   $2B,$53                         ; BEEA 2B 53                    +S
; ----------------------------------------------------------------------------
        cmp     #$08                            ; BEEC C9 08                    ..
        pla                                     ; BEEE 68                       h
        rts                                     ; BEEF 60                       `
; ----------------------------------------------------------------------------
        db   $20,$02,$BF,$4A,$4A,$4A,$4A,$4C ; BEF0 20 02 BF 4A 4A 4A 4A 4C   ..JJJJL
        db   $64,$BF                         ; BEF8 64 BF                    d.
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BEFA:
        jsr     TextUiSystem_Entry_BF02         ; BEFA 20 02 BF                  ..
        and     #$0F                            ; BEFD 29 0F                    ).
        cmp     #$0F                            ; BEFF C9 0F                    ..
        rts                                     ; BF01 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BF02:
        sta     $03                             ; BF02 85 03                    ..
        jsr     TextUiSystem_Entry_BF2D         ; BF04 20 2D BF                  -.
        jsr     TextUiSystem_Entry_BF4C         ; BF07 20 4C BF                  L.
        asl     a                               ; BF0A 0A                       .
        asl     a                               ; BF0B 0A                       .
        asl     a                               ; BF0C 0A                       .
        clc                                     ; BF0D 18                       .
        adc     $02                             ; BF0E 65 02                    e.
        tax                                     ; BF10 AA                       .
        lda     $BF15,x                         ; BF11 BD 15 BF                 ...
        rts                                     ; BF14 60                       `
; ----------------------------------------------------------------------------
        db   $0F,$00,$01,$10,$02,$10,$11,$10 ; BF15 0F 00 01 10 02 10 11 10  ........
        db   $0F,$0F,$0F,$01,$0F,$02,$02,$21 ; BF1D 0F 0F 0F 01 0F 02 02 21  .......!
        db   $0F,$0F,$0F,$0F,$0F,$0F,$0F,$02 ; BF25 0F 0F 0F 0F 0F 0F 0F 02  ........
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BF2D:
        ldx     $03                             ; BF2D A6 03                    ..
        lda     #$00                            ; BF2F A9 00                    ..
        sta     $02                             ; BF31 85 02                    ..
        brk                                     ; BF33 00                       .
        db   $2B,$53                         ; BF34 2B 53                    +S
; ----------------------------------------------------------------------------
        cmp     #$08                            ; BF36 C9 08                    ..
        bcs     TextUiSystem_Branch_BF4B        ; BF38 B0 11                    ..
        lda     #$02                            ; BF3A A9 02                    ..
        sta     $6F                             ; BF3C 85 6F                    .o
TextUiSystem_Branch_BF3E:
        asl     $02                             ; BF3E 06 02                    ..
        brk                                     ; BF40 00                       .
        db   $3C,$53                         ; BF41 3C 53                    <S
; ----------------------------------------------------------------------------
        beq     TextUiSystem_Branch_BF47        ; BF43 F0 02                    ..
        inc     $02                             ; BF45 E6 02                    ..
TextUiSystem_Branch_BF47:
        dec     $6F                             ; BF47 C6 6F                    .o
        bpl     TextUiSystem_Branch_BF3E        ; BF49 10 F3                    ..
TextUiSystem_Branch_BF4B:
        rts                                     ; BF4B 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BF4C:
        lda     $03                             ; BF4C A5 03                    ..
        lsr     a                               ; BF4E 4A                       J
        lsr     a                               ; BF4F 4A                       J
        tay                                     ; BF50 A8                       .
        lda     $03                             ; BF51 A5 03                    ..
        and     #$03                            ; BF53 29 03                    ).
        asl     a                               ; BF55 0A                       .
        tax                                     ; BF56 AA                       .
        lda     $07B5,y                         ; BF57 B9 B5 07                 ...
TextUiSystem_Branch_BF5A:
        dex                                     ; BF5A CA                       .
        bmi     TextUiSystem_Branch_BF61        ; BF5B 30 04                    0.
        lsr     a                               ; BF5D 4A                       J
        jmp     TextUiSystem_Branch_BF5A        ; BF5E 4C 5A BF                 LZ.
; ----------------------------------------------------------------------------
TextUiSystem_Branch_BF61:
        and     #$03                            ; BF61 29 03                    ).
        rts                                     ; BF63 60                       `
; ----------------------------------------------------------------------------
        db   $85,$00,$A5,$03,$29,$03,$A8,$0A ; BF64 85 00 A5 03 29 03 A8 0A  ....)...
        db   $AA,$B9,$8A,$BF,$85,$01,$CA,$30 ; BF6C AA B9 8A BF 85 01 CA 30  .......0
        db   $05,$06,$00,$4C,$72,$BF,$A5,$03 ; BF74 05 06 00 4C 72 BF A5 03  ...Lr...
        db   $20,$4C,$BF,$B9,$B5,$07,$25,$01 ; BF7C 20 4C BF B9 B5 07 25 01   L....%.
        db   $05,$00,$99,$B5,$07,$60,$FC,$F3 ; BF84 05 00 99 B5 07 60 FC F3  .....`..
        db   $CF,$3F,$20,$A6,$BF,$90,$09,$A9 ; BF8C CF 3F 20 A6 BF 90 09 A9  .? .....
        db   $00,$8D,$DD,$03,$00,$62,$33,$60 ; BF94 00 8D DD 03 00 62 33 60  .....b3`
        db   $A9,$40,$8D,$DD,$03,$00,$62,$23 ; BF9C A9 40 8D DD 03 00 62 23  .@....b#
        db   $40,$60                         ; BFA4 40 60                    @`
; ----------------------------------------------------------------------------
TextUiSystem_Entry_BFA6:
        brk                                     ; BFA6 00                       .
        db   $5D,$33                         ; BFA7 5D 33                    ]3
; ----------------------------------------------------------------------------
        bcc     TextUiSystem_Branch_BFB4        ; BFA9 90 09                    ..
        lda     SaveGameStateFlags              ; BFAB AD 8E 61                 ..a
        and     #$07                            ; BFAE 29 07                    ).
        bne     TextUiSystem_Branch_BFB4        ; BFB0 D0 02                    ..
        sec                                     ; BFB2 38                       8
        rts                                     ; BFB3 60                       `
; ----------------------------------------------------------------------------
TextUiSystem_Branch_BFB4:
        clc                                     ; BFB4 18                       .
        rts                                     ; BFB5 60                       `
; ----------------------------------------------------------------------------
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
Bank16_End:
