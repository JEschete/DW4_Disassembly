; PRG bank $1E: ROM file $078010-$07C00F
; CPU window $8000-$BFFF
; Disassembled by project-local da65 using generated code/data ranges.

base $8000
Bank1E_Start:
; ----------------------------------------------------------------------------
; ----------------------------------------------------------------------------
Bank1E_MapInteractionDirectory:
        db   $F0,$84,$C5,$8E,$55,$91,$8A,$95 ; 8000 F0 84 C5 8E 55 91 8A 95  ....U...
        db   $5A,$85,$6E,$85,$7B,$90,$BD,$99 ; 8008 5A 85 6E 85 7B 90 BD 99  Z.n.{...
        db   $77,$85,$8C,$9E,$E5,$A7,$3F,$9E ; 8010 77 85 8C 9E E5 A7 3F 9E  w.....?.
        db   $4F,$A3,$00,$91,$B4,$AA,$EA,$AC ; 8018 4F A3 00 91 B4 AA EA AC  O.......
        db   $99,$97,$47,$9F,$E1,$B3,$5C,$A2 ; 8020 99 97 47 9F E1 B3 5C A2  ..G...\.
        db   $90,$80,$C9,$A1,$4C,$98,$57,$B1 ; 8028 90 80 C9 A1 4C 98 57 B1  ....L.W.
        db   $1E,$86,$48,$96,$90,$90,$76,$86 ; 8030 1E 86 48 96 90 90 76 86  ..H...v.
        db   $A8,$90,$46,$A0,$D6,$8E,$D2,$A1 ; 8038 A8 90 46 A0 D6 8E D2 A1  ..F.....
        db   $A7,$A0,$00,$87,$BA,$A3,$6C,$96 ; 8040 A7 A0 00 87 BA A3 6C 96  ......l.
        db   $83,$AD,$83,$AD,$0E,$98,$6B,$AB ; 8048 83 AD 83 AD 0E 98 6B AB  ......k.
        db   $E0,$AF,$6B,$A1,$80,$A2,$EE,$AE ; 8050 E0 AF 6B A1 80 A2 EE AE  ..k.....
        db   $ED,$AD,$A8,$A2,$13,$9C,$AD,$86 ; 8058 ED AD A8 A2 13 9C AD 86  ........
        db   $84,$8C,$EA,$8E,$C8,$8E,$EC,$92 ; 8060 84 8C EA 8E C8 8E EC 92  ........
        db   $20,$A6,$46,$83,$3B,$B3,$3F,$A7 ; 8068 20 A6 46 83 3B B3 3F A7   .F.;.?.
        db   $5F,$95,$67,$95,$E5,$B3,$B8,$97 ; 8070 5F 95 67 95 E5 B3 B8 97  _.g.....
        db   $C8,$90,$0D,$8D,$E3,$92,$5C,$8D ; 8078 C8 90 0D 8D E3 92 5C 8D  ......\.
        db   $E9,$BB,$2F,$B0,$AD,$B0,$83,$90 ; 8080 E9 BB 2F B0 AD B0 83 90  ../.....
        db   $D9,$83,$32,$A2,$22,$B7,$1E,$BC ; 8088 D9 83 32 A2 22 B7 1E BC  ..2."...
; ----------------------------------------------------------------------------
Bank1E_MapInteractionServices:
        brk                                     ; 8090 00                       .
        db   $27,$0F                         ; 8091 27 0F                    '.
; ----------------------------------------------------------------------------
        brk                                     ; 8093 00                       .
        db   $85,$FB                         ; 8094 85 FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8096 00                       .
        db   $07,$6F,$03                     ; 8097 07 6F 03                 .o.
; ----------------------------------------------------------------------------
        bmi     MapInteractionSystem_Branch_80A7; 809A 30 0B                    0.
        asl     a                               ; 809C 0A                       .
        tax                                     ; 809D AA                       .
        lda     $80AB,x                         ; 809E BD AB 80                 ...
        pha                                     ; 80A1 48                       H
        lda     $80AA,x                         ; 80A2 BD AA 80                 ...
        pha                                     ; 80A5 48                       H
        rts                                     ; 80A6 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_80A7:
        jmp     UpperFixedEngine_Entry_D1F3     ; 80A7 4C F3 D1                 L..
; ----------------------------------------------------------------------------
        db   $B9                             ; 80AA B9                       .
        db   $80,$CC,$81,$D0,$81,$60,$82,$64 ; 80AB 80 CC 81 D0 81 60 82 64  .....`.d
        db   $82,$FD,$83,$42,$83,$3F,$83     ; 80B3 82 FD 83 42 83 3F 83     ...B.?.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_80BA:
        bit     $41                             ; 80BA 24 41                    $A
        bpl     MapInteractionSystem_Branch_80EA; 80BC 10 2C                    .,
        jsr     MapInteractionSystem_Entry_81AE ; 80BE 20 AE 81                  ..
        jsr     MapInteractionSystem_Entry_8126 ; 80C1 20 26 81                  &.
        bcs     MapInteractionSystem_Branch_80F9; 80C4 B0 33                    .3
        ldx     $51                             ; 80C6 A6 51                    .Q
        ldy     $52                             ; 80C8 A4 52                    .R
        jsr     UpperFixedEngine_Entry_D3E6     ; 80CA 20 E6 D3                  ..
        and     #$1F                            ; 80CD 29 1F                    ).
        tax                                     ; 80CF AA                       .
        ldy     #$00                            ; 80D0 A0 00                    ..
        lda     $6F40,x                         ; 80D2 BD 40 6F                 .@o
        and     #$7F                            ; 80D5 29 7F                    ).
        cmp     #$27                            ; 80D7 C9 27                    .'
        beq     MapInteractionSystem_Branch_80E2; 80D9 F0 07                    ..
        dey                                     ; 80DB 88                       .
        cmp     #$17                            ; 80DC C9 17                    ..
        bne     MapInteractionSystem_Branch_80E5; 80DE D0 05                    ..
        iny                                     ; 80E0 C8                       .
        iny                                     ; 80E1 C8                       .
MapInteractionSystem_Branch_80E2:
        jsr     MapInteractionSystem_Entry_81B8 ; 80E2 20 B8 81                  ..
MapInteractionSystem_Branch_80E5:
        jsr     MapInteractionSystem_Entry_8126 ; 80E5 20 26 81                  &.
        bcs     MapInteractionSystem_Branch_80F9; 80E8 B0 0F                    ..
MapInteractionSystem_Branch_80EA:
        jsr     MapInteractionSystem_Entry_BAEA ; 80EA 20 EA BA                  ..
        bcc     MapInteractionSystem_Branch_80F2; 80ED 90 03                    ..
        jmp     MapInteractionSystem_Entry_84B6 ; 80EF 4C B6 84                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_80F2:
        lda     #$F0                            ; 80F2 A9 F0                    ..
        ldx     #$02                            ; 80F4 A2 02                    ..
        jmp     UpperFixedEngine_Entry_D1ED     ; 80F6 4C ED D1                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_80F9:
        stx     $059C                           ; 80F9 8E 9C 05                 ...
        lda     $70E0,x                         ; 80FC BD E0 70                 ..p
        bpl     MapInteractionSystem_Branch_8146; 80FF 10 45                    .E
MapInteractionSystem_Branch_8101:
        lda     $7000,x                         ; 8101 BD 00 70                 ..p
        sta     $51                             ; 8104 85 51                    .Q
        and     #$FC                            ; 8106 29 FC                    ).
        ora     $3D                             ; 8108 05 3D                    .=
        eor     #$02                            ; 810A 49 02                    I.
        sta     $7000,x                         ; 810C 9D 00 70                 ..p
        cmp     $51                             ; 810F C5 51                    .Q
        beq     MapInteractionSystem_Branch_8121; 8111 F0 0E                    ..
        txa                                     ; 8113 8A                       .
        pha                                     ; 8114 48                       H
        tya                                     ; 8115 98                       .
        pha                                     ; 8116 48                       H
        jsr     UpperFixedEngine_Entry_D7FC     ; 8117 20 FC D7                  ..
        jsr     WaitForNmi                      ; 811A 20 74 FF                  t.
        pla                                     ; 811D 68                       h
        tay                                     ; 811E A8                       .
        pla                                     ; 811F 68                       h
        tax                                     ; 8120 AA                       .
MapInteractionSystem_Branch_8121:
        txa                                     ; 8121 8A                       .
        brk                                     ; 8122 00                       .
        db   $0F,$5F                         ; 8123 0F 5F                    ._
; ----------------------------------------------------------------------------
        rts                                     ; 8125 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8126:
        ldx     #$06                            ; 8126 A2 06                    ..
MapInteractionSystem_Branch_8128:
        lda     $7020,x                         ; 8128 BD 20 70                 . p
        cmp     #$FF                            ; 812B C9 FF                    ..
        beq     MapInteractionSystem_Branch_8142; 812D F0 13                    ..
        lda     $6F60,x                         ; 812F BD 60 6F                 .`o
        cmp     $51                             ; 8132 C5 51                    .Q
        bne     MapInteractionSystem_Branch_813D; 8134 D0 07                    ..
        lda     $6F80,x                         ; 8136 BD 80 6F                 ..o
        cmp     $52                             ; 8139 C5 52                    .R
        beq     MapInteractionSystem_Branch_8144; 813B F0 07                    ..
MapInteractionSystem_Branch_813D:
        inx                                     ; 813D E8                       .
        cpx     #$20                            ; 813E E0 20                    .
        bcc     MapInteractionSystem_Branch_8128; 8140 90 E6                    ..
MapInteractionSystem_Branch_8142:
        clc                                     ; 8142 18                       .
        rts                                     ; 8143 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8144:
        sec                                     ; 8144 38                       8
        rts                                     ; 8145 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8146:
        tya                                     ; 8146 98                       .
        pha                                     ; 8147 48                       H
        txa                                     ; 8148 8A                       .
        pha                                     ; 8149 48                       H
        ldx     #$00                            ; 814A A2 00                    ..
MapInteractionSystem_Branch_814C:
        lda     $819E,x                         ; 814C BD 9E 81                 ...
        cmp     #$FF                            ; 814F C9 FF                    ..
        beq     MapInteractionSystem_Branch_8197; 8151 F0 44                    .D
        cmp     CurrentMapNumber                ; 8153 C5 63                    .c
        bne     MapInteractionSystem_Branch_818F; 8155 D0 38                    .8
        lda     $819F,x                         ; 8157 BD 9F 81                 ...
        cmp     CurrentSubmapNumber             ; 815A C5 64                    .d
        bne     MapInteractionSystem_Branch_818F; 815C D0 31                    .1
        pla                                     ; 815E 68                       h
        pha                                     ; 815F 48                       H
        cmp     $81A0,x                         ; 8160 DD A0 81                 ...
        bne     MapInteractionSystem_Branch_818F; 8163 D0 2A                    .*
        lda     SaveTimeOfDay                   ; 8165 AD ED 62                 ..b
        cmp     #$78                            ; 8168 C9 78                    .x
        lda     #$40                            ; 816A A9 40                    .@
        bcc     MapInteractionSystem_Branch_816F; 816C 90 01                    ..
        asl     a                               ; 816E 0A                       .
MapInteractionSystem_Branch_816F:
        and     $81A2,x                         ; 816F 3D A2 81                 =..
        beq     MapInteractionSystem_Branch_818F; 8172 F0 1B                    ..
        txa                                     ; 8174 8A                       .
        tay                                     ; 8175 A8                       .
        pla                                     ; 8176 68                       h
        tax                                     ; 8177 AA                       .
        lda     $81A1,y                         ; 8178 B9 A1 81                 ...
        tay                                     ; 817B A8                       .
        lda     $6FE0,y                         ; 817C B9 E0 6F                 ..o
        sta     $6FE0,x                         ; 817F 9D E0 6F                 ..o
        lda     $70E0,x                         ; 8182 BD E0 70                 ..p
        ora     #$80                            ; 8185 09 80                    ..
        sta     $70E0,x                         ; 8187 9D E0 70                 ..p
        pla                                     ; 818A 68                       h
        tay                                     ; 818B A8                       .
        jmp     MapInteractionSystem_Branch_8101; 818C 4C 01 81                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_818F:
        inx                                     ; 818F E8                       .
        inx                                     ; 8190 E8                       .
        inx                                     ; 8191 E8                       .
        inx                                     ; 8192 E8                       .
        inx                                     ; 8193 E8                       .
        jmp     MapInteractionSystem_Branch_814C; 8194 4C 4C 81                 LL.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8197:
        pla                                     ; 8197 68                       h
        tax                                     ; 8198 AA                       .
        pla                                     ; 8199 68                       h
        tay                                     ; 819A A8                       .
        jmp     MapInteractionSystem_Branch_8121; 819B 4C 21 81                 L!.
; ----------------------------------------------------------------------------
        db   $1F                             ; 819E 1F                       .
        db   $00                             ; 819F 00                       .
        db   $08                             ; 81A0 08                       .
        db   $09                             ; 81A1 09                       .
        db   $80,$16,$01,$06,$0B,$80,$0D,$00 ; 81A2 80 16 01 06 0B 80 0D 00  ........
        db   $07,$0B,$80,$FF                 ; 81AA 07 0B 80 FF              ....
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_81AE:
        lda     $6F60                           ; 81AE AD 60 6F                 .`o
        sta     $51                             ; 81B1 85 51                    .Q
        lda     $6F80                           ; 81B3 AD 80 6F                 ..o
        sta     $52                             ; 81B6 85 52                    .R
MapInteractionSystem_Entry_81B8:
        lda     $3D                             ; 81B8 A5 3D                    .=
        asl     a                               ; 81BA 0A                       .
        tax                                     ; 81BB AA                       .
        lda     $51                             ; 81BC A5 51                    .Q
        clc                                     ; 81BE 18                       .
        adc     $D239,x                         ; 81BF 7D 39 D2                 }9.
        sta     $51                             ; 81C2 85 51                    .Q
        lda     $52                             ; 81C4 A5 52                    .R
        clc                                     ; 81C6 18                       .
        adc     $D23A,x                         ; 81C7 7D 3A D2                 }:.
        sta     $52                             ; 81CA 85 52                    .R
        rts                                     ; 81CC 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_81CD:
        brk                                     ; 81CD 00                       .
        db   $0B,$2F                         ; 81CE 0B 2F                    ./
; ----------------------------------------------------------------------------
        rts                                     ; 81D0 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_81D1:
        brk                                     ; 81D1 00                       .
        db   $07,$6F,$07                     ; 81D2 07 6F 07                 .o.
; ----------------------------------------------------------------------------
        brk                                     ; 81D5 00                       .
        db   $07,$6F,$06                     ; 81D6 07 6F 06                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 81D9 C9 FF                    ..
        beq     MapInteractionSystem_Branch_823D; 81DB F0 60                    .`
        cmp     #$01                            ; 81DD C9 01                    ..
        beq     MapInteractionSystem_Branch_8240; 81DF F0 5F                    ._
        brk                                     ; 81E1 00                       .
        db   $07,$6F,$08                     ; 81E2 07 6F 08                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 81E5 C9 FF                    ..
        beq     MapInteractionSystem_Branch_823D; 81E7 F0 54                    .T
        sta     $07B9                           ; 81E9 8D B9 07                 ...
        lda     $07B9                           ; 81EC AD B9 07                 ...
        brk                                     ; 81EF 00                       .
        db   $37,$0F                         ; 81F0 37 0F                    7.
; ----------------------------------------------------------------------------
        bcs     MapInteractionSystem_Branch_81FB; 81F2 B0 07                    ..
        brk                                     ; 81F4 00                       .
        db   $09,$6F,$0B                     ; 81F5 09 6F 0B                 .o.
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_81FF; 81F8 4C FF 81                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_81FB:
        brk                                     ; 81FB 00                       .
        db   $09,$6F,$52                     ; 81FC 09 6F 52                 .oR
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_81FF:
        jsr     UpperFixedEngine_Entry_C8CC     ; 81FF 20 CC C8                  ..
        brk                                     ; 8202 00                       .
        db   $09,$6F,$09                     ; 8203 09 6F 09                 .o.
; ----------------------------------------------------------------------------
        brk                                     ; 8206 00                       .
        db   $09,$6F,$0A                     ; 8207 09 6F 0A                 .o.
; ----------------------------------------------------------------------------
        ldx     $07B9                           ; 820A AE B9 07                 ...
        brk                                     ; 820D 00                       .
        db   $2B,$53                         ; 820E 2B 53                    +S
; ----------------------------------------------------------------------------
        cmp     #$05                            ; 8210 C9 05                    ..
        bcc     MapInteractionSystem_Branch_821F; 8212 90 0B                    ..
        cmp     #$08                            ; 8214 C9 08                    ..
        bcc     MapInteractionSystem_Branch_823A; 8216 90 22                    ."
        lda     #$00                            ; 8218 A9 00                    ..
        brk                                     ; 821A 00                       .
        db   $3C,$73                         ; 821B 3C 73                    <s
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_823A; 821D F0 1B                    ..
MapInteractionSystem_Branch_821F:
        jsr     UpperFixedEngine_Entry_C8CC     ; 821F 20 CC C8                  ..
        brk                                     ; 8222 00                       .
        db   $85,$FB                         ; 8223 85 FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8225 00                       .
        db   $09,$6F,$0C                     ; 8226 09 6F 0C                 .o.
; ----------------------------------------------------------------------------
        ldx     $07B9                           ; 8229 AE B9 07                 ...
        brk                                     ; 822C 00                       .
        db   $2B,$53                         ; 822D 2B 53                    +S
; ----------------------------------------------------------------------------
        cmp     #$05                            ; 822F C9 05                    ..
        bcs     MapInteractionSystem_Branch_823A; 8231 B0 07                    ..
        jsr     UpperFixedEngine_Entry_C8CC     ; 8233 20 CC C8                  ..
        brk                                     ; 8236 00                       .
        db   $09,$6F,$0D                     ; 8237 09 6F 0D                 .o.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_823A:
        jmp     MapInteractionSystem_Entry_84B6 ; 823A 4C B6 84                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_823D:
        jmp     UpperFixedEngine_Entry_D1F3     ; 823D 4C F3 D1                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8240:
        brk                                     ; 8240 00                       .
        db   $07,$6F,$0E                     ; 8241 07 6F 0E                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 8244 C9 FF                    ..
        beq     MapInteractionSystem_Branch_825A; 8246 F0 12                    ..
        cmp     #$00                            ; 8248 C9 00                    ..
        beq     MapInteractionSystem_Branch_8253; 824A F0 07                    ..
        brk                                     ; 824C 00                       .
        db   $07,$6F,$11                     ; 824D 07 6F 11                 .o.
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Entry_84B6 ; 8250 4C B6 84                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8253:
        brk                                     ; 8253 00                       .
        db   $07,$6F,$10                     ; 8254 07 6F 10                 .o.
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Entry_84B6 ; 8257 4C B6 84                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_825A:
        jmp     UpperFixedEngine_Entry_D1F3     ; 825A 4C F3 D1                 L..
; ----------------------------------------------------------------------------
        db   $43,$06,$12,$00                 ; 825D 43 06 12 00              C...
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8261:
        brk                                     ; 8261 00                       .
        db   $14,$2F                         ; 8262 14 2F                    ./
; ----------------------------------------------------------------------------
        rts                                     ; 8264 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8265:
        brk                                     ; 8265 00                       .
        db   $07,$6F,$17                     ; 8266 07 6F 17                 .o.
; ----------------------------------------------------------------------------
        bmi     MapInteractionSystem_Branch_8292; 8269 30 27                    0'
        sta     $07B9                           ; 826B 8D B9 07                 ...
        tax                                     ; 826E AA                       .
        sta     $F9                             ; 826F 85 F9                    ..
        brk                                     ; 8271 00                       .
        db   $2B,$73                         ; 8272 2B 73                    +s
; ----------------------------------------------------------------------------
        cmp     #$08                            ; 8274 C9 08                    ..
        bcc     MapInteractionSystem_Branch_8282; 8276 90 0A                    ..
        brk                                     ; 8278 00                       .
        db   $07,$6F,$50                     ; 8279 07 6F 50                 .oP
; ----------------------------------------------------------------------------
        brk                                     ; 827C 00                       .
        db   $FB,$3B                         ; 827D FB 3B                    .;
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Entry_84B6 ; 827F 4C B6 84                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8282:
        brk                                     ; 8282 00                       .
        db   $07,$6F,$FD                     ; 8283 07 6F FD                 .o.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8286:
        brk                                     ; 8286 00                       .
        db   $09,$6F,$19                     ; 8287 09 6F 19                 .o.
; ----------------------------------------------------------------------------
        brk                                     ; 828A 00                       .
        db   $09,$6F,$1D                     ; 828B 09 6F 1D                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 828E C9 FF                    ..
        bne     MapInteractionSystem_Branch_8295; 8290 D0 03                    ..
MapInteractionSystem_Branch_8292:
        jmp     UpperFixedEngine_Entry_D1F3     ; 8292 4C F3 D1                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8295:
        ldx     $07B9                           ; 8295 AE B9 07                 ...
        brk                                     ; 8298 00                       .
        db   $33,$73                         ; 8299 33 73                    3s
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_8308 ; 829B 20 08 83                  ..
        bpl     MapInteractionSystem_Branch_82A8; 829E 10 08                    ..
        bcs     MapInteractionSystem_Branch_82A8; 82A0 B0 06                    ..
        jsr     MapInteractionSystem_Entry_832D ; 82A2 20 2D 83                  -.
        jmp     MapInteractionSystem_Branch_8286; 82A5 4C 86 82                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_82A8:
        brk                                     ; 82A8 00                       .
        db   $09,$6F,$19                     ; 82A9 09 6F 19                 .o.
; ----------------------------------------------------------------------------
        brk                                     ; 82AC 00                       .
        db   $09,$6F,$1C                     ; 82AD 09 6F 1C                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 82B0 C9 FF                    ..
        beq     MapInteractionSystem_Branch_8286; 82B2 F0 D2                    ..
        ldx     $07B9                           ; 82B4 AE B9 07                 ...
        brk                                     ; 82B7 00                       .
        db   $34,$73                         ; 82B8 34 73                    4s
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_8308 ; 82BA 20 08 83                  ..
        bpl     MapInteractionSystem_Branch_82C7; 82BD 10 08                    ..
        bcs     MapInteractionSystem_Branch_82C7; 82BF B0 06                    ..
        jsr     MapInteractionSystem_Entry_832D ; 82C1 20 2D 83                  -.
        jmp     MapInteractionSystem_Branch_82A8; 82C4 4C A8 82                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_82C7:
        brk                                     ; 82C7 00                       .
        db   $09,$6F,$19                     ; 82C8 09 6F 19                 .o.
; ----------------------------------------------------------------------------
        brk                                     ; 82CB 00                       .
        db   $09,$6F,$1B                     ; 82CC 09 6F 1B                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 82CF C9 FF                    ..
        beq     MapInteractionSystem_Branch_82A8; 82D1 F0 D5                    ..
        ldx     $07B9                           ; 82D3 AE B9 07                 ...
        brk                                     ; 82D6 00                       .
        db   $35,$73                         ; 82D7 35 73                    5s
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_8308 ; 82D9 20 08 83                  ..
        bpl     MapInteractionSystem_Branch_82E6; 82DC 10 08                    ..
        bcs     MapInteractionSystem_Branch_82E6; 82DE B0 06                    ..
        jsr     MapInteractionSystem_Entry_832D ; 82E0 20 2D 83                  -.
        jmp     MapInteractionSystem_Branch_82C7; 82E3 4C C7 82                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_82E6:
        brk                                     ; 82E6 00                       .
        db   $09,$6F,$19                     ; 82E7 09 6F 19                 .o.
; ----------------------------------------------------------------------------
        brk                                     ; 82EA 00                       .
        db   $09,$6F,$1A                     ; 82EB 09 6F 1A                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 82EE C9 FF                    ..
        beq     MapInteractionSystem_Branch_82C7; 82F0 F0 D5                    ..
        ldx     $07B9                           ; 82F2 AE B9 07                 ...
        brk                                     ; 82F5 00                       .
        db   $36,$73                         ; 82F6 36 73                    6s
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_8308 ; 82F8 20 08 83                  ..
        bpl     MapInteractionSystem_Branch_8305; 82FB 10 08                    ..
        bcs     MapInteractionSystem_Branch_8305; 82FD B0 06                    ..
        jsr     MapInteractionSystem_Entry_832D ; 82FF 20 2D 83                  -.
        jmp     MapInteractionSystem_Branch_82E6; 8302 4C E6 82                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8305:
        jmp     UpperFixedEngine_Entry_D1F3     ; 8305 4C F3 D1                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8308:
        php                                     ; 8308 08                       .
        pha                                     ; 8309 48                       H
        bmi     MapInteractionSystem_Branch_832A; 830A 30 1E                    0.
        php                                     ; 830C 08                       .
        and     #$7F                            ; 830D 29 7F                    ).
        sta     $F9                             ; 830F 85 F9                    ..
        brk                                     ; 8311 00                       .
        db   $12,$FB                         ; 8312 12 FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8314 00                       .
        db   $07,$6F,$50                     ; 8315 07 6F 50                 .oP
; ----------------------------------------------------------------------------
        ldx     #$02                            ; 8318 A2 02                    ..
        lda     #$EA                            ; 831A A9 EA                    ..
        plp                                     ; 831C 28                       (
        bcs     MapInteractionSystem_Branch_8321; 831D B0 02                    ..
        lda     #$DC                            ; 831F A9 DC                    ..
MapInteractionSystem_Branch_8321:
        brk                                     ; 8321 00                       .
        db   $04,$6F                         ; 8322 04 6F                    .o
; ----------------------------------------------------------------------------
        brk                                     ; 8324 00                       .
        db   $07,$9F                         ; 8325 07 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8327 00                       .
        db   $09,$9F                         ; 8328 09 9F                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_832A:
        pla                                     ; 832A 68                       h
        plp                                     ; 832B 28                       (
        rts                                     ; 832C 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_832D:
        and     #$7F                            ; 832D 29 7F                    ).
        sta     $FA                             ; 832F 85 FA                    ..
        lda     $07B9                           ; 8331 AD B9 07                 ...
        sta     $F9                             ; 8334 85 F9                    ..
        brk                                     ; 8336 00                       .
        db   $07,$6F,$50                     ; 8337 07 6F 50                 .oP
; ----------------------------------------------------------------------------
        brk                                     ; 833A 00                       .
        db   $5D,$3B                         ; 833B 5D 3B                    ];
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Entry_C8CC     ; 833D 4C CC C8                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8340:
        jmp     MapInteractionSystem_Entry_B3F3 ; 8340 4C F3 B3                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8343:
        jmp     MapInteractionSystem_Entry_B2A6 ; 8343 4C A6 B2                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8346:
        jsr     MapInteractionSystem_Entry_83D9 ; 8346 20 D9 83                  ..
        cmp     #$14                            ; 8349 C9 14                    ..
        bcc     MapInteractionSystem_Branch_835B; 834B 90 0E                    ..
        cmp     #$24                            ; 834D C9 24                    .$
        bcs     MapInteractionSystem_Branch_835B; 834F B0 0A                    ..
        pha                                     ; 8351 48                       H
        jsr     UpperFixedEngine_Entry_D1F3     ; 8352 20 F3 D1                  ..
        pla                                     ; 8355 68                       h
        jsr     MapInteractionSystem_Entry_835D ; 8356 20 5D 83                  ].
        sec                                     ; 8359 38                       8
        rts                                     ; 835A 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_835B:
        clc                                     ; 835B 18                       .
        rts                                     ; 835C 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_835D:
        brk                                     ; 835D 00                       .
        db   $12,$87                         ; 835E 12 87                    ..
; ----------------------------------------------------------------------------
        bcs     MapInteractionSystem_Branch_8383; 8360 B0 21                    .!
        pha                                     ; 8362 48                       H
        jsr     MapInteractionSystem_Entry_9E8C ; 8363 20 8C 9E                  ..
        jsr     MapInteractionSystem_Entry_83EC ; 8366 20 EC 83                  ..
        lda     $04                             ; 8369 A5 04                    ..
        sta     $6C0D,x                         ; 836B 9D 0D 6C                 ..l
        lda     $05                             ; 836E A5 05                    ..
        sta     $6C0C,x                         ; 8370 9D 0C 6C                 ..l
        lda     CurrentSubmapNumber             ; 8373 A5 64                    .d
        sta     $6C0E,x                         ; 8375 9D 0E 6C                 ..l
        pla                                     ; 8378 68                       h
        sta     $6C0F,x                         ; 8379 9D 0F 6C                 ..l
        brk                                     ; 837C 00                       .
        db   $90,$FB                         ; 837D 90 FB                    ..
; ----------------------------------------------------------------------------
        jsr     WaitForNmi                      ; 837F 20 74 FF                  t.
        rts                                     ; 8382 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8383:
        cmp     #$00                            ; 8383 C9 00                    ..
        beq     MapInteractionSystem_Branch_8392; 8385 F0 0B                    ..
        txa                                     ; 8387 8A                       .
        pha                                     ; 8388 48                       H
        brk                                     ; 8389 00                       .
        db   $A9,$FB                         ; 838A A9 FB                    ..
; ----------------------------------------------------------------------------
        pla                                     ; 838C 68                       h
        tax                                     ; 838D AA                       .
        brk                                     ; 838E 00                       .
        db   $03,$BF                         ; 838F 03 BF                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 8391 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8392:
        ldx     $51                             ; 8392 A6 51                    .Q
        ldy     $52                             ; 8394 A4 52                    .R
        lda     $53                             ; 8396 A5 53                    .S
        jsr     MapInteractionSystem_Entry_9E8C ; 8398 20 8C 9E                  ..
        ldx     $51                             ; 839B A6 51                    .Q
        inx                                     ; 839D E8                       .
        ldy     $52                             ; 839E A4 52                    .R
        lda     $53                             ; 83A0 A5 53                    .S
        jsr     MapInteractionSystem_Entry_9E8C ; 83A2 20 8C 9E                  ..
        ldx     $51                             ; 83A5 A6 51                    .Q
        ldy     $52                             ; 83A7 A4 52                    .R
        iny                                     ; 83A9 C8                       .
        lda     $53                             ; 83AA A5 53                    .S
        jsr     MapInteractionSystem_Entry_9E8C ; 83AC 20 8C 9E                  ..
        ldx     $51                             ; 83AF A6 51                    .Q
        ldy     $52                             ; 83B1 A4 52                    .R
        inx                                     ; 83B3 E8                       .
        iny                                     ; 83B4 C8                       .
        lda     $53                             ; 83B5 A5 53                    .S
        jsr     MapInteractionSystem_Entry_9E8C ; 83B7 20 8C 9E                  ..
        jsr     MapInteractionSystem_Entry_83EC ; 83BA 20 EC 83                  ..
        lda     $04                             ; 83BD A5 04                    ..
        sta     $6C0D,x                         ; 83BF 9D 0D 6C                 ..l
        lda     $05                             ; 83C2 A5 05                    ..
        sta     $6C0C,x                         ; 83C4 9D 0C 6C                 ..l
        lda     #$80                            ; 83C7 A9 80                    ..
        ora     CurrentSubmapNumber             ; 83C9 05 64                    .d
        sta     $6C0E,x                         ; 83CB 9D 0E 6C                 ..l
        lda     $53                             ; 83CE A5 53                    .S
        sta     $6C0F,x                         ; 83D0 9D 0F 6C                 ..l
        brk                                     ; 83D3 00                       .
        db   $90,$FB                         ; 83D4 90 FB                    ..
; ----------------------------------------------------------------------------
        jmp     WaitForNmi                      ; 83D6 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_83D9:
        jsr     MapInteractionSystem_Entry_81AE ; 83D9 20 AE 81                  ..
        ldx     $51                             ; 83DC A6 51                    .Q
        ldy     $52                             ; 83DE A4 52                    .R
        jsr     UpperFixedEngine_Entry_D3E6     ; 83E0 20 E6 D3                  ..
        and     #$1F                            ; 83E3 29 1F                    ).
        tax                                     ; 83E5 AA                       .
        lda     $6F40,x                         ; 83E6 BD 40 6F                 .@o
        and     #$7F                            ; 83E9 29 7F                    ).
        rts                                     ; 83EB 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_83EC:
        ldx     #$00                            ; 83EC A2 00                    ..
MapInteractionSystem_Branch_83EE:
        lda     $6C0C,x                         ; 83EE BD 0C 6C                 ..l
        cmp     #$FF                            ; 83F1 C9 FF                    ..
        beq     MapInteractionSystem_Branch_83FD; 83F3 F0 08                    ..
        inx                                     ; 83F5 E8                       .
        inx                                     ; 83F6 E8                       .
        inx                                     ; 83F7 E8                       .
        inx                                     ; 83F8 E8                       .
        cpx     #$A0                            ; 83F9 E0 A0                    ..
        bcc     MapInteractionSystem_Branch_83EE; 83FB 90 F1                    ..
MapInteractionSystem_Branch_83FD:
        rts                                     ; 83FD 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_83FE:
        brk                                     ; 83FE 00                       .
        db   $07,$6F,$1E                     ; 83FF 07 6F 1E                 .o.
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 8402 C9 FF                    ..
        bne     MapInteractionSystem_Branch_8409; 8404 D0 03                    ..
        jmp     MapInteractionSystem_Branch_84B9; 8406 4C B9 84                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8409:
        cmp     #$01                            ; 8409 C9 01                    ..
        bne     MapInteractionSystem_Branch_8410; 840B D0 03                    ..
        jmp     MapInteractionSystem_Branch_84A3; 840D 4C A3 84                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8410:
        jsr     MapInteractionSystem_Entry_84CC ; 8410 20 CC 84                  ..
        brk                                     ; 8413 00                       .
        db   $07,$6F,$26                     ; 8414 07 6F 26                 .o&
; ----------------------------------------------------------------------------
        brk                                     ; 8417 00                       .
        db   $07,$6F,$21                     ; 8418 07 6F 21                 .o!
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 841B C9 FF                    ..
        bne     MapInteractionSystem_Branch_8422; 841D D0 03                    ..
        jmp     MapInteractionSystem_Branch_8497; 841F 4C 97 84                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8422:
        cmp     #$F0                            ; 8422 C9 F0                    ..
        beq     MapInteractionSystem_Branch_8477; 8424 F0 51                    .Q
MapInteractionSystem_Branch_8426:
        jsr     MapInteractionSystem_Entry_84DB ; 8426 20 DB 84                  ..
        cmp     #$01                            ; 8429 C9 01                    ..
        beq     MapInteractionSystem_Branch_8473; 842B F0 46                    .F
        jsr     MapInteractionSystem_Entry_84CC ; 842D 20 CC 84                  ..
        brk                                     ; 8430 00                       .
        db   $07,$6F,$25                     ; 8431 07 6F 25                 .o%
; ----------------------------------------------------------------------------
        brk                                     ; 8434 00                       .
        db   $07,$6F,$21                     ; 8435 07 6F 21                 .o!
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 8438 C9 FF                    ..
        beq     MapInteractionSystem_Branch_8410; 843A F0 D4                    ..
        cmp     #$F0                            ; 843C C9 F0                    ..
        beq     MapInteractionSystem_Branch_8477; 843E F0 37                    .7
MapInteractionSystem_Branch_8440:
        jsr     MapInteractionSystem_Entry_84DB ; 8440 20 DB 84                  ..
        cmp     #$02                            ; 8443 C9 02                    ..
        beq     MapInteractionSystem_Branch_8473; 8445 F0 2C                    .,
        jsr     MapInteractionSystem_Entry_84CC ; 8447 20 CC 84                  ..
        brk                                     ; 844A 00                       .
        db   $07,$6F,$24                     ; 844B 07 6F 24                 .o$
; ----------------------------------------------------------------------------
        brk                                     ; 844E 00                       .
        db   $07,$6F,$21                     ; 844F 07 6F 21                 .o!
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 8452 C9 FF                    ..
        beq     MapInteractionSystem_Branch_8426; 8454 F0 D0                    ..
        cmp     #$F0                            ; 8456 C9 F0                    ..
        beq     MapInteractionSystem_Branch_8477; 8458 F0 1D                    ..
        jsr     MapInteractionSystem_Entry_84DB ; 845A 20 DB 84                  ..
        cmp     #$03                            ; 845D C9 03                    ..
        beq     MapInteractionSystem_Branch_8473; 845F F0 12                    ..
        jsr     MapInteractionSystem_Entry_84CC ; 8461 20 CC 84                  ..
        brk                                     ; 8464 00                       .
        db   $07,$6F,$23                     ; 8465 07 6F 23                 .o#
; ----------------------------------------------------------------------------
        brk                                     ; 8468 00                       .
        db   $07,$6F,$21                     ; 8469 07 6F 21                 .o!
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 846C C9 FF                    ..
        beq     MapInteractionSystem_Branch_8440; 846E F0 D0                    ..
        jsr     MapInteractionSystem_Entry_84CC ; 8470 20 CC 84                  ..
MapInteractionSystem_Branch_8473:
        brk                                     ; 8473 00                       .
        db   $07,$6F,$22                     ; 8474 07 6F 22                 .o"
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8477:
        brk                                     ; 8477 00                       .
        db   $5E,$33                         ; 8478 5E 33                    ^3
; ----------------------------------------------------------------------------
        ldx     #$05                            ; 847A A2 05                    ..
MapInteractionSystem_Branch_847C:
        lda     $6F60,x                         ; 847C BD 60 6F                 .`o
        sta     $6FA0,x                         ; 847F 9D A0 6F                 ..o
        lda     $6F80,x                         ; 8482 BD 80 6F                 ..o
        sta     $6FC0,x                         ; 8485 9D C0 6F                 ..o
        dex                                     ; 8488 CA                       .
        bpl     MapInteractionSystem_Branch_847C; 8489 10 F1                    ..
        jsr     MapInteractionSystem_Entry_97B8 ; 848B 20 B8 97                  ..
        brk                                     ; 848E 00                       .
        db   $0E,$DB,$EF                     ; 848F 0E DB EF                 ...
; ----------------------------------------------------------------------------
        lda     #$82                            ; 8492 A9 82                    ..
        jsr     MapInteractionSystem_Entry_84BC ; 8494 20 BC 84                  ..
MapInteractionSystem_Branch_8497:
        brk                                     ; 8497 00                       .
        db   $27,$0F                         ; 8498 27 0F                    '.
; ----------------------------------------------------------------------------
        brk                                     ; 849A 00                       .
        db   $09,$9F                         ; 849B 09 9F                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_A232 ; 849D 20 32 A2                  2.
        jmp     MapInteractionSystem_Entry_84B6 ; 84A0 4C B6 84                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_84A3:
        brk                                     ; 84A3 00                       .
        db   $07,$6F,$29                     ; 84A4 07 6F 29                 .o)
; ----------------------------------------------------------------------------
        brk                                     ; 84A7 00                       .
        db   $07,$6F,$27                     ; 84A8 07 6F 27                 .o'
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; 84AB C9 FF                    ..
        beq     MapInteractionSystem_Branch_84B9; 84AD F0 0A                    ..
        brk                                     ; 84AF 00                       .
        db   $4E,$73                         ; 84B0 4E 73                    Ns
; ----------------------------------------------------------------------------
        brk                                     ; 84B2 00                       .
        db   $07,$6F,$29                     ; 84B3 07 6F 29                 .o)
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_84B6:
        jsr     UpperFixedEngine_Entry_C8CC     ; 84B6 20 CC C8                  ..
MapInteractionSystem_Branch_84B9:
        jmp     UpperFixedEngine_Entry_D1F3     ; 84B9 4C F3 D1                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_84BC:
        sta     $0530                           ; 84BC 8D 30 05                 .0.
        ldx     #$01                            ; 84BF A2 01                    ..
        stx     $0531                           ; 84C1 8E 31 05                 .1.
        dex                                     ; 84C4 CA                       .
        stx     $0533                           ; 84C5 8E 33 05                 .3.
        stx     $0532                           ; 84C8 8E 32 05                 .2.
        rts                                     ; 84CB 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_84CC:
        ldx     #$02                            ; 84CC A2 02                    ..
        lda     $078A                           ; 84CE AD 8A 07                 ...
        cmp     #$1E                            ; 84D1 C9 1E                    ..
        beq     MapInteractionSystem_Branch_84D6; 84D3 F0 01                    ..
        dex                                     ; 84D5 CA                       .
MapInteractionSystem_Branch_84D6:
        brk                                     ; 84D6 00                       .
        db   $01,$6F,$FE                     ; 84D7 01 6F FE                 .o.
; ----------------------------------------------------------------------------
        rts                                     ; 84DA 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_84DB:
        brk                                     ; 84DB 00                       .
        db   $5D,$33                         ; 84DC 5D 33                    ]3
; ----------------------------------------------------------------------------
        bcc     MapInteractionSystem_Branch_84EB; 84DE 90 0B                    ..
        lda     SaveGameStateFlags              ; 84E0 AD 8E 61                 ..a
        and     #$07                            ; 84E3 29 07                    ).
        bne     MapInteractionSystem_Branch_84EB; 84E5 D0 04                    ..
        brk                                     ; 84E7 00                       .
        db   $62,$33                         ; 84E8 62 33                    b3
; ----------------------------------------------------------------------------
        rts                                     ; 84EA 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_84EB:
        brk                                     ; 84EB 00                       .
        db   $62,$23,$40                     ; 84EC 62 23 40                 b#@
; ----------------------------------------------------------------------------
        rts                                     ; 84EF 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_84F0:
        brk                                     ; 84F0 00                       .
        db   $58,$33                         ; 84F1 58 33                    X3
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_84F3:
        lda     $058E                           ; 84F3 AD 8E 05                 ...
        eor     #$03                            ; 84F6 49 03                    I.
        tax                                     ; 84F8 AA                       .
        inx                                     ; 84F9 E8                       .
        inx                                     ; 84FA E8                       .
        lda     #$03                            ; 84FB A9 03                    ..
        jsr     MapInteractionSystem_Entry_B157 ; 84FD 20 57 B1                  W.
MapInteractionSystem_Branch_8500:
        lda     #$03                            ; 8500 A9 03                    ..
        bcs     MapInteractionSystem_Branch_8524; 8502 B0 20                    .
        brk                                     ; 8504 00                       .
        db   $62,$23,$40                     ; 8505 62 23 40                 b#@
; ----------------------------------------------------------------------------
        cmp     #$03                            ; 8508 C9 03                    ..
        bcs     MapInteractionSystem_Branch_8500; 850A B0 F4                    ..
        cmp     #$02                            ; 850C C9 02                    ..
        lda     #$03                            ; 850E A9 03                    ..
        bcs     MapInteractionSystem_Branch_8524; 8510 B0 12                    ..
        txa                                     ; 8512 8A                       .
        pha                                     ; 8513 48                       H
        ldx     #$01                            ; 8514 A2 01                    ..
        jsr     MapInteractionSystem_Entry_AAFF ; 8516 20 FF AA                  ..
        pla                                     ; 8519 68                       h
        tax                                     ; 851A AA                       .
        lda     #$03                            ; 851B A9 03                    ..
        bcs     MapInteractionSystem_Branch_8524; 851D B0 05                    ..
        ldx     #$00                            ; 851F A2 00                    ..
        jmp     MapInteractionSystem_Entry_856E ; 8521 4C 6E 85                 Ln.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8524:
        asl     a                               ; 8524 0A                       .
        dex                                     ; 8525 CA                       .
        bne     MapInteractionSystem_Branch_8524; 8526 D0 FC                    ..
        sta     $55                             ; 8528 85 55                    .U
MapInteractionSystem_Branch_852A:
        jsr     MapInteractionSystem_Entry_8547 ; 852A 20 47 85                  G.
        lda     $41                             ; 852D A5 41                    .A
        bmi     MapInteractionSystem_Branch_8534; 852F 30 03                    0.
        jsr     UpperFixedEngine_Entry_D542     ; 8531 20 42 D5                  B.
MapInteractionSystem_Branch_8534:
        jsr     UpperFixedEngine_Entry_E06E     ; 8534 20 6E E0                  n.
        jsr     UpperFixedEngine_Entry_D7D5     ; 8537 20 D5 D7                  ..
        jsr     WaitForNmi                      ; 853A 20 74 FF                  t.
        jsr     UpperFixedEngine_Entry_CBB4     ; 853D 20 B4 CB                  ..
        inc     $3C                             ; 8540 E6 3C                    .<
        dec     $55                             ; 8542 C6 55                    .U
        bne     MapInteractionSystem_Branch_852A; 8544 D0 E4                    ..
        rts                                     ; 8546 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8547:
        lda     #$1E                            ; 8547 A9 1E                    ..
        ldx     $058E                           ; 8549 AE 8E 05                 ...
MapInteractionSystem_Branch_854C:
        lsr     a                               ; 854C 4A                       J
        dex                                     ; 854D CA                       .
        bne     MapInteractionSystem_Branch_854C; 854E D0 FC                    ..
        and     $3C                             ; 8550 25 3C                    %<
        bne     MapInteractionSystem_Branch_8576; 8552 D0 22                    ."
MapInteractionSystem_Entry_8554:
        jsr     FixedTrampoline05               ; 8554 20 10 C0                  ..
MapInteractionSystem_Entry_8557:
        jsr     FixedTrampoline02               ; 8557 20 07 C0                  ..
MapInteractionSystem_Entry_855A:
        lda     $058E                           ; 855A AD 8E 05                 ...
        eor     #$03                            ; 855D 49 03                    I.
        tax                                     ; 855F AA                       .
        inx                                     ; 8560 E8                       .
        inx                                     ; 8561 E8                       .
        lda     $55                             ; 8562 A5 55                    .U
        clc                                     ; 8564 18                       .
        adc     #$01                            ; 8565 69 01                    i.
MapInteractionSystem_Branch_8567:
        lsr     a                               ; 8567 4A                       J
        dex                                     ; 8568 CA                       .
        bne     MapInteractionSystem_Branch_8567; 8569 D0 FC                    ..
        eor     #$03                            ; 856B 49 03                    I.
        tax                                     ; 856D AA                       .
MapInteractionSystem_Entry_856E:
        lda     $7020,x                         ; 856E BD 20 70                 . p
        ora     #$80                            ; 8571 09 80                    ..
        sta     $7020,x                         ; 8573 9D 20 70                 . p
MapInteractionSystem_Branch_8576:
        rts                                     ; 8576 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8577:
        brk                                     ; 8577 00                       .
        db   $5A,$33                         ; 8578 5A 33                    Z3
; ----------------------------------------------------------------------------
        lda     #$02                            ; 857A A9 02                    ..
        sta     $0515                           ; 857C 8D 15 05                 ...
        lda     $62A5                           ; 857F AD A5 62                 ..b
        bmi     MapInteractionSystem_Branch_8587; 8582 30 03                    0.
        brk                                     ; 8584 00                       .
        db   $09,$9F                         ; 8585 09 9F                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8587:
        inc     $3C                             ; 8587 E6 3C                    .<
MapInteractionSystem_Entry_8589:
        jsr     FixedTrampoline02               ; 8589 20 07 C0                  ..
MapInteractionSystem_Entry_858C:
        jsr     FixedTrampoline06               ; 858C 20 13 C0                  ..
        ldx     #$00                            ; 858F A2 00                    ..
        jsr     MapInteractionSystem_Entry_856E ; 8591 20 6E 85                  n.
        jsr     MapInteractionSystem_Entry_84F3 ; 8594 20 F3 84                  ..
        jsr     MapInteractionSystem_Entry_85A4 ; 8597 20 A4 85                  ..
        dec     $3C                             ; 859A C6 3C                    .<
        dec     $3C                             ; 859C C6 3C                    .<
        lda     #$00                            ; 859E A9 00                    ..
        sta     $0597                           ; 85A0 8D 97 05                 ...
        rts                                     ; 85A3 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_85A4:
        jsr     WaitForNmi                      ; 85A4 20 74 FF                  t.
        lda     $7007                           ; 85A7 AD 07 70                 ..p
        and     #$FC                            ; 85AA 29 FC                    ).
        ora     #$80                            ; 85AC 09 80                    ..
        sta     $7007                           ; 85AE 8D 07 70                 ..p
        lda     $7008                           ; 85B1 AD 08 70                 ..p
        and     #$FC                            ; 85B4 29 FC                    ).
        ora     #$80                            ; 85B6 09 80                    ..
        sta     $7008                           ; 85B8 8D 08 70                 ..p
        lda     $7009                           ; 85BB AD 09 70                 ..p
        and     #$7C                            ; 85BE 29 7C                    )|
        sta     $7009                           ; 85C0 8D 09 70                 ..p
        lda     #$0A                            ; 85C3 A9 0A                    ..
        sta     $6FE9                           ; 85C5 8D E9 6F                 ..o
        lda     #$00                            ; 85C8 A9 00                    ..
        sta     $7029                           ; 85CA 8D 29 70                 .)p
        lda     #$00                            ; 85CD A9 00                    ..
        sta     $7169                           ; 85CF 8D 69 71                 .iq
        lda     #$0F                            ; 85D2 A9 0F                    ..
        sta     $060A                           ; 85D4 8D 0A 06                 ...
        lda     $62A5                           ; 85D7 AD A5 62                 ..b
        bmi     MapInteractionSystem_Branch_85DF; 85DA 30 03                    0.
        jsr     UpperFixedEngine_Entry_C5B9     ; 85DC 20 B9 C5                  ..
MapInteractionSystem_Branch_85DF:
        ldx     #$09                            ; 85DF A2 09                    ..
        jsr     UpperFixedEngine_Entry_D804     ; 85E1 20 04 D8                  ..
        lda     #$02                            ; 85E4 A9 02                    ..
        jsr     MapInteractionSystem_Entry_85EC ; 85E6 20 EC 85                  ..
        jmp     MapInteractionSystem_Entry_9C13 ; 85E9 4C 13 9C                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_85EC:
        pha                                     ; 85EC 48                       H
        lda     $058F                           ; 85ED AD 8F 05                 ...
        eor     #$30                            ; 85F0 49 30                    I0
        sta     $51                             ; 85F2 85 51                    .Q
        pla                                     ; 85F4 68                       h
MapInteractionSystem_Branch_85F5:
        pha                                     ; 85F5 48                       H
        jsr     UpperFixedEngine_Entry_E06E     ; 85F6 20 6E E0                  n.
        pla                                     ; 85F9 68                       h
        pha                                     ; 85FA 48                       H
        tax                                     ; 85FB AA                       .
        jsr     UpperFixedEngine_Entry_C90C     ; 85FC 20 0C C9                  ..
        pla                                     ; 85FF 68                       h
        dec     $51                             ; 8600 C6 51                    .Q
        bne     MapInteractionSystem_Branch_85F5; 8602 D0 F1                    ..
        ldx     #$02                            ; 8604 A2 02                    ..
MapInteractionSystem_Branch_8606:
        lda     $7007,x                         ; 8606 BD 07 70                 ..p
        and     #$7F                            ; 8609 29 7F                    ).
        sta     $7007,x                         ; 860B 9D 07 70                 ..p
        dex                                     ; 860E CA                       .
        bpl     MapInteractionSystem_Branch_8606; 860F 10 F5                    ..
        lda     #$0A                            ; 8611 A9 0A                    ..
        sta     $6FE9                           ; 8613 8D E9 6F                 ..o
        ldx     #$09                            ; 8616 A2 09                    ..
        jsr     UpperFixedEngine_Entry_D804     ; 8618 20 04 D8                  ..
        jmp     WaitForNmi                      ; 861B 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_861E:
        jsr     MapInteractionSystem_Entry_9C13 ; 861E 20 13 9C                  ..
        jsr     WaitForNmi                      ; 8621 20 74 FF                  t.
        lda     $7007                           ; 8624 AD 07 70                 ..p
        and     #$FC                            ; 8627 29 FC                    ).
        ora     #$82                            ; 8629 09 82                    ..
        sta     $7007                           ; 862B 8D 07 70                 ..p
        lda     $7008                           ; 862E AD 08 70                 ..p
        and     #$FC                            ; 8631 29 FC                    ).
        ora     #$82                            ; 8633 09 82                    ..
        sta     $7008                           ; 8635 8D 08 70                 ..p
        lda     $7009                           ; 8638 AD 09 70                 ..p
        and     #$7C                            ; 863B 29 7C                    )|
        sta     $7009                           ; 863D 8D 09 70                 ..p
        lda     #$0A                            ; 8640 A9 0A                    ..
        sta     $6FE9                           ; 8642 8D E9 6F                 ..o
        ldx     #$09                            ; 8645 A2 09                    ..
        jsr     UpperFixedEngine_Entry_D804     ; 8647 20 04 D8                  ..
        lda     #$01                            ; 864A A9 01                    ..
        jsr     MapInteractionSystem_Entry_85EC ; 864C 20 EC 85                  ..
        lda     #$FF                            ; 864F A9 FF                    ..
        sta     $7029                           ; 8651 8D 29 70                 .)p
        sta     $7009                           ; 8654 8D 09 70                 ..p
        lda     #$00                            ; 8657 A9 00                    ..
        sta     $7169                           ; 8659 8D 69 71                 .iq
        lda     $6FC7                           ; 865C AD C7 6F                 ..o
        sta     $6F87                           ; 865F 8D 87 6F                 ..o
        lda     $6FC8                           ; 8662 AD C8 6F                 ..o
        sta     $6F88                           ; 8665 8D 88 6F                 ..o
        lda     $62A5                           ; 8668 AD A5 62                 ..b
        bmi     MapInteractionSystem_Branch_8675; 866B 30 08                    0.
        lda     #$12                            ; 866D A9 12                    ..
        sta     $060A                           ; 866F 8D 0A 06                 ...
        jsr     UpperFixedEngine_Entry_C5B9     ; 8672 20 B9 C5                  ..
MapInteractionSystem_Branch_8675:
        rts                                     ; 8675 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8676:
        brk                                     ; 8676 00                       .
        db   $93,$FB                         ; 8677 93 FB                    ..
; ----------------------------------------------------------------------------
        lda     $058E                           ; 8679 AD 8E 05                 ...
        eor     #$03                            ; 867C 49 03                    I.
        tax                                     ; 867E AA                       .
        inx                                     ; 867F E8                       .
        inx                                     ; 8680 E8                       .
        lda     #$03                            ; 8681 A9 03                    ..
MapInteractionSystem_Branch_8683:
        asl     a                               ; 8683 0A                       .
        dex                                     ; 8684 CA                       .
        bne     MapInteractionSystem_Branch_8683; 8685 D0 FC                    ..
        clc                                     ; 8687 18                       .
        adc     #$04                            ; 8688 69 04                    i.
        sta     $55                             ; 868A 85 55                    .U
        lda     $0515                           ; 868C AD 15 05                 ...
        pha                                     ; 868F 48                       H
        lda     #$03                            ; 8690 A9 03                    ..
        sta     $0515                           ; 8692 8D 15 05                 ...
MapInteractionSystem_Branch_8695:
        jsr     MapInteractionSystem_Entry_86E6 ; 8695 20 E6 86                  ..
        jsr     MapInteractionSystem_Entry_86DD ; 8698 20 DD 86                  ..
        jsr     MapInteractionSystem_Entry_86DD ; 869B 20 DD 86                  ..
        jsr     WaitForNmi                      ; 869E 20 74 FF                  t.
        inc     $3C                             ; 86A1 E6 3C                    .<
        dec     $55                             ; 86A3 C6 55                    .U
        dec     $55                             ; 86A5 C6 55                    .U
        bne     MapInteractionSystem_Branch_8695; 86A7 D0 EC                    ..
        pla                                     ; 86A9 68                       h
        sta     $0515                           ; 86AA 8D 15 05                 ...
MapInteractionSystem_Entry_86AD:
        brk                                     ; 86AD 00                       .
        db   $2C,$2F                         ; 86AE 2C 2F                    ,/
; ----------------------------------------------------------------------------
        bcc     MapInteractionSystem_Branch_86D7; 86B0 90 25                    .%
        pha                                     ; 86B2 48                       H
        brk                                     ; 86B3 00                       .
        db   $01,$87                         ; 86B4 01 87                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; 86B6 20 C5 C5                  ..
        lda     CurrentMapNumber                ; 86B9 A5 63                    .c
        cmp     #$48                            ; 86BB C9 48                    .H
        bne     MapInteractionSystem_Branch_86CE; 86BD D0 0F                    ..
        lda     CurrentSubmapNumber             ; 86BF A5 64                    .d
        cmp     #$09                            ; 86C1 C9 09                    ..
        bne     MapInteractionSystem_Branch_86CE; 86C3 D0 09                    ..
        pla                                     ; 86C5 68                       h
        ora     #$80                            ; 86C6 09 80                    ..
        jsr     MapInteractionSystem_Entry_8EEA ; 86C8 20 EA 8E                  ..
        jmp     UpperFixedEngine_Entry_C5BF     ; 86CB 4C BF C5                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_86CE:
        pla                                     ; 86CE 68                       h
        ora     #$80                            ; 86CF 09 80                    ..
        jsr     MapInteractionSystem_Entry_8EEA ; 86D1 20 EA 8E                  ..
        jmp     MapInteractionSystem_Entry_8C48 ; 86D4 4C 48 8C                 LH.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_86D7:
        jsr     UpperFixedEngine_Entry_C5C5     ; 86D7 20 C5 C5                  ..
        jmp     MapInteractionSystem_Entry_92E3 ; 86DA 4C E3 92                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_86DD:
        jsr     UpperFixedEngine_Entry_E06E     ; 86DD 20 6E E0                  n.
        jsr     UpperFixedEngine_Entry_D7D5     ; 86E0 20 D5 D7                  ..
        jmp     UpperFixedEngine_Entry_CBB4     ; 86E3 4C B4 CB                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_86E6:
        lda     #$0E                            ; 86E6 A9 0E                    ..
        ldx     $058E                           ; 86E8 AE 8E 05                 ...
MapInteractionSystem_Branch_86EB:
        lsr     a                               ; 86EB 4A                       J
        dex                                     ; 86EC CA                       .
        bne     MapInteractionSystem_Branch_86EB; 86ED D0 FC                    ..
        and     $3C                             ; 86EF 25 3C                    %<
        bne     MapInteractionSystem_Branch_86FF; 86F1 D0 0C                    ..
MapInteractionSystem_Entry_86F3:
        jsr     FixedTrampoline05               ; 86F3 20 10 C0                  ..
MapInteractionSystem_Entry_86F6:
        jsr     FixedTrampoline02               ; 86F6 20 07 C0                  ..
        jsr     MapInteractionSystem_Entry_855A ; 86F9 20 5A 85                  Z.
MapInteractionSystem_Entry_86FC:
        jsr     FixedTrampoline06               ; 86FC 20 13 C0                  ..
MapInteractionSystem_Branch_86FF:
        rts                                     ; 86FF 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8700:
        jsr     WaitForNmi                      ; 8700 20 74 FF                  t.
        jsr     MapInteractionSystem_Entry_894A ; 8703 20 4A 89                  J.
        lda     CurrentMapNumber                ; 8706 A5 63                    .c
        cmp     #$45                            ; 8708 C9 45                    .E
        bne     MapInteractionSystem_Branch_8726; 870A D0 1A                    ..
        lda     CurrentSubmapNumber             ; 870C A5 64                    .d
        cmp     #$04                            ; 870E C9 04                    ..
        beq     MapInteractionSystem_Branch_871E; 8710 F0 0C                    ..
        cmp     #$06                            ; 8712 C9 06                    ..
        beq     MapInteractionSystem_Branch_871E; 8714 F0 08                    ..
        lda     $62AA                           ; 8716 AD AA 62                 ..b
        eor     #$02                            ; 8719 49 02                    I.
        jmp     MapInteractionSystem_Branch_8723; 871B 4C 23 87                 L#.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_871E:
        lda     $62AA                           ; 871E AD AA 62                 ..b
        eor     #$10                            ; 8721 49 10                    I.
MapInteractionSystem_Branch_8723:
        sta     $62AA                           ; 8723 8D AA 62                 ..b
MapInteractionSystem_Branch_8726:
        lda     $7E                             ; 8726 A5 7E                    .~
        pha                                     ; 8728 48                       H
        jsr     MapInteractionSystem_Entry_8A0D ; 8729 20 0D 8A                  ..
MapInteractionSystem_Entry_872C:
        jsr     FixedTrampoline07               ; 872C 20 16 C0                  ..
        clc                                     ; 872F 18                       .
MapInteractionSystem_Entry_8730:
        jsr     FixedTrampoline01               ; 8730 20 04 C0                  ..
        jsr     MapInteractionSystem_Entry_90EF ; 8733 20 EF 90                  ..
        lda     $7000                           ; 8736 AD 00 70                 ..p
        and     #$BC                            ; 8739 29 BC                    ).
        ora     #$02                            ; 873B 09 02                    ..
        jsr     MapInteractionSystem_Entry_AABB ; 873D 20 BB AA                  ..
        brk                                     ; 8740 00                       .
        db   $A1,$FB                         ; 8741 A1 FB                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_87AE ; 8743 20 AE 87                  ..
        brk                                     ; 8746 00                       .
        db   $0C,$BF                         ; 8747 0C BF                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5AF     ; 8749 20 AF C5                  ..
        lda     $28                             ; 874C A5 28                    .(
        brk                                     ; 874E 00                       .
        db   $02,$87                         ; 874F 02 87                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_A02E ; 8751 20 2E A0                  ..
        lda     $0572                           ; 8754 AD 72 05                 .r.
        brk                                     ; 8757 00                       .
        db   $11,$87                         ; 8758 11 87                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_A16B ; 875A 20 6B A1                  k.
        brk                                     ; 875D 00                       .
        db   $00,$CF                         ; 875E 00 CF                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8760 00                       .
        db   $08,$CF                         ; 8761 08 CF                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_8795 ; 8763 20 95 87                  ..
        brk                                     ; 8766 00                       .
        db   $03,$CF                         ; 8767 03 CF                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_E501     ; 8769 20 01 E5                  ..
        jsr     UpperFixedEngine_Entry_DFF1     ; 876C 20 F1 DF                  ..
        ldx     #$88                            ; 876F A2 88                    ..
        jsr     MapInteractionSystem_Entry_888A ; 8771 20 8A 88                  ..
        jsr     UpperFixedEngine_Entry_C58F     ; 8774 20 8F C5                  ..
        brk                                     ; 8777 00                       .
        db   $00,$E7                         ; 8778 00 E7                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 877A 00                       .
        db   $07,$87                         ; 877B 07 87                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5B9     ; 877D 20 B9 C5                  ..
        jsr     WaitForNmi                      ; 8780 20 74 FF                  t.
        pla                                     ; 8783 68                       h
        sta     $7E                             ; 8784 85 7E                    .~
        jsr     MapInteractionSystem_Entry_88A2 ; 8786 20 A2 88                  ..
        jsr     MapInteractionSystem_Entry_8A48 ; 8789 20 48 8A                  H.
        brk                                     ; 878C 00                       .
        db   $03,$CF                         ; 878D 03 CF                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_E501     ; 878F 20 01 E5                  ..
        jmp     UpperFixedEngine_Entry_DFF1     ; 8792 4C F1 DF                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8795:
        lda     $7F                             ; 8795 A5 7F                    ..
        bmi     MapInteractionSystem_Branch_87A2; 8797 30 09                    0.
        jsr     MapInteractionSystem_Entry_8A68 ; 8799 20 68 8A                  h.
        jsr     MapInteractionSystem_Entry_8A9A ; 879C 20 9A 8A                  ..
        jmp     MapInteractionSystem_Branch_87AD; 879F 4C AD 87                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_87A2:
        ldx     PlayerLocalX                    ; 87A2 A6 44                    .D
        ldy     PlayerLocalY                    ; 87A4 A4 45                    .E
        jsr     UpperFixedEngine_Entry_D3E6     ; 87A6 20 E6 D3                  ..
        and     #$E0                            ; 87A9 29 E0                    ).
        sta     $46                             ; 87AB 85 46                    .F
MapInteractionSystem_Branch_87AD:
        rts                                     ; 87AD 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_87AE:
        lda     #$02                            ; 87AE A9 02                    ..
        sta     $058E                           ; 87B0 8D 8E 05                 ...
        lda     #$20                            ; 87B3 A9 20                    .
        sta     $058F                           ; 87B5 8D 8F 05                 ...
        lda     #$F2                            ; 87B8 A9 F2                    ..
        sta     $7B                             ; 87BA 85 7B                    .{
        ldx     #$78                            ; 87BC A2 78                    .x
MapInteractionSystem_Branch_87BE:
        jsr     MapInteractionSystem_Entry_8870 ; 87BE 20 70 88                  p.
        txa                                     ; 87C1 8A                       .
        pha                                     ; 87C2 48                       H
        jsr     MapInteractionSystem_Entry_880C ; 87C3 20 0C 88                  ..
        jsr     MapInteractionSystem_Entry_8928 ; 87C6 20 28 89                  (.
        pla                                     ; 87C9 68                       h
        pha                                     ; 87CA 48                       H
        jsr     MapInteractionSystem_Entry_87D7 ; 87CB 20 D7 87                  ..
        jsr     UpperFixedEngine_Entry_C62D     ; 87CE 20 2D C6                  -.
        pla                                     ; 87D1 68                       h
        tax                                     ; 87D2 AA                       .
        dex                                     ; 87D3 CA                       .
        bne     MapInteractionSystem_Branch_87BE; 87D4 D0 E8                    ..
        rts                                     ; 87D6 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_87D7:
        cmp     #$59                            ; 87D7 C9 59                    .Y
        bcc     MapInteractionSystem_Branch_87FB; 87D9 90 20                    .
        sbc     #$59                            ; 87DB E9 59                    .Y
        lsr     a                               ; 87DD 4A                       J
        tax                                     ; 87DE AA                       .
        lda     $87FC,x                         ; 87DF BD FC 87                 ...
        clc                                     ; 87E2 18                       .
        adc     $0508                           ; 87E3 6D 08 05                 m..
        sta     $0508                           ; 87E6 8D 08 05                 ...
        ldy     #$00                            ; 87E9 A0 00                    ..
MapInteractionSystem_Branch_87EB:
        lda     $0203,y                         ; 87EB B9 03 02                 ...
        sec                                     ; 87EE 38                       8
        sbc     $87FC,x                         ; 87EF FD FC 87                 ...
        sta     $0203,y                         ; 87F2 99 03 02                 ...
        iny                                     ; 87F5 C8                       .
        iny                                     ; 87F6 C8                       .
        iny                                     ; 87F7 C8                       .
        iny                                     ; 87F8 C8                       .
        bne     MapInteractionSystem_Branch_87EB; 87F9 D0 F0                    ..
MapInteractionSystem_Branch_87FB:
        rts                                     ; 87FB 60                       `
; ----------------------------------------------------------------------------
        db   $FF,$01,$FF,$01,$FF,$01,$FE,$02 ; 87FC FF 01 FF 01 FF 01 FE 02  ........
        db   $FE,$02,$FD,$03,$FC,$04,$FB,$05 ; 8804 FE 02 FD 03 FC 04 FB 05  ........
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_880C:
        lda     $0509                           ; 880C AD 09 05                 ...
        and     #$07                            ; 880F 29 07                    ).
        cmp     #$02                            ; 8811 C9 02                    ..
        bcc     MapInteractionSystem_Branch_8816; 8813 90 01                    ..
        rts                                     ; 8815 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8816:
        lda     #$00                            ; 8816 A9 00                    ..
        sta     $00                           ; 8818 85 00                    ..
        lda     #$1D                            ; 881A A9 1D                    ..
        sta     $01                             ; 881C 85 01                    ..
        jsr     UpperFixedEngine_Entry_C662     ; 881E 20 62 C6                  b.
        ldx     $050A                           ; 8821 AE 0A 05                 ...
        lda     $1C                             ; 8824 A5 1C                    ..
        ora     #$80                            ; 8826 09 80                    ..
        sta     $0300,x                         ; 8828 9D 00 03                 ...
        lda     $1D                             ; 882B A5 1D                    ..
        sta     NextTextCharacter,x             ; 882D 9D 02 03                 ...
        and     #$1E                            ; 8830 29 1E                    ).
        pha                                     ; 8832 48                       H
        sta     $0301,x                         ; 8833 9D 01 03                 ...
        lda     #$20                            ; 8836 A9 20                    .
        sec                                     ; 8838 38                       8
        sbc     $0301,x                         ; 8839 FD 01 03                 ...
        sta     $0301,x                         ; 883C 9D 01 03                 ...
        tay                                     ; 883F A8                       .
        lda     #$00                            ; 8840 A9 00                    ..
MapInteractionSystem_Branch_8842:
        sta     $0303,x                         ; 8842 9D 03 03                 ...
        inx                                     ; 8845 E8                       .
        dey                                     ; 8846 88                       .
        bne     MapInteractionSystem_Branch_8842; 8847 D0 F9                    ..
        lda     $1C                             ; 8849 A5 1C                    ..
        eor     #$04                            ; 884B 49 04                    I.
        ora     #$80                            ; 884D 09 80                    ..
        sta     $0303,x                         ; 884F 9D 03 03                 ...
        pla                                     ; 8852 68                       h
        tay                                     ; 8853 A8                       .
        sta     $0304,x                         ; 8854 9D 04 03                 ...
        beq     MapInteractionSystem_Branch_886C; 8857 F0 13                    ..
        lda     $1D                             ; 8859 A5 1D                    ..
        and     #$E0                            ; 885B 29 E0                    ).
        sta     $0305,x                         ; 885D 9D 05 03                 ...
        lda     #$00                            ; 8860 A9 00                    ..
MapInteractionSystem_Branch_8862:
        sta     $0306,x                         ; 8862 9D 06 03                 ...
        inx                                     ; 8865 E8                       .
        dey                                     ; 8866 88                       .
        bne     MapInteractionSystem_Branch_8862; 8867 D0 F9                    ..
        inc     $050B                           ; 8869 EE 0B 05                 ...
MapInteractionSystem_Branch_886C:
        inc     $050B                           ; 886C EE 0B 05                 ...
        rts                                     ; 886F 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8870:
        lda     $0509                           ; 8870 AD 09 05                 ...
        tay                                     ; 8873 A8                       .
        sec                                     ; 8874 38                       8
        sbc     $7E                             ; 8875 E5 7E                    .~
        cmp     #$F0                            ; 8877 C9 F0                    ..
        bcc     MapInteractionSystem_Branch_8886; 8879 90 0B                    ..
        cpy     #$80                            ; 887B C0 80                    ..
        bcs     MapInteractionSystem_Branch_8884; 887D B0 05                    ..
        sbc     #$0F                            ; 887F E9 0F                    ..
        jmp     MapInteractionSystem_Branch_8886; 8881 4C 86 88                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8884:
        adc     #$0F                            ; 8884 69 0F                    i.
MapInteractionSystem_Branch_8886:
        sta     $0509                           ; 8886 8D 09 05                 ...
        rts                                     ; 8889 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_888A:
        stx     $7D                             ; 888A 86 7D                    .}
        ldx     #$00                            ; 888C A2 00                    ..
MapInteractionSystem_Branch_888E:
        lda     $0200,x                         ; 888E BD 00 02                 ...
        cmp     #$F7                            ; 8891 C9 F7                    ..
        beq     MapInteractionSystem_Branch_889B; 8893 F0 06                    ..
        clc                                     ; 8895 18                       .
        adc     $7D                             ; 8896 65 7D                    e}
        sta     $0200,x                         ; 8898 9D 00 02                 ...
MapInteractionSystem_Branch_889B:
        inx                                     ; 889B E8                       .
        inx                                     ; 889C E8                       .
        inx                                     ; 889D E8                       .
        inx                                     ; 889E E8                       .
        bne     MapInteractionSystem_Branch_888E; 889F D0 ED                    ..
        rts                                     ; 88A1 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_88A2:
        lda     #$FF                            ; 88A2 A9 FF                    ..
        sta     $7B                             ; 88A4 85 7B                    .{
        lda     PlayerLocalY                    ; 88A6 A5 45                    .E
        ldx     $7E                             ; 88A8 A6 7E                    .~
        bpl     MapInteractionSystem_Branch_88B2; 88AA 10 06                    ..
        sec                                     ; 88AC 38                       8
        sbc     #$10                            ; 88AD E9 10                    ..
        jmp     MapInteractionSystem_Branch_88B5; 88AF 4C B5 88                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_88B2:
        clc                                     ; 88B2 18                       .
        adc     #$10                            ; 88B3 69 10                    i.
MapInteractionSystem_Branch_88B5:
        sta     PlayerLocalY                    ; 88B5 85 45                    .E
        lda     #$10                            ; 88B7 A9 10                    ..
        sta     $7C                             ; 88B9 85 7C                    .|
MapInteractionSystem_Branch_88BB:
        ldx     PlayerLocalY                    ; 88BB A6 45                    .E
        dex                                     ; 88BD CA                       .
        lda     $7E                             ; 88BE A5 7E                    .~
        bpl     MapInteractionSystem_Branch_88C4; 88C0 10 02                    ..
        inx                                     ; 88C2 E8                       .
        inx                                     ; 88C3 E8                       .
MapInteractionSystem_Branch_88C4:
        stx     PlayerLocalY                    ; 88C4 86 45                    .E
        jsr     MapInteractionSystem_Entry_88EE ; 88C6 20 EE 88                  ..
        dec     $7C                             ; 88C9 C6 7C                    .|
        beq     MapInteractionSystem_Branch_88ED; 88CB F0 20                    .
        lda     $7C                             ; 88CD A5 7C                    .|
        cmp     #$03                            ; 88CF C9 03                    ..
        bne     MapInteractionSystem_Branch_88BB; 88D1 D0 E8                    ..
        brk                                     ; 88D3 00                       .
        db   $A3,$FB                         ; 88D4 A3 FB                    ..
; ----------------------------------------------------------------------------
        lda     #$01                            ; 88D6 A9 01                    ..
        sta     $058E                           ; 88D8 8D 8E 05                 ...
        lda     #$10                            ; 88DB A9 10                    ..
        sta     $058F                           ; 88DD 8D 8F 05                 ...
        ldx     #$01                            ; 88E0 A2 01                    ..
        lda     $7E                             ; 88E2 A5 7E                    .~
        bpl     MapInteractionSystem_Branch_88E8; 88E4 10 02                    ..
        ldx     #$FF                            ; 88E6 A2 FF                    ..
MapInteractionSystem_Branch_88E8:
        stx     $7E                             ; 88E8 86 7E                    .~
        jmp     MapInteractionSystem_Branch_88BB; 88EA 4C BB 88                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_88ED:
        rts                                     ; 88ED 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_88EE:
        lda     #$10                            ; 88EE A9 10                    ..
        sta     $3E                             ; 88F0 85 3E                    .>
        lda     $058E                           ; 88F2 AD 8E 05                 ...
        eor     #$03                            ; 88F5 49 03                    I.
        asl     a                               ; 88F7 0A                       .
        asl     a                               ; 88F8 0A                       .
        asl     a                               ; 88F9 0A                       .
        tax                                     ; 88FA AA                       .
MapInteractionSystem_Branch_88FB:
        txa                                     ; 88FB 8A                       .
        pha                                     ; 88FC 48                       H
        ldy     #$07                            ; 88FD A0 07                    ..
        lda     $7E                             ; 88FF A5 7E                    .~
        bpl     MapInteractionSystem_Branch_8904; 8901 10 01                    ..
        iny                                     ; 8903 C8                       .
MapInteractionSystem_Branch_8904:
        cpy     $7C                             ; 8904 C4 7C                    .|
        bcc     MapInteractionSystem_Entry_891C ; 8906 90 14                    ..
        cpy     $7C                             ; 8908 C4 7C                    .|
        bne     MapInteractionSystem_Branch_8919; 890A D0 0D                    ..
        cpx     #$08                            ; 890C E0 08                    ..
        bne     MapInteractionSystem_Branch_8919; 890E D0 09                    ..
        lda     $7E                             ; 8910 A5 7E                    .~
        bpl     MapInteractionSystem_Branch_8916; 8912 10 02                    ..
        ldx     #$F8                            ; 8914 A2 F8                    ..
MapInteractionSystem_Branch_8916:
        jsr     MapInteractionSystem_Entry_888A ; 8916 20 8A 88                  ..
MapInteractionSystem_Branch_8919:
        jsr     MapInteractionSystem_Entry_8928 ; 8919 20 28 89                  (.
MapInteractionSystem_Entry_891C:
        jsr     FixedTrampoline00               ; 891C 20 01 C0                  ..
        jsr     WaitForNmi                      ; 891F 20 74 FF                  t.
        pla                                     ; 8922 68                       h
        tax                                     ; 8923 AA                       .
        dex                                     ; 8924 CA                       .
        bne     MapInteractionSystem_Branch_88FB; 8925 D0 D4                    ..
        rts                                     ; 8927 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8928:
        ldx     #$00                            ; 8928 A2 00                    ..
MapInteractionSystem_Branch_892A:
        lda     $0200,x                         ; 892A BD 00 02                 ...
        cmp     #$F7                            ; 892D C9 F7                    ..
        beq     MapInteractionSystem_Branch_8943; 892F F0 12                    ..
        clc                                     ; 8931 18                       .
        adc     $7E                             ; 8932 65 7E                    e~
        cmp     $7B                             ; 8934 C5 7B                    .{
        beq     MapInteractionSystem_Branch_8940; 8936 F0 08                    ..
        bcc     MapInteractionSystem_Branch_8940; 8938 90 06                    ..
        cmp     #$FE                            ; 893A C9 FE                    ..
        bcs     MapInteractionSystem_Branch_8940; 893C B0 02                    ..
        sbc     $7E                             ; 893E E5 7E                    .~
MapInteractionSystem_Branch_8940:
        sta     $0200,x                         ; 8940 9D 00 02                 ...
MapInteractionSystem_Branch_8943:
        inx                                     ; 8943 E8                       .
        inx                                     ; 8944 E8                       .
        inx                                     ; 8945 E8                       .
        inx                                     ; 8946 E8                       .
        bne     MapInteractionSystem_Branch_892A; 8947 D0 E1                    ..
        rts                                     ; 8949 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_894A:
        ldx     #$00                            ; 894A A2 00                    ..
MapInteractionSystem_Branch_894C:
        lda     Bank1E_MapTransitionPointers,x  ; 894C BD C8 89                 ...
        cmp     #$FF                            ; 894F C9 FF                    ..
        beq     MapInteractionSystem_Branch_895D; 8951 F0 0A                    ..
        cmp     CurrentMapNumber                ; 8953 C5 63                    .c
        beq     MapInteractionSystem_Branch_8960; 8955 F0 09                    ..
        inx                                     ; 8957 E8                       .
        inx                                     ; 8958 E8                       .
        inx                                     ; 8959 E8                       .
        jmp     MapInteractionSystem_Branch_894C; 895A 4C 4C 89                 LL.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_895D:
        jmp     MapInteractionSystem_Branch_895D; 895D 4C 5D 89                 L].
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8960:
        lda     $89C9,x                         ; 8960 BD C9 89                 ...
        sta     $49                             ; 8963 85 49                    .I
        lda     $89CA,x                         ; 8965 BD CA 89                 ...
        sta     $4A                             ; 8968 85 4A                    .J
MapInteractionSystem_Branch_896A:
        ldy     #$00                            ; 896A A0 00                    ..
        ldx     #$04                            ; 896C A2 04                    ..
        jsr     MapInteractionSystem_Entry_8986 ; 896E 20 86 89                  ..
        ldy     #$04                            ; 8971 A0 04                    ..
        ldx     #$00                            ; 8973 A2 00                    ..
        jsr     MapInteractionSystem_Entry_8986 ; 8975 20 86 89                  ..
        lda     $49                             ; 8978 A5 49                    .I
        clc                                     ; 897A 18                       .
        adc     #$08                            ; 897B 69 08                    i.
        sta     $49                             ; 897D 85 49                    .I
        bcc     MapInteractionSystem_Branch_896A; 897F 90 E9                    ..
        inc     $4A                             ; 8981 E6 4A                    .J
        jmp     MapInteractionSystem_Branch_896A; 8983 4C 6A 89                 Lj.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8986:
        lda     ($49),y                         ; 8986 B1 49                    .I
        cmp     #$FF                            ; 8988 C9 FF                    ..
        beq     MapInteractionSystem_Branch_895D; 898A F0 D1                    ..
        cmp     CurrentSubmapNumber             ; 898C C5 64                    .d
        bne     MapInteractionSystem_Branch_89C4; 898E D0 34                    .4
        iny                                     ; 8990 C8                       .
        lda     ($49),y                         ; 8991 B1 49                    .I
        cmp     PlayerLocalX                    ; 8993 C5 44                    .D
        bne     MapInteractionSystem_Branch_89C4; 8995 D0 2D                    .-
        iny                                     ; 8997 C8                       .
        lda     ($49),y                         ; 8998 B1 49                    .I
        cmp     PlayerLocalY                    ; 899A C5 45                    .E
        bne     MapInteractionSystem_Branch_89C4; 899C D0 26                    .&
        txa                                     ; 899E 8A                       .
        tay                                     ; 899F A8                       .
        lda     ($49),y                         ; 89A0 B1 49                    .I
        sta     CurrentSubmapNumber             ; 89A2 85 64                    .d
        iny                                     ; 89A4 C8                       .
        lda     ($49),y                         ; 89A5 B1 49                    .I
        sta     PlayerLocalX                    ; 89A7 85 44                    .D
        iny                                     ; 89A9 C8                       .
        lda     ($49),y                         ; 89AA B1 49                    .I
        sta     PlayerLocalY                    ; 89AC 85 45                    .E
        iny                                     ; 89AE C8                       .
        lda     ($49),y                         ; 89AF B1 49                    .I
        sta     $7F                             ; 89B1 85 7F                    ..
        pla                                     ; 89B3 68                       h
        pla                                     ; 89B4 68                       h
        txa                                     ; 89B5 8A                       .
        beq     MapInteractionSystem_Branch_89BA; 89B6 F0 02                    ..
        dex                                     ; 89B8 CA                       .
        dex                                     ; 89B9 CA                       .
MapInteractionSystem_Branch_89BA:
        lda     Bank1E_MapTransitionDirections,x; 89BA BD C5 89                 ...
        sta     $7E                             ; 89BD 85 7E                    .~
        txa                                     ; 89BF 8A                       .
        eor     #$02                            ; 89C0 49 02                    I.
        sta     $3D                             ; 89C2 85 3D                    .=
MapInteractionSystem_Branch_89C4:
        rts                                     ; 89C4 60                       `
; ----------------------------------------------------------------------------
Bank1E_MapTransitionDirections:
        db   $FE,$00,$02                     ; 89C5 FE 00 02                 ...
Bank1E_MapTransitionPointers:
        db   $31                             ; 89C8 31                       1
        db   $D2                             ; 89C9 D2                       .
        db   $89,$47,$F3,$89,$45,$FC,$89,$FF ; 89CA 89 47 F3 89 45 FC 89 FF  .G..E...
Bank1E_MapTransitionRecords:
        db   $00,$15,$02,$FF,$01,$17,$02,$FF ; 89D2 00 15 02 FF 01 17 02 FF  ........
        db   $01,$02,$0C,$FF,$03,$02,$04,$FF ; 89DA 01 02 0C FF 03 02 04 FF  ........
        db   $01,$0B,$1A,$FF,$02,$05,$04,$FF ; 89E2 01 0B 1A FF 02 05 04 FF  ........
        db   $02,$12,$05,$FF,$03,$16,$1D,$FF ; 89EA 02 12 05 FF 03 16 1D FF  ........
        db   $FF,$00,$2B,$03,$01,$00,$1F,$03 ; 89F2 FF 00 2B 03 01 00 1F 03  ..+.....
        db   $00,$FF,$04,$26,$17,$02,$06,$09 ; 89FA 00 FF 04 26 17 02 06 09  ...&....
        db   $0D,$03,$05,$1D,$11,$04,$07,$0A ; 8A02 0D 03 05 1D 11 04 07 0A  ........
        db   $03,$05,$FF                     ; 8A0A 03 05 FF                 ...
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8A0D:
        lda     $7F                             ; 8A0D A5 7F                    ..
        bmi     MapInteractionSystem_Branch_8A23; 8A0F 30 12                    0.
        jsr     MapInteractionSystem_Entry_8A68 ; 8A11 20 68 8A                  h.
        jsr     MapInteractionSystem_Entry_8A9A ; 8A14 20 9A 8A                  ..
        jsr     UpperFixedEngine_Entry_DFF1     ; 8A17 20 F1 DF                  ..
        jsr     WaitForNmi                      ; 8A1A 20 74 FF                  t.
        jsr     MapInteractionSystem_Entry_A84C ; 8A1D 20 4C A8                  L.
        jsr     MapInteractionSystem_Entry_A800 ; 8A20 20 00 A8                  ..
MapInteractionSystem_Branch_8A23:
        rts                                     ; 8A23 60                       `
; ----------------------------------------------------------------------------
Bank1E_MapTransitionDisplayRecords:
        db   $80                             ; 8A24 80                       .
        db   $06                             ; 8A25 06                       .
        db   $05                             ; 8A26 05                       .
        db   $63                             ; 8A27 63                       c
        db   $78,$80,$06,$05,$6F,$78,$80,$06 ; 8A28 78 80 06 05 6F 78 80 06  x...ox..
        db   $05,$27,$7C,$80,$06,$05,$20,$7A ; 8A30 05 27 7C 80 06 05 20 7A  .'|... z
        db   $80,$06,$05,$F9,$79,$80,$06,$05 ; 8A38 80 06 05 F9 79 80 06 05  ....y...
        db   $26,$78                         ; 8A40 26 78                    &x
Bank1E_MapTransitionDisplayMasks:
        db   $60,$40,$20,$20,$20,$20         ; 8A42 60 40 20 20 20 20        `@
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8A48:
        lda     $7F                             ; 8A48 A5 7F                    ..
        bmi     MapInteractionSystem_Branch_8A23; 8A4A 30 D7                    0.
        jsr     MapInteractionSystem_Entry_8A68 ; 8A4C 20 68 8A                  h.
        ldy     $7F                             ; 8A4F A4 7F                    ..
        lda     Bank1E_MapTransitionDisplayMasks,y; 8A51 B9 42 8A               .B.
        sta     $46                             ; 8A54 85 46                    .F
        sta     $57                             ; 8A56 85 57                    .W
        jsr     MapInteractionSystem_Entry_8A9A ; 8A58 20 9A 8A                  ..
        jsr     MapInteractionSystem_Entry_A814 ; 8A5B 20 14 A8                  ..
        jsr     MapInteractionSystem_Entry_A829 ; 8A5E 20 29 A8                  ).
        jsr     MapInteractionSystem_Entry_A846 ; 8A61 20 46 A8                  F.
        jsr     MapInteractionSystem_Entry_A800 ; 8A64 20 00 A8                  ..
        rts                                     ; 8A67 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8A68:
        asl     a                               ; 8A68 0A                       .
        asl     a                               ; 8A69 0A                       .
        clc                                     ; 8A6A 18                       .
        adc     $7F                             ; 8A6B 65 7F                    e.
        tax                                     ; 8A6D AA                       .
        lda     Bank1E_MapTransitionDisplayRecords,x; 8A6E BD 24 8A             .$.
        sta     $46                             ; 8A71 85 46                    .F
        sta     $57                             ; 8A73 85 57                    .W
        sta     $7140                           ; 8A75 8D 40 71                 .@q
        sta     $7141                           ; 8A78 8D 41 71                 .Aq
        sta     $7142                           ; 8A7B 8D 42 71                 .Bq
        sta     $7143                           ; 8A7E 8D 43 71                 .Cq
        lda     #$00                            ; 8A81 A9 00                    ..
        sta     $47                             ; 8A83 85 47                    .G
        lda     $8A25,x                         ; 8A85 BD 25 8A                 .%.
        sta     $03                             ; 8A88 85 03                    ..
        lda     $8A26,x                         ; 8A8A BD 26 8A                 .&.
        sta     $04                             ; 8A8D 85 04                    ..
        lda     $8A27,x                         ; 8A8F BD 27 8A                 .'.
        sta     $07                             ; 8A92 85 07                    ..
        lda     $8A28,x                         ; 8A94 BD 28 8A                 .(.
        sta     $08                             ; 8A97 85 08                    ..
        rts                                     ; 8A99 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8A9A:
        ldy     #$00                            ; 8A9A A0 00                    ..
        ldx     $03                             ; 8A9C A6 03                    ..
MapInteractionSystem_Branch_8A9E:
        lda     ($07),y                         ; 8A9E B1 07                    ..
        and     #$1F                            ; 8AA0 29 1F                    ).
        sta     ($07),y                         ; 8AA2 91 07                    ..
        lda     $57                             ; 8AA4 A5 57                    .W
        ora     ($07),y                         ; 8AA6 11 07                    ..
        sta     ($07),y                         ; 8AA8 91 07                    ..
        iny                                     ; 8AAA C8                       .
        dex                                     ; 8AAB CA                       .
        bne     MapInteractionSystem_Branch_8A9E; 8AAC D0 F0                    ..
        lda     $3F                             ; 8AAE A5 3F                    .?
        ldy     #$00                            ; 8AB0 A0 00                    ..
        ldx     #$07                            ; 8AB2 A2 07                    ..
        jsr     AddWordToPointer                ; 8AB4 20 1D C8                  ..
        dec     $04                             ; 8AB7 C6 04                    ..
        bne     MapInteractionSystem_Entry_8A9A ; 8AB9 D0 DF                    ..
        rts                                     ; 8ABB 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8ABC:
        lda     #$20                            ; 8ABC A9 20                    .
        sta     $55                             ; 8ABE 85 55                    .U
        ldx     #$00                            ; 8AC0 A2 00                    ..
        stx     $53                             ; 8AC2 86 53                    .S
        inx                                     ; 8AC4 E8                       .
        stx     $51                             ; 8AC5 86 51                    .Q
        lda     #$03                            ; 8AC7 A9 03                    ..
        sta     $52                             ; 8AC9 85 52                    .R
MapInteractionSystem_Branch_8ACB:
        ldx     #$05                            ; 8ACB A2 05                    ..
MapInteractionSystem_Branch_8ACD:
        lda     $7020,x                         ; 8ACD BD 20 70                 . p
        bmi     MapInteractionSystem_Branch_8AE6; 8AD0 30 14                    0.
        lda     $7000,x                         ; 8AD2 BD 00 70                 ..p
        and     #$3C                            ; 8AD5 29 3C                    )<
        jsr     UpperFixedEngine_Entry_C78C     ; 8AD7 20 8C C7                  ..
        jsr     MapInteractionSystem_Entry_8AFB ; 8ADA 20 FB 8A                  ..
        jsr     MapInteractionSystem_Entry_8AFB ; 8ADD 20 FB 8A                  ..
        jsr     MapInteractionSystem_Entry_8AFB ; 8AE0 20 FB 8A                  ..
        jsr     MapInteractionSystem_Entry_8AFB ; 8AE3 20 FB 8A                  ..
MapInteractionSystem_Branch_8AE6:
        dex                                     ; 8AE6 CA                       .
        bpl     MapInteractionSystem_Branch_8ACD; 8AE7 10 E4                    ..
        jsr     WaitForNmi                      ; 8AE9 20 74 FF                  t.
        dec     $52                             ; 8AEC C6 52                    .R
        bne     MapInteractionSystem_Branch_8AF6; 8AEE D0 06                    ..
        inc     $51                             ; 8AF0 E6 51                    .Q
        lda     #$03                            ; 8AF2 A9 03                    ..
        sta     $52                             ; 8AF4 85 52                    .R
MapInteractionSystem_Branch_8AF6:
        dec     $55                             ; 8AF6 C6 55                    .U
        bne     MapInteractionSystem_Branch_8ACB; 8AF8 D0 D1                    ..
        rts                                     ; 8AFA 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8AFB:
        lda     $0200,y                         ; 8AFB B9 00 02                 ...
        cmp     #$F0                            ; 8AFE C9 F0                    ..
        bcs     MapInteractionSystem_Branch_8B10; 8B00 B0 0E                    ..
        sec                                     ; 8B02 38                       8
        sbc     $51                             ; 8B03 E5 51                    .Q
        bcs     MapInteractionSystem_Branch_8B0D; 8B05 B0 06                    ..
        bit     $53                             ; 8B07 24 53                    $S
        bmi     MapInteractionSystem_Branch_8B0D; 8B09 30 02                    0.
        lda     #$F7                            ; 8B0B A9 F7                    ..
MapInteractionSystem_Branch_8B0D:
        sta     $0200,y                         ; 8B0D 99 00 02                 ...
MapInteractionSystem_Branch_8B10:
        iny                                     ; 8B10 C8                       .
        iny                                     ; 8B11 C8                       .
        iny                                     ; 8B12 C8                       .
        iny                                     ; 8B13 C8                       .
        rts                                     ; 8B14 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8B15:
        brk                                     ; 8B15 00                       .
        db   $92,$FB                         ; 8B16 92 FB                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_8BB4 ; 8B18 20 B4 8B                  ..
        jsr     MapInteractionSystem_Entry_8B59 ; 8B1B 20 59 8B                  Y.
        brk                                     ; 8B1E 00                       .
        db   $A5,$FB                         ; 8B1F A5 FB                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_8B28 ; 8B21 20 28 8B                  (.
        jsr     MapInteractionSystem_Entry_8B4C ; 8B24 20 4C 8B                  L.
        rts                                     ; 8B27 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8B28:
        ldy     #$01                            ; 8B28 A0 01                    ..
MapInteractionSystem_Entry_8B2A:
        ldx     #$1C                            ; 8B2A A2 1C                    ..
MapInteractionSystem_Branch_8B2C:
        txa                                     ; 8B2C 8A                       .
        lsr     a                               ; 8B2D 4A                       J
        lsr     a                               ; 8B2E 4A                       J
        sta     $51                             ; 8B2F 85 51                    .Q
        jsr     MapInteractionSystem_Entry_8B38 ; 8B31 20 38 8B                  8.
        dex                                     ; 8B34 CA                       .
        bne     MapInteractionSystem_Branch_8B2C; 8B35 D0 F5                    ..
        rts                                     ; 8B37 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8B38:
        lda     $0508,y                         ; 8B38 B9 08 05                 ...
        pha                                     ; 8B3B 48                       H
        clc                                     ; 8B3C 18                       .
        adc     $51                             ; 8B3D 65 51                    eQ
        sta     $0508,y                         ; 8B3F 99 08 05                 ...
        jsr     WaitForNmi                      ; 8B42 20 74 FF                  t.
        pla                                     ; 8B45 68                       h
        sta     $0508,y                         ; 8B46 99 08 05                 ...
        jmp     WaitForNmi                      ; 8B49 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8B4C:
        ldx     #$05                            ; 8B4C A2 05                    ..
MapInteractionSystem_Branch_8B4E:
        lda     $59,x                           ; 8B4E B5 59                    .Y
        sta     $7B,x                           ; 8B50 95 7B                    .{
        dex                                     ; 8B52 CA                       .
        bpl     MapInteractionSystem_Branch_8B4E; 8B53 10 F9                    ..
        lda     #$FF                            ; 8B55 A9 FF                    ..
        bne     MapInteractionSystem_Branch_8B5B; 8B57 D0 02                    ..
MapInteractionSystem_Entry_8B59:
        lda     #$00                            ; 8B59 A9 00                    ..
MapInteractionSystem_Branch_8B5B:
        sta     $52                             ; 8B5B 85 52                    .R
        jsr     MapInteractionSystem_Entry_8BAF ; 8B5D 20 AF 8B                  ..
MapInteractionSystem_Branch_8B60:
        jsr     MapInteractionSystem_Entry_8B6B ; 8B60 20 6B 8B                  k.
        jsr     WaitForNmi                      ; 8B63 20 74 FF                  t.
        dec     $51                             ; 8B66 C6 51                    .Q
        bne     MapInteractionSystem_Branch_8B60; 8B68 D0 F6                    ..
        rts                                     ; 8B6A 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8B6B:
        ldx     #$05                            ; 8B6B A2 05                    ..
MapInteractionSystem_Branch_8B6D:
        lda     $7020,x                         ; 8B6D BD 20 70                 . p
        bmi     MapInteractionSystem_Branch_8B7D; 8B70 30 0B                    0.
        lda     $7000,x                         ; 8B72 BD 00 70                 ..p
        and     #$3C                            ; 8B75 29 3C                    )<
        jsr     UpperFixedEngine_Entry_C78C     ; 8B77 20 8C C7                  ..
        jsr     MapInteractionSystem_Entry_8B81 ; 8B7A 20 81 8B                  ..
MapInteractionSystem_Branch_8B7D:
        dex                                     ; 8B7D CA                       .
        bpl     MapInteractionSystem_Branch_8B6D; 8B7E 10 ED                    ..
        rts                                     ; 8B80 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8B81:
        txa                                     ; 8B81 8A                       .
        pha                                     ; 8B82 48                       H
        lda     $7B,x                           ; 8B83 B5 7B                    .{
        inc     $7B,x                           ; 8B85 F6 7B                    .{
        tax                                     ; 8B87 AA                       .
        lda     $52                             ; 8B88 A5 52                    .R
        bmi     MapInteractionSystem_Branch_8B96; 8B8A 30 0A                    0.
        lda     $0200,y                         ; 8B8C B9 00 02                 ...
        sec                                     ; 8B8F 38                       8
        sbc     $8BD8,x                         ; 8B90 FD D8 8B                 ...
        jmp     MapInteractionSystem_Branch_8B9D; 8B93 4C 9D 8B                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8B96:
        lda     $0200,y                         ; 8B96 B9 00 02                 ...
        clc                                     ; 8B99 18                       .
        adc     $8BD8,x                         ; 8B9A 7D D8 8B                 }..
MapInteractionSystem_Branch_8B9D:
        sta     $0200,y                         ; 8B9D 99 00 02                 ...
        sta     $0204,y                         ; 8BA0 99 04 02                 ...
        clc                                     ; 8BA3 18                       .
        adc     #$08                            ; 8BA4 69 08                    i.
        sta     $0208,y                         ; 8BA6 99 08 02                 ...
        sta     $020C,y                         ; 8BA9 99 0C 02                 ...
        pla                                     ; 8BAC 68                       h
        tax                                     ; 8BAD AA                       .
        rts                                     ; 8BAE 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8BAF:
        lda     #$10                            ; 8BAF A9 10                    ..
        sta     $51                             ; 8BB1 85 51                    .Q
        rts                                     ; 8BB3 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8BB4:
        ldx     #$05                            ; 8BB4 A2 05                    ..
MapInteractionSystem_Branch_8BB6:
        lda     $7000,x                         ; 8BB6 BD 00 70                 ..p
        and     #$3C                            ; 8BB9 29 3C                    )<
        jsr     UpperFixedEngine_Entry_C78C     ; 8BBB 20 8C C7                  ..
        lda     $0200,y                         ; 8BBE B9 00 02                 ...
        lsr     a                               ; 8BC1 4A                       J
        lsr     a                               ; 8BC2 4A                       J
        lsr     a                               ; 8BC3 4A                       J
        lsr     a                               ; 8BC4 4A                       J
        tay                                     ; 8BC5 A8                       .
        lda     $8BCE,y                         ; 8BC6 B9 CE 8B                 ...
        sta     $7B,x                           ; 8BC9 95 7B                    .{
        sta     $59,x                           ; 8BCB 95 59                    .Y
        dex                                     ; 8BCD CA                       .
        bpl     MapInteractionSystem_Branch_8BB6; 8BCE 10 E6                    ..
        rts                                     ; 8BD0 60                       `
; ----------------------------------------------------------------------------
        db   $00,$10,$20,$30,$40,$50,$60     ; 8BD1 00 10 20 30 40 50 60     .. 0@P`
        db   $00,$01,$02,$02,$02,$03,$03,$03 ; 8BD8 00 01 02 02 02 03 03 03  ........
        db   $04,$04,$05,$05,$06,$06,$07,$07 ; 8BE0 04 04 05 05 06 06 07 07  ........
        db   $01,$01,$02,$02,$03,$03,$04,$05 ; 8BE8 01 01 02 02 03 03 04 05  ........
        db   $05,$06,$06,$06,$07,$08,$08,$08 ; 8BF0 05 06 06 06 07 08 08 08  ........
        db   $01,$01,$02,$03,$04,$04,$05,$05 ; 8BF8 01 01 02 03 04 04 05 05  ........
        db   $06,$07,$07,$08,$08,$09,$0A,$0B ; 8C00 06 07 07 08 08 09 0A 0B  ........
        db   $01,$02,$02,$04,$04,$05,$05,$06 ; 8C08 01 02 02 04 04 05 05 06  ........
        db   $07,$08,$09,$09,$0A,$0B,$0B,$0C ; 8C10 07 08 09 09 0A 0B 0B 0C  ........
        db   $01,$02,$03,$04,$05,$05,$07,$07 ; 8C18 01 02 03 04 05 05 07 07  ........
        db   $08,$09,$0A,$0A,$0C,$0C,$0D,$0E ; 8C20 08 09 0A 0A 0C 0C 0D 0E  ........
        db   $01,$03,$03,$05,$05,$06,$07,$08 ; 8C28 01 03 03 05 05 06 07 08  ........
        db   $0A,$0A,$0B,$0C,$0D,$0E,$0F,$10 ; 8C30 0A 0A 0B 0C 0D 0E 0F 10  ........
        db   $02,$02,$04,$05,$06,$07,$08,$09 ; 8C38 02 02 04 05 06 07 08 09  ........
        db   $0A,$0B,$0D,$0D,$0F,$0F,$11,$12 ; 8C40 0A 0B 0D 0D 0F 0F 11 12  ........
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8C48:
        lda     #$F3                            ; 8C48 A9 F3                    ..
        sta     $54                             ; 8C4A 85 54                    .T
        lda     #$6B                            ; 8C4C A9 6B                    .k
        clc                                     ; 8C4E 18                       .
        bne     MapInteractionSystem_Branch_8C57; 8C4F D0 06                    ..
MapInteractionSystem_Entry_8C51:
        lda     #$F7                            ; 8C51 A9 F7                    ..
        sta     $54                             ; 8C53 85 54                    .T
        lda     #$6F                            ; 8C55 A9 6F                    .o
MapInteractionSystem_Branch_8C57:
        php                                     ; 8C57 08                       .
        sta     $55                             ; 8C58 85 55                    .U
        jsr     MapInteractionSystem_Entry_8CE9 ; 8C5A 20 E9 8C                  ..
        jsr     UpperFixedEngine_Entry_C5BF     ; 8C5D 20 BF C5                  ..
        lda     $41                             ; 8C60 A5 41                    .A
        bmi     MapInteractionSystem_Branch_8C6F; 8C62 30 0B                    0.
        lda     CurrentMapNumber                ; 8C64 A5 63                    .c
        cmp     #$41                            ; 8C66 C9 41                    .A
        bne     MapInteractionSystem_Branch_8C6F; 8C68 D0 05                    ..
        ldx     #$28                            ; 8C6A A2 28                    .(
        jsr     UpperFixedEngine_Entry_C90C     ; 8C6C 20 0C C9                  ..
MapInteractionSystem_Branch_8C6F:
        lda     #$01                            ; 8C6F A9 01                    ..
        sta     $57                             ; 8C71 85 57                    .W
        lda     #$08                            ; 8C73 A9 08                    ..
        sta     $56                             ; 8C75 85 56                    .V
        lda     #$0F                            ; 8C77 A9 0F                    ..
        sta     $58                             ; 8C79 85 58                    .X
        sta     $53                             ; 8C7B 85 53                    .S
        lda     #$00                            ; 8C7D A9 00                    ..
        sta     $51                             ; 8C7F 85 51                    .Q
        plp                                     ; 8C81 28                       (
        bcs     MapInteractionSystem_Branch_8C9E; 8C82 B0 1A                    ..
MapInteractionSystem_Entry_8C84:
        lda     #$00                            ; 8C84 A9 00                    ..
        sta     $51                             ; 8C86 85 51                    .Q
        ldx     #$05                            ; 8C88 A2 05                    ..
MapInteractionSystem_Branch_8C8A:
        lda     $7020,x                         ; 8C8A BD 20 70                 . p
        bpl     MapInteractionSystem_Branch_8C92; 8C8D 10 03                    ..
        dex                                     ; 8C8F CA                       .
        bne     MapInteractionSystem_Branch_8C8A; 8C90 D0 F8                    ..
MapInteractionSystem_Branch_8C92:
        txa                                     ; 8C92 8A                       .
        ldy     $57                             ; 8C93 A4 57                    .W
MapInteractionSystem_Branch_8C95:
        asl     a                               ; 8C95 0A                       .
        dey                                     ; 8C96 88                       .
        bne     MapInteractionSystem_Branch_8C95; 8C97 D0 FC                    ..
        clc                                     ; 8C99 18                       .
        adc     $58                             ; 8C9A 65 58                    eX
        sta     $53                             ; 8C9C 85 53                    .S
MapInteractionSystem_Branch_8C9E:
        jsr     MapInteractionSystem_Entry_8CAD ; 8C9E 20 AD 8C                  ..
        jsr     WaitForNmi                      ; 8CA1 20 74 FF                  t.
        inc     $51                             ; 8CA4 E6 51                    .Q
        lda     $51                             ; 8CA6 A5 51                    .Q
        cmp     $53                             ; 8CA8 C5 53                    .S
        bcc     MapInteractionSystem_Branch_8C9E; 8CAA 90 F2                    ..
        rts                                     ; 8CAC 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8CAD:
        ldx     #$05                            ; 8CAD A2 05                    ..
MapInteractionSystem_Branch_8CAF:
        lda     $7020,x                         ; 8CAF BD 20 70                 . p
        bmi     MapInteractionSystem_Branch_8CE5; 8CB2 30 31                    01
        lda     $51                             ; 8CB4 A5 51                    .Q
        ldy     $57                             ; 8CB6 A4 57                    .W
MapInteractionSystem_Branch_8CB8:
        lsr     a                               ; 8CB8 4A                       J
        dey                                     ; 8CB9 88                       .
        bne     MapInteractionSystem_Branch_8CB8; 8CBA D0 FC                    ..
        sta     $52                             ; 8CBC 85 52                    .R
        cpx     $52                             ; 8CBE E4 52                    .R
        beq     MapInteractionSystem_Branch_8CC4; 8CC0 F0 02                    ..
        bcs     MapInteractionSystem_Branch_8CE5; 8CC2 B0 21                    .!
MapInteractionSystem_Branch_8CC4:
        lda     $7000,x                         ; 8CC4 BD 00 70                 ..p
        and     #$3C                            ; 8CC7 29 3C                    )<
        jsr     UpperFixedEngine_Entry_C78C     ; 8CC9 20 8C C7                  ..
        lda     $0200,y                         ; 8CCC B9 00 02                 ...
        cmp     $55                             ; 8CCF C5 55                    .U
        beq     MapInteractionSystem_Branch_8CE5; 8CD1 F0 12                    ..
        clc                                     ; 8CD3 18                       .
        adc     $56                             ; 8CD4 65 56                    eV
        sta     $0200,y                         ; 8CD6 99 00 02                 ...
        sta     $0204,y                         ; 8CD9 99 04 02                 ...
        clc                                     ; 8CDC 18                       .
        adc     #$08                            ; 8CDD 69 08                    i.
        sta     $0208,y                         ; 8CDF 99 08 02                 ...
        sta     $020C,y                         ; 8CE2 99 0C 02                 ...
MapInteractionSystem_Branch_8CE5:
        dex                                     ; 8CE5 CA                       .
        bpl     MapInteractionSystem_Branch_8CAF; 8CE6 10 C7                    ..
        rts                                     ; 8CE8 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8CE9:
        ldx     #$05                            ; 8CE9 A2 05                    ..
MapInteractionSystem_Branch_8CEB:
        lda     $7020,x                         ; 8CEB BD 20 70                 . p
        bmi     MapInteractionSystem_Branch_8D09; 8CEE 30 19                    0.
        lda     $7000,x                         ; 8CF0 BD 00 70                 ..p
        and     #$3C                            ; 8CF3 29 3C                    )<
        jsr     UpperFixedEngine_Entry_C78C     ; 8CF5 20 8C C7                  ..
        lda     $54                             ; 8CF8 A5 54                    .T
        sta     $0200,y                         ; 8CFA 99 00 02                 ...
        sta     $0204,y                         ; 8CFD 99 04 02                 ...
        clc                                     ; 8D00 18                       .
        adc     #$08                            ; 8D01 69 08                    i.
        sta     $0208,y                         ; 8D03 99 08 02                 ...
        sta     $020C,y                         ; 8D06 99 0C 02                 ...
MapInteractionSystem_Branch_8D09:
        dex                                     ; 8D09 CA                       .
        bpl     MapInteractionSystem_Branch_8CEB; 8D0A 10 DF                    ..
        rts                                     ; 8D0C 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8D0D:
        ldy     #$06                            ; 8D0D A0 06                    ..
MapInteractionSystem_Branch_8D0F:
        jsr     MapInteractionSystem_Entry_8D18 ; 8D0F 20 18 8D                  ..
        jsr     MapInteractionSystem_Entry_8D2C ; 8D12 20 2C 8D                  ,.
        jmp     MapInteractionSystem_Branch_8D0F; 8D15 4C 0F 8D                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8D18:
        tya                                     ; 8D18 98                       .
        pha                                     ; 8D19 48                       H
        lda     $7020,x                         ; 8D1A BD 20 70                 . p
        ora     #$80                            ; 8D1D 09 80                    ..
        sta     $7020,x                         ; 8D1F 9D 20 70                 . p
        txa                                     ; 8D22 8A                       .
        pha                                     ; 8D23 48                       H
        brk                                     ; 8D24 00                       .
        db   $0A,$6F                         ; 8D25 0A 6F                    .o
; ----------------------------------------------------------------------------
        pla                                     ; 8D27 68                       h
        tax                                     ; 8D28 AA                       .
        pla                                     ; 8D29 68                       h
        tay                                     ; 8D2A A8                       .
        rts                                     ; 8D2B 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8D2C:
        txa                                     ; 8D2C 8A                       .
        pha                                     ; 8D2D 48                       H
        tya                                     ; 8D2E 98                       .
        pha                                     ; 8D2F 48                       H
        lda     $7020,x                         ; 8D30 BD 20 70                 . p
        and     #$7F                            ; 8D33 29 7F                    ).
        sta     $7020,x                         ; 8D35 9D 20 70                 . p
        brk                                     ; 8D38 00                       .
        db   $0A,$6F                         ; 8D39 0A 6F                    .o
; ----------------------------------------------------------------------------
        pla                                     ; 8D3B 68                       h
        pha                                     ; 8D3C 48                       H
        tax                                     ; 8D3D AA                       .
        jsr     UpperFixedEngine_Entry_C90C     ; 8D3E 20 0C C9                  ..
        pla                                     ; 8D41 68                       h
        tay                                     ; 8D42 A8                       .
        pla                                     ; 8D43 68                       h
        tax                                     ; 8D44 AA                       .
        dey                                     ; 8D45 88                       .
        bne     MapInteractionSystem_Branch_8D5B; 8D46 D0 13                    ..
        pla                                     ; 8D48 68                       h
        pla                                     ; 8D49 68                       h
        jsr     MapInteractionSystem_Entry_8D18 ; 8D4A 20 18 8D                  ..
        lda     #$80                            ; 8D4D A9 80                    ..
        sta     $6F60,x                         ; 8D4F 9D 60 6F                 .`o
        sta     $6FA0,x                         ; 8D52 9D A0 6F                 ..o
        sta     $6F80,x                         ; 8D55 9D 80 6F                 ..o
        sta     $6FC0,x                         ; 8D58 9D C0 6F                 ..o
MapInteractionSystem_Branch_8D5B:
        rts                                     ; 8D5B 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8D5C:
        bit     $6291                           ; 8D5C 2C 91 62                 ,.b
        bvc     MapInteractionSystem_Branch_8D64; 8D5F 50 03                    P.
        jmp     MapInteractionSystem_Branch_8DED; 8D61 4C ED 8D                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8D64:
        brk                                     ; 8D64 00                       .
        db   $95,$FB                         ; 8D65 95 FB                    ..
; ----------------------------------------------------------------------------
        lda     #$0A                            ; 8D67 A9 0A                    ..
        ldx     CurrentSubmapNumber             ; 8D69 A6 64                    .d
        cpx     #$02                            ; 8D6B E0 02                    ..
        bne     MapInteractionSystem_Branch_8D8A; 8D6D D0 1B                    ..
        ldx     $52                             ; 8D6F A6 52                    .R
        cpx     #$0A                            ; 8D71 E0 0A                    ..
        bne     MapInteractionSystem_Branch_8D8A; 8D73 D0 15                    ..
        ldx     $53                             ; 8D75 A6 53                    .S
        cpx     #$16                            ; 8D77 E0 16                    ..
        bne     MapInteractionSystem_Branch_8D8A; 8D79 D0 0F                    ..
        lda     #$00                            ; 8D7B A9 00                    ..
        jsr     MapInteractionSystem_Entry_B3ED ; 8D7D 20 ED B3                  ..
        bcc     MapInteractionSystem_Branch_8D88; 8D80 90 06                    ..
        lda     $0572                           ; 8D82 AD 72 05                 .r.
        jmp     MapInteractionSystem_Branch_8D8A; 8D85 4C 8A 8D                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8D88:
        lda     #$1E                            ; 8D88 A9 1E                    ..
MapInteractionSystem_Branch_8D8A:
        ldx     $52                             ; 8D8A A6 52                    .R
        ldy     $53                             ; 8D8C A4 53                    .S
        pha                                     ; 8D8E 48                       H
        brk                                     ; 8D8F 00                       .
        db   $09,$EF                         ; 8D90 09 EF                    ..
; ----------------------------------------------------------------------------
        lda     $7140                           ; 8D92 AD 40 71                 .@q
        and     #$E0                            ; 8D95 29 E0                    ).
        sta     $00                           ; 8D97 85 00                    ..
        pla                                     ; 8D99 68                       h
        ora     $00                           ; 8D9A 05 00                    ..
        pha                                     ; 8D9C 48                       H
        ldx     $3D                             ; 8D9D A6 3D                    .=
        lda     $8E3D,x                         ; 8D9F BD 3D 8E                 .=.
        sta     $00                           ; 8DA2 85 00                    ..
        lda     #$6C                            ; 8DA4 A9 6C                    .l
        sta     $01                             ; 8DA6 85 01                    ..
        lda     #$03                            ; 8DA8 A9 03                    ..
        sta     $02                             ; 8DAA 85 02                    ..
        lda     $8E41,x                         ; 8DAC BD 41 8E                 .A.
        sta     $03                             ; 8DAF 85 03                    ..
        ldx     #$00                            ; 8DB1 A2 00                    ..
        ldy     #$3C                            ; 8DB3 A0 3C                    .<
        jsr     UpperFixedEngine_Entry_C73E     ; 8DB5 20 3E C7                  >.
        lda     $03                             ; 8DB8 A5 03                    ..
        clc                                     ; 8DBA 18                       .
        adc     #$08                            ; 8DBB 69 08                    i.
        sta     $03                             ; 8DBD 85 03                    ..
        ldx     #$00                            ; 8DBF A2 00                    ..
        iny                                     ; 8DC1 C8                       .
        jsr     UpperFixedEngine_Entry_C73E     ; 8DC2 20 3E C7                  >.
        lda     $03                             ; 8DC5 A5 03                    ..
        sec                                     ; 8DC7 38                       8
        sbc     #$08                            ; 8DC8 E9 08                    ..
        sta     $03                             ; 8DCA 85 03                    ..
        lda     $00                           ; 8DCC A5 00                    ..
        clc                                     ; 8DCE 18                       .
        adc     #$08                            ; 8DCF 69 08                    i.
        sta     $00                           ; 8DD1 85 00                    ..
        ldx     #$00                            ; 8DD3 A2 00                    ..
        iny                                     ; 8DD5 C8                       .
        jsr     UpperFixedEngine_Entry_C73E     ; 8DD6 20 3E C7                  >.
        lda     $03                             ; 8DD9 A5 03                    ..
        clc                                     ; 8DDB 18                       .
        adc     #$08                            ; 8DDC 69 08                    i.
        sta     $03                             ; 8DDE 85 03                    ..
        ldx     #$00                            ; 8DE0 A2 00                    ..
        iny                                     ; 8DE2 C8                       .
        jsr     UpperFixedEngine_Entry_C73E     ; 8DE3 20 3E C7                  >.
        brk                                     ; 8DE6 00                       .
        db   $16,$CB,$40                     ; 8DE7 16 CB 40                 ..@
; ----------------------------------------------------------------------------
        pla                                     ; 8DEA 68                       h
        tay                                     ; 8DEB A8                       .
        rts                                     ; 8DEC 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8DED:
        ldy     #$3C                            ; 8DED A0 3C                    .<
MapInteractionSystem_Branch_8DEF:
        ldx     #$00                            ; 8DEF A2 00                    ..
        jsr     UpperFixedEngine_Entry_C770     ; 8DF1 20 70 C7                  p.
        tya                                     ; 8DF4 98                       .
        sec                                     ; 8DF5 38                       8
        sbc     #$3C                            ; 8DF6 E9 3C                    .<
        asl     a                               ; 8DF8 0A                       .
        asl     a                               ; 8DF9 0A                       .
        asl     a                               ; 8DFA 0A                       .
        asl     a                               ; 8DFB 0A                       .
        asl     a                               ; 8DFC 0A                       .
        clc                                     ; 8DFD 18                       .
        adc     $3E                             ; 8DFE 65 3E                    e>
        tax                                     ; 8E00 AA                       .
        dex                                     ; 8E01 CA                       .
        lda     $00                           ; 8E02 A5 00                    ..
        clc                                     ; 8E04 18                       .
        adc     $8E45,x                         ; 8E05 7D 45 8E                 }E.
        sta     $00                           ; 8E08 85 00                    ..
        lda     $03                             ; 8E0A A5 03                    ..
        clc                                     ; 8E0C 18                       .
        adc     $8E55,x                         ; 8E0D 7D 55 8E                 }U.
        sta     $03                             ; 8E10 85 03                    ..
        ldx     #$00                            ; 8E12 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 8E14 20 3E C7                  >.
        iny                                     ; 8E17 C8                       .
        cpy     #$40                            ; 8E18 C0 40                    .@
        bcc     MapInteractionSystem_Branch_8DEF; 8E1A 90 D3                    ..
        lda     $3E                             ; 8E1C A5 3E                    .>
        cmp     #$02                            ; 8E1E C9 02                    ..
        bcs     MapInteractionSystem_Branch_8E3C; 8E20 B0 1A                    ..
        brk                                     ; 8E22 00                       .
        db   $16,$DB,$BF                     ; 8E23 16 DB BF                 ...
; ----------------------------------------------------------------------------
        lda     #$F7                            ; 8E26 A9 F7                    ..
        sta     $00                           ; 8E28 85 00                    ..
        sta     $01                             ; 8E2A 85 01                    ..
        sta     $02                             ; 8E2C 85 02                    ..
        sta     $03                             ; 8E2E 85 03                    ..
        ldy     #$3C                            ; 8E30 A0 3C                    .<
MapInteractionSystem_Branch_8E32:
        ldx     #$00                            ; 8E32 A2 00                    ..
        jsr     UpperFixedEngine_Entry_C73E     ; 8E34 20 3E C7                  >.
        iny                                     ; 8E37 C8                       .
        cpy     #$40                            ; 8E38 C0 40                    .@
        bcc     MapInteractionSystem_Branch_8E32; 8E3A 90 F6                    ..
MapInteractionSystem_Branch_8E3C:
        rts                                     ; 8E3C 60                       `
; ----------------------------------------------------------------------------
        db   $5C,$6C,$7C,$6C                 ; 8E3D 5C 6C 7C 6C              \l|l
        db   $80,$90,$80,$70                 ; 8E41 80 90 80 70              ...p
        db   $3C,$23,$14,$0B,$06,$04,$03,$02 ; 8E45 3C 23 14 0B 06 04 03 02  <#......
        db   $02,$01,$FF,$FE,$FE,$FE,$FD,$FD ; 8E4D 02 01 FF FE FE FE FD FD  ........
        db   $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE ; 8E55 FE FE FE FE FE FE FE FE  ........
        db   $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE ; 8E5D FE FE FE FE FE FE FE FE  ........
        db   $3C,$23,$14,$0B,$06,$04,$03,$02 ; 8E65 3C 23 14 0B 06 04 03 02  <#......
        db   $02,$01,$FF,$FE,$FE,$FE,$FD,$FD ; 8E6D 02 01 FF FE FE FE FD FD  ........
        db   $02,$02,$02,$02,$02,$02,$02,$02 ; 8E75 02 02 02 02 02 02 02 02  ........
        db   $02,$02,$02,$02,$02,$02,$02,$02 ; 8E7D 02 02 02 02 02 02 02 02  ........
        db   $3C,$23,$14,$0B,$06,$05,$04,$03 ; 8E85 3C 23 14 0B 06 05 04 03  <#......
        db   $02,$01,$01,$00,$FF,$FF,$FE,$FE ; 8E8D 02 01 01 00 FF FF FE FE  ........
        db   $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE ; 8E95 FE FE FE FE FE FE FE FE  ........
        db   $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE ; 8E9D FE FE FE FE FE FE FE FE  ........
        db   $3C,$23,$14,$0B,$06,$05,$04,$03 ; 8EA5 3C 23 14 0B 06 05 04 03  <#......
        db   $02,$01,$01,$00,$FF,$FF,$FE,$FE ; 8EAD 02 01 01 00 FF FF FE FE  ........
        db   $02,$02,$02,$02,$02,$02,$02,$02 ; 8EB5 02 02 02 02 02 02 02 02  ........
        db   $02,$02,$02,$02,$02,$02,$02,$02 ; 8EBD 02 02 02 02 02 02 02 02  ........
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8EC5:
        jsr     MapInteractionSystem_Entry_959B ; 8EC5 20 9B 95                  ..
MapInteractionSystem_Entry_8EC8:
        brk                                     ; 8EC8 00                       .
        db   $08,$87                         ; 8EC9 08 87                    ..
; ----------------------------------------------------------------------------
        pha                                     ; 8ECB 48                       H
        jsr     MapInteractionSystem_Entry_8FA5 ; 8ECC 20 A5 8F                  ..
        jsr     MapInteractionSystem_Entry_8FDF ; 8ECF 20 DF 8F                  ..
        jsr     MapInteractionSystem_Entry_9817 ; 8ED2 20 17 98                  ..
        pla                                     ; 8ED5 68                       h
MapInteractionSystem_Entry_8ED6:
        pha                                     ; 8ED6 48                       H
        clc                                     ; 8ED7 18                       .
        brk                                     ; 8ED8 00                       .
        db   $0E,$BF                         ; 8ED9 0E BF                    ..
; ----------------------------------------------------------------------------
        pla                                     ; 8EDB 68                       h
        jsr     MapInteractionSystem_Entry_8EE5 ; 8EDC 20 E5 8E                  ..
        jsr     MapInteractionSystem_Entry_9825 ; 8EDF 20 25 98                  %.
        jmp     UpperFixedEngine_Entry_C5BF     ; 8EE2 4C BF C5                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8EE5:
        pha                                     ; 8EE5 48                       H
        brk                                     ; 8EE6 00                       .
        db   $56,$33                         ; 8EE7 56 33                    V3
; ----------------------------------------------------------------------------
        pla                                     ; 8EE9 68                       h
MapInteractionSystem_Entry_8EEA:
        pha                                     ; 8EEA 48                       H
        lda     $41                             ; 8EEB A5 41                    .A
        ora     #$80                            ; 8EED 09 80                    ..
        sta     $41                             ; 8EEF 85 41                    .A
        lda     #$00                            ; 8EF1 A9 00                    ..
        sta     $0527                           ; 8EF3 8D 27 05                 .'.
        pla                                     ; 8EF6 68                       h
        jsr     MapInteractionSystem_Entry_9083 ; 8EF7 20 83 90                  ..
        brk                                     ; 8EFA 00                       .
        db   $02,$BF                         ; 8EFB 02 BF                    ..
; ----------------------------------------------------------------------------
        bcs     MapInteractionSystem_Branch_8F02; 8EFD B0 03                    ..
        brk                                     ; 8EFF 00                       .
        db   $09,$9F                         ; 8F00 09 9F                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8F02:
        ldx     PlayerLocalX                    ; 8F02 A6 44                    .D
        stx     $053E                           ; 8F04 8E 3E 05                 .>.
        ldy     PlayerLocalY                    ; 8F07 A4 45                    .E
        sty     $053F                           ; 8F09 8C 3F 05                 .?.
        jsr     MapInteractionSystem_Entry_8F63 ; 8F0C 20 63 8F                  c.
        bcs     MapInteractionSystem_Branch_8F53; 8F0F B0 42                    .B
        jsr     MapInteractionSystem_Entry_8F7A ; 8F11 20 7A 8F                  z.
        jsr     UpperFixedEngine_Entry_C5BF     ; 8F14 20 BF C5                  ..
        ldx     PlayerLocalX                    ; 8F17 A6 44                    .D
        inx                                     ; 8F19 E8                       .
        ldy     PlayerLocalY                    ; 8F1A A4 45                    .E
        jsr     UpperFixedEngine_Entry_D3E6     ; 8F1C 20 E6 D3                  ..
        and     #$1F                            ; 8F1F 29 1F                    ).
        jsr     MapInteractionSystem_Entry_8F6B ; 8F21 20 6B 8F                  k.
        bcc     MapInteractionSystem_Branch_8F2C; 8F24 90 06                    ..
        dec     $053E                           ; 8F26 CE 3E 05                 .>.
        dec     $0541                           ; 8F29 CE 41 05                 .A.
MapInteractionSystem_Branch_8F2C:
        ldx     $053E                           ; 8F2C AE 3E 05                 .>.
        dec     $053F                           ; 8F2F CE 3F 05                 .?.
        ldy     $053F                           ; 8F32 AC 3F 05                 .?.
        jsr     UpperFixedEngine_Entry_D3E6     ; 8F35 20 E6 D3                  ..
        sta     $0540                           ; 8F38 8D 40 05                 .@.
        brk                                     ; 8F3B 00                       .
        db   $A9,$FB                         ; 8F3C A9 FB                    ..
; ----------------------------------------------------------------------------
        ldx     #$00                            ; 8F3E A2 00                    ..
        lda     $28                             ; 8F40 A5 28                    .(
        cmp     #$32                            ; 8F42 C9 32                    .2
        bne     MapInteractionSystem_Branch_8F48; 8F44 D0 02                    ..
        ldx     #$02                            ; 8F46 A2 02                    ..
MapInteractionSystem_Branch_8F48:
        brk                                     ; 8F48 00                       .
        db   $03,$BF                         ; 8F49 03 BF                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 8F4B 00                       .
        db   $0A,$6F                         ; 8F4C 0A 6F                    .o
; ----------------------------------------------------------------------------
        pla                                     ; 8F4E 68                       h
        pla                                     ; 8F4F 68                       h
        jmp     WaitForNmi                      ; 8F50 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8F53:
        cmp     #$14                            ; 8F53 C9 14                    ..
        bcc     MapInteractionSystem_Branch_8F62; 8F55 90 0B                    ..
        cmp     #$18                            ; 8F57 C9 18                    ..
        bcs     MapInteractionSystem_Branch_8F62; 8F59 B0 07                    ..
        dec     PlayerLocalY                    ; 8F5B C6 45                    .E
        jsr     MapInteractionSystem_Entry_835D ; 8F5D 20 5D 83                  ].
        inc     PlayerLocalY                    ; 8F60 E6 45                    .E
MapInteractionSystem_Branch_8F62:
        rts                                     ; 8F62 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8F63:
        jsr     UpperFixedEngine_Entry_D3E6     ; 8F63 20 E6 D3                  ..
        and     #$1F                            ; 8F66 29 1F                    ).
        sta     $0541                           ; 8F68 8D 41 05                 .A.
MapInteractionSystem_Entry_8F6B:
        tax                                     ; 8F6B AA                       .
        lda     $6F40,x                         ; 8F6C BD 40 6F                 .@o
        and     #$7F                            ; 8F6F 29 7F                    ).
        cmp     #$20                            ; 8F71 C9 20                    .
        bcc     MapInteractionSystem_Branch_8F78; 8F73 90 03                    ..
        cmp     #$24                            ; 8F75 C9 24                    .$
        rts                                     ; 8F77 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8F78:
        sec                                     ; 8F78 38                       8
        rts                                     ; 8F79 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8F7A:
        ldx     #$00                            ; 8F7A A2 00                    ..
MapInteractionSystem_Branch_8F7C:
        jsr     MapInteractionSystem_Entry_8F85 ; 8F7C 20 85 8F                  ..
        inx                                     ; 8F7F E8                       .
        cpx     #$06                            ; 8F80 E0 06                    ..
        bne     MapInteractionSystem_Branch_8F7C; 8F82 D0 F8                    ..
        rts                                     ; 8F84 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8F85:
        txa                                     ; 8F85 8A                       .
        pha                                     ; 8F86 48                       H
        lda     $7020,x                         ; 8F87 BD 20 70                 . p
        bmi     MapInteractionSystem_Branch_8FA2; 8F8A 30 16                    0.
        lda     $7000,x                         ; 8F8C BD 00 70                 ..p
        and     #$3C                            ; 8F8F 29 3C                    )<
        jsr     UpperFixedEngine_Entry_C78C     ; 8F91 20 8C C7                  ..
        lda     #$F7                            ; 8F94 A9 F7                    ..
        sta     $0200,y                         ; 8F96 99 00 02                 ...
        sta     $0204,y                         ; 8F99 99 04 02                 ...
        sta     $0208,y                         ; 8F9C 99 08 02                 ...
        sta     $020C,y                         ; 8F9F 99 0C 02                 ...
MapInteractionSystem_Branch_8FA2:
        pla                                     ; 8FA2 68                       h
        tax                                     ; 8FA3 AA                       .
        rts                                     ; 8FA4 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8FA5:
        bit     $6281                           ; 8FA5 2C 81 62                 ,.b
        bvc     MapInteractionSystem_Branch_8FDE; 8FA8 50 34                    P4
        ldx     #$00                            ; 8FAA A2 00                    ..
        brk                                     ; 8FAC 00                       .
        db   $2B,$73                         ; 8FAD 2B 73                    +s
; ----------------------------------------------------------------------------
        cmp     #$08                            ; 8FAF C9 08                    ..
        bcc     MapInteractionSystem_Branch_8FDE; 8FB1 90 2B                    .+
        ldy     #$FF                            ; 8FB3 A0 FF                    ..
        sty     $70                             ; 8FB5 84 70                    .p
        ldx     #$01                            ; 8FB7 A2 01                    ..
        lda     #$00                            ; 8FB9 A9 00                    ..
MapInteractionSystem_Entry_8FBB:
        sty     $71                             ; 8FBB 84 71                    .q
        brk                                     ; 8FBD 00                       .
        db   $5E,$73                         ; 8FBE 5E 73                    ^s
; ----------------------------------------------------------------------------
        ldx     #$00                            ; 8FC0 A2 00                    ..
        jsr     MapInteractionSystem_Entry_966C ; 8FC2 20 6C 96                  l.
        brk                                     ; 8FC5 00                       .
        db   $0D,$87                         ; 8FC6 0D 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$01                            ; 8FC8 A2 01                    ..
        jsr     MapInteractionSystem_Entry_966C ; 8FCA 20 6C 96                  l.
        brk                                     ; 8FCD 00                       .
        db   $0D,$87                         ; 8FCE 0D 87                    ..
; ----------------------------------------------------------------------------
        lda     $70                             ; 8FD0 A5 70                    .p
        cmp     #$FF                            ; 8FD2 C9 FF                    ..
        beq     MapInteractionSystem_Branch_8FDE; 8FD4 F0 08                    ..
        ldx     #$02                            ; 8FD6 A2 02                    ..
        jsr     MapInteractionSystem_Entry_966C ; 8FD8 20 6C 96                  l.
        brk                                     ; 8FDB 00                       .
        db   $0D,$87                         ; 8FDC 0D 87                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8FDE:
        rts                                     ; 8FDE 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8FDF:
        lda     CurrentMapNumber                ; 8FDF A5 63                    .c
        cmp     #$37                            ; 8FE1 C9 37                    .7
        bne     MapInteractionSystem_Branch_8FEA; 8FE3 D0 05                    ..
        lda     #$08                            ; 8FE5 A9 08                    ..
        brk                                     ; 8FE7 00                       .
        db   $12,$2F                         ; 8FE8 12 2F                    ./
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_8FEA:
        rts                                     ; 8FEA 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_8FEB:
        ldy     #$00                            ; 8FEB A0 00                    ..
        ldx     #$8F                            ; 8FED A2 8F                    ..
MapInteractionSystem_Branch_8FEF:
        lda     SaveCurrentChapterMinus1        ; 8FEF AD 5A 61                 .Za
        cmp     Bank1E_MapEventTriggerRecord,y  ; 8FF2 D9 60 90                 .`.
        bne     MapInteractionSystem_Branch_905F; 8FF5 D0 68                    .h
        lda     CurrentMapNumber                ; 8FF7 A5 63                    .c
        cmp     $9061,y                         ; 8FF9 D9 61 90                 .a.
        bne     MapInteractionSystem_Branch_905F; 8FFC D0 61                    .a
        lda     CurrentSubmapNumber             ; 8FFE A5 64                    .d
        cmp     $9062,y                         ; 9000 D9 62 90                 .b.
        bne     MapInteractionSystem_Branch_905F; 9003 D0 5A                    .Z
        lda     PlayerLocalX                    ; 9005 A5 44                    .D
        cmp     $9063,y                         ; 9007 D9 63 90                 .c.
        bne     MapInteractionSystem_Branch_905F; 900A D0 53                    .S
        stx     $0530                           ; 900C 8E 30 05                 .0.
        lda     #$01                            ; 900F A9 01                    ..
        sta     $0531                           ; 9011 8D 31 05                 .1.
        lda     #$00                            ; 9014 A9 00                    ..
        sta     $0533                           ; 9016 8D 33 05                 .3.
        sta     $0532                           ; 9019 8D 32 05                 .2.
        ldx     #$00                            ; 901C A2 00                    ..
        brk                                     ; 901E 00                       .
        db   $2B,$73                         ; 901F 2B 73                    +s
; ----------------------------------------------------------------------------
        cmp     $9064,y                         ; 9021 D9 64 90                 .d.
        beq     MapInteractionSystem_Branch_9048; 9024 F0 22                    ."
        tya                                     ; 9026 98                       .
        pha                                     ; 9027 48                       H
        inx                                     ; 9028 E8                       .
        brk                                     ; 9029 00                       .
        db   $2B,$73                         ; 902A 2B 73                    +s
; ----------------------------------------------------------------------------
        cmp     $9064,y                         ; 902C D9 64 90                 .d.
        php                                     ; 902F 08                       .
        ldx     #$01                            ; 9030 A2 01                    ..
        lda     #$00                            ; 9032 A9 00                    ..
        ldy     #$02                            ; 9034 A0 02                    ..
        plp                                     ; 9036 28                       (
        beq     MapInteractionSystem_Branch_903F; 9037 F0 06                    ..
        ldx     #$02                            ; 9039 A2 02                    ..
        lda     #$01                            ; 903B A9 01                    ..
        ldy     #$00                            ; 903D A0 00                    ..
MapInteractionSystem_Branch_903F:
        sty     $70                             ; 903F 84 70                    .p
        ldy     #$FF                            ; 9041 A0 FF                    ..
        jsr     MapInteractionSystem_Entry_8FBB ; 9043 20 BB 8F                  ..
        pla                                     ; 9046 68                       h
        tay                                     ; 9047 A8                       .
MapInteractionSystem_Branch_9048:
        ldx     #$01                            ; 9048 A2 01                    ..
        brk                                     ; 904A 00                       .
        db   $2B,$73                         ; 904B 2B 73                    +s
; ----------------------------------------------------------------------------
        cmp     $9065,y                         ; 904D D9 65 90                 .e.
        beq     MapInteractionSystem_Branch_905F; 9050 F0 0D                    ..
        ldx     #$00                            ; 9052 A2 00                    ..
        lda     #$02                            ; 9054 A9 02                    ..
        ldy     #$01                            ; 9056 A0 01                    ..
        sty     $70                             ; 9058 84 70                    .p
        ldy     #$FF                            ; 905A A0 FF                    ..
        jmp     MapInteractionSystem_Entry_8FBB ; 905C 4C BB 8F                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_905F:
        rts                                     ; 905F 60                       `
; ----------------------------------------------------------------------------
Bank1E_MapEventTriggerRecord:
        db   $01                             ; 9060 01                       .
        db   $04                             ; 9061 04                       .
        db   $07                             ; 9062 07                       .
        db   $0E                             ; 9063 0E                       .
        db   $07                             ; 9064 07                       .
        db   $01,$03,$00,$00,$0A,$03,$02     ; 9065 01 03 00 00 0A 03 02     .......
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_906C:
        ldx     #$8F                            ; 906C A2 8F                    ..
        brk                                     ; 906E 00                       .
        db   $0F,$EB,$08                     ; 906F 0F EB 08                 ...
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_9076; 9072 F0 02                    ..
        ldx     #$00                            ; 9074 A2 00                    ..
MapInteractionSystem_Branch_9076:
        ldy     #$06                            ; 9076 A0 06                    ..
        jmp     MapInteractionSystem_Branch_8FEF; 9078 4C EF 8F                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_907B:
        pha                                     ; 907B 48                       H
        jsr     MapInteractionSystem_Entry_959B ; 907C 20 9B 95                  ..
        pla                                     ; 907F 68                       h
        jmp     MapInteractionSystem_Entry_8ED6 ; 9080 4C D6 8E                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9083:
        pha                                     ; 9083 48                       H
        and     #$03                            ; 9084 29 03                    ).
        sta     $3D                             ; 9086 85 3D                    .=
        jsr     MapInteractionSystem_Entry_9090 ; 9088 20 90 90                  ..
        pla                                     ; 908B 68                       h
        jsr     MapInteractionSystem_Entry_90C8 ; 908C 20 C8 90                  ..
        rts                                     ; 908F 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9090:
        jsr     FixedTrampoline07               ; 9090 20 16 C0                  ..
        jsr     UpperFixedEngine_Entry_C5AF     ; 9093 20 AF C5                  ..
        sec                                     ; 9096 38                       8
MapInteractionSystem_Entry_9097:
        jsr     FixedTrampoline01               ; 9097 20 04 C0                  ..
        bcc     MapInteractionSystem_Branch_90A2; 909A 90 06                    ..
        lda     $0572                           ; 909C AD 72 05                 .r.
        brk                                     ; 909F 00                       .
        db   $11,$87                         ; 90A0 11 87                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_90A2:
        jsr     UpperFixedEngine_Entry_C54E     ; 90A2 20 4E C5                  N.
        jmp     UpperFixedEngine_Entry_C58F     ; 90A5 4C 8F C5                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_90A8:
        jsr     WaitForNmi                      ; 90A8 20 74 FF                  t.
MapInteractionSystem_Entry_90AB:
        jsr     FixedTrampoline07               ; 90AB 20 16 C0                  ..
        clc                                     ; 90AE 18                       .
MapInteractionSystem_Entry_90AF:
        jsr     FixedTrampoline01               ; 90AF 20 04 C0                  ..
        jsr     MapInteractionSystem_Entry_A16B ; 90B2 20 6B A1                  k.
        jsr     MapInteractionSystem_Entry_90EF ; 90B5 20 EF 90                  ..
        lda     #$00                            ; 90B8 A9 00                    ..
        sta     $47                             ; 90BA 85 47                    .G
        ldx     PlayerLocalX                    ; 90BC A6 44                    .D
        ldy     PlayerLocalY                    ; 90BE A4 45                    .E
        jsr     UpperFixedEngine_Entry_D3E6     ; 90C0 20 E6 D3                  ..
        and     #$E0                            ; 90C3 29 E0                    ).
        sta     $46                             ; 90C5 85 46                    .F
        rts                                     ; 90C7 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_90C8:
        pha                                     ; 90C8 48                       H
        jsr     MapInteractionSystem_Entry_90EF ; 90C9 20 EF 90                  ..
        pla                                     ; 90CC 68                       h
        bpl     MapInteractionSystem_Branch_90D8; 90CD 10 09                    ..
        jsr     MapInteractionSystem_Entry_AAB4 ; 90CF 20 B4 AA                  ..
        jsr     MapInteractionSystem_Entry_90E2 ; 90D2 20 E2 90                  ..
        jmp     MapInteractionSystem_Entry_958A ; 90D5 4C 8A 95                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_90D8:
        jsr     MapInteractionSystem_Entry_ACEA ; 90D8 20 EA AC                  ..
        jsr     MapInteractionSystem_Entry_90E2 ; 90DB 20 E2 90                  ..
        jsr     MapInteractionSystem_Entry_958A ; 90DE 20 8A 95                  ..
        rts                                     ; 90E1 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_90E2:
        jsr     UpperFixedEngine_Entry_C5AF     ; 90E2 20 AF C5                  ..
        brk                                     ; 90E5 00                       .
        db   $00,$CF                         ; 90E6 00 CF                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C58F     ; 90E8 20 8F C5                  ..
        brk                                     ; 90EB 00                       .
        db   $08,$CF                         ; 90EC 08 CF                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 90EE 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_90EF:
        lda     PlayerLocalX                    ; 90EF A5 44                    .D
        sta     $6F60                           ; 90F1 8D 60 6F                 .`o
        sta     $6FA0                           ; 90F4 8D A0 6F                 ..o
        lda     PlayerLocalY                    ; 90F7 A5 45                    .E
        sta     $6F80                           ; 90F9 8D 80 6F                 ..o
        sta     $6FC0                           ; 90FC 8D C0 6F                 ..o
MapInteractionSystem_Branch_90FF:
        rts                                     ; 90FF 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9100:
        brk                                     ; 9100 00                       .
        db   $06,$87                         ; 9101 06 87                    ..
; ----------------------------------------------------------------------------
        bcc     MapInteractionSystem_Branch_90FF; 9103 90 FA                    ..
        brk                                     ; 9105 00                       .
        db   $82,$FB                         ; 9106 82 FB                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; 9108 20 C5 C5                  ..
        brk                                     ; 910B 00                       .
        db   $0A,$87                         ; 910C 0A 87                    ..
; ----------------------------------------------------------------------------
        ldx     $00                           ; 910E A6 00                    ..
        bmi     MapInteractionSystem_Branch_914D; 9110 30 3B                    0;
        lsr     $00                           ; 9112 46 00                    F.
        lsr     $00                           ; 9114 46 00                    F.
        lsr     $00                           ; 9116 46 00                    F.
        bcc     MapInteractionSystem_Branch_911F; 9118 90 05                    ..
        pha                                     ; 911A 48                       H
        brk                                     ; 911B 00                       .
        db   $56,$33                         ; 911C 56 33                    V3
; ----------------------------------------------------------------------------
        pla                                     ; 911E 68                       h
MapInteractionSystem_Branch_911F:
        pha                                     ; 911F 48                       H
        and     #$03                            ; 9120 29 03                    ).
        sta     $3D                             ; 9122 85 3D                    .=
        sta     $7000                           ; 9124 8D 00 70                 ..p
        lda     $0530                           ; 9127 AD 30 05                 .0.
        bmi     MapInteractionSystem_Branch_912F; 912A 30 03                    0.
        brk                                     ; 912C 00                       .
        db   $09,$9F                         ; 912D 09 9F                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_912F:
        lda     CurrentMapNumber                ; 912F A5 63                    .c
        cmp     #$36                            ; 9131 C9 36                    .6
        bne     MapInteractionSystem_Branch_9140; 9133 D0 0B                    ..
        lda     CurrentSubmapNumber             ; 9135 A5 64                    .d
        cmp     #$00                            ; 9137 C9 00                    ..
        bne     MapInteractionSystem_Branch_9140; 9139 D0 05                    ..
        lda     #$00                            ; 913B A9 00                    ..
        sta     $0530                           ; 913D 8D 30 05                 .0.
MapInteractionSystem_Branch_9140:
        jsr     MapInteractionSystem_Entry_8FEB ; 9140 20 EB 8F                  ..
        jsr     MapInteractionSystem_Entry_906C ; 9143 20 6C 90                  l.
        pla                                     ; 9146 68                       h
        jsr     MapInteractionSystem_Entry_90C8 ; 9147 20 C8 90                  ..
        jmp     UpperFixedEngine_Entry_C5BF     ; 914A 4C BF C5                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_914D:
        pha                                     ; 914D 48                       H
        brk                                     ; 914E 00                       .
        db   $0E,$BF                         ; 914F 0E BF                    ..
; ----------------------------------------------------------------------------
        pla                                     ; 9151 68                       h
        jmp     MapInteractionSystem_Branch_92DF; 9152 4C DF 92                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9155:
        lda     PlayerLocalX                    ; 9155 A5 44                    .D
        cmp     $3F                             ; 9157 C5 3F                    .?
        bcs     MapInteractionSystem_Branch_9166; 9159 B0 0B                    ..
        lda     PlayerLocalY                    ; 915B A5 45                    .E
        cmp     $40                             ; 915D C5 40                    .@
        bcs     MapInteractionSystem_Branch_9166; 915F B0 05                    ..
        jsr     MapInteractionSystem_Entry_91E1 ; 9161 20 E1 91                  ..
        bcc     MapInteractionSystem_Branch_91A6; 9164 90 40                    .@
MapInteractionSystem_Branch_9166:
        lda     CurrentMapNumber                ; 9166 A5 63                    .c
        cmp     #$04                            ; 9168 C9 04                    ..
        bne     MapInteractionSystem_Branch_9196; 916A D0 2A                    .*
        ldx     CurrentSubmapNumber             ; 916C A6 64                    .d
        cpx     #$02                            ; 916E E0 02                    ..
        bne     MapInteractionSystem_Branch_9196; 9170 D0 24                    .$
        lda     #$00                            ; 9172 A9 00                    ..
        sta     CurrentSubmapNumber             ; 9174 85 64                    .d
        ldx     #$23                            ; 9176 A2 23                    .#
        ldy     #$81                            ; 9178 A0 81                    ..
        lda     PlayerLocalX                    ; 917A A5 44                    .D
        bmi     MapInteractionSystem_Branch_9180; 917C 30 02                    0.
        bne     MapInteractionSystem_Branch_9184; 917E D0 04                    ..
MapInteractionSystem_Branch_9180:
        ldx     #$0C                            ; 9180 A2 0C                    ..
        ldy     #$83                            ; 9182 A0 83                    ..
MapInteractionSystem_Branch_9184:
        stx     PlayerLocalX                    ; 9184 86 44                    .D
        lda     #$07                            ; 9186 A9 07                    ..
        sta     PlayerLocalY                    ; 9188 85 45                    .E
        tya                                     ; 918A 98                       .
        pha                                     ; 918B 48                       H
        brk                                     ; 918C 00                       .
        db   $82,$FB                         ; 918D 82 FB                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; 918F 20 C5 C5                  ..
        pla                                     ; 9192 68                       h
        jmp     MapInteractionSystem_Entry_8ED6 ; 9193 4C D6 8E                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9196:
        cmp     #$01                            ; 9196 C9 01                    ..
        bne     MapInteractionSystem_Branch_91A2; 9198 D0 08                    ..
        lda     $6281                           ; 919A AD 81 62                 ..b
        ora     #$20                            ; 919D 09 20                    .
        sta     $6281                           ; 919F 8D 81 62                 ..b
MapInteractionSystem_Branch_91A2:
        jsr     MapInteractionSystem_Entry_9290 ; 91A2 20 90 92                  ..
        rts                                     ; 91A5 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_91A6:
        lda     CurrentMapNumber                ; 91A6 A5 63                    .c
        cmp     #$18                            ; 91A8 C9 18                    ..
        bne     MapInteractionSystem_Branch_91C2; 91AA D0 16                    ..
        lda     PlayerLocalY                    ; 91AC A5 45                    .E
        and     #$FE                            ; 91AE 29 FE                    ).
        cmp     #$1C                            ; 91B0 C9 1C                    ..
        bne     MapInteractionSystem_Branch_91C2; 91B2 D0 0E                    ..
        ldx     #$15                            ; 91B4 A2 15                    ..
        lda     PlayerLocalX                    ; 91B6 A5 44                    .D
        cmp     #$09                            ; 91B8 C9 09                    ..
        beq     MapInteractionSystem_Branch_91C3; 91BA F0 07                    ..
        ldx     #$EB                            ; 91BC A2 EB                    ..
        cmp     #$1F                            ; 91BE C9 1F                    ..
        beq     MapInteractionSystem_Branch_91C3; 91C0 F0 01                    ..
MapInteractionSystem_Branch_91C2:
        rts                                     ; 91C2 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_91C3:
        txa                                     ; 91C3 8A                       .
        tay                                     ; 91C4 A8                       .
        clc                                     ; 91C5 18                       .
        adc     PlayerLocalX                    ; 91C6 65 44                    eD
        sta     PlayerLocalX                    ; 91C8 85 44                    .D
        ldx     #$05                            ; 91CA A2 05                    ..
MapInteractionSystem_Branch_91CC:
        tya                                     ; 91CC 98                       .
        clc                                     ; 91CD 18                       .
        adc     $6F60,x                         ; 91CE 7D 60 6F                 }`o
        sta     $6F60,x                         ; 91D1 9D 60 6F                 .`o
        sta     $6FA0,x                         ; 91D4 9D A0 6F                 ..o
        dex                                     ; 91D7 CA                       .
        bpl     MapInteractionSystem_Branch_91CC; 91D8 10 F2                    ..
        tya                                     ; 91DA 98                       .
        clc                                     ; 91DB 18                       .
        adc     $EC                             ; 91DC 65 EC                    e.
        sta     $EC                             ; 91DE 85 EC                    ..
        rts                                     ; 91E0 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_91E1:
        ldx     #$00                            ; 91E1 A2 00                    ..
MapInteractionSystem_Branch_91E3:
        lda     $9236,x                         ; 91E3 BD 36 92                 .6.
        cmp     #$FF                            ; 91E6 C9 FF                    ..
        beq     MapInteractionSystem_Branch_9219; 91E8 F0 2F                    ./
        cmp     CurrentMapNumber                ; 91EA C5 63                    .c
        bne     MapInteractionSystem_Branch_9211; 91EC D0 23                    .#
        lda     $9237,x                         ; 91EE BD 37 92                 .7.
        cmp     CurrentSubmapNumber             ; 91F1 C5 64                    .d
        bne     MapInteractionSystem_Branch_9211; 91F3 D0 1C                    ..
        lda     PlayerLocalX                    ; 91F5 A5 44                    .D
        cmp     $9238,x                         ; 91F7 DD 38 92                 .8.
        beq     MapInteractionSystem_Branch_9203; 91FA F0 07                    ..
        bcc     MapInteractionSystem_Branch_9234; 91FC 90 36                    .6
        cmp     $9239,x                         ; 91FE DD 39 92                 .9.
        bcs     MapInteractionSystem_Branch_9234; 9201 B0 31                    .1
MapInteractionSystem_Branch_9203:
        lda     PlayerLocalY                    ; 9203 A5 45                    .E
        cmp     $923A,x                         ; 9205 DD 3A 92                 .:.
        beq     MapInteractionSystem_Branch_9211; 9208 F0 07                    ..
        bcc     MapInteractionSystem_Branch_9234; 920A 90 28                    .(
        cmp     $923B,x                         ; 920C DD 3B 92                 .;.
        bcs     MapInteractionSystem_Branch_9234; 920F B0 23                    .#
MapInteractionSystem_Branch_9211:
        txa                                     ; 9211 8A                       .
        clc                                     ; 9212 18                       .
        adc     #$06                            ; 9213 69 06                    i.
        tax                                     ; 9215 AA                       .
        jmp     MapInteractionSystem_Branch_91E3; 9216 4C E3 91                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9219:
        lda     CurrentMapNumber                ; 9219 A5 63                    .c
        cmp     #$21                            ; 921B C9 21                    .!
        bne     MapInteractionSystem_Branch_9232; 921D D0 13                    ..
        lda     SaveJoinedCharacterFlags        ; 921F AD 92 62                 ..b
        lsr     a                               ; 9222 4A                       J
        bcs     MapInteractionSystem_Branch_9232; 9223 B0 0D                    ..
        ldx     #$00                            ; 9225 A2 00                    ..
        lda     PlayerLocalY                    ; 9227 A5 45                    .E
        cmp     #$0F                            ; 9229 C9 0F                    ..
        bne     MapInteractionSystem_Branch_922F; 922B D0 02                    ..
        ldx     #$10                            ; 922D A2 10                    ..
MapInteractionSystem_Branch_922F:
        stx     $6F42                           ; 922F 8E 42 6F                 .Bo
MapInteractionSystem_Branch_9232:
        clc                                     ; 9232 18                       .
        rts                                     ; 9233 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9234:
        sec                                     ; 9234 38                       8
        rts                                     ; 9235 60                       `
; ----------------------------------------------------------------------------
        db   $0B                             ; 9236 0B                       .
        db   $00                             ; 9237 00                       .
        db   $00                             ; 9238 00                       .
        db   $FF                             ; 9239 FF                       .
        db   $08                             ; 923A 08                       .
        db   $31,$1D,$00,$00,$FF,$00,$0F,$27 ; 923B 31 1D 00 00 FF 00 0F 27  1......'
        db   $00,$00,$FF,$08,$FF,$28,$00,$00 ; 9243 00 00 FF 08 FF 28 00 00  .....(..
        db   $FF,$00,$11,$21,$00,$00,$FF,$00 ; 924B FF 00 11 21 00 00 FF 00  ...!....
        db   $11,$47,$00,$00,$FF,$00,$0D,$2E ; 9253 11 47 00 00 FF 00 0D 2E  .G......
        db   $00,$00,$FF,$00,$29,$46,$00,$00 ; 925B 00 00 FF 00 29 46 00 00  ....)F..
        db   $FF,$00,$20,$45,$00,$00,$FF,$08 ; 9263 FF 00 20 45 00 00 FF 08  .. E....
        db   $FF,$3C,$00,$00,$FF,$00,$26,$11 ; 926B FF 3C 00 00 FF 00 26 11  .<....&.
        db   $00,$0A,$FF,$00,$FF,$2A,$00,$01 ; 9273 00 0A FF 00 FF 2A 00 01  .....*..
        db   $0A,$00,$FF,$FF                 ; 927B 0A 00 FF FF              ....
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_927F:
        pha                                     ; 927F 48                       H
        lda     CurrentMapNumber                ; 9280 A5 63                    .c
        cmp     #$3E                            ; 9282 C9 3E                    .>
        bne     MapInteractionSystem_Branch_9289; 9284 D0 03                    ..
        sta     $618F                           ; 9286 8D 8F 61                 ..a
MapInteractionSystem_Branch_9289:
        brk                                     ; 9289 00                       .
        db   $57,$33                         ; 928A 57 33                    W3
; ----------------------------------------------------------------------------
        pla                                     ; 928C 68                       h
        jmp     MapInteractionSystem_Entry_8ED6 ; 928D 4C D6 8E                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9290:
        lda     $0515                           ; 9290 AD 15 05                 ...
        cmp     #$01                            ; 9293 C9 01                    ..
        beq     MapInteractionSystem_Branch_929A; 9295 F0 03                    ..
        brk                                     ; 9297 00                       .
        db   $82,$FB                         ; 9298 82 FB                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_929A:
        jsr     UpperFixedEngine_Entry_C5C5     ; 929A 20 C5 C5                  ..
        brk                                     ; 929D 00                       .
        db   $09,$87                         ; 929E 09 87                    ..
; ----------------------------------------------------------------------------
        bcs     MapInteractionSystem_Branch_927F; 92A0 B0 DD                    ..
        pha                                     ; 92A2 48                       H
        sec                                     ; 92A3 38                       8
        brk                                     ; 92A4 00                       .
        db   $0E,$BF                         ; 92A5 0E BF                    ..
; ----------------------------------------------------------------------------
        lda     $0515                           ; 92A7 AD 15 05                 ...
        cmp     #$01                            ; 92AA C9 01                    ..
        beq     MapInteractionSystem_Branch_92B1; 92AC F0 03                    ..
        brk                                     ; 92AE 00                       .
        db   $04,$9F                         ; 92AF 04 9F                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_92B1:
        lda     CurrentMapNumber                ; 92B1 A5 63                    .c
        cmp     #$45                            ; 92B3 C9 45                    .E
        bne     MapInteractionSystem_Branch_92CD; 92B5 D0 16                    ..
        lda     CurrentSubmapNumber             ; 92B7 A5 64                    .d
        cmp     #$00                            ; 92B9 C9 00                    ..
        bne     MapInteractionSystem_Branch_92CD; 92BB D0 10                    ..
        lda     PlayerLocalY                    ; 92BD A5 45                    .E
        cmp     #$07                            ; 92BF C9 07                    ..
        bne     MapInteractionSystem_Branch_92CD; 92C1 D0 0A                    ..
        dec     PlayerWorldY                    ; 92C3 C6 43                    .C
        dec     PlayerWorldY                    ; 92C5 C6 43                    .C
        dec     PlayerWorldY                    ; 92C7 C6 43                    .C
        pla                                     ; 92C9 68                       h
        lda     #$00                            ; 92CA A9 00                    ..
        pha                                     ; 92CC 48                       H
MapInteractionSystem_Branch_92CD:
        pla                                     ; 92CD 68                       h
        ldx     $0515                           ; 92CE AE 15 05                 ...
        cpx     #$01                            ; 92D1 E0 01                    ..
        bne     MapInteractionSystem_Branch_92DF; 92D3 D0 0A                    ..
        ldx     PlayerWorldX                    ; 92D5 A6 42                    .B
        stx     $6195                           ; 92D7 8E 95 61                 ..a
        ldx     PlayerWorldY                    ; 92DA A6 43                    .C
        stx     $6196                           ; 92DC 8E 96 61                 ..a
MapInteractionSystem_Branch_92DF:
        and     #$03                            ; 92DF 29 03                    ).
        sta     $3D                             ; 92E1 85 3D                    .=
MapInteractionSystem_Entry_92E3:
        jsr     MapInteractionSystem_Entry_92EC ; 92E3 20 EC 92                  ..
        jsr     UpperFixedEngine_Entry_C5BF     ; 92E6 20 BF C5                  ..
        jmp     MapInteractionSystem_Entry_9485 ; 92E9 4C 85 94                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_92EC:
        bit     $41                             ; 92EC 24 41                    $A
        bpl     MapInteractionSystem_Branch_92FC; 92EE 10 0C                    ..
        brk                                     ; 92F0 00                       .
        db   $57,$33                         ; 92F1 57 33                    W3
; ----------------------------------------------------------------------------
        lda     $41                             ; 92F3 A5 41                    .A
        and     #$7F                            ; 92F5 29 7F                    ).
        sta     $41                             ; 92F7 85 41                    .A
        jsr     MapInteractionSystem_Entry_9817 ; 92F9 20 17 98                  ..
MapInteractionSystem_Branch_92FC:
        lda     SaveCurrentChapterMinus1        ; 92FC AD 5A 61                 .Za
        bne     MapInteractionSystem_Branch_930B; 92FF D0 0A                    ..
        lda     $6283                           ; 9301 AD 83 62                 ..b
        bpl     MapInteractionSystem_Branch_930B; 9304 10 05                    ..
        lda     #$1E                            ; 9306 A9 1E                    ..
        sta     SaveTimeOfDay                   ; 9308 8D ED 62                 ..b
MapInteractionSystem_Branch_930B:
        brk                                     ; 930B 00                       .
        db   $00,$CF                         ; 930C 00 CF                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_A615 ; 930E 20 15 A6                  ..
        brk                                     ; 9311 00                       .
        db   $10,$5F                         ; 9312 10 5F                    ._
; ----------------------------------------------------------------------------
        lda     #$00                            ; 9314 A9 00                    ..
        sta     $6285                           ; 9316 8D 85 62                 ..b
        sta     $6289                           ; 9319 8D 89 62                 ..b
        brk                                     ; 931C 00                       .
        db   $1F,$DB,$7F                     ; 931D 1F DB 7F                 ...
; ----------------------------------------------------------------------------
        lda     PlayerWorldX                    ; 9320 A5 42                    .B
        sta     $6F60                           ; 9322 8D 60 6F                 .`o
        lda     PlayerWorldY                    ; 9325 A5 43                    .C
        sta     $6F80                           ; 9327 8D 80 6F                 ..o
        lda     $6195                           ; 932A AD 95 61                 ..a
        sta     $6F66                           ; 932D 8D 66 6F                 .fo
        sta     $6FA6                           ; 9330 8D A6 6F                 ..o
        lda     $6196                           ; 9333 AD 96 61                 ..a
        sta     $6F86                           ; 9336 8D 86 6F                 ..o
        sta     $6FC6                           ; 9339 8D C6 6F                 ..o
        lda     SavePlayerWorldX                ; 933C AD 97 61                 ..a
        sta     $6F67                           ; 933F 8D 67 6F                 .go
        sta     $6FA7                           ; 9342 8D A7 6F                 ..o
        sta     $6F68                           ; 9345 8D 68 6F                 .ho
        sta     $6FA8                           ; 9348 8D A8 6F                 ..o
        sta     $6F69                           ; 934B 8D 69 6F                 .io
        sta     $6FA9                           ; 934E 8D A9 6F                 ..o
        ldy     SavePlayerWorldY                ; 9351 AC 98 61                 ..a
        sty     $6F87                           ; 9354 8C 87 6F                 ..o
        sty     $6FC7                           ; 9357 8C C7 6F                 ..o
        sty     $6F89                           ; 935A 8C 89 6F                 ..o
        sty     $6FC9                           ; 935D 8C C9 6F                 ..o
        dey                                     ; 9360 88                       .
        sty     $6F88                           ; 9361 8C 88 6F                 ..o
        sty     $6FC8                           ; 9364 8C C8 6F                 ..o
        lda     #$00                            ; 9367 A9 00                    ..
        sta     $7046                           ; 9369 8D 46 70                 .Fp
        sta     $7047                           ; 936C 8D 47 70                 .Gp
        sta     $7048                           ; 936F 8D 48 70                 .Hp
        sta     $7049                           ; 9372 8D 49 70                 .Ip
        sta     $704A                           ; 9375 8D 4A 70                 .Jp
        sta     $704B                           ; 9378 8D 4B 70                 .Kp
        sta     $704C                           ; 937B 8D 4C 70                 .Lp
        sta     $704D                           ; 937E 8D 4D 70                 .Mp
        sta     $704E                           ; 9381 8D 4E 70                 .Np
        sta     $704F                           ; 9384 8D 4F 70                 .Op
        sta     $7050                           ; 9387 8D 50 70                 .Pp
        sta     $7051                           ; 938A 8D 51 70                 .Qp
        lda     CurrentTilesetCandidate         ; 938D A5 65                    .e
        cmp     #$03                            ; 938F C9 03                    ..
        beq     MapInteractionSystem_Branch_9396; 9391 F0 03                    ..
        jmp     MapInteractionSystem_Branch_9421; 9393 4C 21 94                 L!.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9396:
        ldx     #$22                            ; 9396 A2 22                    ."
        stx     $6F6A                           ; 9398 8E 6A 6F                 .jo
        stx     $6FAA                           ; 939B 8E AA 6F                 ..o
        inx                                     ; 939E E8                       .
        stx     $6F6C                           ; 939F 8E 6C 6F                 .lo
        stx     $6FAC                           ; 93A2 8E AC 6F                 ..o
        stx     $6F6E                           ; 93A5 8E 6E 6F                 .no
        stx     $6FAE                           ; 93A8 8E AE 6F                 ..o
        stx     $6F70                           ; 93AB 8E 70 6F                 .po
        stx     $6FB0                           ; 93AE 8E B0 6F                 ..o
        inx                                     ; 93B1 E8                       .
        stx     $6F6D                           ; 93B2 8E 6D 6F                 .mo
        stx     $6FAD                           ; 93B5 8E AD 6F                 ..o
        stx     $6F6F                           ; 93B8 8E 6F 6F                 .oo
        stx     $6FAF                           ; 93BB 8E AF 6F                 ..o
        stx     $6F71                           ; 93BE 8E 71 6F                 .qo
        stx     $6FB1                           ; 93C1 8E B1 6F                 ..o
        inx                                     ; 93C4 E8                       .
        stx     $6F6B                           ; 93C5 8E 6B 6F                 .ko
        stx     $6FAB                           ; 93C8 8E AB 6F                 ..o
        ldy     #$00                            ; 93CB A0 00                    ..
        ldx     #$04                            ; 93CD A2 04                    ..
        lda     $62A4                           ; 93CF AD A4 62                 ..b
MapInteractionSystem_Branch_93D2:
        asl     a                               ; 93D2 0A                       .
        bcc     MapInteractionSystem_Branch_93D6; 93D3 90 01                    ..
        iny                                     ; 93D5 C8                       .
MapInteractionSystem_Branch_93D6:
        dex                                     ; 93D6 CA                       .
        bne     MapInteractionSystem_Branch_93D2; 93D7 D0 F9                    ..
        cpy     #$04                            ; 93D9 C0 04                    ..
        bcs     MapInteractionSystem_Branch_9421; 93DB B0 44                    .D
        cpy     #$03                            ; 93DD C0 03                    ..
        beq     MapInteractionSystem_Branch_9413; 93DF F0 32                    .2
        cpy     #$02                            ; 93E1 C0 02                    ..
        beq     MapInteractionSystem_Branch_9405; 93E3 F0 20                    .
        cpy     #$01                            ; 93E5 C0 01                    ..
        beq     MapInteractionSystem_Branch_93F7; 93E7 F0 0E                    ..
        ldy     #$1E                            ; 93E9 A0 1E                    ..
        sty     $6F90                           ; 93EB 8C 90 6F                 ..o
        sty     $6FD0                           ; 93EE 8C D0 6F                 ..o
        sty     $6F91                           ; 93F1 8C 91 6F                 ..o
        sty     $6FD1                           ; 93F4 8C D1 6F                 ..o
MapInteractionSystem_Branch_93F7:
        ldy     #$1F                            ; 93F7 A0 1F                    ..
        sty     $6F8E                           ; 93F9 8C 8E 6F                 ..o
        sty     $6FCE                           ; 93FC 8C CE 6F                 ..o
        sty     $6F8F                           ; 93FF 8C 8F 6F                 ..o
        sty     $6FCF                           ; 9402 8C CF 6F                 ..o
MapInteractionSystem_Branch_9405:
        ldy     #$20                            ; 9405 A0 20                    .
        sty     $6F8A                           ; 9407 8C 8A 6F                 ..o
        sty     $6FCA                           ; 940A 8C CA 6F                 ..o
        sty     $6F8B                           ; 940D 8C 8B 6F                 ..o
        sty     $6FCB                           ; 9410 8C CB 6F                 ..o
MapInteractionSystem_Branch_9413:
        ldy     #$20                            ; 9413 A0 20                    .
        sty     $6F8C                           ; 9415 8C 8C 6F                 ..o
        sty     $6FCC                           ; 9418 8C CC 6F                 ..o
        sty     $6F8D                           ; 941B 8C 8D 6F                 ..o
        sty     $6FCD                           ; 941E 8C CD 6F                 ..o
MapInteractionSystem_Branch_9421:
        lda     SaveGameStateFlags              ; 9421 AD 8E 61                 ..a
        and     #$27                            ; 9424 29 27                    )'
        cmp     #$21                            ; 9426 C9 21                    .!
        bcc     MapInteractionSystem_Branch_9441; 9428 90 17                    ..
        lda     $6191                           ; 942A AD 91 61                 ..a
        sta     $6F6A                           ; 942D 8D 6A 6F                 .jo
        sta     $6FAA                           ; 9430 8D AA 6F                 ..o
        lda     $6192                           ; 9433 AD 92 61                 ..a
        sta     $6F8A                           ; 9436 8D 8A 6F                 ..o
        sta     $6FCA                           ; 9439 8D CA 6F                 ..o
        lda     #$00                            ; 943C A9 00                    ..
        sta     $704A                           ; 943E 8D 4A 70                 .Jp
MapInteractionSystem_Branch_9441:
        lda     #$FF                            ; 9441 A9 FF                    ..
        sta     $054E                           ; 9443 8D 4E 05                 .N.
        sta     $054F                           ; 9446 8D 4F 05                 .O.
        sta     $0598                           ; 9449 8D 98 05                 ...
        jsr     UpperFixedEngine_Entry_C5AF     ; 944C 20 AF C5                  ..
        lda     #$00                            ; 944F A9 00                    ..
        sta     $28                             ; 9451 85 28                    .(
        brk                                     ; 9453 00                       .
        db   $02,$87                         ; 9454 02 87                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_A289 ; 9456 20 89 A2                  ..
        jsr     MapInteractionSystem_Entry_96B7 ; 9459 20 B7 96                  ..
        jsr     UpperFixedEngine_Entry_C54E     ; 945C 20 4E C5                  N.
        jsr     UpperFixedEngine_Entry_C58F     ; 945F 20 8F C5                  ..
        jsr     MapInteractionSystem_Entry_AAB4 ; 9462 20 B4 AA                  ..
        jsr     MapInteractionSystem_Entry_958A ; 9465 20 8A 95                  ..
        lda     $058F                           ; 9468 AD 8F 05                 ...
        asl     a                               ; 946B 0A                       .
        ora     #$80                            ; 946C 09 80                    ..
        and     #$C0                            ; 946E 29 C0                    ).
        sta     $70E6                           ; 9470 8D E6 70                 ..p
        sta     $70E7                           ; 9473 8D E7 70                 ..p
        sta     $70E8                           ; 9476 8D E8 70                 ..p
        sta     $70E9                           ; 9479 8D E9 70                 ..p
        lda     $62A5                           ; 947C AD A5 62                 ..b
        bmi     MapInteractionSystem_Branch_9484; 947F 30 03                    0.
        brk                                     ; 9481 00                       .
        db   $09,$9F                         ; 9482 09 9F                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9484:
        rts                                     ; 9484 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9485:
        lda     $41                             ; 9485 A5 41                    .A
        bmi     MapInteractionSystem_Branch_94A3; 9487 30 1A                    0.
        lda     SaveCurrentChapterMinus1        ; 9489 AD 5A 61                 .Za
        cmp     #$02                            ; 948C C9 02                    ..
        beq     MapInteractionSystem_Branch_949D; 948E F0 0D                    ..
        cmp     #$04                            ; 9490 C9 04                    ..
        bne     MapInteractionSystem_Branch_94A3; 9492 D0 0F                    ..
        jsr     MapInteractionSystem_Entry_951C ; 9494 20 1C 95                  ..
        jsr     MapInteractionSystem_Entry_94FC ; 9497 20 FC 94                  ..
        jmp     MapInteractionSystem_Branch_9540; 949A 4C 40 95                 L@.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_949D:
        jsr     MapInteractionSystem_Entry_94A4 ; 949D 20 A4 94                  ..
        jsr     MapInteractionSystem_Entry_94D7 ; 94A0 20 D7 94                  ..
MapInteractionSystem_Branch_94A3:
        rts                                     ; 94A3 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_94A4:
        brk                                     ; 94A4 00                       .
        db   $13,$EB,$40                     ; 94A5 13 EB 40                 ..@
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_94D6; 94A8 F0 2C                    .,
        lda     $628D                           ; 94AA AD 8D 62                 ..b
        cmp     #$05                            ; 94AD C9 05                    ..
        bcc     MapInteractionSystem_Branch_94D6; 94AF 90 25                    .%
        lda     #$0A                            ; 94B1 A9 0A                    ..
        brk                                     ; 94B3 00                       .
        db   $63,$73                         ; 94B4 63 73                    cs
; ----------------------------------------------------------------------------
        tax                                     ; 94B6 AA                       .
        brk                                     ; 94B7 00                       .
        db   $46,$93,$07                     ; 94B8 46 93 07                 F..
; ----------------------------------------------------------------------------
        bcc     MapInteractionSystem_Branch_94D6; 94BB 90 19                    ..
        jsr     MapInteractionSystem_Entry_9846 ; 94BD 20 46 98                  F.
        brk                                     ; 94C0 00                       .
        db   $79,$3B                         ; 94C1 79 3B                    y;
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_955F ; 94C3 20 5F 95                  _.
        brk                                     ; 94C6 00                       .
        db   $0B,$EB,$04                     ; 94C7 0B EB 04                 ...
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_94D3; 94CA F0 07                    ..
        ldx     #$01                            ; 94CC A2 01                    ..
        lda     #$24                            ; 94CE A9 24                    .$
        brk                                     ; 94D0 00                       .
        db   $0D,$87                         ; 94D1 0D 87                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_94D3:
        jsr     UpperFixedEngine_Entry_D20A     ; 94D3 20 0A D2                  ..
MapInteractionSystem_Branch_94D6:
        rts                                     ; 94D6 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_94D7:
        lda     SaveVehicleFlags                ; 94D7 AD 8E 62                 ..b
        bpl     MapInteractionSystem_Branch_94FB; 94DA 10 1F                    ..
        lda     $628C                           ; 94DC AD 8C 62                 ..b
        cmp     #$05                            ; 94DF C9 05                    ..
        bcc     MapInteractionSystem_Branch_94FB; 94E1 90 18                    ..
        lda     #$0B                            ; 94E3 A9 0B                    ..
        brk                                     ; 94E5 00                       .
        db   $63,$73                         ; 94E6 63 73                    cs
; ----------------------------------------------------------------------------
        tax                                     ; 94E8 AA                       .
        brk                                     ; 94E9 00                       .
        db   $46,$93,$07                     ; 94EA 46 93 07                 F..
; ----------------------------------------------------------------------------
        bcc     MapInteractionSystem_Branch_94FB; 94ED 90 0C                    ..
        jsr     MapInteractionSystem_Entry_9846 ; 94EF 20 46 98                  F.
        brk                                     ; 94F2 00                       .
        db   $78,$3B                         ; 94F3 78 3B                    x;
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_9567 ; 94F5 20 67 95                  g.
        jsr     UpperFixedEngine_Entry_D20A     ; 94F8 20 0A D2                  ..
MapInteractionSystem_Branch_94FB:
        rts                                     ; 94FB 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_94FC:
        lda     $629B                           ; 94FC AD 9B 62                 ..b
        bpl     MapInteractionSystem_Branch_951B; 94FF 10 1A                    ..
        brk                                     ; 9501 00                       .
        db   $1A,$EB,$04                     ; 9502 1A EB 04                 ...
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_951B; 9505 F0 14                    ..
        jsr     MapInteractionSystem_Entry_9846 ; 9507 20 46 98                  F.
        jsr     MapInteractionSystem_Entry_9E3F ; 950A 20 3F 9E                  ?.
        sta     $F9                             ; 950D 85 F9                    ..
        brk                                     ; 950F 00                       .
        db   $21,$4B                         ; 9510 21 4B                    !K
; ----------------------------------------------------------------------------
        brk                                     ; 9512 00                       .
        db   $22,$4B                         ; 9513 22 4B                    "K
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_956F ; 9515 20 6F 95                  o.
        jsr     UpperFixedEngine_Entry_D20A     ; 9518 20 0A D2                  ..
MapInteractionSystem_Branch_951B:
        rts                                     ; 951B 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_951C:
        brk                                     ; 951C 00                       .
        db   $1D,$EB,$20                     ; 951D 1D EB 20                 ..
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_953F; 9520 F0 1D                    ..
        lda     $6299                           ; 9522 AD 99 62                 ..b
        bpl     MapInteractionSystem_Branch_953F; 9525 10 18                    ..
        and     #$3F                            ; 9527 29 3F                    )?
        brk                                     ; 9529 00                       .
        db   $1E,$DB,$00                     ; 952A 1E DB 00                 ...
; ----------------------------------------------------------------------------
        pha                                     ; 952D 48                       H
        brk                                     ; 952E 00                       .
        db   $6F,$33                         ; 952F 6F 33                    o3
; ----------------------------------------------------------------------------
        pla                                     ; 9531 68                       h
        pha                                     ; 9532 48                       H
        brk                                     ; 9533 00                       .
        db   $52,$73                         ; 9534 52 73                    Rs
; ----------------------------------------------------------------------------
        pla                                     ; 9536 68                       h
        brk                                     ; 9537 00                       .
        db   $26,$2F                         ; 9538 26 2F                    &/
; ----------------------------------------------------------------------------
        bcc     MapInteractionSystem_Branch_953F; 953A 90 03                    ..
        brk                                     ; 953C 00                       .
        db   $5F,$73                         ; 953D 5F 73                    _s
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_953F:
        rts                                     ; 953F 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9540:
        brk                                     ; 9540 00                       .
        db   $17,$EB,$08                     ; 9541 17 EB 08                 ...
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_955E; 9544 F0 18                    ..
        brk                                     ; 9546 00                       .
        db   $17,$EB,$01                     ; 9547 17 EB 01                 ...
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_955E; 954A F0 12                    ..
        brk                                     ; 954C 00                       .
        db   $26,$EB,$10                     ; 954D 26 EB 10                 &..
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_955E; 9550 D0 0C                    ..
        jsr     MapInteractionSystem_Entry_9846 ; 9552 20 46 98                  F.
        brk                                     ; 9555 00                       .
        db   $AF,$4B                         ; 9556 AF 4B                    .K
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_9582 ; 9558 20 82 95                  ..
        jsr     UpperFixedEngine_Entry_D20A     ; 955B 20 0A D2                  ..
MapInteractionSystem_Branch_955E:
        rts                                     ; 955E 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_955F:
        brk                                     ; 955F 00                       .
        db   $13,$DB,$BF                     ; 9560 13 DB BF                 ...
; ----------------------------------------------------------------------------
        lda     #$0A                            ; 9563 A9 0A                    ..
        bne     MapInteractionSystem_Branch_9575; 9565 D0 0E                    ..
MapInteractionSystem_Entry_9567:
        brk                                     ; 9567 00                       .
        db   $13,$DB,$7F                     ; 9568 13 DB 7F                 ...
; ----------------------------------------------------------------------------
        lda     #$0B                            ; 956B A9 0B                    ..
        bne     MapInteractionSystem_Branch_9575; 956D D0 06                    ..
MapInteractionSystem_Entry_956F:
        brk                                     ; 956F 00                       .
        db   $20,$DB,$7F                     ; 9570 20 DB 7F                  ..
; ----------------------------------------------------------------------------
        lda     #$0D                            ; 9573 A9 0D                    ..
MapInteractionSystem_Branch_9575:
        brk                                     ; 9575 00                       .
        db   $63,$73                         ; 9576 63 73                    cs
; ----------------------------------------------------------------------------
        tax                                     ; 9578 AA                       .
        brk                                     ; 9579 00                       .
        db   $51,$73                         ; 957A 51 73                    Qs
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_97B8 ; 957C 20 B8 97                  ..
        jmp     MapInteractionSystem_Entry_A232 ; 957F 4C 32 A2                 L2.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9582:
        brk                                     ; 9582 00                       .
        db   $26,$CB,$10                     ; 9583 26 CB 10                 &..
; ----------------------------------------------------------------------------
        lda     #$0C                            ; 9586 A9 0C                    ..
        bne     MapInteractionSystem_Branch_9575; 9588 D0 EB                    ..
MapInteractionSystem_Entry_958A:
        lda     #$00                            ; 958A A9 00                    ..
        sta     $0539                           ; 958C 8D 39 05                 .9.
        jsr     UpperFixedEngine_Entry_C54E     ; 958F 20 4E C5                  N.
MapInteractionSystem_Entry_9592:
        jsr     FixedTrampoline03               ; 9592 20 0A C0                  ..
        jsr     UpperFixedEngine_Entry_E501     ; 9595 20 01 E5                  ..
        jmp     UpperFixedEngine_Entry_DFF1     ; 9598 4C F1 DF                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_959B:
        lda     $0515                           ; 959B AD 15 05                 ...
        bne     MapInteractionSystem_Branch_95A6; 959E D0 06                    ..
        brk                                     ; 95A0 00                       .
        db   $82,$FB                         ; 95A1 82 FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 95A3 00                       .
        db   $04,$9F                         ; 95A4 04 9F                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_95A6:
        jmp     UpperFixedEngine_Entry_C5C5     ; 95A6 4C C5 C5                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_95A9:
        jsr     MapInteractionSystem_Entry_9648 ; 95A9 20 48 96                  H.
        jsr     UpperFixedEngine_Entry_C58F     ; 95AC 20 8F C5                  ..
        lda     $3D                             ; 95AF A5 3D                    .=
        sta     $7000                           ; 95B1 8D 00 70                 ..p
        jmp     MapInteractionSystem_Entry_AB6B ; 95B4 4C 6B AB                 Lk.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_95B7:
        ldx     #$03                            ; 95B7 A2 03                    ..
MapInteractionSystem_Branch_95B9:
        txa                                     ; 95B9 8A                       .
        sta     $6FE0,x                         ; 95BA 9D E0 6F                 ..o
        lda     $058F                           ; 95BD AD 8F 05                 ...
        and     #$40                            ; 95C0 29 40                    )@
        lsr     a                               ; 95C2 4A                       J
        ora     $058F                           ; 95C3 0D 8F 05                 ...
        and     #$20                            ; 95C6 29 20                    )
        asl     a                               ; 95C8 0A                       .
        sta     $70E0,x                         ; 95C9 9D E0 70                 ..p
        lda     $6BE7,x                         ; 95CC BD E7 6B                 ..k
        asl     a                               ; 95CF 0A                       .
        asl     a                               ; 95D0 0A                       .
        and     #$80                            ; 95D1 29 80                    ).
        eor     #$80                            ; 95D3 49 80                    I.
        ora     $70E0,x                         ; 95D5 1D E0 70                 ..p
        sta     $70E0,x                         ; 95D8 9D E0 70                 ..p
        dex                                     ; 95DB CA                       .
        bpl     MapInteractionSystem_Branch_95B9; 95DC 10 DB                    ..
        brk                                     ; 95DE 00                       .
        db   $62,$23,$40                     ; 95DF 62 23 40                 b#@
; ----------------------------------------------------------------------------
        sta     $51                             ; 95E2 85 51                    .Q
        beq     MapInteractionSystem_Entry_9627 ; 95E4 F0 41                    .A
        dec     $51                             ; 95E6 C6 51                    .Q
        beq     MapInteractionSystem_Entry_9627 ; 95E8 F0 3D                    .=
        ldx     #$00                            ; 95EA A2 00                    ..
        ldy     #$00                            ; 95EC A0 00                    ..
MapInteractionSystem_Branch_95EE:
        lda     $6BE7,x                         ; 95EE BD E7 6B                 ..k
        and     #$40                            ; 95F1 29 40                    )@
        beq     MapInteractionSystem_Branch_961E; 95F3 F0 29                    .)
        tya                                     ; 95F5 98                       .
        pha                                     ; 95F6 48                       H
        lda     $70E0,y                         ; 95F7 B9 E0 70                 ..p
        pha                                     ; 95FA 48                       H
        lda     $6FE0,y                         ; 95FB B9 E0 6F                 ..o
        pha                                     ; 95FE 48                       H
MapInteractionSystem_Branch_95FF:
        cpy     $51                             ; 95FF C4 51                    .Q
        beq     MapInteractionSystem_Branch_9613; 9601 F0 10                    ..
        lda     $6FE1,y                         ; 9603 B9 E1 6F                 ..o
        sta     $6FE0,y                         ; 9606 99 E0 6F                 ..o
        lda     $70E1,y                         ; 9609 B9 E1 70                 ..p
        sta     $70E0,y                         ; 960C 99 E0 70                 ..p
        iny                                     ; 960F C8                       .
        jmp     MapInteractionSystem_Branch_95FF; 9610 4C FF 95                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9613:
        pla                                     ; 9613 68                       h
        sta     $6FE0,y                         ; 9614 99 E0 6F                 ..o
        pla                                     ; 9617 68                       h
        sta     $70E0,y                         ; 9618 99 E0 70                 ..p
        pla                                     ; 961B 68                       h
        tay                                     ; 961C A8                       .
        dey                                     ; 961D 88                       .
MapInteractionSystem_Branch_961E:
        iny                                     ; 961E C8                       .
        cpx     $51                             ; 961F E4 51                    .Q
        beq     MapInteractionSystem_Entry_9627 ; 9621 F0 04                    ..
        inx                                     ; 9623 E8                       .
        jmp     MapInteractionSystem_Branch_95EE; 9624 4C EE 95                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9627:
        ldy     #$00                            ; 9627 A0 00                    ..
MapInteractionSystem_Branch_9629:
        sty     $51                             ; 9629 84 51                    .Q
        ldx     #$00                            ; 962B A2 00                    ..
MapInteractionSystem_Branch_962D:
        lda     $6FE0,x                         ; 962D BD E0 6F                 ..o
        cmp     $51                             ; 9630 C5 51                    .Q
        beq     MapInteractionSystem_Branch_963C; 9632 F0 08                    ..
        inx                                     ; 9634 E8                       .
        cmp     #$06                            ; 9635 C9 06                    ..
        beq     MapInteractionSystem_Branch_9642; 9637 F0 09                    ..
        jmp     MapInteractionSystem_Branch_962D; 9639 4C 2D 96                 L-.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_963C:
        ldy     $51                             ; 963C A4 51                    .Q
        txa                                     ; 963E 8A                       .
        sta     $053A,y                         ; 963F 99 3A 05                 .:.
MapInteractionSystem_Branch_9642:
        iny                                     ; 9642 C8                       .
        cpy     #$04                            ; 9643 C0 04                    ..
        bne     MapInteractionSystem_Branch_9629; 9645 D0 E2                    ..
        rts                                     ; 9647 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9648:
        jsr     UpperFixedEngine_Entry_C5AF     ; 9648 20 AF C5                  ..
        ldx     #$00                            ; 964B A2 00                    ..
        jsr     MapInteractionSystem_Entry_966C ; 964D 20 6C 96                  l.
        brk                                     ; 9650 00                       .
        db   $0B,$87                         ; 9651 0B 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$01                            ; 9653 A2 01                    ..
        jsr     MapInteractionSystem_Entry_966C ; 9655 20 6C 96                  l.
        brk                                     ; 9658 00                       .
        db   $0B,$87                         ; 9659 0B 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$02                            ; 965B A2 02                    ..
        jsr     MapInteractionSystem_Entry_966C ; 965D 20 6C 96                  l.
        brk                                     ; 9660 00                       .
        db   $0B,$87                         ; 9661 0B 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$03                            ; 9663 A2 03                    ..
        jsr     MapInteractionSystem_Entry_966C ; 9665 20 6C 96                  l.
        brk                                     ; 9668 00                       .
        db   $0B,$87                         ; 9669 0B 87                    ..
; ----------------------------------------------------------------------------
        rts                                     ; 966B 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_966C:
        jsr     MapInteractionSystem_Entry_AAFF ; 966C 20 FF AA                  ..
        bcc     MapInteractionSystem_Branch_9683; 966F 90 12                    ..
        php                                     ; 9671 08                       .
        pha                                     ; 9672 48                       H
        lda     SaveTransformSteps              ; 9673 AD 96 62                 ..b
        beq     MapInteractionSystem_Branch_9680; 9676 F0 08                    ..
        pla                                     ; 9678 68                       h
        lda     SaveTransformShape              ; 9679 AD 97 62                 ..b
        and     #$7F                            ; 967C 29 7F                    ).
        plp                                     ; 967E 28                       (
        rts                                     ; 967F 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9680:
        pla                                     ; 9680 68                       h
        plp                                     ; 9681 28                       (
        rts                                     ; 9682 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9683:
        lda     $6BE7,x                         ; 9683 BD E7 6B                 ..k
        and     #$C0                            ; 9686 29 C0                    ).
        bne     MapInteractionSystem_Branch_96AB; 9688 D0 21                    .!
        lda     SaveTransformSteps              ; 968A AD 96 62                 ..b
        beq     MapInteractionSystem_Branch_9695; 968D F0 06                    ..
        lda     SaveTransformShape              ; 968F AD 97 62                 ..b
        and     #$7F                            ; 9692 29 7F                    ).
        rts                                     ; 9694 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9695:
        brk                                     ; 9695 00                       .
        db   $2B,$73                         ; 9696 2B 73                    +s
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_96AE; 9698 F0 14                    ..
L969B = $+ 1
        cmp     #$08                            ; 969A C9 08                    ..
        bcc     MapInteractionSystem_Branch_96A2; 969C 90 04                    ..
        tay                                     ; 969E A8                       .
        lda     $969B,y                         ; 969F B9 9B 96                 ...
MapInteractionSystem_Branch_96A2:
        rts                                     ; 96A2 60                       `
; ----------------------------------------------------------------------------
        db   $3D,$19,$12,$11,$4C,$3B,$2F,$3E ; 96A3 3D 19 12 11 4C 3B 2F 3E  =...L;/>
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_96AB:
        lda     #$0E                            ; 96AB A9 0E                    ..
        rts                                     ; 96AD 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_96AE:
        brk                                     ; 96AE 00                       .
        db   $29,$73                         ; 96AF 29 73                    )s
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_96B1:
        beq     MapInteractionSystem_Branch_96B6; 96B1 F0 03                    ..
        clc                                     ; 96B3 18                       .
        adc     #$07                            ; 96B4 69 07                    i.
MapInteractionSystem_Branch_96B6:
        rts                                     ; 96B6 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_96B7:
        jsr     MapInteractionSystem_Entry_9799 ; 96B7 20 99 97                  ..
        jsr     MapInteractionSystem_Entry_95B7 ; 96BA 20 B7 95                  ..
        lda     $6FE3                           ; 96BD AD E3 6F                 ..o
        sta     $6FE5                           ; 96C0 8D E5 6F                 ..o
        lda     $6FE1                           ; 96C3 AD E1 6F                 ..o
        sta     $6FE3                           ; 96C6 8D E3 6F                 ..o
        lda     $6FE2                           ; 96C9 AD E2 6F                 ..o
        sta     $6FE4                           ; 96CC 8D E4 6F                 ..o
        ldx     #$04                            ; 96CF A2 04                    ..
        stx     $6FE1                           ; 96D1 8E E1 6F                 ..o
        inx                                     ; 96D4 E8                       .
        stx     $6FE2                           ; 96D5 8E E2 6F                 ..o
        inx                                     ; 96D8 E8                       .
        stx     $6FE6                           ; 96D9 8E E6 6F                 ..o
        inx                                     ; 96DC E8                       .
        stx     $6FE7                           ; 96DD 8E E7 6F                 ..o
        inx                                     ; 96E0 E8                       .
        stx     $6FE8                           ; 96E1 8E E8 6F                 ..o
        inx                                     ; 96E4 E8                       .
        stx     $6FE9                           ; 96E5 8E E9 6F                 ..o
        lda     #$0C                            ; 96E8 A9 0C                    ..
        sta     $6FEA                           ; 96EA 8D EA 6F                 ..o
        sta     $6FEB                           ; 96ED 8D EB 6F                 ..o
        sta     $6FEC                           ; 96F0 8D EC 6F                 ..o
        sta     $6FED                           ; 96F3 8D ED 6F                 ..o
        lda     #$0D                            ; 96F6 A9 0D                    ..
        sta     $6FEE                           ; 96F8 8D EE 6F                 ..o
        sta     $6FEF                           ; 96FB 8D EF 6F                 ..o
        sta     $6FF0                           ; 96FE 8D F0 6F                 ..o
        sta     $6FF1                           ; 9701 8D F1 6F                 ..o
        ldx     #$11                            ; 9704 A2 11                    ..
        lda     SaveGameStateFlags              ; 9706 AD 8E 61                 ..a
        and     #$27                            ; 9709 29 27                    )'
        cmp     #$21                            ; 970B C9 21                    .!
        bcc     MapInteractionSystem_Branch_9716; 970D 90 07                    ..
        lda     #$05                            ; 970F A9 05                    ..
        sta     $6FEA                           ; 9711 8D EA 6F                 ..o
        ldx     #$0A                            ; 9714 A2 0A                    ..
MapInteractionSystem_Branch_9716:
        lda     #$00                            ; 9716 A9 00                    ..
MapInteractionSystem_Branch_9718:
        sta     $7020,x                         ; 9718 9D 20 70                 . p
        sta     $7000,x                         ; 971B 9D 00 70                 ..p
        sta     $7160,x                         ; 971E 9D 60 71                 .`q
        dex                                     ; 9721 CA                       .
        bpl     MapInteractionSystem_Branch_9718; 9722 10 F4                    ..
        ldy     #$00                            ; 9724 A0 00                    ..
        sty     $7026                           ; 9726 8C 26 70                 .&p
        sty     $7027                           ; 9729 8C 27 70                 .'p
        sty     $7028                           ; 972C 8C 28 70                 .(p
        sty     $702A                           ; 972F 8C 2A 70                 .*p
        sty     $702B                           ; 9732 8C 2B 70                 .+p
        sty     $702C                           ; 9735 8C 2C 70                 .,p
        sty     $702D                           ; 9738 8C 2D 70                 .-p
        sty     $702E                           ; 973B 8C 2E 70                 ..p
        sty     $702F                           ; 973E 8C 2F 70                 ./p
        sty     $7030                           ; 9741 8C 30 70                 .0p
        sty     $7031                           ; 9744 8C 31 70                 .1p
        lda     #$80                            ; 9747 A9 80                    ..
        sta     $7029                           ; 9749 8D 29 70                 .)p
        ldx     CurrentTilesetCandidate         ; 974C A6 65                    .e
        beq     MapInteractionSystem_Branch_9760; 974E F0 10                    ..
        cpx     #$01                            ; 9750 E0 01                    ..
        beq     MapInteractionSystem_Branch_975D; 9752 F0 09                    ..
        sta     $7027                           ; 9754 8D 27 70                 .'p
        sta     $7028                           ; 9757 8D 28 70                 .(p
        jmp     MapInteractionSystem_Branch_9768; 975A 4C 68 97                 Lh.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_975D:
        sta     $7026                           ; 975D 8D 26 70                 .&p
MapInteractionSystem_Branch_9760:
        ldx     #$07                            ; 9760 A2 07                    ..
MapInteractionSystem_Branch_9762:
        sta     $702A,x                         ; 9762 9D 2A 70                 .*p
        dex                                     ; 9765 CA                       .
        bpl     MapInteractionSystem_Branch_9762; 9766 10 FA                    ..
MapInteractionSystem_Branch_9768:
        brk                                     ; 9768 00                       .
        db   $13,$EB,$01                     ; 9769 13 EB 01                 ...
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_9777; 976C D0 09                    ..
        sta     $7026                           ; 976E 8D 26 70                 .&p
        sty     $6195                           ; 9771 8C 95 61                 ..a
        sty     $6196                           ; 9774 8C 96 61                 ..a
MapInteractionSystem_Branch_9777:
        brk                                     ; 9777 00                       .
        db   $13,$EB,$02                     ; 9778 13 EB 02                 ...
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_9789; 977B D0 0C                    ..
        sta     $7027                           ; 977D 8D 27 70                 .'p
        sta     $7028                           ; 9780 8D 28 70                 .(p
        sty     SavePlayerWorldX                ; 9783 8C 97 61                 ..a
        sty     SavePlayerWorldY                ; 9786 8C 98 61                 ..a
MapInteractionSystem_Branch_9789:
        lda     $3D                             ; 9789 A5 3D                    .=
        sta     $7000                           ; 978B 8D 00 70                 ..p
        ldx     $0515                           ; 978E AE 15 05                 ...
        cpx     #$01                            ; 9791 E0 01                    ..
        bne     MapInteractionSystem_Branch_9798; 9793 D0 03                    ..
        sta     $7006                           ; 9795 8D 06 70                 ..p
MapInteractionSystem_Branch_9798:
        rts                                     ; 9798 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9799:
        brk                                     ; 9799 00                       .
        db   $03,$87                         ; 979A 03 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$00                            ; 979C A2 00                    ..
MapInteractionSystem_Branch_979E:
        txa                                     ; 979E 8A                       .
        pha                                     ; 979F 48                       H
        lda     $97AE,x                         ; 97A0 BD AE 97                 ...
        brk                                     ; 97A3 00                       .
        db   $04,$87                         ; 97A4 04 87                    ..
; ----------------------------------------------------------------------------
        pla                                     ; 97A6 68                       h
        tax                                     ; 97A7 AA                       .
        inx                                     ; 97A8 E8                       .
        cpx     #$0A                            ; 97A9 E0 0A                    ..
        bcc     MapInteractionSystem_Branch_979E; 97AB 90 F1                    ..
        rts                                     ; 97AD 60                       `
; ----------------------------------------------------------------------------
        db   $09,$0A,$0B,$0D,$0C,$64,$65,$63 ; 97AE 09 0A 0B 0D 0C 64 65 63  .....dec
        db   $6B,$6A                         ; 97B6 6B 6A                    kj
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_97B8:
        jsr     MapInteractionSystem_Entry_AB6B ; 97B8 20 6B AB                  k.
        ldx     #$00                            ; 97BB A2 00                    ..
        lda     $6BE7,x                         ; 97BD BD E7 6B                 ..k
        bmi     MapInteractionSystem_Branch_97EF; 97C0 30 2D                    0-
        jsr     MapInteractionSystem_Entry_966C ; 97C2 20 6C 96                  l.
        brk                                     ; 97C5 00                       .
        db   $0D,$87                         ; 97C6 0D 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$01                            ; 97C8 A2 01                    ..
        lda     $6BE7,x                         ; 97CA BD E7 6B                 ..k
        bmi     MapInteractionSystem_Branch_97EF; 97CD 30 20                    0
        jsr     MapInteractionSystem_Entry_966C ; 97CF 20 6C 96                  l.
        brk                                     ; 97D2 00                       .
        db   $0D,$87                         ; 97D3 0D 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$02                            ; 97D5 A2 02                    ..
        lda     $6BE7,x                         ; 97D7 BD E7 6B                 ..k
        bmi     MapInteractionSystem_Branch_97EF; 97DA 30 13                    0.
        jsr     MapInteractionSystem_Entry_966C ; 97DC 20 6C 96                  l.
        brk                                     ; 97DF 00                       .
        db   $0D,$87                         ; 97E0 0D 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$03                            ; 97E2 A2 03                    ..
        lda     $6BE7,x                         ; 97E4 BD E7 6B                 ..k
        bmi     MapInteractionSystem_Branch_97EF; 97E7 30 06                    0.
        jsr     MapInteractionSystem_Entry_966C ; 97E9 20 6C 96                  l.
        brk                                     ; 97EC 00                       .
        db   $0D,$87                         ; 97ED 0D 87                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_97EF:
        brk                                     ; 97EF 00                       .
        db   $0A,$6F                         ; 97F0 0A 6F                    .o
; ----------------------------------------------------------------------------
        jmp     WaitForNmi                      ; 97F2 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_97F5:
        ldx     $053A                           ; 97F5 AE 3A 05                 .:.
        jsr     UpperFixedEngine_Entry_D804     ; 97F8 20 04 D8                  ..
        ldx     $053B                           ; 97FB AE 3B 05                 .;.
        jsr     UpperFixedEngine_Entry_D804     ; 97FE 20 04 D8                  ..
        ldx     $053C                           ; 9801 AE 3C 05                 .<.
        jsr     UpperFixedEngine_Entry_D804     ; 9804 20 04 D8                  ..
        ldx     $053D                           ; 9807 AE 3D 05                 .=.
        jsr     UpperFixedEngine_Entry_D804     ; 980A 20 04 D8                  ..
        rts                                     ; 980D 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_980E:
        ldx     $053A,y                         ; 980E BE 3A 05                 .:.
        jsr     UpperFixedEngine_Entry_D804     ; 9811 20 04 D8                  ..
        jmp     WaitForNmi                      ; 9814 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9817:
        lda     SaveTransformSteps              ; 9817 AD 96 62                 ..b
        beq     MapInteractionSystem_Branch_9824; 981A F0 08                    ..
        lda     #$00                            ; 981C A9 00                    ..
        sta     SaveTransformSteps              ; 981E 8D 96 62                 ..b
        jsr     MapInteractionSystem_Entry_97B8 ; 9821 20 B8 97                  ..
MapInteractionSystem_Branch_9824:
        rts                                     ; 9824 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9825:
        lda     $07BA                           ; 9825 AD BA 07                 ...
        and     #$7F                            ; 9828 29 7F                    ).
        cmp     #$02                            ; 982A C9 02                    ..
        bcs     MapInteractionSystem_Branch_9845; 982C B0 17                    ..
        ldx     #$00                            ; 982E A2 00                    ..
MapInteractionSystem_Branch_9830:
        lda     $6BE7,x                         ; 9830 BD E7 6B                 ..k
        bmi     MapInteractionSystem_Branch_9845; 9833 30 10                    0.
        and     #$20                            ; 9835 29 20                    )
        beq     MapInteractionSystem_Branch_9840; 9837 F0 07                    ..
        txa                                     ; 9839 8A                       .
        pha                                     ; 983A 48                       H
        jsr     MapInteractionSystem_Entry_991F ; 983B 20 1F 99                  ..
        pla                                     ; 983E 68                       h
        tax                                     ; 983F AA                       .
MapInteractionSystem_Branch_9840:
        inx                                     ; 9840 E8                       .
        cpx     #$04                            ; 9841 E0 04                    ..
        bcc     MapInteractionSystem_Branch_9830; 9843 90 EB                    ..
MapInteractionSystem_Branch_9845:
        rts                                     ; 9845 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9846:
        brk                                     ; 9846 00                       .
        db   $07,$6F,$43                     ; 9847 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        rts                                     ; 984A 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_984B:
        rts                                     ; 984B 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_984C:
        jsr     MapInteractionSystem_Entry_9E6B ; 984C 20 6B 9E                  k.
        jsr     MapInteractionSystem_Entry_9485 ; 984F 20 85 94                  ..
        lda     $41                             ; 9852 A5 41                    .A
        bmi     MapInteractionSystem_Branch_98B6; 9854 30 60                    0`
        lda     SaveCurrentChapterMinus1        ; 9856 AD 5A 61                 .Za
        cmp     #$01                            ; 9859 C9 01                    ..
        bne     MapInteractionSystem_Branch_98B6; 985B D0 59                    .Y
        lda     $627F                           ; 985D AD 7F 62                 ..b
        lsr     a                               ; 9860 4A                       J
        bcs     MapInteractionSystem_Branch_98B6; 9861 B0 53                    .S
        brk                                     ; 9863 00                       .
        db   $0D,$CB,$80                     ; 9864 0D CB 80                 ...
; ----------------------------------------------------------------------------
        lda     $6289                           ; 9867 AD 89 62                 ..b
        clc                                     ; 986A 18                       .
        adc     #$01                            ; 986B 69 01                    i.
        sta     $6289                           ; 986D 8D 89 62                 ..b
        and     #$07                            ; 9870 29 07                    ).
        cmp     #$04                            ; 9872 C9 04                    ..
        bne     MapInteractionSystem_Branch_98B6; 9874 D0 40                    .@
        brk                                     ; 9876 00                       .
        db   $0D,$DB,$7F                     ; 9877 0D DB 7F                 ...
; ----------------------------------------------------------------------------
        lda     #$83                            ; 987A A9 83                    ..
        sta     $0530                           ; 987C 8D 30 05                 .0.
        ldx     #$01                            ; 987F A2 01                    ..
        stx     $0531                           ; 9881 8E 31 05                 .1.
        dex                                     ; 9884 CA                       .
        stx     $0533                           ; 9885 8E 33 05                 .3.
        stx     $0532                           ; 9888 8E 32 05                 .2.
        jsr     WaitForNmi                      ; 988B 20 74 FF                  t.
        ldx     #$01                            ; 988E A2 01                    ..
        txa                                     ; 9890 8A                       .
        brk                                     ; 9891 00                       .
        db   $0D,$87                         ; 9892 0D 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$02                            ; 9894 A2 02                    ..
        lda     #$04                            ; 9896 A9 04                    ..
        brk                                     ; 9898 00                       .
        db   $0D,$87                         ; 9899 0D 87                    ..
; ----------------------------------------------------------------------------
        ldx     #$27                            ; 989B A2 27                    .'
        lda     #$49                            ; 989D A9 49                    .I
        ldy     #$00                            ; 989F A0 00                    ..
        jsr     MapInteractionSystem_Entry_9939 ; 98A1 20 39 99                  9.
        jsr     MapInteractionSystem_Entry_9E2F ; 98A4 20 2F 9E                  /.
        lda     #$49                            ; 98A7 A9 49                    .I
        ldx     #$28                            ; 98A9 A2 28                    .(
        ldy     #$01                            ; 98AB A0 01                    ..
        jsr     MapInteractionSystem_Entry_9939 ; 98AD 20 39 99                  9.
        jsr     MapInteractionSystem_Entry_9E2F ; 98B0 20 2F 9E                  /.
        jsr     MapInteractionSystem_Entry_9D05 ; 98B3 20 05 9D                  ..
MapInteractionSystem_Branch_98B6:
        bit     $6288                           ; 98B6 2C 88 62                 ,.b
        bmi     MapInteractionSystem_Branch_984B; 98B9 30 90                    0.
        jsr     MapInteractionSystem_Entry_997F ; 98BB 20 7F 99                  ..
        jsr     MapInteractionSystem_Entry_9956 ; 98BE 20 56 99                  V.
        inc     $0518                           ; 98C1 EE 18 05                 ...
        ldx     #$00                            ; 98C4 A2 00                    ..
        stx     $53                             ; 98C6 86 53                    .S
        stx     $60                             ; 98C8 86 60                    .`
        stx     $70                             ; 98CA 86 70                    .p
MapInteractionSystem_Branch_98CC:
        lda     $6BE7,x                         ; 98CC BD E7 6B                 ..k
        bmi     MapInteractionSystem_Branch_98FB; 98CF 30 2A                    0*
        and     #$40                            ; 98D1 29 40                    )@
        bne     MapInteractionSystem_Branch_98F3; 98D3 D0 1E                    ..
        lda     #$00                            ; 98D5 A9 00                    ..
        sta     $51                             ; 98D7 85 51                    .Q
        sta     $52                             ; 98D9 85 52                    .R
        jsr     MapInteractionSystem_Entry_9902 ; 98DB 20 02 99                  ..
        jsr     MapInteractionSystem_Entry_9A3C ; 98DE 20 3C 9A                  <.
        jsr     MapInteractionSystem_Entry_9A52 ; 98E1 20 52 9A                  R.
        jsr     MapInteractionSystem_Entry_9A60 ; 98E4 20 60 9A                  `.
        jsr     MapInteractionSystem_Entry_9ACA ; 98E7 20 CA 9A                  ..
        jsr     MapInteractionSystem_Entry_9B08 ; 98EA 20 08 9B                  ..
        jsr     MapInteractionSystem_Entry_9A30 ; 98ED 20 30 9A                  0.
        jsr     MapInteractionSystem_Entry_9A46 ; 98F0 20 46 9A                  F.
MapInteractionSystem_Branch_98F3:
        inx                                     ; 98F3 E8                       .
        cpx     #$04                            ; 98F4 E0 04                    ..
        beq     MapInteractionSystem_Branch_98FB; 98F6 F0 03                    ..
        jmp     MapInteractionSystem_Branch_98CC; 98F8 4C CC 98                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_98FB:
        jsr     MapInteractionSystem_Entry_9A85 ; 98FB 20 85 9A                  ..
        jsr     MapInteractionSystem_Entry_9B1C ; 98FE 20 1C 9B                  ..
        rts                                     ; 9901 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9902:
        lda     $6BE7,x                         ; 9902 BD E7 6B                 ..k
        and     #$20                            ; 9905 29 20                    )
        beq     MapInteractionSystem_Branch_991E; 9907 F0 15                    ..
        txa                                     ; 9909 8A                       .
        pha                                     ; 990A 48                       H
        jsr     UpperFixedEngine_Entry_C891     ; 990B 20 91 C8                  ..
        and     #$07                            ; 990E 29 07                    ).
        bne     MapInteractionSystem_Branch_991C; 9910 D0 0A                    ..
        pla                                     ; 9912 68                       h
        pha                                     ; 9913 48                       H
        tax                                     ; 9914 AA                       .
        jsr     MapInteractionSystem_Entry_991F ; 9915 20 1F 99                  ..
        brk                                     ; 9918 00                       .
        db   $0E,$DB,$EF                     ; 9919 0E DB EF                 ...
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_991C:
        pla                                     ; 991C 68                       h
        tax                                     ; 991D AA                       .
MapInteractionSystem_Branch_991E:
        rts                                     ; 991E 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_991F:
        lda     $6BE7,x                         ; 991F BD E7 6B                 ..k
        and     #$DF                            ; 9922 29 DF                    ).
        sta     $6BE7,x                         ; 9924 9D E7 6B                 ..k
        lda     #$06                            ; 9927 A9 06                    ..
        brk                                     ; 9929 00                       .
        db   $45,$73                         ; 992A 45 73                    Es
; ----------------------------------------------------------------------------
        lda     $053A,x                         ; 992C BD 3A 05                 .:.
        tax                                     ; 992F AA                       .
        lda     $70E0,x                         ; 9930 BD E0 70                 ..p
        ora     #$80                            ; 9933 09 80                    ..
        sta     $70E0,x                         ; 9935 9D E0 70                 ..p
        rts                                     ; 9938 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9939:
        sta     $6F8A,y                         ; 9939 99 8A 6F                 ..o
        sta     $6FCA,y                         ; 993C 99 CA 6F                 ..o
        txa                                     ; 993F 8A                       .
        sta     $6F6A,y                         ; 9940 99 6A 6F                 .jo
        sta     $6FAA,y                         ; 9943 99 AA 6F                 ..o
        lda     #$00                            ; 9946 A9 00                    ..
        sta     $702A,y                         ; 9948 99 2A 70                 .*p
        lda     #$02                            ; 994B A9 02                    ..
        sta     $700A,y                         ; 994D 99 0A 70                 ..p
        iny                                     ; 9950 C8                       .
        tya                                     ; 9951 98                       .
        sta     $6FE9,y                         ; 9952 99 E9 6F                 ..o
        rts                                     ; 9955 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9956:
        lda     $627F                           ; 9956 AD 7F 62                 ..b
        asl     a                               ; 9959 0A                       .
        asl     a                               ; 995A 0A                       .
        bcc     MapInteractionSystem_Branch_997E; 995B 90 21                    .!
        asl     a                               ; 995D 0A                       .
        bcs     MapInteractionSystem_Branch_997E; 995E B0 1E                    ..
        ldx     #$05                            ; 9960 A2 05                    ..
MapInteractionSystem_Branch_9962:
        lda     $7140,x                         ; 9962 BD 40 71                 .@q
        and     #$1F                            ; 9965 29 1F                    ).
        tay                                     ; 9967 A8                       .
        lda     $6F40,y                         ; 9968 B9 40 6F                 .@o
        cmp     #$01                            ; 996B C9 01                    ..
        beq     MapInteractionSystem_Branch_997E; 996D F0 0F                    ..
        cmp     #$02                            ; 996F C9 02                    ..
        beq     MapInteractionSystem_Branch_997E; 9971 F0 0B                    ..
        dex                                     ; 9973 CA                       .
        bpl     MapInteractionSystem_Branch_9962; 9974 10 EC                    ..
        lda     $627F                           ; 9976 AD 7F 62                 ..b
        and     #$BF                            ; 9979 29 BF                    ).
        sta     $627F                           ; 997B 8D 7F 62                 ..b
MapInteractionSystem_Branch_997E:
        rts                                     ; 997E 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_997F:
        ldx     #$04                            ; 997F A2 04                    ..
        lda     #$03                            ; 9981 A9 03                    ..
        jsr     MapInteractionSystem_Entry_B157 ; 9983 20 57 B1                  W.
        bcc     MapInteractionSystem_Branch_998A; 9986 90 02                    ..
        inx                                     ; 9988 E8                       .
        inx                                     ; 9989 E8                       .
MapInteractionSystem_Branch_998A:
        stx     $58                             ; 998A 86 58                    .X
        ldx     #$00                            ; 998C A2 00                    ..
        stx     $59                             ; 998E 86 59                    .Y
MapInteractionSystem_Branch_9990:
        ldy     $59                             ; 9990 A4 59                    .Y
        lda     $053A,y                         ; 9992 B9 3A 05                 .:.
        tay                                     ; 9995 A8                       .
        lda     $7140,y                         ; 9996 B9 40 71                 .@q
        and     #$1F                            ; 9999 29 1F                    ).
        tay                                     ; 999B A8                       .
        lda     $6F40,y                         ; 999C B9 40 6F                 .@o
        and     #$7F                            ; 999F 29 7F                    ).
        ldy     $59                             ; 99A1 A4 59                    .Y
        sta     $54,y                           ; 99A3 99 54 00                 .T.
        inc     $59                             ; 99A6 E6 59                    .Y
        inx                                     ; 99A8 E8                       .
        cpx     $58                             ; 99A9 E4 58                    .X
        beq     MapInteractionSystem_Branch_99BC; 99AB F0 0F                    ..
        cpx     #$01                            ; 99AD E0 01                    ..
        bne     MapInteractionSystem_Branch_9990; 99AF D0 DF                    ..
        lda     $58                             ; 99B1 A5 58                    .X
        cmp     #$04                            ; 99B3 C9 04                    ..
        beq     MapInteractionSystem_Branch_9990; 99B5 F0 D9                    ..
        ldx     #$03                            ; 99B7 A2 03                    ..
        jmp     MapInteractionSystem_Branch_9990; 99B9 4C 90 99                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_99BC:
        rts                                     ; 99BC 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_99BD:
        bit     $6288                           ; 99BD 2C 88 62                 ,.b
        bmi     MapInteractionSystem_Branch_9A1B; 99C0 30 59                    0Y
        lda     #$03                            ; 99C2 A9 03                    ..
        jsr     MapInteractionSystem_Entry_B157 ; 99C4 20 57 B1                  W.
        bcc     MapInteractionSystem_Branch_9A2A; 99C7 90 61                    .a
        lda     #$01                            ; 99C9 A9 01                    ..
        sta     $52                             ; 99CB 85 52                    .R
        lda     #$00                            ; 99CD A9 00                    ..
        sta     $53                             ; 99CF 85 53                    .S
        sta     $70                             ; 99D1 85 70                    .p
        ldx     #$02                            ; 99D3 A2 02                    ..
        jsr     MapInteractionSystem_Entry_99E1 ; 99D5 20 E1 99                  ..
        jsr     MapInteractionSystem_Entry_99E1 ; 99D8 20 E1 99                  ..
        jsr     MapInteractionSystem_Entry_9A85 ; 99DB 20 85 9A                  ..
        jmp     MapInteractionSystem_Entry_9B1C ; 99DE 4C 1C 9B                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_99E1:
        lda     $052A,x                         ; 99E1 BD 2A 05                 .*.
        beq     MapInteractionSystem_Branch_9A29; 99E4 F0 43                    .C
        lda     $6BE7,x                         ; 99E6 BD E7 6B                 ..k
        bmi     MapInteractionSystem_Branch_9A29; 99E9 30 3E                    0>
        and     #$40                            ; 99EB 29 40                    )@
        bne     MapInteractionSystem_Branch_9A29; 99ED D0 3A                    .:
        ldy     $053A,x                         ; 99EF BC 3A 05                 .:.
        lda     $7140,y                         ; 99F2 B9 40 71                 .@q
        and     #$1F                            ; 99F5 29 1F                    ).
        tay                                     ; 99F7 A8                       .
        lda     $6F40,y                         ; 99F8 B9 40 6F                 .@o
        and     #$7F                            ; 99FB 29 7F                    ).
        cmp     #$01                            ; 99FD C9 01                    ..
        bne     MapInteractionSystem_Branch_9A1C; 99FF D0 1B                    ..
        lda     #$01                            ; 9A01 A9 01                    ..
        sta     $53                             ; 9A03 85 53                    .S
MapInteractionSystem_Branch_9A05:
        sta     $52                             ; 9A05 85 52                    .R
        sta     $6F                             ; 9A07 85 6F                    .o
        lda     $627F                           ; 9A09 AD 7F 62                 ..b
        and     #$DF                            ; 9A0C 29 DF                    ).
        sta     $627F                           ; 9A0E 8D 7F 62                 ..b
        and     #$40                            ; 9A11 29 40                    )@
        bne     MapInteractionSystem_Branch_9A2B; 9A13 D0 16                    ..
        lda     #$01                            ; 9A15 A9 01                    ..
        jsr     MapInteractionSystem_Entry_B157 ; 9A17 20 57 B1                  W.
        inx                                     ; 9A1A E8                       .
MapInteractionSystem_Branch_9A1B:
        rts                                     ; 9A1B 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9A1C:
        cmp     #$02                            ; 9A1C C9 02                    ..
        bne     MapInteractionSystem_Branch_9A29; 9A1E D0 09                    ..
        lda     #$02                            ; 9A20 A9 02                    ..
        sta     $53                             ; 9A22 85 53                    .S
        lda     #$0F                            ; 9A24 A9 0F                    ..
        jmp     MapInteractionSystem_Branch_9A05; 9A26 4C 05 9A                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9A29:
        inx                                     ; 9A29 E8                       .
MapInteractionSystem_Branch_9A2A:
        rts                                     ; 9A2A 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9A2B:
        lda     #$00                            ; 9A2B A9 00                    ..
        sta     $53                             ; 9A2D 85 53                    .S
        rts                                     ; 9A2F 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9A30:
        lda     $51                             ; 9A30 A5 51                    .Q
        beq     MapInteractionSystem_Branch_9A45; 9A32 F0 11                    ..
        sta     $6F                             ; 9A34 85 6F                    .o
        lda     #$00                            ; 9A36 A9 00                    ..
        jsr     MapInteractionSystem_Entry_B157 ; 9A38 20 57 B1                  W.
        rts                                     ; 9A3B 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9A3C:
        lda     $6BE7,x                         ; 9A3C BD E7 6B                 ..k
        and     #$02                            ; 9A3F 29 02                    ).
        beq     MapInteractionSystem_Branch_9A45; 9A41 F0 02                    ..
        inc     $51                             ; 9A43 E6 51                    .Q
MapInteractionSystem_Branch_9A45:
        rts                                     ; 9A45 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9A46:
        lda     $52                             ; 9A46 A5 52                    .R
        beq     MapInteractionSystem_Branch_9A5F; 9A48 F0 15                    ..
        sta     $6F                             ; 9A4A 85 6F                    .o
        lda     #$01                            ; 9A4C A9 01                    ..
        jsr     MapInteractionSystem_Entry_B157 ; 9A4E 20 57 B1                  W.
        rts                                     ; 9A51 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9A52:
        lda     $41                             ; 9A52 A5 41                    .A
        bmi     MapInteractionSystem_Branch_9A5F; 9A54 30 09                    0.
        lda     $6BE7,x                         ; 9A56 BD E7 6B                 ..k
        and     #$04                            ; 9A59 29 04                    ).
        beq     MapInteractionSystem_Branch_9A5F; 9A5B F0 02                    ..
        inc     $52                             ; 9A5D E6 52                    .R
MapInteractionSystem_Branch_9A5F:
        rts                                     ; 9A5F 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9A60:
        lda     $0518                           ; 9A60 AD 18 05                 ...
        and     #$03                            ; 9A63 29 03                    ).
        bne     MapInteractionSystem_Branch_9A84; 9A65 D0 1D                    ..
        lda     $41                             ; 9A67 A5 41                    .A
        bpl     MapInteractionSystem_Branch_9A78; 9A69 10 0D                    ..
        lda     $07BA                           ; 9A6B AD BA 07                 ...
        and     #$7F                            ; 9A6E 29 7F                    ).
        cmp     #$04                            ; 9A70 C9 04                    ..
        bcc     MapInteractionSystem_Branch_9A84; 9A72 90 10                    ..
        cmp     #$07                            ; 9A74 C9 07                    ..
        beq     MapInteractionSystem_Branch_9A84; 9A76 F0 0C                    ..
MapInteractionSystem_Branch_9A78:
        lda     $6BE7,x                         ; 9A78 BD E7 6B                 ..k
        lsr     a                               ; 9A7B 4A                       J
        bcc     MapInteractionSystem_Branch_9A84; 9A7C 90 06                    ..
        inc     $52                             ; 9A7E E6 52                    .R
        lda     #$01                            ; 9A80 A9 01                    ..
        sta     $53                             ; 9A82 85 53                    .S
MapInteractionSystem_Branch_9A84:
        rts                                     ; 9A84 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9A85:
        lda     $53                             ; 9A85 A5 53                    .S
        beq     MapInteractionSystem_Branch_9AC9; 9A87 F0 40                    .@
        jsr     WaitForNmi                      ; 9A89 20 74 FF                  t.
        ldy     #$16                            ; 9A8C A0 16                    ..
        lda     $53                             ; 9A8E A5 53                    .S
        cmp     #$01                            ; 9A90 C9 01                    ..
        beq     MapInteractionSystem_Branch_9A96; 9A92 F0 02                    ..
        ldy     #$10                            ; 9A94 A0 10                    ..
MapInteractionSystem_Branch_9A96:
        ldx     #$00                            ; 9A96 A2 00                    ..
        tya                                     ; 9A98 98                       .
MapInteractionSystem_Branch_9A99:
        sta     $05FD,x                         ; 9A99 9D FD 05                 ...
        inx                                     ; 9A9C E8                       .
        cpx     #$0C                            ; 9A9D E0 0C                    ..
        bne     MapInteractionSystem_Branch_9A99; 9A9F D0 F8                    ..
        lda     $60                             ; 9AA1 A5 60                    .`
        beq     MapInteractionSystem_Branch_9AB4; 9AA3 F0 0F                    ..
        lda     $53                             ; 9AA5 A5 53                    .S
        cmp     #$02                            ; 9AA7 C9 02                    ..
        beq     MapInteractionSystem_Branch_9AB1; 9AA9 F0 06                    ..
        brk                                     ; 9AAB 00                       .
        db   $84,$FB                         ; 9AAC 84 FB                    ..
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_9AB4; 9AAE 4C B4 9A                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9AB1:
        brk                                     ; 9AB1 00                       .
        db   $81,$FB                         ; 9AB2 81 FB                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9AB4:
        jsr     UpperFixedEngine_Entry_C5B9     ; 9AB4 20 B9 C5                  ..
        jsr     WaitForNmi                      ; 9AB7 20 74 FF                  t.
        jsr     WaitForNmi                      ; 9ABA 20 74 FF                  t.
        brk                                     ; 9ABD 00                       .
        db   $00,$E7                         ; 9ABE 00 E7                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9AC0 00                       .
        db   $27,$0F                         ; 9AC1 27 0F                    '.
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5B9     ; 9AC3 20 B9 C5                  ..
        jsr     WaitForNmi                      ; 9AC6 20 74 FF                  t.
MapInteractionSystem_Branch_9AC9:
        rts                                     ; 9AC9 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9ACA:
        lda     $54,x                           ; 9ACA B5 54                    .T
        cmp     #$01                            ; 9ACC C9 01                    ..
        bne     MapInteractionSystem_Branch_9AEA; 9ACE D0 1A                    ..
        lda     $627F                           ; 9AD0 AD 7F 62                 ..b
        and     #$DF                            ; 9AD3 29 DF                    ).
        sta     $627F                           ; 9AD5 8D 7F 62                 ..b
        and     #$40                            ; 9AD8 29 40                    )@
        bne     MapInteractionSystem_Branch_9B07; 9ADA D0 2B                    .+
        lda     $52                             ; 9ADC A5 52                    .R
        clc                                     ; 9ADE 18                       .
        adc     #$01                            ; 9ADF 69 01                    i.
        sta     $52                             ; 9AE1 85 52                    .R
        lda     #$01                            ; 9AE3 A9 01                    ..
        sta     $53                             ; 9AE5 85 53                    .S
        inc     $60                             ; 9AE7 E6 60                    .`
        rts                                     ; 9AE9 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9AEA:
        cmp     #$02                            ; 9AEA C9 02                    ..
        bne     MapInteractionSystem_Branch_9B07; 9AEC D0 19                    ..
        lda     $627F                           ; 9AEE AD 7F 62                 ..b
        and     #$DF                            ; 9AF1 29 DF                    ).
        sta     $627F                           ; 9AF3 8D 7F 62                 ..b
        and     #$40                            ; 9AF6 29 40                    )@
        bne     MapInteractionSystem_Branch_9B07; 9AF8 D0 0D                    ..
        lda     $52                             ; 9AFA A5 52                    .R
        clc                                     ; 9AFC 18                       .
        adc     #$0F                            ; 9AFD 69 0F                    i.
        sta     $52                             ; 9AFF 85 52                    .R
        lda     #$02                            ; 9B01 A9 02                    ..
        sta     $53                             ; 9B03 85 53                    .S
        inc     $60                             ; 9B05 E6 60                    .`
MapInteractionSystem_Branch_9B07:
        rts                                     ; 9B07 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9B08:
        lda     $0518                           ; 9B08 AD 18 05                 ...
        and     #$03                            ; 9B0B 29 03                    ).
        bne     MapInteractionSystem_Branch_9B1B; 9B0D D0 0C                    ..
        lda     $6BE7,x                         ; 9B0F BD E7 6B                 ..k
        and     #$08                            ; 9B12 29 08                    ).
        beq     MapInteractionSystem_Branch_9B1B; 9B14 F0 05                    ..
        lda     #$04                            ; 9B16 A9 04                    ..
        jsr     MapInteractionSystem_Entry_B157 ; 9B18 20 57 B1                  W.
MapInteractionSystem_Branch_9B1B:
        rts                                     ; 9B1B 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9B1C:
        ldx     #$03                            ; 9B1C A2 03                    ..
        lda     #$FF                            ; 9B1E A9 FF                    ..
MapInteractionSystem_Branch_9B20:
        sta     $053E,x                         ; 9B20 9D 3E 05                 .>.
        dex                                     ; 9B23 CA                       .
        bpl     MapInteractionSystem_Branch_9B20; 9B24 10 FA                    ..
        ldx     #$00                            ; 9B26 A2 00                    ..
        stx     $51                             ; 9B28 86 51                    .Q
MapInteractionSystem_Branch_9B2A:
        lda     $6BE7,x                         ; 9B2A BD E7 6B                 ..k
        bmi     MapInteractionSystem_Branch_9B43; 9B2D 30 14                    0.
        lda     #$02                            ; 9B2F A9 02                    ..
        jsr     MapInteractionSystem_Entry_B157 ; 9B31 20 57 B1                  W.
        bcc     MapInteractionSystem_Branch_9B3E; 9B34 90 08                    ..
        ldy     $51                             ; 9B36 A4 51                    .Q
        txa                                     ; 9B38 8A                       .
        sta     $053E,y                         ; 9B39 99 3E 05                 .>.
        inc     $51                             ; 9B3C E6 51                    .Q
MapInteractionSystem_Branch_9B3E:
        inx                                     ; 9B3E E8                       .
        cpx     #$04                            ; 9B3F E0 04                    ..
        bne     MapInteractionSystem_Branch_9B2A; 9B41 D0 E7                    ..
MapInteractionSystem_Branch_9B43:
        lda     $51                             ; 9B43 A5 51                    .Q
        beq     MapInteractionSystem_Branch_9BB0; 9B45 F0 69                    .i
        ldx     #$00                            ; 9B47 A2 00                    ..
        stx     $0542                           ; 9B49 8E 42 05                 .B.
MapInteractionSystem_Branch_9B4C:
        lda     $053E,x                         ; 9B4C BD 3E 05                 .>.
        bmi     MapInteractionSystem_Branch_9B68; 9B4F 30 17                    0.
        tax                                     ; 9B51 AA                       .
        pha                                     ; 9B52 48                       H
        jsr     MapInteractionSystem_Entry_966C ; 9B53 20 6C 96                  l.
        brk                                     ; 9B56 00                       .
        db   $0D,$87                         ; 9B57 0D 87                    ..
; ----------------------------------------------------------------------------
        pla                                     ; 9B59 68                       h
        tay                                     ; 9B5A A8                       .
        jsr     MapInteractionSystem_Entry_980E ; 9B5B 20 0E 98                  ..
        inc     $0542                           ; 9B5E EE 42 05                 .B.
        ldx     $0542                           ; 9B61 AE 42 05                 .B.
        cpx     #$04                            ; 9B64 E0 04                    ..
        bcc     MapInteractionSystem_Branch_9B4C; 9B66 90 E4                    ..
MapInteractionSystem_Branch_9B68:
        jsr     MapInteractionSystem_Entry_AB6B ; 9B68 20 6B AB                  k.
        brk                                     ; 9B6B 00                       .
        db   $27,$0F                         ; 9B6C 27 0F                    '.
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_9846 ; 9B6E 20 46 98                  F.
        jsr     MapInteractionSystem_Entry_A232 ; 9B71 20 32 A2                  2.
        lda     SaveCurrentChapterMinus1        ; 9B74 AD 5A 61                 .Za
        cmp     #$04                            ; 9B77 C9 04                    ..
        bne     MapInteractionSystem_Branch_9B8E; 9B79 D0 13                    ..
        brk                                     ; 9B7B 00                       .
        db   $5D,$33                         ; 9B7C 5D 33                    ]3
; ----------------------------------------------------------------------------
        bcc     MapInteractionSystem_Branch_9B87; 9B7E 90 07                    ..
        lda     SaveGameStateFlags              ; 9B80 AD 8E 61                 ..a
        and     #$07                            ; 9B83 29 07                    ).
        beq     MapInteractionSystem_Branch_9B8E; 9B85 F0 07                    ..
MapInteractionSystem_Branch_9B87:
        lda     $0599                           ; 9B87 AD 99 05                 ...
        bne     MapInteractionSystem_Branch_9BB1; 9B8A D0 25                    .%
        beq     MapInteractionSystem_Branch_9B94; 9B8C F0 06                    ..
MapInteractionSystem_Branch_9B8E:
        brk                                     ; 9B8E 00                       .
        db   $62,$23,$0B                     ; 9B8F 62 23 0B                 b#.
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_9BB1; 9B92 F0 1D                    ..
MapInteractionSystem_Branch_9B94:
        ldx     #$00                            ; 9B94 A2 00                    ..
        stx     $0542                           ; 9B96 8E 42 05                 .B.
MapInteractionSystem_Branch_9B99:
        lda     $053E,x                         ; 9B99 BD 3E 05                 .>.
        bmi     MapInteractionSystem_Branch_9BAD; 9B9C 30 0F                    0.
        sta     $F9                             ; 9B9E 85 F9                    ..
        brk                                     ; 9BA0 00                       .
        db   $1B,$0B                         ; 9BA1 1B 0B                    ..
; ----------------------------------------------------------------------------
        inc     $0542                           ; 9BA3 EE 42 05                 .B.
        ldx     $0542                           ; 9BA6 AE 42 05                 .B.
        cpx     #$04                            ; 9BA9 E0 04                    ..
        bcc     MapInteractionSystem_Branch_9B99; 9BAB 90 EC                    ..
MapInteractionSystem_Branch_9BAD:
        jmp     UpperFixedEngine_Entry_D20A     ; 9BAD 4C 0A D2                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9BB0:
        rts                                     ; 9BB0 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9BB1:
        brk                                     ; 9BB1 00                       .
        db   $27,$0F                         ; 9BB2 27 0F                    '.
; ----------------------------------------------------------------------------
        brk                                     ; 9BB4 00                       .
        db   $62,$33                         ; 9BB5 62 33                    b3
; ----------------------------------------------------------------------------
        cmp     #$01                            ; 9BB7 C9 01                    ..
        beq     MapInteractionSystem_Branch_9BFA; 9BB9 F0 3F                    .?
        lda     SaveCurrentChapterMinus1        ; 9BBB AD 5A 61                 .Za
        cmp     #$04                            ; 9BBE C9 04                    ..
        bne     MapInteractionSystem_Branch_9BED; 9BC0 D0 2B                    .+
        brk                                     ; 9BC2 00                       .
        db   $5D,$33                         ; 9BC3 5D 33                    ]3
; ----------------------------------------------------------------------------
        bcc     MapInteractionSystem_Branch_9BCE; 9BC5 90 07                    ..
        lda     SaveGameStateFlags              ; 9BC7 AD 8E 61                 ..a
        and     #$07                            ; 9BCA 29 07                    ).
        beq     MapInteractionSystem_Branch_9BED; 9BCC F0 1F                    ..
MapInteractionSystem_Branch_9BCE:
        brk                                     ; 9BCE 00                       .
        db   $62,$23,$40                     ; 9BCF 62 23 40                 b#@
; ----------------------------------------------------------------------------
        cmp     #$01                            ; 9BD2 C9 01                    ..
        beq     MapInteractionSystem_Branch_9BFA; 9BD4 F0 24                    .$
        lda     #$00                            ; 9BD6 A9 00                    ..
        brk                                     ; 9BD8 00                       .
        db   $26,$2F                         ; 9BD9 26 2F                    &/
; ----------------------------------------------------------------------------
        bcs     MapInteractionSystem_Branch_9BE9; 9BDB B0 0C                    ..
        lda     #$00                            ; 9BDD A9 00                    ..
        sta     $6E                             ; 9BDF 85 6E                    .n
        lda     #$08                            ; 9BE1 A9 08                    ..
        brk                                     ; 9BE3 00                       .
        db   $2D,$0F                         ; 9BE4 2D 0F                    -.
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_9BF0; 9BE6 4C F0 9B                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9BE9:
        txa                                     ; 9BE9 8A                       .
        jmp     MapInteractionSystem_Branch_9BF0; 9BEA 4C F0 9B                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9BED:
        jsr     MapInteractionSystem_Entry_9E3F ; 9BED 20 3F 9E                  ?.
MapInteractionSystem_Branch_9BF0:
        bcc     MapInteractionSystem_Branch_9BFA; 9BF0 90 08                    ..
        sta     $F9                             ; 9BF2 85 F9                    ..
        brk                                     ; 9BF4 00                       .
        db   $84,$0B                         ; 9BF5 84 0B                    ..
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_9C01; 9BF7 4C 01 9C                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9BFA:
        lda     #$00                            ; 9BFA A9 00                    ..
        sta     $F9                             ; 9BFC 85 F9                    ..
        brk                                     ; 9BFE 00                       .
        db   $1B,$0B                         ; 9BFF 1B 0B                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9C01:
        brk                                     ; 9C01 00                       .
        db   $80,$FB                         ; 9C02 80 FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; 9C04 00                       .
        db   $0E,$FB                         ; 9C05 0E FB                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_84B6 ; 9C07 20 B6 84                  ..
        jsr     UpperFixedEngine_Entry_C5C5     ; 9C0A 20 C5 C5                  ..
        ldx     #$FF                            ; 9C0D A2 FF                    ..
        txs                                     ; 9C0F 9A                       .
        jmp     UpperFixedEngine_Branch_C977    ; 9C10 4C 77 C9                 Lw.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9C13:
        lda     $41                             ; 9C13 A5 41                    .A
        bmi     MapInteractionSystem_Branch_9C34; 9C15 30 1D                    0.
        lda     CurrentTilesetCandidate         ; 9C17 A5 65                    .e
        bne     MapInteractionSystem_Branch_9C35; 9C19 D0 1A                    ..
        lda     PlayerWorldX                    ; 9C1B A5 42                    .B
        sec                                     ; 9C1D 38                       8
        sbc     #$87                            ; 9C1E E9 87                    ..
        cmp     #$05                            ; 9C20 C9 05                    ..
        bcs     MapInteractionSystem_Branch_9C34; 9C22 B0 10                    ..
        lda     PlayerWorldY                    ; 9C24 A5 43                    .C
        sec                                     ; 9C26 38                       8
        sbc     #$87                            ; 9C27 E9 87                    ..
        cmp     #$05                            ; 9C29 C9 05                    ..
        bcs     MapInteractionSystem_Branch_9C34; 9C2B B0 07                    ..
        ldx     #$0B                            ; 9C2D A2 0B                    ..
        ldy     #$1C                            ; 9C2F A0 1C                    ..
        jsr     MapInteractionSystem_Entry_9C51 ; 9C31 20 51 9C                  Q.
MapInteractionSystem_Branch_9C34:
        rts                                     ; 9C34 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9C35:
        cmp     #$01                            ; 9C35 C9 01                    ..
        bne     MapInteractionSystem_Branch_9C50; 9C37 D0 17                    ..
        lda     #$00                            ; 9C39 A9 00                    ..
        sta     CurrentTilesetCandidate         ; 9C3B 85 65                    .e
        lda     $62E5                           ; 9C3D AD E5 62                 ..b
        sta     $6195                           ; 9C40 8D 95 61                 ..a
        lda     $62E6                           ; 9C43 AD E6 62                 ..b
        sta     $6196                           ; 9C46 8D 96 61                 ..a
        ldx     #$89                            ; 9C49 A2 89                    ..
        ldy     #$88                            ; 9C4B A0 88                    ..
        jmp     MapInteractionSystem_Branch_9C69; 9C4D 4C 69 9C                 Li.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9C50:
        rts                                     ; 9C50 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9C51:
        lda     #$01                            ; 9C51 A9 01                    ..
        sta     CurrentTilesetCandidate         ; 9C53 85 65                    .e
        lda     $6195                           ; 9C55 AD 95 61                 ..a
        sta     $62E5                           ; 9C58 8D E5 62                 ..b
        lda     $6196                           ; 9C5B AD 96 61                 ..a
        sta     $62E6                           ; 9C5E 8D E6 62                 ..b
        lda     #$80                            ; 9C61 A9 80                    ..
        sta     $6195                           ; 9C63 8D 95 61                 ..a
        sta     $6196                           ; 9C66 8D 96 61                 ..a
MapInteractionSystem_Branch_9C69:
        stx     PlayerWorldX                    ; 9C69 86 42                    .B
        stx     SavePlayerWorldX                ; 9C6B 8E 97 61                 ..a
        stx     $6F60                           ; 9C6E 8E 60 6F                 .`o
        stx     $6F61                           ; 9C71 8E 61 6F                 .ao
        stx     $6FA1                           ; 9C74 8E A1 6F                 ..o
        stx     $6F62                           ; 9C77 8E 62 6F                 .bo
        stx     $6FA2                           ; 9C7A 8E A2 6F                 ..o
        stx     $6F63                           ; 9C7D 8E 63 6F                 .co
        stx     $6FA3                           ; 9C80 8E A3 6F                 ..o
        stx     $6F64                           ; 9C83 8E 64 6F                 .do
        stx     $6FA4                           ; 9C86 8E A4 6F                 ..o
        stx     $6F65                           ; 9C89 8E 65 6F                 .eo
        stx     $6FA5                           ; 9C8C 8E A5 6F                 ..o
        stx     $6F67                           ; 9C8F 8E 67 6F                 .go
        stx     $6FA7                           ; 9C92 8E A7 6F                 ..o
        stx     $6F68                           ; 9C95 8E 68 6F                 .ho
        stx     $6FA8                           ; 9C98 8E A8 6F                 ..o
        stx     $6F69                           ; 9C9B 8E 69 6F                 .io
        stx     $6FA9                           ; 9C9E 8E A9 6F                 ..o
        sty     PlayerWorldY                    ; 9CA1 84 43                    .C
        sty     SavePlayerWorldY                ; 9CA3 8C 98 61                 ..a
        sty     $6F80                           ; 9CA6 8C 80 6F                 ..o
        sty     $6F81                           ; 9CA9 8C 81 6F                 ..o
        sty     $6FC1                           ; 9CAC 8C C1 6F                 ..o
        sty     $6F82                           ; 9CAF 8C 82 6F                 ..o
        sty     $6FC2                           ; 9CB2 8C C2 6F                 ..o
        sty     $6F83                           ; 9CB5 8C 83 6F                 ..o
        sty     $6FC3                           ; 9CB8 8C C3 6F                 ..o
        sty     $6F84                           ; 9CBB 8C 84 6F                 ..o
        sty     $6FC4                           ; 9CBE 8C C4 6F                 ..o
        sty     $6F85                           ; 9CC1 8C 85 6F                 ..o
        sty     $6FC5                           ; 9CC4 8C C5 6F                 ..o
        sty     $6F89                           ; 9CC7 8C 89 6F                 ..o
        sty     $6FC9                           ; 9CCA 8C C9 6F                 ..o
        dey                                     ; 9CCD 88                       .
        dey                                     ; 9CCE 88                       .
        sty     $6F87                           ; 9CCF 8C 87 6F                 ..o
        sty     $6FC7                           ; 9CD2 8C C7 6F                 ..o
        dey                                     ; 9CD5 88                       .
        sty     $6F88                           ; 9CD6 8C 88 6F                 ..o
        sty     $6FC8                           ; 9CD9 8C C8 6F                 ..o
        lda     $6195                           ; 9CDC AD 95 61                 ..a
        sta     $6F66                           ; 9CDF 8D 66 6F                 .fo
        sta     $6FA6                           ; 9CE2 8D A6 6F                 ..o
        lda     $6196                           ; 9CE5 AD 96 61                 ..a
        sta     $6F86                           ; 9CE8 8D 86 6F                 ..o
        sta     $6FC6                           ; 9CEB 8D C6 6F                 ..o
        jsr     UpperFixedEngine_Entry_C5C5     ; 9CEE 20 C5 C5                  ..
        brk                                     ; 9CF1 00                       .
        db   $03,$EF                         ; 9CF2 03 EF                    ..
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Entry_C5BF     ; 9CF4 4C BF C5                 L..
; ----------------------------------------------------------------------------
        db   $03,$0D,$17,$21,$2B,$35,$3F,$03 ; 9CF7 03 0D 17 21 2B 35 3F 03  ...!+5?.
        db   $0D,$17                         ; 9CFF 0D 17                    ..
; ----------------------------------------------------------------------------
        and     ($2B,x)                         ; 9D01 21 2B                    !+
        and     $3F,x                           ; 9D03 35 3F                    5?
MapInteractionSystem_Entry_9D05:
        jsr     MapInteractionSystem_Entry_9E08 ; 9D05 20 08 9E                  ..
        jsr     MapInteractionSystem_Entry_9D8A ; 9D08 20 8A 9D                  ..
        ldx     #$10                            ; 9D0B A2 10                    ..
MapInteractionSystem_Branch_9D0D:
        txa                                     ; 9D0D 8A                       .
        pha                                     ; 9D0E 48                       H
        jsr     MapInteractionSystem_Entry_9D93 ; 9D0F 20 93 9D                  ..
        pla                                     ; 9D12 68                       h
        tax                                     ; 9D13 AA                       .
        dex                                     ; 9D14 CA                       .
        bne     MapInteractionSystem_Branch_9D0D; 9D15 D0 F6                    ..
        lda     $700A                           ; 9D17 AD 0A 70                 ..p
        and     #$7C                            ; 9D1A 29 7C                    )|
        ora     $3D                             ; 9D1C 05 3D                    .=
        sta     $700A                           ; 9D1E 8D 0A 70                 ..p
        lda     $700B                           ; 9D21 AD 0B 70                 ..p
        and     #$7C                            ; 9D24 29 7C                    )|
        ora     $3D                             ; 9D26 05 3D                    .=
        sta     $700B                           ; 9D28 8D 0B 70                 ..p
        lda     $7000                           ; 9D2B AD 00 70                 ..p
        eor     #$02                            ; 9D2E 49 02                    I.
        sta     $7000                           ; 9D30 8D 00 70                 ..p
        lda     #$01                            ; 9D33 A9 01                    ..
        brk                                     ; 9D35 00                       .
        db   $52,$73                         ; 9D36 52 73                    Rs
; ----------------------------------------------------------------------------
        lda     #$04                            ; 9D38 A9 04                    ..
        brk                                     ; 9D3A 00                       .
        db   $52,$73                         ; 9D3B 52 73                    Rs
; ----------------------------------------------------------------------------
        lda     $700A                           ; 9D3D AD 0A 70                 ..p
        sta     $7001                           ; 9D40 8D 01 70                 ..p
        lda     $700A                           ; 9D43 AD 0A 70                 ..p
        and     #$C3                            ; 9D46 29 C3                    ).
        sta     $700A                           ; 9D48 8D 0A 70                 ..p
        lda     $700A                           ; 9D4B AD 0A 70                 ..p
        and     #$03                            ; 9D4E 29 03                    ).
        ldx     #$04                            ; 9D50 A2 04                    ..
        ldy     #$00                            ; 9D52 A0 00                    ..
        brk                                     ; 9D54 00                       .
        db   $06,$DF                         ; 9D55 06 DF                    ..
; ----------------------------------------------------------------------------
        lda     $700B                           ; 9D57 AD 0B 70                 ..p
        sta     $7002                           ; 9D5A 8D 02 70                 ..p
        lda     $700B                           ; 9D5D AD 0B 70                 ..p
        and     #$C3                            ; 9D60 29 C3                    ).
        sta     $700B                           ; 9D62 8D 0B 70                 ..p
        lda     $700B                           ; 9D65 AD 0B 70                 ..p
        and     #$03                            ; 9D68 29 03                    ).
        ldx     #$05                            ; 9D6A A2 05                    ..
        ldy     #$01                            ; 9D6C A0 01                    ..
        brk                                     ; 9D6E 00                       .
        db   $06,$DF                         ; 9D6F 06 DF                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_9846 ; 9D71 20 46 98                  F.
        brk                                     ; 9D74 00                       .
        db   $0A,$3B                         ; 9D75 0A 3B                    .;
; ----------------------------------------------------------------------------
        lda     $627F                           ; 9D77 AD 7F 62                 ..b
        ora     #$01                            ; 9D7A 09 01                    ..
        sta     $627F                           ; 9D7C 8D 7F 62                 ..b
        lda     $7000                           ; 9D7F AD 00 70                 ..p
        eor     #$02                            ; 9D82 49 02                    I.
        sta     $7000                           ; 9D84 8D 00 70                 ..p
        jmp     UpperFixedEngine_Entry_D1F3     ; 9D87 4C F3 D1                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9D8A:
        jsr     MapInteractionSystem_Entry_9DA2 ; 9D8A 20 A2 9D                  ..
        jsr     MapInteractionSystem_Entry_9D93 ; 9D8D 20 93 9D                  ..
        jmp     MapInteractionSystem_Entry_9D8A ; 9D90 4C 8A 9D                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9D93:
        jsr     UpperFixedEngine_Entry_E06E     ; 9D93 20 6E E0                  n.
MapInteractionSystem_Entry_9D96:
        jsr     UpperFixedEngine_Entry_CBB4     ; 9D96 20 B4 CB                  ..
        jsr     UpperFixedEngine_Entry_D7D5     ; 9D99 20 D5 D7                  ..
        jsr     WaitForNmi                      ; 9D9C 20 74 FF                  t.
        inc     $3C                             ; 9D9F E6 3C                    .<
        rts                                     ; 9DA1 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9DA2:
        lda     $3C                             ; 9DA2 A5 3C                    .<
        and     #$0F                            ; 9DA4 29 0F                    ).
        bne     MapInteractionSystem_Branch_9DB6; 9DA6 D0 0E                    ..
        ldx     #$0A                            ; 9DA8 A2 0A                    ..
        jsr     MapInteractionSystem_Entry_9DBD ; 9DAA 20 BD 9D                  ..
        php                                     ; 9DAD 08                       .
        ldx     #$0B                            ; 9DAE A2 0B                    ..
        jsr     MapInteractionSystem_Entry_9DBD ; 9DB0 20 BD 9D                  ..
        bcs     MapInteractionSystem_Branch_9DB7; 9DB3 B0 02                    ..
        plp                                     ; 9DB5 28                       (
MapInteractionSystem_Branch_9DB6:
        rts                                     ; 9DB6 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9DB7:
        plp                                     ; 9DB7 28                       (
        bcc     MapInteractionSystem_Branch_9DBC; 9DB8 90 02                    ..
        pla                                     ; 9DBA 68                       h
        pla                                     ; 9DBB 68                       h
MapInteractionSystem_Branch_9DBC:
        rts                                     ; 9DBC 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9DBD:
        stx     $51                             ; 9DBD 86 51                    .Q
        lda     $71A0,x                         ; 9DBF BD A0 71                 ..q
        cmp     $6F60,x                         ; 9DC2 DD 60 6F                 .`o
        bne     MapInteractionSystem_Branch_9DD1; 9DC5 D0 0A                    ..
        lda     $71C0,x                         ; 9DC7 BD C0 71                 ..q
        cmp     $6F80,x                         ; 9DCA DD 80 6F                 ..o
        bne     MapInteractionSystem_Branch_9DD1; 9DCD D0 02                    ..
        sec                                     ; 9DCF 38                       8
        rts                                     ; 9DD0 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9DD1:
        lda     $3C                             ; 9DD1 A5 3C                    .<
        and     #$0F                            ; 9DD3 29 0F                    ).
        bne     MapInteractionSystem_Branch_9DFE; 9DD5 D0 27                    .'
        jsr     UpperFixedEngine_Entry_DC4B     ; 9DD7 20 4B DC                  K.
        ldx     $51                             ; 9DDA A6 51                    .Q
        lda     $7000,x                         ; 9DDC BD 00 70                 ..p
        ora     #$80                            ; 9DDF 09 80                    ..
        sta     $7000,x                         ; 9DE1 9D 00 70                 ..p
        and     #$03                            ; 9DE4 29 03                    ).
        asl     a                               ; 9DE6 0A                       .
        tay                                     ; 9DE7 A8                       .
        lda     $6F60,x                         ; 9DE8 BD 60 6F                 .`o
        clc                                     ; 9DEB 18                       .
        adc     $D239,y                         ; 9DEC 79 39 D2                 y9.
        sta     $6F60,x                         ; 9DEF 9D 60 6F                 .`o
        lda     $6F80,x                         ; 9DF2 BD 80 6F                 ..o
        clc                                     ; 9DF5 18                       .
        adc     $D23A,y                         ; 9DF6 79 3A D2                 y:.
        sta     $6F80,x                         ; 9DF9 9D 80 6F                 ..o
        clc                                     ; 9DFC 18                       .
        rts                                     ; 9DFD 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9DFE:
        lda     $51                             ; 9DFE A5 51                    .Q
        cmp     #$0A                            ; 9E00 C9 0A                    ..
        beq     MapInteractionSystem_Branch_9E05; 9E02 F0 01                    ..
        plp                                     ; 9E04 28                       (
MapInteractionSystem_Branch_9E05:
        pla                                     ; 9E05 68                       h
        pla                                     ; 9E06 68                       h
        rts                                     ; 9E07 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9E08:
        lda     $3D                             ; 9E08 A5 3D                    .=
        eor     #$02                            ; 9E0A 49 02                    I.
        asl     a                               ; 9E0C 0A                       .
        tax                                     ; 9E0D AA                       .
        lda     PlayerWorldX                    ; 9E0E A5 42                    .B
        clc                                     ; 9E10 18                       .
        adc     $D239,x                         ; 9E11 7D 39 D2                 }9.
        sta     $71AA                           ; 9E14 8D AA 71                 ..q
        clc                                     ; 9E17 18                       .
        adc     $D239,x                         ; 9E18 7D 39 D2                 }9.
        sta     $71AB                           ; 9E1B 8D AB 71                 ..q
        lda     PlayerWorldY                    ; 9E1E A5 43                    .C
        clc                                     ; 9E20 18                       .
        adc     $D23A,x                         ; 9E21 7D 3A D2                 }:.
        sta     $71CA                           ; 9E24 8D CA 71                 ..q
        clc                                     ; 9E27 18                       .
        adc     $D23A,x                         ; 9E28 7D 3A D2                 }:.
        sta     $71CB                           ; 9E2B 8D CB 71                 ..q
        rts                                     ; 9E2E 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9E2F:
        brk                                     ; 9E2F 00                       .
        db   $0A,$6F                         ; 9E30 0A 6F                    .o
; ----------------------------------------------------------------------------
        ldx     #$17                            ; 9E32 A2 17                    ..
MapInteractionSystem_Branch_9E34:
        txa                                     ; 9E34 8A                       .
        pha                                     ; 9E35 48                       H
        jsr     MapInteractionSystem_Entry_9D96 ; 9E36 20 96 9D                  ..
        pla                                     ; 9E39 68                       h
        tax                                     ; 9E3A AA                       .
        dex                                     ; 9E3B CA                       .
        bne     MapInteractionSystem_Branch_9E34; 9E3C D0 F6                    ..
        rts                                     ; 9E3E 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9E3F:
        ldx     SaveCurrentChapterMinus1        ; 9E3F AE 5A 61                 .Za
        lda     $9E66,x                         ; 9E42 BD 66 9E                 .f.
        sta     $00                           ; 9E45 85 00                    ..
        brk                                     ; 9E47 00                       .
        db   $62,$33                         ; 9E48 62 33                    b3
; ----------------------------------------------------------------------------
        sta     $01                             ; 9E4A 85 01                    ..
        ldx     #$00                            ; 9E4C A2 00                    ..
MapInteractionSystem_Branch_9E4E:
        brk                                     ; 9E4E 00                       .
        db   $2B,$73                         ; 9E4F 2B 73                    +s
; ----------------------------------------------------------------------------
        cmp     $00                           ; 9E51 C5 00                    ..
        beq     MapInteractionSystem_Branch_9E64; 9E53 F0 0F                    ..
        inx                                     ; 9E55 E8                       .
        cpx     $01                             ; 9E56 E4 01                    ..
        bcc     MapInteractionSystem_Branch_9E4E; 9E58 90 F4                    ..
        ldx     #$00                            ; 9E5A A2 00                    ..
        stx     $6E                             ; 9E5C 86 6E                    .n
        lda     #$08                            ; 9E5E A9 08                    ..
        brk                                     ; 9E60 00                       .
        db   $2D,$0F                         ; 9E61 2D 0F                    -.
; ----------------------------------------------------------------------------
        rts                                     ; 9E63 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9E64:
        txa                                     ; 9E64 8A                       .
        rts                                     ; 9E65 60                       `
; ----------------------------------------------------------------------------
        db   $06,$07,$05,$03,$00             ; 9E66 06 07 05 03 00           .....
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9E6B:
        ldx     SaveTransformSteps              ; 9E6B AE 96 62                 ..b
        beq     MapInteractionSystem_Branch_9E79; 9E6E F0 09                    ..
        dex                                     ; 9E70 CA                       .
        stx     SaveTransformSteps              ; 9E71 8E 96 62                 ..b
        bne     MapInteractionSystem_Branch_9E79; 9E74 D0 03                    ..
        jsr     MapInteractionSystem_Entry_97B8 ; 9E76 20 B8 97                  ..
MapInteractionSystem_Branch_9E79:
        rts                                     ; 9E79 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9E7A:
        lda     #$00                            ; 9E7A A9 00                    ..
        brk                                     ; 9E7C 00                       .
        db   $26,$2F                         ; 9E7D 26 2F                    &/
; ----------------------------------------------------------------------------
        txa                                     ; 9E7F 8A                       .
        bcs     MapInteractionSystem_Branch_9E8B; 9E80 B0 09                    ..
        lda     #$00                            ; 9E82 A9 00                    ..
        sta     $6E                             ; 9E84 85 6E                    .n
        lda     #$08                            ; 9E86 A9 08                    ..
        brk                                     ; 9E88 00                       .
        db   $2D,$0F                         ; 9E89 2D 0F                    -.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9E8B:
        rts                                     ; 9E8B 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9E8C:
        jsr     MapInteractionSystem_Entry_9E92 ; 9E8C 20 92 9E                  ..
        jmp     MapInteractionSystem_Branch_9EC4; 9E8F 4C C4 9E                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9E92:
        pha                                     ; 9E92 48                       H
        jsr     MapInteractionSystem_Entry_9EA2 ; 9E93 20 A2 9E                  ..
        and     #$E0                            ; 9E96 29 E0                    ).
        sta     ($04),y                         ; 9E98 91 04                    ..
        pla                                     ; 9E9A 68                       h
        and     #$1F                            ; 9E9B 29 1F                    ).
        ora     ($04),y                         ; 9E9D 11 04                    ..
        sta     ($04),y                         ; 9E9F 91 04                    ..
        rts                                     ; 9EA1 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9EA2:
        stx     $02                             ; 9EA2 86 02                    ..
        sty     $04                             ; 9EA4 84 04                    ..
        sty     $03                             ; 9EA6 84 03                    ..
        lda     #$00                            ; 9EA8 A9 00                    ..
        sta     $05                             ; 9EAA 85 05                    ..
        lda     $3F                             ; 9EAC A5 3F                    .?
        ldx     #$04                            ; 9EAE A2 04                    ..
        jsr     MultiplyPointerWord             ; 9EB0 20 27 C8                  '.
        lda     $02                             ; 9EB3 A5 02                    ..
        jsr     AddByteToPointer                ; 9EB5 20 13 C8                  ..
        lda     #$00                            ; 9EB8 A9 00                    ..
        ldy     #$78                            ; 9EBA A0 78                    .x
        jsr     AddWordToPointer                ; 9EBC 20 1D C8                  ..
        ldy     #$00                            ; 9EBF A0 00                    ..
        lda     ($04),y                         ; 9EC1 B1 04                    ..
        rts                                     ; 9EC3 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9EC4:
        pha                                     ; 9EC4 48                       H
        lda     $02                             ; 9EC5 A5 02                    ..
        sec                                     ; 9EC7 38                       8
        sbc     $6FA0                           ; 9EC8 ED A0 6F                 ..o
        clc                                     ; 9ECB 18                       .
        adc     #$09                            ; 9ECC 69 09                    i.
        cmp     #$12                            ; 9ECE C9 12                    ..
        bcs     MapInteractionSystem_Branch_9EE1; 9ED0 B0 0F                    ..
        sta     $02                             ; 9ED2 85 02                    ..
        lda     $03                             ; 9ED4 A5 03                    ..
        sec                                     ; 9ED6 38                       8
        sbc     $6FC0                           ; 9ED7 ED C0 6F                 ..o
        clc                                     ; 9EDA 18                       .
        adc     #$07                            ; 9EDB 69 07                    i.
        cmp     #$0F                            ; 9EDD C9 0F                    ..
        bcc     MapInteractionSystem_Branch_9EE3; 9EDF 90 02                    ..
MapInteractionSystem_Branch_9EE1:
        pla                                     ; 9EE1 68                       h
        rts                                     ; 9EE2 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9EE3:
        sta     $60                             ; 9EE3 85 60                    .`
        asl     a                               ; 9EE5 0A                       .
        sta     $01                             ; 9EE6 85 01                    ..
        lda     $02                             ; 9EE8 A5 02                    ..
        bne     MapInteractionSystem_Branch_9EFD; 9EEA D0 11                    ..
        lda     $3E                             ; 9EEC A5 3E                    .>
        beq     MapInteractionSystem_Branch_9EFB; 9EEE F0 0B                    ..
        lda     $3D                             ; 9EF0 A5 3D                    .=
        cmp     #$03                            ; 9EF2 C9 03                    ..
        bne     MapInteractionSystem_Branch_9EFB; 9EF4 D0 05                    ..
        lda     #$00                            ; 9EF6 A9 00                    ..
        jmp     MapInteractionSystem_Branch_9EFD; 9EF8 4C FD 9E                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9EFB:
        lda     #$1F                            ; 9EFB A9 1F                    ..
MapInteractionSystem_Branch_9EFD:
        sta     $5F                             ; 9EFD 85 5F                    ._
        dec     $5F                             ; 9EFF C6 5F                    ._
        cmp     #$0F                            ; 9F01 C9 0F                    ..
        bcs     MapInteractionSystem_Branch_9F0C; 9F03 B0 07                    ..
        brk                                     ; 9F05 00                       .
        db   $0B,$6F                         ; 9F06 0B 6F                    .o
; ----------------------------------------------------------------------------
        bcs     MapInteractionSystem_Branch_9EE1; 9F08 B0 D7                    ..
        lda     $5F                             ; 9F0A A5 5F                    ._
MapInteractionSystem_Branch_9F0C:
        asl     a                               ; 9F0C 0A                       .
        sec                                     ; 9F0D 38                       8
        sbc     #$02                            ; 9F0E E9 02                    ..
        sta     $00                           ; 9F10 85 00                    ..
        pla                                     ; 9F12 68                       h
        pha                                     ; 9F13 48                       H
        and     #$E0                            ; 9F14 29 E0                    ).
        cmp     $46                             ; 9F16 C5 46                    .F
        bne     MapInteractionSystem_Branch_9EE1; 9F18 D0 C7                    ..
        pla                                     ; 9F1A 68                       h
        and     #$1F                            ; 9F1B 29 1F                    ).
        pha                                     ; 9F1D 48                       H
        asl     a                               ; 9F1E 0A                       .
        asl     a                               ; 9F1F 0A                       .
        tay                                     ; 9F20 A8                       .
        jsr     MapInteractionSystem_Entry_9F40 ; 9F21 20 40 9F                  @.
        inc     $00                           ; 9F24 E6 00                    ..
        jsr     MapInteractionSystem_Entry_9F40 ; 9F26 20 40 9F                  @.
        dec     $00                           ; 9F29 C6 00                    ..
        inc     $01                             ; 9F2B E6 01                    ..
        jsr     MapInteractionSystem_Entry_9F40 ; 9F2D 20 40 9F                  @.
        inc     $00                           ; 9F30 E6 00                    ..
        jsr     MapInteractionSystem_Entry_9F40 ; 9F32 20 40 9F                  @.
        pla                                     ; 9F35 68                       h
        tax                                     ; 9F36 AA                       .
        lda     $76C0,x                         ; 9F37 BD C0 76                 ..v
        jsr     UpperFixedEngine_Entry_C727     ; 9F3A 20 27 C7                  '.
        jmp     UpperFixedEngine_Entry_C626     ; 9F3D 4C 26 C6                 L&.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9F40:
        lda     $7600,y                         ; 9F40 B9 00 76                 ..v
        iny                                     ; 9F43 C8                       .
        jmp     UpperFixedEngine_Entry_C65A     ; 9F44 4C 5A C6                 LZ.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_9F47:
        php                                     ; 9F47 08                       .
        jsr     MapInteractionSystem_Entry_A046 ; 9F48 20 46 A0                  F.
        plp                                     ; 9F4B 28                       (
        php                                     ; 9F4C 08                       .
        bcc     MapInteractionSystem_Branch_9F54; 9F4D 90 05                    ..
        lda     $28                             ; 9F4F A5 28                    .(
        brk                                     ; 9F51 00                       .
        db   $02,$87                         ; 9F52 02 87                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9F54:
        ldx     #$00                            ; 9F54 A2 00                    ..
MapInteractionSystem_Branch_9F56:
        lda     $6F20,x                         ; 9F56 BD 20 6F                 . o
        and     #$07                            ; 9F59 29 07                    ).
        cmp     #$05                            ; 9F5B C9 05                    ..
        bcs     MapInteractionSystem_Branch_9F66; 9F5D B0 07                    ..
MapInteractionSystem_Branch_9F5F:
        inx                                     ; 9F5F E8                       .
        cpx     #$20                            ; 9F60 E0 20                    .
        bne     MapInteractionSystem_Branch_9F56; 9F62 D0 F2                    ..
        beq     MapInteractionSystem_Branch_9F6F; 9F64 F0 09                    ..
MapInteractionSystem_Branch_9F66:
        and     #$03                            ; 9F66 29 03                    ).
        tay                                     ; 9F68 A8                       .
        dey                                     ; 9F69 88                       .
        stx     $02,y                           ; 9F6A 96 02                    ..
        jmp     MapInteractionSystem_Branch_9F5F; 9F6C 4C 5F 9F                 L_.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9F6F:
        lda     #$00                            ; 9F6F A9 00                    ..
        sta     $49                             ; 9F71 85 49                    .I
        lda     #$78                            ; 9F73 A9 78                    .x
        sta     $4A                             ; 9F75 85 4A                    .J
        lda     $40                             ; 9F77 A5 40                    .@
        sta     $01                             ; 9F79 85 01                    ..
MapInteractionSystem_Branch_9F7B:
        ldy     #$00                            ; 9F7B A0 00                    ..
        lda     $3F                             ; 9F7D A5 3F                    .?
        sta     $00                           ; 9F7F 85 00                    ..
MapInteractionSystem_Branch_9F81:
        lda     ($49),y                         ; 9F81 B1 49                    .I
        pha                                     ; 9F83 48                       H
        and     #$E0                            ; 9F84 29 E0                    ).
        sta     $06                             ; 9F86 85 06                    ..
        pla                                     ; 9F88 68                       h
        and     #$1F                            ; 9F89 29 1F                    ).
        tax                                     ; 9F8B AA                       .
        lda     $6F20,x                         ; 9F8C BD 20 6F                 . o
        and     #$07                            ; 9F8F 29 07                    ).
        beq     MapInteractionSystem_Branch_9F97; 9F91 F0 04                    ..
        cmp     #$04                            ; 9F93 C9 04                    ..
        bcc     MapInteractionSystem_Branch_9FA6; 9F95 90 0F                    ..
MapInteractionSystem_Branch_9F97:
        iny                                     ; 9F97 C8                       .
        dec     $00                           ; 9F98 C6 00                    ..
        bne     MapInteractionSystem_Branch_9F81; 9F9A D0 E5                    ..
        jsr     UpperFixedEngine_Entry_E66F     ; 9F9C 20 6F E6                  o.
        dec     $01                             ; 9F9F C6 01                    ..
        bne     MapInteractionSystem_Branch_9F7B; 9FA1 D0 D8                    ..
        jmp     MapInteractionSystem_Branch_A02B; 9FA3 4C 2B A0                 L+.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9FA6:
        sta     $05                             ; 9FA6 85 05                    ..
        jsr     UpperFixedEngine_Entry_E66F     ; 9FA8 20 6F E6                  o.
        lda     $01                             ; 9FAB A5 01                    ..
        cmp     #$01                            ; 9FAD C9 01                    ..
        bne     MapInteractionSystem_Branch_9FB7; 9FAF D0 06                    ..
        lda     $0520                           ; 9FB1 AD 20 05                 . .
        jmp     MapInteractionSystem_Branch_9FE7; 9FB4 4C E7 9F                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9FB7:
        lda     ($49),y                         ; 9FB7 B1 49                    .I
        sta     $07                             ; 9FB9 85 07                    ..
        and     #$E0                            ; 9FBB 29 E0                    ).
        cmp     $06                             ; 9FBD C5 06                    ..
        beq     MapInteractionSystem_Branch_9FE5; 9FBF F0 24                    .$
        ldx     #$00                            ; 9FC1 A2 00                    ..
MapInteractionSystem_Branch_9FC3:
        lda     $A016,x                         ; 9FC3 BD 16 A0                 ...
        bmi     MapInteractionSystem_Branch_9FD0; 9FC6 30 08                    0.
        cmp     $28                             ; 9FC8 C5 28                    .(
        beq     MapInteractionSystem_Branch_A007; 9FCA F0 3B                    .;
        inx                                     ; 9FCC E8                       .
        jmp     MapInteractionSystem_Branch_9FC3; 9FCD 4C C3 9F                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9FD0:
        ldx     #$00                            ; 9FD0 A2 00                    ..
MapInteractionSystem_Branch_9FD2:
        lda     $A01C,x                         ; 9FD2 BD 1C A0                 ...
        bmi     MapInteractionSystem_Branch_9FDF; 9FD5 30 08                    0.
        cmp     $28                             ; 9FD7 C5 28                    .(
        beq     MapInteractionSystem_Branch_9FF1; 9FD9 F0 16                    ..
        inx                                     ; 9FDB E8                       .
        jmp     MapInteractionSystem_Branch_9FD2; 9FDC 4C D2 9F                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_9FDF:
        lda     $06                             ; 9FDF A5 06                    ..
        beq     MapInteractionSystem_Branch_A010; 9FE1 F0 2D                    .-
        bne     MapInteractionSystem_Branch_9FF1; 9FE3 D0 0C                    ..
MapInteractionSystem_Branch_9FE5:
        lda     $07                             ; 9FE5 A5 07                    ..
MapInteractionSystem_Branch_9FE7:
        and     #$1F                            ; 9FE7 29 1F                    ).
        tax                                     ; 9FE9 AA                       .
        lda     $6F20,x                         ; 9FEA BD 20 6F                 . o
        and     #$07                            ; 9FED 29 07                    ).
        bne     MapInteractionSystem_Branch_A010; 9FEF D0 1F                    ..
MapInteractionSystem_Branch_9FF1:
        jsr     UpperFixedEngine_Entry_E67B     ; 9FF1 20 7B E6                  {.
        lda     $05                             ; 9FF4 A5 05                    ..
        and     #$03                            ; 9FF6 29 03                    ).
        sec                                     ; 9FF8 38                       8
        sbc     #$01                            ; 9FF9 E9 01                    ..
        tax                                     ; 9FFB AA                       .
        lda     ($49),y                         ; 9FFC B1 49                    .I
        and     #$E0                            ; 9FFE 29 E0                    ).
        ora     $02,x                           ; A000 15 02                    ..
        sta     ($49),y                         ; A002 91 49                    .I
        jmp     MapInteractionSystem_Branch_9F97; A004 4C 97 9F                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A007:
        lda     $07                             ; A007 A5 07                    ..
        and     #$1F                            ; A009 29 1F                    ).
        cmp     $0520                           ; A00B CD 20 05                 . .
        beq     MapInteractionSystem_Branch_9FE5; A00E F0 D5                    ..
MapInteractionSystem_Branch_A010:
        jsr     UpperFixedEngine_Entry_E67B     ; A010 20 7B E6                  {.
        jmp     MapInteractionSystem_Branch_9F97; A013 4C 97 9F                 L..
; ----------------------------------------------------------------------------
        db   $25,$26,$27,$28,$2B,$FF         ; A016 25 26 27 28 2B FF        %&'(+.
        db   $10,$11,$12,$13,$14,$15,$16,$17 ; A01C 10 11 12 13 14 15 16 17  ........
        db   $18,$19,$1A,$1D,$29,$2A,$FF     ; A024 18 19 1A 1D 29 2A FF     ....)*.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A02B:
        plp                                     ; A02B 28                       (
        bcc     MapInteractionSystem_Branch_A045; A02C 90 17                    ..
MapInteractionSystem_Entry_A02E:
        ldx     $0520                           ; A02E AE 20 05                 . .
        lda     #$FF                            ; A031 A9 FF                    ..
        sta     $6E5E,x                         ; A033 9D 5E 6E                 .^n
        ldx     #$00                            ; A036 A2 00                    ..
MapInteractionSystem_Branch_A038:
        lda     $6E5E,x                         ; A038 BD 5E 6E                 .^n
        beq     MapInteractionSystem_Branch_A042; A03B F0 05                    ..
        inx                                     ; A03D E8                       .
        cpx     #$20                            ; A03E E0 20                    .
        bcc     MapInteractionSystem_Branch_A038; A040 90 F6                    ..
MapInteractionSystem_Branch_A042:
        stx     $0572                           ; A042 8E 72 05                 .r.
MapInteractionSystem_Branch_A045:
        rts                                     ; A045 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A046:
        lda     #$FF                            ; A046 A9 FF                    ..
        bit     $41                             ; A048 24 41                    $A
        bpl     MapInteractionSystem_Branch_A054; A04A 10 08                    ..
        lda     $3F                             ; A04C A5 3F                    .?
        sta     $49                             ; A04E 85 49                    .I
        lda     #$00                            ; A050 A9 00                    ..
        sta     $4A                             ; A052 85 4A                    .J
MapInteractionSystem_Branch_A054:
        ldx     #$1F                            ; A054 A2 1F                    ..
MapInteractionSystem_Branch_A056:
        sta     $6E5E,x                         ; A056 9D 5E 6E                 .^n
        dex                                     ; A059 CA                       .
        bpl     MapInteractionSystem_Branch_A056; A05A 10 FA                    ..
        cmp     #$FF                            ; A05C C9 FF                    ..
        beq     MapInteractionSystem_Branch_A0A6; A05E F0 46                    .F
        lda     $0520                           ; A060 AD 20 05                 . .
        and     #$1F                            ; A063 29 1F                    ).
        tax                                     ; A065 AA                       .
        lda     #$FF                            ; A066 A9 FF                    ..
        sta     $6E5E,x                         ; A068 9D 5E 6E                 .^n
        lda     $40                             ; A06B A5 40                    .@
        ldx     #$49                            ; A06D A2 49                    .I
        jsr     MultiplyPointerWord             ; A06F 20 27 C8                  '.
        lda     #$00                            ; A072 A9 00                    ..
        ldy     #$78                            ; A074 A0 78                    .x
        jsr     AddWordToPointer                ; A076 20 1D C8                  ..
        lda     $49                             ; A079 A5 49                    .I
        sec                                     ; A07B 38                       8
        sbc     #$01                            ; A07C E9 01                    ..
        sta     $49                             ; A07E 85 49                    .I
        bcs     MapInteractionSystem_Branch_A084; A080 B0 02                    ..
        dec     $4A                             ; A082 C6 4A                    .J
MapInteractionSystem_Branch_A084:
        ldy     #$00                            ; A084 A0 00                    ..
MapInteractionSystem_Branch_A086:
        lda     ($49),y                         ; A086 B1 49                    .I
        and     #$1F                            ; A088 29 1F                    ).
        tax                                     ; A08A AA                       .
        lda     #$FF                            ; A08B A9 FF                    ..
        sta     $6E5E,x                         ; A08D 9D 5E 6E                 .^n
        lda     $49                             ; A090 A5 49                    .I
        beq     MapInteractionSystem_Branch_A099; A092 F0 05                    ..
        dec     $49                             ; A094 C6 49                    .I
        jmp     MapInteractionSystem_Branch_A086; A096 4C 86 A0                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A099:
        dec     $49                             ; A099 C6 49                    .I
        lda     $4A                             ; A09B A5 4A                    .J
        cmp     #$78                            ; A09D C9 78                    .x
        beq     MapInteractionSystem_Branch_A0A6; A09F F0 05                    ..
        dec     $4A                             ; A0A1 C6 4A                    .J
        jmp     MapInteractionSystem_Branch_A086; A0A3 4C 86 A0                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A0A6:
        rts                                     ; A0A6 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A0A7:
        jsr     MapInteractionSystem_Entry_A155 ; A0A7 20 55 A1                  U.
        jsr     MapInteractionSystem_Entry_A0B1 ; A0AA 20 B1 A0                  ..
        brk                                     ; A0AD 00                       .
        db   $04,$BF                         ; A0AE 04 BF                    ..
; ----------------------------------------------------------------------------
        rts                                     ; A0B0 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A0B1:
        ldy     #$00                            ; A0B1 A0 00                    ..
MapInteractionSystem_Branch_A0B3:
        lda     ($49),y                         ; A0B3 B1 49                    .I
        and     #$1F                            ; A0B5 29 1F                    ).
        tax                                     ; A0B7 AA                       .
        lda     $6F40,x                         ; A0B8 BD 40 6F                 .@o
        and     #$7F                            ; A0BB 29 7F                    ).
        cmp     #$14                            ; A0BD C9 14                    ..
        bcc     MapInteractionSystem_Branch_A0C5; A0BF 90 04                    ..
        cmp     #$24                            ; A0C1 C9 24                    .$
        bcc     MapInteractionSystem_Branch_A0D6; A0C3 90 11                    ..
MapInteractionSystem_Branch_A0C5:
        dec     $49                             ; A0C5 C6 49                    .I
        lda     $49                             ; A0C7 A5 49                    .I
        cmp     #$FF                            ; A0C9 C9 FF                    ..
        bne     MapInteractionSystem_Branch_A0B3; A0CB D0 E6                    ..
        dec     $4A                             ; A0CD C6 4A                    .J
        lda     $4A                             ; A0CF A5 4A                    .J
        cmp     #$78                            ; A0D1 C9 78                    .x
        bcs     MapInteractionSystem_Branch_A0B3; A0D3 B0 DE                    ..
        rts                                     ; A0D5 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A0D6:
        ldx     #$00                            ; A0D6 A2 00                    ..
MapInteractionSystem_Branch_A0D8:
        lda     $6C0C,x                         ; A0D8 BD 0C 6C                 ..l
        cmp     #$FF                            ; A0DB C9 FF                    ..
        beq     MapInteractionSystem_Branch_A0C5; A0DD F0 E6                    ..
        cmp     $4A                             ; A0DF C5 4A                    .J
        bne     MapInteractionSystem_Branch_A0FE; A0E1 D0 1B                    ..
        lda     $6C0D,x                         ; A0E3 BD 0D 6C                 ..l
        cmp     $49                             ; A0E6 C5 49                    .I
        bne     MapInteractionSystem_Branch_A0FE; A0E8 D0 14                    ..
        lda     $6C0E,x                         ; A0EA BD 0E 6C                 ..l
        and     #$7F                            ; A0ED 29 7F                    ).
        cmp     CurrentSubmapNumber             ; A0EF C5 64                    .d
        bne     MapInteractionSystem_Branch_A0FE; A0F1 D0 0B                    ..
        lda     $6C0E,x                         ; A0F3 BD 0E 6C                 ..l
        bmi     MapInteractionSystem_Branch_A105; A0F6 30 0D                    0.
        jsr     MapInteractionSystem_Entry_A145 ; A0F8 20 45 A1                  E.
        jmp     MapInteractionSystem_Branch_A0C5; A0FB 4C C5 A0                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A0FE:
        inx                                     ; A0FE E8                       .
        inx                                     ; A0FF E8                       .
        inx                                     ; A100 E8                       .
        inx                                     ; A101 E8                       .
        jmp     MapInteractionSystem_Branch_A0D8; A102 4C D8 A0                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A105:
        lda     $49                             ; A105 A5 49                    .I
        pha                                     ; A107 48                       H
        lda     $4A                             ; A108 A5 4A                    .J
        pha                                     ; A10A 48                       H
        jsr     MapInteractionSystem_Entry_A145 ; A10B 20 45 A1                  E.
        jsr     MapInteractionSystem_Entry_A13A ; A10E 20 3A A1                  :.
        jsr     MapInteractionSystem_Entry_A145 ; A111 20 45 A1                  E.
        txa                                     ; A114 8A                       .
        pha                                     ; A115 48                       H
        tya                                     ; A116 98                       .
        pha                                     ; A117 48                       H
        lda     $3F                             ; A118 A5 3F                    .?
        sec                                     ; A11A 38                       8
        sbc     #$01                            ; A11B E9 01                    ..
        ldy     #$00                            ; A11D A0 00                    ..
        ldx     #$49                            ; A11F A2 49                    .I
        jsr     UpperFixedEngine_Entry_C807     ; A121 20 07 C8                  ..
        pla                                     ; A124 68                       h
        tay                                     ; A125 A8                       .
        pla                                     ; A126 68                       h
        tax                                     ; A127 AA                       .
        jsr     MapInteractionSystem_Entry_A145 ; A128 20 45 A1                  E.
        jsr     MapInteractionSystem_Entry_A13A ; A12B 20 3A A1                  :.
        jsr     MapInteractionSystem_Entry_A145 ; A12E 20 45 A1                  E.
        pla                                     ; A131 68                       h
        sta     $4A                             ; A132 85 4A                    .J
        pla                                     ; A134 68                       h
        sta     $49                             ; A135 85 49                    .I
        jmp     MapInteractionSystem_Branch_A0C5; A137 4C C5 A0                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A13A:
        dec     $49                             ; A13A C6 49                    .I
        lda     $49                             ; A13C A5 49                    .I
        cmp     #$FF                            ; A13E C9 FF                    ..
        bne     MapInteractionSystem_Branch_A144; A140 D0 02                    ..
        dec     $4A                             ; A142 C6 4A                    .J
MapInteractionSystem_Branch_A144:
        rts                                     ; A144 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A145:
        lda     ($49),y                         ; A145 B1 49                    .I
        and     #$E0                            ; A147 29 E0                    ).
        sta     ($49),y                         ; A149 91 49                    .I
        lda     $6C0F,x                         ; A14B BD 0F 6C                 ..l
        and     #$1F                            ; A14E 29 1F                    ).
        ora     ($49),y                         ; A150 11 49                    .I
        sta     ($49),y                         ; A152 91 49                    .I
        rts                                     ; A154 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A155:
        lda     $3F                             ; A155 A5 3F                    .?
        sta     $49                             ; A157 85 49                    .I
        lda     #$00                            ; A159 A9 00                    ..
        sta     $4A                             ; A15B 85 4A                    .J
        lda     $40                             ; A15D A5 40                    .@
        ldx     #$49                            ; A15F A2 49                    .I
        jsr     MultiplyPointerWord             ; A161 20 27 C8                  '.
        lda     #$00                            ; A164 A9 00                    ..
        ldy     #$78                            ; A166 A0 78                    .x
        jmp     AddWordToPointer                ; A168 4C 1D C8                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A16B:
        lda     CurrentMapNumber                ; A16B A5 63                    .c
        cmp     #$36                            ; A16D C9 36                    .6
        bne     MapInteractionSystem_Branch_A184; A16F D0 13                    ..
        lda     CurrentSubmapNumber             ; A171 A5 64                    .d
        cmp     #$06                            ; A173 C9 06                    ..
        bne     MapInteractionSystem_Branch_A184; A175 D0 0D                    ..
        lda     #$00                            ; A177 A9 00                    ..
        jsr     MapInteractionSystem_Entry_B3ED ; A179 20 ED B3                  ..
        bcc     MapInteractionSystem_Branch_A183; A17C 90 05                    ..
        lda     #$0A                            ; A17E A9 0A                    ..
        sta     $7837                           ; A180 8D 37 78                 .7x
MapInteractionSystem_Branch_A183:
        rts                                     ; A183 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A184:
        jsr     MapInteractionSystem_Entry_A155 ; A184 20 55 A1                  U.
        lda     #$00                            ; A187 A9 00                    ..
        sta     $4B                             ; A189 85 4B                    .K
        lda     #$78                            ; A18B A9 78                    .x
        sta     $4C                             ; A18D 85 4C                    .L
        ldy     #$00                            ; A18F A0 00                    ..
        sty     $00                           ; A191 84 00                    ..
MapInteractionSystem_Branch_A193:
        lda     ($4B),y                         ; A193 B1 4B                    .K
        and     #$1F                            ; A195 29 1F                    ).
        tax                                     ; A197 AA                       .
        lda     $6F40,x                         ; A198 BD 40 6F                 .@o
        cmp     #$04                            ; A19B C9 04                    ..
        beq     MapInteractionSystem_Branch_A1B2; A19D F0 13                    ..
MapInteractionSystem_Branch_A19F:
        inc     $4B                             ; A19F E6 4B                    .K
        bne     MapInteractionSystem_Branch_A1A5; A1A1 D0 02                    ..
        inc     $4C                             ; A1A3 E6 4C                    .L
MapInteractionSystem_Branch_A1A5:
        lda     $4B                             ; A1A5 A5 4B                    .K
        cmp     $49                             ; A1A7 C5 49                    .I
        bne     MapInteractionSystem_Branch_A193; A1A9 D0 E8                    ..
        lda     $4C                             ; A1AB A5 4C                    .L
        cmp     $4A                             ; A1AD C5 4A                    .J
        bne     MapInteractionSystem_Branch_A193; A1AF D0 E2                    ..
        rts                                     ; A1B1 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A1B2:
        lda     $00                           ; A1B2 A5 00                    ..
        inc     $00                           ; A1B4 E6 00                    ..
        jsr     MapInteractionSystem_Entry_B3ED ; A1B6 20 ED B3                  ..
        ldy     #$00                            ; A1B9 A0 00                    ..
        bcc     MapInteractionSystem_Branch_A19F; A1BB 90 E2                    ..
        lda     ($4B),y                         ; A1BD B1 4B                    .K
        and     #$E0                            ; A1BF 29 E0                    ).
        ora     $0572                           ; A1C1 0D 72 05                 .r.
        sta     ($4B),y                         ; A1C4 91 4B                    .K
        jmp     MapInteractionSystem_Branch_A19F; A1C6 4C 9F A1                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A1C9:
        jsr     MapInteractionSystem_Entry_A1D2 ; A1C9 20 D2 A1                  ..
        jsr     MapInteractionSystem_Entry_958A ; A1CC 20 8A 95                  ..
        jmp     UpperFixedEngine_Entry_C5BF     ; A1CF 4C BF C5                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A1D2:
        jsr     UpperFixedEngine_Entry_C5C5     ; A1D2 20 C5 C5                  ..
        jsr     UpperFixedEngine_Entry_C54E     ; A1D5 20 4E C5                  N.
        jsr     UpperFixedEngine_Entry_C5AF     ; A1D8 20 AF C5                  ..
        lda     #$00                            ; A1DB A9 00                    ..
        sta     $6BDE                           ; A1DD 8D DE 6B                 ..k
        lda     $0553                           ; A1E0 AD 53 05                 .S.
        and     #$7F                            ; A1E3 29 7F                    ).
        sta     $0553                           ; A1E5 8D 53 05                 .S.
        jsr     MapInteractionSystem_Entry_A046 ; A1E8 20 46 A0                  F.
        lda     $28                             ; A1EB A5 28                    .(
        brk                                     ; A1ED 00                       .
        db   $02,$87                         ; A1EE 02 87                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A1F0 00                       .
        db   $03,$DF                         ; A1F1 03 DF                    ..
; ----------------------------------------------------------------------------
        lda     $0572                           ; A1F3 AD 72 05                 .r.
        brk                                     ; A1F6 00                       .
        db   $11,$87                         ; A1F7 11 87                    ..
; ----------------------------------------------------------------------------
        lda     $41                             ; A1F9 A5 41                    .A
        bpl     MapInteractionSystem_Branch_A203; A1FB 10 06                    ..
        brk                                     ; A1FD 00                       .
        db   $02,$CF                         ; A1FE 02 CF                    ..
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_A211; A200 4C 11 A2                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A203:
        jsr     MapInteractionSystem_Entry_9799 ; A203 20 99 97                  ..
        jsr     MapInteractionSystem_Entry_AB6B ; A206 20 6B AB                  k.
        jsr     MapInteractionSystem_Entry_A280 ; A209 20 80 A2                  ..
        lda     #$00                            ; A20C A9 00                    ..
        sta     $050B                           ; A20E 8D 0B 05                 ...
MapInteractionSystem_Branch_A211:
        jsr     MapInteractionSystem_Entry_9648 ; A211 20 48 96                  H.
        jsr     MapInteractionSystem_Entry_AB6B ; A214 20 6B AB                  k.
        jsr     MapInteractionSystem_Entry_97F5 ; A217 20 F5 97                  ..
        brk                                     ; A21A 00                       .
        db   $07,$87                         ; A21B 07 87                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_A232 ; A21D 20 32 A2                  2.
        ldx     #$05                            ; A220 A2 05                    ..
MapInteractionSystem_Branch_A222:
        lda     $6F60,x                         ; A222 BD 60 6F                 .`o
        sta     $6FA0,x                         ; A225 9D A0 6F                 ..o
        lda     $6F80,x                         ; A228 BD 80 6F                 ..o
        sta     $6FC0,x                         ; A22B 9D C0 6F                 ..o
        dex                                     ; A22E CA                       .
        bpl     MapInteractionSystem_Branch_A222; A22F 10 F1                    ..
        rts                                     ; A231 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A232:
        lda     #$10                            ; A232 A9 10                    ..
        sta     $0599                           ; A234 8D 99 05                 ...
        brk                                     ; A237 00                       .
        db   $62,$23,$40                     ; A238 62 23 40                 b#@
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_A25B; A23B F0 1E                    ..
        brk                                     ; A23D 00                       .
        db   $62,$23,$43                     ; A23E 62 23 43                 b#C
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_A258; A241 F0 15                    ..
        brk                                     ; A243 00                       .
        db   $62,$23,$48                     ; A244 62 23 48                 b#H
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_A252; A247 F0 09                    ..
        brk                                     ; A249 00                       .
        db   $62,$23,$4B                     ; A24A 62 23 4B                 b#K
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_A255; A24D F0 06                    ..
        asl     $0599                           ; A24F 0E 99 05                 ...
MapInteractionSystem_Branch_A252:
        asl     $0599                           ; A252 0E 99 05                 ...
MapInteractionSystem_Branch_A255:
        asl     $0599                           ; A255 0E 99 05                 ...
MapInteractionSystem_Branch_A258:
        asl     $0599                           ; A258 0E 99 05                 ...
MapInteractionSystem_Branch_A25B:
        rts                                     ; A25B 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A25C:
        bit     $41                             ; A25C 24 41                    $A
        bmi     MapInteractionSystem_Branch_A275; A25E 30 15                    0.
        lda     CurrentTilesetCandidate         ; A260 A5 65                    .e
        cmp     #$03                            ; A262 C9 03                    ..
        beq     MapInteractionSystem_Branch_A275; A264 F0 0F                    ..
        ldx     #$00                            ; A266 A2 00                    ..
        lda     SaveTimeOfDay                   ; A268 AD ED 62                 ..b
MapInteractionSystem_Branch_A26B:
        cmp     $A2DB,x                         ; A26B DD DB A2                 ...
        beq     MapInteractionSystem_Branch_A276; A26E F0 06                    ..
        inx                                     ; A270 E8                       .
        cpx     #$08                            ; A271 E0 08                    ..
        bcc     MapInteractionSystem_Branch_A26B; A273 90 F6                    ..
MapInteractionSystem_Branch_A275:
        rts                                     ; A275 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A276:
        jsr     MapInteractionSystem_Entry_A289 ; A276 20 89 A2                  ..
        lda     #$00                            ; A279 A9 00                    ..
        sta     $16                             ; A27B 85 16                    ..
        jmp     UpperFixedEngine_Entry_C5DE     ; A27D 4C DE C5                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A280:
        jsr     MapInteractionSystem_Entry_A296 ; A280 20 96 A2                  ..
        brk                                     ; A283 00                       .
        db   $27,$0F                         ; A284 27 0F                    '.
; ----------------------------------------------------------------------------
        jmp     UpperFixedEngine_Entry_C626     ; A286 4C 26 C6                 L&.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A289:
        jsr     MapInteractionSystem_Entry_A296 ; A289 20 96 A2                  ..
        brk                                     ; A28C 00                       .
        db   $28,$0F                         ; A28D 28 0F                    (.
; ----------------------------------------------------------------------------
        lda     $0514                           ; A28F AD 14 05                 ...
        sta     $05FD                           ; A292 8D FD 05                 ...
        rts                                     ; A295 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A296:
        jsr     MapInteractionSystem_Entry_A2A8 ; A296 20 A8 A2                  ..
        ldx     #$00                            ; A299 A2 00                    ..
MapInteractionSystem_Branch_A29B:
        lda     $A2E3,y                         ; A29B B9 E3 A2                 ...
        sta     $05FD,x                         ; A29E 9D FD 05                 ...
        iny                                     ; A2A1 C8                       .
        inx                                     ; A2A2 E8                       .
        cpx     #$0C                            ; A2A3 E0 0C                    ..
        bcc     MapInteractionSystem_Branch_A29B; A2A5 90 F4                    ..
        rts                                     ; A2A7 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A2A8:
        lda     $41                             ; A2A8 A5 41                    .A
        bmi     MapInteractionSystem_Branch_A2D2; A2AA 30 26                    0&
        ldx     #$08                            ; A2AC A2 08                    ..
        lda     CurrentTilesetCandidate         ; A2AE A5 65                    .e
        cmp     #$03                            ; A2B0 C9 03                    ..
        beq     MapInteractionSystem_Branch_A2C2; A2B2 F0 0E                    ..
        ldx     #$07                            ; A2B4 A2 07                    ..
        lda     SaveTimeOfDay                   ; A2B6 AD ED 62                 ..b
MapInteractionSystem_Branch_A2B9:
        cmp     $A2DB,x                         ; A2B9 DD DB A2                 ...
        bcs     MapInteractionSystem_Branch_A2C2; A2BC B0 04                    ..
        dex                                     ; A2BE CA                       .
        jmp     MapInteractionSystem_Branch_A2B9; A2BF 4C B9 A2                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A2C2:
        txa                                     ; A2C2 8A                       .
        asl     a                               ; A2C3 0A                       .
        asl     a                               ; A2C4 0A                       .
        sta     $05FD                           ; A2C5 8D FD 05                 ...
        asl     a                               ; A2C8 0A                       .
        clc                                     ; A2C9 18                       .
        adc     $05FD                           ; A2CA 6D FD 05                 m..
        tay                                     ; A2CD A8                       .
        lda     $A2E3,y                         ; A2CE B9 E3 A2                 ...
        rts                                     ; A2D1 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A2D2:
        lda     $28                             ; A2D2 A5 28                    .(
        brk                                     ; A2D4 00                       .
        db   $01,$E7                         ; A2D5 01 E7                    ..
; ----------------------------------------------------------------------------
        lda     $05FD                           ; A2D7 AD FD 05                 ...
        rts                                     ; A2DA 60                       `
; ----------------------------------------------------------------------------
        db   $00,$78,$7C,$80,$84,$C0,$C4,$C8 ; A2DB 00 78 7C 80 84 C0 C4 C8  .x|.....
        db   $30,$12,$21,$00,$3A,$2A,$1A,$27 ; A2E3 30 12 21 00 3A 2A 1A 27  0.!.:*.'
        db   $2A,$17,$38,$2A,$30,$02,$11,$00 ; A2EB 2A 17 38 2A 30 02 11 00  *.8*0...
        db   $10,$1A,$0A,$17,$1A,$17,$28,$1A ; A2F3 10 1A 0A 17 1A 17 28 1A  ......(.
        db   $3C,$0C,$1C,$1B,$10,$1B,$0A,$17 ; A2FB 3C 0C 1C 1B 10 1B 0A 17  <.......
        db   $1B,$18,$28,$1B,$21,$0F,$01,$0C ; A303 1B 18 28 1B 21 0F 01 0C  ..(.!...
        db   $00,$0B,$09,$17,$0B,$07,$18,$0B ; A30B 00 0B 09 17 0B 07 18 0B  ........
        db   $21,$0F,$0C,$0C,$1C,$0C,$0A,$07 ; A313 21 0F 0C 0C 1C 0C 0A 07  !.......
        db   $0C,$08,$18,$0C,$21,$0F,$01,$0C ; A31B 0C 08 18 0C 21 0F 01 0C  ....!...
        db   $00,$0B,$09,$17,$0B,$07,$18,$0B ; A323 00 0B 09 17 0B 07 18 0B  ........
        db   $3C,$0C,$1C,$1B,$10,$1B,$0A,$17 ; A32B 3C 0C 1C 1B 10 1B 0A 17  <.......
        db   $1B,$18,$28,$1B,$30,$02,$11,$00 ; A333 1B 18 28 1B 30 02 11 00  ..(.0...
        db   $10,$1A,$0A,$17,$1A,$17,$28,$1A ; A33B 10 1A 0A 17 1A 17 28 1A  ......(.
        db   $21,$0F,$0C,$0C,$00,$1B,$0A,$17 ; A343 21 0F 0C 0C 00 1B 0A 17  !.......
        db   $1B,$26,$06,$16                 ; A34B 1B 26 06 16              .&..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A34F:
        bit     $6291                           ; A34F 2C 91 62                 ,.b
        bmi     MapInteractionSystem_Branch_A3A1; A352 30 4D                    0M
        brk                                     ; A354 00                       .
        db   $16,$CB,$80                     ; A355 16 CB 80                 ...
; ----------------------------------------------------------------------------
        brk                                     ; A358 00                       .
        db   $26,$0F                         ; A359 26 0F                    &.
; ----------------------------------------------------------------------------
        lda     $C000                           ; A35B AD 00 C0                 ...
        and     #$08                            ; A35E 29 08                    ).
        bne     MapInteractionSystem_Branch_A372; A360 D0 10                    ..
        brk                                     ; A362 00                       .
        db   $08,$8F                         ; A363 08 8F                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5BF     ; A365 20 BF C5                  ..
        jsr     UpperFixedEngine_Entry_F104     ; A368 20 04 F1                  ..
        sta     SaveCurrentChapterMinus1        ; A36B 8D 5A 61                 .Za
        cmp     #$04                            ; A36E C9 04                    ..
        bcc     MapInteractionSystem_Branch_A372; A370 90 00                    ..
MapInteractionSystem_Branch_A372:
        brk                                     ; A372 00                       .
        db   $0D,$BF                         ; A373 0D BF                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A375 00                       .
        db   $17,$2F                         ; A376 17 2F                    ./
; ----------------------------------------------------------------------------
        lda     #$00                            ; A378 A9 00                    ..
        sta     $3D                             ; A37A 85 3D                    .=
        ldx     SaveCurrentChapterMinus1        ; A37C AE 5A 61                 .Za
        cpx     #$04                            ; A37F E0 04                    ..
        bne     MapInteractionSystem_Branch_A386; A381 D0 03                    ..
        dex                                     ; A383 CA                       .
        stx     $3D                             ; A384 86 3D                    .=
MapInteractionSystem_Branch_A386:
        lda     #$00                            ; A386 A9 00                    ..
        sta     $0530                           ; A388 8D 30 05                 .0.
        jsr     MapInteractionSystem_Entry_A480 ; A38B 20 80 A4                  ..
        pha                                     ; A38E 48                       H
        txa                                     ; A38F 8A                       .
        pha                                     ; A390 48                       H
        jsr     MapInteractionSystem_Entry_A578 ; A391 20 78 A5                  x.
        lda     #$00                            ; A394 A9 00                    ..
        brk                                     ; A396 00                       .
        db   $03,$9F                         ; A397 03 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A399 00                       .
        db   $0D,$CB,$40                     ; A39A 0D CB 40                 ..@
; ----------------------------------------------------------------------------
        pla                                     ; A39D 68                       h
        tax                                     ; A39E AA                       .
        pla                                     ; A39F 68                       h
        rts                                     ; A3A0 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A3A1:
        jsr     MapInteractionSystem_Entry_A684 ; A3A1 20 84 A6                  ..
        jsr     MapInteractionSystem_Entry_A690 ; A3A4 20 90 A6                  ..
        brk                                     ; A3A7 00                       .
        db   $6F,$33                         ; A3A8 6F 33                    o3
; ----------------------------------------------------------------------------
        brk                                     ; A3AA 00                       .
        db   $56,$33                         ; A3AB 56 33                    V3
; ----------------------------------------------------------------------------
        brk                                     ; A3AD 00                       .
        db   $0D,$CB,$40                     ; A3AE 0D CB 40                 ..@
; ----------------------------------------------------------------------------
        brk                                     ; A3B1 00                       .
        db   $16,$CB,$40                     ; A3B2 16 CB 40                 ..@
; ----------------------------------------------------------------------------
        ldx     #$FE                            ; A3B5 A2 FE                    ..
        lda     #$00                            ; A3B7 A9 00                    ..
        rts                                     ; A3B9 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A3BA:
        pha                                     ; A3BA 48                       H
        txa                                     ; A3BB 8A                       .
        pha                                     ; A3BC 48                       H
        jsr     MapInteractionSystem_Entry_A615 ; A3BD 20 15 A6                  ..
        brk                                     ; A3C0 00                       .
        db   $01,$87                         ; A3C1 01 87                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A3C3 00                       .
        db   $26,$0F                         ; A3C4 26 0F                    &.
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_A5AD ; A3C6 20 AD A5                  ..
        jsr     MapInteractionSystem_Entry_A461 ; A3C9 20 61 A4                  a.
        jsr     MapInteractionSystem_Entry_A4F5 ; A3CC 20 F5 A4                  ..
        brk                                     ; A3CF 00                       .
        db   $09,$9F                         ; A3D0 09 9F                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5BF     ; A3D2 20 BF C5                  ..
        jsr     WaitForNmi                      ; A3D5 20 74 FF                  t.
        brk                                     ; A3D8 00                       .
        db   $10,$DB,$00                     ; A3D9 10 DB 00                 ...
; ----------------------------------------------------------------------------
        pla                                     ; A3DC 68                       h
        tax                                     ; A3DD AA                       .
        pla                                     ; A3DE 68                       h
        cpx     #$FF                            ; A3DF E0 FF                    ..
        beq     MapInteractionSystem_Branch_A41B; A3E1 F0 38                    .8
        cpx     #$FE                            ; A3E3 E0 FE                    ..
        beq     MapInteractionSystem_Branch_A40A; A3E5 F0 23                    .#
        pha                                     ; A3E7 48                       H
        txa                                     ; A3E8 8A                       .
        pha                                     ; A3E9 48                       H
        brk                                     ; A3EA 00                       .
        db   $07,$6F,$43                     ; A3EB 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        pla                                     ; A3EE 68                       h
        tax                                     ; A3EF AA                       .
        pla                                     ; A3F0 68                       h
        brk                                     ; A3F1 00                       .
        db   $04,$6F                         ; A3F2 04 6F                    .o
; ----------------------------------------------------------------------------
        brk                                     ; A3F4 00                       .
        db   $0A,$EB,$20                     ; A3F5 0A EB 20                 ..
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_A3FC; A3F8 F0 02                    ..
        bne     MapInteractionSystem_Branch_A420; A3FA D0 24                    .$
MapInteractionSystem_Branch_A3FC:
        brk                                     ; A3FC 00                       .
        db   $0F,$EB,$04                     ; A3FD 0F EB 04                 ...
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_A404; A400 F0 02                    ..
        bne     MapInteractionSystem_Branch_A453; A402 D0 4F                    .O
MapInteractionSystem_Branch_A404:
        brk                                     ; A404 00                       .
        db   $16,$EB,$40                     ; A405 16 EB 40                 ..@
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_A418; A408 F0 0E                    ..
MapInteractionSystem_Branch_A40A:
        brk                                     ; A40A 00                       .
        db   $16,$DB,$BF                     ; A40B 16 DB BF                 ...
; ----------------------------------------------------------------------------
        brk                                     ; A40E 00                       .
        db   $0D,$DB,$BF                     ; A40F 0D DB BF                 ...
; ----------------------------------------------------------------------------
        brk                                     ; A412 00                       .
        db   $16,$5F                         ; A413 16 5F                    ._
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Entry_84B6 ; A415 4C B6 84                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A418:
        jsr     MapInteractionSystem_Entry_84B6 ; A418 20 B6 84                  ..
MapInteractionSystem_Branch_A41B:
        brk                                     ; A41B 00                       .
        db   $0D,$DB,$BF                     ; A41C 0D DB BF                 ...
; ----------------------------------------------------------------------------
        rts                                     ; A41F 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A420:
        brk                                     ; A420 00                       .
        db   $0A,$DB,$DF                     ; A421 0A DB DF                 ...
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_A44D ; A424 20 4D A4                  M.
        bne     MapInteractionSystem_Branch_A42C; A427 D0 03                    ..
        brk                                     ; A429 00                       .
        db   $0D,$3B                         ; A42A 0D 3B                    .;
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A42C:
        jsr     MapInteractionSystem_Entry_A447 ; A42C 20 47 A4                  G.
        bne     MapInteractionSystem_Branch_A434; A42F D0 03                    ..
        brk                                     ; A431 00                       .
        db   $0E,$3B                         ; A432 0E 3B                    .;
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A434:
        jsr     MapInteractionSystem_Entry_A44D ; A434 20 4D A4                  M.
        bne     MapInteractionSystem_Branch_A43C; A437 D0 03                    ..
        brk                                     ; A439 00                       .
        db   $0F,$3B                         ; A43A 0F 3B                    .;
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A43C:
        jsr     MapInteractionSystem_Entry_A447 ; A43C 20 47 A4                  G.
        bne     MapInteractionSystem_Branch_A444; A43F D0 03                    ..
        brk                                     ; A441 00                       .
        db   $10,$3B                         ; A442 10 3B                    .;
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A444:
        jmp     UpperFixedEngine_Entry_D1F3     ; A444 4C F3 D1                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A447:
        lda     $6BE9                           ; A447 AD E9 6B                 ..k
        and     #$60                            ; A44A 29 60                    )`
        rts                                     ; A44C 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A44D:
        lda     $6BE8                           ; A44D AD E8 6B                 ..k
        and     #$60                            ; A450 29 60                    )`
        rts                                     ; A452 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A453:
        brk                                     ; A453 00                       .
        db   $0F,$DB,$FB                     ; A454 0F DB FB                 ...
; ----------------------------------------------------------------------------
        brk                                     ; A457 00                       .
        db   $0F,$CB,$02                     ; A458 0F CB 02                 ...
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_A615 ; A45B 20 15 A6                  ..
        jmp     MapInteractionSystem_Entry_84B6 ; A45E 4C B6 84                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A461:
        lda     #$80                            ; A461 A9 80                    ..
        sta     $41                             ; A463 85 41                    .A
        jsr     MapInteractionSystem_Entry_95A9 ; A465 20 A9 95                  ..
        brk                                     ; A468 00                       .
        db   $07,$87                         ; A469 07 87                    ..
; ----------------------------------------------------------------------------
        lda     #$00                            ; A46B A9 00                    ..
        sta     $6BDE                           ; A46D 8D DE 6B                 ..k
        jsr     MapInteractionSystem_Entry_A232 ; A470 20 32 A2                  2.
        lda     $6291                           ; A473 AD 91 62                 ..b
        and     #$80                            ; A476 29 80                    ).
        ora     $3D                             ; A478 05 3D                    .=
        jsr     MapInteractionSystem_Entry_9083 ; A47A 20 83 90                  ..
        jmp     MapInteractionSystem_Branch_A5F5; A47D 4C F5 A5                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A480:
        ldx     SaveCurrentChapterMinus1        ; A480 AE 5A 61                 .Za
        lda     Bank1E_ChapterMapValues,x       ; A483 BD 5E A7                 .^.
        sta     $6290                           ; A486 8D 90 62                 ..b
        txa                                     ; A489 8A                       .
        asl     a                               ; A48A 0A                       .
        tax                                     ; A48B AA                       .
        lda     Bank1E_ChapterMapHandlerPointers,x; A48C BD 99 A4               ...
        sta     $00                           ; A48F 85 00                    ..
        lda     $A49A,x                         ; A491 BD 9A A4                 ...
        sta     $01                             ; A494 85 01                    ..
        jmp     ($0000)                         ; A496 6C 00 00                 l..
; ----------------------------------------------------------------------------
Bank1E_ChapterMapHandlerPointers:
        db   $A3                             ; A499 A3                       .
        db   $A4,$B3,$A4,$C4,$A4,$D5,$A4,$36 ; A49A A4 B3 A4 C4 A4 D5 A4 36  .......6
        db   $A5                             ; A4A2 A5                       .
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A4A3:
        ldx     #$03                            ; A4A3 A2 03                    ..
        ldy     #$00                            ; A4A5 A0 00                    ..
        lda     #$8F                            ; A4A7 A9 8F                    ..
        jsr     MapInteractionSystem_Entry_A547 ; A4A9 20 47 A5                  G.
        brk                                     ; A4AC 00                       .
        db   $07,$DB,$00                     ; A4AD 07 DB 00                 ...
; ----------------------------------------------------------------------------
        ldx     #$FF                            ; A4B0 A2 FF                    ..
        rts                                     ; A4B2 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A4B3:
        ldx     #$03                            ; A4B3 A2 03                    ..
        ldy     #$05                            ; A4B5 A0 05                    ..
        lda     #$82                            ; A4B7 A9 82                    ..
        jsr     MapInteractionSystem_Entry_A547 ; A4B9 20 47 A5                  G.
        lda     #$80                            ; A4BC A9 80                    ..
        sta     $6282                           ; A4BE 8D 82 62                 ..b
        ldx     #$FF                            ; A4C1 A2 FF                    ..
        rts                                     ; A4C3 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A4C4:
        ldx     #$03                            ; A4C4 A2 03                    ..
        ldy     #$1C                            ; A4C6 A0 1C                    ..
        lda     #$8F                            ; A4C8 A9 8F                    ..
        jsr     MapInteractionSystem_Entry_A547 ; A4CA 20 47 A5                  G.
        lda     #$C0                            ; A4CD A9 C0                    ..
        sta     $6282                           ; A4CF 8D 82 62                 ..b
        ldx     #$FF                            ; A4D2 A2 FF                    ..
        rts                                     ; A4D4 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A4D5:
        jsr     UpperFixedEngine_Entry_C54E     ; A4D5 20 4E C5                  N.
        brk                                     ; A4D8 00                       .
        db   $07,$6F,$43                     ; A4D9 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5BF     ; A4DC 20 BF C5                  ..
        lda     #$00                            ; A4DF A9 00                    ..
        sta     $6BDE                           ; A4E1 8D DE 6B                 ..k
        brk                                     ; A4E4 00                       .
        db   $11,$3B                         ; A4E5 11 3B                    .;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; A4E7 20 C5 C5                  ..
        lda     #$E0                            ; A4EA A9 E0                    ..
        sta     $6282                           ; A4EC 8D 82 62                 ..b
        ldx     #$FF                            ; A4EF A2 FF                    ..
        stx     SaveTimeOfDay                   ; A4F1 8E ED 62                 ..b
        rts                                     ; A4F4 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A4F5:
        lda     SaveTimeOfDay                   ; A4F5 AD ED 62                 ..b
        cmp     #$FF                            ; A4F8 C9 FF                    ..
        bne     MapInteractionSystem_Branch_A535; A4FA D0 39                    .9
        ldx     #$0F                            ; A4FC A2 0F                    ..
        lda     $6FE6,x                         ; A4FE BD E6 6F                 ..o
        pha                                     ; A501 48                       H
        lda     #$00                            ; A502 A9 00                    ..
        sta     $6FE6,x                         ; A504 9D E6 6F                 ..o
        pla                                     ; A507 68                       h
        sta     $6FE0                           ; A508 8D E0 6F                 ..o
        tax                                     ; A50B AA                       .
        lda     #$53                            ; A50C A9 53                    .S
        brk                                     ; A50E 00                       .
        db   $0D,$87                         ; A50F 0D 87                    ..
; ----------------------------------------------------------------------------
        lda     #$11                            ; A511 A9 11                    ..
        ldx     #$00                            ; A513 A2 00                    ..
        sta     $7046,x                         ; A515 9D 46 70                 .Fp
        ldx     #$01                            ; A518 A2 01                    ..
        sta     $7046,x                         ; A51A 9D 46 70                 .Fp
        lda     #$01                            ; A51D A9 01                    ..
        sta     $6FE6,x                         ; A51F 9D E6 6F                 ..o
        tax                                     ; A522 AA                       .
        lda     #$02                            ; A523 A9 02                    ..
        brk                                     ; A525 00                       .
        db   $0D,$87                         ; A526 0D 87                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A528 00                       .
        db   $0A,$6F                         ; A529 0A 6F                    .o
; ----------------------------------------------------------------------------
        lda     #$82                            ; A52B A9 82                    ..
        jsr     MapInteractionSystem_Entry_A567 ; A52D 20 67 A5                  g.
        lda     #$00                            ; A530 A9 00                    ..
        sta     $6F4A                           ; A532 8D 4A 6F                 .Jo
MapInteractionSystem_Branch_A535:
        rts                                     ; A535 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A536:
        ldx     #$03                            ; A536 A2 03                    ..
        ldy     #$94                            ; A538 A0 94                    ..
        lda     #$8F                            ; A53A A9 8F                    ..
        jsr     MapInteractionSystem_Entry_A547 ; A53C 20 47 A5                  G.
        lda     #$F0                            ; A53F A9 F0                    ..
        sta     $6282                           ; A541 8D 82 62                 ..b
        ldx     #$FF                            ; A544 A2 FF                    ..
        rts                                     ; A546 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A547:
        pha                                     ; A547 48                       H
        txa                                     ; A548 8A                       .
        pha                                     ; A549 48                       H
        tya                                     ; A54A 98                       .
        pha                                     ; A54B 48                       H
        jsr     UpperFixedEngine_Entry_C54E     ; A54C 20 4E C5                  N.
        brk                                     ; A54F 00                       .
        db   $07,$6F,$43                     ; A550 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5BF     ; A553 20 BF C5                  ..
        lda     #$00                            ; A556 A9 00                    ..
        sta     $6BDE                           ; A558 8D DE 6B                 ..k
        pla                                     ; A55B 68                       h
        tay                                     ; A55C A8                       .
        pla                                     ; A55D 68                       h
        tax                                     ; A55E AA                       .
        tya                                     ; A55F 98                       .
        brk                                     ; A560 00                       .
        db   $04,$6F                         ; A561 04 6F                    .o
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; A563 20 C5 C5                  ..
        pla                                     ; A566 68                       h
MapInteractionSystem_Entry_A567:
        sta     $0530                           ; A567 8D 30 05                 .0.
        lda     #$01                            ; A56A A9 01                    ..
        sta     $0531                           ; A56C 8D 31 05                 .1.
        lda     #$00                            ; A56F A9 00                    ..
        sta     $0533                           ; A571 8D 33 05                 .3.
        sta     $0532                           ; A574 8D 32 05                 .2.
        rts                                     ; A577 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A578:
        lda     SaveCurrentChapterMinus1        ; A578 AD 5A 61                 .Za
        asl     a                               ; A57B 0A                       .
        asl     a                               ; A57C 0A                       .
        tax                                     ; A57D AA                       .
        lda     $A599,x                         ; A57E BD 99 A5                 ...
        sta     CurrentMapNumber                ; A581 85 63                    .c
        sta     $618F                           ; A583 8D 8F 61                 ..a
        lda     $A59A,x                         ; A586 BD 9A A5                 ...
        sta     CurrentSubmapNumber             ; A589 85 64                    .d
        lda     $A59B,x                         ; A58B BD 9B A5                 ...
        sta     PlayerLocalX                    ; A58E 85 44                    .D
        lda     $A59C,x                         ; A590 BD 9C A5                 ...
        sta     PlayerLocalY                    ; A593 85 45                    .E
        brk                                     ; A595 00                       .
        db   $09,$87                         ; A596 09 87                    ..
; ----------------------------------------------------------------------------
        rts                                     ; A598 60                       `
; ----------------------------------------------------------------------------
        db   $02                             ; A599 02                       .
        db   $01                             ; A59A 01                       .
        db   $10                             ; A59B 10                       .
        db   $15,$01,$01,$09,$08,$16,$01,$1B ; A59C 15 01 01 09 08 16 01 1B  ........
        db   $05,$15,$03,$0C,$0F,$14,$00,$05 ; A5A4 05 15 03 0C 0F 14 00 05  ........
        db   $11                             ; A5AC 11                       .
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A5AD:
        lda     #$00                            ; A5AD A9 00                    ..
        sta     $3E                             ; A5AF 85 3E                    .>
        sta     $3C                             ; A5B1 85 3C                    .<
        sta     $0515                           ; A5B3 8D 15 05                 ...
        sta     $0513                           ; A5B6 8D 13 05                 ...
        sta     $0533                           ; A5B9 8D 33 05                 .3.
        sta     $0532                           ; A5BC 8D 32 05                 .2.
        sta     $0539                           ; A5BF 8D 39 05                 .9.
        sta     $6E42                           ; A5C2 8D 42 6E                 .Bn
        sta     $6E41                           ; A5C5 8D 41 6E                 .An
        sta     $6BEB                           ; A5C8 8D EB 6B                 ..k
        sta     $6E05                           ; A5CB 8D 05 6E                 ..n
        lda     #$FF                            ; A5CE A9 FF                    ..
        ldx     #$07                            ; A5D0 A2 07                    ..
MapInteractionSystem_Branch_A5D2:
        sta     $6E31,x                         ; A5D2 9D 31 6E                 .1n
        dex                                     ; A5D5 CA                       .
        bpl     MapInteractionSystem_Branch_A5D2; A5D6 10 FA                    ..
        lda     #$F8                            ; A5D8 A9 F8                    ..
        sta     $0526                           ; A5DA 8D 26 05                 .&.
        lda     #$01                            ; A5DD A9 01                    ..
        sta     $058E                           ; A5DF 8D 8E 05                 ...
        lda     #$10                            ; A5E2 A9 10                    ..
        sta     $058F                           ; A5E4 8D 8F 05                 ...
        lda     #$80                            ; A5E7 A9 80                    ..
        sta     $6BDE                           ; A5E9 8D DE 6B                 ..k
        brk                                     ; A5EC 00                       .
        db   $64,$33                         ; A5ED 64 33                    d3
; ----------------------------------------------------------------------------
        lda     $75                             ; A5EF A5 75                    .u
        sta     $62D5                           ; A5F1 8D D5 62                 ..b
        rts                                     ; A5F4 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A5F5:
        ldx     #$00                            ; A5F5 A2 00                    ..
MapInteractionSystem_Branch_A5F7:
        stx     $51                             ; A5F7 86 51                    .Q
        ldy     $6F80,x                         ; A5F9 BC 80 6F                 ..o
        lda     $6F60,x                         ; A5FC BD 60 6F                 .`o
        tax                                     ; A5FF AA                       .
        and     $6F80,x                         ; A600 3D 80 6F                 =.o
        cmp     #$FF                            ; A603 C9 FF                    ..
        beq     MapInteractionSystem_Branch_A614; A605 F0 0D                    ..
        jsr     UpperFixedEngine_Entry_D3E6     ; A607 20 E6 D3                  ..
        ldx     $51                             ; A60A A6 51                    .Q
        sta     $7140,x                         ; A60C 9D 40 71                 .@q
        inx                                     ; A60F E8                       .
        cpx     #$1E                            ; A610 E0 1E                    ..
        bcc     MapInteractionSystem_Branch_A5F7; A612 90 E3                    ..
MapInteractionSystem_Branch_A614:
        rts                                     ; A614 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A615:
        lda     #$FF                            ; A615 A9 FF                    ..
        ldx     #$A0                            ; A617 A2 A0                    ..
MapInteractionSystem_Branch_A619:
        sta     $6C0B,x                         ; A619 9D 0B 6C                 ..l
        dex                                     ; A61C CA                       .
        bne     MapInteractionSystem_Branch_A619; A61D D0 FA                    ..
        rts                                     ; A61F 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A620:
        brk                                     ; A620 00                       .
        db   $0D,$EB,$40                     ; A621 0D EB 40                 ..@
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_A666; A624 D0 40                    .@
        brk                                     ; A626 00                       .
        db   $11,$2F                         ; A627 11 2F                    ./
; ----------------------------------------------------------------------------
        brk                                     ; A629 00                       .
        db   $6F,$33                         ; A62A 6F 33                    o3
; ----------------------------------------------------------------------------
        brk                                     ; A62C 00                       .
        db   $54,$33                         ; A62D 54 33                    T3
; ----------------------------------------------------------------------------
        brk                                     ; A62F 00                       .
        db   $0A,$EB,$20                     ; A630 0A EB 20                 ..
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_A667; A633 D0 32                    .2
        brk                                     ; A635 00                       .
        db   $0F,$EB,$04                     ; A636 0F EB 04                 ...
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_A671; A639 D0 36                    .6
        lda     #$80                            ; A63B A9 80                    ..
        sta     $6BDE                           ; A63D 8D DE 6B                 ..k
        jsr     MapInteractionSystem_Entry_9E7A ; A640 20 7A 9E                  z.
        sta     $F9                             ; A643 85 F9                    ..
        ldy     #$92                            ; A645 A0 92                    ..
        ldx     #$03                            ; A647 A2 03                    ..
        lda     #$00                            ; A649 A9 00                    ..
        sta     $0515                           ; A64B 8D 15 05                 ...
        sta     SaveTimeOfDay                   ; A64E 8D ED 62                 ..b
        jsr     MapInteractionSystem_Entry_A547 ; A651 20 47 A5                  G.
        brk                                     ; A654 00                       .
        db   $04,$9F                         ; A655 04 9F                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_A684 ; A657 20 84 A6                  ..
MapInteractionSystem_Entry_A65A:
        jsr     MapInteractionSystem_Entry_A690 ; A65A 20 90 A6                  ..
        lda     #$00                            ; A65D A9 00                    ..
        sta     $0530                           ; A65F 8D 30 05                 .0.
        lda     #$18                            ; A662 A9 18                    ..
        ldx     #$03                            ; A664 A2 03                    ..
MapInteractionSystem_Branch_A666:
        rts                                     ; A666 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A667:
        ldx     #$00                            ; A667 A2 00                    ..
        jsr     MapInteractionSystem_Entry_A65A ; A669 20 5A A6                  Z.
        lda     #$0C                            ; A66C A9 0C                    ..
        ldx     #$03                            ; A66E A2 03                    ..
        rts                                     ; A670 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A671:
        lda     #$04                            ; A671 A9 04                    ..
        brk                                     ; A673 00                       .
        db   $12,$2F                         ; A674 12 2F                    ./
; ----------------------------------------------------------------------------
        ldx     #$05                            ; A676 A2 05                    ..
        jsr     MapInteractionSystem_Entry_A65A ; A678 20 5A A6                  Z.
        brk                                     ; A67B 00                       .
        db   $0D,$CB,$80                     ; A67C 0D CB 80                 ...
; ----------------------------------------------------------------------------
        lda     #$A8                            ; A67F A9 A8                    ..
        ldx     #$03                            ; A681 A2 03                    ..
        rts                                     ; A683 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A684:
        lda     $6290                           ; A684 AD 90 62                 ..b
        asl     a                               ; A687 0A                       .
        asl     a                               ; A688 0A                       .
        adc     $6290                           ; A689 6D 90 62                 m.b
        adc     #$0A                            ; A68C 69 0A                    i.
        tax                                     ; A68E AA                       .
        rts                                     ; A68F 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A690:
        lda     $A767,x                         ; A690 BD 67 A7                 .g.
        pha                                     ; A693 48                       H
        and     #$03                            ; A694 29 03                    ).
        sta     $3D                             ; A696 85 3D                    .=
        lda     $A765,x                         ; A698 BD 65 A7                 .e.
        sta     PlayerLocalX                    ; A69B 85 44                    .D
        lda     $A766,x                         ; A69D BD 66 A7                 .f.
        sta     PlayerLocalY                    ; A6A0 85 45                    .E
        lda     $A764,x                         ; A6A2 BD 64 A7                 .d.
        sta     CurrentSubmapNumber             ; A6A5 85 64                    .d
        lda     $A763,x                         ; A6A7 BD 63 A7                 .c.
        sta     CurrentMapNumber                ; A6AA 85 63                    .c
        pla                                     ; A6AC 68                       h
        lsr     a                               ; A6AD 4A                       J
        lsr     a                               ; A6AE 4A                       J
        sta     $51                             ; A6AF 85 51                    .Q
        lda     #$00                            ; A6B1 A9 00                    ..
        sta     $52                             ; A6B3 85 52                    .R
        ldx     #$51                            ; A6B5 A2 51                    .Q
        lda     #$07                            ; A6B7 A9 07                    ..
        jsr     MultiplyPointerWord             ; A6B9 20 27 C8                  '.
        lda     $51                             ; A6BC A5 51                    .Q
        clc                                     ; A6BE 18                       .
        adc     $AEFE                           ; A6BF 6D FE AE                 m..
        sta     $51                             ; A6C2 85 51                    .Q
        lda     $52                             ; A6C4 A5 52                    .R
        adc     $AEFF                           ; A6C6 6D FF AE                 m..
        sta     $52                             ; A6C9 85 52                    .R
        ldy     #$03                            ; A6CB A0 03                    ..
        lda     ($51),y                         ; A6CD B1 51                    .Q
        sta     $6195                           ; A6CF 8D 95 61                 ..a
        iny                                     ; A6D2 C8                       .
        lda     ($51),y                         ; A6D3 B1 51                    .Q
        sta     $6196                           ; A6D5 8D 96 61                 ..a
        iny                                     ; A6D8 C8                       .
        lda     ($51),y                         ; A6D9 B1 51                    .Q
        sta     SavePlayerWorldX                ; A6DB 8D 97 61                 ..a
        iny                                     ; A6DE C8                       .
        lda     ($51),y                         ; A6DF B1 51                    .Q
        sta     SavePlayerWorldY                ; A6E1 8D 98 61                 ..a
        lda     CurrentMapNumber                ; A6E4 A5 63                    .c
        cmp     #$0E                            ; A6E6 C9 0E                    ..
        bne     MapInteractionSystem_Branch_A6FB; A6E8 D0 11                    ..
        lda     $627F                           ; A6EA AD 7F 62                 ..b
        bpl     MapInteractionSystem_Branch_A711; A6ED 10 22                    ."
        lda     SaveTimeOfDay                   ; A6EF AD ED 62                 ..b
        cmp     #$78                            ; A6F2 C9 78                    .x
        bcs     MapInteractionSystem_Branch_A711; A6F4 B0 1B                    ..
        dec     PlayerLocalX                    ; A6F6 C6 44                    .D
        jmp     MapInteractionSystem_Branch_A711; A6F8 4C 11 A7                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A6FB:
        cmp     #$0A                            ; A6FB C9 0A                    ..
        bne     MapInteractionSystem_Branch_A711; A6FD D0 12                    ..
        brk                                     ; A6FF 00                       .
        db   $1A,$EB,$01                     ; A700 1A EB 01                 ...
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_A711; A703 F0 0C                    ..
        lda     #$0C                            ; A705 A9 0C                    ..
        sta     PlayerLocalX                    ; A707 85 44                    .D
        lda     #$10                            ; A709 A9 10                    ..
        sta     PlayerLocalY                    ; A70B 85 45                    .E
        lda     #$00                            ; A70D A9 00                    ..
        sta     $3D                             ; A70F 85 3D                    .=
MapInteractionSystem_Branch_A711:
        lda     #$00                            ; A711 A9 00                    ..
        sta     CurrentTilesetCandidate         ; A713 85 65                    .e
        brk                                     ; A715 00                       .
        db   $09,$87                         ; A716 09 87                    ..
; ----------------------------------------------------------------------------
        lda     CurrentMapNumber                ; A718 A5 63                    .c
        cmp     #$3E                            ; A71A C9 3E                    .>
        bne     MapInteractionSystem_Branch_A738; A71C D0 1A                    ..
        ldx     #$7D                            ; A71E A2 7D                    .}
        lda     $A765,x                         ; A720 BD 65 A7                 .e.
        sta     PlayerLocalX                    ; A723 85 44                    .D
        lda     $A766,x                         ; A725 BD 66 A7                 .f.
        sta     PlayerLocalY                    ; A728 85 45                    .E
        lda     $A764,x                         ; A72A BD 64 A7                 .d.
        sta     CurrentSubmapNumber             ; A72D 85 64                    .d
        lda     $A763,x                         ; A72F BD 63 A7                 .c.
        sta     CurrentMapNumber                ; A732 85 63                    .c
        lda     #$01                            ; A734 A9 01                    ..
        sta     CurrentTilesetCandidate         ; A736 85 65                    .e
MapInteractionSystem_Branch_A738:
        brk                                     ; A738 00                       .
        db   $01,$87                         ; A739 01 87                    ..
; ----------------------------------------------------------------------------
        brk                                     ; A73B 00                       .
        db   $56,$33                         ; A73C 56 33                    V3
; ----------------------------------------------------------------------------
        rts                                     ; A73E 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A73F:
        ldx     #$00                            ; A73F A2 00                    ..
        ldy     #$00                            ; A741 A0 00                    ..
MapInteractionSystem_Branch_A743:
        lda     CurrentMapNumber                ; A743 A5 63                    .c
        cmp     $A76D,x                         ; A745 DD 6D A7                 .m.
        bne     MapInteractionSystem_Branch_A751; A748 D0 07                    ..
        lda     CurrentSubmapNumber             ; A74A A5 64                    .d
        cmp     $A76E,x                         ; A74C DD 6E A7                 .n.
        beq     MapInteractionSystem_Branch_A75A; A74F F0 09                    ..
MapInteractionSystem_Branch_A751:
        iny                                     ; A751 C8                       .
        inx                                     ; A752 E8                       .
        inx                                     ; A753 E8                       .
        inx                                     ; A754 E8                       .
        inx                                     ; A755 E8                       .
        inx                                     ; A756 E8                       .
        jmp     MapInteractionSystem_Branch_A743; A757 4C 43 A7                 LC.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A75A:
        sty     $6290                           ; A75A 8C 90 62                 ..b
        rts                                     ; A75D 60                       `
; ----------------------------------------------------------------------------
Bank1E_ChapterMapValues:
        db   $02,$10,$12,$11,$05             ; A75E 02 10 12 11 05           .....
        db   $04                             ; A763 04                       .
        db   $0E                             ; A764 0E                       .
        db   $0E                             ; A765 0E                       .
        db   $03                             ; A766 03                       .
        db   $01,$00,$04,$02,$03,$02         ; A767 01 00 04 02 03 02        ......
        db   $00                             ; A76D 00                       .
        db   $01,$03,$04,$00,$01,$00,$1B,$0A ; A76E 01 03 04 00 01 00 1B 0A  ........
        db   $08,$02,$00,$05,$16,$0C,$04,$00 ; A776 08 02 00 05 16 0C 04 00  ........
        db   $05,$0B,$14,$05,$01,$1A,$09,$18 ; A77E 05 0B 14 05 01 1A 09 18  ........
        db   $06,$00,$07,$0B,$1C,$07,$00,$02 ; A786 06 00 07 0B 1C 07 00 02  ........
        db   $0E,$20,$08,$01,$07,$0B,$24,$09 ; A78E 0E 20 08 01 07 0B 24 09  . ....$.
        db   $06,$05,$09,$28,$0A,$00,$16,$0C ; A796 06 05 09 28 0A 00 16 0C  ...(....
        db   $2D,$0D,$00,$15,$05,$38,$0E,$00 ; A79E 2D 0D 00 15 05 38 0E 00  -....8..
        db   $0C,$19,$3C,$0F,$00,$07,$17,$40 ; A7A6 0C 19 3C 0F 00 07 17 40  ..<....@
        db   $10,$02,$03,$03,$44,$11,$00,$1C ; A7AE 10 02 03 03 44 11 00 1C  ....D...
        db   $11,$48,$12,$00,$19,$04,$4C,$13 ; A7B6 11 48 12 00 19 04 4C 13  .H....L.
        db   $02,$04,$09,$08,$15,$00,$0E,$18 ; A7BE 02 04 09 08 15 00 0E 18  ........
        db   $54,$16,$00,$0E,$06,$58,$1A,$00 ; A7C6 54 16 00 0E 06 58 1A 00  T....X..
        db   $24,$10,$60,$43,$06,$25,$06,$64 ; A7CE 24 10 60 43 06 25 06 64  $.`C.%.d
        db   $1B,$00,$1A,$13,$69,$04,$0E,$0C ; A7D6 1B 00 1A 13 69 04 0E 0C  ....i...
        db   $0B,$15,$46,$01,$03,$04,$20     ; A7DE 0B 15 46 01 03 04 20     ..F...
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A7E5:
        jsr     MapInteractionSystem_Entry_A809 ; A7E5 20 09 A8                  ..
        jsr     MapInteractionSystem_Entry_A814 ; A7E8 20 14 A8                  ..
        jsr     MapInteractionSystem_Entry_A829 ; A7EB 20 29 A8                  ).
        jsr     MapInteractionSystem_Entry_A846 ; A7EE 20 46 A8                  F.
        jsr     MapInteractionSystem_Entry_A800 ; A7F1 20 00 A8                  ..
        jsr     MapInteractionSystem_Entry_AAB4 ; A7F4 20 B4 AA                  ..
        jsr     UpperFixedEngine_Entry_DFF1     ; A7F7 20 F1 DF                  ..
        jsr     WaitForNmi                      ; A7FA 20 74 FF                  t.
        jsr     MapInteractionSystem_Entry_A84C ; A7FD 20 4C A8                  L.
MapInteractionSystem_Entry_A800:
        lda     $050B                           ; A800 AD 0B 05                 ...
        beq     MapInteractionSystem_Branch_A808; A803 F0 03                    ..
        jsr     MapInteractionSystem_Entry_A99B ; A805 20 9B A9                  ..
MapInteractionSystem_Branch_A808:
        rts                                     ; A808 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A809:
        lda     $050B                           ; A809 AD 0B 05                 ...
        beq     MapInteractionSystem_Branch_A811; A80C F0 03                    ..
        jsr     UpperFixedEngine_Entry_C626     ; A80E 20 26 C6                  &.
MapInteractionSystem_Branch_A811:
        jmp     WaitForNmi                      ; A811 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A814:
        jsr     MapInteractionSystem_Entry_A861 ; A814 20 61 A8                  a.
MapInteractionSystem_Branch_A817:
        jsr     MapInteractionSystem_Entry_A8CE ; A817 20 CE A8                  ..
        jsr     MapInteractionSystem_Entry_A8D5 ; A81A 20 D5 A8                  ..
        jsr     MapInteractionSystem_Entry_A938 ; A81D 20 38 A9                  8.
        jsr     MapInteractionSystem_Entry_A994 ; A820 20 94 A9                  ..
        jsr     MapInteractionSystem_Entry_A9E6 ; A823 20 E6 A9                  ..
        jmp     MapInteractionSystem_Branch_A817; A826 4C 17 A8                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A829:
        jsr     MapInteractionSystem_Entry_A881 ; A829 20 81 A8                  ..
MapInteractionSystem_Branch_A82C:
        jsr     MapInteractionSystem_Entry_A8CE ; A82C 20 CE A8                  ..
        jsr     MapInteractionSystem_Entry_A8D5 ; A82F 20 D5 A8                  ..
        jsr     MapInteractionSystem_Entry_A938 ; A832 20 38 A9                  8.
        bcs     MapInteractionSystem_Branch_A83D; A835 B0 06                    ..
        jsr     MapInteractionSystem_Entry_A909 ; A837 20 09 A9                  ..
        jsr     MapInteractionSystem_Entry_A938 ; A83A 20 38 A9                  8.
MapInteractionSystem_Branch_A83D:
        jsr     MapInteractionSystem_Entry_A994 ; A83D 20 94 A9                  ..
        jsr     MapInteractionSystem_Entry_A9EE ; A840 20 EE A9                  ..
        jmp     MapInteractionSystem_Branch_A82C; A843 4C 2C A8                 L,.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A846:
        jsr     MapInteractionSystem_Entry_A887 ; A846 20 87 A8                  ..
        jmp     MapInteractionSystem_Branch_A82C; A849 4C 2C A8                 L,.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A84C:
        jsr     MapInteractionSystem_Entry_A8AA ; A84C 20 AA A8                  ..
MapInteractionSystem_Branch_A84F:
        jsr     MapInteractionSystem_Entry_A8CE ; A84F 20 CE A8                  ..
        jsr     MapInteractionSystem_Entry_A909 ; A852 20 09 A9                  ..
        jsr     MapInteractionSystem_Entry_A938 ; A855 20 38 A9                  8.
        jsr     MapInteractionSystem_Entry_A994 ; A858 20 94 A9                  ..
        jsr     MapInteractionSystem_Entry_A9B7 ; A85B 20 B7 A9                  ..
        jmp     MapInteractionSystem_Branch_A84F; A85E 4C 4F A8                 LO.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A861:
        lda     #$10                            ; A861 A9 10                    ..
        sta     $00                           ; A863 85 00                    ..
        lda     #$0E                            ; A865 A9 0E                    ..
        sta     $01                             ; A867 85 01                    ..
        jsr     UpperFixedEngine_Entry_C662     ; A869 20 62 C6                  b.
        lda     #$03                            ; A86C A9 03                    ..
        sta     $51                             ; A86E 85 51                    .Q
        lda     #$01                            ; A870 A9 01                    ..
        sta     $52                             ; A872 85 52                    .R
        lda     PlayerLocalX                    ; A874 A5 44                    .D
        sta     $53                             ; A876 85 53                    .S
        lda     PlayerLocalY                    ; A878 A5 45                    .E
        sta     $54                             ; A87A 85 54                    .T
        lda     #$01                            ; A87C A9 01                    ..
        sta     $55                             ; A87E 85 55                    .U
        rts                                     ; A880 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A881:
        lda     #$20                            ; A881 A9 20                    .
        ldx     #$08                            ; A883 A2 08                    ..
        bne     MapInteractionSystem_Branch_A88B; A885 D0 04                    ..
MapInteractionSystem_Entry_A887:
        lda     #$3E                            ; A887 A9 3E                    .>
        ldx     #$F7                            ; A889 A2 F7                    ..
MapInteractionSystem_Branch_A88B:
        sta     $00                           ; A88B 85 00                    ..
        txa                                     ; A88D 8A                       .
        clc                                     ; A88E 18                       .
        adc     PlayerLocalX                    ; A88F 65 44                    eD
        sta     $53                             ; A891 85 53                    .S
        lda     PlayerLocalY                    ; A893 A5 45                    .E
        sec                                     ; A895 38                       8
        sbc     #$07                            ; A896 E9 07                    ..
        sta     $54                             ; A898 85 54                    .T
        lda     #$00                            ; A89A A9 00                    ..
        sta     $01                             ; A89C 85 01                    ..
        jsr     UpperFixedEngine_Entry_C662     ; A89E 20 62 C6                  b.
        lda     #$02                            ; A8A1 A9 02                    ..
        sta     $51                             ; A8A3 85 51                    .Q
        lda     #$0F                            ; A8A5 A9 0F                    ..
        sta     $55                             ; A8A7 85 55                    .U
        rts                                     ; A8A9 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A8AA:
        lda     #$00                            ; A8AA A9 00                    ..
        sta     $00                           ; A8AC 85 00                    ..
        sta     $01                             ; A8AE 85 01                    ..
        jsr     UpperFixedEngine_Entry_C662     ; A8B0 20 62 C6                  b.
        lda     #$02                            ; A8B3 A9 02                    ..
        sta     $51                             ; A8B5 85 51                    .Q
        lda     #$0E                            ; A8B7 A9 0E                    ..
        sta     $52                             ; A8B9 85 52                    .R
        lda     PlayerLocalX                    ; A8BB A5 44                    .D
        sec                                     ; A8BD 38                       8
        sbc     #$08                            ; A8BE E9 08                    ..
        sta     $53                             ; A8C0 85 53                    .S
        lda     PlayerLocalY                    ; A8C2 A5 45                    .E
        sec                                     ; A8C4 38                       8
        sbc     #$07                            ; A8C5 E9 07                    ..
        sta     $54                             ; A8C7 85 54                    .T
        lda     #$0E                            ; A8C9 A9 0E                    ..
        sta     $55                             ; A8CB 85 55                    .U
        rts                                     ; A8CD 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A8CE:
        ldx     $53                             ; A8CE A6 53                    .S
        ldy     $54                             ; A8D0 A4 54                    .T
        jmp     UpperFixedEngine_Entry_D3E6     ; A8D2 4C E6 D3                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A8D5:
        pha                                     ; A8D5 48                       H
        jsr     MapInteractionSystem_Entry_A8DB ; A8D6 20 DB A8                  ..
        pla                                     ; A8D9 68                       h
        rts                                     ; A8DA 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A8DB:
        pha                                     ; A8DB 48                       H
        lda     $07BA                           ; A8DC AD BA 07                 ...
        and     #$7F                            ; A8DF 29 7F                    ).
        cmp     #$04                            ; A8E1 C9 04                    ..
        bne     MapInteractionSystem_Branch_A8EE; A8E3 D0 09                    ..
        pla                                     ; A8E5 68                       h
        pha                                     ; A8E6 48                       H
        and     #$1F                            ; A8E7 29 1F                    ).
        cmp     $0520                           ; A8E9 CD 20 05                 . .
        beq     MapInteractionSystem_Branch_A904; A8EC F0 16                    ..
MapInteractionSystem_Branch_A8EE:
        pla                                     ; A8EE 68                       h
        and     #$E0                            ; A8EF 29 E0                    ).
        pha                                     ; A8F1 48                       H
        lda     $46                             ; A8F2 A5 46                    .F
        beq     MapInteractionSystem_Branch_A8FD; A8F4 F0 07                    ..
        pla                                     ; A8F6 68                       h
        cmp     $46                             ; A8F7 C5 46                    .F
        beq     MapInteractionSystem_Branch_A907; A8F9 F0 0C                    ..
        clc                                     ; A8FB 18                       .
        rts                                     ; A8FC 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A8FD:
        pla                                     ; A8FD 68                       h
        cmp     $47                             ; A8FE C5 47                    .G
        bne     MapInteractionSystem_Branch_A907; A900 D0 05                    ..
        clc                                     ; A902 18                       .
        rts                                     ; A903 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A904:
        pla                                     ; A904 68                       h
        clc                                     ; A905 18                       .
        rts                                     ; A906 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A907:
        sec                                     ; A907 38                       8
        rts                                     ; A908 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A909:
        pha                                     ; A909 48                       H
        jsr     MapInteractionSystem_Entry_A90F ; A90A 20 0F A9                  ..
        pla                                     ; A90D 68                       h
        rts                                     ; A90E 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A90F:
        pha                                     ; A90F 48                       H
        lda     $07BA                           ; A910 AD BA 07                 ...
        and     #$7F                            ; A913 29 7F                    ).
        cmp     #$04                            ; A915 C9 04                    ..
        bne     MapInteractionSystem_Branch_A922; A917 D0 09                    ..
        pla                                     ; A919 68                       h
        pha                                     ; A91A 48                       H
        and     #$1F                            ; A91B 29 1F                    ).
        cmp     $0520                           ; A91D CD 20 05                 . .
        beq     MapInteractionSystem_Branch_A904; A920 F0 E2                    ..
MapInteractionSystem_Branch_A922:
        pla                                     ; A922 68                       h
        and     #$E0                            ; A923 29 E0                    ).
        pha                                     ; A925 48                       H
        lda     $47                             ; A926 A5 47                    .G
        beq     MapInteractionSystem_Branch_A931; A928 F0 07                    ..
        pla                                     ; A92A 68                       h
        cmp     $47                             ; A92B C5 47                    .G
        beq     MapInteractionSystem_Branch_A907; A92D F0 D8                    ..
        clc                                     ; A92F 18                       .
        rts                                     ; A930 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A931:
        pla                                     ; A931 68                       h
        cmp     $46                             ; A932 C5 46                    .F
        bne     MapInteractionSystem_Branch_A907; A934 D0 D1                    ..
        clc                                     ; A936 18                       .
        rts                                     ; A937 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A938:
        bcc     MapInteractionSystem_Branch_A97F; A938 90 45                    .E
        jsr     UpperFixedEngine_Entry_D4F3     ; A93A 20 F3 D4                  ..
        pha                                     ; A93D 48                       H
        ldy     $050A                           ; A93E AC 0A 05                 ...
        lda     $1C                             ; A941 A5 1C                    ..
        sta     $0300,y                         ; A943 99 00 03                 ...
        lda     $1D                             ; A946 A5 1D                    ..
        sta     $0301,y                         ; A948 99 01 03                 ...
        lda     $7600,x                         ; A94B BD 00 76                 ..v
        sta     NextTextCharacter,y             ; A94E 99 02 03                 ...
        lda     $7601,x                         ; A951 BD 01 76                 ..v
        sta     $0303,y                         ; A954 99 03 03                 ...
        lda     $7602,x                         ; A957 BD 02 76                 ..v
        sta     $0304,y                         ; A95A 99 04 03                 ...
        lda     $7603,x                         ; A95D BD 03 76                 ..v
        sta     $0305,y                         ; A960 99 05 03                 ...
        pla                                     ; A963 68                       h
        jsr     MapInteractionSystem_Entry_A980 ; A964 20 80 A9                  ..
        sta     $0308,y                         ; A967 99 08 03                 ...
        lda     $0E                             ; A96A A5 0E                    ..
        sta     $0306,y                         ; A96C 99 06 03                 ...
        lda     $0F                             ; A96F A5 0F                    ..
        sta     $0307,y                         ; A971 99 07 03                 ...
        tya                                     ; A974 98                       .
        clc                                     ; A975 18                       .
        adc     #$09                            ; A976 69 09                    i.
        sta     $050A                           ; A978 8D 0A 05                 ...
        inc     $050B                           ; A97B EE 0B 05                 ...
        sec                                     ; A97E 38                       8
MapInteractionSystem_Branch_A97F:
        rts                                     ; A97F 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A980:
        tax                                     ; A980 AA                       .
        lda     $1C                             ; A981 A5 1C                    ..
        pha                                     ; A983 48                       H
        lda     $1D                             ; A984 A5 1D                    ..
        pha                                     ; A986 48                       H
        txa                                     ; A987 8A                       .
        jsr     UpperFixedEngine_Entry_C6BF     ; A988 20 BF C6                  ..
        tax                                     ; A98B AA                       .
        pla                                     ; A98C 68                       h
        sta     $1D                             ; A98D 85 1D                    ..
        pla                                     ; A98F 68                       h
        sta     $1C                             ; A990 85 1C                    ..
        txa                                     ; A992 8A                       .
        rts                                     ; A993 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A994:
        lda     $050B                           ; A994 AD 0B 05                 ...
        cmp     #$12                            ; A997 C9 12                    ..
        bcc     MapInteractionSystem_Branch_A9B6; A999 90 1B                    ..
MapInteractionSystem_Entry_A99B:
        lda     $1F                             ; A99B A5 1F                    ..
        ora     #$10                            ; A99D 09 10                    ..
        sta     $1F                             ; A99F 85 1F                    ..
        lda     $1F                             ; A9A1 A5 1F                    ..
        ora     #$40                            ; A9A3 09 40                    .@
        sta     $1F                             ; A9A5 85 1F                    ..
        jsr     WaitForNmi                      ; A9A7 20 74 FF                  t.
        lda     $1F                             ; A9AA A5 1F                    ..
        and     #$BF                            ; A9AC 29 BF                    ).
        sta     $1F                             ; A9AE 85 1F                    ..
        lda     $1F                             ; A9B0 A5 1F                    ..
        and     #$EF                            ; A9B2 29 EF                    ).
        sta     $1F                             ; A9B4 85 1F                    ..
MapInteractionSystem_Branch_A9B6:
        rts                                     ; A9B6 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A9B7:
        jsr     MapInteractionSystem_Entry_A9F6 ; A9B7 20 F6 A9                  ..
        dec     $55                             ; A9BA C6 55                    .U
        bne     MapInteractionSystem_Branch_A9B6; A9BC D0 F8                    ..
        lda     $52                             ; A9BE A5 52                    .R
        sta     $55                             ; A9C0 85 55                    .U
        dec     $51                             ; A9C2 C6 51                    .Q
        lda     $51                             ; A9C4 A5 51                    .Q
        and     #$03                            ; A9C6 29 03                    ).
        sta     $51                             ; A9C8 85 51                    .Q
        and     #$01                            ; A9CA 29 01                    ).
        beq     MapInteractionSystem_Branch_A9DF; A9CC F0 11                    ..
        lda     $51                             ; A9CE A5 51                    .Q
        cmp     #$01                            ; A9D0 C9 01                    ..
        bne     MapInteractionSystem_Branch_A9DE; A9D2 D0 0A                    ..
        lda     $52                             ; A9D4 A5 52                    .R
        cmp     #$0E                            ; A9D6 C9 0E                    ..
        bne     MapInteractionSystem_Branch_A9DE; A9D8 D0 04                    ..
        inc     $52                             ; A9DA E6 52                    .R
        inc     $55                             ; A9DC E6 55                    .U
MapInteractionSystem_Branch_A9DE:
        rts                                     ; A9DE 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_A9DF:
        dec     $52                             ; A9DF C6 52                    .R
        dec     $55                             ; A9E1 C6 55                    .U
        beq     MapInteractionSystem_Branch_AA2A; A9E3 F0 45                    .E
        rts                                     ; A9E5 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A9E6:
        jsr     MapInteractionSystem_Entry_A9F6 ; A9E6 20 F6 A9                  ..
        dec     $55                             ; A9E9 C6 55                    .U
        beq     MapInteractionSystem_Branch_AA0D; A9EB F0 20                    .
        rts                                     ; A9ED 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A9EE:
        jsr     MapInteractionSystem_Entry_A9F6 ; A9EE 20 F6 A9                  ..
        dec     $55                             ; A9F1 C6 55                    .U
        beq     MapInteractionSystem_Branch_AA2A; A9F3 F0 35                    .5
        rts                                     ; A9F5 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_A9F6:
        lda     $51                             ; A9F6 A5 51                    .Q
        asl     a                               ; A9F8 0A                       .
        tax                                     ; A9F9 AA                       .
        lda     $D239,x                         ; A9FA BD 39 D2                 .9.
        clc                                     ; A9FD 18                       .
        adc     $53                             ; A9FE 65 53                    eS
        sta     $53                             ; AA00 85 53                    .S
        lda     $D23A,x                         ; AA02 BD 3A D2                 .:.
        clc                                     ; AA05 18                       .
        adc     $54                             ; AA06 65 54                    eT
        sta     $54                             ; AA08 85 54                    .T
        jmp     MapInteractionSystem_Branch_AA32; AA0A 4C 32 AA                 L2.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AA0D:
        lda     $52                             ; AA0D A5 52                    .R
        sta     $55                             ; AA0F 85 55                    .U
        inc     $51                             ; AA11 E6 51                    .Q
        lda     $51                             ; AA13 A5 51                    .Q
        and     #$03                            ; AA15 29 03                    ).
        sta     $51                             ; AA17 85 51                    .Q
        and     #$01                            ; AA19 29 01                    ).
        bne     MapInteractionSystem_Branch_AA1E; AA1B D0 01                    ..
        rts                                     ; AA1D 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AA1E:
        lda     $51                             ; AA1E A5 51                    .Q
        cmp     #$01                            ; AA20 C9 01                    ..
        bne     MapInteractionSystem_Branch_AA2D; AA22 D0 09                    ..
        lda     $52                             ; AA24 A5 52                    .R
        cmp     #$0F                            ; AA26 C9 0F                    ..
        bne     MapInteractionSystem_Branch_AA2D; AA28 D0 03                    ..
MapInteractionSystem_Branch_AA2A:
        pla                                     ; AA2A 68                       h
        pla                                     ; AA2B 68                       h
        rts                                     ; AA2C 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AA2D:
        inc     $55                             ; AA2D E6 55                    .U
        inc     $52                             ; AA2F E6 52                    .R
        rts                                     ; AA31 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AA32:
        ldx     $51                             ; AA32 A6 51                    .Q
        beq     MapInteractionSystem_Branch_AA6C; AA34 F0 36                    .6
        dex                                     ; AA36 CA                       .
        beq     MapInteractionSystem_Branch_AA56; AA37 F0 1D                    ..
        dex                                     ; AA39 CA                       .
        beq     MapInteractionSystem_Branch_AA90; AA3A F0 54                    .T
        lda     $1D                             ; AA3C A5 1D                    ..
        and     #$1F                            ; AA3E 29 1F                    ).
        cmp     #$02                            ; AA40 C9 02                    ..
        bcs     MapInteractionSystem_Branch_AA51; AA42 B0 0D                    ..
        lda     $1D                             ; AA44 A5 1D                    ..
        adc     #$1E                            ; AA46 69 1E                    i.
        sta     $1D                             ; AA48 85 1D                    ..
MapInteractionSystem_Branch_AA4A:
        lda     $1C                             ; AA4A A5 1C                    ..
        eor     #$04                            ; AA4C 49 04                    I.
        sta     $1C                             ; AA4E 85 1C                    ..
        rts                                     ; AA50 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AA51:
        dec     $1D                             ; AA51 C6 1D                    ..
        dec     $1D                             ; AA53 C6 1D                    ..
        rts                                     ; AA55 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AA56:
        lda     $1D                             ; AA56 A5 1D                    ..
        and     #$1F                            ; AA58 29 1F                    ).
        cmp     #$1E                            ; AA5A C9 1E                    ..
        bcc     MapInteractionSystem_Branch_AA67; AA5C 90 09                    ..
        lda     $1D                             ; AA5E A5 1D                    ..
        sbc     #$1E                            ; AA60 E9 1E                    ..
        sta     $1D                             ; AA62 85 1D                    ..
        jmp     MapInteractionSystem_Branch_AA4A; AA64 4C 4A AA                 LJ.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AA67:
        inc     $1D                             ; AA67 E6 1D                    ..
        inc     $1D                             ; AA69 E6 1D                    ..
        rts                                     ; AA6B 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AA6C:
        lda     $1C                             ; AA6C A5 1C                    ..
        and     #$23                            ; AA6E 29 23                    )#
        cmp     #$21                            ; AA70 C9 21                    .!
        bcs     MapInteractionSystem_Branch_AA85; AA72 B0 11                    ..
        lda     $1D                             ; AA74 A5 1D                    ..
        cmp     #$40                            ; AA76 C9 40                    .@
        bcs     MapInteractionSystem_Branch_AA85; AA78 B0 0B                    ..
        adc     #$80                            ; AA7A 69 80                    i.
        sta     $1D                             ; AA7C 85 1D                    ..
        lda     $1C                             ; AA7E A5 1C                    ..
        ora     #$03                            ; AA80 09 03                    ..
        sta     $1C                             ; AA82 85 1C                    ..
        rts                                     ; AA84 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AA85:
        lda     $1D                             ; AA85 A5 1D                    ..
        sbc     #$40                            ; AA87 E9 40                    .@
        sta     $1D                             ; AA89 85 1D                    ..
        bcs     MapInteractionSystem_Branch_AA8F; AA8B B0 02                    ..
        dec     $1C                             ; AA8D C6 1C                    ..
MapInteractionSystem_Branch_AA8F:
        rts                                     ; AA8F 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AA90:
        lda     $1C                             ; AA90 A5 1C                    ..
        and     #$23                            ; AA92 29 23                    )#
        cmp     #$23                            ; AA94 C9 23                    .#
        bcc     MapInteractionSystem_Branch_AAA9; AA96 90 11                    ..
        lda     $1D                             ; AA98 A5 1D                    ..
        cmp     #$80                            ; AA9A C9 80                    ..
        bcc     MapInteractionSystem_Branch_AAA9; AA9C 90 0B                    ..
        sbc     #$80                            ; AA9E E9 80                    ..
        sta     $1D                             ; AAA0 85 1D                    ..
        lda     $1C                             ; AAA2 A5 1C                    ..
        and     #$FC                            ; AAA4 29 FC                    ).
        sta     $1C                             ; AAA6 85 1C                    ..
        rts                                     ; AAA8 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AAA9:
        lda     $1D                             ; AAA9 A5 1D                    ..
        adc     #$40                            ; AAAB 69 40                    i@
        sta     $1D                             ; AAAD 85 1D                    ..
        bcc     MapInteractionSystem_Branch_AAB3; AAAF 90 02                    ..
        inc     $1C                             ; AAB1 E6 1C                    ..
MapInteractionSystem_Branch_AAB3:
        rts                                     ; AAB3 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_AAB4:
        lda     $7000                           ; AAB4 AD 00 70                 ..p
        and     #$BC                            ; AAB7 29 BC                    ).
        ora     $3D                             ; AAB9 05 3D                    .=
MapInteractionSystem_Entry_AABB:
        sta     $7000                           ; AABB 8D 00 70                 ..p
MapInteractionSystem_Entry_AABE:
        jsr     FixedTrampoline05               ; AABE 20 10 C0                  ..
MapInteractionSystem_Entry_AAC1:
        jsr     FixedTrampoline05               ; AAC1 20 10 C0                  ..
MapInteractionSystem_Entry_AAC4:
        jsr     FixedTrampoline05               ; AAC4 20 10 C0                  ..
        ldx     #$05                            ; AAC7 A2 05                    ..
MapInteractionSystem_Branch_AAC9:
        lda     $6F60                           ; AAC9 AD 60 6F                 .`o
        sta     $6F60,x                         ; AACC 9D 60 6F                 .`o
        sta     $6FA0,x                         ; AACF 9D A0 6F                 ..o
        lda     $6F80                           ; AAD2 AD 80 6F                 ..o
        sta     $6F80,x                         ; AAD5 9D 80 6F                 ..o
        sta     $6FC0,x                         ; AAD8 9D C0 6F                 ..o
        dex                                     ; AADB CA                       .
        bne     MapInteractionSystem_Branch_AAC9; AADC D0 EB                    ..
        jsr     MapInteractionSystem_Entry_AB6B ; AADE 20 6B AB                  k.
        lda     $41                             ; AAE1 A5 41                    .A
        bpl     MapInteractionSystem_Branch_AAFC; AAE3 10 17                    ..
        lda     $0515                           ; AAE5 AD 15 05                 ...
        beq     MapInteractionSystem_Branch_AAFC; AAE8 F0 12                    ..
        ldx     PlayerLocalX                    ; AAEA A6 44                    .D
        ldy     PlayerLocalY                    ; AAEC A4 45                    .E
        jsr     UpperFixedEngine_Entry_D3E6     ; AAEE 20 E6 D3                  ..
        pha                                     ; AAF1 48                       H
        lda     $0534                           ; AAF2 AD 34 05                 .4.
        and     #$0F                            ; AAF5 29 0F                    ).
        tax                                     ; AAF7 AA                       .
        pla                                     ; AAF8 68                       h
        sta     $7140,x                         ; AAF9 9D 40 71                 .@q
MapInteractionSystem_Branch_AAFC:
        jmp     MapInteractionSystem_Branch_AC92; AAFC 4C 92 AC                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_AAFF:
        cpx     #$01                            ; AAFF E0 01                    ..
        beq     MapInteractionSystem_Branch_AB0D; AB01 F0 0A                    ..
        cpx     #$02                            ; AB03 E0 02                    ..
        beq     MapInteractionSystem_Branch_AB3D; AB05 F0 36                    .6
        cpx     #$03                            ; AB07 E0 03                    ..
        beq     MapInteractionSystem_Branch_AB5B; AB09 F0 50                    .P
        clc                                     ; AB0B 18                       .
        rts                                     ; AB0C 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AB0D:
        bit     SaveVehicleFlags                ; AB0D 2C 8E 62                 ,.b
        bvs     MapInteractionSystem_Branch_AB22; AB10 70 10                    p.
        brk                                     ; AB12 00                       .
        db   $0B,$EB,$04                     ; AB13 0B EB 04                 ...
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_AB22; AB16 F0 0A                    ..
        brk                                     ; AB18 00                       .
        db   $0E,$EB,$08                     ; AB19 0E EB 08                 ...
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_AB22; AB1C D0 04                    ..
        lda     #$24                            ; AB1E A9 24                    .$
        sec                                     ; AB20 38                       8
        rts                                     ; AB21 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AB22:
        lda     $627E                           ; AB22 AD 7E 62                 .~b
        asl     a                               ; AB25 0A                       .
        asl     a                               ; AB26 0A                       .
        asl     a                               ; AB27 0A                       .
        bcc     MapInteractionSystem_Branch_AB2D; AB28 90 03                    ..
        lda     #$13                            ; AB2A A9 13                    ..
        rts                                     ; AB2C 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AB2D:
        bit     $6281                           ; AB2D 2C 81 62                 ,.b
        bvs     MapInteractionSystem_Branch_AB3B; AB30 70 09                    p.
        lda     $6283                           ; AB32 AD 83 62                 ..b
        asl     a                               ; AB35 0A                       .
        asl     a                               ; AB36 0A                       .
        asl     a                               ; AB37 0A                       .
        lda     #$15                            ; AB38 A9 15                    ..
        rts                                     ; AB3A 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AB3B:
        clc                                     ; AB3B 18                       .
        rts                                     ; AB3C 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AB3D:
        bit     SaveVehicleFlags                ; AB3D 2C 8E 62                 ,.b
        bvc     MapInteractionSystem_Branch_AB52; AB40 50 10                    P.
        brk                                     ; AB42 00                       .
        db   $0B,$EB,$04                     ; AB43 0B EB 04                 ...
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_AB52; AB46 F0 0A                    ..
        brk                                     ; AB48 00                       .
        db   $0E,$EB,$08                     ; AB49 0E EB 08                 ...
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_AB52; AB4C D0 04                    ..
        lda     #$24                            ; AB4E A9 24                    .$
        sec                                     ; AB50 38                       8
        rts                                     ; AB51 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AB52:
        lda     $6283                           ; AB52 AD 83 62                 ..b
        asl     a                               ; AB55 0A                       .
        asl     a                               ; AB56 0A                       .
        asl     a                               ; AB57 0A                       .
        lda     #$15                            ; AB58 A9 15                    ..
        rts                                     ; AB5A 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AB5B:
        bit     $6281                           ; AB5B 2C 81 62                 ,.b
        bvc     MapInteractionSystem_Branch_AB69; AB5E 50 09                    P.
        lda     $6283                           ; AB60 AD 83 62                 ..b
        asl     a                               ; AB63 0A                       .
        asl     a                               ; AB64 0A                       .
        asl     a                               ; AB65 0A                       .
        lda     #$15                            ; AB66 A9 15                    ..
        rts                                     ; AB68 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AB69:
        clc                                     ; AB69 18                       .
        rts                                     ; AB6A 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_AB6B:
        ldx     #$05                            ; AB6B A2 05                    ..
MapInteractionSystem_Branch_AB6D:
        lda     $6F60,x                         ; AB6D BD 60 6F                 .`o
        sta     $6FA0,x                         ; AB70 9D A0 6F                 ..o
        lda     $6F80,x                         ; AB73 BD 80 6F                 ..o
        sta     $6FC0,x                         ; AB76 9D C0 6F                 ..o
        dex                                     ; AB79 CA                       .
        bpl     MapInteractionSystem_Branch_AB6D; AB7A 10 F1                    ..
        ldx     #$03                            ; AB7C A2 03                    ..
MapInteractionSystem_Branch_AB7E:
        jsr     MapInteractionSystem_Entry_AAFF ; AB7E 20 FF AA                  ..
        lda     #$00                            ; AB81 A9 00                    ..
        bcs     MapInteractionSystem_Branch_AB88; AB83 B0 03                    ..
        lda     $6BE7,x                         ; AB85 BD E7 6B                 ..k
MapInteractionSystem_Branch_AB88:
        and     #$80                            ; AB88 29 80                    ).
        sta     $7020,x                         ; AB8A 9D 20 70                 . p
        dex                                     ; AB8D CA                       .
        bpl     MapInteractionSystem_Branch_AB7E; AB8E 10 EE                    ..
MapInteractionSystem_Entry_AB90:
        jsr     MapInteractionSystem_Entry_95B7 ; AB90 20 B7 95                  ..
        lda     #$03                            ; AB93 A9 03                    ..
        jsr     MapInteractionSystem_Entry_B157 ; AB95 20 57 B1                  W.
        bcc     MapInteractionSystem_Branch_ABFF; AB98 90 65                    .e
        lda     $7022                           ; AB9A AD 22 70                 ."p
        sta     $7024                           ; AB9D 8D 24 70                 .$p
        lda     $70E2                           ; ABA0 AD E2 70                 ..p
        sta     $70E4                           ; ABA3 8D E4 70                 ..p
        lda     $6FE2                           ; ABA6 AD E2 6F                 ..o
        sta     $6FE4                           ; ABA9 8D E4 6F                 ..o
        lda     $7023                           ; ABAC AD 23 70                 .#p
        sta     $7025                           ; ABAF 8D 25 70                 .%p
        lda     $70E3                           ; ABB2 AD E3 70                 ..p
        sta     $70E5                           ; ABB5 8D E5 70                 ..p
        lda     $6FE3                           ; ABB8 AD E3 6F                 ..o
        sta     $6FE5                           ; ABBB 8D E5 6F                 ..o
        lda     $7021                           ; ABBE AD 21 70                 .!p
        sta     $7023                           ; ABC1 8D 23 70                 .#p
        lda     $70E1                           ; ABC4 AD E1 70                 ..p
        sta     $70E3                           ; ABC7 8D E3 70                 ..p
        lda     $6FE1                           ; ABCA AD E1 6F                 ..o
        sta     $6FE3                           ; ABCD 8D E3 6F                 ..o
        ldx     #$00                            ; ABD0 A2 00                    ..
MapInteractionSystem_Branch_ABD2:
        lda     $053A,x                         ; ABD2 BD 3A 05                 .:.
        beq     MapInteractionSystem_Branch_ABDD; ABD5 F0 06                    ..
        clc                                     ; ABD7 18                       .
        adc     #$02                            ; ABD8 69 02                    i.
        sta     $053A,x                         ; ABDA 9D 3A 05                 .:.
MapInteractionSystem_Branch_ABDD:
        inx                                     ; ABDD E8                       .
        cpx     #$04                            ; ABDE E0 04                    ..
        bcc     MapInteractionSystem_Branch_ABD2; ABE0 90 F0                    ..
        stx     $6FE1                           ; ABE2 8E E1 6F                 ..o
        inx                                     ; ABE5 E8                       .
        stx     $6FE2                           ; ABE6 8E E2 6F                 ..o
MapInteractionSystem_Entry_ABE9:
        lda     #$00                            ; ABE9 A9 00                    ..
        sta     $7021                           ; ABEB 8D 21 70                 .!p
        sta     $7022                           ; ABEE 8D 22 70                 ."p
        lda     #$80                            ; ABF1 A9 80                    ..
        sta     $70E1                           ; ABF3 8D E1 70                 ..p
        sta     $70E2                           ; ABF6 8D E2 70                 ..p
        lda     $0515                           ; ABF9 AD 15 05                 ...
        bne     MapInteractionSystem_Branch_AC04; ABFC D0 06                    ..
        rts                                     ; ABFE 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_ABFF:
        lda     $0515                           ; ABFF AD 15 05                 ...
        beq     MapInteractionSystem_Branch_AC12; AC02 F0 0E                    ..
MapInteractionSystem_Branch_AC04:
        lda     #$80                            ; AC04 A9 80                    ..
        sta     $7020                           ; AC06 8D 20 70                 . p
        sta     $7021                           ; AC09 8D 21 70                 .!p
        sta     $7022                           ; AC0C 8D 22 70                 ."p
        sta     $7023                           ; AC0F 8D 23 70                 .#p
MapInteractionSystem_Branch_AC12:
        lda     #$80                            ; AC12 A9 80                    ..
        sta     $7024                           ; AC14 8D 24 70                 .$p
        sta     $7025                           ; AC17 8D 25 70                 .%p
        rts                                     ; AC1A 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_AC1B:
        ldy     #$FF                            ; AC1B A0 FF                    ..
        bit     $41                             ; AC1D 24 41                    $A
        bpl     MapInteractionSystem_Branch_AC27; AC1F 10 06                    ..
        and     #$40                            ; AC21 29 40                    )@
        bne     MapInteractionSystem_Branch_AC2E; AC23 D0 09                    ..
        beq     MapInteractionSystem_Branch_AC7A; AC25 F0 53                    .S
MapInteractionSystem_Branch_AC27:
        lda     #$03                            ; AC27 A9 03                    ..
        jsr     MapInteractionSystem_Entry_B157 ; AC29 20 57 B1                  W.
        bcc     MapInteractionSystem_Branch_AC7A; AC2C 90 4C                    .L
MapInteractionSystem_Branch_AC2E:
        lda     $7022                           ; AC2E AD 22 70                 ."p
        sta     $7024                           ; AC31 8D 24 70                 .$p
        lda     $70E2                           ; AC34 AD E2 70                 ..p
        sta     $70E4                           ; AC37 8D E4 70                 ..p
        lda     $7023                           ; AC3A AD 23 70                 .#p
        sta     $7025                           ; AC3D 8D 25 70                 .%p
        lda     $70E3                           ; AC40 AD E3 70                 ..p
        sta     $70E5                           ; AC43 8D E5 70                 ..p
        lda     $7021                           ; AC46 AD 21 70                 .!p
        sta     $7023                           ; AC49 8D 23 70                 .#p
        lda     $70E1                           ; AC4C AD E1 70                 ..p
        sta     $70E3                           ; AC4F 8D E3 70                 ..p
        cpy     #$00                            ; AC52 C0 00                    ..
        beq     MapInteractionSystem_Branch_AC71; AC54 F0 1B                    ..
        lda     $6FE2                           ; AC56 AD E2 6F                 ..o
        sta     $6FE4                           ; AC59 8D E4 6F                 ..o
        lda     $6FE3                           ; AC5C AD E3 6F                 ..o
        sta     $6FE5                           ; AC5F 8D E5 6F                 ..o
        lda     $6FE1                           ; AC62 AD E1 6F                 ..o
        sta     $6FE3                           ; AC65 8D E3 6F                 ..o
        ldx     #$04                            ; AC68 A2 04                    ..
        stx     $6FE1                           ; AC6A 8E E1 6F                 ..o
        inx                                     ; AC6D E8                       .
        stx     $6FE2                           ; AC6E 8E E2 6F                 ..o
MapInteractionSystem_Branch_AC71:
        jsr     MapInteractionSystem_Entry_ABE9 ; AC71 20 E9 AB                  ..
        jsr     MapInteractionSystem_Entry_9627 ; AC74 20 27 96                  '.
        jmp     MapInteractionSystem_Branch_AC92; AC77 4C 92 AC                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AC7A:
        lda     #$80                            ; AC7A A9 80                    ..
        sta     $7024                           ; AC7C 8D 24 70                 .$p
        sta     $7025                           ; AC7F 8D 25 70                 .%p
        ldx     #$01                            ; AC82 A2 01                    ..
        stx     $6FE1                           ; AC84 8E E1 6F                 ..o
        inx                                     ; AC87 E8                       .
        stx     $6FE2                           ; AC88 8E E2 6F                 ..o
        inx                                     ; AC8B E8                       .
        stx     $6FE3                           ; AC8C 8E E3 6F                 ..o
        jsr     MapInteractionSystem_Entry_95B7 ; AC8F 20 B7 95                  ..
MapInteractionSystem_Branch_AC92:
        ldy     #$00                            ; AC92 A0 00                    ..
MapInteractionSystem_Branch_AC94:
        tya                                     ; AC94 98                       .
        pha                                     ; AC95 48                       H
        jsr     MapInteractionSystem_Entry_ACD9 ; AC96 20 D9 AC                  ..
        tax                                     ; AC99 AA                       .
        pla                                     ; AC9A 68                       h
        tay                                     ; AC9B A8                       .
        txa                                     ; AC9C 8A                       .
        sta     $7140,y                         ; AC9D 99 40 71                 .@q
        iny                                     ; ACA0 C8                       .
        cpy     #$04                            ; ACA1 C0 04                    ..
        bne     MapInteractionSystem_Branch_AC94; ACA3 D0 EF                    ..
        lda     $7140                           ; ACA5 AD 40 71                 .@q
        pha                                     ; ACA8 48                       H
        and     #$E0                            ; ACA9 29 E0                    ).
        sta     $46                             ; ACAB 85 46                    .F
        pla                                     ; ACAD 68                       h
        and     #$1F                            ; ACAE 29 1F                    ).
        tax                                     ; ACB0 AA                       .
        lda     $6F40,x                         ; ACB1 BD 40 6F                 .@o
        sta     $059E                           ; ACB4 8D 9E 05                 ...
        lda     $0515                           ; ACB7 AD 15 05                 ...
        cmp     #$01                            ; ACBA C9 01                    ..
        bne     MapInteractionSystem_Branch_ACD8; ACBC D0 1A                    ..
        ldy     #$03                            ; ACBE A0 03                    ..
        lda     $41                             ; ACC0 A5 41                    .A
        bmi     MapInteractionSystem_Branch_ACCD; ACC2 30 09                    0.
        lda     #$03                            ; ACC4 A9 03                    ..
        jsr     MapInteractionSystem_Entry_B157 ; ACC6 20 57 B1                  W.
        bcc     MapInteractionSystem_Branch_ACCD; ACC9 90 02                    ..
        ldy     #$05                            ; ACCB A0 05                    ..
MapInteractionSystem_Branch_ACCD:
        lda     $7020,y                         ; ACCD B9 20 70                 . p
        ora     #$80                            ; ACD0 09 80                    ..
        sta     $7020,y                         ; ACD2 99 20 70                 . p
        dey                                     ; ACD5 88                       .
        bpl     MapInteractionSystem_Branch_ACCD; ACD6 10 F5                    ..
MapInteractionSystem_Branch_ACD8:
        rts                                     ; ACD8 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_ACD9:
        ldx     $6F60,y                         ; ACD9 BE 60 6F                 .`o
        lda     $6F80,y                         ; ACDC B9 80 6F                 ..o
        tay                                     ; ACDF A8                       .
        lda     $41                             ; ACE0 A5 41                    .A
        bpl     MapInteractionSystem_Branch_ACE7; ACE2 10 03                    ..
        jmp     UpperFixedEngine_Entry_D3E6     ; ACE4 4C E6 D3                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_ACE7:
        jmp     UpperFixedEngine_Entry_D251     ; ACE7 4C 51 D2                 LQ.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_ACEA:
        lda     $7000                           ; ACEA AD 00 70                 ..p
        and     #$7C                            ; ACED 29 7C                    )|
        ora     #$40                            ; ACEF 09 40                    .@
        ora     $3D                             ; ACF1 05 3D                    .=
        sta     $7000                           ; ACF3 8D 00 70                 ..p
        sta     $7001                           ; ACF6 8D 01 70                 ..p
        sta     $7002                           ; ACF9 8D 02 70                 ..p
        sta     $7003                           ; ACFC 8D 03 70                 ..p
        and     #$03                            ; ACFF 29 03                    ).
        eor     #$02                            ; AD01 49 02                    I.
        asl     a                               ; AD03 0A                       .
        tax                                     ; AD04 AA                       .
        ldy     #$00                            ; AD05 A0 00                    ..
MapInteractionSystem_Branch_AD07:
        lda     $6F60,y                         ; AD07 B9 60 6F                 .`o
        clc                                     ; AD0A 18                       .
        adc     $D239,x                         ; AD0B 7D 39 D2                 }9.
        sta     $6F61,y                         ; AD0E 99 61 6F                 .ao
        sta     $6FA1,y                         ; AD11 99 A1 6F                 ..o
        lda     $6F80,y                         ; AD14 B9 80 6F                 ..o
        clc                                     ; AD17 18                       .
        adc     $D23A,x                         ; AD18 7D 3A D2                 }:.
        sta     $6F81,y                         ; AD1B 99 81 6F                 ..o
        sta     $6FC1,y                         ; AD1E 99 C1 6F                 ..o
        txa                                     ; AD21 8A                       .
        pha                                     ; AD22 48                       H
        tya                                     ; AD23 98                       .
        tax                                     ; AD24 AA                       .
        jsr     MapInteractionSystem_Entry_AAFF ; AD25 20 FF AA                  ..
        lda     $6BE7,y                         ; AD28 B9 E7 6B                 ..k
        bcc     MapInteractionSystem_Branch_AD2F; AD2B 90 02                    ..
        and     #$7F                            ; AD2D 29 7F                    ).
MapInteractionSystem_Branch_AD2F:
        pha                                     ; AD2F 48                       H
        and     #$80                            ; AD30 29 80                    ).
        sta     $7020,y                         ; AD32 99 20 70                 . p
        pla                                     ; AD35 68                       h
        and     #$20                            ; AD36 29 20                    )
        asl     a                               ; AD38 0A                       .
        asl     a                               ; AD39 0A                       .
        eor     #$80                            ; AD3A 49 80                    I.
        sta     $70E0,y                         ; AD3C 99 E0 70                 ..p
        pla                                     ; AD3F 68                       h
        tax                                     ; AD40 AA                       .
        iny                                     ; AD41 C8                       .
        cpy     #$03                            ; AD42 C0 03                    ..
        bne     MapInteractionSystem_Branch_AD07; AD44 D0 C1                    ..
        tya                                     ; AD46 98                       .
        tax                                     ; AD47 AA                       .
        jsr     MapInteractionSystem_Entry_AAFF ; AD48 20 FF AA                  ..
        lda     $6BE7,y                         ; AD4B B9 E7 6B                 ..k
        bcc     MapInteractionSystem_Branch_AD52; AD4E 90 02                    ..
        and     #$7F                            ; AD50 29 7F                    ).
MapInteractionSystem_Branch_AD52:
        and     #$80                            ; AD52 29 80                    ).
        sta     $7020,y                         ; AD54 99 20 70                 . p
        lda     #$80                            ; AD57 A9 80                    ..
        sta     $7024                           ; AD59 8D 24 70                 .$p
        sta     $7025                           ; AD5C 8D 25 70                 .%p
        lda     $6F62                           ; AD5F AD 62 6F                 .bo
        sta     $6F64                           ; AD62 8D 64 6F                 .do
        sta     $6F65                           ; AD65 8D 65 6F                 .eo
        sta     $6FA4                           ; AD68 8D A4 6F                 ..o
        sta     $6FA5                           ; AD6B 8D A5 6F                 ..o
        lda     $6F82                           ; AD6E AD 82 6F                 ..o
        sta     $6F84                           ; AD71 8D 84 6F                 ..o
        sta     $6F85                           ; AD74 8D 85 6F                 ..o
        sta     $6FC4                           ; AD77 8D C4 6F                 ..o
        sta     $6FC5                           ; AD7A 8D C5 6F                 ..o
        jsr     MapInteractionSystem_Entry_AB90 ; AD7D 20 90 AB                  ..
        jmp     MapInteractionSystem_Branch_AC92; AD80 4C 92 AC                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_AD83:
        jsr     MapInteractionSystem_Entry_AEEE ; AD83 20 EE AE                  ..
        bcc     MapInteractionSystem_Branch_ADA4; AD86 90 1C                    ..
        pha                                     ; AD88 48                       H
        cmp     #$FE                            ; AD89 C9 FE                    ..
        beq     MapInteractionSystem_Branch_AD90; AD8B F0 03                    ..
        jsr     UpperFixedEngine_Entry_D1F3     ; AD8D 20 F3 D1                  ..
MapInteractionSystem_Branch_AD90:
        pla                                     ; AD90 68                       h
        pha                                     ; AD91 48                       H
        jsr     MapInteractionSystem_Entry_AE19 ; AD92 20 19 AE                  ..
        pla                                     ; AD95 68                       h
        bcs     MapInteractionSystem_Branch_ADAC; AD96 B0 14                    ..
        jsr     MapInteractionSystem_Entry_AEC1 ; AD98 20 C1 AE                  ..
        brk                                     ; AD9B 00                       .
        db   $06,$DB,$F7                     ; AD9C 06 DB F7                 ...
; ----------------------------------------------------------------------------
        brk                                     ; AD9F 00                       .
        db   $05,$DB,$BF                     ; ADA0 05 DB BF                 ...
; ----------------------------------------------------------------------------
        rts                                     ; ADA3 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_ADA4:
        jsr     UpperFixedEngine_Entry_D1F3     ; ADA4 20 F3 D1                  ..
        jsr     MapInteractionSystem_Entry_8B15 ; ADA7 20 15 8B                  ..
        clc                                     ; ADAA 18                       .
        rts                                     ; ADAB 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_ADAC:
        cmp     #$FE                            ; ADAC C9 FE                    ..
        beq     MapInteractionSystem_Branch_ADB6; ADAE F0 06                    ..
        brk                                     ; ADB0 00                       .
        db   $92,$FB                         ; ADB1 92 FB                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_8ABC ; ADB3 20 BC 8A                  ..
MapInteractionSystem_Branch_ADB6:
        jsr     UpperFixedEngine_Entry_C5C5     ; ADB6 20 C5 C5                  ..
MapInteractionSystem_Branch_ADB9:
        lda     #$00                            ; ADB9 A9 00                    ..
        sta     $0515                           ; ADBB 8D 15 05                 ...
        sta     $0530                           ; ADBE 8D 30 05                 .0.
        brk                                     ; ADC1 00                       .
        db   $01,$87                         ; ADC2 01 87                    ..
; ----------------------------------------------------------------------------
        lda     #$82                            ; ADC4 A9 82                    ..
        jsr     MapInteractionSystem_Entry_8EE5 ; ADC6 20 E5 8E                  ..
        jsr     MapInteractionSystem_Entry_8C48 ; ADC9 20 48 8C                  H.
        sec                                     ; ADCC 38                       8
        rts                                     ; ADCD 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_ADCE:
        lda     #$00                            ; ADCE A9 00                    ..
        sta     $6BDE                           ; ADD0 8D DE 6B                 ..k
        lda     $0553                           ; ADD3 AD 53 05                 .S.
        and     #$7F                            ; ADD6 29 7F                    ).
        sta     $0553                           ; ADD8 8D 53 05                 .S.
        jsr     UpperFixedEngine_Entry_C5AF     ; ADDB 20 AF C5                  ..
        jsr     MapInteractionSystem_Entry_AB6B ; ADDE 20 6B AB                  k.
        jsr     MapInteractionSystem_Entry_9648 ; ADE1 20 48 96                  H.
        jsr     MapInteractionSystem_Entry_97F5 ; ADE4 20 F5 97                  ..
        brk                                     ; ADE7 00                       .
        db   $07,$87                         ; ADE8 07 87                    ..
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_ADB9; ADEA 4C B9 AD                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_ADED:
        jsr     MapInteractionSystem_Entry_AE19 ; ADED 20 19 AE                  ..
        cmp     #$01                            ; ADF0 C9 01                    ..
        beq     MapInteractionSystem_Branch_ADCE; ADF2 F0 DA                    ..
        lda     #$00                            ; ADF4 A9 00                    ..
        sta     $6BDE                           ; ADF6 8D DE 6B                 ..k
        lda     $0553                           ; ADF9 AD 53 05                 .S.
        and     #$7F                            ; ADFC 29 7F                    ).
        sta     $0553                           ; ADFE 8D 53 05                 .S.
        brk                                     ; AE01 00                       .
        db   $0C,$BF                         ; AE02 0C BF                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5AF     ; AE04 20 AF C5                  ..
        jsr     MapInteractionSystem_Entry_9799 ; AE07 20 99 97                  ..
        jsr     MapInteractionSystem_Entry_AB6B ; AE0A 20 6B AB                  k.
        jsr     MapInteractionSystem_Entry_9648 ; AE0D 20 48 96                  H.
        jsr     MapInteractionSystem_Entry_97F5 ; AE10 20 F5 97                  ..
        brk                                     ; AE13 00                       .
        db   $07,$87                         ; AE14 07 87                    ..
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_AEC6; AE16 4C C6 AE                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_AE19:
        cmp     #$FF                            ; AE19 C9 FF                    ..
        beq     MapInteractionSystem_Branch_AE2C; AE1B F0 0F                    ..
        cmp     #$FE                            ; AE1D C9 FE                    ..
        beq     MapInteractionSystem_Branch_AE27; AE1F F0 06                    ..
        brk                                     ; AE21 00                       .
        db   $47,$73                         ; AE22 47 73                    Gs
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_AE2E; AE24 4C 2E AE                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AE27:
        lda     #$1E                            ; AE27 A9 1E                    ..
        jmp     MapInteractionSystem_Branch_AE2E; AE29 4C 2E AE                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AE2C:
        lda     #$1F                            ; AE2C A9 1F                    ..
MapInteractionSystem_Branch_AE2E:
        pha                                     ; AE2E 48                       H
        sta     $51                             ; AE2F 85 51                    .Q
        lda     #$00                            ; AE31 A9 00                    ..
        sta     $52                             ; AE33 85 52                    .R
        ldx     #$51                            ; AE35 A2 51                    .Q
        lda     #$07                            ; AE37 A9 07                    ..
        jsr     MultiplyPointerWord             ; AE39 20 27 C8                  '.
        lda     $51                             ; AE3C A5 51                    .Q
        clc                                     ; AE3E 18                       .
        adc     $AEFE                           ; AE3F 6D FE AE                 m..
        sta     $51                             ; AE42 85 51                    .Q
        lda     $52                             ; AE44 A5 52                    .R
        adc     $AEFF                           ; AE46 6D FF AE                 m..
        sta     $52                             ; AE49 85 52                    .R
        bit     $41                             ; AE4B 24 41                    $A
        bpl     MapInteractionSystem_Branch_AE52; AE4D 10 03                    ..
        brk                                     ; AE4F 00                       .
        db   $57,$33                         ; AE50 57 33                    W3
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AE52:
        ldy     #$00                            ; AE52 A0 00                    ..
        lda     ($51),y                         ; AE54 B1 51                    .Q
        pha                                     ; AE56 48                       H
        and     #$03                            ; AE57 29 03                    ).
        sta     CurrentTilesetCandidate         ; AE59 85 65                    .e
        pla                                     ; AE5B 68                       h
        bmi     MapInteractionSystem_Branch_AE99; AE5C 30 3B                    0;
        iny                                     ; AE5E C8                       .
        lda     ($51),y                         ; AE5F B1 51                    .Q
        sta     PlayerWorldX                    ; AE61 85 42                    .B
        iny                                     ; AE63 C8                       .
        lda     ($51),y                         ; AE64 B1 51                    .Q
        sta     PlayerWorldY                    ; AE66 85 43                    .C
        iny                                     ; AE68 C8                       .
        lda     ($51),y                         ; AE69 B1 51                    .Q
        sta     $6195                           ; AE6B 8D 95 61                 ..a
        iny                                     ; AE6E C8                       .
        lda     ($51),y                         ; AE6F B1 51                    .Q
        sta     $6196                           ; AE71 8D 96 61                 ..a
        iny                                     ; AE74 C8                       .
        lda     ($51),y                         ; AE75 B1 51                    .Q
        cmp     #$FF                            ; AE77 C9 FF                    ..
        beq     MapInteractionSystem_Branch_AE96; AE79 F0 1B                    ..
        sta     SavePlayerWorldX                ; AE7B 8D 97 61                 ..a
        iny                                     ; AE7E C8                       .
        lda     ($51),y                         ; AE7F B1 51                    .Q
        sta     SavePlayerWorldY                ; AE81 8D 98 61                 ..a
        pla                                     ; AE84 68                       h
        pha                                     ; AE85 48                       H
        ldx     #$C8                            ; AE86 A2 C8                    ..
        cmp     #$1F                            ; AE88 C9 1F                    ..
        bne     MapInteractionSystem_Branch_AE8E; AE8A D0 02                    ..
        ldx     #$41                            ; AE8C A2 41                    .A
MapInteractionSystem_Branch_AE8E:
        stx     CurrentMapNumber                ; AE8E 86 63                    .c
        brk                                     ; AE90 00                       .
        db   $6F,$33                         ; AE91 6F 33                    o3
; ----------------------------------------------------------------------------
        brk                                     ; AE93 00                       .
        db   $54,$33                         ; AE94 54 33                    T3
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AE96:
        pla                                     ; AE96 68                       h
        clc                                     ; AE97 18                       .
        rts                                     ; AE98 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AE99:
        iny                                     ; AE99 C8                       .
        lda     ($51),y                         ; AE9A B1 51                    .Q
        sta     PlayerLocalX                    ; AE9C 85 44                    .D
        iny                                     ; AE9E C8                       .
        lda     ($51),y                         ; AE9F B1 51                    .Q
        sta     PlayerLocalY                    ; AEA1 85 45                    .E
        iny                                     ; AEA3 C8                       .
        lda     ($51),y                         ; AEA4 B1 51                    .Q
        sta     CurrentMapNumber                ; AEA6 85 63                    .c
        iny                                     ; AEA8 C8                       .
        lda     ($51),y                         ; AEA9 B1 51                    .Q
        sta     CurrentSubmapNumber             ; AEAB 85 64                    .d
        lda     #$FF                            ; AEAD A9 FF                    ..
        sta     $6195                           ; AEAF 8D 95 61                 ..a
        sta     $6196                           ; AEB2 8D 96 61                 ..a
        sta     SavePlayerWorldX                ; AEB5 8D 97 61                 ..a
        sta     SavePlayerWorldY                ; AEB8 8D 98 61                 ..a
        brk                                     ; AEBB 00                       .
        db   $6F,$33                         ; AEBC 6F 33                    o3
; ----------------------------------------------------------------------------
        pla                                     ; AEBE 68                       h
        sec                                     ; AEBF 38                       8
        rts                                     ; AEC0 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_AEC1:
        pha                                     ; AEC1 48                       H
        jsr     MapInteractionSystem_Entry_AEE5 ; AEC2 20 E5 AE                  ..
        pla                                     ; AEC5 68                       h
MapInteractionSystem_Branch_AEC6:
        pha                                     ; AEC6 48                       H
        sec                                     ; AEC7 38                       8
        brk                                     ; AEC8 00                       .
        db   $0E,$BF                         ; AEC9 0E BF                    ..
; ----------------------------------------------------------------------------
        lda     #$02                            ; AECB A9 02                    ..
        sta     $3D                             ; AECD 85 3D                    .=
        lda     #$00                            ; AECF A9 00                    ..
        sta     $0515                           ; AED1 8D 15 05                 ...
        sta     $0530                           ; AED4 8D 30 05                 .0.
        jsr     MapInteractionSystem_Entry_92EC ; AED7 20 EC 92                  ..
        pla                                     ; AEDA 68                       h
        cmp     #$FF                            ; AEDB C9 FF                    ..
        jsr     MapInteractionSystem_Entry_8C51 ; AEDD 20 51 8C                  Q.
        jsr     MapInteractionSystem_Entry_9485 ; AEE0 20 85 94                  ..
        sec                                     ; AEE3 38                       8
        rts                                     ; AEE4 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_AEE5:
        brk                                     ; AEE5 00                       .
        db   $92,$FB                         ; AEE6 92 FB                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_8ABC ; AEE8 20 BC 8A                  ..
        jmp     UpperFixedEngine_Entry_C5C5     ; AEEB 4C C5 C5                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_AEEE:
        bit     $41                             ; AEEE 24 41                    $A
        bpl     MapInteractionSystem_Branch_AEFC; AEF0 10 0A                    ..
        pha                                     ; AEF2 48                       H
        brk                                     ; AEF3 00                       .
        db   $0F,$87                         ; AEF4 0F 87                    ..
; ----------------------------------------------------------------------------
        bcs     MapInteractionSystem_Branch_AEFB; AEF6 B0 03                    ..
        pla                                     ; AEF8 68                       h
        clc                                     ; AEF9 18                       .
        rts                                     ; AEFA 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_AEFB:
        pla                                     ; AEFB 68                       h
MapInteractionSystem_Branch_AEFC:
        sec                                     ; AEFC 38                       8
        rts                                     ; AEFD 60                       `
; ----------------------------------------------------------------------------
        db   $00                             ; AEFE 00                       .
        db   $AF,$00,$40,$A7,$47,$A3,$3F,$A5 ; AEFF AF 00 40 A7 47 A3 3F A5  ..@.G.?.
        db   $81,$0C,$07,$3E,$00,$00,$00,$00 ; AF07 81 0C 07 3E 00 00 00 00  ...>....
        db   $27,$4A,$27,$4E,$26,$48,$00,$A4 ; AF0F 27 4A 27 4E 26 48 00 A4  'J'N&H..
        db   $2F,$9D,$21,$A3,$2C,$00,$A4,$CF ; AF17 2F 9D 21 A3 2C 00 A4 CF  /.!.,...
        db   $91,$D1,$A3,$CD,$00,$67,$66,$67 ; AF1F 91 D1 A3 CD 00 67 66 67  .....gfg
        db   $67,$66,$64,$00,$74,$47,$74,$4C ; AF27 67 66 64 00 74 47 74 4C  gfd.tGtL
        db   $76,$45,$00,$99,$46,$99,$49,$98 ; AF2F 76 45 00 99 46 99 49 98  vE..F.I.
        db   $44,$00,$EB,$CA,$EF,$C9,$EA,$C8 ; AF37 44 00 EB CA EF C9 EA C8  D.......
        db   $00,$C7,$2C,$B8,$21,$C6,$29,$00 ; AF3F 00 C7 2C B8 21 C6 29 00  ..,.!.).
        db   $26,$13,$2B,$18,$25,$14,$00,$1E ; AF47 26 13 2B 18 25 14 00 1E  &.+.%...
        db   $97,$1D,$9B,$1F,$95,$00,$90,$D0 ; AF4F 97 1D 9B 1F 95 00 90 D0  ........
        db   $91,$D0,$8F,$D0,$00,$40,$4A,$3A ; AF57 91 D0 8F D0 00 40 4A 3A  .....@J:
        db   $47,$3E,$49,$00,$B5,$A9,$B2,$A3 ; AF5F 47 3E 49 00 B5 A9 B2 A3  G>I.....
        db   $B4,$A7,$00,$47,$3A,$31,$36,$49 ; AF67 B4 A7 00 47 3A 31 36 49  ...G:16I
        db   $38,$00,$60,$29,$63,$2A,$61,$27 ; AF6F 38 00 60 29 63 2A 61 27  8.`)c*a'
        db   $00,$BA,$62,$AA,$70,$B9,$61,$00 ; AF77 00 BA 62 AA 70 B9 61 00  ..b.p.a.
        db   $42,$9B,$41,$9A,$42,$99,$00,$9A ; AF7F 42 9B 41 9A 42 99 00 9A  B.A.B...
        db   $17,$9A,$13,$9B,$15,$00,$91,$32 ; AF87 17 9A 13 9B 15 00 91 32  .......2
        db   $93,$4D,$92,$30,$00,$39,$E7,$3E ; AF8F 93 4D 92 30 00 39 E7 3E  .M.0.9.>
        db   $E5,$38,$E5,$00,$68,$25,$6A,$26 ; AF97 E5 38 E5 00 68 25 6A 26  .8..h%j&
        db   $67,$23,$00,$33,$BE,$23,$B7,$31 ; AF9F 67 23 00 33 BE 23 B7 31  g#.3.#.1
        db   $BC,$01,$20,$1D,$00,$00,$0B,$1C ; AFA7 BC 01 20 1D 00 00 0B 1C  .. .....
        db   $00,$A9,$89,$A9,$8A,$A8,$87,$00 ; AFAF 00 A9 89 A9 8A A8 87 00  ........
        db   $CC,$67,$CD,$65,$CB,$66,$03,$23 ; AFB7 CC 67 CD 65 CB 66 03 23  .g.e.f.#
        db   $2B,$00,$00,$00,$00,$03,$19,$20 ; AFBF 2B 00 00 00 00 03 19 20  +......
        db   $00,$00,$00,$00,$01,$0E,$0F,$00 ; AFC7 00 00 00 00 01 0E 0F 00  ........
        db   $00,$00,$00,$80,$09,$0C,$41,$00 ; AFCF 00 00 00 80 09 0C 41 00  ......A.
        db   $00,$00,$00,$88,$16,$00,$00,$00 ; AFD7 00 00 00 88 16 00 00 00  ........
        db   $00                             ; AFDF 00                       .
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_AFE0:
        lda     $41                             ; AFE0 A5 41                    .A
        bpl     MapInteractionSystem_Branch_B009; AFE2 10 25                    .%
        lda     CurrentMapNumber                ; AFE4 A5 63                    .c
        cmp     #$37                            ; AFE6 C9 37                    .7
        beq     MapInteractionSystem_Branch_B009; AFE8 F0 1F                    ..
        cmp     #$2E                            ; AFEA C9 2E                    ..
        bne     MapInteractionSystem_Branch_AFFC; AFEC D0 0E                    ..
        lda     #$E7                            ; AFEE A9 E7                    ..
        sta     PlayerWorldX                    ; AFF0 85 42                    .B
        sta     $6195                           ; AFF2 8D 95 61                 ..a
        lda     #$1C                            ; AFF5 A9 1C                    ..
        sta     PlayerWorldY                    ; AFF7 85 43                    .C
        sta     $6196                           ; AFF9 8D 96 61                 ..a
MapInteractionSystem_Branch_AFFC:
        lda     $07BA                           ; AFFC AD BA 07                 ...
        and     #$7F                            ; AFFF 29 7F                    ).
        cmp     #$04                            ; B001 C9 04                    ..
        beq     MapInteractionSystem_Branch_B00B; B003 F0 06                    ..
        cmp     #$05                            ; B005 C9 05                    ..
        beq     MapInteractionSystem_Branch_B00B; B007 F0 02                    ..
MapInteractionSystem_Branch_B009:
        clc                                     ; B009 18                       .
        rts                                     ; B00A 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B00B:
        jsr     UpperFixedEngine_Entry_D1F3     ; B00B 20 F3 D1                  ..
        jsr     MapInteractionSystem_Entry_8ABC ; B00E 20 BC 8A                  ..
        brk                                     ; B011 00                       .
        db   $82,$FB                         ; B012 82 FB                    ..
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_C5C5     ; B014 20 C5 C5                  ..
        lda     #$02                            ; B017 A9 02                    ..
        sta     $3D                             ; B019 85 3D                    .=
        ldx     #$00                            ; B01B A2 00                    ..
        lda     CurrentMapNumber                ; B01D A5 63                    .c
        cmp     #$2E                            ; B01F C9 2E                    ..
        bne     MapInteractionSystem_Branch_B024; B021 D0 01                    ..
        inx                                     ; B023 E8                       .
MapInteractionSystem_Branch_B024:
        stx     $0515                           ; B024 8E 15 05                 ...
        brk                                     ; B027 00                       .
        db   $54,$33                         ; B028 54 33                    T3
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_92E3 ; B02A 20 E3 92                  ..
        sec                                     ; B02D 38                       8
        rts                                     ; B02E 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B02F:
        lda     #$78                            ; B02F A9 78                    .x
        sta     SaveTransformSteps              ; B031 8D 96 62                 ..b
        lda     CurrentMapNumber                ; B034 A5 63                    .c
        cmp     #$03                            ; B036 C9 03                    ..
        beq     MapInteractionSystem_Branch_B052; B038 F0 18                    ..
        lda     CurrentSubmapNumber             ; B03A A5 64                    .d
        cmp     #$01                            ; B03C C9 01                    ..
        bne     MapInteractionSystem_Branch_B052; B03E D0 12                    ..
        lda     PlayerLocalX                    ; B040 A5 44                    .D
        sec                                     ; B042 38                       8
        sbc     #$01                            ; B043 E9 01                    ..
        cmp     #$0D                            ; B045 C9 0D                    ..
        bcs     MapInteractionSystem_Branch_B052; B047 B0 09                    ..
        lda     PlayerLocalY                    ; B049 A5 45                    .E
        sec                                     ; B04B 38                       8
        sbc     #$0F                            ; B04C E9 0F                    ..
        cmp     #$09                            ; B04E C9 09                    ..
        bcc     MapInteractionSystem_Branch_B061; B050 90 0F                    ..
MapInteractionSystem_Branch_B052:
        jsr     UpperFixedEngine_Entry_C891     ; B052 20 91 C8                  ..
        cmp     #$C0                            ; B055 C9 C0                    ..
        bcc     MapInteractionSystem_Branch_B061; B057 90 08                    ..
        lda     #$25                            ; B059 A9 25                    .%
        brk                                     ; B05B 00                       .
        db   $17,$0F                         ; B05C 17 0F                    ..
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_B069; B05E 4C 69 B0                 Li.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B061:
        lda     #$0F                            ; B061 A9 0F                    ..
        brk                                     ; B063 00                       .
        db   $17,$0F                         ; B064 17 0F                    ..
; ----------------------------------------------------------------------------
        clc                                     ; B066 18                       .
        adc     #$25                            ; B067 69 25                    i%
MapInteractionSystem_Branch_B069:
        tax                                     ; B069 AA                       .
        lda     $B079,x                         ; B06A BD 79 B0                 .y.
        asl     a                               ; B06D 0A                       .
        cpx     #$25                            ; B06E E0 25                    .%
        ror     a                               ; B070 6A                       j
        sta     SaveTransformShape              ; B071 8D 97 62                 ..b
        jsr     MapInteractionSystem_Entry_97B8 ; B074 20 B8 97                  ..
        sec                                     ; B077 38                       8
        rts                                     ; B078 60                       `
; ----------------------------------------------------------------------------
        db   $00,$01,$02,$03,$04,$05,$06,$07 ; B079 00 01 02 03 04 05 06 07  ........
        db   $08,$0F,$10,$11,$12,$13,$14,$15 ; B081 08 0F 10 11 12 13 14 15  ........
        db   $16,$17,$18,$19,$1A,$1B,$1D,$1E ; B089 16 17 18 19 1A 1B 1D 1E  ........
        db   $1F,$20,$21,$22,$28,$29,$36,$37 ; B091 1F 20 21 22 28 29 36 37  . !"()67
        db   $38,$3A,$3B,$4C,$4D,$1C,$23,$24 ; B099 38 3A 3B 4C 4D 1C 23 24  8:;LM.#$
        db   $25,$26,$2A,$39,$3D,$3E,$40,$42 ; B0A1 25 26 2A 39 3D 3E 40 42  %&*9=>@B
        db   $43,$44,$45,$46                 ; B0A9 43 44 45 46              CDEF
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B0AD:
        jsr     UpperFixedEngine_Entry_D1F3     ; B0AD 20 F3 D1                  ..
        brk                                     ; B0B0 00                       .
        db   $07,$6F,$43                     ; B0B1 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; B0B4 00                       .
        db   $EF,$3B                         ; B0B5 EF 3B                    .;
; ----------------------------------------------------------------------------
        brk                                     ; B0B7 00                       .
        db   $2C,$FB                         ; B0B8 2C FB                    ,.
; ----------------------------------------------------------------------------
        brk                                     ; B0BA 00                       .
        db   $07,$9F                         ; B0BB 07 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B0BD 00                       .
        db   $09,$9F                         ; B0BE 09 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B0C0 00                       .
        db   $28,$4B                         ; B0C1 28 4B                    (K
; ----------------------------------------------------------------------------
        ldx     #$06                            ; B0C3 A2 06                    ..
        lda     $7006,x                         ; B0C5 BD 06 70                 ..p
        and     #$FC                            ; B0C8 29 FC                    ).
        sta     $7006,x                         ; B0CA 9D 06 70                 ..p
        lda     $6FE6,x                         ; B0CD BD E6 6F                 ..o
        tax                                     ; B0D0 AA                       .
        lda     #$01                            ; B0D1 A9 01                    ..
        brk                                     ; B0D3 00                       .
        db   $0D,$87                         ; B0D4 0D 87                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B0D6 00                       .
        db   $0A,$6F                         ; B0D7 0A 6F                    .o
; ----------------------------------------------------------------------------
        ldx     #$00                            ; B0D9 A2 00                    ..
MapInteractionSystem_Branch_B0DB:
        lda     $053A,x                         ; B0DB BD 3A 05                 .:.
        beq     MapInteractionSystem_Branch_B0E5; B0DE F0 05                    ..
        inx                                     ; B0E0 E8                       .
        cpx     #$04                            ; B0E1 E0 04                    ..
        bcc     MapInteractionSystem_Branch_B0DB; B0E3 90 F6                    ..
MapInteractionSystem_Branch_B0E5:
        stx     $F9                             ; B0E5 86 F9                    ..
        ldx     #$04                            ; B0E7 A2 04                    ..
        lda     $7006,x                         ; B0E9 BD 06 70                 ..p
        and     #$FC                            ; B0EC 29 FC                    ).
        ora     #$02                            ; B0EE 09 02                    ..
        sta     $7006,x                         ; B0F0 9D 06 70                 ..p
        brk                                     ; B0F3 00                       .
        db   $0A,$6F                         ; B0F4 0A 6F                    .o
; ----------------------------------------------------------------------------
        brk                                     ; B0F6 00                       .
        db   $2F,$4B                         ; B0F7 2F 4B                    /K
; ----------------------------------------------------------------------------
        brk                                     ; B0F9 00                       .
        db   $62,$23,$40                     ; B0FA 62 23 40                 b#@
; ----------------------------------------------------------------------------
        cmp     #$02                            ; B0FD C9 02                    ..
        bcs     MapInteractionSystem_Branch_B126; B0FF B0 25                    .%
        ldx     #$00                            ; B101 A2 00                    ..
        brk                                     ; B103 00                       .
        db   $2B,$73                         ; B104 2B 73                    +s
; ----------------------------------------------------------------------------
        cmp     #$04                            ; B106 C9 04                    ..
        bne     MapInteractionSystem_Branch_B126; B108 D0 1C                    ..
        brk                                     ; B10A 00                       .
        db   $5E,$4B                         ; B10B 5E 4B                    ^K
; ----------------------------------------------------------------------------
        ldx     #$04                            ; B10D A2 04                    ..
        lda     $7006,x                         ; B10F BD 06 70                 ..p
        ora     #$03                            ; B112 09 03                    ..
        sta     $7006,x                         ; B114 9D 06 70                 ..p
        brk                                     ; B117 00                       .
        db   $0A,$6F                         ; B118 0A 6F                    .o
; ----------------------------------------------------------------------------
        brk                                     ; B11A 00                       .
        db   $5F,$4B                         ; B11B 5F 4B                    _K
; ----------------------------------------------------------------------------
        brk                                     ; B11D 00                       .
        db   $16,$CB,$08                     ; B11E 16 CB 08                 ...
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D20A     ; B121 20 0A D2                  ..
        sec                                     ; B124 38                       8
        rts                                     ; B125 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B126:
        brk                                     ; B126 00                       .
        db   $5C,$4B                         ; B127 5C 4B                    \K
; ----------------------------------------------------------------------------
        ldx     #$04                            ; B129 A2 04                    ..
        lda     $7006,x                         ; B12B BD 06 70                 ..p
        ora     #$03                            ; B12E 09 03                    ..
        sta     $7006,x                         ; B130 9D 06 70                 ..p
        brk                                     ; B133 00                       .
        db   $0A,$6F                         ; B134 0A 6F                    .o
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_9E3F ; B136 20 3F 9E                  ?.
        sta     $F9                             ; B139 85 F9                    ..
        brk                                     ; B13B 00                       .
        db   $30,$4B                         ; B13C 30 4B                    0K
; ----------------------------------------------------------------------------
        brk                                     ; B13E 00                       .
        db   $5D,$4B                         ; B13F 5D 4B                    ]K
; ----------------------------------------------------------------------------
        lda     #$24                            ; B141 A9 24                    .$
        brk                                     ; B143 00                       .
        db   $07,$CF                         ; B144 07 CF                    ..
; ----------------------------------------------------------------------------
        sec                                     ; B146 38                       8
        rts                                     ; B147 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B148:
        lda     #$80                            ; B148 A9 80                    ..
        sta     $6F66,x                         ; B14A 9D 66 6F                 .fo
        sta     $6FA6,x                         ; B14D 9D A6 6F                 ..o
        sta     $6F86,x                         ; B150 9D 86 6F                 ..o
        sta     $6FC6,x                         ; B153 9D C6 6F                 ..o
        rts                                     ; B156 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B157:
        sta     $6E0B                           ; B157 8D 0B 6E                 ..n
        stx     $6E                             ; B15A 86 6E                    .n
        pha                                     ; B15C 48                       H
        txa                                     ; B15D 8A                       .
        pha                                     ; B15E 48                       H
        tya                                     ; B15F 98                       .
        pha                                     ; B160 48                       H
        lda     $6E0B                           ; B161 AD 0B 6E                 ..n
        cmp     #$03                            ; B164 C9 03                    ..
        beq     MapInteractionSystem_Branch_B172; B166 F0 0A                    ..
        lda     $6E                             ; B168 A5 6E                    .n
        bit     SaveGameStateFlags              ; B16A 2C 8E 61                 ,.a
        bpl     MapInteractionSystem_Branch_B172; B16D 10 03                    ..
        clc                                     ; B16F 18                       .
        adc     #$04                            ; B170 69 04                    i.
MapInteractionSystem_Branch_B172:
        bit     SaveGameStateFlags              ; B172 2C 8E 61                 ,.a
        bvc     MapInteractionSystem_Branch_B17A; B175 50 03                    P.
        clc                                     ; B177 18                       .
        adc     #$1C                            ; B178 69 1C                    i.
MapInteractionSystem_Branch_B17A:
        tax                                     ; B17A AA                       .
        lda     SavePartyCharacter1,x           ; B17B BD 6A 61                 .ja
        and     #$7F                            ; B17E 29 7F                    ).
        asl     a                               ; B180 0A                       .
        tax                                     ; B181 AA                       .
        lda     $B1A3,x                         ; B182 BD A3 B1                 ...
        sta     $79                             ; B185 85 79                    .y
        lda     $B1A4,x                         ; B187 BD A4 B1                 ...
        sta     $7A                             ; B18A 85 7A                    .z
        ldx     $6E0B                           ; B18C AE 0B 6E                 ..n
        beq     MapInteractionSystem_Branch_B1D2; B18F F0 41                    .A
        dex                                     ; B191 CA                       .
        beq     MapInteractionSystem_Branch_B20E; B192 F0 7A                    .z
        dex                                     ; B194 CA                       .
        beq     MapInteractionSystem_Branch_B19D; B195 F0 06                    ..
        dex                                     ; B197 CA                       .
        beq     MapInteractionSystem_Branch_B1A0; B198 F0 06                    ..
        jmp     MapInteractionSystem_Branch_B275; B19A 4C 75 B2                 Lu.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B19D:
        jmp     MapInteractionSystem_Branch_B232; B19D 4C 32 B2                 L2.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B1A0:
        jmp     MapInteractionSystem_Branch_B259; B1A0 4C 59 B2                 LY.
; ----------------------------------------------------------------------------
        db   $01                             ; B1A3 01                       .
        db   $60,$1F,$60,$3D,$60,$5B,$60,$79 ; B1A4 60 1F 60 3D 60 5B 60 79  `.`=`[`y
        db   $60,$97,$60,$B5,$60,$D3,$60,$F1 ; B1AC 60 97 60 B5 60 D3 60 F1  `.`.`.`.
        db   $60,$0F,$61,$15,$61,$1B,$61,$21 ; B1B4 60 0F 61 15 61 1B 61 21  `.a.a.a!
        db   $61,$27,$61,$2D,$61,$33,$61,$39 ; B1BC 61 27 61 2D 61 33 61 39  a'a-a3a9
        db   $61,$3F,$61,$45,$61,$4B,$61,$51 ; B1C4 61 3F 61 45 61 4B 61 51  a?aEaKaQ
        db   $61                             ; B1CC 61                       a
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B1CD:
        ldy     #$00                            ; B1CD A0 00                    ..
        lda     ($79),y                         ; B1CF B1 79                    .y
        rts                                     ; B1D1 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B1D2:
        jsr     MapInteractionSystem_Entry_B1CD ; B1D2 20 CD B1                  ..
        bpl     MapInteractionSystem_Branch_B208; B1D5 10 31                    .1
        ldy     #$01                            ; B1D7 A0 01                    ..
        lda     ($79),y                         ; B1D9 B1 79                    .y
        clc                                     ; B1DB 18                       .
        adc     $6F                             ; B1DC 65 6F                    eo
        sta     ($79),y                         ; B1DE 91 79                    .y
        iny                                     ; B1E0 C8                       .
        lda     ($79),y                         ; B1E1 B1 79                    .y
        adc     $70                             ; B1E3 65 70                    ep
        sta     ($79),y                         ; B1E5 91 79                    .y
        ldy     #$0D                            ; B1E7 A0 0D                    ..
        cmp     ($79),y                         ; B1E9 D1 79                    .y
        beq     MapInteractionSystem_Branch_B1EF; B1EB F0 02                    ..
        bcc     MapInteractionSystem_Branch_B1F8; B1ED 90 09                    ..
MapInteractionSystem_Branch_B1EF:
        dey                                     ; B1EF 88                       .
        lda     ($79),y                         ; B1F0 B1 79                    .y
        ldy     #$01                            ; B1F2 A0 01                    ..
        cmp     ($79),y                         ; B1F4 D1 79                    .y
        bcs     MapInteractionSystem_Branch_B208; B1F6 B0 10                    ..
MapInteractionSystem_Branch_B1F8:
        ldy     #$0C                            ; B1F8 A0 0C                    ..
        lda     ($79),y                         ; B1FA B1 79                    .y
        pha                                     ; B1FC 48                       H
        iny                                     ; B1FD C8                       .
        lda     ($79),y                         ; B1FE B1 79                    .y
        iny                                     ; B200 C8                       .
        iny                                     ; B201 C8                       .
        sta     ($79),y                         ; B202 91 79                    .y
        dey                                     ; B204 88                       .
        pla                                     ; B205 68                       h
        sta     ($79),y                         ; B206 91 79                    .y
MapInteractionSystem_Branch_B208:
        pla                                     ; B208 68                       h
        tay                                     ; B209 A8                       .
        pla                                     ; B20A 68                       h
        tax                                     ; B20B AA                       .
        pla                                     ; B20C 68                       h
        rts                                     ; B20D 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B20E:
        jsr     MapInteractionSystem_Entry_B1CD ; B20E 20 CD B1                  ..
        bpl     MapInteractionSystem_Branch_B22C; B211 10 19                    ..
        ldy     #$01                            ; B213 A0 01                    ..
        lda     ($79),y                         ; B215 B1 79                    .y
        sec                                     ; B217 38                       8
        sbc     $6F                             ; B218 E5 6F                    .o
        sta     ($79),y                         ; B21A 91 79                    .y
        iny                                     ; B21C C8                       .
        lda     ($79),y                         ; B21D B1 79                    .y
        sbc     $70                             ; B21F E5 70                    .p
        sta     ($79),y                         ; B221 91 79                    .y
        bcs     MapInteractionSystem_Branch_B22C; B223 B0 07                    ..
        lda     #$00                            ; B225 A9 00                    ..
        sta     ($79),y                         ; B227 91 79                    .y
        dey                                     ; B229 88                       .
        sta     ($79),y                         ; B22A 91 79                    .y
MapInteractionSystem_Branch_B22C:
        pla                                     ; B22C 68                       h
        tay                                     ; B22D A8                       .
        pla                                     ; B22E 68                       h
        tax                                     ; B22F AA                       .
        pla                                     ; B230 68                       h
        rts                                     ; B231 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B232:
        jsr     MapInteractionSystem_Entry_B1CD ; B232 20 CD B1                  ..
        bpl     MapInteractionSystem_Branch_B252; B235 10 1B                    ..
        ldy     #$01                            ; B237 A0 01                    ..
        lda     ($79),y                         ; B239 B1 79                    .y
        iny                                     ; B23B C8                       .
        ora     ($79),y                         ; B23C 11 79                    .y
        bne     MapInteractionSystem_Branch_B252; B23E D0 12                    ..
        ldy     #$00                            ; B240 A0 00                    ..
        lda     ($79),y                         ; B242 B1 79                    .y
        and     #$1F                            ; B244 29 1F                    ).
        sta     ($79),y                         ; B246 91 79                    .y
        brk                                     ; B248 00                       .
        db   $26,$0F                         ; B249 26 0F                    &.
; ----------------------------------------------------------------------------
        sec                                     ; B24B 38                       8
        pla                                     ; B24C 68                       h
        tay                                     ; B24D A8                       .
        pla                                     ; B24E 68                       h
        tax                                     ; B24F AA                       .
        pla                                     ; B250 68                       h
        rts                                     ; B251 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B252:
        clc                                     ; B252 18                       .
        pla                                     ; B253 68                       h
        tay                                     ; B254 A8                       .
        pla                                     ; B255 68                       h
        tax                                     ; B256 AA                       .
        pla                                     ; B257 68                       h
        rts                                     ; B258 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B259:
        lda     SaveGameStateFlags              ; B259 AD 8E 61                 ..a
        and     #$20                            ; B25C 29 20                    )
        beq     MapInteractionSystem_Branch_B26E; B25E F0 0E                    ..
        lda     SaveGameStateFlags              ; B260 AD 8E 61                 ..a
        and     #$87                            ; B263 29 87                    ).
        bne     MapInteractionSystem_Branch_B26E; B265 D0 07                    ..
        pla                                     ; B267 68                       h
        tay                                     ; B268 A8                       .
        pla                                     ; B269 68                       h
        tax                                     ; B26A AA                       .
        pla                                     ; B26B 68                       h
        sec                                     ; B26C 38                       8
        rts                                     ; B26D 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B26E:
        pla                                     ; B26E 68                       h
        tay                                     ; B26F A8                       .
        pla                                     ; B270 68                       h
        tax                                     ; B271 AA                       .
        pla                                     ; B272 68                       h
        clc                                     ; B273 18                       .
        rts                                     ; B274 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B275:
        jsr     MapInteractionSystem_Entry_B1CD ; B275 20 CD B1                  ..
        bpl     MapInteractionSystem_Branch_B2A0; B278 10 26                    .&
        ldy     #$03                            ; B27A A0 03                    ..
        lda     ($79),y                         ; B27C B1 79                    .y
        sta     $76                             ; B27E 85 76                    .v
        iny                                     ; B280 C8                       .
        lda     ($79),y                         ; B281 B1 79                    .y
        ldy     #$0F                            ; B283 A0 0F                    ..
        cmp     ($79),y                         ; B285 D1 79                    .y
        bne     MapInteractionSystem_Branch_B290; B287 D0 07                    ..
        dey                                     ; B289 88                       .
        lda     $76                             ; B28A A5 76                    .v
        cmp     ($79),y                         ; B28C D1 79                    .y
        beq     MapInteractionSystem_Branch_B2A0; B28E F0 10                    ..
MapInteractionSystem_Branch_B290:
        ldy     #$03                            ; B290 A0 03                    ..
        lda     ($79),y                         ; B292 B1 79                    .y
        clc                                     ; B294 18                       .
        adc     #$01                            ; B295 69 01                    i.
        sta     ($79),y                         ; B297 91 79                    .y
        iny                                     ; B299 C8                       .
        lda     ($79),y                         ; B29A B1 79                    .y
        adc     #$00                            ; B29C 69 00                    i.
        sta     ($79),y                         ; B29E 91 79                    .y
MapInteractionSystem_Branch_B2A0:
        pla                                     ; B2A0 68                       h
        tay                                     ; B2A1 A8                       .
        pla                                     ; B2A2 68                       h
        tax                                     ; B2A3 AA                       .
        pla                                     ; B2A4 68                       h
        rts                                     ; B2A5 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B2A6:
        brk                                     ; B2A6 00                       .
        db   $62,$23,$40                     ; B2A7 62 23 40                 b#@
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_B2BB; B2AA D0 0F                    ..
        brk                                     ; B2AC 00                       .
        db   $07,$6F,$50                     ; B2AD 07 6F 50                 .oP
; ----------------------------------------------------------------------------
        brk                                     ; B2B0 00                       .
        db   $C5,$2B                         ; B2B1 C5 2B                    .+
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D214     ; B2B3 20 14 D2                  ..
        brk                                     ; B2B6 00                       .
        db   $07,$6F,$FF                     ; B2B7 07 6F FF                 .o.
; ----------------------------------------------------------------------------
        rts                                     ; B2BA 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B2BB:
        jsr     MapInteractionSystem_Entry_B35D ; B2BB 20 5D B3                  ].
        bcc     MapInteractionSystem_Entry_B2F8 ; B2BE 90 38                    .8
        ldx     #$03                            ; B2C0 A2 03                    ..
MapInteractionSystem_Branch_B2C2:
        cmp     $B3C8,x                         ; B2C2 DD C8 B3                 ...
        beq     MapInteractionSystem_Branch_B32A; B2C5 F0 63                    .c
        dex                                     ; B2C7 CA                       .
        bpl     MapInteractionSystem_Branch_B2C2; B2C8 10 F8                    ..
        jsr     MapInteractionSystem_Entry_B381 ; B2CA 20 81 B3                  ..
        bcs     MapInteractionSystem_Branch_B2DE; B2CD B0 0F                    ..
        brk                                     ; B2CF 00                       .
        db   $07,$6F,$43                     ; B2D0 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; B2D3 00                       .
        db   $61,$3B                         ; B2D4 61 3B                    a;
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B2D6:
        jsr     UpperFixedEngine_Entry_C8E1     ; B2D6 20 E1 C8                  ..
        jsr     UpperFixedEngine_Entry_D1F3     ; B2D9 20 F3 D1                  ..
        sec                                     ; B2DC 38                       8
        rts                                     ; B2DD 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B2DE:
        stx     $01                             ; B2DE 86 01                    ..
        jsr     MapInteractionSystem_Entry_B36E ; B2E0 20 6E B3                  n.
        cmp     $01                             ; B2E3 C5 01                    ..
        bcc     MapInteractionSystem_Branch_B32A; B2E5 90 43                    .C
        beq     MapInteractionSystem_Branch_B32A; B2E7 F0 41                    .A
        brk                                     ; B2E9 00                       .
        db   $07,$6F,$43                     ; B2EA 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        brk                                     ; B2ED 00                       .
        db   $60,$3B                         ; B2EE 60 3B                    `;
; ----------------------------------------------------------------------------
        lda     #$00                            ; B2F0 A9 00                    ..
        sta     $6279                           ; B2F2 8D 79 62                 .yb
        jmp     MapInteractionSystem_Branch_B2D6; B2F5 4C D6 B2                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B2F8:
        lda     $00                           ; B2F8 A5 00                    ..
        pha                                     ; B2FA 48                       H
        brk                                     ; B2FB 00                       .
        db   $07,$6F,$43                     ; B2FC 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        pla                                     ; B2FF 68                       h
        cmp     #$2C                            ; B300 C9 2C                    .,
        beq     MapInteractionSystem_Branch_B30E; B302 F0 0A                    ..
        cmp     #$30                            ; B304 C9 30                    .0
        beq     MapInteractionSystem_Branch_B314; B306 F0 0C                    ..
        brk                                     ; B308 00                       .
        db   $5E,$3B                         ; B309 5E 3B                    ^;
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_B31D; B30B 4C 1D B3                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B30E:
        brk                                     ; B30E 00                       .
        db   $F2,$3B                         ; B30F F2 3B                    .;
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_B31D; B311 4C 1D B3                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B314:
        lda     CurrentMapNumber                ; B314 A5 63                    .c
        cmp     #$37                            ; B316 C9 37                    .7
        bne     MapInteractionSystem_Branch_B30E; B318 D0 F4                    ..
        brk                                     ; B31A 00                       .
        db   $EC,$3B                         ; B31B EC 3B                    .;
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B31D:
        lda     #$01                            ; B31D A9 01                    ..
        sta     $6279                           ; B31F 8D 79 62                 .yb
        jmp     MapInteractionSystem_Branch_B2D6; B322 4C D6 B2                 L..
; ----------------------------------------------------------------------------
        db   $20,$E1,$C8,$38,$60             ; B325 20 E1 C8 38 60            ..8`
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B32A:
        lda     $00                           ; B32A A5 00                    ..
        pha                                     ; B32C 48                       H
        jsr     UpperFixedEngine_Entry_D1F3     ; B32D 20 F3 D1                  ..
        pla                                     ; B330 68                       h
        jsr     MapInteractionSystem_Entry_835D ; B331 20 5D 83                  ].
        lda     #$00                            ; B334 A9 00                    ..
        sta     $6279                           ; B336 8D 79 62                 .yb
        sec                                     ; B339 38                       8
        rts                                     ; B33A 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B33B:
        jsr     MapInteractionSystem_Entry_B35D ; B33B 20 5D B3                  ].
        bcs     MapInteractionSystem_Branch_B341; B33E B0 01                    ..
        rts                                     ; B340 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B341:
        lda     $00                           ; B341 A5 00                    ..
        ldx     #$03                            ; B343 A2 03                    ..
MapInteractionSystem_Branch_B345:
        cmp     $B3C8,x                         ; B345 DD C8 B3                 ...
        beq     MapInteractionSystem_Branch_B32A; B348 F0 E0                    ..
        dex                                     ; B34A CA                       .
        bpl     MapInteractionSystem_Branch_B345; B34B 10 F8                    ..
        ldx     #$02                            ; B34D A2 02                    ..
        lda     $6279                           ; B34F AD 79 62                 .yb
MapInteractionSystem_Branch_B352:
        cmp     $B3D8,x                         ; B352 DD D8 B3                 ...
        beq     MapInteractionSystem_Branch_B35A; B355 F0 03                    ..
        dex                                     ; B357 CA                       .
        bpl     MapInteractionSystem_Branch_B352; B358 10 F8                    ..
MapInteractionSystem_Branch_B35A:
        jmp     MapInteractionSystem_Branch_B2DE; B35A 4C DE B2                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B35D:
        jsr     MapInteractionSystem_Entry_83D9 ; B35D 20 D9 83                  ..
        sta     $00                           ; B360 85 00                    ..
        cmp     #$14                            ; B362 C9 14                    ..
        bcc     MapInteractionSystem_Branch_B36C; B364 90 06                    ..
        cmp     #$24                            ; B366 C9 24                    .$
        bcs     MapInteractionSystem_Branch_B36C; B368 B0 02                    ..
        sec                                     ; B36A 38                       8
        rts                                     ; B36B 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B36C:
        clc                                     ; B36C 18                       .
        rts                                     ; B36D 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B36E:
        lda     $00                           ; B36E A5 00                    ..
        ldy     #$0F                            ; B370 A0 0F                    ..
MapInteractionSystem_Branch_B372:
        cmp     $B3C8,y                         ; B372 D9 C8 B3                 ...
        beq     MapInteractionSystem_Branch_B37A; B375 F0 03                    ..
        dey                                     ; B377 88                       .
        bpl     MapInteractionSystem_Branch_B372; B378 10 F8                    ..
MapInteractionSystem_Branch_B37A:
        tya                                     ; B37A 98                       .
        lsr     a                               ; B37B 4A                       J
        lsr     a                               ; B37C 4A                       J
        tay                                     ; B37D A8                       .
        dey                                     ; B37E 88                       .
        tya                                     ; B37F 98                       .
        rts                                     ; B380 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B381:
        lda     SaveCurrentChapterMinus1        ; B381 AD 5A 61                 .Za
        cmp     #$03                            ; B384 C9 03                    ..
        bne     MapInteractionSystem_Branch_B3B7; B386 D0 2F                    ./
        lda     #$09                            ; B388 A9 09                    ..
        brk                                     ; B38A 00                       .
        db   $63,$63,$03                     ; B38B 63 63 03                 cc.
; ----------------------------------------------------------------------------
        bcc     MapInteractionSystem_Branch_B3B7; B38E 90 27                    .'
        lda     $00                           ; B390 A5 00                    ..
        cmp     #$16                            ; B392 C9 16                    ..
        beq     MapInteractionSystem_Branch_B3A2; B394 F0 0C                    ..
        cmp     #$1A                            ; B396 C9 1A                    ..
        beq     MapInteractionSystem_Branch_B3A2; B398 F0 08                    ..
        cmp     #$1E                            ; B39A C9 1E                    ..
        beq     MapInteractionSystem_Branch_B3A2; B39C F0 04                    ..
        cmp     #$22                            ; B39E C9 22                    ."
        bne     MapInteractionSystem_Branch_B3B7; B3A0 D0 15                    ..
MapInteractionSystem_Branch_B3A2:
        lda     $00                           ; B3A2 A5 00                    ..
        pha                                     ; B3A4 48                       H
        brk                                     ; B3A5 00                       .
        db   $07,$6F,$50                     ; B3A6 07 6F 50                 .oP
; ----------------------------------------------------------------------------
        brk                                     ; B3A9 00                       .
        db   $A5,$3B                         ; B3AA A5 3B                    .;
; ----------------------------------------------------------------------------
        jsr     UpperFixedEngine_Entry_D214     ; B3AC 20 14 D2                  ..
        pla                                     ; B3AF 68                       h
        sta     $00                           ; B3B0 85 00                    ..
        pla                                     ; B3B2 68                       h
        pla                                     ; B3B3 68                       h
        jmp     MapInteractionSystem_Branch_B32A; B3B4 4C 2A B3                 L*.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B3B7:
        ldx     #$02                            ; B3B7 A2 02                    ..
MapInteractionSystem_Branch_B3B9:
        lda     $B3D8,x                         ; B3B9 BD D8 B3                 ...
        brk                                     ; B3BC 00                       .
        db   $66,$73                         ; B3BD 66 73                    fs
; ----------------------------------------------------------------------------
        bcs     MapInteractionSystem_Branch_B3C6; B3BF B0 05                    ..
        dex                                     ; B3C1 CA                       .
        bpl     MapInteractionSystem_Branch_B3B9; B3C2 10 F5                    ..
        clc                                     ; B3C4 18                       .
        rts                                     ; B3C5 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B3C6:
        sec                                     ; B3C6 38                       8
        rts                                     ; B3C7 60                       `
; ----------------------------------------------------------------------------
        db   $14,$18,$1C,$20,$15,$19,$1D,$21 ; B3C8 14 18 1C 20 15 19 1D 21  ... ...!
        db   $16,$1A,$1E,$22,$17,$1B,$1F,$23 ; B3D0 16 1A 1E 22 17 1B 1F 23  ..."...#
        db   $71,$72,$73,$28,$68,$68,$4C,$2A ; B3D8 71 72 73 28 68 68 4C 2A  qrs(hhL*
        db   $B3                             ; B3E0 B3                       .
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B3E1:
        ldx     #$00                            ; B3E1 A2 00                    ..
        beq     MapInteractionSystem_Branch_B3E7; B3E3 F0 02                    ..
MapInteractionSystem_Entry_B3E5:
        ldx     #$40                            ; B3E5 A2 40                    .@
MapInteractionSystem_Branch_B3E7:
        stx     $6279                           ; B3E7 8E 79 62                 .yb
MapInteractionSystem_Entry_B3EA:
        jmp     MapInteractionSystem_Entry_B5A3 ; B3EA 4C A3 B5                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B3ED:
        jsr     MapInteractionSystem_Entry_B731 ; B3ED 20 31 B7                  1.
        jmp     MapInteractionSystem_Entry_B791 ; B3F0 4C 91 B7                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B3F3:
        jsr     MapInteractionSystem_Entry_B3FE ; B3F3 20 FE B3                  ..
        bcs     MapInteractionSystem_Branch_B3FB; B3F6 B0 03                    ..
        jsr     UpperFixedEngine_Entry_C8CC     ; B3F8 20 CC C8                  ..
MapInteractionSystem_Branch_B3FB:
        jmp     UpperFixedEngine_Entry_D1F3     ; B3FB 4C F3 D1                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B3FE:
        brk                                     ; B3FE 00                       .
        db   $07,$6F,$43                     ; B3FF 07 6F 43                 .oC
; ----------------------------------------------------------------------------
        lda     #$00                            ; B402 A9 00                    ..
        sta     $6278                           ; B404 8D 78 62                 .xb
        sta     $6279                           ; B407 8D 79 62                 .yb
        jsr     MapInteractionSystem_Entry_B71E ; B40A 20 1E B7                  ..
        sta     $F9                             ; B40D 85 F9                    ..
        lda     $7140                           ; B40F AD 40 71                 .@q
        and     #$1F                            ; B412 29 1F                    ).
        tax                                     ; B414 AA                       .
        lda     $6F40,x                         ; B415 BD 40 6F                 .@o
        cmp     #$04                            ; B418 C9 04                    ..
        beq     MapInteractionSystem_Branch_B447; B41A F0 2B                    .+
        cmp     #$33                            ; B41C C9 33                    .3
        beq     MapInteractionSystem_Branch_B423; B41E F0 03                    ..
        jmp     MapInteractionSystem_Branch_B4DB; B420 4C DB B4                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B423:
        brk                                     ; B423 00                       .
        db   $A7,$2B                         ; B424 A7 2B                    .+
; ----------------------------------------------------------------------------
        lda     #$57                            ; B426 A9 57                    .W
        sta     $51                             ; B428 85 51                    .Q
        brk                                     ; B42A 00                       .
        db   $3A,$0F                         ; B42B 3A 0F                    :.
; ----------------------------------------------------------------------------
        bcs     MapInteractionSystem_Branch_B43B; B42D B0 0C                    ..
        jsr     MapInteractionSystem_Entry_BC20 ; B42F 20 20 BC                   .
        bcs     MapInteractionSystem_Branch_B43B; B432 B0 07                    ..
        lda     #$57                            ; B434 A9 57                    .W
        jsr     MapInteractionSystem_Entry_B5A3 ; B436 20 A3 B5                  ..
        clc                                     ; B439 18                       .
        rts                                     ; B43A 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B43B:
        lda     #$57                            ; B43B A9 57                    .W
        sta     $F9                             ; B43D 85 F9                    ..
        brk                                     ; B43F 00                       .
        db   $98,$2B                         ; B440 98 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; B442 00                       .
        db   $C6,$4B                         ; B443 C6 4B                    .K
; ----------------------------------------------------------------------------
        clc                                     ; B445 18                       .
        rts                                     ; B446 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B447:
        jsr     MapInteractionSystem_Entry_B72E ; B447 20 2E B7                  ..
        jsr     MapInteractionSystem_Entry_B791 ; B44A 20 91 B7                  ..
        bcs     MapInteractionSystem_Branch_B4B6; B44D B0 67                    .g
        jsr     MapInteractionSystem_Entry_B7CA ; B44F 20 CA B7                  ..
        brk                                     ; B452 00                       .
        db   $C9,$1B                         ; B453 C9 1B                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_B79C ; B455 20 9C B7                  ..
        jsr     MapInteractionSystem_Entry_B7B2 ; B458 20 B2 B7                  ..
        bmi     MapInteractionSystem_Branch_B462; B45B 30 05                    0.
        jsr     MapInteractionSystem_Entry_B3EA ; B45D 20 EA B3                  ..
        clc                                     ; B460 18                       .
        rts                                     ; B461 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B462:
        ldx     #$00                            ; B462 A2 00                    ..
MapInteractionSystem_Branch_B464:
        cmp     $BC35,x                         ; B464 DD 35 BC                 .5.
        bne     MapInteractionSystem_Branch_B479; B467 D0 10                    ..
        txa                                     ; B469 8A                       .
        asl     a                               ; B46A 0A                       .
        tax                                     ; B46B AA                       .
        lda     $BC3D,x                         ; B46C BD 3D BC                 .=.
        sta     $00                           ; B46F 85 00                    ..
        lda     $BC3E,x                         ; B471 BD 3E BC                 .>.
        sta     $01                             ; B474 85 01                    ..
        jmp     ($0000)                         ; B476 6C 00 00                 l..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B479:
        inx                                     ; B479 E8                       .
        cpx     $BC34                           ; B47A EC 34 BC                 .4.
        bcc     MapInteractionSystem_Branch_B464; B47D 90 E5                    ..
MapInteractionSystem_Entry_B47F:
        and     #$7F                            ; B47F 29 7F                    ).
        ldx     #$00                            ; B481 A2 00                    ..
        stx     $01                             ; B483 86 01                    ..
        stx     $FF                             ; B485 86 FF                    ..
        stx     $71                             ; B487 86 71                    .q
        asl     a                               ; B489 0A                       .
        asl     a                               ; B48A 0A                       .
        sta     $00                           ; B48B 85 00                    ..
        rol     $01                             ; B48D 26 01                    &.
        ldx     #$00                            ; B48F A2 00                    ..
        lda     #$0A                            ; B491 A9 0A                    ..
        jsr     MultiplyPointerWord             ; B493 20 27 C8                  '.
        lda     $01                             ; B496 A5 01                    ..
        sta     $FE                             ; B498 85 FE                    ..
        sta     $70                             ; B49A 85 70                    .p
        lda     $00                           ; B49C A5 00                    ..
        sta     $FD                             ; B49E 85 FD                    ..
        sta     $6F                             ; B4A0 85 6F                    .o
        brk                                     ; B4A2 00                       .
        db   $4B,$33                         ; B4A3 4B 33                    K3
; ----------------------------------------------------------------------------
        brk                                     ; B4A5 00                       .
        db   $62,$33                         ; B4A6 62 33                    b3
; ----------------------------------------------------------------------------
        cmp     #$01                            ; B4A8 C9 01                    ..
        bne     MapInteractionSystem_Branch_B4B1; B4AA D0 05                    ..
        brk                                     ; B4AC 00                       .
        db   $B9,$3B                         ; B4AD B9 3B                    .;
; ----------------------------------------------------------------------------
        clc                                     ; B4AF 18                       .
        rts                                     ; B4B0 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B4B1:
        brk                                     ; B4B1 00                       .
        db   $BA,$3B                         ; B4B2 BA 3B                    .;
; ----------------------------------------------------------------------------
        clc                                     ; B4B4 18                       .
        rts                                     ; B4B5 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B4B6:
        brk                                     ; B4B6 00                       .
        db   $A7,$2B                         ; B4B7 A7 2B                    .+
; ----------------------------------------------------------------------------
        lda     CurrentMapNumber                ; B4B9 A5 63                    .c
        cmp     #$31                            ; B4BB C9 31                    .1
        bne     MapInteractionSystem_Entry_B4CE ; B4BD D0 0F                    ..
        lda     CurrentSubmapNumber             ; B4BF A5 64                    .d
        cmp     #$03                            ; B4C1 C9 03                    ..
        bne     MapInteractionSystem_Entry_B4CE ; B4C3 D0 09                    ..
        lda     PlayerLocalY                    ; B4C5 A5 45                    .E
        cmp     #$10                            ; B4C7 C9 10                    ..
        bne     MapInteractionSystem_Entry_B4CE ; B4C9 D0 03                    ..
        jmp     MapInteractionSystem_Branch_BA04; B4CB 4C 04 BA                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B4CE:
        brk                                     ; B4CE 00                       .
        db   $97,$2B                         ; B4CF 97 2B                    .+
; ----------------------------------------------------------------------------
        clc                                     ; B4D1 18                       .
        rts                                     ; B4D2 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B4D3:
        brk                                     ; B4D3 00                       .
        db   $A7,$2B                         ; B4D4 A7 2B                    .+
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B4D6:
        brk                                     ; B4D6 00                       .
        db   $A6,$2B                         ; B4D7 A6 2B                    .+
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B4D9:
        clc                                     ; B4D9 18                       .
        rts                                     ; B4DA 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B4DB:
        lda     $41                             ; B4DB A5 41                    .A
        bpl     MapInteractionSystem_Branch_B519; B4DD 10 3A                    .:
        ldx     #$FB                            ; B4DF A2 FB                    ..
MapInteractionSystem_Branch_B4E1:
        inx                                     ; B4E1 E8                       .
        inx                                     ; B4E2 E8                       .
        inx                                     ; B4E3 E8                       .
        inx                                     ; B4E4 E8                       .
        inx                                     ; B4E5 E8                       .
        lda     $BF59,x                         ; B4E6 BD 59 BF                 .Y.
        cmp     #$FF                            ; B4E9 C9 FF                    ..
        bne     MapInteractionSystem_Branch_B4F4; B4EB D0 07                    ..
        jsr     MapInteractionSystem_Entry_BB0D ; B4ED 20 0D BB                  ..
        bcc     MapInteractionSystem_Branch_B4D3; B4F0 90 E1                    ..
        bcs     MapInteractionSystem_Branch_B4D9; B4F2 B0 E5                    ..
MapInteractionSystem_Branch_B4F4:
        cmp     CurrentMapNumber                ; B4F4 C5 63                    .c
        bne     MapInteractionSystem_Branch_B4E1; B4F6 D0 E9                    ..
        lda     $BF5A,x                         ; B4F8 BD 5A BF                 .Z.
        cmp     CurrentSubmapNumber             ; B4FB C5 64                    .d
        bne     MapInteractionSystem_Branch_B4E1; B4FD D0 E2                    ..
        lsr     a                               ; B4FF 4A                       J
        lsr     a                               ; B500 4A                       J
        lsr     a                               ; B501 4A                       J
        lsr     a                               ; B502 4A                       J
        lsr     a                               ; B503 4A                       J
        tay                                     ; B504 A8                       .
        lda     $BF5B,x                         ; B505 BD 5B BF                 .[.
        cmp     PlayerLocalX                    ; B508 C5 44                    .D
        bne     MapInteractionSystem_Branch_B4E1; B50A D0 D5                    ..
        lda     $BF5C,x                         ; B50C BD 5C BF                 .\.
        cmp     PlayerLocalY                    ; B50F C5 45                    .E
        bne     MapInteractionSystem_Branch_B4E1; B511 D0 CE                    ..
        lda     $BF5D,x                         ; B513 BD 5D BF                 .].
        jmp     MapInteractionSystem_Branch_B52F; B516 4C 2F B5                 L/.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B519:
        jsr     MapInteractionSystem_Entry_BB07 ; B519 20 07 BB                  ..
        bcs     MapInteractionSystem_Branch_B4D9; B51C B0 BB                    ..
        lda     $0515                           ; B51E AD 15 05                 ...
        bne     MapInteractionSystem_Branch_B529; B521 D0 06                    ..
        brk                                     ; B523 00                       .
        db   $A7,$2B                         ; B524 A7 2B                    .+
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_B4D6; B526 4C D6 B4                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B529:
        brk                                     ; B529 00                       .
        db   $A8,$2B                         ; B52A A8 2B                    .+
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_B4D6; B52C 4C D6 B4                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B52F:
        bpl     MapInteractionSystem_Entry_B59E ; B52F 10 6D                    .m
        cmp     #$A0                            ; B531 C9 A0                    ..
        bcc     MapInteractionSystem_Branch_B539; B533 90 04                    ..
        cmp     #$AB                            ; B535 C9 AB                    ..
        bcc     MapInteractionSystem_Branch_B559; B537 90 20                    .
MapInteractionSystem_Branch_B539:
        ldx     #$00                            ; B539 A2 00                    ..
MapInteractionSystem_Branch_B53B:
        cmp     $BC56,x                         ; B53B DD 56 BC                 .V.
        bne     MapInteractionSystem_Branch_B550; B53E D0 10                    ..
        txa                                     ; B540 8A                       .
        asl     a                               ; B541 0A                       .
        tax                                     ; B542 AA                       .
        lda     $BC62,x                         ; B543 BD 62 BC                 .b.
        sta     $00                           ; B546 85 00                    ..
        lda     $BC63,x                         ; B548 BD 63 BC                 .c.
        sta     $01                             ; B54B 85 01                    ..
        jmp     ($0000)                         ; B54D 6C 00 00                 l..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B550:
        inx                                     ; B550 E8                       .
        cpx     $BC55                           ; B551 EC 55 BC                 .U.
        bcc     MapInteractionSystem_Branch_B53B; B554 90 E5                    ..
        jmp     MapInteractionSystem_Branch_B4D3; B556 4C D3 B4                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B559:
        sta     $0E                             ; B559 85 0E                    ..
        tay                                     ; B55B A8                       .
        and     #$0F                            ; B55C 29 0F                    ).
        lsr     a                               ; B55E 4A                       J
        lsr     a                               ; B55F 4A                       J
        lsr     a                               ; B560 4A                       J
        tax                                     ; B561 AA                       .
        tya                                     ; B562 98                       .
        and     #$07                            ; B563 29 07                    ).
        tay                                     ; B565 A8                       .
        lda     $BDAB,y                         ; B566 B9 AB BD                 ...
        and     $6272,x                         ; B569 3D 72 62                 =rb
        beq     MapInteractionSystem_Branch_B571; B56C F0 03                    ..
        jmp     MapInteractionSystem_Branch_B4D3; B56E 4C D3 B4                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B571:
        tya                                     ; B571 98                       .
        pha                                     ; B572 48                       H
        txa                                     ; B573 8A                       .
        pha                                     ; B574 48                       H
        lda     $0E                             ; B575 A5 0E                    ..
        pha                                     ; B577 48                       H
        brk                                     ; B578 00                       .
        db   $A7,$2B                         ; B579 A7 2B                    .+
; ----------------------------------------------------------------------------
        pla                                     ; B57B 68                       h
        and     #$0F                            ; B57C 29 0F                    ).
        tay                                     ; B57E A8                       .
        lda     $BDB3,y                         ; B57F B9 B3 BD                 ...
        bpl     MapInteractionSystem_Branch_B58A; B582 10 06                    ..
        jsr     MapInteractionSystem_Entry_B47F ; B584 20 7F B4                  ..
        clc                                     ; B587 18                       .
        bcc     MapInteractionSystem_Branch_B58D; B588 90 03                    ..
MapInteractionSystem_Branch_B58A:
        jsr     MapInteractionSystem_Entry_B5A3 ; B58A 20 A3 B5                  ..
MapInteractionSystem_Branch_B58D:
        pla                                     ; B58D 68                       h
        tax                                     ; B58E AA                       .
        pla                                     ; B58F 68                       h
        tay                                     ; B590 A8                       .
        bcs     MapInteractionSystem_Branch_B59C; B591 B0 09                    ..
        lda     $BDAB,y                         ; B593 B9 AB BD                 ...
        ora     $6272,x                         ; B596 1D 72 62                 .rb
        sta     $6272,x                         ; B599 9D 72 62                 .rb
MapInteractionSystem_Branch_B59C:
        clc                                     ; B59C 18                       .
        rts                                     ; B59D 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B59E:
        pha                                     ; B59E 48                       H
        brk                                     ; B59F 00                       .
        db   $A7,$2B                         ; B5A0 A7 2B                    .+
; ----------------------------------------------------------------------------
        pla                                     ; B5A2 68                       h
MapInteractionSystem_Entry_B5A3:
        and     #$7F                            ; B5A3 29 7F                    ).
        sta     $627A                           ; B5A5 8D 7A 62                 .zb
        sta     $F9                             ; B5A8 85 F9                    ..
        bit     $6279                           ; B5AA 2C 79 62                 ,yb
        bvs     MapInteractionSystem_Branch_B5B2; B5AD 70 03                    p.
        brk                                     ; B5AF 00                       .
        db   $98,$2B                         ; B5B0 98 2B                    .+
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B5B2:
        brk                                     ; B5B2 00                       .
        db   $65,$23,$09                     ; B5B3 65 23 09                 e#.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B5B6:
        lda     $72                             ; B5B6 A5 72                    .r
        bcs     MapInteractionSystem_Branch_B5C2; B5B8 B0 08                    ..
        brk                                     ; B5BA 00                       .
        db   $65,$23,$08                     ; B5BB 65 23 08                 e#.
; ----------------------------------------------------------------------------
        lda     $72                             ; B5BE A5 72                    .r
        bcc     MapInteractionSystem_Branch_B608; B5C0 90 46                    .F
MapInteractionSystem_Branch_B5C2:
        sta     $6E                             ; B5C2 85 6E                    .n
        brk                                     ; B5C4 00                       .
        db   $2E,$0F                         ; B5C5 2E 0F                    ..
; ----------------------------------------------------------------------------
        lda     $72                             ; B5C7 A5 72                    .r
        sta     $6E                             ; B5C9 85 6E                    .n
        sta     $F9                             ; B5CB 85 F9                    ..
        tax                                     ; B5CD AA                       .
        lda     $627A                           ; B5CE AD 7A 62                 .zb
        sta     $FA                             ; B5D1 85 FA                    ..
        brk                                     ; B5D3 00                       .
        db   $2E,$73                         ; B5D4 2E 73                    .s
; ----------------------------------------------------------------------------
        lda     #$07                            ; B5D6 A9 07                    ..
        brk                                     ; B5D8 00                       .
        db   $46,$73                         ; B5D9 46 73                    Fs
; ----------------------------------------------------------------------------
        bcc     MapInteractionSystem_Branch_B5F3; B5DB 90 16                    ..
        lda     #$06                            ; B5DD A9 06                    ..
        brk                                     ; B5DF 00                       .
        db   $46,$73                         ; B5E0 46 73                    Fs
; ----------------------------------------------------------------------------
        bcs     MapInteractionSystem_Branch_B5E8; B5E2 B0 04                    ..
        lda     #$A0                            ; B5E4 A9 A0                    ..
        bne     MapInteractionSystem_Branch_B5FE; B5E6 D0 16                    ..
MapInteractionSystem_Branch_B5E8:
        stx     $FB                             ; B5E8 86 FB                    ..
        jsr     MapInteractionSystem_Entry_B71E ; B5EA 20 1E B7                  ..
        sta     $F9                             ; B5ED 85 F9                    ..
        lda     #$B3                            ; B5EF A9 B3                    ..
        bne     MapInteractionSystem_Branch_B5FE; B5F1 D0 0B                    ..
MapInteractionSystem_Branch_B5F3:
        stx     $FB                             ; B5F3 86 FB                    ..
        jsr     MapInteractionSystem_Entry_B71E ; B5F5 20 1E B7                  ..
        sta     $F9                             ; B5F8 85 F9                    ..
        lda     #$B4                            ; B5FA A9 B4                    ..
        bne     MapInteractionSystem_Branch_B5FE; B5FC D0 00                    ..
MapInteractionSystem_Branch_B5FE:
        ldx     #$02                            ; B5FE A2 02                    ..
        brk                                     ; B600 00                       .
        db   $04,$6F                         ; B601 04 6F                    .o
; ----------------------------------------------------------------------------
        brk                                     ; B603 00                       .
        db   $02,$B7                         ; B604 02 B7                    ..
; ----------------------------------------------------------------------------
        clc                                     ; B606 18                       .
        rts                                     ; B607 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B608:
        brk                                     ; B608 00                       .
        db   $62,$33                         ; B609 62 33                    b3
; ----------------------------------------------------------------------------
        cmp     #$01                            ; B60B C9 01                    ..
        bne     MapInteractionSystem_Branch_B619; B60D D0 0A                    ..
        lda     #$00                            ; B60F A9 00                    ..
        sta     $F9                             ; B611 85 F9                    ..
        brk                                     ; B613 00                       .
        db   $9B,$2B                         ; B614 9B 2B                    .+
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_B621; B616 4C 21 B6                 L!.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B619:
        jsr     MapInteractionSystem_Entry_B71E ; B619 20 1E B7                  ..
        sta     $F9                             ; B61C 85 F9                    ..
        brk                                     ; B61E 00                       .
        db   $9C,$2B                         ; B61F 9C 2B                    .+
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B621:
        brk                                     ; B621 00                       .
        db   $9D,$2B                         ; B622 9D 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; B624 00                       .
        db   $07,$6F,$48                     ; B625 07 6F 48                 .oH
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_B677; B628 D0 4D                    .M
MapInteractionSystem_Branch_B62A:
        brk                                     ; B62A 00                       .
        db   $62,$23,$08                     ; B62B 62 23 08                 b#.
; ----------------------------------------------------------------------------
        cmp     #$01                            ; B62E C9 01                    ..
        beq     MapInteractionSystem_Branch_B653; B630 F0 21                    .!
MapInteractionSystem_Branch_B632:
        brk                                     ; B632 00                       .
        db   $9E,$2B                         ; B633 9E 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; B635 00                       .
        db   $07,$6F,$4F                     ; B636 07 6F 4F                 .oO
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; B639 C9 FF                    ..
        beq     MapInteractionSystem_Branch_B677; B63B F0 3A                    .:
        sta     $6E                             ; B63D 85 6E                    .n
        brk                                     ; B63F 00                       .
        db   $2B,$33                         ; B640 2B 33                    +3
; ----------------------------------------------------------------------------
        cmp     #$08                            ; B642 C9 08                    ..
        bcc     MapInteractionSystem_Branch_B662; B644 90 1C                    ..
        lda     $6E                             ; B646 A5 6E                    .n
        sta     $F9                             ; B648 85 F9                    ..
        brk                                     ; B64A 00                       .
        db   $AA,$2B                         ; B64B AA 2B                    .+
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_B632; B64D 4C 32 B6                 L2.
; ----------------------------------------------------------------------------
        db   $00,$D2,$2B                     ; B650 00 D2 2B                 ..+
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B653:
        lda     #$00                            ; B653 A9 00                    ..
        sta     $6E                             ; B655 85 6E                    .n
        lda     #$08                            ; B657 A9 08                    ..
        brk                                     ; B659 00                       .
        db   $2D,$0F                         ; B65A 2D 0F                    -.
; ----------------------------------------------------------------------------
        lda     $72                             ; B65C A5 72                    .r
        sta     $6E                             ; B65E 85 6E                    .n
        sta     $F8                             ; B660 85 F8                    ..
MapInteractionSystem_Branch_B662:
        brk                                     ; B662 00                       .
        db   $9F,$2B                         ; B663 9F 2B                    .+
; ----------------------------------------------------------------------------
        ldx     $6E                             ; B665 A6 6E                    .n
        brk                                     ; B667 00                       .
        db   $01,$6F,$4A                     ; B668 01 6F 4A                 .oJ
; ----------------------------------------------------------------------------
        cmp     #$FF                            ; B66B C9 FF                    ..
        bne     MapInteractionSystem_Branch_B6A1; B66D D0 32                    .2
        brk                                     ; B66F 00                       .
        db   $62,$23,$08                     ; B670 62 23 08                 b#.
; ----------------------------------------------------------------------------
        cmp     #$01                            ; B673 C9 01                    ..
        bne     MapInteractionSystem_Branch_B62A; B675 D0 B3                    ..
MapInteractionSystem_Branch_B677:
        bit     $6279                           ; B677 2C 79 62                 ,yb
        bpl     MapInteractionSystem_Branch_B682; B67A 10 06                    ..
        jsr     MapInteractionSystem_Entry_B7D6 ; B67C 20 D6 B7                  ..
        jsr     MapInteractionSystem_Entry_B7A6 ; B67F 20 A6 B7                  ..
MapInteractionSystem_Branch_B682:
        lda     $627A                           ; B682 AD 7A 62                 .zb
        sta     $FA                             ; B685 85 FA                    ..
        brk                                     ; B687 00                       .
        db   $62,$33                         ; B688 62 33                    b3
; ----------------------------------------------------------------------------
        cmp     #$01                            ; B68A C9 01                    ..
        bne     MapInteractionSystem_Branch_B697; B68C D0 09                    ..
        lda     #$00                            ; B68E A9 00                    ..
        sta     $F9                             ; B690 85 F9                    ..
        brk                                     ; B692 00                       .
        db   $A1,$2B                         ; B693 A1 2B                    .+
; ----------------------------------------------------------------------------
        sec                                     ; B695 38                       8
        rts                                     ; B696 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B697:
        jsr     MapInteractionSystem_Entry_B71E ; B697 20 1E B7                  ..
        sta     $F9                             ; B69A 85 F9                    ..
        brk                                     ; B69C 00                       .
        db   $A2,$2B                         ; B69D A2 2B                    .+
; ----------------------------------------------------------------------------
        sec                                     ; B69F 38                       8
        rts                                     ; B6A0 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B6A1:
        sta     $6F                             ; B6A1 85 6F                    .o
        brk                                     ; B6A3 00                       .
        db   $2C,$33                         ; B6A4 2C 33                    ,3
; ----------------------------------------------------------------------------
        brk                                     ; B6A6 00                       .
        db   $0E,$0F                         ; B6A7 0E 0F                    ..
; ----------------------------------------------------------------------------
        bcc     MapInteractionSystem_Branch_B6B1; B6A9 90 06                    ..
        brk                                     ; B6AB 00                       .
        db   $D2,$2B                         ; B6AC D2 2B                    .+
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_B662; B6AE 4C 62 B6                 Lb.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B6B1:
        brk                                     ; B6B1 00                       .
        db   $0C,$0F                         ; B6B2 0C 0F                    ..
; ----------------------------------------------------------------------------
        bcc     MapInteractionSystem_Branch_B6C9; B6B4 90 13                    ..
        lda     $73                             ; B6B6 A5 73                    .s
        bpl     MapInteractionSystem_Branch_B6C9; B6B8 10 0F                    ..
        brk                                     ; B6BA 00                       .
        db   $12,$FB                         ; B6BB 12 FB                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B6BD 00                       .
        db   $DC,$2B                         ; B6BE DC 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; B6C0 00                       .
        db   $07,$9F                         ; B6C1 07 9F                    ..
; ----------------------------------------------------------------------------
        brk                                     ; B6C3 00                       .
        db   $09,$9F                         ; B6C4 09 9F                    ..
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_B662; B6C6 4C 62 B6                 Lb.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B6C9:
        sta     $FA                             ; B6C9 85 FA                    ..
        sta     $FB                             ; B6CB 85 FB                    ..
        brk                                     ; B6CD 00                       .
        db   $30,$33                         ; B6CE 30 33                    03
; ----------------------------------------------------------------------------
        lda     $627A                           ; B6D0 AD 7A 62                 .zb
        sta     $6F                             ; B6D3 85 6F                    .o
        brk                                     ; B6D5 00                       .
        db   $2E,$33                         ; B6D6 2E 33                    .3
; ----------------------------------------------------------------------------
        lda     #$07                            ; B6D8 A9 07                    ..
        sta     $6F                             ; B6DA 85 6F                    .o
        brk                                     ; B6DC 00                       .
        db   $46,$33                         ; B6DD 46 33                    F3
; ----------------------------------------------------------------------------
        bcs     MapInteractionSystem_Branch_B6F4; B6DF B0 13                    ..
        lda     $6E                             ; B6E1 A5 6E                    .n
        sta     $FA                             ; B6E3 85 FA                    ..
        jsr     MapInteractionSystem_Entry_B71E ; B6E5 20 1E B7                  ..
        sta     $F9                             ; B6E8 85 F9                    ..
        lda     $627A                           ; B6EA AD 7A 62                 .zb
        sta     $FC                             ; B6ED 85 FC                    ..
        lda     #$A4                            ; B6EF A9 A4                    ..
        jmp     MapInteractionSystem_Branch_B5FE; B6F1 4C FE B5                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B6F4:
        lda     #$06                            ; B6F4 A9 06                    ..
        sta     $6F                             ; B6F6 85 6F                    .o
        brk                                     ; B6F8 00                       .
        db   $46,$33                         ; B6F9 46 33                    F3
; ----------------------------------------------------------------------------
        bcc     MapInteractionSystem_Branch_B710; B6FB 90 13                    ..
        lda     $6E                             ; B6FD A5 6E                    .n
        sta     $FA                             ; B6FF 85 FA                    ..
        jsr     MapInteractionSystem_Entry_B71E ; B701 20 1E B7                  ..
        sta     $F9                             ; B704 85 F9                    ..
        lda     $627A                           ; B706 AD 7A 62                 .zb
        sta     $FC                             ; B709 85 FC                    ..
        lda     #$A5                            ; B70B A9 A5                    ..
        jmp     MapInteractionSystem_Branch_B5FE; B70D 4C FE B5                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B710:
        lda     $6E                             ; B710 A5 6E                    .n
        sta     $F9                             ; B712 85 F9                    ..
        lda     $627A                           ; B714 AD 7A 62                 .zb
        sta     $FB                             ; B717 85 FB                    ..
        lda     #$A3                            ; B719 A9 A3                    ..
        jmp     MapInteractionSystem_Branch_B5FE; B71B 4C FE B5                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B71E:
        lda     #$03                            ; B71E A9 03                    ..
        bne     MapInteractionSystem_Branch_B724; B720 D0 02                    ..
MapInteractionSystem_Entry_B722:
        lda     #$01                            ; B722 A9 01                    ..
MapInteractionSystem_Branch_B724:
        ldx     #$00                            ; B724 A2 00                    ..
        stx     $6E                             ; B726 86 6E                    .n
        brk                                     ; B728 00                       .
        db   $2D,$0F                         ; B729 2D 0F                    -.
; ----------------------------------------------------------------------------
        lda     $72                             ; B72B A5 72                    .r
        rts                                     ; B72D 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B72E:
        brk                                     ; B72E 00                       .
        db   $13,$87                         ; B72F 13 87                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B731:
        sta     $01                             ; B731 85 01                    ..
        lda     #$00                            ; B733 A9 00                    ..
        sta     $02                             ; B735 85 02                    ..
        lda     $BDBE                           ; B737 AD BE BD                 ...
        sta     $03                             ; B73A 85 03                    ..
        lda     $BDBF                           ; B73C AD BF BD                 ...
        sta     $04                             ; B73F 85 04                    ..
MapInteractionSystem_Branch_B741:
        ldy     #$00                            ; B741 A0 00                    ..
        lda     ($03),y                         ; B743 B1 03                    ..
        iny                                     ; B745 C8                       .
        cmp     CurrentMapNumber                ; B746 C5 63                    .c
        bcc     MapInteractionSystem_Branch_B75F; B748 90 15                    ..
        bne     MapInteractionSystem_Branch_B752; B74A D0 06                    ..
        lda     ($03),y                         ; B74C B1 03                    ..
        cmp     CurrentSubmapNumber             ; B74E C5 64                    .d
        bcc     MapInteractionSystem_Branch_B75F; B750 90 0D                    ..
MapInteractionSystem_Branch_B752:
        lda     $01                             ; B752 A5 01                    ..
        sta     $6278                           ; B754 8D 78 62                 .xb
        lda     $02                             ; B757 A5 02                    ..
        ora     #$80                            ; B759 09 80                    ..
        sta     $6279                           ; B75B 8D 79 62                 .yb
        rts                                     ; B75E 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B75F:
        iny                                     ; B75F C8                       .
        clc                                     ; B760 18                       .
        lda     ($03),y                         ; B761 B1 03                    ..
        adc     $01                             ; B763 65 01                    e.
        sta     $01                             ; B765 85 01                    ..
        bcc     MapInteractionSystem_Branch_B76B; B767 90 02                    ..
        inc     $02                             ; B769 E6 02                    ..
MapInteractionSystem_Branch_B76B:
        clc                                     ; B76B 18                       .
        lda     $03                             ; B76C A5 03                    ..
        adc     #$03                            ; B76E 69 03                    i.
        sta     $03                             ; B770 85 03                    ..
        bcc     MapInteractionSystem_Branch_B776; B772 90 02                    ..
        inc     $04                             ; B774 E6 04                    ..
MapInteractionSystem_Branch_B776:
        jmp     MapInteractionSystem_Branch_B741; B776 4C 41 B7                 LA.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B779:
        lda     $6279                           ; B779 AD 79 62                 .yb
        lsr     a                               ; B77C 4A                       J
        lda     $6278                           ; B77D AD 78 62                 .xb
        tay                                     ; B780 A8                       .
        ror     a                               ; B781 6A                       j
        lsr     a                               ; B782 4A                       J
        lsr     a                               ; B783 4A                       J
        tax                                     ; B784 AA                       .
        tya                                     ; B785 98                       .
        and     #$07                            ; B786 29 07                    ).
        tay                                     ; B788 A8                       .
        lda     #$00                            ; B789 A9 00                    ..
        sec                                     ; B78B 38                       8
MapInteractionSystem_Branch_B78C:
        ror     a                               ; B78C 6A                       j
        dey                                     ; B78D 88                       .
        bpl     MapInteractionSystem_Branch_B78C; B78E 10 FC                    ..
        rts                                     ; B790 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B791:
        jsr     MapInteractionSystem_Entry_B779 ; B791 20 79 B7                  y.
        clc                                     ; B794 18                       .
        and     SaveStoryFlags,x                ; B795 3D 5D 62                 =]b
        beq     MapInteractionSystem_Branch_B79B; B798 F0 01                    ..
        sec                                     ; B79A 38                       8
MapInteractionSystem_Branch_B79B:
        rts                                     ; B79B 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B79C:
        jsr     MapInteractionSystem_Entry_B779 ; B79C 20 79 B7                  y.
        ora     SaveStoryFlags,x                ; B79F 1D 5D 62                 .]b
        sta     SaveStoryFlags,x                ; B7A2 9D 5D 62                 .]b
        rts                                     ; B7A5 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B7A6:
        jsr     MapInteractionSystem_Entry_B779 ; B7A6 20 79 B7                  y.
        eor     #$FF                            ; B7A9 49 FF                    I.
        and     SaveStoryFlags,x                ; B7AB 3D 5D 62                 =]b
        sta     SaveStoryFlags,x                ; B7AE 9D 5D 62                 .]b
        rts                                     ; B7B1 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B7B2:
        lda     $BDC0                           ; B7B2 AD C0 BD                 ...
        sta     $03                             ; B7B5 85 03                    ..
        lda     $BDC1                           ; B7B7 AD C1 BD                 ...
        sta     $04                             ; B7BA 85 04                    ..
        lda     $6279                           ; B7BC AD 79 62                 .yb
        lsr     a                               ; B7BF 4A                       J
        bcc     MapInteractionSystem_Branch_B7C4; B7C0 90 02                    ..
        inc     $04                             ; B7C2 E6 04                    ..
MapInteractionSystem_Branch_B7C4:
        ldy     $6278                           ; B7C4 AC 78 62                 .xb
        lda     ($03),y                         ; B7C7 B1 03                    ..
        rts                                     ; B7C9 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B7CA:
        lda     $0572                           ; B7CA AD 72 05                 .r.
        jsr     MapInteractionSystem_Entry_B7F2 ; B7CD 20 F2 B7                  ..
        brk                                     ; B7D0 00                       .
        db   $8F,$FB                         ; B7D1 8F FB                    ..
; ----------------------------------------------------------------------------
        jmp     WaitForNmi                      ; B7D3 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B7D6:
        ldx     #$00                            ; B7D6 A2 00                    ..
MapInteractionSystem_Branch_B7D8:
        lda     $6F40,x                         ; B7D8 BD 40 6F                 .@o
        and     #$1F                            ; B7DB 29 1F                    ).
        cmp     #$04                            ; B7DD C9 04                    ..
        bne     MapInteractionSystem_Branch_B7E6; B7DF D0 05                    ..
        cpx     $0572                           ; B7E1 EC 72 05                 .r.
        bne     MapInteractionSystem_Branch_B7EB; B7E4 D0 05                    ..
MapInteractionSystem_Branch_B7E6:
        inx                                     ; B7E6 E8                       .
        cpx     #$20                            ; B7E7 E0 20                    .
        bcc     MapInteractionSystem_Branch_B7D8; B7E9 90 ED                    ..
MapInteractionSystem_Branch_B7EB:
        txa                                     ; B7EB 8A                       .
        jsr     MapInteractionSystem_Entry_B7F2 ; B7EC 20 F2 B7                  ..
        jmp     WaitForNmi                      ; B7EF 4C 74 FF                 Lt.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B7F2:
        ldx     PlayerLocalX                    ; B7F2 A6 44                    .D
        ldy     PlayerLocalY                    ; B7F4 A4 45                    .E
MapInteractionSystem_Entry_B7F6:
        sta     $00                           ; B7F6 85 00                    ..
        lda     $7140                           ; B7F8 AD 40 71                 .@q
        and     #$E0                            ; B7FB 29 E0                    ).
        ora     $00                           ; B7FD 05 00                    ..
        sta     $7140                           ; B7FF 8D 40 71                 .@q
        and     #$1F                            ; B802 29 1F                    ).
        jmp     MapInteractionSystem_Entry_9E8C ; B804 4C 8C 9E                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B807:
        lda     #$52                            ; B807 A9 52                    .R
        jsr     MapInteractionSystem_Entry_B3EA ; B809 20 EA B3                  ..
        jsr     MapInteractionSystem_Entry_B791 ; B80C 20 91 B7                  ..
        bcc     MapInteractionSystem_Branch_B819; B80F 90 08                    ..
        lda     #$01                            ; B811 A9 01                    ..
        jsr     MapInteractionSystem_Entry_B731 ; B813 20 31 B7                  1.
        jsr     MapInteractionSystem_Entry_B79C ; B816 20 9C B7                  ..
MapInteractionSystem_Branch_B819:
        clc                                     ; B819 18                       .
        rts                                     ; B81A 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B81B:
        lda     #$6B                            ; B81B A9 6B                    .k
        jsr     MapInteractionSystem_Entry_B3EA ; B81D 20 EA B3                  ..
        jsr     MapInteractionSystem_Entry_B791 ; B820 20 91 B7                  ..
        bcc     MapInteractionSystem_Branch_B82E; B823 90 09                    ..
        brk                                     ; B825 00                       .
        db   $02,$CB,$08                     ; B826 02 CB 08                 ...
; ----------------------------------------------------------------------------
        lda     #$19                            ; B829 A9 19                    ..
        jsr     MapInteractionSystem_Entry_B7F2 ; B82B 20 F2 B7                  ..
MapInteractionSystem_Branch_B82E:
        clc                                     ; B82E 18                       .
        rts                                     ; B82F 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B830:
        brk                                     ; B830 00                       .
        db   $A7,$2B                         ; B831 A7 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; B833 00                       .
        db   $96,$2B                         ; B834 96 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; B836 00                       .
        db   $07,$6F,$48                     ; B837 07 6F 48                 .oH
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_B87A; B83A D0 3E                    .>
        brk                                     ; B83C 00                       .
        db   $02,$DB,$F7                     ; B83D 02 DB F7                 ...
; ----------------------------------------------------------------------------
        lda     #$03                            ; B840 A9 03                    ..
        jsr     MapInteractionSystem_Entry_B7F2 ; B842 20 F2 B7                  ..
        jsr     WaitForNmi                      ; B845 20 74 FF                  t.
        lda     #$00                            ; B848 A9 00                    ..
        jsr     MapInteractionSystem_Entry_B731 ; B84A 20 31 B7                  1.
        jsr     MapInteractionSystem_Entry_B7A6 ; B84D 20 A6 B7                  ..
        lda     #$6B                            ; B850 A9 6B                    .k
        sta     $6F                             ; B852 85 6F                    .o
        brk                                     ; B854 00                       .
        db   $66,$33                         ; B855 66 33                    f3
; ----------------------------------------------------------------------------
        bcc     MapInteractionSystem_Branch_B87A; B857 90 21                    .!
        sta     $6E                             ; B859 85 6E                    .n
        brk                                     ; B85B 00                       .
        db   $31,$33                         ; B85C 31 33                    13
; ----------------------------------------------------------------------------
        sta     $6F                             ; B85E 85 6F                    .o
        brk                                     ; B860 00                       .
        db   $30,$33                         ; B861 30 33                    03
; ----------------------------------------------------------------------------
        brk                                     ; B863 00                       .
        db   $7B,$3B                         ; B864 7B 3B                    {;
; ----------------------------------------------------------------------------
        clc                                     ; B866 18                       .
        rts                                     ; B867 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B868:
        brk                                     ; B868 00                       .
        db   $99,$2B                         ; B869 99 2B                    .+
; ----------------------------------------------------------------------------
        lda     #$00                            ; B86B A9 00                    ..
        beq     MapInteractionSystem_Branch_B874; B86D F0 05                    ..
MapInteractionSystem_Entry_B86F:
        brk                                     ; B86F 00                       .
        db   $9A,$2B                         ; B870 9A 2B                    .+
; ----------------------------------------------------------------------------
        lda     #$1B                            ; B872 A9 1B                    ..
MapInteractionSystem_Branch_B874:
        brk                                     ; B874 00                       .
        db   $01,$8F                         ; B875 01 8F                    ..
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_A1C9 ; B877 20 C9 A1                  ..
MapInteractionSystem_Branch_B87A:
        sec                                     ; B87A 38                       8
        rts                                     ; B87B 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B87C:
        lda     $3D                             ; B87C A5 3D                    .=
        bne     MapInteractionSystem_Branch_B8AA; B87E D0 2A                    .*
        brk                                     ; B880 00                       .
        db   $02,$EB,$04                     ; B881 02 EB 04                 ...
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_B8AA; B884 F0 24                    .$
        ldx     #$14                            ; B886 A2 14                    ..
        ldy     #$0B                            ; B888 A0 0B                    ..
        jsr     UpperFixedEngine_Entry_D3E6     ; B88A 20 E6 D3                  ..
        and     #$1F                            ; B88D 29 1F                    ).
        cmp     #$03                            ; B88F C9 03                    ..
        beq     MapInteractionSystem_Branch_B8AA; B891 F0 17                    ..
        brk                                     ; B893 00                       .
        db   $95,$2B                         ; B894 95 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; B896 00                       .
        db   $07,$6F,$48                     ; B897 07 6F 48                 .oH
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_B87A; B89A D0 DE                    ..
        brk                                     ; B89C 00                       .
        db   $7A,$3B                         ; B89D 7A 3B                    z;
; ----------------------------------------------------------------------------
        ldx     #$14                            ; B89F A2 14                    ..
        ldy     #$0B                            ; B8A1 A0 0B                    ..
        lda     #$03                            ; B8A3 A9 03                    ..
        jsr     MapInteractionSystem_Entry_B7F6 ; B8A5 20 F6 B7                  ..
        clc                                     ; B8A8 18                       .
        rts                                     ; B8A9 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B8AA:
        jmp     MapInteractionSystem_Branch_B4D3; B8AA 4C D3 B4                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B8AD:
        lda     $3D                             ; B8AD A5 3D                    .=
        cmp     #$01                            ; B8AF C9 01                    ..
        bne     MapInteractionSystem_Branch_B8AA; B8B1 D0 F7                    ..
        ldx     #$0E                            ; B8B3 A2 0E                    ..
        ldy     #$04                            ; B8B5 A0 04                    ..
        jsr     UpperFixedEngine_Entry_D3E6     ; B8B7 20 E6 D3                  ..
        and     #$1F                            ; B8BA 29 1F                    ).
        cmp     #$03                            ; B8BC C9 03                    ..
        beq     MapInteractionSystem_Branch_B8AA; B8BE F0 EA                    ..
        brk                                     ; B8C0 00                       .
        db   $08,$3B                         ; B8C1 08 3B                    .;
; ----------------------------------------------------------------------------
        brk                                     ; B8C3 00                       .
        db   $07,$6F,$48                     ; B8C4 07 6F 48                 .oH
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_B87A; B8C7 D0 B1                    ..
        jsr     MapInteractionSystem_Entry_BA41 ; B8C9 20 41 BA                  A.
        brk                                     ; B8CC 00                       .
        db   $04,$CB,$02                     ; B8CD 04 CB 02                 ...
; ----------------------------------------------------------------------------
        brk                                     ; B8D0 00                       .
        db   $90,$3B                         ; B8D1 90 3B                    .;
; ----------------------------------------------------------------------------
        clc                                     ; B8D3 18                       .
        rts                                     ; B8D4 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B8D5:
        brk                                     ; B8D5 00                       .
        db   $A7,$2B                         ; B8D6 A7 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; B8D8 00                       .
        db   $2C,$2F                         ; B8D9 2C 2F                    ,/
; ----------------------------------------------------------------------------
        sec                                     ; B8DB 38                       8
        rts                                     ; B8DC 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B8DD:
        brk                                     ; B8DD 00                       .
        db   $0B,$EB,$02                     ; B8DE 0B EB 02                 ...
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_B948; B8E1 F0 65                    .e
        lda     #$75                            ; B8E3 A9 75                    .u
        brk                                     ; B8E5 00                       .
        db   $66,$73                         ; B8E6 66 73                    fs
; ----------------------------------------------------------------------------
        bcs     MapInteractionSystem_Branch_B948; B8E8 B0 5E                    .^
        brk                                     ; B8EA 00                       .
        db   $08,$EB,$02                     ; B8EB 08 EB 02                 ...
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_B948; B8EE D0 58                    .X
        lda     #$75                            ; B8F0 A9 75                    .u
        jsr     MapInteractionSystem_Entry_B59E ; B8F2 20 9E B5                  ..
        clc                                     ; B8F5 18                       .
        rts                                     ; B8F6 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B8F7:
        brk                                     ; B8F7 00                       .
        db   $18,$EB,$01                     ; B8F8 18 EB 01                 ...
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_B945; B8FB D0 48                    .H
        lda     #$7E                            ; B8FD A9 7E                    .~
        jsr     MapInteractionSystem_Entry_B5A3 ; B8FF 20 A3 B5                  ..
        bcs     MapInteractionSystem_Branch_B908; B902 B0 04                    ..
        brk                                     ; B904 00                       .
        db   $18,$CB,$01                     ; B905 18 CB 01                 ...
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B908:
        clc                                     ; B908 18                       .
        rts                                     ; B909 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B90A:
        lda     #$6F                            ; B90A A9 6F                    .o
        jsr     MapInteractionSystem_Entry_B5A3 ; B90C 20 A3 B5                  ..
        bcs     MapInteractionSystem_Branch_B915; B90F B0 04                    ..
        brk                                     ; B911 00                       .
        db   $18,$CB,$80                     ; B912 18 CB 80                 ...
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B915:
        clc                                     ; B915 18                       .
        rts                                     ; B916 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B917:
        lda     $3D                             ; B917 A5 3D                    .=
        bne     MapInteractionSystem_Branch_B948; B919 D0 2D                    .-
        brk                                     ; B91B 00                       .
        db   $9E,$3B                         ; B91C 9E 3B                    .;
; ----------------------------------------------------------------------------
        lda     $6277                           ; B91E AD 77 62                 .wb
        and     #$08                            ; B921 29 08                    ).
        bne     MapInteractionSystem_Branch_B945; B923 D0 20                    .
        lda     #$62                            ; B925 A9 62                    .b
        jsr     MapInteractionSystem_Entry_B5A3 ; B927 20 A3 B5                  ..
        bcs     MapInteractionSystem_Branch_B915; B92A B0 E9                    ..
        lda     #$08                            ; B92C A9 08                    ..
        bne     MapInteractionSystem_Branch_B9A9; B92E D0 79                    .y
MapInteractionSystem_Entry_B930:
        brk                                     ; B930 00                       .
        db   $A7,$2B                         ; B931 A7 2B                    .+
; ----------------------------------------------------------------------------
        lda     $6277                           ; B933 AD 77 62                 .wb
        and     #$10                            ; B936 29 10                    ).
        bne     MapInteractionSystem_Branch_B945; B938 D0 0B                    ..
        lda     #$6A                            ; B93A A9 6A                    .j
        jsr     MapInteractionSystem_Entry_B5A3 ; B93C 20 A3 B5                  ..
        bcs     MapInteractionSystem_Branch_B915; B93F B0 D4                    ..
        lda     #$10                            ; B941 A9 10                    ..
        bne     MapInteractionSystem_Branch_B9A9; B943 D0 64                    .d
MapInteractionSystem_Branch_B945:
        jmp     MapInteractionSystem_Branch_B4D6; B945 4C D6 B4                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B948:
        jmp     MapInteractionSystem_Branch_B4D3; B948 4C D3 B4                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B94B:
        lda     $3D                             ; B94B A5 3D                    .=
        bne     MapInteractionSystem_Branch_B948; B94D D0 F9                    ..
        brk                                     ; B94F 00                       .
        db   $9E,$3B                         ; B950 9E 3B                    .;
; ----------------------------------------------------------------------------
        lda     $6277                           ; B952 AD 77 62                 .wb
        and     #$04                            ; B955 29 04                    ).
        bne     MapInteractionSystem_Branch_B945; B957 D0 EC                    ..
        lda     #$26                            ; B959 A9 26                    .&
        jsr     MapInteractionSystem_Entry_B5A3 ; B95B 20 A3 B5                  ..
        bcs     MapInteractionSystem_Branch_B9AF; B95E B0 4F                    .O
        lda     #$04                            ; B960 A9 04                    ..
        bne     MapInteractionSystem_Branch_B9A3; B962 D0 3F                    .?
MapInteractionSystem_Entry_B964:
        lda     $3D                             ; B964 A5 3D                    .=
        bne     MapInteractionSystem_Branch_B948; B966 D0 E0                    ..
        brk                                     ; B968 00                       .
        db   $9E,$3B                         ; B969 9E 3B                    .;
; ----------------------------------------------------------------------------
        lda     $6277                           ; B96B AD 77 62                 .wb
        and     #$02                            ; B96E 29 02                    ).
MapInteractionSystem_Branch_B970:
        bne     MapInteractionSystem_Branch_B945; B970 D0 D3                    ..
        lda     #$53                            ; B972 A9 53                    .S
        jsr     MapInteractionSystem_Entry_B5A3 ; B974 20 A3 B5                  ..
        bcs     MapInteractionSystem_Branch_B9AF; B977 B0 36                    .6
        lda     #$02                            ; B979 A9 02                    ..
        bne     MapInteractionSystem_Branch_B9A3; B97B D0 26                    .&
MapInteractionSystem_Entry_B97D:
        lda     $3D                             ; B97D A5 3D                    .=
        bne     MapInteractionSystem_Branch_B948; B97F D0 C7                    ..
        brk                                     ; B981 00                       .
        db   $9E,$3B                         ; B982 9E 3B                    .;
; ----------------------------------------------------------------------------
        lda     $6277                           ; B984 AD 77 62                 .wb
        and     #$01                            ; B987 29 01                    ).
        bne     MapInteractionSystem_Branch_B945; B989 D0 BA                    ..
        lda     #$00                            ; B98B A9 00                    ..
        sta     $71                             ; B98D 85 71                    .q
        sta     $70                             ; B98F 85 70                    .p
        sta     $FE                             ; B991 85 FE                    ..
        sta     $FF                             ; B993 85 FF                    ..
        lda     #$32                            ; B995 A9 32                    .2
        sta     $6F                             ; B997 85 6F                    .o
        sta     $FD                             ; B999 85 FD                    ..
        brk                                     ; B99B 00                       .
        db   $4B,$33                         ; B99C 4B 33                    K3
; ----------------------------------------------------------------------------
        brk                                     ; B99E 00                       .
        db   $C3,$1B                         ; B99F C3 1B                    ..
; ----------------------------------------------------------------------------
        lda     #$01                            ; B9A1 A9 01                    ..
MapInteractionSystem_Branch_B9A3:
        pha                                     ; B9A3 48                       H
        brk                                     ; B9A4 00                       .
        db   $13,$CB,$08                     ; B9A5 13 CB 08                 ...
; ----------------------------------------------------------------------------
        pla                                     ; B9A8 68                       h
MapInteractionSystem_Branch_B9A9:
        ora     $6277                           ; B9A9 0D 77 62                 .wb
        sta     $6277                           ; B9AC 8D 77 62                 .wb
MapInteractionSystem_Branch_B9AF:
        clc                                     ; B9AF 18                       .
        rts                                     ; B9B0 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B9B1:
        brk                                     ; B9B1 00                       .
        db   $A7,$2B                         ; B9B2 A7 2B                    .+
; ----------------------------------------------------------------------------
        brk                                     ; B9B4 00                       .
        db   $0F,$EB,$02                     ; B9B5 0F EB 02                 ...
; ----------------------------------------------------------------------------
        beq     MapInteractionSystem_Branch_B945; B9B8 F0 8B                    ..
        lda     #$1B                            ; B9BA A9 1B                    ..
        ldx     #$0A                            ; B9BC A2 0A                    ..
        ldy     #$13                            ; B9BE A0 13                    ..
        jsr     MapInteractionSystem_Entry_9E8C ; B9C0 20 8C 9E                  ..
        lda     #$26                            ; B9C3 A9 26                    .&
        ldx     #$1F                            ; B9C5 A2 1F                    ..
        ldy     #$12                            ; B9C7 A0 12                    ..
        jsr     MapInteractionSystem_Entry_9E8C ; B9C9 20 8C 9E                  ..
        brk                                     ; B9CC 00                       .
        db   $9F,$3B                         ; B9CD 9F 3B                    .;
; ----------------------------------------------------------------------------
        clc                                     ; B9CF 18                       .
        rts                                     ; B9D0 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_B9D1:
        brk                                     ; B9D1 00                       .
        db   $A7,$2B                         ; B9D2 A7 2B                    .+
; ----------------------------------------------------------------------------
        lda     SaveCurrentChapterMinus1        ; B9D4 AD 5A 61                 .Za
        cmp     #$04                            ; B9D7 C9 04                    ..
        bne     MapInteractionSystem_Branch_B970; B9D9 D0 95                    ..
        lda     $6277                           ; B9DB AD 77 62                 .wb
        and     #$20                            ; B9DE 29 20                    )
        bne     MapInteractionSystem_Branch_B970; B9E0 D0 8E                    ..
        lda     #$65                            ; B9E2 A9 65                    .e
        jsr     MapInteractionSystem_Entry_B5A3 ; B9E4 20 A3 B5                  ..
        bcs     MapInteractionSystem_Branch_B9AF; B9E7 B0 C6                    ..
        lda     #$20                            ; B9E9 A9 20                    .
        bne     MapInteractionSystem_Branch_B9A9; B9EB D0 BC                    ..
MapInteractionSystem_Entry_B9ED:
        lda     SaveCurrentChapterMinus1        ; B9ED AD 5A 61                 .Za
        cmp     #$04                            ; B9F0 C9 04                    ..
        beq     MapInteractionSystem_Branch_B9F9; B9F2 F0 05                    ..
        lda     #$67                            ; B9F4 A9 67                    .g
        jmp     MapInteractionSystem_Entry_B3EA ; B9F6 4C EA B3                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_B9F9:
        lda     #$67                            ; B9F9 A9 67                    .g
        jsr     MapInteractionSystem_Entry_B3EA ; B9FB 20 EA B3                  ..
        brk                                     ; B9FE 00                       .
        db   $EB,$3B                         ; B9FF EB 3B                    .;
; ----------------------------------------------------------------------------
        jmp     MapInteractionSystem_Branch_BA0E; BA01 4C 0E BA                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_BA04:
        lda     SaveCurrentChapterMinus1        ; BA04 AD 5A 61                 .Za
        cmp     #$04                            ; BA07 C9 04                    ..
        beq     MapInteractionSystem_Branch_BA0E; BA09 F0 03                    ..
        jmp     MapInteractionSystem_Entry_B4CE ; BA0B 4C CE B4                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_BA0E:
        brk                                     ; BA0E 00                       .
        db   $EA,$3B                         ; BA0F EA 3B                    .;
; ----------------------------------------------------------------------------
        brk                                     ; BA11 00                       .
        db   $07,$6F,$48                     ; BA12 07 6F 48                 .oH
; ----------------------------------------------------------------------------
        bne     MapInteractionSystem_Branch_BA3F; BA15 D0 28                    .(
        jsr     UpperFixedEngine_Entry_D1F3     ; BA17 20 F3 D1                  ..
        ldx     #$0B                            ; BA1A A2 0B                    ..
        ldy     #$12                            ; BA1C A0 12                    ..
        jsr     UpperFixedEngine_Entry_D3E6     ; BA1E 20 E6 D3                  ..
        and     #$1F                            ; BA21 29 1F                    ).
        cmp     #$0A                            ; BA23 C9 0A                    ..
        beq     MapInteractionSystem_Branch_BA33; BA25 F0 0C                    ..
        lda     #$6A                            ; BA27 A9 6A                    .j
        ldx     #$0B                            ; BA29 A2 0B                    ..
        ldy     #$12                            ; BA2B A0 12                    ..
        jsr     MapInteractionSystem_Entry_9E8C ; BA2D 20 8C 9E                  ..
        jmp     MapInteractionSystem_Branch_BA3C; BA30 4C 3C BA                 L<.
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_BA33:
        lda     #$71                            ; BA33 A9 71                    .q
        ldx     #$0B                            ; BA35 A2 0B                    ..
        ldy     #$12                            ; BA37 A0 12                    ..
        jsr     MapInteractionSystem_Entry_9E8C ; BA39 20 8C 9E                  ..
MapInteractionSystem_Branch_BA3C:
        brk                                     ; BA3C 00                       .
        db   $8A,$FB                         ; BA3D 8A FB                    ..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_BA3F:
        sec                                     ; BA3F 38                       8
        rts                                     ; BA40 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_BA41:
        lda     #$0C                            ; BA41 A9 0C                    ..
        sta     $00                           ; BA43 85 00                    ..
MapInteractionSystem_Branch_BA45:
        ldx     #$00                            ; BA45 A2 00                    ..
MapInteractionSystem_Branch_BA47:
        dec     $0203,x                         ; BA47 DE 03 02                 ...
        dec     $0203,x                         ; BA4A DE 03 02                 ...
        ldy     $0201,x                         ; BA4D BC 01 02                 ...
        lda     $BAC8,y                         ; BA50 B9 C8 BA                 ...
        sta     $0201,x                         ; BA53 9D 01 02                 ...
        inx                                     ; BA56 E8                       .
        inx                                     ; BA57 E8                       .
        inx                                     ; BA58 E8                       .
        inx                                     ; BA59 E8                       .
        cpx     #$10                            ; BA5A E0 10                    ..
        bne     MapInteractionSystem_Branch_BA47; BA5C D0 E9                    ..
        ldx     #$02                            ; BA5E A2 02                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; BA60 20 0C C9                  ..
        dec     $00                           ; BA63 C6 00                    ..
        bne     MapInteractionSystem_Branch_BA45; BA65 D0 DE                    ..
        ldx     #$05                            ; BA67 A2 05                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; BA69 20 0C C9                  ..
        lda     #$08                            ; BA6C A9 08                    ..
        sta     $00                           ; BA6E 85 00                    ..
MapInteractionSystem_Branch_BA70:
        ldx     #$00                            ; BA70 A2 00                    ..
MapInteractionSystem_Branch_BA72:
        inc     $0203,x                         ; BA72 FE 03 02                 ...
        inc     $0203,x                         ; BA75 FE 03 02                 ...
        inc     $0203,x                         ; BA78 FE 03 02                 ...
        inc     $0203,x                         ; BA7B FE 03 02                 ...
        ldy     $0201,x                         ; BA7E BC 01 02                 ...
        lda     $BAC8,y                         ; BA81 B9 C8 BA                 ...
        sta     $0201,x                         ; BA84 9D 01 02                 ...
        inx                                     ; BA87 E8                       .
        inx                                     ; BA88 E8                       .
        inx                                     ; BA89 E8                       .
        inx                                     ; BA8A E8                       .
        cpx     #$10                            ; BA8B E0 10                    ..
        bne     MapInteractionSystem_Branch_BA72; BA8D D0 E3                    ..
        ldx     #$02                            ; BA8F A2 02                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; BA91 20 0C C9                  ..
        dec     $00                           ; BA94 C6 00                    ..
        bne     MapInteractionSystem_Branch_BA70; BA96 D0 D8                    ..
        brk                                     ; BA98 00                       .
        db   $AD,$FB                         ; BA99 AD FB                    ..
; ----------------------------------------------------------------------------
        ldx     #$0E                            ; BA9B A2 0E                    ..
        ldy     #$04                            ; BA9D A0 04                    ..
        lda     #$03                            ; BA9F A9 03                    ..
        jsr     MapInteractionSystem_Entry_B7F6 ; BAA1 20 F6 B7                  ..
        ldy     #$00                            ; BAA4 A0 00                    ..
        jsr     MapInteractionSystem_Entry_8B2A ; BAA6 20 2A 8B                  *.
        lda     #$04                            ; BAA9 A9 04                    ..
        sta     $00                           ; BAAB 85 00                    ..
MapInteractionSystem_Branch_BAAD:
        ldx     #$00                            ; BAAD A2 00                    ..
MapInteractionSystem_Branch_BAAF:
        dec     $0203,x                         ; BAAF DE 03 02                 ...
        dec     $0203,x                         ; BAB2 DE 03 02                 ...
        ldy     $0201,x                         ; BAB5 BC 01 02                 ...
        lda     $BAC8,y                         ; BAB8 B9 C8 BA                 ...
        sta     $0201,x                         ; BABB 9D 01 02                 ...
        inx                                     ; BABE E8                       .
        inx                                     ; BABF E8                       .
        inx                                     ; BAC0 E8                       .
        inx                                     ; BAC1 E8                       .
        cpx     #$10                            ; BAC2 E0 10                    ..
        bne     MapInteractionSystem_Branch_BAAF; BAC4 D0 E9                    ..
        ldx     #$02                            ; BAC6 A2 02                    ..
        jsr     UpperFixedEngine_Entry_C90C     ; BAC8 20 0C C9                  ..
        dec     $00                           ; BACB C6 00                    ..
        bne     MapInteractionSystem_Branch_BAAD; BACD D0 DE                    ..
        rts                                     ; BACF 60                       `
; ----------------------------------------------------------------------------
        db   $0C,$09,$0D,$0E,$08,$0A,$0B     ; BAD0 0C 09 0D 0E 08 0A 0B     .......
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_BAD7:
        jsr     MapInteractionSystem_Entry_81AE ; BAD7 20 AE 81                  ..
        ldx     $51                             ; BADA A6 51                    .Q
        ldy     $52                             ; BADC A4 52                    .R
        jsr     UpperFixedEngine_Entry_D251     ; BADE 20 51 D2                  Q.
        and     #$1F                            ; BAE1 29 1F                    ).
        tax                                     ; BAE3 AA                       .
        lda     $6F40,x                         ; BAE4 BD 40 6F                 .@o
        and     #$7F                            ; BAE7 29 7F                    ).
        rts                                     ; BAE9 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_BAEA:
        bit     $41                             ; BAEA 24 41                    $A
        bpl     MapInteractionSystem_Branch_BAF4; BAEC 10 06                    ..
        jsr     MapInteractionSystem_Entry_83D9 ; BAEE 20 D9 83                  ..
        jmp     MapInteractionSystem_Branch_BAF7; BAF1 4C F7 BA                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_BAF4:
        jsr     MapInteractionSystem_Entry_BAD7 ; BAF4 20 D7 BA                  ..
MapInteractionSystem_Branch_BAF7:
        cmp     #$28                            ; BAF7 C9 28                    .(
        bne     MapInteractionSystem_Branch_BB1C; BAF9 D0 21                    .!
        brk                                     ; BAFB 00                       .
        db   $07,$6F,$43                     ; BAFC 07 6F 43                 .oC
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_BAFF:
        jsr     MapInteractionSystem_Entry_B71E ; BAFF 20 1E B7                  ..
        sta     $F9                             ; BB02 85 F9                    ..
        jmp     MapInteractionSystem_Entry_BB52 ; BB04 4C 52 BB                 LR.
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_BB07:
        jsr     MapInteractionSystem_Entry_BAD7 ; BB07 20 D7 BA                  ..
        jmp     MapInteractionSystem_Branch_BB10; BB0A 4C 10 BB                 L..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_BB0D:
        jsr     MapInteractionSystem_Entry_83D9 ; BB0D 20 D9 83                  ..
MapInteractionSystem_Branch_BB10:
        ldx     #$00                            ; BB10 A2 00                    ..
MapInteractionSystem_Branch_BB12:
        cmp     $BBAA,x                         ; BB12 DD AA BB                 ...
        beq     MapInteractionSystem_Branch_BB1E; BB15 F0 07                    ..
        inx                                     ; BB17 E8                       .
        cpx     #$04                            ; BB18 E0 04                    ..
        bcc     MapInteractionSystem_Branch_BB12; BB1A 90 F6                    ..
MapInteractionSystem_Branch_BB1C:
        clc                                     ; BB1C 18                       .
        rts                                     ; BB1D 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_BB1E:
        txa                                     ; BB1E 8A                       .
        asl     a                               ; BB1F 0A                       .
        tax                                     ; BB20 AA                       .
        lda     $BBAE,x                         ; BB21 BD AE BB                 ...
        sta     $00                           ; BB24 85 00                    ..
        lda     $BBAF,x                         ; BB26 BD AF BB                 ...
        sta     $01                             ; BB29 85 01                    ..
        jmp     ($0000)                         ; BB2B 6C 00 00                 l..
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_BB2E:
        brk                                     ; BB2E 00                       .
        db   $B5,$3B                         ; BB2F B5 3B                    .;
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_BC7A ; BB31 20 7A BC                  z.
        bcc     MapInteractionSystem_Branch_BB37; BB34 90 01                    ..
        rts                                     ; BB36 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_BB37:
        lda     #$09                            ; BB37 A9 09                    ..
        bne     MapInteractionSystem_Branch_BB9B; BB39 D0 60                    .`
MapInteractionSystem_Entry_BB3B:
        brk                                     ; BB3B 00                       .
        db   $9E,$3B                         ; BB3C 9E 3B                    .;
; ----------------------------------------------------------------------------
        jsr     MapInteractionSystem_Entry_BC7A ; BB3E 20 7A BC                  z.
        bcc     MapInteractionSystem_Branch_BB44; BB41 90 01                    ..
        rts                                     ; BB43 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_BB44:
        lda     #$A6                            ; BB44 A9 A6                    ..
        bne     MapInteractionSystem_Entry_BBA6 ; BB46 D0 5E                    .^
MapInteractionSystem_Entry_BB48:
        lda     CurrentMapNumber                ; BB48 A5 63                    .c
        cmp     #$37                            ; BB4A C9 37                    .7
        bne     MapInteractionSystem_Branch_BB1C; BB4C D0 CE                    ..
        lda     #$EC                            ; BB4E A9 EC                    ..
        bne     MapInteractionSystem_Branch_BB9B; BB50 D0 49                    .I
MapInteractionSystem_Entry_BB52:
        lda     $3D                             ; BB52 A5 3D                    .=
        cmp     #$02                            ; BB54 C9 02                    ..
        beq     MapInteractionSystem_Branch_BBA2; BB56 F0 4A                    .J
        brk                                     ; BB58 00                       .
        db   $B8,$3B                         ; BB59 B8 3B                    .;
; ----------------------------------------------------------------------------
        ldy     #$02                            ; BB5B A0 02                    ..
        bit     $41                             ; BB5D 24 41                    $A
        bpl     MapInteractionSystem_Branch_BB63; BB5F 10 02                    ..
        ldy     #$00                            ; BB61 A0 00                    ..
MapInteractionSystem_Branch_BB63:
        jsr     MapInteractionSystem_Entry_81AE ; BB63 20 AE 81                  ..
        lda     $BBB6,y                         ; BB66 B9 B6 BB                 ...
        sta     $00                           ; BB69 85 00                    ..
        lda     $BBB7,y                         ; BB6B B9 B7 BB                 ...
        sta     $01                             ; BB6E 85 01                    ..
        ldy     #$00                            ; BB70 A0 00                    ..
MapInteractionSystem_Branch_BB72:
        lda     ($00),y                       ; BB72 B1 00                    ..
        iny                                     ; BB74 C8                       .
        cmp     #$FF                            ; BB75 C9 FF                    ..
        beq     MapInteractionSystem_Branch_BBA2; BB77 F0 29                    .)
        cmp     $51                             ; BB79 C5 51                    .Q
        bne     MapInteractionSystem_Branch_BB83; BB7B D0 06                    ..
        lda     ($00),y                       ; BB7D B1 00                    ..
        cmp     $52                             ; BB7F C5 52                    .R
        beq     MapInteractionSystem_Branch_BB87; BB81 F0 04                    ..
MapInteractionSystem_Branch_BB83:
        iny                                     ; BB83 C8                       .
        iny                                     ; BB84 C8                       .
        bne     MapInteractionSystem_Branch_BB72; BB85 D0 EB                    ..
MapInteractionSystem_Branch_BB87:
        iny                                     ; BB87 C8                       .
        lda     ($00),y                       ; BB88 B1 00                    ..
        bne     MapInteractionSystem_Branch_BB9B; BB8A D0 0F                    ..
        tax                                     ; BB8C AA                       .
        lda     SaveCurrentChapterMinus1        ; BB8D AD 5A 61                 .Za
        cmp     #$02                            ; BB90 C9 02                    ..
        bcc     MapInteractionSystem_Branch_BB98; BB92 90 04                    ..
        beq     MapInteractionSystem_Branch_BB97; BB94 F0 01                    ..
        inx                                     ; BB96 E8                       .
MapInteractionSystem_Branch_BB97:
        inx                                     ; BB97 E8                       .
MapInteractionSystem_Branch_BB98:
        lda     $BBE6,x                         ; BB98 BD E6 BB                 ...
MapInteractionSystem_Branch_BB9B:
        ldx     #$03                            ; BB9B A2 03                    ..
MapInteractionSystem_Branch_BB9D:
        brk                                     ; BB9D 00                       .
        db   $04,$6F                         ; BB9E 04 6F                    .o
; ----------------------------------------------------------------------------
        sec                                     ; BBA0 38                       8
        rts                                     ; BBA1 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_BBA2:
        lda     #$1B                            ; BBA2 A9 1B                    ..
        bne     MapInteractionSystem_Branch_BB9B; BBA4 D0 F5                    ..
MapInteractionSystem_Entry_BBA6:
        ldx     #$02                            ; BBA6 A2 02                    ..
        bne     MapInteractionSystem_Branch_BB9D; BBA8 D0 F3                    ..
        db   $2B,$2A,$28,$30                 ; BBAA 2B 2A 28 30              +*(0
        db   $2E                             ; BBAE 2E                       .
        db   $BB,$3B,$BB,$52,$BB,$48,$BB     ; BBAF BB 3B BB 52 BB 48 BB     .;.R.H.
        db   $BA                             ; BBB6 BA                       .
        db   $BB,$D6,$BB,$16,$0F,$00,$0C,$09 ; BBB7 BB D6 BB 16 0F 00 0C 09  ........
        db   $D1,$07,$2F,$D2,$05,$09,$D3,$1E ; BBBF D1 07 2F D2 05 09 D3 1E  ../.....
        db   $0A,$D3,$0C,$12,$D5,$08,$01,$D6 ; BBC7 0A D3 0C 12 D5 08 01 D6  ........
        db   $0E,$0F,$D7,$13,$05,$D8,$FF,$A6 ; BBCF 0E 0F D7 13 05 D8 FF A6  ........
        db   $2F,$D9,$6C,$62,$DA,$35,$3B,$DB ; BBD7 2F D9 6C 62 DA 35 3B DB  /.lb.5;.
        db   $9E,$16,$DC,$38,$CB,$FE,$FF     ; BBDF 9E 16 DC 38 CB FE FF     ...8...
        db   $D0,$D4,$91                     ; BBE6 D0 D4 91                 ...
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_BBE9:
        lda     $7140                           ; BBE9 AD 40 71                 .@q
        and     #$1F                            ; BBEC 29 1F                    ).
        tax                                     ; BBEE AA                       .
        lda     $6F40,x                         ; BBEF BD 40 6F                 .@o
        cmp     #$04                            ; BBF2 C9 04                    ..
        bne     MapInteractionSystem_Branch_BC1C; BBF4 D0 26                    .&
        jsr     MapInteractionSystem_Entry_B72E ; BBF6 20 2E B7                  ..
        jsr     MapInteractionSystem_Entry_B791 ; BBF9 20 91 B7                  ..
        bcs     MapInteractionSystem_Branch_BC1C; BBFC B0 1E                    ..
        jsr     MapInteractionSystem_Entry_B7B2 ; BBFE 20 B2 B7                  ..
        tax                                     ; BC01 AA                       .
        bpl     MapInteractionSystem_Branch_BC18; BC02 10 14                    ..
        ldy     $BC34                           ; BC04 AC 34 BC                 .4.
MapInteractionSystem_Branch_BC07:
        cmp     $BC34,y                         ; BC07 D9 34 BC                 .4.
        beq     MapInteractionSystem_Branch_BC13; BC0A F0 07                    ..
        dey                                     ; BC0C 88                       .
        bpl     MapInteractionSystem_Branch_BC07; BC0D 10 F8                    ..
        lda     #$02                            ; BC0F A9 02                    ..
        clc                                     ; BC11 18                       .
        rts                                     ; BC12 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_BC13:
        lda     $BC4C,y                         ; BC13 B9 4C BC                 .L.
        clc                                     ; BC16 18                       .
        rts                                     ; BC17 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_BC18:
        lda     #$01                            ; BC18 A9 01                    ..
        clc                                     ; BC1A 18                       .
        rts                                     ; BC1B 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_BC1C:
        sec                                     ; BC1C 38                       8
        rts                                     ; BC1D 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_BC1E:
        sta     $51                             ; BC1E 85 51                    .Q
MapInteractionSystem_Entry_BC20:
        brk                                     ; BC20 00                       .
        db   $06,$5F                         ; BC21 06 5F                    ._
; ----------------------------------------------------------------------------
        tax                                     ; BC23 AA                       .
        beq     MapInteractionSystem_Branch_BC30; BC24 F0 0A                    ..
MapInteractionSystem_Branch_BC26:
        lda     $61DA,x                         ; BC26 BD DA 61                 ..a
        cmp     $51                             ; BC29 C5 51                    .Q
        beq     MapInteractionSystem_Branch_BC32; BC2B F0 05                    ..
        dex                                     ; BC2D CA                       .
        bne     MapInteractionSystem_Branch_BC26; BC2E D0 F6                    ..
MapInteractionSystem_Branch_BC30:
        clc                                     ; BC30 18                       .
        rts                                     ; BC31 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_BC32:
        sec                                     ; BC32 38                       8
        rts                                     ; BC33 60                       `
; ----------------------------------------------------------------------------
        db   $08                             ; BC34 08                       .
        db   $FF,$FE,$FD,$EF,$EE,$E3,$E2,$E0 ; BC35 FF FE FD EF EE E3 E2 E0  ........
        db   $CE                             ; BC3D CE                       .
        db   $B4,$68,$B8,$6F,$B8,$07,$B8,$1B ; BC3E B4 68 B8 6F B8 07 B8 1B  .h.o....
        db   $B8,$ED,$B9,$F7,$B8,$0A         ; BC46 B8 ED B9 F7 B8 0A        ......
        db   $B9,$00,$03,$03,$01,$01,$01,$01 ; BC4C B9 00 03 03 01 01 01 01  ........
        db   $01                             ; BC54 01                       .
        db   $0C                             ; BC55 0C                       .
        db   $EE,$ED,$EC,$EA,$E9,$E8,$E7,$E6 ; BC56 EE ED EC EA E9 E8 E7 E6  ........
        db   $E5,$E4,$E1,$F1                 ; BC5E E5 E4 E1 F1              ....
        db   $30                             ; BC62 30                       0
        db   $B8,$7C,$B8,$AD,$B8,$D5,$B8,$17 ; BC63 B8 7C B8 AD B8 D5 B8 17  .|......
        db   $B9,$DD,$B8,$4B,$B9,$64,$B9,$7D ; BC6B B9 DD B8 4B B9 64 B9 7D  ...K.d.}
        db   $B9,$B1,$B9,$30,$B9,$D1,$B9     ; BC73 B9 B1 B9 30 B9 D1 B9     ...0...
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_BC7A:
        jsr     MapInteractionSystem_Entry_BCAA ; BC7A 20 AA BC                  ..
        ldx     #$00                            ; BC7D A2 00                    ..
MapInteractionSystem_Branch_BC7F:
        lda     $BCED,x                         ; BC7F BD ED BC                 ...
        cmp     #$FF                            ; BC82 C9 FF                    ..
        beq     MapInteractionSystem_Branch_BCA8; BC84 F0 22                    ."
        cmp     CurrentMapNumber                ; BC86 C5 63                    .c
        bne     MapInteractionSystem_Branch_BC9F; BC88 D0 15                    ..
        lda     $BCEE,x                         ; BC8A BD EE BC                 ...
        cmp     CurrentSubmapNumber             ; BC8D C5 64                    .d
        bne     MapInteractionSystem_Branch_BC9F; BC8F D0 0E                    ..
        lda     $BCEF,x                         ; BC91 BD EF BC                 ...
        cmp     $00                           ; BC94 C5 00                    ..
        bne     MapInteractionSystem_Branch_BC9F; BC96 D0 07                    ..
        lda     $BCF0,x                         ; BC98 BD F0 BC                 ...
        cmp     $01                             ; BC9B C5 01                    ..
        beq     MapInteractionSystem_Branch_BCC6; BC9D F0 27                    .'
MapInteractionSystem_Branch_BC9F:
        inx                                     ; BC9F E8                       .
        inx                                     ; BCA0 E8                       .
        inx                                     ; BCA1 E8                       .
        inx                                     ; BCA2 E8                       .
        inx                                     ; BCA3 E8                       .
        inx                                     ; BCA4 E8                       .
        inx                                     ; BCA5 E8                       .
        bne     MapInteractionSystem_Branch_BC7F; BCA6 D0 D7                    ..
MapInteractionSystem_Branch_BCA8:
        clc                                     ; BCA8 18                       .
        rts                                     ; BCA9 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Entry_BCAA:
        ldx     PlayerLocalX                    ; BCAA A6 44                    .D
        ldy     PlayerLocalY                    ; BCAC A4 45                    .E
        lda     $3D                             ; BCAE A5 3D                    .=
        beq     MapInteractionSystem_Branch_BCBA; BCB0 F0 08                    ..
        lsr     a                               ; BCB2 4A                       J
        beq     MapInteractionSystem_Branch_BCBD; BCB3 F0 08                    ..
        bcc     MapInteractionSystem_Branch_BCC0; BCB5 90 09                    ..
        dex                                     ; BCB7 CA                       .
        bpl     MapInteractionSystem_Branch_BCC1; BCB8 10 07                    ..
MapInteractionSystem_Branch_BCBA:
        dey                                     ; BCBA 88                       .
        bpl     MapInteractionSystem_Branch_BCC1; BCBB 10 04                    ..
MapInteractionSystem_Branch_BCBD:
        inx                                     ; BCBD E8                       .
        bpl     MapInteractionSystem_Branch_BCC1; BCBE 10 01                    ..
MapInteractionSystem_Branch_BCC0:
        iny                                     ; BCC0 C8                       .
MapInteractionSystem_Branch_BCC1:
        stx     $00                           ; BCC1 86 00                    ..
        sty     $01                             ; BCC3 84 01                    ..
        rts                                     ; BCC5 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_BCC6:
        ldy     $BCF2,x                         ; BCC6 BC F2 BC                 ...
        lda     $6273,y                         ; BCC9 B9 73 62                 .sb
        and     $BCF3,x                         ; BCCC 3D F3 BC                 =..
        beq     MapInteractionSystem_Branch_BCD3; BCCF F0 02                    ..
        clc                                     ; BCD1 18                       .
        rts                                     ; BCD2 60                       `
; ----------------------------------------------------------------------------
MapInteractionSystem_Branch_BCD3:
        txa                                     ; BCD3 8A                       .
        pha                                     ; BCD4 48                       H
        lda     $BCF1,x                         ; BCD5 BD F1 BC                 ...
        jsr     MapInteractionSystem_Entry_B5A3 ; BCD8 20 A3 B5                  ..
        pla                                     ; BCDB 68                       h
        bcs     MapInteractionSystem_Branch_BCEB; BCDC B0 0D                    ..
        tax                                     ; BCDE AA                       .
        ldy     $BCF2,x                         ; BCDF BC F2 BC                 ...
        lda     $6273,y                         ; BCE2 B9 73 62                 .sb
        ora     $BCF3,x                         ; BCE5 1D F3 BC                 ...
        sta     $6273,y                         ; BCE8 99 73 62                 .sb
MapInteractionSystem_Branch_BCEB:
        sec                                     ; BCEB 38                       8
        rts                                     ; BCEC 60                       `
; ----------------------------------------------------------------------------
        db   $46                             ; BCED 46                       F
        db   $02                             ; BCEE 02                       .
        db   $14                             ; BCEF 14                       .
        db   $07                             ; BCF0 07                       .
        db   $69                             ; BCF1 69                       i
        db   $00                             ; BCF2 00                       .
        db   $04,$01,$00,$04,$01,$56,$00,$02 ; BCF3 04 01 00 04 01 56 00 02  .....V..
        db   $01,$00,$1A,$01,$55,$00,$01,$01 ; BCFB 01 00 1A 01 55 00 01 01  ....U...
        db   $02,$09,$02,$4A,$01,$80,$02,$01 ; BD03 02 09 02 4A 01 80 02 01  ...J....
        db   $1D,$1A,$53,$01,$40,$03,$02,$0A ; BD0B 1D 1A 53 01 40 03 02 0A  ..S.@...
        db   $12,$69,$01,$20,$04,$0C,$0D,$01 ; BD13 12 69 01 20 04 0C 0D 01  .i. ....
        db   $69,$01,$10,$08,$01,$02,$17,$69 ; BD1B 69 01 10 08 01 02 17 69  i......i
        db   $01,$08,$08,$02,$11,$07,$62,$01 ; BD23 01 08 08 02 11 07 62 01  ......b.
        db   $04,$09,$02,$19,$01,$69,$01,$02 ; BD2B 04 09 02 19 01 69 01 02  .....i..
        db   $09,$07,$09,$04,$69,$01,$01,$0C ; BD33 09 07 09 04 69 01 01 0C  ....i...
        db   $00,$15,$16,$61,$02,$80,$0C,$00 ; BD3B 00 15 16 61 02 80 0C 00  ...a....
        db   $17,$16,$79,$02,$40,$11,$02,$04 ; BD43 17 16 79 02 40 11 02 04  ..y.@...
        db   $01,$69,$02,$20,$11,$02,$0E,$01 ; BD4B 01 69 02 20 11 02 0E 01  .i. ....
        db   $69,$02,$10,$12,$00,$18,$11,$53 ; BD53 69 02 10 12 00 18 11 53  i......S
        db   $02,$08,$14,$01,$01,$09,$53,$02 ; BD5B 02 08 14 01 01 09 53 02  ......S.
        db   $04,$15,$00,$1F,$07,$53,$02,$02 ; BD63 04 15 00 1F 07 53 02 02  .....S..
        db   $15,$02,$0D,$01,$61,$02,$01,$16 ; BD6B 15 02 0D 01 61 02 01 16  ....a...
        db   $00,$19,$19,$53,$03,$80,$17,$00 ; BD73 00 19 19 53 03 80 17 00  ...S....
        db   $11,$04,$64,$03,$40,$1A,$01,$0F ; BD7B 11 04 64 03 40 1A 01 0F  ..d.@...
        db   $01,$69,$03,$20,$43,$08,$04,$0A ; BD83 01 69 03 20 43 08 04 0A  .i. C...
        db   $69,$03,$10,$43,$01,$03,$0C,$69 ; BD8B 69 03 10 43 01 03 0C 69  i..C...i
        db   $03,$08,$24,$00,$07,$03,$69,$03 ; BD93 03 08 24 00 07 03 69 03  ..$...i.
        db   $04,$31,$04,$04,$01,$69,$03,$02 ; BD9B 04 31 04 04 01 69 03 02  .1...i..
        db   $1C,$01,$02,$01,$53,$03,$01,$FF ; BDA3 1C 01 02 01 53 03 01 FF  ....S...
        db   $80,$40,$20,$10,$08,$04,$02,$01 ; BDAB 80 40 20 10 08 04 02 01  .@ .....
        db   $64,$69,$69,$69,$64,$61,$4A,$82 ; BDB3 64 69 69 69 64 61 4A 82  diiidaJ.
        db   $69,$69,$69                     ; BDBB 69 69 69                 iii
        db   $C2                             ; BDBE C2                       .
        db   $BD                             ; BDBF BD                       .
        db   $B9                             ; BDC0 B9                       .
        db   $BE,$00,$04,$01,$01,$00,$03,$02 ; BDC1 BE 00 04 01 01 00 03 02  ........
        db   $01,$06,$03,$02,$04,$04,$01,$03 ; BDC9 01 06 03 02 04 04 01 03  ........
        db   $04,$03,$02,$04,$05,$01,$04,$0C ; BDD1 04 03 02 04 05 01 04 0C  ........
        db   $02,$04,$0E,$04,$06,$00,$03,$08 ; BDD9 02 04 0E 04 06 00 03 08  ........
        db   $03,$01,$08,$04,$01,$0F,$00,$03 ; BDE1 03 01 08 04 01 0F 00 03  ........
        db   $16,$02,$03,$17,$01,$01,$21,$00 ; BDE9 16 02 03 17 01 01 21 00  ......!.
        db   $01,$2D,$00,$02,$2D,$02,$01,$2D ; BDF1 01 2D 00 02 2D 02 01 2D  .-..-..-
        db   $05,$08,$2E,$00,$01,$2E,$01,$02 ; BDF9 05 08 2E 00 01 2E 01 02  ........
        db   $2F,$00,$01,$2F,$01,$03,$2F,$02 ; BE01 2F 00 01 2F 01 03 2F 02  /../../.
        db   $02,$30,$01,$03,$30,$02,$03,$31 ; BE09 02 30 01 03 30 02 03 31  .0..0..1
        db   $00,$01,$31,$01,$02,$31,$03,$02 ; BE11 00 01 31 01 02 31 03 02  ..1..1..
        db   $31,$04,$01,$32,$00,$02,$32,$01 ; BE19 31 04 01 32 00 02 32 01  1..2..2.
        db   $03,$33,$01,$01,$33,$03,$01,$33 ; BE21 03 33 01 01 33 03 01 33  .3..3..3
        db   $04,$01,$34,$01,$01,$34,$02,$01 ; BE29 04 01 34 01 01 34 02 01  ..4..4..
        db   $34,$03,$01,$34,$04,$02,$35,$00 ; BE31 34 03 01 34 04 02 35 00  4..4..5.
        db   $01,$35,$01,$02,$35,$02,$02,$35 ; BE39 01 35 01 02 35 02 02 35  .5..5..5
        db   $03,$06,$35,$06,$02,$36,$02,$01 ; BE41 03 06 35 06 02 36 02 01  ..5..6..
        db   $36,$06,$01,$37,$02,$01,$38,$02 ; BE49 36 06 01 37 02 01 38 02  6..7..8.
        db   $04,$38,$04,$05,$38,$05,$01,$39 ; BE51 04 38 04 05 38 05 01 39  .8..8..9
        db   $00,$02,$3B,$00,$01,$3B,$02,$02 ; BE59 00 02 3B 00 01 3B 02 02  ..;..;..
        db   $3D,$00,$02,$3D,$03,$01,$3D,$06 ; BE61 3D 00 02 3D 03 01 3D 06  =..=..=.
        db   $01,$3D,$0F,$01,$3F,$01,$03,$40 ; BE69 01 3D 0F 01 3F 01 03 40  .=..?..@
        db   $00,$01,$40,$01,$01,$40,$03,$01 ; BE71 00 01 40 01 01 40 03 01  ..@..@..
        db   $41,$01,$02,$41,$02,$02,$41,$03 ; BE79 41 01 02 41 02 02 41 03  A..A..A.
        db   $02,$42,$00,$01,$42,$01,$01,$42 ; BE81 02 42 00 01 42 01 01 42  .B..B..B
        db   $02,$04,$42,$03,$01,$42,$04,$02 ; BE89 02 04 42 03 01 42 04 02  ..B..B..
        db   $43,$04,$01,$43,$06,$05,$44,$02 ; BE91 43 04 01 43 06 05 44 02  C..C..D.
        db   $01,$45,$00,$01,$45,$01,$01,$45 ; BE99 01 45 00 01 45 01 01 45  .E..E..E
        db   $02,$02,$47,$00,$02,$47,$01,$01 ; BEA1 02 02 47 00 02 47 01 01  ..G..G..
        db   $48,$01,$01,$48,$02,$01,$48,$05 ; BEA9 48 01 01 48 02 01 48 05  H..H..H.
        db   $01,$48,$06,$01,$48,$07,$01,$FF ; BEB1 01 48 06 01 48 07 01 FF  .H..H...
        db   $7A,$61,$5C,$1E,$64,$84,$48,$62 ; BEB9 7A 61 5C 1E 64 84 48 62  za\.d.Hb
        db   $61,$88,$69,$42,$FE,$FE,$FF,$FF ; BEC1 61 88 69 42 FE FE FF FF  a.iB....
        db   $FF,$61,$13,$64,$31,$4A,$FF,$FF ; BEC9 FF 61 13 64 31 4A FF FF  .a.d1J..
        db   $FF,$FF,$65,$83,$69,$1A,$44,$FF ; BED1 FF FF 65 83 69 1A 44 FF  ..e.i.D.
        db   $FF,$FF,$61,$1B,$04,$FF,$74,$08 ; BED9 FF FF 61 1B 04 FF 74 08  ..a...t.
        db   $65,$70,$7D,$BE,$FE,$69,$69,$FE ; BEE1 65 70 7D BE FE 69 69 FE  ep}..ii.
        db   $62,$61,$69,$69,$37,$62,$65,$94 ; BEE9 62 61 69 69 37 62 65 94  baii7be.
        db   $39,$E2,$FD,$62,$9E,$69,$61,$49 ; BEF1 39 E2 FD 62 9E 69 61 49  9..b.iaI
        db   $43,$56,$64,$86,$E3,$5D,$72,$5A ; BEF9 43 56 64 86 E3 5D 72 5A  CVd..]rZ
        db   $76,$89,$62,$56,$53,$6C,$8F,$69 ; BF01 76 89 62 56 53 6C 8F 69  v.bVSl.i
        db   $0E,$5F,$9A,$4C,$3B,$69,$3C,$64 ; BF09 0E 5F 9A 4C 3B 69 3C 64  ._.L;i<d
        db   $35,$22,$64,$D2,$62,$61,$FE,$41 ; BF11 35 22 64 D2 62 61 FE 41  5"d.ba.A
        db   $64,$04,$EE,$E0,$05,$0A,$93,$53 ; BF19 64 04 EE E0 05 0A 93 53  d......S
        db   $28,$FF,$FF,$56,$06,$6D,$81,$53 ; BF21 28 FF FF 56 06 6D 81 53  (..V.m.S
        db   $68,$1D,$69,$36,$5A,$65,$69,$43 ; BF29 68 1D 69 36 5A 65 69 43  h.i6ZeiC
        db   $56,$61,$9E,$14,$5B,$20,$61,$56 ; BF31 56 61 9E 14 5B 20 61 56  Va..[ aV
        db   $90,$3E,$23,$63,$4D,$7C,$5A,$58 ; BF39 90 3E 23 63 4D 7C 5A 58  .>#cM|ZX
        db   $FD,$0B,$61,$63,$8A,$1F,$FF,$FF ; BF41 FD 0B 61 63 8A 1F FF FF  ..ac....
        db   $FF,$FF,$FF,$3A,$60,$69,$64,$11 ; BF49 FF FF FF 3A 60 69 64 11  ...:`id.
        db   $EF,$FF,$3B,$69,$62,$90,$FE,$12 ; BF51 EF FF 3B 69 62 90 FE 12  ..;ib...
        db   $00                             ; BF59 00                       .
        db   $00                             ; BF5A 00                       .
        db   $0A                             ; BF5B 0A                       .
        db   $13                             ; BF5C 13                       .
        db   $E4,$00,$01,$14,$0C,$ED,$01,$02 ; BF5D E4 00 01 14 0C ED 01 02  ........
        db   $0D,$04,$EC,$03,$03,$04,$03,$A0 ; BF65 0D 04 EC 03 03 04 03 A0  ........
        db   $0B,$00,$08,$1E,$A2,$0D,$00,$08 ; BF6D 0B 00 08 1E A2 0D 00 08  ........
        db   $14,$A3,$0E,$00,$0C,$03,$A4,$0F ; BF75 14 A3 0E 00 0C 03 A4 0F  ........
        db   $00,$03,$18,$F1,$10,$00,$05,$03 ; BF7D 00 03 18 F1 10 00 05 03  ........
        db   $A5,$14,$02,$0D,$0D,$A6,$15,$02 ; BF85 A5 14 02 0D 0D A6 15 02  ........
        db   $0A,$10,$A7,$19,$00,$09,$12,$E1 ; BF8D 0A 10 A7 19 00 09 12 E1  ........
        db   $19,$00,$0D,$0B,$A8,$1C,$01,$03 ; BF95 19 00 0D 0B A8 1C 01 03  ........
        db   $02,$E9,$20,$00,$04,$06,$E7,$20 ; BF9D 02 E9 20 00 04 06 E7 20  .. ....
        db   $00,$05,$06,$E6,$20,$00,$06,$06 ; BFA5 00 05 06 E6 20 00 06 06  .... ...
        db   $E5,$23,$00,$07,$04,$A9,$27,$00 ; BFAD E5 23 00 07 04 A9 27 00  .#....'.
        db   $09,$0F,$AA,$2D,$04,$18,$19,$A1 ; BFB5 09 0F AA 2D 04 18 19 A1  ...-....
        db   $36,$06,$04,$03,$EE,$3F,$00,$08 ; BFBD 36 06 04 03 EE 3F 00 08  6....?..
        db   $08,$E8,$3F,$00,$09,$08,$E8,$3F ; BFC5 08 E8 3F 00 09 08 E8 3F  ..?....?
        db   $00,$08,$09,$E8,$3F,$00,$09,$09 ; BFCD 00 08 09 E8 3F 00 09 09  ....?...
        db   $E8,$FF,$FF,$78,$EE,$DF,$BF,$4C ; BFD5 E8 FF FF 78 EE DF BF 4C  ...x...L
        db   $8E,$FF,$80,$20,$44,$52,$41,$47 ; BFDD 8E FF 80 20 44 52 41 47  ... DRAG
        db   $4F,$4E,$20,$51,$55,$45,$53,$54 ; BFE5 4F 4E 20 51 55 45 53 54  ON QUEST
        db   $20,$49,$56,$00,$00,$00,$00,$48 ; BFED 20 49 56 00 00 00 00 48   IV....H
        db   $04,$01,$0E,$07,$9E,$D8,$BF,$D8 ; BFF5 04 01 0E 07 9E D8 BF D8  ........
        db   $BF,$D8,$BF                     ; BFFD BF D8 BF                 ...
Bank1E_End:
